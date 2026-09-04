Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0
@217 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @215, [16 x i8] c"\15\00\00\00\00\00\00\00\B5\00\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtCs5yxAJGbRKSL_4ring4aead9algorithm17CHACHA20_POLY1305 = local_unnamed_addr constant <{ ptr, ptr, ptr, [9 x i8], [7 x i8] }> <{ ptr @_RNvNtNtCs5yxAJGbRKSL_4ring4aead9algorithm22chacha20_poly1305_init, ptr @_RNvNtNtCs5yxAJGbRKSL_4ring4aead9algorithm22chacha20_poly1305_seal, ptr @_RNvNtNtCs5yxAJGbRKSL_4ring4aead9algorithm22chacha20_poly1305_open, [9 x i8] c" \00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @215, [16 x i8] c"\15\00\00\00\00\00\00\00\F7\00\00\00\0E\00\00\00" }>, align 8
@219 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @215, [16 x i8] c"\15\00\00\00\00\00\00\00\E8\00\00\00\0E\00\00\00" }>, align 8
@220 = private unnamed_addr constant [23 x i8] c"src/digest/dynstate.rs\00", align 1
@221 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"\16\00\00\00\00\00\00\00^\00\00\00\0D\00\00\00" }>, align 8
@222 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"\16\00\00\00\00\00\00\00o\00\00\00\0D\00\00\00" }>, align 8
@223 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @220, [16 x i8] c"\16\00\00\00\00\00\00\00\80\00\00\00\0D\00\00\00" }>, align 8
@_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@224 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @44, [16 x i8] c"\22\00\00\00\00\00\00\00M\00\00\00\05\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551910CURVE25519 = constant <{ ptr, ptr, ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551930x25519_check_private_key_bytes, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551927x25519_generate_private_key, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551926x25519_public_from_private, [17 x i8] c" \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00", [7 x i8] undef }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x255196X25519 = local_unnamed_addr constant <{ ptr, ptr }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551910CURVE25519, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255196x2551911x25519_ecdh }>, align 8
@225 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"\1D\00\00\00\00\00\00\00\94\00\00\00\05\00\00\00" }>, align 8
@226 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"\1D\00\00\00\00\00\00\00\95\00\00\00*\00\00\00" }>, align 8
@227 = private unnamed_addr constant [55 x i8] c"assertion failed: q.elem_verify_is_not_zero(&z).is_ok()", align 1
@228 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @138, [16 x i8] c"\1D\00\00\00\00\00\00\00\A7\00\00\00\05\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b4ecdh9ECDH_P256 = local_unnamed_addr constant <{ ptr, ptr }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P256, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b4ecdh9p256_ecdh }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b4ecdh9ECDH_P384 = local_unnamed_addr constant <{ ptr, ptr }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P384, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b4ecdh9p384_ecdh }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P256 = constant <{ ptr, ptr, ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve28p256_check_private_key_bytes, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve25p256_generate_private_key, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve24p256_public_from_private, [17 x i8] c"A\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P384 = constant <{ ptr, ptr, ptr, [17 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve28p384_check_private_key_bytes, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve25p384_generate_private_key, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve24p384_public_from_private, [17 x i8] c"a\00\00\00\00\00\00\000\00\00\00\00\00\00\00\02", [7 x i8] undef }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES = global [4 x i8] zeroinitializer, align 4
@229 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"\1A\00\00\00\00\00\00\00\D2\00\00\00'\00\00\00" }>, align 8
@230 = private unnamed_addr constant [49 x i8] c"assertion failed: padding.iter().all(|&b| b == 0)", align 1
@231 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"\1A\00\00\00\00\00\00\00\D3\00\00\00\05\00\00\00" }>, align 8
@232 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @134, [16 x i8] c"\1A\00\00\00\00\00\00\00\D0\00\00\00\17\00\00\00" }>, align 8
@233 = private unnamed_addr constant [25 x i8] c"src/rsa/padding/pkcs1.rs\00", align 1
@234 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00L\00\00\00\16\00\00\00" }>, align 8
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00P\00\00\00\19\00\00\00" }>, align 8
@236 = private unnamed_addr constant [45 x i8] c"assertion failed: em.len() >= digest_len + 11", align 1
@237 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00P\00\00\00\05\00\00\00" }>, align 8
@238 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00[\00\00\00\10\00\00\00" }>, align 8
@239 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00U\00\00\00\0C\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs116RSA_PKCS1_SHA256 = constant <{ ptr, ptr, [8 x i8] }> <{ ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs130SHA256_PKCS1_DIGESTINFO_PREFIX, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs116RSA_PKCS1_SHA384 = constant <{ ptr, ptr, [8 x i8] }> <{ ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs130SHA384_PKCS1_DIGESTINFO_PREFIX, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs116RSA_PKCS1_SHA512 = constant <{ ptr, ptr, [8 x i8] }> <{ ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA512, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs130SHA512_PKCS1_DIGESTINFO_PREFIX, [8 x i8] c"\13\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs134RSA_PKCS1_SHA1_FOR_LEGACY_USE_ONLY = constant <{ ptr, ptr, [8 x i8] }> <{ ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest24SHA1_FOR_LEGACY_USE_ONLY, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs128SHA1_PKCS1_DIGESTINFO_PREFIX, [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@240 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"#\00\00\00\00\00\00\00\86\00\00\001\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed2551912verification7ED25519 = local_unnamed_addr constant <{}> zeroinitializer, align 1
@241 = private unnamed_addr constant [19 x i8] c"0Q\02\01\010\05\06\03+ep\04\22\04 \81!\00", align 1
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signing14PKCS8_TEMPLATE = internal constant <{ ptr, [40 x i8] }> <{ ptr @241, [40 x i8] c"\13\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610COMMON_OPS = constant <{ ptr, ptr, [241 x i8], [7 x i8] }> <{ ptr @ring_core_0_17_16000__p256_mul_mont, ptr @ring_core_0_17_16000__p256_sqr_mont, [241 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\FF\FF\FF\FF\FB\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FD\FF\FF\FF\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Q%c\FC\C2\CA\B9\F3\84\9E\17\A7\AD\FA\E6\BC\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FC\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\03\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\FC\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DF\BD\C4)b\DF\9C\D8\900\84x\CD\05\F0\AC\D6.!\F7\AB \A2\E54H\87\04\1D\060\DC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610SCALAR_OPS = constant <{ ptr, ptr }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610COMMON_OPS, ptr @ring_core_0_17_16000__p256_scalar_mul_mont }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25615PRIVATE_KEY_OPS = constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610COMMON_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25621p256_elem_inv_squared, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25624p256_point_mul_base_impl, ptr @ring_core_0_17_16000__p256_point_mul, ptr @ring_core_0_17_16000__p256_point_add }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25617PUBLIC_SCALAR_OPS = constant <{ ptr, ptr, ptr, ptr, [48 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25614PUBLIC_KEY_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p2568twin_mul, ptr @_RNvYNCNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25617PUBLIC_SCALAR_OPS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtB8_4elem4ElemNtB8_1NNtNtNtBe_10arithmetic10montgomery9UnencodedENtNtNtBe_3cpu8features8FeaturesEE9call_onceBe_, [48 x i8] c"\AE\DA\9C\03=5F\0C{a\E8XS\05\19C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25618PRIVATE_SCALAR_OPS = constant <{ ptr, ptr, [48 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25610SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25623p256_scalar_inv_to_mont, [48 x i8] c"\A2\EEy\BE\95L$\83\A6o\BDI\9Cy\99FY\ECk+9\B2E( V\D9\F3\94-\E1f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410COMMON_OPS = constant <{ ptr, ptr, [241 x i8], [7 x i8] }> <{ ptr @ring_core_0_17_16000__p384_elem_mul_mont, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38418p384_elem_sqr_mont, [241 x i8] c"\FF\FF\FF\FF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\01\00\00\00\FE\FF\FF\FF\00\00\00\00\02\00\00\00\00\00\00\00\FE\FF\FF\FF\00\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00s)\C5\CCj\19\EC\ECz\A7\B0H\B2\0D\1AX\DF-7\F4\81Mc\C7\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC\FF\FF\FF\03\00\00\00\00\00\00\00\FC\FF\FF\FF\FB\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\CC-A\9Dq\88\11\08\EC2Lz\D8\AD)\F7.\02 \19\9B \F2w\E2\8A\93\94\EEK7\E3\94 \02\1F\F4!+\B6\F9\BFO`K\11\08\CD\01", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410SCALAR_OPS = constant <{ ptr, ptr }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410COMMON_OPS, ptr @ring_core_0_17_16000__p384_scalar_mul_mont }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38415PRIVATE_KEY_OPS = constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410COMMON_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38421p384_elem_inv_squared, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38424p384_point_mul_base_impl, ptr @ring_core_0_17_16000__p384_point_mul, ptr @ring_core_0_17_16000__p384_point_add }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPS = constant <{ ptr, ptr, ptr, ptr, [48 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38414PUBLIC_KEY_OPS, ptr @_RNvYNCNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtB8_4elem4ElemNtB8_1NNtNtNtBe_10arithmetic10montgomery9UnencodedEB1W_RTIB1Y_NtB8_1QNtB2o_1REB3a_ENtNtNtBe_3cpu8features8FeaturesEE9call_onceBe_, ptr @_RNvYNCNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPSs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtB8_4elem4ElemNtB8_1NNtNtNtBe_10arithmetic10montgomery9UnencodedENtNtNtBe_3cpu8features8FeaturesEE9call_onceBe_, [48 x i8] c"\8C\D6:3\96\E6\13\13\85XO\B7L\F2\E5\A7\1F\D2\C8\0B~\B2\9C8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38418PRIVATE_SCALAR_OPS = constant <{ ptr, ptr, [48 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38410SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38423p384_scalar_inv_to_mont, [48 x i8] c"\A9\09\B4\19$\9B1-\19\A4\1A\DF\E5\81=\FFG)\B8\FC:H>\BC\C5\1C\ABJ\17I\0D\D4\95h&(z[\B0?!\BF9+\01\EE\84\0C" }>, align 8
@242 = private unnamed_addr constant [27 x i8] c"src/ec/suite_b/ops/p384.rs\00", align 1
@243 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @242, [16 x i8] c"\1A\00\00\00\00\00\00\00%\01\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p3849GENERATOR = internal unnamed_addr constant [96 x i8] c"(\B5\C0Ifu\D0=8\CE\D6\A0\E2x\E3 nM\1BT\FC:\9C\87\FF\0E\A3Y\84\86Td+\DENa#\F7/\81\13\15\9E)\C2\AD:M\FE\A4\03K\AD=\04#\AC\A9\B4{\BF\A8\BF\A1P\B0\83.V\E7\AD\8B\D9\FF\F4h\19R\C3\C6@\A8i9&\02\80\DD\E9\C5\15Z\C2\ABx+", align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification22ECDSA_P256_SHA256_ASN1 = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25617PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification13split_rs_asn1, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification22ECDSA_P256_SHA384_ASN1 = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25617PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification13split_rs_asn1, [1 x i8] c"\02", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification22ECDSA_P384_SHA256_ASN1 = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification13split_rs_asn1, [1 x i8] c"\03", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification22ECDSA_P384_SHA384_ASN1 = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification13split_rs_asn1, [1 x i8] c"\04", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification23ECDSA_P256_SHA256_FIXED = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25617PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification14split_rs_fixed, [1 x i8] c"\01", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification23ECDSA_P384_SHA384_FIXED = local_unnamed_addr constant <{ ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38417PUBLIC_SCALAR_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verification14split_rs_fixed, [1 x i8] c"\05", [7 x i8] undef }>, align 8
@244 = private unnamed_addr constant [38 x i8] c"src/ec/suite_b/ecdsa/digest_scalar.rs\00", align 1
@245 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"%\00\00\00\00\00\00\005\00\00\00\0A\00\00\00" }>, align 8
@246 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\99\01\00\00\05\00\00\00" }>, align 8
@247 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\9B\01\00\00=\00\00\00" }>, align 8
@248 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\9A\01\00\008\00\00\00" }>, align 8
@249 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00k\01\00\00\1D\00\00\00" }>, align 8
@250 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00n\01\00\00\1B\00\00\00" }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing30ECDSA_P256_SHA256_ASN1_SIGNING = local_unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25618PRIVATE_SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25615PRIVATE_KEY_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P256_PKCS8_V1_TEMPLATE, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing14format_rs_asn1, [1 x i8] c"\02", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing30ECDSA_P384_SHA384_ASN1_SIGNING = local_unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38418PRIVATE_SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38415PRIVATE_KEY_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P384_PKCS8_V1_TEMPLATE, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing14format_rs_asn1, [1 x i8] c"\03", [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing31ECDSA_P256_SHA256_FIXED_SIGNING = local_unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25618PRIVATE_SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25615PRIVATE_KEY_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA256, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P256_PKCS8_V1_TEMPLATE, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing15format_rs_fixed, [1 x i8] zeroinitializer, [7 x i8] undef }>, align 8
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing31ECDSA_P384_SHA384_FIXED_SIGNING = local_unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr, ptr, [1 x i8], [7 x i8] }> <{ ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5curve4P384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38418PRIVATE_SCALAR_OPS, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38415PRIVATE_KEY_OPS, ptr @_RNvNtCs5yxAJGbRKSL_4ring6digest6SHA384, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P384_PKCS8_V1_TEMPLATE, ptr @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing15format_rs_fixed, [1 x i8] c"\01", [7 x i8] undef }>, align 8
@251 = private unnamed_addr constant [41 x i8] c"0\81\87\02\01\000\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\04m0k\02\01\01\04 \A1D\03B\00", align 1
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P256_PKCS8_V1_TEMPLATE = constant <{ ptr, [40 x i8] }> <{ ptr @251, [40 x i8] c")\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00$\00\00\00\00\00\00\00" }>, align 8
@252 = private unnamed_addr constant [40 x i8] c"0\81\B6\02\01\000\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\22\04\81\9E0\81\9B\02\01\01\040\A1d\03b\00", align 1
@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing36EC_PUBLIC_KEY_P384_PKCS8_V1_TEMPLATE = constant <{ ptr, [40 x i8] }> <{ ptr @252, [40 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00#\00\00\00\00\00\00\00" }>, align 8
@_RNvNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p38423p384_scalar_inv_to_mont17REMAINING_WINDOWS = internal unnamed_addr constant [66 x i8] c"\06\09\05\08\07\05\07\08\09\02\04\05\09\08\04\03\06\08\04\04\03\02\05\04\0A\05\0A\08\06\07\06\03\07\04\07\01\05\02\04\02\03\01\04\02\06\07\05\08\0A\07\05\05\05\04\07\07\01\00\06\01\05\01\07\06\04\00", align 1
@253 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\81\01\00\00>\00\00\00" }>, align 8
@254 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\85\01\00\00\0D\00\00\00" }>, align 8
@255 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\8B\01\00\00\09\00\00\00" }>, align 8
@256 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\91\01\00\00\0D\00\00\00" }>, align 8
@257 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\94\01\00\00\11\00\00\00" }>, align 8
@258 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00\89\01\00\00\1B\00\00\00" }>, align 8
@259 = private unnamed_addr constant [10 x i8] c"Curve25519", align 1
@260 = private unnamed_addr constant [4 x i8] c"P256", align 1
@261 = private unnamed_addr constant [4 x i8] c"P384", align 1
@262 = private unnamed_addr constant [1 x i8] c"\22", align 1
@263 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @212, [16 x i8] c"\10\00\00\00\00\00\00\00)\00\00\00\1D\00\00\00" }>, align 8
@264 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @212, [16 x i8] c"\10\00\00\00\00\00\00\00*\00\00\00)\00\00\00" }>, align 8
@265 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @212, [16 x i8] c"\10\00\00\00\00\00\00\00(\00\00\00'\00\00\00" }>, align 8
@266 = private unnamed_addr constant [24 x i8] c"ring::error::Unspecified", align 1
@267 = private unnamed_addr constant [24 x i8] c"ring::signature::ED25519", align 1
@268 = private unnamed_addr constant [3 x i8] c"Key", align 1
@269 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@270 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @159, [16 x i8] c"\0E\00\00\00\00\00\00\00\\\00\00\00\14\00\00\00" }>, align 8
@271 = private unnamed_addr constant [24 x i8] c"src/aead/unbound_key.rs\00", align 1
@272 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @271, [16 x i8] c"\17\00\00\00\00\00\00\00E\00\00\00\1D\00\00\00" }>, align 8
@273 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @271, [16 x i8] c"\17\00\00\00\00\00\00\00G\00\00\00M\00\00\00" }>, align 8
@274 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @271, [16 x i8] c"\17\00\00\00\00\00\00\00C\00\00\00'\00\00\00" }>, align 8
@275 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"\0F\00\00\00\00\00\00\00\1D\02\00\00\19\00\00\00" }>, align 8
@276 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"\0F\00\00\00\00\00\00\00\1E\02\00\00\12\00\00\00" }>, align 8
@277 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"\16\00\00\00\00\00\00\00\92\00\00\00\19\00\00\00" }>, align 8
@278 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @233, [16 x i8] c"\18\00\00\00\00\00\00\00<\00\00\00)\00\00\00" }>, align 8
@279 = private unnamed_addr constant [9 x i8] c"PublicKey", align 1
@280 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"\0F\00\00\00\00\00\00\00*\02\00\00\0D\00\00\00" }>, align 8
@281 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBA_ }>, align 8
@282 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRShNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring }>, align 8
@283 = private unnamed_addr constant [5 x i8] c"PKCS1", align 1
@284 = private unnamed_addr constant [10 x i8] c"digest_alg", align 1
@285 = private unnamed_addr constant [17 x i8] c"digestinfo_prefix", align 1
@286 = private unnamed_addr constant [14 x i8] c"Ed25519KeyPair", align 1
@287 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@288 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@289 = private unnamed_addr constant [22 x i8] c"ECDSA_P256_SHA256_ASN1", align 1
@290 = private unnamed_addr constant [23 x i8] c"ECDSA_P256_SHA256_FIXED", align 1
@291 = private unnamed_addr constant [22 x i8] c"ECDSA_P256_SHA384_ASN1", align 1
@292 = private unnamed_addr constant [22 x i8] c"ECDSA_P384_SHA256_ASN1", align 1
@293 = private unnamed_addr constant [22 x i8] c"ECDSA_P384_SHA384_ASN1", align 1
@294 = private unnamed_addr constant [23 x i8] c"ECDSA_P384_SHA384_FIXED", align 1
@295 = private unnamed_addr constant [11 x i8] c"NonceRandom", align 1
@296 = private unnamed_addr constant [4 x i8] c"\C0\01:\00", align 1
@297 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring9agreement9AlgorithmNtB6_5Debug3fmtBA_ }>, align 8
@298 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@299 = private unnamed_addr constant [17 x i8] c"src/io/writer.rs\00", align 1
@300 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @299, [16 x i8] c"\10\00\00\00\00\00\00\00D\00\00\00\09\00\00\00" }>, align 8
@301 = private unnamed_addr constant [11 x i8] c"AES_128_GCM", align 1
@302 = private unnamed_addr constant [11 x i8] c"AES_256_GCM", align 1
@303 = private unnamed_addr constant [17 x i8] c"CHACHA20_POLY1305", align 1
@304 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRRNtNtCs5yxAJGbRKSL_4ring6digest9AlgorithmNtB6_5Debug3fmtBB_ }>, align 8
@305 = private unnamed_addr constant [3 x i8] c"PSS", align 1
@306 = private unnamed_addr constant [57 x i8] c"assertion failed: key.len() <= digest_alg.block_len() / 2", align 1
@307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00(\01\00\00\09\00\00\00" }>, align 8
@308 = private unnamed_addr constant [42 x i8] c"assertion failed: rand.len() >= dest.len()", align 1
@309 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\00,\01\00\00\0D\00\00\00" }>, align 8
@310 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @150, [16 x i8] c"\1F\00\00\00\00\00\00\007\01\00\00\0E\00\00\00" }>, align 8
@311 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"\0B\00\00\00\00\00\00\00*\01\00\00K\00\00\00" }>, align 8
@312 = private unnamed_addr constant [10 x i8] c"RsaKeyPair", align 1
@313 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@314 = private unnamed_addr constant [6 x i8] c"public", align 1
@315 = private unnamed_addr constant [11 x i8] c"Unspecified", align 1
@316 = private unnamed_addr constant [7 x i8] c"Context", align 1
@317 = private unnamed_addr constant [7 x i8] c"AES_128", align 1
@318 = private unnamed_addr constant [7 x i8] c"AES_256", align 1
@319 = private unnamed_addr constant [8 x i8] c"CHACHA20", align 1
@320 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\18\00\00\00\00\00\00\00\01\03\00\00>\00\00\00" }>, align 8
@321 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\18\00\00\00\00\00\00\005\03\00\005\00\00\00" }>, align 8
@322 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\18\00\00\00\00\00\00\00\FD\02\00\00\09\00\00\00" }>, align 8
@323 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring }>, align 8
@324 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@325 = private unnamed_addr constant [9 x i8] c"Algorithm", align 1
@326 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_ }>, align 8
@327 = private unnamed_addr constant [5 x i8] c"curve", align 1
@328 = private unnamed_addr constant [19 x i8] c"EphemeralPrivateKey", align 1
@329 = private unnamed_addr constant [17 x i8] c"src/signature.rs\00", align 1
@330 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @329, [16 x i8] c"\10\00\00\00\00\00\00\00E\01\00\00\14\00\00\00" }>, align 8
@331 = private unnamed_addr constant [10 x i8] c"UnboundKey", align 1
@332 = private unnamed_addr constant [11 x i8] c"LessSafeKey", align 1
@333 = private unnamed_addr constant [31 x i8] c"src/polyfill/array_flat_map.rs\00", align 1
@334 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @333, [16 x i8] c"\1E\00\00\00\00\00\00\00)\00\00\00\0D\00\00\00" }>, align 8
@335 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @80, [16 x i8] c"\0F\00\00\00\00\00\00\00\01\02\00\00\12\00\00\00" }>, align 8
@336 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"[\00\00\00\00\00\00\00R\00\00\00\09\00\00\00" }>, align 8
@337 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"\16\00\00\00\00\00\00\008\00\00\00\0D\00\00\00" }>, align 8
@338 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"\16\00\00\00\00\00\00\00=\00\00\00\09\00\00\00" }>, align 8
@339 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"\16\00\00\00\00\00\00\00^\00\00\00,\00\00\00" }>, align 8
@340 = private unnamed_addr constant [31 x i8] c"ECDSA_P256_SHA256_FIXED_SIGNING", align 1
@341 = private unnamed_addr constant [31 x i8] c"ECDSA_P384_SHA384_FIXED_SIGNING", align 1
@342 = private unnamed_addr constant [30 x i8] c"ECDSA_P256_SHA256_ASN1_SIGNING", align 1
@343 = private unnamed_addr constant [30 x i8] c"ECDSA_P384_SHA384_ASN1_SIGNING", align 1
@344 = private unnamed_addr constant [12 x i8] c"EcdsaKeyPair", align 1
@345 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00p\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsf_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_9PublicKeyNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@346 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@347 = private unnamed_addr constant [4 x i8] c"kind", align 1
@348 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@349 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@350 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@351 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@352 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@353 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@354 = private unnamed_addr constant [2 x i8] c"()", align 1
@355 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring }>, align 8
@356 = private unnamed_addr constant [17 x i8] c"TryFromSliceError", align 1
@357 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8
@switch.table._RNvXs1_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verificationNtB5_26EcdsaVerificationAlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [6 x i8] c"\16\17\16\16\16\17", align 8
@switch.table._RNvXs1_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verificationNtB5_26EcdsaVerificationAlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.550 = private unnamed_addr constant [6 x ptr] [ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294], align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_ = private unnamed_addr constant [3 x i8] c"\0A\04\04", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_.551 = private unnamed_addr constant [3 x ptr] [ptr @259, ptr @260, ptr @261], align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5yxAJGbRKSL_4ring.553 = private unnamed_addr constant [6 x ptr] [ptr @348, ptr @349, ptr @350, ptr @351, ptr @352, ptr @353], align 8
@switch.table._RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\0B\0B\11", align 8
@switch.table._RNvXs2_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.556 = private unnamed_addr constant [3 x ptr] [ptr @301, ptr @302, ptr @303], align 8
@switch.table._RNvXs4_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\07\07\08", align 8
@switch.table._RNvXs4_NtNtCs5yxAJGbRKSL_4ring4aead4quicNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.557 = private unnamed_addr constant [3 x ptr] [ptr @317, ptr @318, ptr @319], align 8
@switch.table._RNvXsa_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_21EcdsaSigningAlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\1F\1F\1E\1E", align 8
@switch.table._RNvXsa_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_21EcdsaSigningAlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.558 = private unnamed_addr constant [4 x ptr] [ptr @340, ptr @341, ptr @342, ptr @343], align 8
@switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt = private unnamed_addr constant [5 x i8] c"\04\06\06\06\0A", align 8
@switch.table._RNvXsh_NtCs5yxAJGbRKSL_4ring6digestNtB5_9AlgorithmNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.559 = private unnamed_addr constant [5 x ptr] [ptr @86, ptr @87, ptr @88, ptr @89, ptr @90], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !83, !noundef !15 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !83, !noundef !15
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !83, !noundef !15
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !83, !noundef !15
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !84, !noundef !15
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !84, !noundef !15
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !85, !noundef !15 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !85, !noundef !15 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !85, !noundef !15 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !85, !noundef !15
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !86, !noundef !15
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !86, !noundef !15
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs5yxAJGbRKSL_4ring.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yxAJGbRKSL_4ring.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yxAJGbRKSL_4ring.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB3_7KeyPair15from_componentsRShB16_EB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val14 = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load i64, ptr %i.b, align 8, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val13 = load i64, ptr %i.d, align 8, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val10 = load ptr, ptr %i.e, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val11 = load i64, ptr %i.f, align 8, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val8 = load ptr, ptr %i.g, align 8, !nonnull !15, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val9 = load i64, ptr %i.h, align 8, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !15, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val7 = load i64, ptr %i.j, align 8, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4 = load ptr, ptr %i.k, align 8, !nonnull !15, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val5 = load i64, ptr %i.l, align 8, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val2 = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3 = load i64, ptr %i.n, align 8, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val = load ptr, ptr %i.o, align 8, !nonnull !15, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val1 = load i64, ptr %i.p, align 8, !noundef !15
  store ptr %.val14, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val15, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.val12, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val13, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.val10, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val11, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.val8, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.val9, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.val6, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %.val7, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %.val4, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.val5, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %.val2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %.val3, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %.val, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %.val1, ptr %i.ab, align 8
  %i.ac = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() unnamed_addr #2 {
bb.a:
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 0, i32 0) #36, !noalias !91, !srcloc !92 ; 4 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 1 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 1, i32 0) #36, !noalias !91, !srcloc !92
  %i.d = extractvalue { i32, i32, i32, i32 } %i.c, 2 ; 3 uses
  %i.e = icmp ugt i32 %i.b, 6
  br i1 %i.e, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 7, i32 0) #36, !noalias !91, !srcloc !92 ; 2 uses
  %i.g = extractvalue { i32, i32, i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32, i32, i32 } %i.f, 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %.sroa.014.0.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.015.0.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = and i32 %i.d, 134217728
  %.not19.i.i = icmp eq i32 %i.i, 0
  br i1 %.not19.i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.j = tail call fastcc noundef i64 @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x865xsave7__xgetbv() #40
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i

_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i: ; preds = %bb.d, %.thread.i.i, %bb.a
  %.sroa.015.026.i.i = phi i32 [ %.sroa.015.0.i.i, %bb.d ], [ %.sroa.015.0.i.i, %.thread.i.i ], [ 0, %bb.a ]
  %.sroa.014.025.i.i = phi i32 [ %.sroa.014.0.i.i, %bb.d ], [ %.sroa.014.0.i.i, %.thread.i.i ], [ 0, %bb.a ] ; 5 uses
  %.sroa.010.01824.i.i = phi i32 [ %i.d, %bb.d ], [ %i.d, %.thread.i.i ], [ 0, %bb.a ] ; 8 uses
  %.sroa.02.0.i.i = phi i64 [ %i.j, %bb.d ], [ 0, %.thread.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.a, 0
  %i.l = icmp ne i32 %i.k, 1970169159
  %i.m = extractvalue { i32, i32, i32, i32 } %i.a, 3
  %i.n = icmp ne i32 %i.m, 1231384169
  %or.cond.i.not8.i = select i1 %i.l, i1 true, i1 %i.n
  %i.o = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.p = icmp ne i32 %i.o, 1818588270
  %narrow.i.not.i = select i1 %or.cond.i.not8.i, i1 true, i1 %i.p ; 2 uses
  %i.q = and i32 %.sroa.010.01824.i.i, 512
  %.not.i2.i = icmp eq i32 %i.q, 0
  %i.r = and i32 %.sroa.010.01824.i.i, 524288
  %.not50.i.i = icmp eq i32 %i.r, 0
  %spec.select.i.i = select i1 %.not50.i.i, i32 4, i32 12
  %.sroa.0.0.i3.i = select i1 %.not.i2.i, i32 0, i32 %spec.select.i.i ; 4 uses
  %i.s = and i64 %.sroa.02.0.i.i, 4
  %.not51.i.i = icmp eq i64 %i.s, 0
  br i1 %.not51.i.i, label %.thread.i5.i, label %bb.e

.thread.i5.i:                                     ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i
  %i.t = and i32 %.sroa.010.01824.i.i, 268435456
  %i.u = icmp ne i32 %i.t, 0
  br label %.thread45.i.i

bb.e:                                             ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring3cpu6x86_649cpuid_all.exit.i
  %i.v = and i64 %.sroa.02.0.i.i, 2
  %i.w = icmp ne i64 %i.v, 0
  %i.x = and i32 %.sroa.010.01824.i.i, 268435456
  %i.y = icmp ne i32 %i.x, 0                      ; 2 uses
  %spec.select40.i.i = and i1 %i.y, %i.w
  br i1 %spec.select40.i.i, label %bb.f, label %.thread45.i.i

.thread45.i.i:                                    ; preds = %bb.g, %bb.f, %bb.e, %.thread.i5.i
  %.sroa.025.04349.i.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %.thread.i5.i ], [ false, %bb.e ]
  %.sroa.021.14448.i.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.u, %.thread.i5.i ], [ %i.y, %bb.e ]
  %.sroa.0.2.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.aa, %bb.f ], [ %.sroa.0.0.i3.i, %.thread.i5.i ], [ %.sroa.0.0.i3.i, %bb.e ] ; 4 uses
  %i.z = and i32 %.sroa.010.01824.i.i, 2
  %.not53.i.i = icmp eq i32 %i.z, 0
  br i1 %.not53.i.i, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = or disjoint i32 %.sroa.0.0.i3.i, 64
  %i.ab = and i32 %.sroa.014.025.i.i, 32
  %.not52.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not52.i.i, label %.thread45.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = or disjoint i32 %.sroa.0.0.i3.i, 320
  store atomic i32 1, ptr @ring_core_0_17_16000__avx2_available monotonic, align 4, !noalias !93
  br label %.thread45.i.i

bb.h:                                             ; preds = %.thread45.i.i
  %i.ad = lshr i32 %.sroa.010.01824.i.i, 20
  %i.ae = and i32 %i.ad, 32
  %spec.select34.i.i = or i32 %.sroa.0.2.i.i, %i.ae
  br label %bb.m

bb.i:                                             ; preds = %.thread45.i.i
  %i.af = and i32 %.sroa.010.01824.i.i, 33554432
  %.not55.i.i = icmp eq i32 %i.af, 0
  br i1 %.not55.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = or i32 %.sroa.0.2.i.i, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ah = or i32 %.sroa.0.2.i.i, 34               ; 2 uses
  br i1 %.sroa.025.04349.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = and i32 %.sroa.015.026.i.i, 1536
  %or.cond.i4.i = icmp eq i32 %i.ai, 1536
  %i.aj = or i32 %.sroa.0.2.i.i, 35
  %spec.select35.i.i = select i1 %or.cond.i4.i, i32 %i.aj, i32 %i.ah
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0.5.i.i = phi i32 [ %spec.select35.i.i, %bb.l ], [ %spec.select34.i.i, %bb.h ], [ %i.ah, %bb.k ], [ %i.ag, %bb.j ]
end_hunk_0
