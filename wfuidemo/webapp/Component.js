sap.ui.define(
  [
    "sap/ui/core/UIComponent",
    "sap/ui/Device",
    "wfUidemo/wfuidemo/model/models",
  ],
  function (UIComponent, Device, models) {
    "use strict";

    return UIComponent.extend("wfUidemo.wfuidemo.Component", {
      metadata: {
        manifest: "json",
      },

      /**
       * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
       * @public
       * @override
       */
      init: function () {
        // call the base component's init function
        UIComponent.prototype.init.apply(this, arguments);

        // enable routing
        this.getRouter().initialize();

        // set the device model
        this.setModel(models.createDeviceModel(), "device");

        this.setTaskModels();
      },

      setTaskModels: function () {
        // set the task model
        let startupParameters = this.getComponentData().startupParameters,
          taskData = startupParameters.taskModel.getData();
        this.setModel(startupParameters.taskModel, "task");

        // set the task context model
        let taskContextModel = new sap.ui.model.json.JSONModel(
          this._getTaskInstancesBaseURL() + "/context"
        );
        let that = this;
        //  Update UI Context Model with Task Properties Data
        taskContextModel.attachRequestCompleted(function () {
          let contextData = taskContextModel.getData();

          let processContext = {};
          processContext.context = { ...contextData };
          processContext.context.task = {};
          processContext.context.task.Title = taskData.TaskTitle;
          processContext.context.task.Priority = taskData.Priority;
          processContext.context.task.Status = taskData.Status;
          processContext.context.response = {};
          processContext.context.response.comments = "";

          if (taskData.Priority === "HIGH") {
            processContext.context.task.PriorityState = "Warning";
          } else if (taskData.Priority === "VERY HIGH") {
            processContext.context.task.PriorityState = "Error";
          } else {
            processContext.context.task.PriorityState = "Success";
          }

          processContext.context.task.CreatedOn = taskData.CreatedOn.toDateString();

          // get task description and add it to the model
          that
            .getInboxAPI()
            .getDescription("NA", that.getTaskInstanceID())
            .done(function (dataDescr) {
              processContext.context.task.Description = dataDescr.Description;
              taskContextModel.setProperty(
                "/task/Description",
                dataDescr.Description
              );
            })
            .fail(function (errorText) {});

          taskContextModel.setData(processContext.context);
          that.setModel(taskContextModel);
        });

        // Add the task action buttions
        this.getInboxAPI().addAction(
          {
            action: "REJECT",
            label: "Reject",
            type: "Reject",
          },
          function () {
            this._completeTask(false);
          },
          this
        );

        this.getInboxAPI().addAction(
          {
            action: "APPROVE",
            label: "Approve",
            type: "Accept",
          },
          function () {
            this._completeTask(true);
          },
          this
        );
      },

      // Adding Task Completion
      _completeTask: function (approvalStatus) {
        this._patchTaskInstance(approvalStatus);
        this._refreshTask();
      },

      _patchTaskInstance: function (approvalStatus) {
        let data = {
          status: "COMPLETED",
          decision: approvalStatus ? "approve" : "reject",
          context: {
            approved: approvalStatus,
            orderData: this.getModel().getProperty("/orderData"),
            response: {
              comments: this.getModel().getProperty("/response/comments"),
            },
          },
        };
        $.ajax({
          url: this._getTaskInstancesBaseURL(),
          method: "PATCH",
          contentType: "application/json",
          async: false,
          data: JSON.stringify(data),
          headers: {
            "X-CSRF-Token": this._fetchToken(),
          },
        });
      },

      _fetchToken: function () {
        let fetchedToken;
        $.ajax({
          url: this._getWorkflowRuntimeBaseURL() + "/xsrf-token",
          method: "GET",
          async: false,
          headers: {
            "X-CSRF-Token": "Fetch",
          },
          success: function (result, xhr, data) {
            fetchedToken = data.getResponseHeader("X-CSRF-Token");
          },
        });
        return fetchedToken;
      },

      _refreshTask: function (taskId) {
        this.getInboxAPI().updateTask("NA", this.getTaskInstanceID());
      },

      _getTaskInstancesBaseURL: function () {
        return (
          this._getWorkflowRuntimeBaseURL() +
          "/task-instances/" +
          this.getTaskInstanceID()
        );
      },

      _getWorkflowRuntimeBaseURL: function () {
        var appId = this.getManifestEntry("/sap.app/id");
        var appPath = appId.replaceAll(".", "/");
        var appModulePath = jQuery.sap.getModulePath(appPath);

        return appModulePath + "/bpmworkflowruntime/v1";
      },

      getTaskInstanceID: function () {
        return this.getModel("task").getData().InstanceID;
      },

      getInboxAPI: function () {
        var startupParameters = this.getComponentData().startupParameters;
        return startupParameters.inboxAPI;
      }
    });
  }
);
