/*
 * Copyright The OpenTelemetry Authors
 * SPDX-License-Identifier: Apache-2.0
 */


import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif


class BoundRawHistogramMetricSdkBase<T> : BoundRawHistogramMetric<T> {
    internal var status : RecordStatus
    internal var statusLock = Lock()
    
    init(recordStatus: RecordStatus) {
        status = recordStatus
        super.init()
    }
    
    func checkpoint() {
    }
    
    func getMetrics() -> [MetricData] {
        fatalError()
    }
}
