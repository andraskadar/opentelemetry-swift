/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

struct IntObservableGaugeHandle: IntObserverMetricHandle {
    public private(set) var aggregator = MaxValueAggregator<Int>()

    func observe(value: Int) {
        aggregator.update(value: value)
    }
}
