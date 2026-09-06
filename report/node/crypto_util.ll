Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/crypto_util?download=true
inline.NumInlined: 2152
inline.NumDeleted: 907
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.6 = private unnamed_addr constant [8 x i8] c"exports\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"privateSymbols\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"perIsolateSymbols\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@__dso_handle = external hidden global i8
@_ZN4node11per_process11cli_optionsE = external local_unnamed_addr global %"class.std::shared_ptr", align 8
@_ZZN4node6crypto14InitCryptoOnceEPN2v87IsolateEE9init_once = internal global i32 0, align 4
@_ZN4node6cryptoL10fips_mutexE = internal global %"class.node::MutexBase" zeroinitializer, align 8
@_ZN4node11per_process17cli_options_mutexE = external global %"class.node::MutexBase", align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to load legacy provider.\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Unable to initialize openssl secure heap.\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Unable to memory map openssl secure heap.\0A\00", align 1
@_ZZN4node6crypto13SetFipsCryptoERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.15, ptr @.str.16, ptr @.str.17 }, align 8
@.str.15 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:184\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"!per_process::cli_options->force_fips_crypto\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"void node::crypto::SetFipsCrypto(const FunctionCallbackInfo<Value> &)\00", align 1
@_ZZN4node6crypto13SetFipsCryptoERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.18, ptr @.str.19, ptr @.str.17 }, align 8
@.str.18 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:186\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"env->owns_process_state()\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"getOpenSSLSecLevel\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@_ZZN4node6crypto26cryptoErrorListToExceptionEPNS_11EnvironmentERKN7ncrypto15CryptoErrorListEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.22, ptr @.str.23, ptr @.str.24 }, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:250\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"!exception.IsEmpty()\00", align 1
@.str.24 = private unnamed_addr constant [99 x i8] c"MaybeLocal<Value> node::crypto::cryptoErrorListToException(Environment *, const CryptoErrorList &)\00", align 1
@_ZZN4node6crypto26cryptoErrorListToExceptionEPNS_11EnvironmentERKN7ncrypto15CryptoErrorListEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.25, ptr @.str.26, ptr @.str.24 }, align 8
@.str.25 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:253\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"exception->IsObject()\00", align 1
@_ZZNK4node6crypto16CryptoErrorStore11ToExceptionEPNS_11EnvironmentEN2v85LocalINS4_6StringEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.27, ptr @.str.28, ptr @.str.29 }, align 8
@.str.27 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:306\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"!exception_v.IsEmpty()\00", align 1
@.str.29 = private unnamed_addr constant [98 x i8] c"MaybeLocal<Value> node::crypto::CryptoErrorStore::ToException(Environment *, Local<String>) const\00", align 1
@_ZZNK4node6crypto16CryptoErrorStore11ToExceptionEPNS_11EnvironmentEN2v85LocalINS4_6StringEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.30, ptr @.str.31, ptr @.str.29 }, align 8
@.str.30 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:309\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"exception_v->IsObject()\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"../../src/crypto/crypto_util.cc\00", align 1
@_ZZN4node6crypto10ByteSource21ReleaseToBackingStoreEPNS_11EnvironmentEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.33, ptr @.str.34, ptr @.str.35 }, align 8
@.str.33 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:348\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"!(size_ > 0) || (allocated_data_ != nullptr)\00", align 1
@.str.35 = private unnamed_addr constant [93 x i8] c"std::unique_ptr<BackingStore> node::crypto::ByteSource::ReleaseToBackingStore(Environment *)\00", align 1
@_ZZN4node6crypto10ByteSource21ReleaseToBackingStoreEPNS_11EnvironmentEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.36, ptr @.str.37, ptr @.str.35 }, align 8
@.str.36 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:375\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@_ZZN4node6crypto10ByteSource7FromBIOERKN7ncrypto10BIOPointerEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.38, ptr @.str.39, ptr @.str.40 }, align 8
@.str.38 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:393\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@.str.40 = private unnamed_addr constant [72 x i8] c"static ByteSource node::crypto::ByteSource::FromBIO(const BIOPointer &)\00", align 1
@_ZZN4node6crypto10ByteSource10FromStringEPNS_11EnvironmentEN2v85LocalINS4_6StringEEEbE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.41, ptr @.str.42, ptr @.str.43 }, align 8
@.str.41 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:424\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"str->IsString()\00", align 1
@.str.43 = private unnamed_addr constant [91 x i8] c"static ByteSource node::crypto::ByteSource::FromString(Environment *, Local<String>, bool)\00", align 1
@_ZZN4node6crypto10ByteSource28FromSymmetricKeyObjectHandleEN2v85LocalINS2_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.44, ptr @.str.45, ptr @.str.46 }, align 8
@.str.44 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:458\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"handle->IsObject()\00", align 1
@.str.46 = private unnamed_addr constant [87 x i8] c"static ByteSource node::crypto::ByteSource::FromSymmetricKeyObjectHandle(Local<Value>)\00", align 1
@_ZZN4node6crypto10ByteSource28FromSymmetricKeyObjectHandleEN2v85LocalINS2_5ValueEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.47, ptr @.str.48, ptr @.str.46 }, align 8
@.str.47 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:461\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"(key) != nullptr\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"OSSL_\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"SYS_\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"BN_\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"RSA_\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DH_\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"EVP_\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"BUF_\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"OBJ_\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"PEM_\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"DSA_\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"X509_\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"ASN1_\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"CONF_\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"CRYPTO_\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"EC_\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"SSL_\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"BIO_\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"PKCS7_\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"X509V3_\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"PKCS12_\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"RAND_\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"DSO_\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"ENGINE_\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"OCSP_\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"UI_\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"COMP_\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"ECDSA_\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"ECDH_\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"OSSL_STORE_\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"FIPS_\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"CMS_\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"TS_\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"HMAC_\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"CT_\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"ASYNC_\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"KDF_\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"SM2_\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"USER_\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"ERR_%s%s%s\00", align 1
@.str.89 = private unnamed_addr constant [108 x i8] c"Programmatic selection of OpenSSL engines is unsupported while the experimental permission model is enabled\00", align 1
@_ZZN4node6crypto9SetEngineERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.90, ptr @.str.91, ptr @.str.92 }, align 8
@.str.90 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:620\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c"args.Length() >= 2 && args[0]->IsString()\00", align 1
@.str.92 = private unnamed_addr constant [66 x i8] c"void node::crypto::SetEngine(const FunctionCallbackInfo<Value> &)\00", align 1
@_ZZN4node6crypto12EncodeBignumEPNS_11EnvironmentEPK9bignum_stiE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.93, ptr @.str.94, ptr @.str.95 }, align 8
@.str.93 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:635\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"(buf.size()) == (static_cast<size_t>(size))\00", align 1
@.str.95 = private unnamed_addr constant [81 x i8] c"MaybeLocal<Value> node::crypto::EncodeBignum(Environment *, const BIGNUM *, int)\00", align 1
@_ZZN4node6crypto15SetEncodedValueEPNS_11EnvironmentEN2v85LocalINS3_6ObjectEEENS4_INS3_6StringEEEPK9bignum_stiE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.96, ptr @.str.97, ptr @.str.98 }, align 8
@.str.96 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:653\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"(bn) != nullptr\00", align 1
@.str.98 = private unnamed_addr constant [108 x i8] c"Maybe<void> node::crypto::SetEncodedValue(Environment *, Local<Object>, Local<String>, const BIGNUM *, int)\00", align 1
@_ZZN4node6crypto16GetCryptoJobModeEN2v85LocalINS1_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.99, ptr @.str.100, ptr @.str.101 }, align 8
@.str.99 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:663\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"args->IsUint32()\00", align 1
@.str.101 = private unnamed_addr constant [67 x i8] c"CryptoJobMode node::crypto::GetCryptoJobMode(v8::Local<v8::Value>)\00", align 1
@_ZZN4node6crypto16GetCryptoJobModeEN2v85LocalINS1_5ValueEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.102, ptr @.str.103, ptr @.str.101 }, align 8
@.str.102 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:665\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"(mode) <= (kCryptoJobSync)\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"setEngine\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"getFipsCrypto\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"setFipsCrypto\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"testFipsCrypto\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"kCryptoJobAsync\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"kCryptoJobSync\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"secureBuffer\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"secureHeapUsed\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"getOpenSSLSecLevelCrypto\00", align 1
@.str.113 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE14needs_escaping = linkonce_odr dso_local local_unnamed_addr constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [163 x i8] zeroinitializer }>, comdat, align 16
@_ZZN8simdjson8internal14base_formatterINS0_19fractured_formatterEE6stringESt17basic_string_viewIcSt11char_traitsIcEEE7escaped = linkonce_odr dso_local local_unnamed_addr constant [32 x %"struct.simdjson::(anonymous namespace)::escape_sequence"] [%"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0000\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0001\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0002\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0003\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0004\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0005\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0006\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0007\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\b\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\t\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\n\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000b\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\f\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 2, [7 x i8] c"\\r\00\00\00\00\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000e\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u000f\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0010\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0011\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0012\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0013\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0014\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0015\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0016\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0017\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0018\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u0019\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001a\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001b\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001c\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001d\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001e\00" }, %"struct.simdjson::(anonymous namespace)::escape_sequence" { i8 6, [7 x i8] c"\\u001f\00" }], comdat, align 16
@.str.122 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZN4node18ContextEmbedderTag18kNodeContextTagPtrE = external local_unnamed_addr constant ptr, align 8
@_ZTVN4node6crypto16CryptoErrorStoreE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN4node6crypto16CryptoErrorStoreD2Ev, ptr @_ZN4node6crypto16CryptoErrorStoreD0Ev, ptr @_ZNK4node6crypto16CryptoErrorStore10MemoryInfoEPNS_13MemoryTrackerE, ptr @_ZNK4node6crypto16CryptoErrorStore14MemoryInfoNameEv, ptr @_ZNK4node6crypto16CryptoErrorStore8SelfSizeEv, ptr @_ZNK4node14MemoryRetainer13WrappedObjectEv, ptr @_ZNK4node14MemoryRetainer10IsRootNodeEv, ptr @_ZNK4node14MemoryRetainer14IsCppgcWrapperEv, ptr @_ZNK4node14MemoryRetainer15GetDetachednessEv] }, comdat, align 8
@.str.123 = private unnamed_addr constant [17 x i8] c"CryptoErrorStore\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZNSt5ctypeIcE2idE = external global %"class.std::locale::id", align 8
@_ZZN4node6crypto12_GLOBAL__N_112SecureBufferERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args = internal constant %"struct.node::AssertionInfo" { ptr @.str.124, ptr @.str.125, ptr @.str.126 }, align 8
@.str.124 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:688\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"args[0]->IsUint32()\00", align 1
@.str.126 = private unnamed_addr constant [92 x i8] c"void node::crypto::(anonymous namespace)::SecureBuffer(const FunctionCallbackInfo<Value> &)\00", align 1
@_ZZN4node6crypto12_GLOBAL__N_112SecureBufferERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args_0 = internal constant %"struct.node::AssertionInfo" { ptr @.str.127, ptr @.str.128, ptr @.str.126 }, align 8
@.str.127 = private unnamed_addr constant [36 x i8] c"../../src/crypto/crypto_util.cc:692\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"data.isSecure()\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"Allocation failed\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"ERR_OPERATION_FAILED\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.137, ptr @.str.138, ptr @.str.139 }, comdat, align 8
@.str.137 = private unnamed_addr constant [27 x i8] c"../../src/node_mutex.h:254\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"(0) == (Traits::mutex_init(&mutex_))\00", align 1
@.str.139 = private unnamed_addr constant [87 x i8] c"node::MutexBase<node::LibuvMutexTraits>::MutexBase() [Traits = node::LibuvMutexTraits]\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"Cipher job failed\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"Deriving bits failed\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"Engine \22%s\22 was not found\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"Invalid key type\00", align 1
@.str.146 = private unnamed_addr constant [26 x i8] c"Key generation job failed\00", align 1
@_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.147, ptr @.str.148, ptr @.str.149 }, comdat, align 8
@.str.147 = private unnamed_addr constant [32 x i8] c"../../src/debug_utils-inl.h:106\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"(offset + 1) < (format.size())\00", align 1
@.str.149 = private unnamed_addr constant [48 x i8] c"std::string node::SPrintFImpl(std::string_view)\00", align 1
@_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0 = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.150, ptr @.str.151, ptr @.str.149 }, comdat, align 8
@.str.150 = private unnamed_addr constant [32 x i8] c"../../src/debug_utils-inl.h:108\00", align 1
@.str.151 = private unnamed_addr constant [30 x i8] c"(format[offset + 1]) == ('%')\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EE25AllocateSufficientStorageEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.157, ptr @.str.158, ptr @.str.159 }, comdat, align 8
@.str.157 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:555\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"!IsInvalidated()\00", align 1
@.str.159 = private unnamed_addr constant [142 x i8] c"void node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::AllocateSufficientStorage(size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@_ZZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_mE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.160, ptr @.str.161, ptr @.str.162 }, comdat, align 8
@.str.160 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:293\00", align 1
@.str.161 = private unnamed_addr constant [29 x i8] c"!(n > 0) || (ret != nullptr)\00", align 1
@.str.162 = private unnamed_addr constant [57 x i8] c"T *node::Realloc(T *, size_t) [T = v8::Local<v8::Value>]\00", align 1
@_ZZN4node25MultiplyWithOverflowCheckImEET_S1_S1_E20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.163, ptr @.str.164, ptr @.str.165 }, comdat, align 8
@.str.163 = private unnamed_addr constant [25 x i8] c"../../src/util-inl.h:246\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"(b) == (ret / a)\00", align 1
@.str.165 = private unnamed_addr constant [60 x i8] c"T node::MultiplyWithOverflowCheck(T, T) [T = unsigned long]\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EE9SetLengthEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.166, ptr @.str.167, ptr @.str.168 }, comdat, align 8
@.str.166 = private unnamed_addr constant [21 x i8] c"../../src/util.h:448\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"(length) <= (capacity())\00", align 1
@.str.168 = private unnamed_addr constant [126 x i8] c"void node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::SetLength(size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm128EEixEmE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.169, ptr @.str.170, ptr @.str.171 }, comdat, align 8
@.str.169 = private unnamed_addr constant [21 x i8] c"../../src/util.h:421\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"(index) < (length())\00", align 1
@.str.171 = private unnamed_addr constant [125 x i8] c"T &node::MaybeStackBuffer<v8::Local<v8::Value>, 128>::operator[](size_t) [T = v8::Local<v8::Value>, kStackStorageSize = 128]\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZN4node6crypto25ArrayBufferOrViewContentsIcEC1EN2v85LocalINS3_5ValueEEEE20error_and_abort_args = linkonce_odr dso_local constant %"struct.node::AssertionInfo" { ptr @.str.172, ptr @.str.173, ptr @.str.174 }, comdat, align 8
@.str.172 = private unnamed_addr constant [35 x i8] c"../../src/crypto/crypto_util.h:486\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"IsAnyBufferSource(buf)\00", align 1
@.str.174 = private unnamed_addr constant [106 x i8] c"node::crypto::ArrayBufferOrViewContents<char>::ArrayBufferOrViewContents(v8::Local<v8::Value>) [T = char]\00", align 1
@.str.175 = private unnamed_addr constant [39 x i8] c"ERR_CRYPTO_CUSTOM_ENGINE_NOT_SUPPORTED\00", align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_crypto_util.cc, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E], section "llvm.metadata"
@switch.table._ZN4node6crypto16CryptoErrorStore6InsertIJEEEvNS0_15NodeCryptoErrorEDpOT_ = private unnamed_addr constant [6 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.21], align 8
@switch.table._ZN4node6crypto5error8DecorateEPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEm = private unnamed_addr constant [182 x ptr] [ptr @.str.87, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.49, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.65, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.49, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], align 8

@_ZN4node6crypto10ByteSourceC1EOS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4node6crypto10ByteSourceC2EOS1_
@_ZN4node6crypto10ByteSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4node6crypto10ByteSourceD2Ev

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.simdjson::fractured_json_options", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i64 120, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 80, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store double 8.000000e-01, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 10, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 81
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 1, ptr %i.l, align 2
  call void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN8simdjson14fractured_jsonINS_3dom7elementEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_RKNS_22fractured_json_optionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(83) %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.simdjson::dom::element", align 8 ; 3 uses
  %5 = alloca %"class.simdjson::internal::fractured_string_builder", align 8 ; 15 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %5, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store ptr %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 64, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  call void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.j = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.k = load i64, ptr %i.c, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = icmp eq ptr %i.j, null
  %i.n = icmp ne i64 %i.k, 0
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.113) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.k, 15
  br i1 %i.o, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = icmp slt i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = add nuw i64 %i.k, 1                      ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !24

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.s = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 2 uses
  store ptr %i.s, ptr %0, align 8
  store i64 %i.k, ptr %i.l, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.c
  %i.t = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.j, align 1
  store i8 %i.u, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.ad = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ad, %5
  %i.ae = icmp eq ptr %i.ad, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i1.i.i, %i.ae
  br i1 %or.cond.i.i.i.i.i, label %_ZN8simdjson8internal24fractured_string_builderD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #33
  br label %_ZN8simdjson8internal24fractured_string_builderD2Ev.exit

_ZN8simdjson8internal24fractured_string_builderD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8simdjson8internal24fractured_string_builder6appendERKNS_3dom7elementE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.simdjson::dom::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::dom::object", align 8 ; 6 uses
  %4 = alloca %"struct.simdjson::internal::element_metrics", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  store ptr %i.b, ptr %i.a, align 8, !noalias !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.c = load ptr, ptr %1, align 8, !noalias !41  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !41 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !noalias !41
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load i64, ptr %i.g, align 8, !noalias !41 ; 3 uses
  %i.i = lshr i64 %i.h, 56
  %trunc.i.i = trunc nuw i64 %i.i to i8
  switch i8 %trunc.i.i, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !41
  %.mask.i.i.i = and i64 %i.h, -72057594037927936
  %cond.i.i.i = icmp eq i64 %.mask.i.i.i, 6557241057451442176
  br i1 %cond.i.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19.i.i, label %_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.i.i

_ZNO8simdjson8internal20simdjson_result_baseINS_3dom5arrayEE3tieERS3_RNS_10error_codeE.exit.thread19.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %2, align 8, !noalias !41
  store i64 %i.e, ptr %i.j, align 8, !noalias !41
end_hunk_0
begin_hunk_1_@_ZN4node6crypto10ByteSource18NullTerminatedCopyEPNS_11EnvironmentEN2v85LocalINS4_5ValueEEE:bb.a
  %i.o = load i64, ptr %i.b, align 8, !noalias !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.p, align 1, !noalias !125
  %i.q = call { ptr, i64 } @_ZN7ncrypto11DataPointer7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #30, !noalias !125 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  store ptr %i.r, ptr %0, align 8, !alias.scope !126
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8, !alias.scope !126
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !126
  call void @_ZN7ncrypto11DataPointerD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %3) #30, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !125
  br label %_ZN4node6crypto10ByteSource10FromBufferEN2v85LocalINS2_5ValueEEEb.exit

_ZN4node6crypto10ByteSource10FromBufferEN2v85LocalINS2_5ValueEEEb.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !123
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4node6crypto10ByteSource10FromStringEPNS_11EnvironmentEN2v85LocalINS4_6StringEEEb(ptr dead_on_unwind writable sret(%"class.node::crypto::ByteSource") align 8 %0, ptr noundef %1, ptr %2, i1 noundef zeroext true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4node6crypto10ByteSource10FromBufferEN2v85LocalINS2_5ValueEEEb.exit
  ret void
}

declare noundef zeroext i1 @_ZN4node6Buffer11HasInstanceEN2v85LocalINS1_5ValueEEE(ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4node6crypto10ByteSource7ForeignEPKvm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.node::crypto::ByteSource") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4node6crypto15KeyObjectHandle4DataEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #7

declare noundef ptr @_ZNK4node6crypto13KeyObjectData15GetSymmetricKeyEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

declare noundef i64 @_ZNK4node6crypto13KeyObjectData19GetSymmetricKeySizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4node6crypto10ByteSource9AllocatedEPvm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.node::crypto::ByteSource") align 8 captures(none) initializes((0, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4node6crypto5error8DecorateEPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEm(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ERR_lib_error_string(i64 noundef %2) #30 ; 2 uses
  %i.d = tail call ptr @ERR_func_error_string(i64 noundef %2) #30 ; 2 uses
  %i.e = tail call ptr @ERR_reason_error_string(i64 noundef %2) #30 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.g) #30 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1744
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit: ; preds = %bb.c, %bb.d
  %i.o = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.h, ptr %i.l, ptr %i.m) #30
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.x

bb.e:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, %bb.b
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1296
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54, !prof !24

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54: ; preds = %bb.f, %bb.g
  %i.w = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.h, ptr %i.t, ptr %i.u) #30
  %i.x = trunc i16 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.x

bb.h:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54, %bb.e
  %.not53 = icmp eq ptr %i.e, null
  br i1 %.not53, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2312
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55, !prof !24

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55: ; preds = %bb.i, %bb.j
  %i.ae = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.h, ptr %i.ab, ptr %i.ac) #30
  %i.af = trunc i16 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.x

bb.k:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ag, ptr %3, align 8
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30 ; 8 uses
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp slt i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ak = add nuw i64 %i.ah, 1                    ; 2 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !24

bb.o:                                             ; preds = %bb.n
  call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.n
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #32 ; 2 uses
  store ptr %i.am, ptr %3, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.k
  %i.an = phi ptr [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.ag, %bb.k ] ; 3 uses
  switch i64 %i.ah, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ao = load i8, ptr %i.e, align 1
  store i8 %i.ao, ptr %i.an, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.e, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.p, %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ah
  store i8 0, ptr %i.aq, align 1
  %i.ar = load ptr, ptr %3, align 8               ; 2 uses
  %i.as = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = icmp samesign eq i64 %i.as, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.av = and i64 %2, 2147483648
  %.not.i = icmp eq i64 %i.av, 0
  %i.aw = lshr i64 %2, 23
  %i.ax = trunc i64 %i.aw to i8
  %4 = xor i8 %i.ax, -128
  %switch.tableidx = select i1 %.not.i, i8 %4, i8 -126 ; 2 uses
  %i.ay = icmp ult i8 %switch.tableidx, -74
  br i1 %i.ay, label %switch.lookup, label %bb.u

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %bb.t
  %.sroa.060.088 = phi ptr [ %i.bm, %bb.t ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 3 uses
  %i.az = load i8, ptr %.sroa.060.088, align 1    ; 2 uses
  %i.ba = icmp eq i8 %i.az, 32
  br i1 %i.ba, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #30
  %i.bc = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.bd = load ptr, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.not.i.i.i, label %bb.s, label %_ZN4node7ToUpperEc.exit

bb.s:                                             ; preds = %bb.r
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %bb.r
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext %i.az) #30, !inline_history !127
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN4node7ToUpperEc.exit
  %storemerge = phi i8 [ %i.bl, %_ZN4node7ToUpperEc.exit ], [ 95, %.lr.ph ]
  store i8 %storemerge, ptr %.sroa.060.088, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.060.088, i64 1 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.at
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

switch.lookup:                                    ; preds = %._crit_edge
  %i.bo = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node6crypto5error8DecorateEPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEm, i64 %i.bo
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.u

bb.u:                                             ; preds = %switch.lookup, %._crit_edge
  %.046 = phi ptr [ @.str.49, %._crit_edge ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.046, ptr noundef nonnull dereferenceable(5) @.str.65) #36
  %i.bq = icmp eq i32 %i.bp, 0
  %spec.select = select i1 %i.bq, ptr @.str.49, ptr @.str.50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.br = load ptr, ptr %3, align 8
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.88, ptr noundef nonnull %spec.select, ptr noundef nonnull %.046, ptr noundef %i.br) #30 ; 0 uses
  %i.bt = load ptr, ptr %i.f, align 8
  %i.bu = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bt) #30
  %i.bv = load ptr, ptr %i.y, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 632
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.f, align 8
  %i.bz = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.by, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef -1) #30 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.v, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit56, !prof !24

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #30
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit56

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit56: ; preds = %bb.u, %bb.v
  %i.cb = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.bu, ptr %i.bx, ptr %i.bz) #30
  %i.cc = trunc i16 %i.cb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.cd = load ptr, ptr %3, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ag
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit56
  %i.cf = load i64, ptr %i.ag, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  br label %bb.x

bb.x:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, %bb.a, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.045.2 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.a ], [ 0, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit ], [ 0, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit54 ], [ 1, %bb.w ], [ 0, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit55 ]
  ret i8 %.sroa.045.2
}

declare ptr @ERR_lib_error_string(i64 noundef) local_unnamed_addr #7

declare ptr @ERR_func_error_string(i64 noundef) local_unnamed_addr #7

declare ptr @ERR_reason_error_string(i64 noundef) local_unnamed_addr #7

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6crypto9SetEngineERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i:
  %1 = alloca %"class.node::Utf8Value", align 8   ; 5 uses
  %2 = alloca %"class.ncrypto::EnginePointer", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #30 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #30 ; 0 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 271
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1552
  %i.o = load i8, ptr %i.n, align 8, !range !26, !noundef !27
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.a, label %bb.b, !prof !24

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  tail call void @_ZN4node44THROW_ERR_CRYPTO_CUSTOM_ENGINE_NOT_SUPPORTEDIJEEEvPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef nonnull %i.m, i64 107, ptr nonnull @.str.89)
  br label %bb.g

bb.b:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit14, label %.critedge, !prof !28

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit14: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, 3
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %_ZNK2v85Value13QuickIsStringEv.exit, label %.critedge

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit14
  %i.z = add nsw i64 %i.w, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 11
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp ugt i16 %i.ae, 127
  br i1 %i.af, label %.critedge, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit12, !prof !128

.critedge:                                        ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit14, %bb.b, %_ZNK2v85Value13QuickIsStringEv.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto9SetEngineERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #30
  tail call void @abort() #31
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit12: ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 3008
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = tail call i64 @_ZNK2v85Value11Uint32ValueENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr %.sroa.0.0.copyload.i.i.i) #30 ; 2 uses
  %.sroa.519.0.extract.shift = lshr i64 %i.ak, 32
  %.sroa.519.0.extract.trunc = trunc nuw i64 %.sroa.519.0.extract.shift to i32
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.q, align 8
  %i.ap = trunc i64 %i.ao to i32
  %.not.i = icmp sgt i32 %i.ap, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %i.at, 648
  %i.av = inttoptr i64 %i.au to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.e:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.u, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.d, %bb.e
  %.sroa.023.0 = phi ptr [ %i.aw, %bb.e ], [ %i.av, %bb.d ]
  call void @_ZN4node9Utf8ValueC1EPN2v87IsolateENS1_5LocalINS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %i.an, ptr %.sroa.023.0) #30
  %i.ax = load ptr, ptr %0, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  call void @_ZN7ncrypto13EnginePointer15getEngineByNameEPKcPNS_15CryptoErrorListE(ptr dead_on_unwind nonnull writable sret(%"class.ncrypto::EnginePointer") align 8 %2, ptr noundef %i.ba, ptr noundef null) #30
  %i.bb = call noundef zeroext i1 @_ZN7ncrypto13EnginePointer12setAsDefaultEjPNS_15CryptoErrorListE(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %.sroa.519.0.extract.trunc, ptr noundef null) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = select i1 %i.bb, i64 672, i64 680
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.ay, align 8
  call void @_ZN7ncrypto13EnginePointerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bj = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = icmp ne ptr %i.bj, %i.bl
  %i.bn = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.f, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.f:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  call void @free(ptr noundef nonnull %i.bj) #30
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit12, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_1
