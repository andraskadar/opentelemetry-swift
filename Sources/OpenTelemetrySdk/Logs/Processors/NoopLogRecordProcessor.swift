//
// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0
// 

import Foundation
#if !COCOAPODS
import OpenTelemetryApi
#endif

public class NoopLogRecordProcessor : LogRecordProcessor {
    
    public static let noopLogRecordProcessor = NoopLogRecordProcessor()
    
    public func onEmit(logRecord: ReadableLogRecord) { }
    
    public func forceFlush() -> ExportResult {
        .success
    }
    
    public func shutdown() -> ExportResult {
        .success
    }
    
    
}
