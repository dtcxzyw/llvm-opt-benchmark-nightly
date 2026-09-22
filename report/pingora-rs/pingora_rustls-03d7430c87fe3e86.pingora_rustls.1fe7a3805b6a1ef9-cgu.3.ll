Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_rustls-03d7430c87fe3e86.pingora_rustls.1fe7a3805b6a1ef9-cgu.3?download=true
inline.NumInlined: 140
inline.NumDeleted: 95
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [8 x i8] c"\C3 \00\00i\02\00\00", align 1
@1 = private unnamed_addr constant [41 x i8] c"Certificate in pem file could not be read", align 1
@2 = private unnamed_addr constant [36 x i8] c"Failed to load certificate from file", align 1
@3 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs67xrmJ0qrwH_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@5 = private unnamed_addr constant [16 x i8] c"UnknownExtension", align 1
@6 = private unnamed_addr constant [3 x i8] c"typ", align 1
@7 = private unnamed_addr constant [7 x i8] c"payload", align 1
@8 = private unnamed_addr constant [3 x i8] c"DHE", align 1
@9 = private unnamed_addr constant [5 x i8] c"ECDHE", align 1
@10 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@11 = private unnamed_addr constant [3 x i8] c"V18", align 1
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs3k_NtNtCs67xrmJ0qrwH_6rustls4msgs5enumsNtB6_10EchVersionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@14 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@15 = private unnamed_addr constant [7 x i8] c"version", align 1
@16 = private unnamed_addr constant [8 x i8] c"contents", align 1
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2W_NtNtCs67xrmJ0qrwH_6rustls4msgs5enumsNtB6_7HpkeKdfNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@20 = private unnamed_addr constant [24 x i8] c"HpkeSymmetricCipherSuite", align 1
@21 = private unnamed_addr constant [6 x i8] c"kdf_id", align 1
@22 = private unnamed_addr constant [7 x i8] c"aead_id", align 1
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt }>, align 8
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs2L_NtNtCs67xrmJ0qrwH_6rustls4msgs5enumsNtB6_7HpkeKemNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@25 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs67xrmJ0qrwH_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECs2JPny71o0qX_14pingora_rustls, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@27 = private unnamed_addr constant [13 x i8] c"HpkeKeyConfig", align 1
@28 = private unnamed_addr constant [9 x i8] c"config_id", align 1
@29 = private unnamed_addr constant [6 x i8] c"kem_id", align 1
@30 = private unnamed_addr constant [10 x i8] c"public_key", align 1
@31 = private unnamed_addr constant [23 x i8] c"symmetric_cipher_suites", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake13HpkeKeyConfigECs2JPny71o0qX_14pingora_rustls, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4s_NtNtCs67xrmJ0qrwH_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdzNJuPjuSXS_16rustls_pki_types11server_name7DnsNameECs2JPny71o0qX_14pingora_rustls, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsH_NtCsdzNJuPjuSXS_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake18EchConfigExtensionENtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@35 = private unnamed_addr constant [17 x i8] c"EchConfigContents", align 1
@36 = private unnamed_addr constant [10 x i8] c"key_config", align 1
@37 = private unnamed_addr constant [19 x i8] c"maximum_name_length", align 1
@38 = private unnamed_addr constant [11 x i8] c"public_name", align 1
@39 = private unnamed_addr constant [10 x i8] c"extensions", align 1
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdzNJuPjuSXS_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@41 = private unnamed_addr constant [7 x i8] c"DnsName", align 1
@42 = private unnamed_addr constant [4 x i8] c"None", align 1
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadENtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls }>, align 8
@44 = private unnamed_addr constant [4 x i8] c"Some", align 1

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 36, 42) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtB7_2io5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB22_4SyncEL_EE4intoCs2JPny71o0qX_14pingora_rustls.exit:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = tail call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCs2JPny71o0qX_14pingora_rustls(ptr noundef nonnull %3) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %4 = extractvalue { ptr, ptr } %i.c, 1          ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !noalias !22, !nonnull !4
  invoke void %i.f(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.d)
          to label %bb.a unwind label %bb.g, !noalias !22

bb.a:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtB7_2io5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB22_4SyncEL_EE4intoCs2JPny71o0qX_14pingora_rustls.exit
  %i.g = load i128, ptr %i.a, align 16, !noalias !22, !noundef !4
  %i.h = icmp eq i128 %i.g, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !noalias !22, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i8, ptr %i.j, align 8, !range !23, !noalias !22, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.1.i = phi i8 [ %i.k, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.m, align 1, !noalias !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.1.i, ptr %i.n, align 8, !noalias !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.o, align 8, !noalias !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %4, ptr %i.p, align 8, !noalias !22
  store i64 0, ptr %i.b, align 8, !noalias !25
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.6.0..sroa_idx11, align 8, !noalias !25
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.8.0..sroa_idx13, align 8, !noalias !25
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !26
  %i.q = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #17, !noalias !26 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.i, !prof !27

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #18
          to label %.noexc.i unwind label %bb.e, !noalias !22

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #19
          to label %.thread unwind label %bb.f, !noalias !22

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !22
  unreachable

bb.g:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtB7_2io5error5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB22_4SyncEL_EE4intoCs2JPny71o0qX_14pingora_rustls.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2JPny71o0qX_14pingora_rustls(ptr nonnull %i.d, ptr nonnull %4) #19
          to label %.thread unwind label %bb.h, !noalias !22

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !22
  unreachable

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22
  ret ptr %i.q

.thread:                                          ; preds = %bb.g, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.u, %bb.g ]
  resume { ptr, i32 } %.pn20
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECs2JPny71o0qX_14pingora_rustls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #17
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2JPny71o0qX_14pingora_rustls.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls.exit5.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #17
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls.exit5.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls.exit5.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2JPny71o0qX_14pingora_rustls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !30, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !30, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #17, !noalias !30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECs2JPny71o0qX_14pingora_rustls.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !5, !alias.scope !37, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val2, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 2) #17, !noalias !38
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !5, !alias.scope !37, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 2) #17, !noalias !39
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteEECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBa_7sources7from_fn6FromFnNCNvCsfup1golxiVd_14rustls_pemfile5certs0ENCB20_s_0ENCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_ca0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEB3G_8try_folduNCINvNvB3G_12try_for_each4callNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerINtNtNtBc_3ops12control_flow11ControlFlowB7c_ENcNtB80_5Break0E0B80_E0IB81_B80_EEB2S_:bb.a

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i.i unwind label %.body.i.i.i.i.i, !noalias !219

.body.i.i.i.i.i:                                  ; preds = %bb.ae
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 72, i64 noundef 8) #17, !noalias !219
  store ptr %i.z, ptr %3, align 8, !noalias !219
  br label %common.resume.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i.i: ; preds = %bb.ae
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 72, i64 noundef 8) #17, !noalias !219
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.ac = ptrtoint ptr %.sroa.9.0.copyload3.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  br label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i.i, %bb.ad
  store ptr %i.z, ptr %3, align 8, !noalias !219
  br label %bb.ah

bb.ag:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !203
  store i64 -3, ptr %0, align 8, !alias.scope !220, !noalias !221
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources7from_fn6FromFnNCNvCsfup1golxiVd_14rustls_pemfile5certs0ENCB1K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtNtBc_6result6ResultNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerNtNtNtBc_2io5error5ErrorEIB3J_B44_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB6E_B44_EENCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_ca0NCINvXB8_INtB8_12GenericShuntINtB3l_3MapBV_B7t_EIB3J_zB5q_EEB2y_8try_folduNCINvNvB2y_12try_for_each4callB44_B7i_NcNtB7i_5Break0E0B7i_E0E0B6D_EB7x_.exit

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i, %bb.af
  %.sroa.912.0.i.i = phi i64 [ %.sroa.8.0.copyload5.i.i.i, %bb.af ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i ]
  %.sroa.711.0.i.i = phi ptr [ %.sroa.7.0.copyload3.i.i.i, %bb.af ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i ]
  %.sroa.09.0.i.i = phi i64 [ %i.ac, %bb.af ], [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i.i ]
  store i64 %.sroa.09.0.i.i, ptr %0, align 8, !alias.scope !222, !noalias !221
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.711.0.i.i, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !alias.scope !222, !noalias !221
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.912.0.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !alias.scope !222, !noalias !221
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources7from_fn6FromFnNCNvCsfup1golxiVd_14rustls_pemfile5certs0ENCB1K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtNtBc_6result6ResultNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerNtNtNtBc_2io5error5ErrorEIB3J_B44_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB6E_B44_EENCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_ca0NCINvXB8_INtB8_12GenericShuntINtB3l_3MapBV_B7t_EIB3J_zB5q_EEB2y_8try_folduNCINvNvB2y_12try_for_each4callB44_B7i_NcNtB7i_5Break0E0B7i_E0E0B6D_EB7x_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBa_7sources7from_fn6FromFnNCNvCsfup1golxiVd_14rustls_pemfile5certs0ENCB1K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldINtNtBc_6result6ResultNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerNtNtNtBc_2io5error5ErrorEIB3J_B44_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB6E_B44_EENCNvCs2JPny71o0qX_14pingora_rustls16load_pem_file_ca0NCINvXB8_INtB8_12GenericShuntINtB3l_3MapBV_B7t_EIB3J_zB5q_EEB2y_8try_folduNCINvNvB2y_12try_for_each4callB44_B7i_NcNtB7i_5Break0E0B7i_E0E0B6D_EB7x_.exit: ; preds = %bb.ag, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources7from_fn6FromFnNCNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_all0ENCINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEB3g_8try_folduNCINvNvB3g_12try_for_each4callNtB1y_4ItemINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB6X_5Break0E0B6X_E0IB6Y_B6X_EEB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 4 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246
  call void @_RNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_one(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.val1), !noalias !246
  %i.d = load i64, ptr %i.b, align 8, !range !12, !noalias !246, !noundef !4 ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 -2, label %bb.b
    i64 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !246, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !247
  store i16 6, ptr %i.a, align 8, !noalias !247
  %i.g = call fastcc noundef nonnull align 8 ptr @_RINvMs2_CsfsXztIhCltD_13pingora_errorNtB6_5Error7becauseReNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 41, ptr noundef nonnull %i.f) #22, !noalias !248 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !249, !align !13, !noundef !4 ; 4 uses
  %i.h = icmp eq ptr %.val.i.i.i, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i unwind label %.body.i.i.i, !noalias !249

.body.i.i.i:                                      ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 72, i64 noundef 8) #17, !noalias !249
  store ptr %i.g, ptr %3, align 8, !noalias !249
  resume { ptr, i32 } %i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 72, i64 noundef 8) #17, !noalias !249
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i

bb.d:                                             ; preds = %bb.a
  %.sroa.9.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload5.i = load ptr, ptr %.sroa.9.0..sroa_idx4.i, align 8, !noalias !245
  %.sroa.10.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx6.i, i64 16, i1 false), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i.i, %bb.b
  store ptr %i.g, ptr %3, align 8, !noalias !249
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246
  store i64 -2, ptr %0, align 8, !alias.scope !250
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldINtNtBc_6result6ResultNtB11_4ItemNtNtNtBc_2io5error5ErrorEIB3c_B3x_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_B3x_EENCINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReE0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B6j_EIB3c_zB4g_EEB1Q_8try_folduNCINvNvB1Q_12try_for_each4callB3x_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB6o_.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i, %bb.d
  %.sroa.613.0.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i ], [ %.sroa.9.0.copyload5.i, %bb.d ]
  %.sroa.011.0.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECs2JPny71o0qX_14pingora_rustls.exit.i.i.i ], [ %i.d, %bb.d ]
  store i64 %.sroa.011.0.i, ptr %0, align 8, !alias.scope !251
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.613.0.i, ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !251
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false)
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldINtNtBc_6result6ResultNtB11_4ItemNtNtNtBc_2io5error5ErrorEIB3c_B3x_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_B3x_EENCINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReE0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B6j_EIB3c_zB4g_EEB1Q_8try_folduNCINvNvB1Q_12try_for_each4callB3x_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB6o_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter7sources7from_fn6FromFnNCNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_all0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldINtNtBc_6result6ResultNtB11_4ItemNtNtNtBc_2io5error5ErrorEIB3c_B3x_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEuINtNtNtBc_3ops12control_flow11ControlFlowIB5u_B3x_EENCINvCs2JPny71o0qX_14pingora_rustls13load_pem_fileReE0NCINvXB2F_INtB2F_12GenericShuntINtB2D_3MapB3_B6j_EIB3c_zB4g_EEB1Q_8try_folduNCINvNvB1Q_12try_for_each4callB3x_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB6o_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !5     ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 2 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %i.c, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 range(i64 0, -1) %i.h)
  %i.i = icmp eq i64 %4, 1
  %i.j = icmp ult i64 %4, 1025
  %..i = select i1 %i.j, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.i, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !254
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !254
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !254
  %i.l = load i64, ptr %i.a, align 8, !range !10, !noalias !254, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2JPny71o0qX_14pingora_rustls.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8, !range !11, !noalias !254, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  br label %bb.f

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !254, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !254
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !254
  %i.s = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !254
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2JPny71o0qX_14pingora_rustls.exit, %bb.c, %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ %i.q, %bb.e ], [ undef, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2JPny71o0qX_14pingora_rustls.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.o, %bb.e ], [ -1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs2JPny71o0qX_14pingora_rustls.exit ], [ -1, %bb.a ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2JPny71o0qX_14pingora_rustls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #17
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #17
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JPny71o0qX_14pingora_rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !14
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdzNJuPjuSXS_16rustls_pki_types14CertificateDerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs67xrmJ0qrwH_6rustls5enums11ContentTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs67xrmJ0qrwH_6rustls5enums13HandshakeTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs67xrmJ0qrwH_6rustls5error18ExtendedKeyPurposeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls:bb.a
_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtCskKLDkoKarTP_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvXs4_NtNtB1I_8buffered9bufreaderINtB2m_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB1G_4Read14read_to_string0E0ENtNtNtB9_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !13, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.a, ptr %i.d, align 8, !alias.scope !257
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtCskKLDkoKarTP_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvYINtNtNtB1I_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB1I_8buf_read7BufRead9read_line0E0ENtNtNtB9_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !13, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.a, ptr %i.d, align 8, !alias.scope !260
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadEENtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.c = load i64, ptr %i.b, align 8, !range !8, !alias.scope !264, !noalias !265, !noundef !4
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  store ptr %i.b, ptr %i.a, align 8, !noalias !266
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 4), !noalias !264
  br label %_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit

_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadEENtNtB7_3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !4, !noalias !270
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !noalias !270, !nonnull !4
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #22, !inline_history !269
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs67xrmJ0qrwH_6rustls5enums11ContentTypeNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsp_NtCs67xrmJ0qrwH_6rustls5enumsNtB5_11ContentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs67xrmJ0qrwH_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtCs67xrmJ0qrwH_6rustls5enumsNtB5_13HandshakeTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs67xrmJ0qrwH_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs67xrmJ0qrwH_6rustls5enumsNtB5_16AlertDescriptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdzNJuPjuSXS_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsh_NtCsdzNJuPjuSXS_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsdzNJuPjuSXS_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCsdzNJuPjuSXS_16rustls_pki_types6alg_idNtB5_19AlgorithmIdentifierNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.h = icmp samesign eq i64 %.val1, 0
  br i1 %i.h, label %_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2), "nonnull"(ptr %.val3) ]
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !captures !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs2JPny71o0qX_14pingora_rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i.i

_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseNtB5_7PayloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !16, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs38_NtNtCs67xrmJ0qrwH_6rustls4msgs5enumsNtB6_8HpkeAeadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.d = load i64, ptr %i.c, align 8, !range !8, !alias.scope !274, !noalias !275, !noundef !4
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.a, align 8, !noalias !276
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  br label %_RNvXs4A_NtNtCs67xrmJ0qrwH_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !276
  store ptr %i.c, ptr %i.b, align 8, !noalias !276
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !276
  br label %_RNvXs4A_NtNtCs67xrmJ0qrwH_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs4A_NtNtCs67xrmJ0qrwH_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  store ptr %i.b, ptr %i.a, align 8, !noalias !280
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 3, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.a, align 8, !noalias !284
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 19, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 11, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake18EchConfigExtensionNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !288
  store ptr %i.b, ptr %i.a, align 8, !noalias !288
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !288
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !289, !noundef !4
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 5, i64 3
  %.1.i = select i1 %i.b, ptr @9, ptr @8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB6_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !293
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !293
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 6, ptr noundef nonnull readonly align 2 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !293
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4s_NtNtCs67xrmJ0qrwH_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs67xrmJ0qrwH_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 %.val3
  %i.g = icmp samesign eq i64 %.val3, 0
  br i1 %i.g, label %_RINvNtNtCs67xrmJ0qrwH_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i: ; preds = %bb.c, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %.val2, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i, ptr %i.b, align 8, !captures !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs2JPny71o0qX_14pingora_rustls, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.h = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCs67xrmJ0qrwH_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2JPny71o0qX_14pingora_rustls.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_RINvNtNtCs67xrmJ0qrwH_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2JPny71o0qX_14pingora_rustls.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JPny71o0qX_14pingora_rustls.exit.i

_RINvNtNtCs67xrmJ0qrwH_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsH_NtCsdzNJuPjuSXS_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCs67xrmJ0qrwH_6rustls5enums11ContentTypeNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs67xrmJ0qrwH_6rustls5enums11ContentTypeINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCs67xrmJ0qrwH_6rustls5enums13HandshakeTypeNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs67xrmJ0qrwH_6rustls5enums13HandshakeTypeINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsdzNJuPjuSXS_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsdzNJuPjuSXS_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 82351536043346213) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake16EchConfigPayloadINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake18EchConfigExtensionNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake18EchConfigExtensionINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB5_5Debug3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteINtNtNtBa_5slice4iter4IterB14_EECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs67xrmJ0qrwH_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfup1golxiVd_14rustls_pemfile7pemfile8read_one(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

end_hunk_2
