Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/tls13groupselection_test?download=true
begin_hunk_0

@.str = private unnamed_addr constant [32 x i8] c"test/tls13groupselection_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cert = test_get_argument(0)\00", align 1
@cert = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"privkey = test_get_argument(1)\00", align 1
@privkey = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"tls13groupselection_test\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"==> Running TLSv1.3 test %d\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SYNTAX_FAILURE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"NEGOTIATION_FAILURE\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"====> [ERROR] TLSv1.3 test %d with WORK_ON_SSL_OBJECT failed\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"====> [ERROR] TLSv1.3 test %d with WORK_ON_CONTEXT failed\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"secp384r1:secp521r1:X25519:prime256v1:X448\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"X25519:secp521r1:secp384r1:prime256v1:X448\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"secp384r1\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"secp521r1:secp384r1:X25519:prime256v1:X448\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"secp521r1\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"X25519:secp384r1:prime256v1\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"x25519\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"secp521r1:secp384r1:*X25519/*prime256v1:X448\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"secp521r1:*prime256v1:X25519:X448\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"secp521r1:secp384r1:*X25519:prime256v1:*X448\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"secp384r1:secp521r1:prime256v1/X25519:X448\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"*X25519:prime256v1:*X448\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"secp521r1:secp384r1/X448:X25519\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"x448\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"*X25519:?unknown_group_123:prime256v1:*X448\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"secp521r1:secp384r1/X448:?unknown_group_456:?X25519\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"*X25519:prime256v1:*X448:?*unknown_group_789\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"secp521r1:secp384r1/?X448:?unknown_group_456:X25519\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"X25519MLKEM768\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"*X25519:*X448\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"secp521r1:X25519:prime256v1:-X25519:secp384r1/X448\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"X25519:prime256v1/X448:-X25519\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"*X25519:DEFAULT:-prime256v1:-X448\00", align 1
@.str.33 = private unnamed_addr constant [72 x i8] c"DEFAULT:-X25519:-?X25519MLKEM768:-?SecP256r1MLKEM768:-?curveSM2MLKEM768\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"secp521r1:X25519:prime256v1/X25519:prime256v1/X448\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"*X25519:*prime256v1:-X25519\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"X25519:prime256v1\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"*X25519:*prime256v1:NOTVALID\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"X25519//prime256v1\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"**X25519:*prime256v1\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"*X25519:*secp256r1:*X448:*secp521r1:*secp384r1\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"*X25519:*secp256r1:?:*secp521r1\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"*X25519:*secp256r1::secp521r1\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c":*secp256r1:secp521r1\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"*secp256r1:secp521r1:\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"/secp256r1/secp521r1\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"secp256r1/secp521r1/\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"X25519:??secp256r1:X448\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"X25519:secp256r1:**X448\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"--X25519:secp256r1:X448\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"-DEFAULT\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"?DEFAULT\00", align 1
@.str.53 = private unnamed_addr constant [68 x i8] c"X25519:secp256r1:X448:secp521r1:-X448:-secp256r1:-X25519:-secp521r1\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"secp384r1:secp521r1:X25519\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"prime256v1:X448\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"secp521r1:secp384r1:X25519\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"secp521r1:X25519 / prime256v1/X25519 / prime256v1/X448\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"secp521r1 / prime256v1:X25519 / prime256v1/X448\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"*brainpoolP256r1:X25519\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"*X25519:secp256r1\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"secp256r1:DEFAULT\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"*ffdhe2048:secp256r1\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"DEFAULT:ffdhe4096\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"x25519:ffdhe2048:*ffdhe4096\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"*ffdhe2048:secp384r1\00", align 1
@.str.67 = private unnamed_addr constant [124 x i8] c"*X25519:?*X25519MLKEM768 / ?*X25519 : ?secp256r1 / ?X448 : ?secp384r1 : ?secp521r1 / ?ffdhe2048:?ffdhe3072:-secp256r1:-X448\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"*ffdhe2048:ffdhe4096\00", align 1
@.str.69 = private unnamed_addr constant [139 x i8] c"*X25519:?*X25519MLKEM768 / ?*X25519 : ?secp256r1 / ?X448 : ?secp384r1 : ?secp521r1 / ?ffdhe2048:?ffdhe3072:-ffdhe2048:-ffdhe3072:ffdhe4096\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"ffdhe4096\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"?*BOGUS:X25519 / *secp256r1\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"X25519 / secp256r1\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"X25519:?*BOGUS / *secp256r1\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"?*BOGUS:X25519:*X448 / *secp256r1\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"X25519:X448 / secp256r1\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"X25519:?*BOGUS:*X448 / *secp256r1\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"X25519:*X448:secp384r1 / *secp256r1:-X448\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"secp384r1:X448:X25519 / secp256r1\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"X25519:*X448:*secp384r1 / *secp256r1:-X448\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"X25519:secp384r1 / secp256r1\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"secp256r1:DEFAULT:-?X25519MLKEM768\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"x25519:secp256r1\00", align 1
@tls13groupselection_tests = internal constant [56 x { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.9, ptr @.str.10, i32 0, [4 x i8] zeroinitializer, ptr @.str.11, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.12, ptr @.str.10, i32 1, [4 x i8] zeroinitializer, ptr @.str.13, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.12, ptr @.str.14, i32 0, [4 x i8] zeroinitializer, ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.12, ptr @.str.14, i32 1, [4 x i8] zeroinitializer, ptr @.str.15, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.16, ptr @.str.17, i32 0, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.16, ptr @.str.17, i32 1, [4 x i8] zeroinitializer, ptr @.str.18, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.19, ptr @.str.20, i32 0, [4 x i8] zeroinitializer, ptr @.str.13, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.19, ptr @.str.20, i32 1, [4 x i8] zeroinitializer, ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.21, ptr @.str.22, i32 0, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.21, ptr @.str.22, i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.24, ptr @.str.25, i32 0, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.26, ptr @.str.27, i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr @.str.28, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr null, ptr null, i32 1, [4 x i8] zeroinitializer, ptr @.str.28, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.29, ptr @.str.30, i32 0, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.29, ptr @.str.30, i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.21, ptr @.str.31, i32 0, [4 x i8] zeroinitializer, ptr @.str.18, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.21, ptr @.str.31, i32 1, [4 x i8] zeroinitializer, ptr @.str.18, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.32, ptr @.str.33, i32 0, [4 x i8] zeroinitializer, ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.32, ptr @.str.33, i32 1, [4 x i8] zeroinitializer, ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.34, ptr @.str.34, i32 0, [4 x i8] zeroinitializer, ptr @.str.13, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.34, ptr @.str.34, i32 1, [4 x i8] zeroinitializer, ptr @.str.13, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.35, ptr @.str.36, i32 0, [4 x i8] zeroinitializer, ptr @.str.18, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.37, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.39, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.40, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.41, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.42, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.43, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.44, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.45, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.46, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.47, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.51, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.5, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, ptr @.str.38, i32 0, [4 x i8] zeroinitializer, ptr @.str.6, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, ptr @.str.55, i32 0, [4 x i8] zeroinitializer, ptr @.str.6, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.56, ptr @.str.55, i32 1, [4 x i8] zeroinitializer, ptr @.str.6, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.57, ptr @.str.57, i32 0, [4 x i8] zeroinitializer, ptr @.str.13, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.58, ptr @.str.58, i32 1, [4 x i8] zeroinitializer, ptr @.str.13, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.59, ptr @.str.60, i32 1, [4 x i8] zeroinitializer, ptr @.str.6, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.61, ptr @.str.62, i32 1, [4 x i8] zeroinitializer, ptr @.str.18, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.63, ptr @.str.64, i32 0, [4 x i8] zeroinitializer, ptr @.str.18, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.65, ptr @.str.64, i32 1, [4 x i8] zeroinitializer, ptr @.str.15, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.66, ptr @.str.67, i32 1, [4 x i8] zeroinitializer, ptr @.str.11, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.68, ptr @.str.69, i32 1, [4 x i8] zeroinitializer, ptr @.str.70, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.71, ptr @.str.72, i32 1, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, ptr @.str.72, i32 1, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.74, ptr @.str.75, i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.76, ptr @.str.75, i32 1, [4 x i8] zeroinitializer, ptr @.str.23, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.77, ptr @.str.78, i32 1, [4 x i8] zeroinitializer, ptr @.str.15, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.79, ptr @.str.80, i32 1, [4 x i8] zeroinitializer, ptr @.str.11, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.81, ptr @.str.82, i32 0, [4 x i8] zeroinitializer, ptr @.str.18, i32 2, [4 x i8] zeroinitializer }], align 16
@.str.84 = private unnamed_addr constant [35 x i8] c"current_test_vector->client_groups\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"strlen(current_test_vector->client_groups)\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.87 = private unnamed_addr constant [126 x i8] c"create_ssl_ctx_pair(((void*)0), TLS_server_method(), TLS_client_method(), 0x0301, 0, &server_ctx, &client_ctx, cert, privkey)\00", align 1
@.str.88 = private unnamed_addr constant [78 x i8] c"SSL_CTX_ctrl(client_ctx, 92, 0, (char *)(current_test_vector->client_groups))\00", align 1
@.str.89 = private unnamed_addr constant [91 x i8] c"create_ssl_objects(server_ctx, client_ctx, &serverssl, &clientssl, ((void*)0), ((void*)0))\00", align 1
@.str.90 = private unnamed_addr constant [73 x i8] c"SSL_ctrl(clientssl, 92, 0, (char *)(current_test_vector->client_groups))\00", align 1
@.str.91 = private unnamed_addr constant [78 x i8] c"SSL_CTX_ctrl(server_ctx, 92, 0, (char *)(current_test_vector->server_groups))\00", align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"SSL_CTX_ctrl(client_ctx, 123, 0x0304, ((void*)0))\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"SSL_CTX_ctrl(server_ctx, 123, 0x0304, ((void*)0))\00", align 1
@.str.94 = private unnamed_addr constant [79 x i8] c"create_ssl_objects(server_ctx, client_ctx, &serverssl, &clientssl, NULL, NULL)\00", align 1
@.str.95 = private unnamed_addr constant [73 x i8] c"SSL_ctrl(serverssl, 92, 0, (char *)(current_test_vector->server_groups))\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"SSL_ctrl(clientssl, 123, 0x0304, ((void*)0))\00", align 1
@.str.97 = private unnamed_addr constant [45 x i8] c"SSL_ctrl(serverssl, 123, 0x0304, ((void*)0))\00", align 1
@.str.98 = private unnamed_addr constant [47 x i8] c"create_ssl_connection(serverssl, clientssl, 0)\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"negotiated_group_client\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"negotiated_group_server\00", align 1
@.str.101 = private unnamed_addr constant [61 x i8] c"response_desc[current_test_vector->expected_server_response]\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"response_desc[server_response]\00", align 1
@response_desc = internal unnamed_addr constant [3 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.107], align 16
@.str.103 = private unnamed_addr constant [18 x i8] c"group_name_client\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"current_test_vector->expected_group\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"HRR\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"SH\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @setup_tests() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @test_get_argument(i64 noundef 0) #5 ; 2 uses
  store ptr %i.a, ptr @cert, align 8, !tbaa !9
  %i.b = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 616, ptr noundef nonnull @.str.1, ptr noundef %i.a) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @test_get_argument(i64 noundef 1) #5 ; 2 uses
  store ptr %i.c, ptr @privkey, align 8, !tbaa !9
  %i.d = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 617, ptr noundef nonnull @.str.2, ptr noundef %i.c) #5
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @add_all_tests(ptr noundef nonnull @.str.3, ptr noundef nonnull @tls13groupselection_test, i32 noundef 56, i32 noundef 1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @test_get_argument(i64 noundef) local_unnamed_addr #1

declare void @add_all_tests(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @tls13groupselection_test(i32 noundef %0) #0 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.4, i32 noundef %0) #5
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [40 x i8], ptr @tls13groupselection_tests, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(15) @.str.5, i64 noundef 15) #6
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val22 = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.g = tail call fastcc i32 @test_invalidsyntax(ptr %.val22, i32 noundef 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(20) @.str.6, i64 noundef 20) #6
  %i.i = icmp ne i32 %i.h, 0
  %spec.select = zext i1 %i.i to i32              ; 2 uses
  %i.j = tail call fastcc i32 @test_groupnegotiation(ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef %spec.select)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024 = phi i32 [ 2, %bb.b ], [ %spec.select, %bb.c ]
  %.020 = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %.020, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str, i32 noundef 597, ptr noundef nonnull @.str.7, i32 noundef %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.k = tail call fastcc i32 @test_invalidsyntax(ptr %.val, i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = tail call fastcc i32 @test_groupnegotiation(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %.024)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.k, %bb.g ], [ %i.l, %bb.h ]  ; 2 uses
  %.not21 = icmp eq i32 %.1, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull @.str.8, i32 noundef %0) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %1 = and i32 %.1, %.020
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_invalidsyntax(ptr %.0.val, i32 noundef range(i32 0, 2) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !17
  %i.e = tail call i32 @test_ptr(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.84, ptr noundef %.0.val) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.val) #6
  %i.g = tail call i32 @test_size_t_ne(ptr noundef nonnull @.str, i32 noundef 439, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i64 noundef %i.f, i64 noundef 0) #5
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @TLS_server_method() #5
  %i.i = tail call ptr @TLS_client_method() #5
  %i.j = load ptr, ptr @cert, align 8, !tbaa !9
  %i.k = load ptr, ptr @privkey, align 8, !tbaa !9
  %i.l = call i32 @create_ssl_ctx_pair(ptr noundef null, ptr noundef %i.h, ptr noundef %i.i, i32 noundef 769, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.j, ptr noundef %i.k) #5
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 447, ptr noundef nonnull @.str.87, i32 noundef %i.n) #5
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %0, 0                        ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.r = call i64 @SSL_CTX_ctrl(ptr noundef %i.q, i32 noundef 92, i64 noundef 0, ptr noundef nonnull %.0.val) #5
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 452, ptr noundef nonnull @.str.88, i32 noundef %i.t) #5
  %.not8 = icmp eq i32 %i.u, 0
  br i1 %.not8, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.x = call i32 @create_ssl_objects(ptr noundef %i.v, ptr noundef %i.w, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #5
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 456, ptr noundef nonnull @.str.89, i32 noundef %i.z) #5
  %.not9 = icmp eq i32 %i.aa, 0
  br i1 %.not9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.ac = call i64 @SSL_ctrl(ptr noundef %i.ab, i32 noundef 92, i64 noundef 0, ptr noundef nonnull %.0.val) #5
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_false(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @.str.90, i32 noundef %i.ae) #5
  %.not11 = icmp eq i32 %i.af, 0
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b, %bb.i
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.ag) #5
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !17
  call void @SSL_free(ptr noundef %i.ah) #5
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.ai) #5
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @SSL_CTX_free(ptr noundef %i.aj) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_groupnegotiation(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.f = tail call ptr @TLS_server_method() #5
  %i.g = tail call ptr @TLS_client_method() #5
  %i.h = load ptr, ptr @cert, align 8, !tbaa !9
  %i.i = load ptr, ptr @privkey, align 8, !tbaa !9
  %i.j = call i32 @create_ssl_ctx_pair(ptr noundef null, ptr noundef %i.f, ptr noundef %i.g, i32 noundef 769, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.h, ptr noundef %i.i) #5
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 488, ptr noundef nonnull @.str.87, i32 noundef %i.l) #5
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.q = call i64 @SSL_CTX_ctrl(ptr noundef %i.p, i32 noundef 92, i64 noundef 0, ptr noundef nonnull %i.o) #5
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 494, ptr noundef nonnull @.str.88, i32 noundef %i.s) #5
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not28 = icmp eq ptr %i.v, null
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.x = call i64 @SSL_CTX_ctrl(ptr noundef %i.w, i32 noundef 92, i64 noundef 0, ptr noundef nonnull %i.v) #5
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 498, ptr noundef nonnull @.str.91, i32 noundef %i.z) #5
  %.not29 = icmp eq i32 %i.aa, 0
  br i1 %.not29, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ac = call i64 @SSL_CTX_ctrl(ptr noundef %i.ab, i32 noundef 123, i64 noundef 772, ptr noundef null) #5
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 500, ptr noundef nonnull @.str.92, i32 noundef %i.ae) #5
  %.not30 = icmp eq i32 %i.af, 0
  br i1 %.not30, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ah = call i64 @SSL_CTX_ctrl(ptr noundef %i.ag, i32 noundef 123, i64 noundef 772, ptr noundef null) #5
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @.str.93, i32 noundef %i.aj) #5
  %.not31 = icmp eq i32 %i.ak, 0
  br i1 %.not31, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ap = call i64 @SSL_CTX_set_options(ptr noundef %i.ao, i64 noundef 4194304) #5 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.b
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.as = call i32 @create_ssl_objects(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null) #5
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = call i32 @test_true(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @.str.94, i32 noundef %i.au) #5
end_hunk_0
