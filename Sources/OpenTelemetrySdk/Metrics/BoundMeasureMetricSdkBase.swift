/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

class BoundMeasureMetricSdkBase<T>: BoundMeasureMetric<T> {
    override init() {
        super.init()
    }

    func getAggregator() -> Aggregator<T> {
        fatalError()
    }
}
