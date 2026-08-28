Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/tlsserver_mio.tlsserver_mio.c7a2b3a1ccff7dc1-cgu.05?download=true
inline.NumInlined: 383
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/std/src/thread/local.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\AE\01\00\00\19\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRyNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@3 = private unnamed_addr constant [8 x i8] c"UnixTime", align 1
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@6 = private unnamed_addr constant [16 x i8] c"UnknownExtension", align 1
@7 = private unnamed_addr constant [3 x i8] c"typ", align 1
@8 = private unnamed_addr constant [7 x i8] c"payload", align 1
@9 = private unnamed_addr constant [3 x i8] c"DHE", align 1
@10 = private unnamed_addr constant [5 x i8] c"ECDHE", align 1
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@12 = private unnamed_addr constant [3 x i8] c"V18", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@15 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@16 = private unnamed_addr constant [7 x i8] c"version", align 1
@17 = private unnamed_addr constant [8 x i8] c"contents", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2W_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_7HpkeKdfNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@21 = private unnamed_addr constant [24 x i8] c"HpkeSymmetricCipherSuite", align 1
@22 = private unnamed_addr constant [6 x i8] c"kdf_id", align 1
@23 = private unnamed_addr constant [7 x i8] c"aead_id", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2L_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_7HpkeKemNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@28 = private unnamed_addr constant [13 x i8] c"HpkeKeyConfig", align 1
@29 = private unnamed_addr constant [9 x i8] c"config_id", align 1
@30 = private unnamed_addr constant [6 x i8] c"kem_id", align 1
@31 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@32 = private unnamed_addr constant [23 x i8] c"symmetric_cipher_suites", align 1
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake13HpkeKeyConfigECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4s_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@36 = private unnamed_addr constant [17 x i8] c"EchConfigContents", align 1
@37 = private unnamed_addr constant [10 x i8] c"key_config", align 1
@38 = private unnamed_addr constant [19 x i8] c"maximum_name_length", align 1
@39 = private unnamed_addr constant [11 x i8] c"public_name", align 1
@40 = private unnamed_addr constant [10 x i8] c"extensions", align 1
@41 = private unnamed_addr constant [25 x i8] c"EcPointsExtensionRequired", align 1
@42 = private unnamed_addr constant [37 x i8] c"ExtendedMasterSecretExtensionRequired", align 1
@43 = private unnamed_addr constant [33 x i8] c"IncorrectCertificateTypeExtension", align 1
@44 = private unnamed_addr constant [25 x i8] c"KeyShareExtensionRequired", align 1
@45 = private unnamed_addr constant [28 x i8] c"NamedGroupsExtensionRequired", align 1
@46 = private unnamed_addr constant [44 x i8] c"NoCertificateRequestSignatureSchemesInCommon", align 1
@47 = private unnamed_addr constant [22 x i8] c"NoCipherSuitesInCommon", align 1
@48 = private unnamed_addr constant [24 x i8] c"NoEcPointFormatsInCommon", align 1
@49 = private unnamed_addr constant [18 x i8] c"NoKxGroupsInCommon", align 1
@50 = private unnamed_addr constant [26 x i8] c"NoSignatureSchemesInCommon", align 1
@51 = private unnamed_addr constant [23 x i8] c"NullCompressionRequired", align 1
@52 = private unnamed_addr constant [29 x i8] c"ServerDoesNotSupportTls12Or13", align 1
@53 = private unnamed_addr constant [47 x i8] c"ServerSentHelloRetryRequestWithUnknownExtension", align 1
@54 = private unnamed_addr constant [37 x i8] c"ServerTlsVersionIsDisabledByOurConfig", align 1
@55 = private unnamed_addr constant [36 x i8] c"SignatureAlgorithmsExtensionRequired", align 1
@56 = private unnamed_addr constant [34 x i8] c"SupportedVersionsExtensionRequired", align 1
@57 = private unnamed_addr constant [15 x i8] c"Tls12NotOffered", align 1
@58 = private unnamed_addr constant [24 x i8] c"Tls12NotOfferedOrEnabled", align 1
@59 = private unnamed_addr constant [20 x i8] c"Tls13RequiredForQuic", align 1
@60 = private unnamed_addr constant [28 x i8] c"UncompressedEcPointsRequired", align 1
@61 = private unnamed_addr constant [35 x i8] c"UnsolicitedCertificateTypeExtension", align 1
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@63 = private unnamed_addr constant [34 x i8] c"ServerRejectedEncryptedClientHello", align 1
@64 = private unnamed_addr constant [11 x i8] c"BadEncoding", align 1
@65 = private unnamed_addr constant [7 x i8] c"Expired", align 1
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1Y_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_8UnixTimeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtCseO5Jl7W60Eg_16rustls_pki_types8UnixTimeNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@68 = private unnamed_addr constant [14 x i8] c"ExpiredContext", align 1
@69 = private unnamed_addr constant [4 x i8] c"time", align 1
@70 = private unnamed_addr constant [9 x i8] c"not_after", align 1
@71 = private unnamed_addr constant [11 x i8] c"NotValidYet", align 1
@72 = private unnamed_addr constant [18 x i8] c"NotValidYetContext", align 1
@73 = private unnamed_addr constant [10 x i8] c"not_before", align 1
@74 = private unnamed_addr constant [7 x i8] c"Revoked", align 1
@75 = private unnamed_addr constant [26 x i8] c"UnhandledCriticalExtension", align 1
@76 = private unnamed_addr constant [13 x i8] c"UnknownIssuer", align 1
@77 = private unnamed_addr constant [23 x i8] c"UnknownRevocationStatus", align 1
@78 = private unnamed_addr constant [21 x i8] c"ExpiredRevocationList", align 1
@79 = private unnamed_addr constant [28 x i8] c"ExpiredRevocationListContext", align 1
@80 = private unnamed_addr constant [11 x i8] c"next_update", align 1
@81 = private unnamed_addr constant [12 x i8] c"BadSignature", align 1
@82 = private unnamed_addr constant [29 x i8] c"UnsupportedSignatureAlgorithm", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@85 = private unnamed_addr constant [36 x i8] c"UnsupportedSignatureAlgorithmContext", align 1
@86 = private unnamed_addr constant [22 x i8] c"signature_algorithm_id", align 1
@87 = private unnamed_addr constant [20 x i8] c"supported_algorithms", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@89 = private unnamed_addr constant [48 x i8] c"UnsupportedSignatureAlgorithmForPublicKeyContext", align 1
@90 = private unnamed_addr constant [23 x i8] c"public_key_algorithm_id", align 1
@91 = private unnamed_addr constant [15 x i8] c"NotValidForName", align 1
@92 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB4_10ServerNameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@94 = private unnamed_addr constant [22 x i8] c"NotValidForNameContext", align 1
@95 = private unnamed_addr constant [8 x i8] c"expected", align 1
@96 = private unnamed_addr constant [9 x i8] c"presented", align 1
@97 = private unnamed_addr constant [14 x i8] c"InvalidPurpose", align 1
@98 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeECsh8EDedVkTYb_13tlsserver_mio, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsI_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@100 = private unnamed_addr constant [21 x i8] c"InvalidPurposeContext", align 1
@101 = private unnamed_addr constant [8 x i8] c"required", align 1
@102 = private unnamed_addr constant [19 x i8] c"InvalidOcspResponse", align 1
@103 = private unnamed_addr constant [30 x i8] c"ApplicationVerificationFailure", align 1
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@105 = private unnamed_addr constant [5 x i8] c"Other", align 1
@106 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@107 = private unnamed_addr constant [7 x i8] c"DnsName", align 1
@108 = private unnamed_addr constant [10 x i8] c"ClientAuth", align 1
@109 = private unnamed_addr constant [10 x i8] c"ServerAuth", align 1
@110 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@111 = private unnamed_addr constant [16 x i8] c"InvalidCrlNumber", align 1
@112 = private unnamed_addr constant [30 x i8] c"InvalidRevokedCertSerialNumber", align 1
@113 = private unnamed_addr constant [19 x i8] c"IssuerInvalidForCrl", align 1
@114 = private unnamed_addr constant [10 x i8] c"ParseError", align 1
@115 = private unnamed_addr constant [21 x i8] c"UnsupportedCrlVersion", align 1
@116 = private unnamed_addr constant [28 x i8] c"UnsupportedCriticalExtension", align 1
@117 = private unnamed_addr constant [19 x i8] c"UnsupportedDeltaCrl", align 1
@118 = private unnamed_addr constant [22 x i8] c"UnsupportedIndirectCrl", align 1
@119 = private unnamed_addr constant [27 x i8] c"UnsupportedRevocationReason", align 1
@120 = private unnamed_addr constant [17 x i8] c"InvalidConfigList", align 1
@121 = private unnamed_addr constant [18 x i8] c"NoCompatibleConfig", align 1
@122 = private unnamed_addr constant [11 x i8] c"SniRequired", align 1
@123 = private unnamed_addr constant [11 x i8] c"KeyMismatch", align 1
@124 = private unnamed_addr constant [26 x i8] c"CertificatePayloadTooLarge", align 1
@125 = private unnamed_addr constant [24 x i8] c"HandshakePayloadTooLarge", align 1
@126 = private unnamed_addr constant [10 x i8] c"InvalidCcs", align 1
@127 = private unnamed_addr constant [18 x i8] c"InvalidContentType", align 1
@128 = private unnamed_addr constant [28 x i8] c"InvalidCertificateStatusType", align 1
@129 = private unnamed_addr constant [18 x i8] c"InvalidCertRequest", align 1
@130 = private unnamed_addr constant [15 x i8] c"InvalidDhParams", align 1
@131 = private unnamed_addr constant [19 x i8] c"InvalidEmptyPayload", align 1
@132 = private unnamed_addr constant [16 x i8] c"InvalidKeyUpdate", align 1
@133 = private unnamed_addr constant [17 x i8] c"InvalidServerName", align 1
@134 = private unnamed_addr constant [15 x i8] c"MessageTooLarge", align 1
@135 = private unnamed_addr constant [15 x i8] c"MessageTooShort", align 1
@136 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRReNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@137 = private unnamed_addr constant [11 x i8] c"MissingData", align 1
@138 = private unnamed_addr constant [18 x i8] c"MissingKeyExchange", align 1
@139 = private unnamed_addr constant [18 x i8] c"NoSignatureSchemes", align 1
@140 = private unnamed_addr constant [12 x i8] c"TrailingData", align 1
@141 = private unnamed_addr constant [17 x i8] c"UnexpectedMessage", align 1
@142 = private unnamed_addr constant [22 x i8] c"UnknownProtocolVersion", align 1
@143 = private unnamed_addr constant [22 x i8] c"UnsupportedCompression", align 1
@144 = private unnamed_addr constant [20 x i8] c"UnsupportedCurveType", align 1
@145 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@146 = private unnamed_addr constant [31 x i8] c"UnsupportedKeyExchangeAlgorithm", align 1
@147 = private unnamed_addr constant [16 x i8] c"EmptyTicketValue", align 1
@148 = private unnamed_addr constant [16 x i8] c"IllegalEmptyList", align 1
@149 = private unnamed_addr constant [17 x i8] c"IllegalEmptyValue", align 1
@150 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRtNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio }>, align 8
@151 = private unnamed_addr constant [18 x i8] c"DuplicateExtension", align 1
@152 = private unnamed_addr constant [31 x i8] c"PreSharedKeyIsNotFinalExtension", align 1
@153 = private unnamed_addr constant [33 x i8] c"UnknownHelloRetryRequestExtension", align 1
@154 = private unnamed_addr constant [27 x i8] c"UnknownCertificateExtension", align 1
@_RNvNvXsx_NtCs7ZUl82OSlxp_6rustls5errorNtB7_14PeerMisbehavedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = external local_unnamed_addr global { ptr, i64 }
@_RNvNvXsx_NtCs7ZUl82OSlxp_6rustls5errorNtB7_14PeerMisbehavedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = external global [76 x i64]
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio = private unnamed_addr constant [3 x i8] c"\11\12\0B", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls5error25EncryptedClientHelloErrorNtB6_5Debug3fmtCsh8EDedVkTYb_13tlsserver_mio.66 = private unnamed_addr constant [3 x ptr] [ptr @120, ptr @121, ptr @122], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14InvalidMessageECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 32)) %0, ptr noalias nofree noundef align 8 dereferenceable(840) %1, i8 noundef range(i8 0, 36) %2, i8 %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.6.0.insert.ext = zext i8 %3 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.54.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.54.0.insert.shift = shl nuw nsw i32 %.sroa.54.0.insert.ext, 16
  %.sroa.54.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.54.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.54.0.insert.insert, 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 4, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.02.0.insert.insert, ptr %.sroa.4.0..sroa_idx.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.d = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.e = icmp eq i8 %i.d, 2
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, i1 noundef zeroext %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 825
  store i8 1, ptr %i.f, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false), !alias.scope !13
  store i8 3, ptr %0, align 8, !alias.scope !16, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef align 8 dereferenceable(840) %1, i8 noundef range(i8 0, 36) %2, i8 %3, i8 noundef range(i8 0, 75) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.6.0.insert.ext = zext i8 %3 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.54.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.54.0.insert.shift = shl nuw nsw i32 %.sroa.54.0.insert.ext, 16
  %.sroa.54.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.54.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.54.0.insert.insert, 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 4, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.02.0.insert.insert, ptr %.sroa.4.0..sroa_idx.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.d = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.e = icmp eq i8 %i.d, 2
  call void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, i1 noundef zeroext %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 825
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %4, ptr %i.g, align 1, !alias.scope !18
  store i8 9, ptr %0, align 8, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(840) %1, i8 noundef range(i8 0, 36) %2, i8 %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.6.0.insert.ext = zext i8 %3 to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.54.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.54.0.insert.shift = shl nuw nsw i32 %.sroa.54.0.insert.ext, 16
  %.sroa.54.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.54.0.insert.shift
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.54.0.insert.insert, 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 4, ptr %i.b, align 8
  store i64 -9223372036854775808, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.02.0.insert.insert, ptr %.sroa.4.0..sroa_idx.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.d = load i8, ptr %i.c, align 1, !range !5, !noundef !6
  %i.e = icmp eq i8 %i.d, 2
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, i1 noundef zeroext %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 825
  store i8 1, ptr %i.f, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(64) %4) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState21process_main_protocolNtNtNtB5_6server11server_conn20ServerConnectionDataECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(840) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4, ptr noalias nofree noundef align 8 dereferenceable(136) %5, ptr noalias nofree noundef align 8 dereferenceable_or_null(56) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 823
  %i.f = load i8, ptr %i.e, align 1, !range !23, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.i = load i16, ptr %i.h, align 8, !range !24
  %cond = icmp ne i16 %i.i, 5
  %or.cond.not = select i1 %i.g, i1 %cond, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %5, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %6, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(168) %2, i64 168, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = load i8, ptr %0, align 8, !range !25, !noundef !6
  switch i8 %i.n, label %bb.g [
    i8 -1, label %bb.f
    i8 0, label %bb.h
    i8 1, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 820
  %i.p = load i8, ptr %i.o, align 4, !range !23, !noundef !6
  %i.q = invoke noundef zeroext i1 @_RNvMs1_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7Message17is_handshake_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2, i8 noundef %i.p, i8 undef)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 813 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noundef !6  ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !align !26, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !6, !nonnull !6
  %i.aa = call { ptr, ptr } %i.z(ptr noundef nonnull %i.v) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  store ptr %i.ab, ptr %i.u, align 8
  store ptr %i.ac, ptr %i.w, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.h:                                             ; preds = %bb.b, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 4, ptr %i.ad, align 8, !noalias !30
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !30
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 65537, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !30
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.af = load i8, ptr %i.ae, align 1, !range !5, !alias.scope !27, !noalias !33, !noundef !6
  %i.ag = icmp eq i8 %i.af, 2
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.a, i1 noundef zeroext %i.ag)
          to label %bb.k unwind label %bb.i, !noalias !33

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #16
          to label %.body.thread unwind label %bb.j, !noalias !34

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !34
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 825
  store i8 1, ptr %i.aj, align 1, !alias.scope !27, !noalias !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !30
  br label %bb.g

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio.exit, %bb.g
  ret void

bb.m:                                             ; preds = %bb.e
  store i8 9, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 65, ptr %.sroa.419.0..sroa_idx, align 1
  %i.ak = load ptr, ptr %4, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.ak(ptr noundef nonnull %3)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !35, !invariant.load !6 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !36, !invariant.load !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef range(i64 1, -9223372036854775808) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #18
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio.exit

bb.q:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !35, !invariant.load !6 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !36, !invariant.load !6
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #18
  br label %bb.w

bb.s:                                             ; preds = %bb.e
  %i.aw = add i8 %i.s, -1
  store i8 %i.aw, ptr %i.r, align 1
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 24, i8 undef)
          to label %bb.t unwind label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio.exit: ; preds = %bb.p, %bb.o, %bb.t
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(168) %2)
  br label %bb.l

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.ay, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio.exit

bb.u:                                             ; preds = %bb.c, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECsh8EDedVkTYb_13tlsserver_mio(ptr nonnull %3, ptr nonnull %4) #16
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.w
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

.body.thread:                                     ; preds = %bb.i, %bb.w
  %.pn42 = phi { ptr, i32 } [ %.pn.ph, %bb.w ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn42

bb.w:                                             ; preds = %bb.u, %bb.q, %bb.r
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.u ], [ %i.aq, %bb.q ], [ %i.aq, %bb.r ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message7MessageECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef align 8 dereferenceable(168) %2) #16
          to label %.body.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !37, !inline_history !40 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !37, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !37, !noundef !6
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !37
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsh8EDedVkTYb_13tlsserver_mio(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !41, !noundef !6 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 40, i64 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.07, i64 noundef %..i, i64 noundef 8) #18, !noalias !46
  %i.g = load ptr, ptr %i.e, align 8, !noalias !41, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 40, i64 136
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i4, i64 noundef 8) #18, !noalias !46
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsh8EDedVkTYb_13tlsserver_mio(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.g = load i16, ptr %i.f, align 2, !noundef !6
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.ab, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.039, align 8, !noalias !47, !noundef !6 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.k = zext i16 %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ab, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %i.l = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.m = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsh8EDedVkTYb_13tlsserver_mio.exit

bb.c:                                             ; preds = %._crit_edge
  %i.n = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 48
end_hunk_0
