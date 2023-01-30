/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

struct DoubleObserverMetricHandleSdk: DoubleObserverMetricHandle {
    public private(set) var aggregator = LastValueAggregator<Double>()

    func observe(value: Double) {
        aggregator.update(value: value)
    }
}
