//  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
//  SPDX-License-Identifier: Apache-2.0.

typealias OnOperationComplete = (MqttConnection, Int16, Int32) -> Void

struct OpCompleteCallbackData {
    let onOperationComplete: OnOperationComplete
    let topic: String?
    unowned var connection: MqttConnection
    
    init(topic: String? = nil, connection: MqttConnection, onOperationComplete: @escaping OnOperationComplete) {
        self.topic = topic
        self.connection = connection
        self.onOperationComplete = onOperationComplete
    }
}
