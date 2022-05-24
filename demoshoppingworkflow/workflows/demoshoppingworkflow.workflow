{
	"contents": {
		"b3bc3e65-aa1d-48a3-adef-548b4206c7e7": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "demoshoppingworkflow.demoshoppingworkflow",
			"subject": "demoshoppingworkflow",
			"name": "demoshoppingworkflow",
			"documentation": "SAP CAI + SAP WORKFLOW + SAP FIORI",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"635b3242-d614-4c99-8451-3db1990e8094": {
					"name": "Approve Order"
				},
				"6553b342-0f3d-4397-8fcc-2b9655712e21": {
					"name": "Ready for Pick-up"
				},
				"1260b121-c469-4cd7-89f6-a02a66ba5630": {
					"name": "Dispatched"
				},
				"3e42f54f-169f-4a5c-a9a3-7b447b39711c": {
					"name": "Delivered"
				},
				"7d3c73c6-ecb5-444c-adcf-c351fd120f52": {
					"name": "mailtoCustomer"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"43aca632-1225-4b62-9be4-271d4900dfa2": {
					"name": "SequenceFlow3"
				},
				"eb7679e7-3aec-47f5-8e08-b5634cc876d7": {
					"name": "SequenceFlow5"
				},
				"70572a68-0678-4714-a06f-a9aee89255a0": {
					"name": "SequenceFlow7"
				},
				"028a5e83-d8df-45c4-8243-95f7b481cb35": {
					"name": "SequenceFlow8"
				},
				"1fd411cf-3c24-4b50-a446-a97672830ba6": {
					"name": "SequenceFlow10"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"635b3242-d614-4c99-8451-3db1990e8094": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve product request for ${context.orderData.ProductName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://demowfinbound.wfUidemowfuidemo/wfUidemo.wfuidemo",
			"recipientUsers": "ranjith13119@gmail.com",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Approve Order"
		},
		"6553b342-0f3d-4397-8fcc-2b9655712e21": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Ready for Pick-up",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "packing",
			"formReference": "/forms/demoshoppingworkflow/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Ready for Pick-up"
		},
		"1260b121-c469-4cd7-89f6-a02a66ba5630": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Dispatched",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "Dispatched",
			"formReference": "/forms/demoshoppingworkflow/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask6",
			"name": "Dispatched"
		},
		"3e42f54f-169f-4a5c-a9a3-7b447b39711c": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Delivered",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "Delivered",
			"formReference": "/forms/demoshoppingworkflow/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask8",
			"name": "Delivered"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "635b3242-d614-4c99-8451-3db1990e8094"
		},
		"43aca632-1225-4b62-9be4-271d4900dfa2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "635b3242-d614-4c99-8451-3db1990e8094",
			"targetRef": "6553b342-0f3d-4397-8fcc-2b9655712e21"
		},
		"eb7679e7-3aec-47f5-8e08-b5634cc876d7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "6553b342-0f3d-4397-8fcc-2b9655712e21",
			"targetRef": "1260b121-c469-4cd7-89f6-a02a66ba5630"
		},
		"70572a68-0678-4714-a06f-a9aee89255a0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "1260b121-c469-4cd7-89f6-a02a66ba5630",
			"targetRef": "3e42f54f-169f-4a5c-a9a3-7b447b39711c"
		},
		"028a5e83-d8df-45c4-8243-95f7b481cb35": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "3e42f54f-169f-4a5c-a9a3-7b447b39711c",
			"targetRef": "7d3c73c6-ecb5-444c-adcf-c351fd120f52"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"5e8d98da-855b-4533-b99a-ea61cbaad5d1": {},
				"ffe67e3c-869f-4eb9-afd7-4b0005efd068": {},
				"a0ff4278-6313-4c4a-b7b7-8e433568f4e6": {},
				"c335de89-1e3b-4830-aca4-94b0ad50cd9b": {},
				"fb057e83-dd25-4ddf-9c8e-c07c2c3b4b67": {},
				"6541e7a5-e77c-4987-8c0d-be8de7359825": {},
				"4a8e3275-6baf-4b89-928d-459452954f55": {},
				"26c8d474-29e7-4c92-9aa4-92270075ff60": {},
				"d2cabcd6-d1c7-41f8-b291-09cc0d9bbc0a": {},
				"5c711037-05e2-4b91-856f-7abb85978148": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 844,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "5e8d98da-855b-4533-b99a-ea61cbaad5d1",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"5e8d98da-855b-4533-b99a-ea61cbaad5d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "635b3242-d614-4c99-8451-3db1990e8094"
		},
		"ffe67e3c-869f-4eb9-afd7-4b0005efd068": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "5e8d98da-855b-4533-b99a-ea61cbaad5d1",
			"targetSymbol": "a0ff4278-6313-4c4a-b7b7-8e433568f4e6",
			"object": "43aca632-1225-4b62-9be4-271d4900dfa2"
		},
		"a0ff4278-6313-4c4a-b7b7-8e433568f4e6": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "6553b342-0f3d-4397-8fcc-2b9655712e21"
		},
		"c335de89-1e3b-4830-aca4-94b0ad50cd9b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,42 394,42",
			"sourceSymbol": "a0ff4278-6313-4c4a-b7b7-8e433568f4e6",
			"targetSymbol": "fb057e83-dd25-4ddf-9c8e-c07c2c3b4b67",
			"object": "eb7679e7-3aec-47f5-8e08-b5634cc876d7"
		},
		"fb057e83-dd25-4ddf-9c8e-c07c2c3b4b67": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "1260b121-c469-4cd7-89f6-a02a66ba5630"
		},
		"6541e7a5-e77c-4987-8c0d-be8de7359825": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,42 544,42",
			"sourceSymbol": "fb057e83-dd25-4ddf-9c8e-c07c2c3b4b67",
			"targetSymbol": "4a8e3275-6baf-4b89-928d-459452954f55",
			"object": "70572a68-0678-4714-a06f-a9aee89255a0"
		},
		"4a8e3275-6baf-4b89-928d-459452954f55": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 544,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "3e42f54f-169f-4a5c-a9a3-7b447b39711c"
		},
		"26c8d474-29e7-4c92-9aa4-92270075ff60": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "594,42 732,42",
			"sourceSymbol": "4a8e3275-6baf-4b89-928d-459452954f55",
			"targetSymbol": "d2cabcd6-d1c7-41f8-b291-09cc0d9bbc0a",
			"object": "028a5e83-d8df-45c4-8243-95f7b481cb35"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"messageeventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 10,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 1,
			"usertask": 8,
			"servicetask": 2,
			"mailtask": 1
		},
		"7d3c73c6-ecb5-444c-adcf-c351fd120f52": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "mailtoCustomer",
			"mailDefinitionRef": "a02b7e78-75eb-4add-985a-c2461cf678d4"
		},
		"d2cabcd6-d1c7-41f8-b291-09cc0d9bbc0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 682,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "7d3c73c6-ecb5-444c-adcf-c351fd120f52"
		},
		"1fd411cf-3c24-4b50-a446-a97672830ba6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "7d3c73c6-ecb5-444c-adcf-c351fd120f52",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"5c711037-05e2-4b91-856f-7abb85978148": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "732,42 861.5,42",
			"sourceSymbol": "d2cabcd6-d1c7-41f8-b291-09cc0d9bbc0a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1fd411cf-3c24-4b50-a446-a97672830ba6"
		},
		"a02b7e78-75eb-4add-985a-c2461cf678d4": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "ranjithayyavu797@gmail.com",
			"subject": "Feedback required for you last order ",
			"text": "Hello Customer,\n\nPlease provide your feedback for you last order ${context.orderData.ProductName}",
			"id": "maildefinition1"
		}
	}
}