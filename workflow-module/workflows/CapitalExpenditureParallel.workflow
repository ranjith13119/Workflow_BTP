{
	"contents": {
		"e81b4dc3-a5aa-4be0-8b2a-c3367f31aadf": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capitalexpenditureparallelapproval.capitalexpenditureparallel",
			"subject": "CapitalExpenditureParallel",
			"customAttributes": [],
			"name": "CapitalExpenditureParallel",
			"documentation": "CapitalExpenditureParallel",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"ffc34786-f470-48c7-bdf2-7b007128c701": {
					"name": "BoundaryTimerEvent3"
				},
				"3e8ab743-d636-4d98-a30f-35913078bda1": {
					"name": "BoundaryEscalationEvent2"
				},
				"fbc30fb0-000c-4e19-8f4c-9610c799fee9": {
					"name": "BoundaryEscalationEvent3"
				},
				"9820924a-c75d-45ea-910c-39eee6ed6822": {
					"name": "EndEvent2"
				},
				"d5de4406-d8f7-4ac5-9902-3713f1e7a982": {
					"name": "EndEvent3"
				},
				"2ee0b338-2f3b-4177-814c-a6169ecee0e1": {
					"name": "IntermediateTimerEvent"
				},
				"4f587695-a2c5-476a-a826-c480789482f7": {
					"name": "IntermediateMessageEvent"
				},
				"32c7c37f-e3e5-42d8-a903-225ae592263c": {
					"name": "EndEvent4"
				}
			},
			"activities": {
				"6a4157e7-5127-427d-bb82-da082d26fbfa": {
					"name": "ReferencedSubflow1"
				},
				"2494e227-2cb3-4ae3-9ce1-48d167921465": {
					"name": "Test"
				},
				"b95d2983-38d4-4ed5-9ef2-fcaf1d647c30": {
					"name": "UserTask3"
				},
				"2e466742-c8ec-4272-9cef-fa2ceac8ef07": {
					"name": "MailTask2"
				},
				"3ed112b2-af66-47c1-8a30-8d7d1aedf26f": {
					"name": "MailTask3"
				},
				"21dc60a7-9984-4017-9cfa-774cc00f6317": {
					"name": "outgoing sequence"
				},
				"230e4193-518d-45ba-8a42-44b20bcc1652": {
					"name": "MailTask4"
				},
				"94f2e778-3044-433e-8ef3-eee9f59086a1": {
					"name": "MailTask5"
				},
				"39ac16cc-d5b7-4e2b-95c0-adf2bc18e702": {
					"name": "incoming sequence"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"f1e8a661-a7b6-407c-98e0-53e8fb8e7658": {
					"name": "SequenceFlow7"
				},
				"6a5c78a7-b11d-4e53-b889-ec280ff7aa00": {
					"name": "SequenceFlow12"
				},
				"291fc2ed-ab7e-4bc0-b6cc-9d59126d0caf": {
					"name": "SequenceFlow14"
				},
				"9b902a52-1df0-47f4-9cf9-e7cb3b7bab62": {
					"name": "SequenceFlow20"
				},
				"5f4210e4-8f83-485e-a2f0-db4127f6a41b": {
					"name": "SequenceFlow22"
				},
				"dd6c9bc8-7a92-4291-98b0-ab55f7bef42a": {
					"name": "SequenceFlow23"
				},
				"d0a59198-a8b1-4125-9dd2-5c1d655d5560": {
					"name": "SequenceFlow24"
				},
				"492aa29e-2d4f-4781-979c-85dfed2a378d": {
					"name": "SequenceFlow26"
				},
				"017adf62-7a2a-4a52-a118-f3fdae6546e2": {
					"name": "SequenceFlow27"
				},
				"2f1eaaca-ddc2-4395-ac67-e222717516a1": {
					"name": "SequenceFlow28"
				},
				"25315595-8dda-4da0-9337-7c27ca7a45d0": {
					"name": "SequenceFlow29"
				},
				"0058d95c-391e-40bc-a591-0998645bfa5c": {
					"name": "SequenceFlow35"
				},
				"dc95f48b-d8f1-48c8-b2b9-338f5f29a803": {
					"name": "SequenceFlow36"
				},
				"32e23a88-b48b-45f7-9621-4eb64a1897a3": {
					"name": "SequenceFlow37"
				},
				"d343d60a-cff6-476d-bc9f-a4b54f332a3f": {
					"name": "SequenceFlow38"
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
				"d4819640-3e0e-4d4a-bca1-f08dacb8872a": {}
			}
		},
		"ffc34786-f470-48c7-bdf2-7b007128c701": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": true,
			"id": "boundarytimerevent3",
			"name": "BoundaryTimerEvent3",
			"attachedToRef": "2494e227-2cb3-4ae3-9ce1-48d167921465",
			"eventDefinitions": {
				"ae5aaaff-abc2-4974-8944-784831a4bd8b": {}
			}
		},
		"3e8ab743-d636-4d98-a30f-35913078bda1": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundaryescalationevent2",
			"name": "BoundaryEscalationEvent2",
			"attachedToRef": "6a4157e7-5127-427d-bb82-da082d26fbfa",
			"eventDefinitions": {
				"6652d132-ebf1-433f-95de-3cdc314b8ada": {}
			}
		},
		"fbc30fb0-000c-4e19-8f4c-9610c799fee9": {
			"classDefinition": "com.sap.bpm.wfs.BoundaryEvent",
			"isCanceling": false,
			"id": "boundaryescalationevent3",
			"name": "BoundaryEscalationEvent3",
			"attachedToRef": "6a4157e7-5127-427d-bb82-da082d26fbfa",
			"eventDefinitions": {
				"18bace2e-9910-4e7a-bec0-1fc44b0862a4": {}
			}
		},
		"6a4157e7-5127-427d-bb82-da082d26fbfa": {
			"classDefinition": "com.sap.bpm.wfs.ReferencedSubflow",
			"workflowReference": "/workflows/MyWorkflow.workflow",
			"definitionId": "myworkflow",
			"multiInstanceLoopCharacteristics": {
				"type": "parallel",
				"collection": "${context.ApprovalSteps}",
				"completionCondition": "${context.ApprovalSteps[loop.counter].decision == \"reject\"}"
			},
			"inParameters": [{
				"sourceExpression": "${context.ApprovalSteps[loop.counter].ApprovalStep}",
				"targetVariable": "${context.approvalstep}"
			}, {
				"sourceExpression": "${context.Investment}",
				"targetVariable": "${context.Investment}"
			}, {
				"sourceExpression": "${context.Requester}",
				"targetVariable": "${context.Requester}"
			}, {
				"sourceExpression": "${context.RequestId}",
				"targetVariable": "${context.RequestId}"
			}, {
				"sourceExpression": "${context.Title}",
				"targetVariable": "${context.Title}"
			}],
			"outParameters": [{
				"sourceExpression": "${context.decision}",
				"targetVariable": "${context.ApprovalSteps[loop.counter].decision}"
			}, {
				"sourceExpression": "${context.History}",
				"targetVariable": "${context.ApprovalHistory[loop.counter]}"
			}],
			"id": "referencedsubflow1",
			"name": "ReferencedSubflow1"
		},
		"2494e227-2cb3-4ae3-9ce1-48d167921465": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "test user task",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rayyavu@deloitte.com",
			"formReference": "/forms/CapitalExpenditureParallel/TGest.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "tgest"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Test"
		},
		"b95d2983-38d4-4ed5-9ef2-fcaf1d647c30": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Boundry Timer",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "rayyavu@deloitte.com",
			"formReference": "/forms/MyWorkflow/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "UserTask3"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "6a4157e7-5127-427d-bb82-da082d26fbfa"
		},
		"f1e8a661-a7b6-407c-98e0-53e8fb8e7658": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "6a4157e7-5127-427d-bb82-da082d26fbfa",
			"targetRef": "2494e227-2cb3-4ae3-9ce1-48d167921465"
		},
		"6a5c78a7-b11d-4e53-b889-ec280ff7aa00": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "ffc34786-f470-48c7-bdf2-7b007128c701",
			"targetRef": "b95d2983-38d4-4ed5-9ef2-fcaf1d647c30"
		},
		"291fc2ed-ab7e-4bc0-b6cc-9d59126d0caf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "2494e227-2cb3-4ae3-9ce1-48d167921465",
			"targetRef": "2ee0b338-2f3b-4177-814c-a6169ecee0e1"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"1f84fede-7489-4558-bc18-9aaec3de646a": {},
				"78c54237-c1cb-454e-a8a3-2d930fda76a2": {},
				"36022487-8261-4f17-8b99-a71d276f71c7": {},
				"da24db3c-f34b-4d50-9e3c-9aa84d50b308": {},
				"69c43c3b-22b4-4296-8fb4-936eccd5c3cf": {},
				"2540fc9d-64b0-47aa-9ee9-3caf073bc8fe": {},
				"eda7e36c-3933-43e9-be31-325a8639e9d9": {},
				"a12b1886-9a8a-4f2a-a1d3-f9e0c5de3f53": {},
				"99f6824f-f69d-4d2b-b0c8-029670782260": {},
				"799e8c58-6678-4598-bbf0-af9e8d4309ee": {},
				"3e465e08-a54c-47f5-b1ef-e0b73b8d3566": {},
				"d924f86d-0837-4404-8a67-abc66a5133b8": {},
				"fc8f6766-27d7-4689-887c-7896276fb393": {},
				"1a005428-6994-490e-8644-a2a1847ffac8": {},
				"03754e98-d0b7-4c90-8520-2248accf734b": {},
				"f14db4a2-1451-4b0b-8fa2-24322c39c3a1": {},
				"0016467c-657f-48cd-bbcf-e253c9c49b1e": {},
				"24d6db40-5d0e-4a0f-b44b-5d7d45810ff9": {},
				"ff9b89be-78b5-40b4-9d5d-1156080361b3": {},
				"1c895b43-e139-456a-8fe3-b564c18b4fe3": {},
				"55831406-5471-47c4-aea4-d4b653bdcdb0": {},
				"1ecdf49f-48f6-4ed2-8c7c-a461d9d28ae9": {},
				"33f6e3d9-5ae7-4fc1-ae0f-91ce8e7e90eb": {},
				"61280a02-7376-47b2-bb5f-4804c0de5c14": {},
				"cd04e53b-a78d-4e62-b7df-e7a78228bcb1": {},
				"1c062585-79bf-4c6c-afc5-9dc3632cb144": {},
				"390f4529-b86c-49fc-9831-c6100b92be6f": {},
				"daed959d-dfdb-4d17-a903-3f62ceef5b53": {},
				"d7269038-95df-44bb-bed9-b25781cf6db1": {}
			}
		},
		"d4819640-3e0e-4d4a-bca1-f08dacb8872a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/CapitalExpenditureParallel/CapexParallelApprovalStartPayload.json",
			"id": "default-start-context"
		},
		"ae5aaaff-abc2-4974-8944-784831a4bd8b": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition5"
		},
		"6652d132-ebf1-433f-95de-3cdc314b8ada": {
			"classDefinition": "com.sap.bpm.wfs.EscalationEventDefinition",
			"id": "escalationeventdefinition2",
			"escalationRef": "1285ab45-288a-49d4-aadb-9f62de8d282a"
		},
		"18bace2e-9910-4e7a-bec0-1fc44b0862a4": {
			"classDefinition": "com.sap.bpm.wfs.EscalationEventDefinition",
			"id": "escalationeventdefinition3",
			"escalationRef": "7c0a42ea-a81f-4e03-a1a1-51265be59079"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 68.99999940395355,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,84.99999940395355 94,84.99999940395355",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "1f84fede-7489-4558-bc18-9aaec3de646a",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"1f84fede-7489-4558-bc18-9aaec3de646a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ReferencedSubflowSymbol",
			"x": 94,
			"y": 54.99999940395355,
			"width": 100,
			"height": 60,
			"object": "6a4157e7-5127-427d-bb82-da082d26fbfa",
			"symbols": {
				"38b16115-a07d-4f7c-8a70-9876f0dadd5e": {},
				"d5ebd48c-4ab0-4fa2-afc1-2ac6d91c25c4": {}
			}
		},
		"78c54237-c1cb-454e-a8a3-2d930fda76a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194.00000013074566,66 232.75000013074566,66.00000029802322 232.75,91 269.9999988079071,90.99999970197678",
			"sourceSymbol": "1f84fede-7489-4558-bc18-9aaec3de646a",
			"targetSymbol": "36022487-8261-4f17-8b99-a71d276f71c7",
			"object": "f1e8a661-a7b6-407c-98e0-53e8fb8e7658"
		},
		"36022487-8261-4f17-8b99-a71d276f71c7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 269.9999988079071,
			"y": 54.99999940395355,
			"width": 100,
			"height": 60,
			"object": "2494e227-2cb3-4ae3-9ce1-48d167921465",
			"symbols": {
				"3e7c3aa1-3d70-4b52-b215-f9b97d8f1404": {}
			}
		},
		"da24db3c-f34b-4d50-9e3c-9aa84d50b308": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 503.9999976158142,
			"y": 54.99999940395355,
			"width": 100,
			"height": 60,
			"object": "b95d2983-38d4-4ed5-9ef2-fcaf1d647c30"
		},
		"69c43c3b-22b4-4296-8fb4-936eccd5c3cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "319.9999988079071,130.99999940395355 320,181 559,181 559,84.99999940395355",
			"sourceSymbol": "3e7c3aa1-3d70-4b52-b215-f9b97d8f1404",
			"targetSymbol": "da24db3c-f34b-4d50-9e3c-9aa84d50b308",
			"object": "6a5c78a7-b11d-4e53-b889-ec280ff7aa00"
		},
		"2540fc9d-64b0-47aa-9ee9-3caf073bc8fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "319.9999988079071,86.49999970197678 432,86.49999970197678",
			"sourceSymbol": "36022487-8261-4f17-8b99-a71d276f71c7",
			"targetSymbol": "03754e98-d0b7-4c90-8520-2248accf734b",
			"object": "291fc2ed-ab7e-4bc0-b6cc-9d59126d0caf"
		},
		"38b16115-a07d-4f7c-8a70-9876f0dadd5e": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 128,
			"y": 98.99999940395355,
			"object": "3e8ab743-d636-4d98-a30f-35913078bda1"
		},
		"d5ebd48c-4ab0-4fa2-afc1-2ac6d91c25c4": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 128,
			"y": 38.99999940395355,
			"object": "fbc30fb0-000c-4e19-8f4c-9610c799fee9"
		},
		"3e7c3aa1-3d70-4b52-b215-f9b97d8f1404": {
			"classDefinition": "com.sap.bpm.wfs.ui.BoundaryEventSymbol",
			"x": 303.9999988079071,
			"y": 98.99999940395355,
			"object": "ffc34786-f470-48c7-bdf2-7b007128c701"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"messageeventdefinition": 1,
			"message": 1,
			"timereventdefinition": 6,
			"maildefinition": 4,
			"escalation": 5,
			"escalationeventdefinition": 3,
			"sequenceflow": 38,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"intermediatetimerevent": 1,
			"boundarytimerevent": 3,
			"boundaryescalationevent": 3,
			"endevent": 4,
			"usertask": 6,
			"mailtask": 5,
			"exclusivegateway": 1,
			"parallelgateway": 2,
			"referencedsubflow": 1
		},
		"1285ab45-288a-49d4-aadb-9f62de8d282a": {
			"classDefinition": "com.sap.bpm.wfs.Escalation",
			"escalationCode": "Rework",
			"id": "escalation3",
			"name": "escalation3"
		},
		"7c0a42ea-a81f-4e03-a1a1-51265be59079": {
			"classDefinition": "com.sap.bpm.wfs.Escalation",
			"escalationCode": "Reject",
			"id": "escalation5",
			"name": "escalation5"
		},
		"2e466742-c8ec-4272-9cef-fa2ceac8ef07": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "72172d11-cfe2-4ea2-b8a0-50f28f9211b9"
		},
		"eda7e36c-3933-43e9-be31-325a8639e9d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 185,
			"y": -97.00000059604645,
			"width": 100,
			"height": 60,
			"object": "2e466742-c8ec-4272-9cef-fa2ceac8ef07"
		},
		"9b902a52-1df0-47f4-9cf9-e7cb3b7bab62": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "fbc30fb0-000c-4e19-8f4c-9610c799fee9",
			"targetRef": "2e466742-c8ec-4272-9cef-fa2ceac8ef07"
		},
		"a12b1886-9a8a-4f2a-a1d3-f9e0c5de3f53": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "144,38.99999940395355 144,-67 235,-67",
			"sourceSymbol": "d5ebd48c-4ab0-4fa2-afc1-2ac6d91c25c4",
			"targetSymbol": "eda7e36c-3933-43e9-be31-325a8639e9d9",
			"object": "9b902a52-1df0-47f4-9cf9-e7cb3b7bab62"
		},
		"72172d11-cfe2-4ea2-b8a0-50f28f9211b9": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "rayyavu@deloitte.com",
			"subject": "Reject",
			"text": "Rject",
			"id": "maildefinition1"
		},
		"3ed112b2-af66-47c1-8a30-8d7d1aedf26f": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "MailTask3",
			"mailDefinitionRef": "0249278c-64e7-4146-a2fd-04f801f6e9a4"
		},
		"99f6824f-f69d-4d2b-b0c8-029670782260": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 185,
			"y": 200.99999940395355,
			"width": 100,
			"height": 60,
			"object": "3ed112b2-af66-47c1-8a30-8d7d1aedf26f"
		},
		"5f4210e4-8f83-485e-a2f0-db4127f6a41b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "3e8ab743-d636-4d98-a30f-35913078bda1",
			"targetRef": "3ed112b2-af66-47c1-8a30-8d7d1aedf26f"
		},
		"799e8c58-6678-4598-bbf0-af9e8d4309ee": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "144,130.99999940395355 144,228 235,228",
			"sourceSymbol": "38b16115-a07d-4f7c-8a70-9876f0dadd5e",
			"targetSymbol": "99f6824f-f69d-4d2b-b0c8-029670782260",
			"object": "5f4210e4-8f83-485e-a2f0-db4127f6a41b"
		},
		"0249278c-64e7-4146-a2fd-04f801f6e9a4": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "rayyavu@deloitte.com",
			"subject": "Rework",
			"text": "asdf",
			"id": "maildefinition2"
		},
		"9820924a-c75d-45ea-910c-39eee6ed6822": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"3e465e08-a54c-47f5-b1ef-e0b73b8d3566": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 335,
			"y": -84.50000059604645,
			"width": 35,
			"height": 35,
			"object": "9820924a-c75d-45ea-910c-39eee6ed6822"
		},
		"dd6c9bc8-7a92-4291-98b0-ab55f7bef42a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "2e466742-c8ec-4272-9cef-fa2ceac8ef07",
			"targetRef": "9820924a-c75d-45ea-910c-39eee6ed6822"
		},
		"d924f86d-0837-4404-8a67-abc66a5133b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "235,-67.00000059604645 352.5,-67.00000059604645",
			"sourceSymbol": "eda7e36c-3933-43e9-be31-325a8639e9d9",
			"targetSymbol": "3e465e08-a54c-47f5-b1ef-e0b73b8d3566",
			"object": "dd6c9bc8-7a92-4291-98b0-ab55f7bef42a"
		},
		"d5de4406-d8f7-4ac5-9902-3713f1e7a982": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"fc8f6766-27d7-4689-887c-7896276fb393": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 335,
			"y": 213.49999940395355,
			"width": 35,
			"height": 35,
			"object": "d5de4406-d8f7-4ac5-9902-3713f1e7a982"
		},
		"d0a59198-a8b1-4125-9dd2-5c1d655d5560": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "3ed112b2-af66-47c1-8a30-8d7d1aedf26f",
			"targetRef": "d5de4406-d8f7-4ac5-9902-3713f1e7a982"
		},
		"1a005428-6994-490e-8644-a2a1847ffac8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "235,230.99999940395355 352.5,230.99999940395355",
			"sourceSymbol": "99f6824f-f69d-4d2b-b0c8-029670782260",
			"targetSymbol": "fc8f6766-27d7-4689-887c-7896276fb393",
			"object": "d0a59198-a8b1-4125-9dd2-5c1d655d5560"
		},
		"2ee0b338-2f3b-4177-814c-a6169ecee0e1": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatetimerevent1",
			"name": "IntermediateTimerEvent",
			"eventDefinitions": {
				"b3d3ecc5-21e5-41d5-8a33-a5f9d47b94f4": {}
			}
		},
		"b3d3ecc5-21e5-41d5-8a33-a5f9d47b94f4": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition6"
		},
		"03754e98-d0b7-4c90-8520-2248accf734b": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 427,
			"y": 70,
			"width": 32,
			"height": 32,
			"object": "2ee0b338-2f3b-4177-814c-a6169ecee0e1"
		},
		"4f587695-a2c5-476a-a826-c480789482f7": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent1",
			"name": "IntermediateMessageEvent",
			"eventDefinitions": {
				"87e5a80a-4168-49f5-abef-33c9f9acb594": {}
			}
		},
		"87e5a80a-4168-49f5-abef-33c9f9acb594": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition1",
			"messageRef": "14db85b9-0efb-45d8-b99f-9bcdbe8c8e4b"
		},
		"f14db4a2-1451-4b0b-8fa2-24322c39c3a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 652,
			"y": 69,
			"width": 32,
			"height": 32,
			"object": "4f587695-a2c5-476a-a826-c480789482f7"
		},
		"492aa29e-2d4f-4781-979c-85dfed2a378d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "4f587695-a2c5-476a-a826-c480789482f7",
			"targetRef": "21dc60a7-9984-4017-9cfa-774cc00f6317"
		},
		"0016467c-657f-48cd-bbcf-e253c9c49b1e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "668,85.49999985098839 754.9843585285741,85.49999985098839",
			"sourceSymbol": "f14db4a2-1451-4b0b-8fa2-24322c39c3a1",
			"targetSymbol": "1c895b43-e139-456a-8fe3-b564c18b4fe3",
			"object": "492aa29e-2d4f-4781-979c-85dfed2a378d"
		},
		"017adf62-7a2a-4a52-a118-f3fdae6546e2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "2ee0b338-2f3b-4177-814c-a6169ecee0e1",
			"targetRef": "b95d2983-38d4-4ed5-9ef2-fcaf1d647c30"
		},
		"24d6db40-5d0e-4a0f-b44b-5d7d45810ff9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "443,84.49999970197678 553.9999976158142,84.49999970197678",
			"sourceSymbol": "03754e98-d0b7-4c90-8520-2248accf734b",
			"targetSymbol": "da24db3c-f34b-4d50-9e3c-9aa84d50b308",
			"object": "017adf62-7a2a-4a52-a118-f3fdae6546e2"
		},
		"2f1eaaca-ddc2-4395-ac67-e222717516a1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "b95d2983-38d4-4ed5-9ef2-fcaf1d647c30",
			"targetRef": "4f587695-a2c5-476a-a826-c480789482f7"
		},
		"ff9b89be-78b5-40b4-9d5d-1156080361b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "553.9999976158142,84.99999940395355 668,85",
			"sourceSymbol": "da24db3c-f34b-4d50-9e3c-9aa84d50b308",
			"targetSymbol": "f14db4a2-1451-4b0b-8fa2-24322c39c3a1",
			"object": "2f1eaaca-ddc2-4395-ac67-e222717516a1"
		},
		"14db85b9-0efb-45d8-b99f-9bcdbe8c8e4b": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "test",
			"id": "message1"
		},
		"21dc60a7-9984-4017-9cfa-774cc00f6317": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "outgoing sequence"
		},
		"1c895b43-e139-456a-8fe3-b564c18b4fe3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 733.9843585285741,
			"y": 64.99999970197678,
			"object": "21dc60a7-9984-4017-9cfa-774cc00f6317"
		},
		"25315595-8dda-4da0-9337-7c27ca7a45d0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "21dc60a7-9984-4017-9cfa-774cc00f6317",
			"targetRef": "94f2e778-3044-433e-8ef3-eee9f59086a1"
		},
		"55831406-5471-47c4-aea4-d4b653bdcdb0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "754.9843585285741,85.99999970197678 754.984375,201 863.73828125,201",
			"sourceSymbol": "1c895b43-e139-456a-8fe3-b564c18b4fe3",
			"targetSymbol": "33f6e3d9-5ae7-4fc1-ae0f-91ce8e7e90eb",
			"object": "25315595-8dda-4da0-9337-7c27ca7a45d0"
		},
		"230e4193-518d-45ba-8a42-44b20bcc1652": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask4",
			"name": "MailTask4",
			"mailDefinitionRef": "c29be838-e010-4327-a2c2-77b76a83a6b7"
		},
		"1ecdf49f-48f6-4ed2-8c7c-a461d9d28ae9": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 801.4921780721942,
			"y": -84.50000044703484,
			"width": 100,
			"height": 75,
			"object": "230e4193-518d-45ba-8a42-44b20bcc1652"
		},
		"94f2e778-3044-433e-8ef3-eee9f59086a1": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask5",
			"name": "MailTask5",
			"mailDefinitionRef": "cbfa4c28-0a80-43c1-b52a-1dc47d59b43a"
		},
		"33f6e3d9-5ae7-4fc1-ae0f-91ce8e7e90eb": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 813.73828125,
			"y": 170.75,
			"width": 100,
			"height": 60,
			"object": "94f2e778-3044-433e-8ef3-eee9f59086a1"
		},
		"0058d95c-391e-40bc-a591-0998645bfa5c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "21dc60a7-9984-4017-9cfa-774cc00f6317",
			"targetRef": "230e4193-518d-45ba-8a42-44b20bcc1652"
		},
		"61280a02-7376-47b2-bb5f-4804c0de5c14": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "754.9843585285741,85.99999970197678 754.984375,-47 809.0000170502819,-46.99999675483339",
			"sourceSymbol": "1c895b43-e139-456a-8fe3-b564c18b4fe3",
			"targetSymbol": "1ecdf49f-48f6-4ed2-8c7c-a461d9d28ae9",
			"object": "0058d95c-391e-40bc-a591-0998645bfa5c"
		},
		"c29be838-e010-4327-a2c2-77b76a83a6b7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "ra@dellot.com",
			"subject": "ra@dellot.com",
			"text": "ra@dellot.com",
			"id": "maildefinition3"
		},
		"cbfa4c28-0a80-43c1-b52a-1dc47d59b43a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "ra@dellot.com",
			"subject": "ra@dellot.com",
			"text": "ra@dellot.com",
			"id": "maildefinition4"
		},
		"39ac16cc-d5b7-4e2b-95c0-adf2bc18e702": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "incoming sequence"
		},
		"cd04e53b-a78d-4e62-b7df-e7a78228bcb1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 931,
			"y": 51,
			"object": "39ac16cc-d5b7-4e2b-95c0-adf2bc18e702"
		},
		"dc95f48b-d8f1-48c8-b2b9-338f5f29a803": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "SequenceFlow36",
			"sourceRef": "230e4193-518d-45ba-8a42-44b20bcc1652",
			"targetRef": "39ac16cc-d5b7-4e2b-95c0-adf2bc18e702"
		},
		"1c062585-79bf-4c6c-afc5-9dc3632cb144": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "851.4921875,-48 951,-48 951,72",
			"sourceSymbol": "1ecdf49f-48f6-4ed2-8c7c-a461d9d28ae9",
			"targetSymbol": "cd04e53b-a78d-4e62-b7df-e7a78228bcb1",
			"object": "dc95f48b-d8f1-48c8-b2b9-338f5f29a803"
		},
		"32e23a88-b48b-45f7-9621-4eb64a1897a3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow37",
			"name": "SequenceFlow37",
			"sourceRef": "94f2e778-3044-433e-8ef3-eee9f59086a1",
			"targetRef": "39ac16cc-d5b7-4e2b-95c0-adf2bc18e702"
		},
		"390f4529-b86c-49fc-9831-c6100b92be6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "863.73828125,196 952,196 952,72",
			"sourceSymbol": "33f6e3d9-5ae7-4fc1-ae0f-91ce8e7e90eb",
			"targetSymbol": "cd04e53b-a78d-4e62-b7df-e7a78228bcb1",
			"object": "32e23a88-b48b-45f7-9621-4eb64a1897a3"
		},
		"32c7c37f-e3e5-42d8-a903-225ae592263c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "EndEvent4"
		},
		"daed959d-dfdb-4d17-a903-3f62ceef5b53": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1023,
			"y": 54.5,
			"width": 35,
			"height": 35,
			"object": "32c7c37f-e3e5-42d8-a903-225ae592263c"
		},
		"d343d60a-cff6-476d-bc9f-a4b54f332a3f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "39ac16cc-d5b7-4e2b-95c0-adf2bc18e702",
			"targetRef": "32c7c37f-e3e5-42d8-a903-225ae592263c"
		},
		"d7269038-95df-44bb-bed9-b25781cf6db1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "952,72 1040.5,72",
			"sourceSymbol": "cd04e53b-a78d-4e62-b7df-e7a78228bcb1",
			"targetSymbol": "daed959d-dfdb-4d17-a903-3f62ceef5b53",
			"object": "d343d60a-cff6-476d-bc9f-a4b54f332a3f"
		}
	}
}