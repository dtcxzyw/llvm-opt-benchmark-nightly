Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/simple_0rtt_client.simple_0rtt_client.3ca1dc3b14ad89d-cgu.5?download=true
inline.NumInlined: 200
inline.NumDeleted: 110
begin_hunk_0_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRShEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtB1u_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB3f_16ConnectionCommonNtNtNtB3h_6client11client_conn20ClientConnectionDataENtB3d_13PlaintextSink14write_vectored0EE9from_iterCskaDheoimX9_18simple_0rtt_client:bb.a
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !110
  %i.h = load i64, ptr %i.b, align 8, !range !5, !noalias !110, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !113, !noalias !110, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtB19_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2U_16ConnectionCommonNtNtNtB2W_6client11client_conn20ClientConnectionDataENtB2S_13PlaintextSink14write_vectored0EECskaDheoimX9_18simple_0rtt_client.exit.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !110
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #13, !noalias !110
  unreachable

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtB19_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2U_16ConnectionCommonNtNtNtB2W_6client11client_conn20ClientConnectionDataENtB2S_13PlaintextSink14write_vectored0EECskaDheoimX9_18simple_0rtt_client.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !110, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  store i64 %i.k, ptr %i.c, align 8, !noalias !110
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !114
  store ptr %i.q, ptr %i.a, align 8, !noalias !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !114
  invoke void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtBc_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB21_16ConnectionCommonNtNtNtB23_6client11client_conn20ClientConnectionDataENtB1Z_13PlaintextSink14write_vectored0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5N_3VecB5B_E14extend_trustedBN_E0E0ECskaDheoimX9_18simple_0rtt_client(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRShEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtNtNtB1K_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB3v_16ConnectionCommonNtNtNtB3x_6client11client_conn20ClientConnectionDataENtB3t_13PlaintextSink14write_vectored0EE9from_iterCskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.c, !noalias !110

bb.c:                                             ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtB19_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2U_16ConnectionCommonNtNtNtB2W_6client11client_conn20ClientConnectionDataENtB2S_13PlaintextSink14write_vectored0EECskaDheoimX9_18simple_0rtt_client.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECskaDheoimX9_18simple_0rtt_client.exit.i unwind label %bb.d, !noalias !110

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !110
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRShEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtNtNtB1K_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB3v_16ConnectionCommonNtNtNtB3x_6client11client_conn20ClientConnectionDataENtB3t_13PlaintextSink14write_vectored0EE9from_iterCskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtNtB19_2io8io_slice7IoSliceENCNvXs6_NtNtCs7ZUl82OSlxp_6rustls4conn10connectionINtB2U_16ConnectionCommonNtNtNtB2W_6client11client_conn20ClientConnectionDataENtB2S_13PlaintextSink14write_vectored0EECskaDheoimX9_18simple_0rtt_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !110
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !120, !noalias !123, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !120, !noalias !123, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtShNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !120
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtB6_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !119, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSjNtB5_5Debug3fmtCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !125
  %i.h = load i64, ptr %i.a, align 8, !range !5, !noalias !125, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !113, !noalias !125, !noundef !6 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !125
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #13, !noalias !125
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !125, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  store i64 %i.k, ptr %i.c, align 8, !noalias !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.d
  %.sroa.10.023.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %bb.d unwind label %bb.f, !noalias !129

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.10.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.10.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !129
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !129
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.10.021.i, ptr %i.q, align 8, !noalias !125
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #12
          to label %bb.g unwind label %bb.e, !noalias !129

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !134
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !134, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !113, !noalias !134, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !134
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #13, !noalias !134
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !134, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  store i64 %i.i, ptr %0, align 8, !alias.scope !131, !noalias !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !131, !noalias !136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !131, !noalias !136
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.p = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 %i.p, i1 false), !noalias !131
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !131, !noalias !136
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !140
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !140
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !140, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !113, !noalias !140, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !140
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #13, !noalias !140
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !140, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !140
  store i64 %i.i, ptr %0, align 8, !alias.scope !137, !noalias !142
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !137, !noalias !142
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !137, !noalias !142
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.p = shl nuw nsw i64 %i.e, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 %i.p, i1 false), !noalias !137
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !137, !noalias !142
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !146
  %i.h = load i64, ptr %i.b, align 8, !range !5, !noalias !146, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !113, !noalias !146, !noundef !6 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !146
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #13, !noalias !146
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !146, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  store i64 %i.k, ptr %i.c, align 8, !noalias !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.715.041.i = phi i64 [ undef, %.lr.ph.i ], [ %.sroa.014.0.i, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %.sroa.013.040.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.x, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 5 uses
  %.sroa.013.039.i = phi ptr [ undef, %.lr.ph.i ], [ %.sroa.6.0.i, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %.sroa.7.038.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.037.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.v, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  %i.v = add i64 %.sroa.10.037.i, -1              ; 2 uses
  %i.w = icmp eq ptr %.sroa.013.040.i, %i.r
  br i1 %i.w, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i, i64 24
  %i.y = add nuw nsw i64 %.sroa.7.038.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.z = load i64, ptr %.sroa.013.040.i, align 8, !range !22, !alias.scope !151, !noalias !152, !noundef !6 ; 2 uses
  %i.aa = xor i64 %i.z, -9223372036854775808
  %i.ab = icmp slt i64 %i.z, 0
  %i.ac = select i1 %i.ab, i64 %i.aa, i64 2
  switch i64 %i.ac, label %bb.e [
    i64 0, label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  br label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !157, !noalias !158, !nonnull !6, !noundef !6
  %i.ag = load i64, ptr %i.ad, align 8, !alias.scope !157, !noalias !158, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.ag, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !146

.noexc.i:                                         ; preds = %bb.g
  %i.ah = load i64, ptr %i.a, align 8, !range !5, !noalias !160, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = load i64, ptr %i.t, align 8, !range !113, !noalias !160, !noundef !6 ; 4 uses
  br i1 %i.ai, label %bb.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i, !prof !12

bb.h:                                             ; preds = %.noexc.i
  %i.ak = load i64, ptr %i.u, align 8, !noalias !160
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.ak) #13
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !146

.noexc12.i:                                       ; preds = %bb.h
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i: ; preds = %.noexc.i
  %i.al = load ptr, ptr %i.u, align 8, !noalias !160, !nonnull !6, !noundef !6 ; 3 uses
  %i.am = icmp ule i64 %i.ag, %i.aj
  tail call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  %.not.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i
  %i.an = shl nuw nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull readonly align 8 %i.af, i64 %i.an, i1 false), !noalias !164
  br label %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i, %bb.f, %bb.d
  %.sroa.715.0.i = phi i64 [ -9223372036854775808, %bb.d ], [ -9223372036854775807, %bb.f ], [ %i.aj, %bb.i ], [ %i.aj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.6.0.i = phi ptr [ %.sroa.013.039.i, %bb.d ], [ %.sroa.013.039.i, %bb.f ], [ %i.al, %bb.i ], [ %i.al, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ] ; 2 uses
  %.sroa.014.0.i = phi i64 [ %.sroa.715.041.i, %bb.d ], [ %.sroa.715.041.i, %bb.f ], [ %i.ag, %bb.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.038.i ; 3 uses
  store i64 %.sroa.715.0.i, ptr %i.ao, align 8, !noalias !146
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !146
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.014.0.i, ptr %.sroa.524.0..sroa_idx.i, align 8, !noalias !146
  %i.ap = icmp eq i64 %i.v, 0
  br i1 %i.ap, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !146
  unreachable

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.038.i, ptr %i.q, align 8, !noalias !146
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #12
          to label %bb.l unwind label %bb.j, !noalias !146

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.phi.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.c, %_RNvXsH_NtCs7ZUl82OSlxp_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !168
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !168, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !113, !noalias !168, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !168
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #13, !noalias !168
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !168, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  store i64 %i.i, ptr %0, align 8, !alias.scope !165, !noalias !170
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !165, !noalias !170
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !165, !noalias !170
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.p = shl nuw nsw i64 %i.e, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !165
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !165, !noalias !170
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.9.i = alloca [68 x i8], align 4 ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1028.i = alloca [68 x i8], align 4       ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1028.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !174
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef range(i64 0, 82351536043346213) %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !174
  %i.q = load i64, ptr %i.k, align 8, !range !5, !noalias !174, !noundef !6
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !113, !noalias !174, !noundef !6 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !174
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #13, !noalias !176
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !noalias !174, !nonnull !6, !noundef !6 ; 4 uses
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !174
  store i64 %i.t, ptr %i.l, align 8, !noalias !174
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !174
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.o, i64 %i.p
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.0.i.sroa.9.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i, i64 20
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.0.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %.sroa.0.i.sroa.9.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.9.i, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.1029.0149.i = phi i8 [ undef, %.lr.ph.i ], [ %.sroa.1029.1.i, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 2 uses
  %.sroa.018.0148.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.at, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 19 uses
  %.sroa.7.0145.i = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 7 uses
  %.sroa.10.0144.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.ar, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  %i.ar = add i64 %.sroa.10.0144.i, -1            ; 2 uses
  %i.as = icmp eq ptr %.sroa.018.0148.i, %i.aa
  br i1 %i.as, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.h, %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 112
  %i.au = add nuw nsw i64 %.sroa.7.0145.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.av = load i64, ptr %.sroa.018.0148.i, align 8, !range !34, !alias.scope !180, !noalias !181, !noundef !6
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 32
  %i.ay = load i16, ptr %i.ax, align 8, !range !183, !alias.scope !180, !noalias !181, !noundef !6 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 34
  %i.ba = load i16, ptr %i.az, align 2, !alias.scope !180, !noalias !181 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !187, !noalias !188, !nonnull !6, !noundef !6
  %i.be = load i64, ptr %i.bb, align 8, !alias.scope !187, !noalias !188, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !190
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.be, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !176

.noexc.i:                                         ; preds = %bb.e
  %i.bf = load i64, ptr %i.j, align 8, !range !5, !noalias !190, !noundef !6
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = load i64, ptr %i.ap, align 8, !range !113, !noalias !190, !noundef !6 ; 4 uses
  br i1 %i.bg, label %bb.f, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i, !prof !12

bb.f:                                             ; preds = %.noexc.i
  %i.bi = load i64, ptr %i.aq, align 8, !noalias !190
  br label %.invoke

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i: ; preds = %.noexc.i
  %i.bj = load ptr, ptr %i.aq, align 8, !noalias !190, !nonnull !6, !noundef !6 ; 3 uses
  %i.bk = icmp ule i64 %i.be, %i.bh
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !190
  %.not.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i, label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull readonly align 1 %i.bd, i64 range(i64 0, -9223372036854775808) %i.be, i1 false), !noalias !194
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 52
  %i.bm = load i8, ptr %i.bl, align 4, !alias.scope !205, !noalias !206, !noundef !6
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 48
  %i.bo = load <2 x i16>, ptr %i.bn, align 8, !alias.scope !205, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !211, !noalias !212, !nonnull !6, !noundef !6
  %i.bs = load i64, ptr %i.bp, align 8, !alias.scope !211, !noalias !212, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !214
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.bs, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !176

.noexc13.i:                                       ; preds = %bb.h
  %i.bt = load i64, ptr %i.e, align 8, !range !5, !noalias !214, !noundef !6
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = load i64, ptr %i.ac, align 8, !range !113, !noalias !214, !noundef !6 ; 3 uses
  br i1 %i.bu, label %bb.i, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i, !prof !12

bb.i:                                             ; preds = %.noexc13.i
  %i.bw = load i64, ptr %i.ad, align 8, !noalias !214
  br label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.i
  %i.bx = phi i64 [ %i.bv, %bb.i ], [ %i.bh, %bb.f ]
  %i.by = phi i64 [ %i.bw, %bb.i ], [ %i.bi, %bb.f ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bx, i64 %i.by) #13
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !176

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i: ; preds = %.noexc13.i
  %i.bz = load ptr, ptr %i.ad, align 8, !noalias !214, !nonnull !6, !noundef !6 ; 2 uses
  %i.ca = icmp ule i64 %i.bs, %i.bv
  tail call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !214
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.br, i64 range(i64 0, -9223372036854775808) %i.bs, i1 false), !noalias !218
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i: ; preds = %bb.j, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i
  store i64 %i.bv, ptr %i.f, align 8, !noalias !207
  store ptr %i.bz, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !207
  store i64 %i.bs, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !207
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !205, !noalias !206, !nonnull !6, !noundef !6
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !205, !noalias !206, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !219
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 1152921504606846976) %.val1.i.i.i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 8)
          to label %.noexc.i.i.i.i unwind label %.loopexit63.i, !noalias !225

.noexc.i.i.i.i:                                   ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i
  %i.cd = load i64, ptr %i.d, align 8, !range !5, !noalias !219, !noundef !6
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = load i64, ptr %i.ae, align 8, !range !113, !noalias !219, !noundef !6 ; 4 uses
  br i1 %i.ce, label %bb.k, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i2.i.i.i.i, !prof !12

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.cg = load i64, ptr %i.af, align 8, !noalias !219
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.cg) #13
          to label %.noexc4.i.i.i.i unwind label %.loopexit.split-lp64.i, !noalias !225

.noexc4.i.i.i.i:                                  ; preds = %bb.k
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i2.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.ch = load ptr, ptr %i.af, align 8, !noalias !219, !nonnull !6, !noundef !6 ; 3 uses
  %i.ci = icmp ule i64 %.val1.i.i.i.i, %i.cf
  tail call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !219
  %.not.i.i3.i.i.i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %.not.i.i3.i.i.i.i, label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i2.i.i.i.i
  %i.cj = shl nuw nsw i64 %.val1.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ch, ptr nonnull readonly align 2 %.val.i.i.i.i, i64 %i.cj, i1 false), !noalias !226
  br label %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

.loopexit63.i:                                    ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i
  %lpad.loopexit65.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp64.i:                           ; preds = %bb.k
  %lpad.loopexit.split-lp66.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp64.i, %.loopexit63.i
  %lpad.phi67.i = phi { ptr, i32 } [ %lpad.loopexit65.i, %.loopexit63.i ], [ %lpad.loopexit.split-lp66.i, %.loopexit.split-lp64.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ag unwind label %bb.n, !noalias !225

bb.n:                                             ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !225
  unreachable

_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.l, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i2.i.i.i.i
  store i8 %i.bm, ptr %i.ag, align 4, !alias.scope !200, !noalias !227
  store <2 x i16> %i.bo, ptr %i.ah, align 8, !alias.scope !200, !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !227
  store i64 %i.cf, ptr %i.ai, align 8, !alias.scope !200, !noalias !227
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !200, !noalias !227
  store i64 %.val1.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !200, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !207
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 104
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !228, !noalias !229, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !198
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 80 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !34, !alias.scope !228, !noalias !229, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.co, -1
  %i.cp = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = lshr i64 %i.cp, 16
  %i.cs = trunc i64 %i.cr to i16
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !198
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn)
          to label %bb.ac unwind label %bb.ab, !noalias !229

bb.p:                                             ; preds = %_RNvXs4r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_13HpkeKeyConfigNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !228, !noalias !229, !nonnull !6, !noundef !6
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 96
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !228, !noalias !229, !noundef !6
  br label %bb.q

bb.q:                                             ; preds = %bb.ac, %bb.p
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i.i, %bb.ac ], [ %i.cw, %bb.p ]
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i.i, %bb.ac ], [ %i.cu, %bb.p ]
  %i.cx = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.ac ], [ -1, %bb.p ] ; 2 uses
  store i64 %i.cx, ptr %i.h, align 8, !noalias !198
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !198
  store i64 %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !198
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 64
  %.val.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !228, !noalias !229, !nonnull !6, !noundef !6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.018.0148.i, i64 72
  %.val9.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !228, !noalias !229, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !233
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %.val9.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i.i.i unwind label %.loopexit68.i, !noalias !229

.noexc.i.i.i:                                     ; preds = %bb.q
  %i.da = load i64, ptr %i.b, align 8, !range !5, !noalias !233, !noundef !6
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = load i64, ptr %i.aj, align 8, !range !113, !noalias !233, !noundef !6 ; 5 uses
  br i1 %i.db, label %bb.r, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i, !prof !12

bb.r:                                             ; preds = %.noexc.i.i.i
  %i.dd = load i64, ptr %i.ak, align 8, !noalias !233
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dc, i64 %i.dd) #13
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp69.i, !noalias !229

.noexc10.i.i.i:                                   ; preds = %bb.r
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.de = load ptr, ptr %i.ak, align 8, !noalias !233, !nonnull !6, !noundef !6 ; 2 uses
  %i.df = icmp ule i64 %.val9.i.i.i, %i.dc
  tail call void @llvm.assume(i1 %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !233
  store i64 %i.dc, ptr %i.c, align 8, !noalias !233
  store ptr %i.de, ptr %i.al, align 8, !noalias !233
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val9.i.i.i
  %i.dh = icmp eq i64 %i.dc, 0
  br i1 %i.dh, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.10.049.i.i.i.i.i = phi i64 [ %i.di, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.dc, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i ]
  %.sroa.013.048.i.i.i.i.i = phi ptr [ %i.dk, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.val.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.10.047.i.i.i.i.i = phi i64 [ %i.dl, %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i ] ; 3 uses
  %i.di = add i64 %.sroa.10.049.i.i.i.i.i, -1     ; 2 uses
  %i.dj = icmp eq ptr %.sroa.013.048.i.i.i.i.i, %i.dg
  br i1 %i.dj, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 32
  %i.dl = add nuw nsw i64 %.sroa.10.047.i.i.i.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 24
  %i.dn = load <2 x i16>, ptr %i.dm, align 8, !alias.scope !243, !noalias !244
  %i.do = load i64, ptr %.sroa.013.048.i.i.i.i.i, align 8, !range !34, !alias.scope !243, !noalias !244, !noundef !6
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.do, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !250, !noalias !251, !nonnull !6, !noundef !6
  %i.ds = load i64, ptr %i.dp, align 8, !alias.scope !250, !noalias !251, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !253
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.ds, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !257

.noexc.i.i.i.i.i:                                 ; preds = %bb.t
  %i.dt = load i64, ptr %i.a, align 8, !range !5, !noalias !253, !noundef !6
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = load i64, ptr %i.an, align 8, !range !113, !noalias !253, !noundef !6 ; 4 uses
  br i1 %i.du, label %bb.u, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i, !prof !12

bb.u:                                             ; preds = %.noexc.i.i.i.i.i
  %i.dw = load i64, ptr %i.ao, align 8, !noalias !253
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dw) #13
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !257

.noexc12.i.i.i.i.i:                               ; preds = %bb.u
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i
  %i.dx = load ptr, ptr %i.ao, align 8, !noalias !253, !nonnull !6, !noundef !6 ; 3 uses
  %i.dy = icmp ule i64 %i.ds, %i.dv
  tail call void @llvm.assume(i1 %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull readonly align 1 %i.dr, i64 range(i64 0, -9223372036854775808) %i.ds, i1 false), !noalias !258
  br label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !243, !noalias !244, !nonnull !6, !noundef !6
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i.i.i.i.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !243, !noalias !244, !noundef !6
  br label %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.w ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i ], [ %i.ds, %bb.v ]
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ %i.ea, %bb.w ], [ %i.dx, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i ], [ %i.dx, %bb.v ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ -1, %bb.w ], [ %i.dv, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.v ]
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.sroa.10.047.i.i.i.i.i ; 4 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ed, align 8, !noalias !257
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !257
  %.sroa.532.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i, align 8, !noalias !257
  %.sroa.633.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store <2 x i16> %i.dn, ptr %.sroa.633.0..sroa_idx.i.i.i.i.i, align 8, !noalias !257
  %i.ee = icmp eq i64 %i.di, 0
  br i1 %i.ee, label %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !257
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.t
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.u
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  store i64 %.sroa.10.047.i.i.i.i.i, ptr %i.am, align 8, !noalias !233
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionEECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #12
          to label %.body.i.i.i unwind label %bb.x, !noalias !257

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i: ; preds = %bb.ad, %.body.i.i.i, %bb.ab
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.ab ], [ %eh.lpad-body.i.i.i, %bb.ad ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECskaDheoimX9_18simple_0rtt_client.exit.i.i unwind label %bb.z, !noalias !229

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body16.i unwind label %bb.aa, !noalias !229

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECskaDheoimX9_18simple_0rtt_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.ag unwind label %bb.ae, !noalias !176

bb.aa:                                            ; preds = %bb.z
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !229
  unreachable

bb.ab:                                            ; preds = %bb.o
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i

bb.ac:                                            ; preds = %bb.o
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.g, align 8, !noalias !198
  %.sroa.5.0.copyload3.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !198
  %.sroa.6.0.copyload5.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 8, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !198
  br label %bb.q

.loopexit68.i:                                    ; preds = %bb.q
  %lpad.loopexit70.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp69.i:                           ; preds = %bb.r
  %lpad.loopexit.split-lp71.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp69.i, %.loopexit68.i, %bb.y
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i, %bb.y ], [ %lpad.loopexit70.i, %.loopexit68.i ], [ %lpad.loopexit.split-lp71.i, %.loopexit.split-lp69.i ] ; 2 uses
  %i.ej = icmp eq i64 %i.cx, -1
  br i1 %i.ej, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECskaDheoimX9_18simple_0rtt_client.exit.i.i.i unwind label %bb.ae, !noalias !229

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECskaDheoimX9_18simple_0rtt_client.exit.i.i
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i

.body16.i:                                        ; preds = %bb.ae, %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !229
  unreachable

_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs4D_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_18EchConfigExtensionNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i.i
  store i64 %.val9.i.i.i, ptr %i.am, align 8, !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  %.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !259
  %.sroa.0.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !noalias !259
  %.sroa.0.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.i.sroa.9.0..sroa_idx.i, i64 20, i1 false), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.i.sroa.9.80..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.0.i.sroa.9.i, i64 68, i1 false), !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.9.i)
  br label %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, %bb.g, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i
  %.sroa.8.0.i = phi i16 [ %i.cq, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.ay, %bb.g ], [ %i.ay, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.724.0.i = phi i64 [ %i.cf, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.be, %bb.g ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.6.0.i = phi ptr [ %.sroa.0.i.sroa.5.0.copyload.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.bj, %bb.g ], [ %i.bj, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.521.0.i = phi i64 [ %.sroa.0.i.sroa.4.0.copyload.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.bh, %bb.g ], [ %i.bh, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.019.0.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ -1, %bb.g ], [ -1, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.9.0.i = phi i16 [ %i.cs, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.ba, %bb.g ], [ %i.ba, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ]
  %.sroa.1029.1.i = phi i8 [ %i.cm, %_RNvXs4v_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_17EchConfigContentsNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.1029.0149.i, %bb.g ], [ %.sroa.1029.0149.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i.i.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.7.0145.i ; 8 uses
  store i64 %.sroa.019.0.i, ptr %i.el, align 8, !noalias !176
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %.sroa.521.0.i, ptr %.sroa.449.0..sroa_idx.i, align 8, !noalias !176
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !176
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 %.sroa.724.0.i, ptr %.sroa.651.0..sroa_idx.i, align 8, !noalias !176
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store i16 %.sroa.8.0.i, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !176
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 34
  store i16 %.sroa.9.0.i, ptr %.sroa.853.0..sroa_idx.i, align 2, !noalias !176
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.954.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(68) %.sroa.1028.i, i64 68, i1 false), !noalias !176
  %.sroa.1055.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  store i8 %.sroa.1029.1.i, ptr %.sroa.1055.0..sroa_idx.i, align 8, !noalias !176
  %i.em = icmp eq i64 %i.ar, 0
  br i1 %i.em, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.af:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i, %bb.af
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !176
  unreachable

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECskaDheoimX9_18simple_0rtt_client.exit.i.i, %bb.m, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBE_8NonEmptyEECskaDheoimX9_18simple_0rtt_client.exit.i.i ], [ %lpad.phi67.i, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.0145.i, ptr %i.z, align 8, !noalias !174
  %i.eo = icmp eq i64 %.sroa.7.0145.i, 0
  br i1 %i.eo, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client.exit.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.ep = icmp eq i64 %i.er, %.sroa.7.0145.i
  br i1 %i.ep, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i.i176 = phi i64 [ %i.er, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.0.i.i.i176
  %i.er = add nuw nsw i64 %.sroa.0.0.i.i.i176, 1  ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.eq)
          to label %bb.ah unwind label %bb.aj, !noalias !260

bb.ai:                                            ; preds = %.lr.ph178
  %i.es = add i64 %.sroa.0.1.i.i.i177, 1          ; 2 uses
  %i.et = icmp eq i64 %i.es, %.sroa.7.0145.i
  br i1 %i.et, label %.body.i, label %.lr.ph178

bb.aj:                                            ; preds = %.lr.ph
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ev = icmp eq i64 %i.er, %.sroa.7.0145.i
  br i1 %i.ev, label %.body.i, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.aj, %bb.ai
  %.sroa.0.1.i.i.i177 = phi i64 [ %i.es, %bb.ai ], [ %i.er, %bb.aj ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [112 x i8], ptr %i.w, i64 %.sroa.0.1.i.i.i177
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ew) #12
          to label %bb.ai unwind label %bb.ak, !noalias !260

bb.ak:                                            ; preds = %.lr.ph178
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !260
  unreachable

.body.i:                                          ; preds = %bb.ai, %bb.aj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.al, !noalias !176

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.ah, %bb.ag
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECskaDheoimX9_18simple_0rtt_client.exit unwind label %bb.af

bb.al:                                            ; preds = %.body.i
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #11, !noalias !176
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadEECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client.exit.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %bb.c, %_RNvXs4z_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  store i64 %i.p, ptr %i.z, align 8, !noalias !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1028.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !268
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !268, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !113, !noalias !268, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !268
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #13, !noalias !268
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !268, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  store i64 %i.i, ptr %0, align 8, !alias.scope !265, !noalias !270
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !265, !noalias !270
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !265, !noalias !270
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !265
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !265, !noalias !270
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskaDheoimX9_18simple_0rtt_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !274
  %i.f = load i64, ptr %i.a, align 8, !range !5, !noalias !274, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !113, !noalias !274, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !274
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #13, !noalias !274
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !274, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  store i64 %i.i, ptr %0, align 8, !alias.scope !271, !noalias !276
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !271, !noalias !276
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !271, !noalias !276
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i
  %i.p = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !271
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !271, !noalias !276
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskaDheoimX9_18simple_0rtt_client.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskaDheoimX9_18simple_0rtt_client.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskaDheoimX9_18simple_0rtt_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit.i unwind label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskaDheoimX9_18simple_0rtt_client.exit7.i._crit_edge, label %.lr.ph3

end_hunk_0
