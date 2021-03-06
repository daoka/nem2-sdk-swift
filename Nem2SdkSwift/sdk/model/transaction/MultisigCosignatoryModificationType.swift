// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.

import Foundation

/// Enum containing multisig cosignatory modification type constants.
public enum MultisigCosignatoryModificationType: UInt8 {
    /// Add cosignatory.
    case add = 0
    /// Remove cosignatory.
    case remove = 1
}

