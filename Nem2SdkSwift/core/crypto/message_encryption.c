// Copyright 2018 ProximaX Limited. All rights reserved.
// Use of this source code is governed by the Apache 2.0
// license that can be found in the LICENSE file.

#include <stdio.h>

#include "message_encryption.h"
#include "ed25519.h"
#include "RHash/librhash/sha3.h"
#include "ed25519/src/ge.h"

static const size_t kSharedKeySize = 32;
static const size_t kSaltBytes = kSharedKeySize;

static void create_shared_key_raw(unsigned char* shared_key, const unsigned char* public_key, const unsigned char* private_key) {
    static const unsigned char zero[kSharedKeySize] = {0};

    ge_p3 A;
    ge_p2 r;
    ge_frombytes_negate_vartime(&A, public_key);

    // negate
    fe_neg(A.X, A.X);
    fe_neg(A.T, A.T);

    // calculate a * A + 0 * B = a * A
    ge_double_scalarmult_vartime(&r, private_key, &A, zero);

    ge_tobytes(shared_key, &r);
}

void create_shared_key(unsigned char* shared_key, const unsigned char* public_key, const unsigned char* private_key, const unsigned char* salt) {
    sha3_ctx ctx;

    create_shared_key_raw(shared_key, public_key, private_key);

    for(int i = 0 ; i< kSaltBytes; ++i) {
        shared_key[i] = shared_key[i] ^ salt[i];
    }

    rhash_sha3_256_init(&ctx);
    rhash_sha3_update(&ctx, shared_key, kSharedKeySize);
    rhash_sha3_final(&ctx, shared_key);
}
