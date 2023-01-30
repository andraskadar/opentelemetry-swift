/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

struct IntObserverMetricHandleSdk: IntObserverMetricHandle {
    public private(set) var aggregator = LastValueAggregator<Int>()

    func observe(value: Int) {
        aggregator.update(value: value)
    }
}
