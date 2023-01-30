/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

class DoubleObservableGaugeSdk: DoubleObserverMetric {
    public private(set) var observerHandles = [LabelSet: DoubleObservableGaugeHandle]()
    let name: String
    var callback: (DoubleObserverMetric) -> Void

    init(measurementName: String, callback: @escaping (DoubleObserverMetric) -> Void) {
        name = measurementName
        self.callback = callback
    }

    func observe(value: Double, labels: [String: String]) {
        observe(value: value, labelset: LabelSet(labels: labels))
    }

    func observe(value: Double, labelset: LabelSet) {
        var boundInstrument = observerHandles[labelset]
        if boundInstrument == nil {
            boundInstrument = DoubleObservableGaugeHandle()
            observerHandles[labelset] = boundInstrument
        }
        boundInstrument?.observe(value: value)
    }

    func invokeCallback() {
        callback(self)
    }
}
