{
	"contents": {
		"69850b7f-fb30-4a57-a246-cea668e82b56": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "myworkflow",
			"subject": "Approval Step",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "approvalStatus",
				"label": "approvalStatus",
				"type": "string",
				"value": "${context.internal.approvalStatus}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "OPEX",
				"label": "OPEX",
				"type": "string",
				"value": "${context.Investment.OPEX}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "TotalCost",
				"label": "TotalCost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "RequestId",
				"label": "RequestId",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}],
			"name": "MyWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"ca19c2fe-2b21-4f59-8dac-fff7b2d85317": {
					"name": "Terminate Approval"
				},
				"937aa46a-8b95-4b8a-b5aa-b6898e2a978e": {
					"name": "End Approval Step"
				},
				"2464f9bc-a62d-4f21-b2bd-eb1402475478": {
					"name": "IntermediateEscalationEvent2"
				},
				"5caf09ea-93e8-4e82-b1f3-1450df965144": {
					"name": "IntermediateEscalationEvent4"
				}
			},
			"activities": {
				"10bc7109-24ed-48bd-a963-c7ca2a15ccd8": {
					"name": "Prepare Approval"
				},
				"bef77871-4732-4d1e-8b39-d9bad3de248b": {
					"name": "Get Approvers"
				},
				"1b015b62-5ed7-4b5b-895f-ed5ea9ca88cf": {
					"name": "Process Approver Details"
				},
				"f11c878e-9ab0-4cd5-9e18-98bee6214ea2": {
					"name": "Approval Needed?"
				},
				"42a1da15-9a2a-4ea9-b035-0743be227918": {
					"name": "Approval Task"
				},
				"6754a567-fee2-4028-aa92-53a8cd4795a3": {
					"name": "Process Approval Result"
				},
				"0c066d84-ec00-456d-ab04-45a091cbc2a1": {
					"name": "Approval Decision"
				},
				"96cf9ea6-d869-469d-a3dc-6552780d4aec": {
					"name": "Rework Approval Request"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"74275f11-cd08-4ef4-a322-9ecdd6c37df3": {
					"name": "SequenceFlow2"
				},
				"1d64ce4a-e2cb-4544-93a2-b4f8622ca6ff": {
					"name": "SequenceFlow4"
				},
				"e88321c4-e4ad-436c-a944-4b085d2e0971": {
					"name": "Yes"
				},
				"bac74b4f-f1dc-459a-8c74-d331a0180250": {
					"name": "SequenceFlow7"
				},
				"1555e85d-9824-463b-96db-ac90bf0e32f1": {
					"name": "SequenceFlow8"
				},
				"f27de48f-6a14-4752-be72-cb31b9d91e97": {
					"name": "Rejected"
				},
				"9e09706d-af6d-4a5e-b2a0-e1b4028f1f7e": {
					"name": "Rework"
				},
				"5e518c76-7dd4-4d75-9b94-0f78a91edf9c": {
					"name": "SequenceFlow14"
				},
				"189a0976-b9db-4090-80cf-af617ad266d4": {
					"name": "No"
				},
				"d2a58d67-4c27-4abd-a00d-eb70017ff9ba": {
					"name": "Accepted"
				},
				"22062919-d160-4839-9d03-fada87087947": {
					"name": "SequenceFlow17"
				},
				"4fd1b63c-6a38-45a3-aad3-9c3beec13d87": {
					"name": "SequenceFlow21"
				},
				"a9359ec8-3524-4bf0-a1b8-efecde165eca": {
					"name": "SequenceFlow23"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"b4c80a70-93e8-468e-83fd-c18344c4d214": {}
			}
		},
		"ca19c2fe-2b21-4f59-8dac-fff7b2d85317": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "Terminate Approval",
			"eventDefinitions": {
				"9eb86c33-e553-4356-8bb2-ba3c34c6313c": {}
			}
		},
		"937aa46a-8b95-4b8a-b5aa-b6898e2a978e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "End Approval Step"
		},
		"10bc7109-24ed-48bd-a963-c7ca2a15ccd8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/CapexSampleStartPayload.js",
			"id": "scripttask1",
			"name": "Prepare Approval"
		},
		"bef77871-4732-4d1e-8b39-d9bad3de248b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ProcessAutomation",
			"destinationSource": "consumer",
			"path": "/public/rule/runtime/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.internal.rulesPayload}",
			"responseVariable": "${context.internal.ruleresult}",
			"id": "servicetask1",
			"name": "Get Approvers"
		},
		"1b015b62-5ed7-4b5b-895f-ed5ea9ca88cf": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/ProcessApproverDetails.js",
			"id": "scripttask2",
			"name": "Process Approver Details"
		},
		"f11c878e-9ab0-4cd5-9e18-98bee6214ea2": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "189a0976-b9db-4090-80cf-af617ad266d4"
		},
		"42a1da15-9a2a-4ea9-b035-0743be227918": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Capital Expenditure Request \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rayyavu@deloitte.com",
			"recipientGroups": "${context.internal.step.approver.GroupId}",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Task"
		},
		"6754a567-fee2-4028-aa92-53a8cd4795a3": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/ProcessApprovalResult.js",
			"id": "scripttask3",
			"name": "Process Approval Result"
		},
		"0c066d84-ec00-456d-ab04-45a091cbc2a1": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Decision",
			"default": "f27de48f-6a14-4752-be72-cb31b9d91e97"
		},
		"96cf9ea6-d869-469d-a3dc-6552780d4aec": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework required for CapEx Request \"${context.Title}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requester.UserId}, ${info.startedBy}",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Rework Approval Request"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "10bc7109-24ed-48bd-a963-c7ca2a15ccd8"
		},
		"74275f11-cd08-4ef4-a322-9ecdd6c37df3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "10bc7109-24ed-48bd-a963-c7ca2a15ccd8",
			"targetRef": "bef77871-4732-4d1e-8b39-d9bad3de248b"
		},
		"1d64ce4a-e2cb-4544-93a2-b4f8622ca6ff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "1b015b62-5ed7-4b5b-895f-ed5ea9ca88cf",
			"targetRef": "f11c878e-9ab0-4cd5-9e18-98bee6214ea2"
		},
		"e88321c4-e4ad-436c-a944-4b085d2e0971": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.internal.step.isRequired}",
			"id": "sequenceflow5",
			"name": "Yes",
			"sourceRef": "f11c878e-9ab0-4cd5-9e18-98bee6214ea2",
			"targetRef": "42a1da15-9a2a-4ea9-b035-0743be227918"
		},
		"bac74b4f-f1dc-459a-8c74-d331a0180250": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "42a1da15-9a2a-4ea9-b035-0743be227918",
			"targetRef": "6754a567-fee2-4028-aa92-53a8cd4795a3"
		},
		"1555e85d-9824-463b-96db-ac90bf0e32f1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "6754a567-fee2-4028-aa92-53a8cd4795a3",
			"targetRef": "0c066d84-ec00-456d-ab04-45a091cbc2a1"
		},
		"f27de48f-6a14-4752-be72-cb31b9d91e97": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "Rejected",
			"sourceRef": "0c066d84-ec00-456d-ab04-45a091cbc2a1",
			"targetRef": "5caf09ea-93e8-4e82-b1f3-1450df965144"
		},
		"9e09706d-af6d-4a5e-b2a0-e1b4028f1f7e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"rework\"}",
			"id": "sequenceflow13",
			"name": "Rework",
			"sourceRef": "0c066d84-ec00-456d-ab04-45a091cbc2a1",
			"targetRef": "2464f9bc-a62d-4f21-b2bd-eb1402475478"
		},
		"5e518c76-7dd4-4d75-9b94-0f78a91edf9c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "96cf9ea6-d869-469d-a3dc-6552780d4aec",
			"targetRef": "10bc7109-24ed-48bd-a963-c7ca2a15ccd8"
		},
		"189a0976-b9db-4090-80cf-af617ad266d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "No",
			"sourceRef": "f11c878e-9ab0-4cd5-9e18-98bee6214ea2",
			"targetRef": "937aa46a-8b95-4b8a-b5aa-b6898e2a978e"
		},
		"d2a58d67-4c27-4abd-a00d-eb70017ff9ba": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow16",
			"name": "Accepted",
			"sourceRef": "0c066d84-ec00-456d-ab04-45a091cbc2a1",
			"targetRef": "937aa46a-8b95-4b8a-b5aa-b6898e2a978e"
		},
		"22062919-d160-4839-9d03-fada87087947": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "bef77871-4732-4d1e-8b39-d9bad3de248b",
			"targetRef": "1b015b62-5ed7-4b5b-895f-ed5ea9ca88cf"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"7f51d70a-df4e-4922-8f9f-97a68e237d17": {},
				"446eb375-8453-446a-bd30-5b89a26a3f24": {},
				"6b5a6d56-176c-4875-95f7-61b75175e84c": {},
				"73535a65-47f0-4dbd-8af9-28126a58c82c": {},
				"db188133-b203-46de-993e-3b3434d026ea": {},
				"872bb193-a159-4e2b-bbd5-5ee41f1908b9": {},
				"0b7b81fd-71a3-46dd-9e39-32c9b084ce63": {},
				"17972135-dbd2-4f1f-a4d0-9ab99e93fcb8": {},
				"57f72967-d6d9-4027-a767-d79f5c95263e": {},
				"12a2d58a-ec2a-46c7-9048-7dbfa7988486": {},
				"b7780f6d-5e8f-466e-a64a-bd30fa851d55": {},
				"10452129-639d-4728-b0dc-9744861a9bbc": {},
				"ed34c04b-7c2d-4a1e-a461-034d83acc97f": {},
				"52adf4e7-e86b-4ad3-93dc-61c4db47b32e": {},
				"37e414a6-807f-4159-8481-6c36e5cf1b4f": {},
				"b808f430-1eee-44a5-9314-f543744d21a3": {},
				"c43d7867-486b-4784-bbc2-d207dfa6812d": {},
				"a01a075e-800d-4e82-8fac-463b3b910821": {},
				"7f0cea39-7420-4212-bd66-7957744ec1a8": {},
				"55fe2a87-1022-4dd1-a542-f7d396251c70": {},
				"479e8052-4a87-478d-808c-074cc79a3863": {},
				"d2853240-b884-4a06-8951-1d79ad697ea4": {},
				"aba1c24f-5a8d-412c-89e3-4f3c12fbf035": {},
				"385099e9-8ed5-408d-8c03-a15dc137e55f": {},
				"9858ada0-79bb-4a4d-b464-d65e22b2abd4": {}
			}
		},
		"b4c80a70-93e8-468e-83fd-c18344c4d214": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"9eb86c33-e553-4356-8bb2-ba3c34c6313c": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "7f51d70a-df4e-4922-8f9f-97a68e237d17",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"7f51d70a-df4e-4922-8f9f-97a68e237d17": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "10bc7109-24ed-48bd-a963-c7ca2a15ccd8"
		},
		"446eb375-8453-446a-bd30-5b89a26a3f24": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "7f51d70a-df4e-4922-8f9f-97a68e237d17",
			"targetSymbol": "6b5a6d56-176c-4875-95f7-61b75175e84c",
			"object": "74275f11-cd08-4ef4-a322-9ecdd6c37df3"
		},
		"6b5a6d56-176c-4875-95f7-61b75175e84c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "bef77871-4732-4d1e-8b39-d9bad3de248b"
		},
		"73535a65-47f0-4dbd-8af9-28126a58c82c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "1b015b62-5ed7-4b5b-895f-ed5ea9ca88cf"
		},
		"db188133-b203-46de-993e-3b3434d026ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "444,42 565,42",
			"sourceSymbol": "73535a65-47f0-4dbd-8af9-28126a58c82c",
			"targetSymbol": "872bb193-a159-4e2b-bbd5-5ee41f1908b9",
			"object": "1d64ce4a-e2cb-4544-93a2-b4f8622ca6ff"
		},
		"872bb193-a159-4e2b-bbd5-5ee41f1908b9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 544,
			"y": 21,
			"object": "f11c878e-9ab0-4cd5-9e18-98bee6214ea2"
		},
		"0b7b81fd-71a3-46dd-9e39-32c9b084ce63": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,42 636,42",
			"sourceSymbol": "872bb193-a159-4e2b-bbd5-5ee41f1908b9",
			"targetSymbol": "17972135-dbd2-4f1f-a4d0-9ab99e93fcb8",
			"object": "e88321c4-e4ad-436c-a944-4b085d2e0971"
		},
		"17972135-dbd2-4f1f-a4d0-9ab99e93fcb8": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 636,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "42a1da15-9a2a-4ea9-b035-0743be227918"
		},
		"57f72967-d6d9-4027-a767-d79f5c95263e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "736,42 786,42",
			"sourceSymbol": "17972135-dbd2-4f1f-a4d0-9ab99e93fcb8",
			"targetSymbol": "12a2d58a-ec2a-46c7-9048-7dbfa7988486",
			"object": "bac74b4f-f1dc-459a-8c74-d331a0180250"
		},
		"12a2d58a-ec2a-46c7-9048-7dbfa7988486": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 786,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "6754a567-fee2-4028-aa92-53a8cd4795a3"
		},
		"b7780f6d-5e8f-466e-a64a-bd30fa851d55": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "886,42 936,42",
			"sourceSymbol": "12a2d58a-ec2a-46c7-9048-7dbfa7988486",
			"targetSymbol": "10452129-639d-4728-b0dc-9744861a9bbc",
			"object": "1555e85d-9824-463b-96db-ac90bf0e32f1"
		},
		"10452129-639d-4728-b0dc-9744861a9bbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 936,
			"y": 21,
			"object": "0c066d84-ec00-456d-ab04-45a091cbc2a1"
		},
		"ed34c04b-7c2d-4a1e-a461-034d83acc97f": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1135,
			"y": 20.5,
			"width": 35,
			"height": 35,
			"object": "ca19c2fe-2b21-4f59-8dac-fff7b2d85317"
		},
		"52adf4e7-e86b-4ad3-93dc-61c4db47b32e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 1056,42",
			"sourceSymbol": "10452129-639d-4728-b0dc-9744861a9bbc",
			"targetSymbol": "385099e9-8ed5-408d-8c03-a15dc137e55f",
			"object": "f27de48f-6a14-4752-be72-cb31b9d91e97"
		},
		"37e414a6-807f-4159-8481-6c36e5cf1b4f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": -149,
			"width": 100,
			"height": 60,
			"object": "96cf9ea6-d869-469d-a3dc-6552780d4aec"
		},
		"b808f430-1eee-44a5-9314-f543744d21a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 758.5,42 758.5,-124 565,-124",
			"sourceSymbol": "10452129-639d-4728-b0dc-9744861a9bbc",
			"targetSymbol": "d2853240-b884-4a06-8951-1d79ad697ea4",
			"object": "9e09706d-af6d-4a5e-b2a0-e1b4028f1f7e"
		},
		"c43d7867-486b-4784-bbc2-d207dfa6812d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "144,-119 144,35",
			"sourceSymbol": "37e414a6-807f-4159-8481-6c36e5cf1b4f",
			"targetSymbol": "7f51d70a-df4e-4922-8f9f-97a68e237d17",
			"object": "5e518c76-7dd4-4d75-9b94-0f78a91edf9c"
		},
		"a01a075e-800d-4e82-8fac-463b3b910821": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 835.5,
			"y": 238.5,
			"width": 35,
			"height": 35,
			"object": "937aa46a-8b95-4b8a-b5aa-b6898e2a978e"
		},
		"7f0cea39-7420-4212-bd66-7957744ec1a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "566,42 710.75,42 710.75,256 853,256",
			"sourceSymbol": "872bb193-a159-4e2b-bbd5-5ee41f1908b9",
			"targetSymbol": "a01a075e-800d-4e82-8fac-463b3b910821",
			"object": "189a0976-b9db-4090-80cf-af617ad266d4"
		},
		"55fe2a87-1022-4dd1-a542-f7d396251c70": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 957,150.75 853,150.75 853,256",
			"sourceSymbol": "10452129-639d-4728-b0dc-9744861a9bbc",
			"targetSymbol": "a01a075e-800d-4e82-8fac-463b3b910821",
			"object": "d2a58d67-4c27-4abd-a00d-eb70017ff9ba"
		},
		"479e8052-4a87-478d-808c-074cc79a3863": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "294,42 444,42",
			"sourceSymbol": "6b5a6d56-176c-4875-95f7-61b75175e84c",
			"targetSymbol": "73535a65-47f0-4dbd-8af9-28126a58c82c",
			"object": "22062919-d160-4839-9d03-fada87087947"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"timereventdefinition": 4,
			"escalation": 4,
			"escalationeventdefinition": 4,
			"intermediateescalationevent": 4,
			"sequenceflow": 23,
			"startevent": 1,
			"boundarytimerevent": 4,
			"endevent": 4,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 5,
			"exclusivegateway": 2,
			"parallelgateway": 1
		},
		"2464f9bc-a62d-4f21-b2bd-eb1402475478": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateThrowEvent",
			"id": "intermediateescalationevent2",
			"name": "IntermediateEscalationEvent2",
			"eventDefinitions": {
				"e14c4a0e-ecda-4fad-be4f-1eabc1b9b9d7": {}
			}
		},
		"e14c4a0e-ecda-4fad-be4f-1eabc1b9b9d7": {
			"classDefinition": "com.sap.bpm.wfs.EscalationEventDefinition",
			"id": "escalationeventdefinition2",
			"escalationRef": "3bf12c1f-f5ff-42d1-a6eb-8b43e106f8d0"
		},
		"d2853240-b884-4a06-8951-1d79ad697ea4": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateThrowEventSymbol",
			"x": 549,
			"y": -140,
			"width": 32,
			"height": 32,
			"object": "2464f9bc-a62d-4f21-b2bd-eb1402475478"
		},
		"4fd1b63c-6a38-45a3-aad3-9c3beec13d87": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "2464f9bc-a62d-4f21-b2bd-eb1402475478",
			"targetRef": "96cf9ea6-d869-469d-a3dc-6552780d4aec"
		},
		"aba1c24f-5a8d-412c-89e3-4f3c12fbf035": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,-121.5 144,-121.5",
			"sourceSymbol": "d2853240-b884-4a06-8951-1d79ad697ea4",
			"targetSymbol": "37e414a6-807f-4159-8481-6c36e5cf1b4f",
			"object": "4fd1b63c-6a38-45a3-aad3-9c3beec13d87"
		},
		"3bf12c1f-f5ff-42d1-a6eb-8b43e106f8d0": {
			"classDefinition": "com.sap.bpm.wfs.Escalation",
			"escalationCode": "Rework",
			"id": "escalation2",
			"name": "escalation2"
		},
		"5caf09ea-93e8-4e82-b1f3-1450df965144": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateThrowEvent",
			"id": "intermediateescalationevent4",
			"name": "IntermediateEscalationEvent4",
			"eventDefinitions": {
				"c82baa9a-5f9c-4bc4-bacc-fb7a016a3481": {}
			}
		},
		"c82baa9a-5f9c-4bc4-bacc-fb7a016a3481": {
			"classDefinition": "com.sap.bpm.wfs.EscalationEventDefinition",
			"id": "escalationeventdefinition4",
			"escalationRef": "2074ec71-6d7e-42e1-b8df-025bc96b9a46"
		},
		"385099e9-8ed5-408d-8c03-a15dc137e55f": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateThrowEventSymbol",
			"x": 1040,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "5caf09ea-93e8-4e82-b1f3-1450df965144"
		},
		"a9359ec8-3524-4bf0-a1b8-efecde165eca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "5caf09ea-93e8-4e82-b1f3-1450df965144",
			"targetRef": "ca19c2fe-2b21-4f59-8dac-fff7b2d85317"
		},
		"9858ada0-79bb-4a4d-b464-d65e22b2abd4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1056,40 1152.5,40",
			"sourceSymbol": "385099e9-8ed5-408d-8c03-a15dc137e55f",
			"targetSymbol": "ed34c04b-7c2d-4a1e-a461-034d83acc97f",
			"object": "a9359ec8-3524-4bf0-a1b8-efecde165eca"
		},
		"2074ec71-6d7e-42e1-b8df-025bc96b9a46": {
			"classDefinition": "com.sap.bpm.wfs.Escalation",
			"escalationCode": "Reject",
			"id": "escalation4",
			"name": "escalation4"
		}
	}
}