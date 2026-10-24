Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.15?download=true
inline.NumInlined: 694
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENCNvMs3_NtNtB1t_6client3echNtB2w_8EchState10grease_psk0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1t_5error5ErrorEEB3i_8try_folduNCINvNvB3i_12try_for_each4callB1n_INtNtNtBc_3ops12control_flow11ControlFlowB1n_ENcNtB6r_5Break0E0B6r_E0IB6s_B6r_EEB1t_:bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_.exit.i.i.i unwind label %bb.m, !noalias !578

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !574
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i8 15, ptr %3, align 8, !noalias !578
  %.sroa.620.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %.sroa.620.0..8.val.sroa_idx.i.i.i, align 8, !noalias !578
  br label %common.resume.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_.exit.i.i.i: ; preds = %bb.k, %bb.j
  store i8 15, ptr %3, align 8, !noalias !578
  %.sroa.620.0..8.val.sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %.sroa.620.0..8.val.sroa_idx21.i.i.i, align 8, !noalias !578
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !579
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_.exit

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_.exit.i.i.i, %bb.l
  %storemerge.i.i.i = phi i64 [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_.exit.i.i.i ], [ %i.n, %bb.l ]
  store i64 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !580
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !570
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_.exit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENCNvNtNtB1t_6client2hs27emit_client_hello_for_retrys4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtNtB1t_5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5a_3VecB4g_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtBW_6client2hs27emit_client_hello_for_retrys4_0NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.f, align 8, !noalias !590, !nonnull !5, !noundef !5
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val16.i = load ptr, ptr %i.g, align 8, !noalias !590, !nonnull !5, !align !11, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.val16.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !5, !noalias !591, !nonnull !5
  %i.j = invoke { i16, i16 } %i.i(ptr noundef nonnull %.val15.i) #34
          to label %bb.d unwind label %bb.e, !noalias !590, !inline_history !585 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i16, i16 } %i.j, 0
  %i.l = extractvalue { i16, i16 } %i.j, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store i16 %i.k, ptr %i.m, align 2, !noalias !592
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.l, ptr %i.n, align 2, !noalias !592
  %i.o = add i64 %.val10.i, 1                     ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtBW_6client2hs27emit_client_hello_for_retrys4_0NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !590
  resume { ptr, i32 } %i.r

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtBW_6client2hs27emit_client_hello_for_retrys4_0NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.o, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !590
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENCNvNtNtNtB1t_6server5tls1312client_hello26emit_certificate_req_tls130ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callNtNtB1t_5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB4v_E14extend_trustedBN_E0E0EB1t_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtBW_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5E_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.f, align 8, !noalias !602, !nonnull !5, !noundef !5
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val16.i = load ptr, ptr %i.g, align 8, !noalias !602, !nonnull !5, !align !11, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.val16.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !5, !noalias !603, !nonnull !5
  %i.j = invoke { i16, i16 } %i.i(ptr noundef nonnull %.val15.i) #34
          to label %bb.d unwind label %bb.e, !noalias !602, !inline_history !597 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i16, i16 } %i.j, 0
  %i.l = extractvalue { i16, i16 } %i.j, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store i16 %i.k, ptr %i.m, align 2, !noalias !604
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.l, ptr %i.n, align 2, !noalias !604
  %i.o = add i64 %.val10.i, 1                     ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e
  br i1 %i.q, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtBW_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5E_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !602
  resume { ptr, i32 } %i.r

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtBW_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5E_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.o, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !602
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENCNvMNtNtB1s_6webpki6verifyNtB3s_25WebPkiSupportedAlgorithms17supported_schemes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4G_8for_each4callB1o_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5W_3VecB1o_E14extend_trustedBN_E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 24                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 288
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.5.0.copyload, %i.e
  %i.i = shl i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.d
  %i.l = getelementptr i8, ptr %i.k, i64 -20
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846972      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i16, ptr %i.o, align 8, !alias.scope !619, !noalias !620
  %i.w = load i16, ptr %i.q, align 8, !alias.scope !619, !noalias !620
  %i.x = load i16, ptr %i.s, align 8, !alias.scope !619, !noalias !620
  %i.y = load i16, ptr %i.u, align 8, !alias.scope !619, !noalias !620
  %i.z = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.w, i64 1
  %i.ab = insertelement <4 x i16> %i.aa, i16 %i.x, i64 2
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 3
  %i.ad = getelementptr i8, ptr %i.o, i64 2
  %i.ae = getelementptr i8, ptr %i.p, i64 26
  %i.af = getelementptr i8, ptr %i.r, i64 50
  %i.ag = getelementptr i8, ptr %i.t, i64 74
  %i.ah = load i16, ptr %i.ad, align 2, !alias.scope !619, !noalias !620
  %i.ai = load i16, ptr %i.ae, align 2, !alias.scope !619, !noalias !620
  %i.aj = load i16, ptr %i.af, align 2, !alias.scope !619, !noalias !620
  %i.ak = load i16, ptr %i.ag, align 2, !alias.scope !619, !noalias !620
  %i.al = insertelement <4 x i16> poison, i16 %i.ah, i64 0
  %i.am = insertelement <4 x i16> %i.al, i16 %i.ai, i64 1
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 2
  %i.ao = insertelement <4 x i16> %i.an, i16 %i.ak, i64 3
  %i.ap = getelementptr [4 x i8], ptr %i.n, i64 %index
  %interleaved.vec = shufflevector <4 x i16> %i.ac, <4 x i16> %i.ao, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ap, align 2, !alias.scope !621, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !616

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ar = phi i64 [ %i.av, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.aw, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ar
  %i.au = load <2 x i16>, ptr %i.as, align 8, !noalias !620
  store <2 x i16> %i.au, ptr %i.at, align 2, !noalias !622
  %i.av = add i64 %i.ar, 1                        ; 3 uses
  %i.aw = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !617

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.az = phi i64 [ %i.bs, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bt, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.az
  %i.bc = load <2 x i16>, ptr %i.ba, align 8, !noalias !620
  store <2 x i16> %i.bc, ptr %i.bb, align 2, !noalias !622
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.az
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load <2 x i16>, ptr %i.be, align 8, !noalias !620
  store <2 x i16> %i.bh, ptr %i.bg, align 2, !noalias !622
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.az
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load <2 x i16>, ptr %i.bj, align 8, !noalias !620
  store <2 x i16> %i.bm, ptr %i.bl, align 2, !noalias !622
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.az
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  %i.br = load <2 x i16>, ptr %i.bo, align 8, !noalias !620
  store <2 x i16> %i.br, ptr %i.bq, align 2, !noalias !622
  %i.bs = add i64 %i.az, 4                        ; 2 uses
  %i.bt = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %i.e
  br i1 %i.bu, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_.exit, label %scalar.ph, !llvm.loop !618

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bs, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !620
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB12_3VechEENvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB22_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB22_E0INtNtBc_6result6ResultB49_zEEB28_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VechEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameENCINvNtNtB1g_8adapters3map12map_try_foldBX_B2O_B2e_INtNtB1i_6result6ResultB2e_zENvYB2O_INtNtB1i_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2O_E0E0B4y_EB2U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtB12_3VecjEENCNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB25_5error18ExtendedKeyPurposeENCINvNtB12_16in_place_collect24write_in_place_with_dropB41_E0INtNtBc_6result6ResultB3q_zEEB25_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENCINvNtNtB1g_8adapters3map12map_try_foldBX_B2O_B2e_INtNtB1i_6result6ResultB2e_zENCNvNtB2S_6webpki9pki_error0NCINvNtB8_16in_place_collect24write_in_place_with_dropB2O_E0E0B4t_EB2S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENCNvMs17_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB2J_16CertificateChain10into_owned0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB4G_zEEB2N_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1S_8adapters3map12map_try_foldBX_BX_B2Q_INtNtB1U_6result6ResultB2Q_zENCNvMs17_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB4U_16CertificateChain10into_owned0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB4Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENCNvMs1h_B1N_NtB1N_23CertificatePayloadTls1322into_certificate_chain0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENCINvNtB12_16in_place_collect24write_in_place_with_dropB5a_E0INtNtBc_6result6ResultB4z_zEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENCINvNtNtB22_8adapters3map12map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMs1h_BZ_NtBZ_23CertificatePayloadTls1322into_certificate_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B5e_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENvMs1e_B1N_B1L_10into_ownedENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB3T_zEEB1R_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB22_8adapters3map12map_try_foldBX_BX_B30_INtNtB24_6result6ResultB30_zENvMs1e_BZ_BX_10into_ownedNCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4s_EB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4ItertENCNvMs_NtNtCs7ZUl82OSlxp_6rustls6client6commonNtB21_18ClientHelloDetails34server_sent_unsolicited_extensions0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callNtNtNtB25_4msgs5enums13ExtensionTypeNCINvMsk_NtB16_3vecINtB5s_3VecB4J_E14extend_trustedBN_E0E0EB25_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB12_6client6commonNtB1V_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4n_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB4p_11collections5btree3set4ItertEB1O_EE0E0E0B12_.exit.i, %bb.a
  %.val6.i = phi i64 [ %i.e, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB12_6client6commonNtB1V_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4n_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB4p_11collections5btree3set4ItertEB1O_EE0E0E0B12_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 4 uses
  %i.b = invoke noundef align 2 ptr @_RNvXsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_4ItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.af, !noalias !631 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4ItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB2I_6client6commonNtB3B_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvB10_8for_each4callB2C_NCINvMsk_NtBc_3vecINtB5A_3VecB2C_E14extend_trustedINtB26_3MapB3_B3u_EE0E0E0EB2I_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val7.i = load i16, ptr %i.b, align 2, !noalias !631, !noundef !5 ; 3 uses
  switch i16 %.val7.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB12_6client6commonNtB1V_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4n_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB4p_11collections5btree3set4ItertEB1O_EE0E0E0B12_.exit.i [
    i16 0, label %bb.e
    i16 1, label %bb.e
    i16 2, label %bb.e
    i16 3, label %bb.e
    i16 4, label %bb.e
    i16 5, label %bb.e
    i16 6, label %bb.e
    i16 7, label %bb.e
    i16 8, label %bb.e
    i16 9, label %bb.e
    i16 10, label %bb.e
    i16 11, label %bb.e
    i16 12, label %bb.e
    i16 13, label %bb.e
    i16 14, label %bb.e
    i16 15, label %bb.e
    i16 16, label %bb.e
    i16 18, label %bb.f
    i16 19, label %bb.g
    i16 20, label %bb.h
    i16 21, label %bb.i
    i16 23, label %bb.j
    i16 27, label %bb.k
    i16 35, label %bb.l
    i16 41, label %bb.m
    i16 42, label %bb.n
    i16 43, label %bb.o
    i16 44, label %bb.p
    i16 45, label %bb.q
    i16 46, label %bb.r
    i16 47, label %bb.s
    i16 48, label %bb.t
    i16 49, label %bb.u
    i16 50, label %bb.v
    i16 51, label %bb.w
    i16 57, label %bb.x
    i16 58, label %bb.y
    i16 13172, label %bb.z
    i16 30031, label %bb.aa
    i16 -255, label %bb.ab
    i16 -91, label %bb.ac
    i16 -499, label %bb.ad
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11client_conn12ClientConfigNtBJ_13WantsVersionsE8with_ech:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.i = icmp eq i64 %i.e, -3
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVerifierEEBG_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.d) #32
          to label %bb.i unwind label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.d, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit, %bb.c
  ret void

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.j
  %.pn14 = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %.pn14

bb.j:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEBH_(ptr noalias nofree noundef align 8 dereferenceable(128) %2) #32
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE19with_no_client_auth(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 16, i64 noundef 8) #31 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !659, !nonnull !5, !align !11, !noundef !5
  store ptr %i.b, ptr %0, align 8, !alias.scope !658
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @16, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !658
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !alias.scope !659
  store <2 x ptr> %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !658
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.e, align 8, !alias.scope !659
  store <2 x ptr> %i.j, ptr %i.i, align 8, !alias.scope !658
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.k, align 8, !alias.scope !658
  %i.l = load i64, ptr %i.a, align 8, !range !9, !alias.scope !660, !noundef !5
  %i.m = icmp eq i64 %i.l, -3
  br i1 %i.m, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a)
  br label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier.exit

_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVerifierEEBG_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #32
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !11, !noundef !5
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.h, align 8
  %i.i = load i64, ptr %1, align 8, !range !9, !alias.scope !665, !noundef !5
  %i.j = icmp eq i64 %i.i, -3
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB2_13RootCertStore3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 3 uses
  %.sroa.65 = alloca [64 x i8], align 8           ; 5 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65)
  invoke void @_RNvNtCshVVPy9isBpn_6webpki12trust_anchor24anchor_from_trusted_cert(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #32
          to label %common.resume unwind label %bb.q

bb.c:                                             ; preds = %bb.l, %bb.e, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !6, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h)
          to label %bb.r unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  store i64 %i.f, ptr %i.c, align 8
  invoke void @_RNvMso_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_11TrustAnchor8to_owned(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.n, %bb.j ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #32
          to label %bb.b unwind label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !681, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %1, align 8, !range !18, !alias.scope !681, !noundef !5
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE8grow_oneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.l unwind label %bb.j, !noalias !682

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #32
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !681, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.s = add i64 %i.k, 1
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.c

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 -1, ptr %0, align 8
  %i.t = load i64, ptr %2, align 8, !range !4, !alias.scope !683, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.t, -1
  br i1 %.not.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit.sink.split unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.t, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.t ], [ %i.u, %bb.o ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit.sink.split: ; preds = %bb.n, %bb.s
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit.sink.split, %bb.r, %bb.m
  ret void

bb.q:                                             ; preds = %.body, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.65, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i64, ptr %2, align 8, !range !4, !alias.scope !684, !noundef !5
  %.not.i.i.i15 = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i15, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls.exit.sink.split unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB2_13RootCertStore8subjects(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.d
  tail call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2G_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENCNvMNtNtB19_6webpki7anchorsNtB4D_13RootCertStore8subjects0EE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB2_20OutboundPlainMessage11encoded_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %.sroa.0.0 = select i1 %.not, i64 %i.e, i64 %i.f
  %i.g = tail call noundef i64 @_RNvMNtCs7ZUl82OSlxp_6rustls12record_layerNtB2_11RecordLayer13encrypted_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %.sroa.0.0)
  %i.h = add i64 %i.g, 5
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB2_20OutboundPlainMessage21to_unencrypted_opaque(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %i.f, %i.h
  %.sroa.0.0 = select i1 %.not, i64 %i.h, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !687
  %i.j = add i64 %.sroa.0.0, 5                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !687
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.j, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !687
  %i.k = load i64, ptr %i.a, align 8, !range !8, !noalias !687, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !13, !noalias !687, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !687
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #33, !noalias !687
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !687, !nonnull !5, !noundef !5
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !687
  store i64 %i.n, ptr %i.b, align 8, !noalias !687
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !687
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.t, align 8, !noalias !687
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 5, i8 noundef 0)
          to label %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity.exit unwind label %bb.d, !noalias !687

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %common.resume unwind label %bb.e, !noalias !687

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !687
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.w, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !687
  invoke void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks11copy_to_vec(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks.exit unwind label %bb.f

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound15PrefixedPayloadEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume unwind label %bb.g

_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks.exit: ; preds = %_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i8, ptr %i.y, align 8, !range !19, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ab = load i8, ptr %i.aa, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.z, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.ab, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load <2 x i16>, ptr %i.x, align 2
  store <2 x i16> %i.af, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB2_13RsaSigningKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i64, ptr %1, align 8, !range !20, !noundef !5
  switch i64 %i.i, label %default.unreachable34 [
    i64 0, label %bb.c
    i64 2, label %bb.e
    i64 1, label %bb.b
  ]

default.unreachable34:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 58, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.g, align 8, !range !8, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !13, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.k, label %bb.m, label %bb.n, !prof !14

bb.c:                                             ; preds = %bb.a
  %.sroa.010.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !5
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair8from_der(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef %.sroa.3.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !noundef !5
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  %.sroa.011.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.011.0 = load ptr, ptr %.sroa.011.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.312.0.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.312.0 = load i64, ptr %.sroa.312.0.in, align 8, !noundef !5
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair10from_pkcs8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.011.0, i64 noundef %.sroa.312.0)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.r, ptr %i.b, align 8, !noalias !693
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !693
  store ptr %i.b, ptr %i.a, align 8, !noalias !693
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11KeyRejectedNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !693
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.432.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %i.h, i64 31, i1 false)
  store i8 13, ptr %0, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 1, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.x, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !694
  %i.y = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 40, i64 noundef 8) #31, !noalias !694 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.h, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEE3newCs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #32
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aa

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEE3newCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.ac, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.n, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEE3newCs7ZUl82OSlxp_6rustls.exit
  ret void

bb.m:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.ad) #33
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = icmp samesign ugt i64 %i.m, 57
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.ae, ptr noundef nonnull align 1 dereferenceable(58) @17, i64 58, i1 false)
  store i8 13, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 58, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls7builderINtB5_13ConfigBuilderNtNtNtB7_6client11client_conn12ClientConfigNtB5_13WantsVersionsE22with_protocol_versionsB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.415 = alloca [31 x i8], align 1          ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.01.088 = phi ptr [ %i.r, %bb.c ], [ %i.m, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.088, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load i64, ptr %.sroa.01.088, align 8, !range !8, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12 = select i1 %i.t, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12
  store ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, ptr %i.j, align 8
  %i.u = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtCs7ZUl82OSlxp_6rustls8versions24SupportedProtocolVersionNtB5_13SliceContains14slice_containsBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.b unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.invoke, %bb.o, %bb.ar, %bb.n, %._crit_edge
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq ptr %i.r, %i.p
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %i.y, 576460752303423488
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.o, label %bb.n

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %._crit_edge
  %i.ab = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.af, align 8
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ae, 33
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ah, ptr noundef nonnull align 1 dereferenceable(34) @18, i64 34, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.aj, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 34, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 -4, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !727, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !727
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !730, !nonnull !5, !noundef !5
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !731
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao) #30
          to label %common.resume unwind label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i: ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !734, !nonnull !5, !noundef !5
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !735
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_.exit

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as) #30
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.at, %bb.ba, %.noexc63, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.an, %bb.k ], [ %i.er, %bb.at ], [ %.pn5170, %.noexc63 ], [ %.pn5170, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 23, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aw unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !13, !noundef !5 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.bc, align 8
  br label %.invoke

bb.r:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.bf = icmp ule i64 %i.ax, %i.bb
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bb, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %.idx96 = shl nuw nsw i64 %i.bm, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx96
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.loopexit81, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.r, %bb.x
  %.sroa.07.089 = phi ptr [ %i.bp, %bb.x ], [ %i.bk, %bb.r ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.089, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bq = load ptr, ptr %.sroa.07.089, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.07.089, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !align !11, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !5, !nonnull !5
  %i.bv = invoke { i16, i16 } %i.bu(ptr noundef nonnull %i.bq)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph122, %bb.w, %bb.t, %bb.s, %.lr.ph91, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #32
          to label %.thread unwind label %bb.av

bb.s:                                             ; preds = %.lr.ph91
  %i.bw = extractvalue { i16, i16 } %i.bv, 0
  %i.bx = extractvalue { i16, i16 } %i.bv, 1
  %i.by = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.bw, i16 %i.bx)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bz = zext i1 %i.by to i8                     ; 2 uses
  store i8 %i.bz, ptr %i.h, align 1
  %i.ca = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.cb = load i64, ptr %i.bh, align 8, !noundef !5
  %i.cc = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cb)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.pre = load i64, ptr %i.bh, align 8            ; 4 uses
  br i1 %i.cc, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.i, align 8, !range !18, !alias.scope !736, !noundef !5
  %i.ce = icmp eq i64 %.pre, %i.cd
  br i1 %i.ce, label %bb.w, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #30
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit: ; preds = %bb.w, %bb.v
  %i.cf = load ptr, ptr %i.bg, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre
  store i8 %i.bz, ptr %i.cg, align 1
  %i.ch = add i64 %.pre, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.bh, align 8, !alias.scope !736
  br label %bb.x

bb.x:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit, %bb.u
  %i.ci = phi i64 [ %i.ch, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit ], [ %.pre, %bb.u ] ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5
  %i.cl = icmp eq i64 %i.ci, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cm = icmp eq ptr %i.bp, %i.bn
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond, label %.loopexit81, label %.lr.ph91

.loopexit81:                                      ; preds = %bb.x, %bb.r
  %i.cn = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5 ; 2 uses
  %.idx97 = shl nuw nsw i64 %i.cr, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx97
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %.loopexit81
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph94, %bb.ap
  %.sroa.010.092 = phi ptr [ %i.cp, %.lr.ph94 ], [ %i.cv, %bb.ap ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.092, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cw = load i64, ptr %.sroa.010.092, align 8, !range !8, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.092, i64 8 ; 2 uses
  %i.cy = trunc nuw i64 %i.cw to i1
  br i1 %i.cy, label %bb.al, label %bb.am

._crit_edge95:                                    ; preds = %bb.ap, %.loopexit81
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %.idx.i = shl nuw nsw i64 %3, 3                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.da = icmp eq i64 %3, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge95
  %i.db = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1
  %xtraiter = and i64 %i.dd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.ab
  %.sroa.0.06.i.prol = phi ptr [ %.sroa.0.1.i.prol, %bb.ab ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.3.05.i.prol = phi ptr [ %.sroa.3.1.i.prol, %bb.ab ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.04.i.prol = phi ptr [ %i.de, %bb.ab ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ab ], [ 0, %.lr.ph.i.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.prol, i64 8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.01.04.i.prol, align 8, !alias.scope !737, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2, !range !22, !noalias !737, !noundef !5
  switch i16 %i.dg, label %bb.ab [
    i16 4, label %bb.aa
    i16 5, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph.i.prol
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.prol
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i.prol
  %.sroa.3.1.i.prol = phi ptr [ %.sroa.3.05.i.prol, %.lr.ph.i.prol ], [ %.sroa.3.05.i.prol, %bb.aa ], [ %i.df, %bb.z ] ; 3 uses
  %.sroa.0.1.i.prol = phi ptr [ %.sroa.0.06.i.prol, %.lr.ph.i.prol ], [ %i.df, %bb.aa ], [ %.sroa.0.06.i.prol, %bb.z ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !713

.lr.ph.i.prol.loopexit:                           ; preds = %bb.ab, %.lr.ph.i.preheader
  %.sroa.3.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.3.1.i.prol, %bb.ab ]
  %.sroa.0.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.0.1.i.prol, %bb.ab ]
  %.sroa.0.06.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.0.1.i.prol, %bb.ab ]
  %.sroa.3.05.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.3.1.i.prol, %bb.ab ]
  %.sroa.01.04.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.de, %bb.ab ]
  %i.dh = icmp ult i64 %i.db, 24
  br i1 %i.dh, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.ai
  %.sroa.0.06.i = phi ptr [ %.sroa.0.1.i.3, %bb.ai ], [ %.sroa.0.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.3.05.i = phi ptr [ %.sroa.3.1.i.3, %bb.ai ], [ %.sroa.3.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.01.04.i = phi ptr [ %i.dr, %bb.ai ], [ %.sroa.01.04.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8
  %i.dj = load ptr, ptr %.sroa.01.04.i, align 8, !alias.scope !737, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dk = load i16, ptr %i.dj, align 2, !range !22, !noalias !737, !noundef !5
  switch i16 %i.dk, label %.lr.ph.i.1 [
    i16 4, label %bb.aj
    i16 5, label %bb.ak
  ]

.lr.ph.i.1:                                       ; preds = %bb.ak, %bb.aj, %.lr.ph.i
  %.sroa.3.1.i = phi ptr [ %.sroa.3.05.i, %.lr.ph.i ], [ %.sroa.3.05.i, %bb.aj ], [ %i.dj, %bb.ak ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.06.i, %.lr.ph.i ], [ %i.dj, %bb.aj ], [ %.sroa.0.06.i, %bb.ak ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16
  %i.dm = load ptr, ptr %i.di, align 8, !alias.scope !737, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dn = load i16, ptr %i.dm, align 2, !range !22, !noalias !737, !noundef !5
  switch i16 %i.dn, label %.lr.ph.i.2 [
    i16 4, label %bb.ad
    i16 5, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

bb.ad:                                            ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.ad, %bb.ac, %.lr.ph.i.1
  %.sroa.3.1.i.1 = phi ptr [ %.sroa.3.1.i, %.lr.ph.i.1 ], [ %.sroa.3.1.i, %bb.ad ], [ %i.dm, %bb.ac ] ; 2 uses
  %.sroa.0.1.i.1 = phi ptr [ %.sroa.0.1.i, %.lr.ph.i.1 ], [ %i.dm, %bb.ad ], [ %.sroa.0.1.i, %bb.ac ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 24
  %i.dp = load ptr, ptr %i.dl, align 8, !alias.scope !737, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2, !range !22, !noalias !737, !noundef !5
  switch i16 %i.dq, label %.lr.ph.i.3 [
    i16 4, label %bb.af
    i16 5, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

bb.af:                                            ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.af, %bb.ae, %.lr.ph.i.2
  %.sroa.3.1.i.2 = phi ptr [ %.sroa.3.1.i.1, %.lr.ph.i.2 ], [ %.sroa.3.1.i.1, %bb.af ], [ %i.dp, %bb.ae ] ; 2 uses
  %.sroa.0.1.i.2 = phi ptr [ %.sroa.0.1.i.1, %.lr.ph.i.2 ], [ %i.dp, %bb.af ], [ %.sroa.0.1.i.1, %bb.ae ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.do, align 8, !alias.scope !737, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dt = load i16, ptr %i.ds, align 2, !range !22, !noalias !737, !noundef !5
  switch i16 %i.dt, label %bb.ai [
    i16 4, label %bb.ah
    i16 5, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.i.3
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.lr.ph.i.3
  %.sroa.3.1.i.3 = phi ptr [ %.sroa.3.1.i.2, %.lr.ph.i.3 ], [ %.sroa.3.1.i.2, %bb.ah ], [ %i.ds, %bb.ag ] ; 2 uses
  %.sroa.0.1.i.3 = phi ptr [ %.sroa.0.1.i.2, %.lr.ph.i.3 ], [ %i.ds, %bb.ah ], [ %.sroa.0.1.i.2, %bb.ag ] ; 2 uses
  %i.du = icmp eq ptr %i.dr, %i.cz
  br i1 %i.du, label %.loopexit, label %.lr.ph.i

bb.aj:                                            ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

bb.ak:                                            ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

bb.al:                                            ; preds = %bb.y
  %i.dv = load ptr, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, align 8, !nonnull !5, !noundef !5
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5
  br label %bb.an

bb.am:                                            ; preds = %bb.y
  %i.dx = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dz = phi i64 [ 1, %bb.am ], [ %i.dw, %bb.al ] ; 3 uses
  %i.ea = phi ptr [ %i.dy, %bb.am ], [ %i.dv, %bb.al ] ; 3 uses
  store ptr %i.ea, ptr %i.g, align 8
  store i64 %i.dz, ptr %i.cu, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.bg, align 8, !alias.scope !738, !nonnull !5
  %i.ed = load i64, ptr %i.bh, align 8, !alias.scope !738
  %.not.not.not.i.not120 = icmp samesign eq i64 %i.dz, 0
  br i1 %.not.not.not.i.not120, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit, label %.lr.ph122

bb.ao:                                            ; preds = %.noexc54
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ee, %i.eb
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.an, %bb.ao
  %i.ef = phi ptr [ %i.ee, %bb.ao ], [ %i.ea, %bb.an ] ; 2 uses
  %i.eg = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.lr.ph122
  br i1 %i.eg, label %bb.ap, label %bb.ao

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.pn = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %i.ei = load <2 x i16>, ptr %i.eh, align 8
  store <2 x i16> %i.ei, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsL_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_11CipherSuiteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.ej, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRSNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtBD_, ptr %.sroa.446.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ek = icmp eq ptr %i.cv, %i.cs
  br i1 %i.ek, label %._crit_edge95, label %bb.y

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.415.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.415, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.415.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.el, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.415, i64 31, i1 false)
  store i64 -4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread unwind label %bb.as

bb.ar:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %bb.ai, %._crit_edge95
  %.sroa.3.0.lcssa.i = phi ptr [ null, %._crit_edge95 ], [ %.sroa.3.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.3.1.i.3, %bb.ai ]
  %.sroa.0.0.lcssa.i = phi ptr [ null, %._crit_edge95 ], [ %.sroa.0.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.0.1.i.3, %bb.ai ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !5, !align !11, !noundef !5
  store i64 -3, ptr %0, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0.lcssa.i, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.3.0.lcssa.i, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eq = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.eq, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ep, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62 unwind label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.au

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62: ; preds = %.loopexit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_.exit

bb.au:                                            ; preds = %bb.at
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_.exit: ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62
  ret void

bb.av:                                            ; preds = %bb.ba, %bb.az, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aw:                                            ; preds = %bb.o
  %i.eu = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !13, !noundef !5 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ev, label %bb.ax, label %bb.ay, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load i64, ptr %i.ey, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.q, %bb.ax
  %i.fa = phi i64 [ %i.ex, %bb.ax ], [ %i.bb, %bb.q ], [ %i.ae, %bb.f ]
  %i.fb = phi i64 [ %i.ez, %bb.ax ], [ %i.bd, %bb.q ], [ %i.ag, %bb.f ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fa, i64 %i.fb) #33
          to label %.cont unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fc = load ptr, ptr %i.ey, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.ex, 22
  call void @llvm.assume(i1 %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.fc, ptr noundef nonnull align 1 dereferenceable(23) @20, i64 23, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.fe, align 8
  %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fc, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 23, ptr %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  store i64 -4, ptr %0, align 8
  br label %bb.h

.thread:                                          ; preds = %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn5170 = phi { ptr, i32 } [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.em, %bb.aq ], [ %lpad.loopexit.split-lp134, %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCs7ZUl82OSlxp_6rustls7builderINtB5_13ConfigBuilderNtNtNtB7_6server11server_conn12ServerConfigNtB5_13WantsVersionsE22with_protocol_versionsB7_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.088, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load i64, ptr %.sroa.01.088, align 8, !range !8, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12 = select i1 %i.t, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12
  store ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, ptr %i.j, align 8
  %i.u = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtCs7ZUl82OSlxp_6rustls8versions24SupportedProtocolVersionNtB5_13SliceContains14slice_containsBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.b unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %.invoke, %bb.o, %bb.ar, %bb.n, %._crit_edge
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq ptr %i.r, %i.p
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %i.y, 576460752303423488
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.o, label %bb.n

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %._crit_edge
  %i.ab = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.af, align 8
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.ae, 33
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ah, ptr noundef nonnull align 1 dereferenceable(34) @18, i64 34, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.aj, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 34, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 -4, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.ay, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.ak = load ptr, ptr %1, align 8, !alias.scope !777, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !777
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !780, !nonnull !5, !noundef !5
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !781
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ao) #30
          to label %common.resume unwind label %bb.m

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i: ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !784, !nonnull !5, !noundef !5
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !785
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_.exit

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as) #30
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.at, %bb.ba, %.noexc63, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.an, %bb.k ], [ %i.er, %bb.at ], [ %.pn5170, %.noexc63 ], [ %.pn5170, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ax, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 23, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aw unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !13, !noundef !5 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.bc, align 8
  br label %.invoke

bb.r:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.bf = icmp ule i64 %i.ax, %i.bb
  call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bb, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %.idx96 = shl nuw nsw i64 %i.bm, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx96
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.loopexit81, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.r, %bb.x
  %.sroa.07.089 = phi ptr [ %i.bp, %bb.x ], [ %i.bk, %bb.r ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.089, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bq = load ptr, ptr %.sroa.07.089, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.07.089, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !align !11, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !5, !nonnull !5
  %i.bv = invoke { i16, i16 } %i.bu(ptr noundef nonnull %i.bq)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph122, %bb.w, %bb.t, %bb.s, %.lr.ph91, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #32
          to label %.thread unwind label %bb.av

bb.s:                                             ; preds = %.lr.ph91
  %i.bw = extractvalue { i16, i16 } %i.bv, 0
  %i.bx = extractvalue { i16, i16 } %i.bv, 1
  %i.by = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.bw, i16 %i.bx)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bz = zext i1 %i.by to i8                     ; 2 uses
  store i8 %i.bz, ptr %i.h, align 1
  %i.ca = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.cb = load i64, ptr %i.bh, align 8, !noundef !5
  %i.cc = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cb)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.pre = load i64, ptr %i.bh, align 8            ; 4 uses
  br i1 %i.cc, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.i, align 8, !range !18, !alias.scope !786, !noundef !5
  %i.ce = icmp eq i64 %.pre, %i.cd
  br i1 %i.ce, label %bb.w, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #30
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit: ; preds = %bb.w, %bb.v
  %i.cf = load ptr, ptr %i.bg, align 8, !alias.scope !786, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.pre
  store i8 %i.bz, ptr %i.cg, align 1
  %i.ch = add i64 %.pre, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.bh, align 8, !alias.scope !786
  br label %bb.x

bb.x:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit, %bb.u
  %i.ci = phi i64 [ %i.ch, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_.exit ], [ %.pre, %bb.u ] ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.cj)
  %i.ck = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5
  %i.cl = icmp eq i64 %i.ci, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cm = icmp eq ptr %i.bp, %i.bn
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond, label %.loopexit81, label %.lr.ph91

.loopexit81:                                      ; preds = %bb.x, %bb.r
  %i.cn = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5 ; 2 uses
  %.idx97 = shl nuw nsw i64 %i.cr, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx97
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %.loopexit81
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph94, %bb.ap
  %.sroa.010.092 = phi ptr [ %i.cp, %.lr.ph94 ], [ %i.cv, %bb.ap ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.092, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cw = load i64, ptr %.sroa.010.092, align 8, !range !8, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.010.092, i64 8 ; 2 uses
  %i.cy = trunc nuw i64 %i.cw to i1
  br i1 %i.cy, label %bb.al, label %bb.am

._crit_edge95:                                    ; preds = %bb.ap, %.loopexit81
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %.idx.i = shl nuw nsw i64 %3, 3                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.da = icmp eq i64 %3, 0
  br i1 %i.da, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge95
  %i.db = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1
  %xtraiter = and i64 %i.dd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.ab
  %.sroa.0.06.i.prol = phi ptr [ %.sroa.0.1.i.prol, %bb.ab ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.3.05.i.prol = phi ptr [ %.sroa.3.1.i.prol, %bb.ab ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.04.i.prol = phi ptr [ %i.de, %bb.ab ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.ab ], [ 0, %.lr.ph.i.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.prol, i64 8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.01.04.i.prol, align 8, !alias.scope !787, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2, !range !22, !noalias !787, !noundef !5
  switch i16 %i.dg, label %bb.ab [
    i16 4, label %bb.aa
    i16 5, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph.i.prol
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.prol
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i.prol
  %.sroa.3.1.i.prol = phi ptr [ %.sroa.3.05.i.prol, %.lr.ph.i.prol ], [ %.sroa.3.05.i.prol, %bb.aa ], [ %i.df, %bb.z ] ; 3 uses
  %.sroa.0.1.i.prol = phi ptr [ %.sroa.0.06.i.prol, %.lr.ph.i.prol ], [ %i.df, %bb.aa ], [ %.sroa.0.06.i.prol, %bb.z ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !763

.lr.ph.i.prol.loopexit:                           ; preds = %bb.ab, %.lr.ph.i.preheader
  %.sroa.3.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.3.1.i.prol, %bb.ab ]
  %.sroa.0.1.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.0.1.i.prol, %bb.ab ]
  %.sroa.0.06.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.0.1.i.prol, %bb.ab ]
  %.sroa.3.05.i.unr = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.3.1.i.prol, %bb.ab ]
  %.sroa.01.04.i.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.de, %bb.ab ]
  %i.dh = icmp ult i64 %i.db, 24
  br i1 %i.dh, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.ai
  %.sroa.0.06.i = phi ptr [ %.sroa.0.1.i.3, %bb.ai ], [ %.sroa.0.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.3.05.i = phi ptr [ %.sroa.3.1.i.3, %bb.ai ], [ %.sroa.3.05.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.01.04.i = phi ptr [ %i.dr, %bb.ai ], [ %.sroa.01.04.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8
  %i.dj = load ptr, ptr %.sroa.01.04.i, align 8, !alias.scope !787, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dk = load i16, ptr %i.dj, align 2, !range !22, !noalias !787, !noundef !5
  switch i16 %i.dk, label %.lr.ph.i.1 [
    i16 4, label %bb.aj
    i16 5, label %bb.ak
  ]

.lr.ph.i.1:                                       ; preds = %bb.ak, %bb.aj, %.lr.ph.i
  %.sroa.3.1.i = phi ptr [ %.sroa.3.05.i, %.lr.ph.i ], [ %.sroa.3.05.i, %bb.aj ], [ %i.dj, %bb.ak ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.06.i, %.lr.ph.i ], [ %i.dj, %bb.aj ], [ %.sroa.0.06.i, %bb.ak ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 16
  %i.dm = load ptr, ptr %i.di, align 8, !alias.scope !787, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dn = load i16, ptr %i.dm, align 2, !range !22, !noalias !787, !noundef !5
  switch i16 %i.dn, label %.lr.ph.i.2 [
    i16 4, label %bb.ad
    i16 5, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

bb.ad:                                            ; preds = %.lr.ph.i.1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.ad, %bb.ac, %.lr.ph.i.1
  %.sroa.3.1.i.1 = phi ptr [ %.sroa.3.1.i, %.lr.ph.i.1 ], [ %.sroa.3.1.i, %bb.ad ], [ %i.dm, %bb.ac ] ; 2 uses
  %.sroa.0.1.i.1 = phi ptr [ %.sroa.0.1.i, %.lr.ph.i.1 ], [ %i.dm, %bb.ad ], [ %.sroa.0.1.i, %bb.ac ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 24
  %i.dp = load ptr, ptr %i.dl, align 8, !alias.scope !787, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2, !range !22, !noalias !787, !noundef !5
  switch i16 %i.dq, label %.lr.ph.i.3 [
    i16 4, label %bb.af
    i16 5, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

bb.af:                                            ; preds = %.lr.ph.i.2
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.af, %bb.ae, %.lr.ph.i.2
  %.sroa.3.1.i.2 = phi ptr [ %.sroa.3.1.i.1, %.lr.ph.i.2 ], [ %.sroa.3.1.i.1, %bb.af ], [ %i.dp, %bb.ae ] ; 2 uses
  %.sroa.0.1.i.2 = phi ptr [ %.sroa.0.1.i.1, %.lr.ph.i.2 ], [ %i.dp, %bb.af ], [ %.sroa.0.1.i.1, %bb.ae ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.do, align 8, !alias.scope !787, !nonnull !5, !align !21, !noundef !5 ; 3 uses
  %i.dt = load i16, ptr %i.ds, align 2, !range !22, !noalias !787, !noundef !5
  switch i16 %i.dt, label %bb.ai [
    i16 4, label %bb.ah
    i16 5, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.i.3
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.lr.ph.i.3
  %.sroa.3.1.i.3 = phi ptr [ %.sroa.3.1.i.2, %.lr.ph.i.3 ], [ %.sroa.3.1.i.2, %bb.ah ], [ %i.ds, %bb.ag ] ; 2 uses
  %.sroa.0.1.i.3 = phi ptr [ %.sroa.0.1.i.2, %.lr.ph.i.3 ], [ %i.ds, %bb.ah ], [ %.sroa.0.1.i.2, %bb.ag ] ; 2 uses
  %i.du = icmp eq ptr %i.dr, %i.cz
  br i1 %i.du, label %.loopexit, label %.lr.ph.i

bb.aj:                                            ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

bb.ak:                                            ; preds = %.lr.ph.i
  br label %.lr.ph.i.1

bb.al:                                            ; preds = %bb.y
  %i.dv = load ptr, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, align 8, !nonnull !5, !noundef !5
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake27ALL_KEY_EXCHANGE_ALGORITHMS, i64 8), align 8, !noundef !5
  br label %bb.an

bb.am:                                            ; preds = %bb.y
  %i.dx = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dz = phi i64 [ 1, %bb.am ], [ %i.dw, %bb.al ] ; 3 uses
  %i.ea = phi ptr [ %i.dy, %bb.am ], [ %i.dv, %bb.al ] ; 3 uses
  store ptr %i.ea, ptr %i.g, align 8
  store i64 %i.dz, ptr %i.cu, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.bg, align 8, !alias.scope !788, !nonnull !5
  %i.ed = load i64, ptr %i.bh, align 8, !alias.scope !788
  %.not.not.not.i.not120 = icmp samesign eq i64 %i.dz, 0
  br i1 %.not.not.not.i.not120, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit, label %.lr.ph122

bb.ao:                                            ; preds = %.noexc54
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ee, %i.eb
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.an, %bb.ao
  %i.ef = phi ptr [ %i.ee, %bb.ao ], [ %i.ea, %bb.an ] ; 2 uses
  %i.eg = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %.lr.ph122
  br i1 %i.eg, label %bb.ap, label %bb.ao

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.pn = load ptr, ptr %i.cx, align 8, !nonnull !5, !align !11, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn, i64 72
  %i.ei = load <2 x i16>, ptr %i.eh, align 8
  store <2 x i16> %i.ei, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsL_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_11CipherSuiteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.ej, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRSNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtBD_, ptr %.sroa.446.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ek = icmp eq ptr %i.cv, %i.cs
  br i1 %i.ek, label %._crit_edge95, label %bb.y

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.415.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.415, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.415.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.el, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.415, i64 31, i1 false)
  store i64 -4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread unwind label %bb.as

bb.ar:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7ZUl82OSlxp_6rustls.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %bb.ai, %._crit_edge95
  %.sroa.3.0.lcssa.i = phi ptr [ null, %._crit_edge95 ], [ %.sroa.3.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.3.1.i.3, %bb.ai ]
  %.sroa.0.0.lcssa.i = phi ptr [ null, %._crit_edge95 ], [ %.sroa.0.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.0.1.i.3, %bb.ai ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !nonnull !5, !align !11, !noundef !5
  store i64 -3, ptr %0, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0.lcssa.i, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.3.0.lcssa.i, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eq = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.eq, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ep, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62 unwind label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.au

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62: ; preds = %.loopexit
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_.exit

bb.au:                                            ; preds = %bb.at
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_.exit: ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmEEB1e_.exit62
  ret void

bb.av:                                            ; preds = %bb.ba, %bb.az, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aw:                                            ; preds = %bb.o
  %i.eu = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !13, !noundef !5 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ev, label %bb.ax, label %bb.ay, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load i64, ptr %i.ey, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.f, %bb.q, %bb.ax
  %i.fa = phi i64 [ %i.ex, %bb.ax ], [ %i.bb, %bb.q ], [ %i.ae, %bb.f ]
  %i.fb = phi i64 [ %i.ez, %bb.ax ], [ %i.bd, %bb.q ], [ %i.ag, %bb.f ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fa, i64 %i.fb) #33
          to label %.cont unwind label %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fc = load ptr, ptr %i.ey, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fd = icmp samesign ugt i64 %i.ex, 22
  call void @llvm.assume(i1 %i.fd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.fc, ptr noundef nonnull align 1 dereferenceable(23) @20, i64 23, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 13, ptr %i.fe, align 8
  %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fc, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 23, ptr %.sroa.45.sroa.5.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  store i64 -4, ptr %0, align 8
  br label %bb.h

.thread:                                          ; preds = %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn5170 = phi { ptr, i32 } [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.em, %bb.aq ], [ %lpad.loopexit.split-lp134, %.thread77.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE25with_client_cert_resolver:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %3, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.ag, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @23, ptr %i.cd, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.by, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.cf = zext i1 %i.s to i8
  store i8 %i.cf, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.ao, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.aq, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.u, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x ptr> %i.aa, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %i.ac, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ae, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bs, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.bi, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 341
  store i8 0, ptr %i.cp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.z:                                             ; preds = %bb.x, %bb.m
  unreachable

bb.aa:                                            ; preds = %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.v, %bb.j, %bb.f, %.body, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_.exit
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.cr = load ptr, ptr %i.h, align 8, !alias.scope !874, !nonnull !5, !noundef !5
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !874
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_.exit

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_.exit unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_.exit, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.cu = load ptr, ptr %i.j, align 8, !alias.scope !877, !nonnull !5, !noundef !5
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 release, align 8, !noalias !877
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_.exit

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_.exit unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.cx = load ptr, ptr %i.k, align 8, !alias.scope !881, !nonnull !5, !noundef !5
  %i.cy = atomicrmw add ptr %i.cx, i64 -1 release, align 8, !noalias !881
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_.exit

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_.exit unwind label %bb.aa

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.da = load ptr, ptr %i.m, align 8, !alias.scope !884, !nonnull !5, !noundef !5
  %i.db = atomicrmw add ptr %i.da, i64 -1 release, align 8, !noalias !884
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.af, label %.noexc26

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #30
          to label %.noexc26 unwind label %bb.aa

bb.ag:                                            ; preds = %.noexc26._crit_edge, %.thread
  %i.dd = phi ptr [ %2, %.thread ], [ %.pre49, %.noexc26._crit_edge ]
  %.pn13.pn.pn.pn47 = phi { ptr, i32 } [ %i.t, %.thread ], [ %.pn13.pn.pn, %.noexc26._crit_edge ] ; 2 uses
  %.sroa.04.044 = phi i1 [ true, %.thread ], [ %.sroa.04.1, %.noexc26._crit_edge ] ; 2 uses
  %.sroa.06.042 = phi i1 [ true, %.thread ], [ false, %.noexc26._crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.de = atomicrmw add ptr %i.dd, i64 -1 release, align 8, !noalias !863
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %.noexc27

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #30
          to label %.noexc27 unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit31: ; preds = %.noexc27, %bb.aj, %.noexc26
  %.pn13.pn.pn.pn48 = phi { ptr, i32 } [ %.pn13.pn.pn, %.noexc26 ], [ %.pn13.pn.pn.pn47, %bb.aj ], [ %.pn13.pn.pn.pn47, %.noexc27 ]
  %.sroa.04.045 = phi i1 [ %.sroa.04.1, %.noexc26 ], [ %.sroa.04.044, %bb.aj ], [ %.sroa.04.044, %.noexc27 ]
  %.sroa.06.043 = phi i1 [ false, %.noexc26 ], [ %.sroa.06.042, %bb.aj ], [ %.sroa.06.042, %.noexc27 ]
  %i.dg = load i64, ptr %1, align 8, !range !9, !alias.scope !887, !noundef !5
  %i.dh = icmp eq i64 %i.dg, -3
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit31
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit unwind label %bb.aa

.noexc27:                                         ; preds = %bb.ah, %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !890, !nonnull !5, !noundef !5
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !890
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.aj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit31

bb.aj:                                            ; preds = %.noexc27
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.di) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit31 unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_.exit31, %bb.ai
  br i1 %.sroa.06.043, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33: ; preds = %bb.ak, %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit
  br i1 %.sroa.04.045, label %bb.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit35

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.dm = load ptr, ptr %i.p, align 8, !alias.scope !893, !nonnull !5, !noundef !5
  %i.dn = atomicrmw add ptr %i.dm, i64 -1 release, align 8, !noalias !893
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33 unwind label %bb.aa

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit35: ; preds = %bb.am, %bb.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33
  resume { ptr, i32 } %.pn13.pn.pn.pn48

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit33
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !896, !nonnull !5, !noundef !5
  %i.dr = atomicrmw add ptr %i.dq, i64 -1 release, align 8, !noalias !896
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit35

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dp) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_.exit35 unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_21OutboundOpaqueMessage18into_plain_message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load <2 x i16>, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i8, ptr %i.d, align 4, !range !19, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !899, !noundef !5 ; 4 uses
  %i.j = icmp ult i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %bb.d, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound21OutboundOpaqueMessageEBJ_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #32
          to label %common.resume unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !899, !nonnull !5, !noundef !5
  %i.n = add i64 %i.i, -5                         ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #33
          to label %bb.l unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp ule i64 %i.n, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.e, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.g, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i16> %i.c, ptr %i.z, align 8
  store i64 %i.s, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound21OutboundOpaqueMessageEBJ_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound21OutboundOpaqueMessageEBJ_.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.k:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  br label %bb.h

bb.l:                                             ; preds = %bb.f
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_21OutboundOpaqueMessage4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound26read_opaque_message_header(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) ; 5 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.a to i16 ; 2 uses
  %.sroa.428.0.extract.shift = lshr i64 %i.a, 16  ; 2 uses
  %.sroa.630.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.630.0.extract.trunc = trunc i64 %.sroa.630.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.a, 40
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %i.b = icmp eq i16 %.sroa.027.0.extract.trunc, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.428.0.extract.trunc = trunc i64 %.sroa.428.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.428.0.extract.trunc, ptr %i.c, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.831.0.extract.shift = lshr i64 %i.a, 48
  %i.d = tail call { ptr, i64 } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader4take(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.831.0.extract.shift) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %tr.sh.diff = trunc i64 %.sroa.428.0.extract.shift to i16
  tail call void @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.027.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %tr.sh.diff, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.630.0.extract.trunc, ptr %.sroa.620.0..sroa_idx, align 4
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.721.0..sroa_idx, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_21OutboundOpaqueMessage6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc i64 %i.e to i16
  %i.h = add i16 %i.g, -5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i8, ptr %i.i, align 4, !range !19, !noundef !5
  switch i8 %i.j, label %default.unreachable11 [
    i8 0, label %bb.g
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
  ]

default.unreachable11:                            ; preds = %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.l = load i8, ptr %i.k, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.l, %bb.f ], [ 21, %bb.b ], [ 22, %bb.c ], [ 23, %bb.d ], [ 24, %bb.e ], [ 20, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 3 uses
  store i8 %.sroa.0.0, ptr %i.p, align 1
  %i.q = icmp ugt i64 %i.n, 2
  br i1 %i.q, label %bb.l, label %.invoke, !prof !900

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #33
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.invoke, %bb.x, %bb.v, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %bb.aa unwind label %bb.z

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i16, ptr %i.t, align 8, !range !22, !noundef !5
  switch i16 %i.u, label %default.unreachable11 [
    i16 0, label %bb.v
    i16 1, label %bb.m
    i16 2, label %bb.n
    i16 3, label %bb.o
    i16 4, label %bb.p
    i16 5, label %bb.q
    i16 6, label %bb.r
    i16 7, label %bb.s
    i16 8, label %bb.t
    i16 9, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  br label %bb.v

bb.q:                                             ; preds = %bb.l
  br label %bb.v

bb.r:                                             ; preds = %bb.l
  br label %bb.v

bb.s:                                             ; preds = %bb.l
  br label %bb.v

bb.t:                                             ; preds = %bb.l
  br label %bb.v

bb.u:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.w = load i16, ptr %i.v, align 2
  %i.x = tail call i16 @llvm.bswap.i16(i16 %i.w)
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.06.0 = phi i16 [ %i.x, %bb.u ], [ 3, %bb.m ], [ 259, %bb.n ], [ 515, %bb.o ], [ 771, %bb.p ], [ 1027, %bb.q ], [ -2, %bb.r ], [ -514, %bb.s ], [ -770, %bb.t ], [ 512, %bb.l ]
  store i16 %.sroa.06.0, ptr %i.b, align 2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.s, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %bb.w unwind label %bb.j

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = icmp ugt i64 %i.n, 4
  br i1 %i.y, label %bb.x, label %.invoke, !prof !900

.invoke:                                          ; preds = %bb.w, %bb.h
  %i.z = phi i64 [ 1, %bb.h ], [ 3, %bb.w ]
  %i.aa = phi i64 [ 3, %bb.h ], [ 5, %bb.w ]
  %i.ab = phi ptr [ @26, %bb.h ], [ @28, %bb.w ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #33
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = call i16 @llvm.bswap.i16(i16 %i.h)
  store i16 %i.ad, ptr %i.a, align 2
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.ac, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29)
          to label %bb.y unwind label %bb.j

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.z:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.aa:                                            ; preds = %bb.j
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey10keys_match(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [248 x i8], align 8               ; 8 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.d = alloca [248 x i8], align 8               ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !924, !invariant.load !5
  %i.m = add nsw i64 %i.l, -1
  %i.n = and i64 %i.m, -16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !5, !nonnull !5
  call void %i.r(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.p) #34
  %i.s = load i64, ptr %i.e, align 8, !range !6, !noundef !5
  %.not = icmp eq i64 %i.s, -2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !925, !noundef !5
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !925, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !926
  store i8 4, ptr %i.a, align 8, !noalias !926
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
          to label %bb.h unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 20, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.aa

bb.e:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.x, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #32
          to label %common.resume unwind label %bb.ab

bb.f:                                             ; preds = %bb.c, %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !926
  %.sroa.860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.860.0.copyload = load ptr, ptr %.sroa.860.0..sroa_idx, align 8, !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !926
  store i8 4, ptr %0, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.860.0.copyload, ptr %.sroa.534.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !926
  invoke void @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtB5_17ParsedCertificateINtNtCsj6eKBz9Db1c_4core7convert7TryFromRNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerE8try_from(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.c, align 8, !range !6, !noundef !5 ; 3 uses
  %i.z = icmp eq i64 %i.y, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.538.0..sroa_idx, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 %i.y, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtB5_17ParsedCertificate23subject_public_key_info(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.d)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki6verify17ParsedCertificateEBH_(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d) #32
          to label %bb.e unwind label %bb.ab
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey8from_der:bb.a

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.s, %bb.g ], [ %i.ab, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = load <2 x ptr>, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store <2 x ptr> %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 -1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey10keys_match(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #32
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  switch i8 %i.t, label %.thread43 [
    i8 -1, label %.thread
    i8 20, label %bb.i
  ]

.thread:                                          ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !10, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %.thread43

.thread43:                                        ; preds = %bb.h, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.k, %.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
  br label %bb.j

bb.l:                                             ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit
  ret void

bb.m:                                             ; preds = %bb.n, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #32
          to label %common.resume unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %1, 5                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.m, align 8
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 5, i8 noundef 0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload17extend_from_slice(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !933, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !933, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !933
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !933
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload18extend_from_chunks(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks11copy_to_vec(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload8truncate(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 5
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKey3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i16 noundef range(i16 3, 8) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = load i64, ptr %1, align 8, !range !20, !noundef !5
  switch i64 %i.e, label %default.unreachable6 [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 0, label %bb.k
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !5
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair20from_private_key_der(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0)
  %i.f = load ptr, ptr %i.d, align 8, !noundef !5
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.32.0.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.32.0 = load i64, ptr %.sroa.32.0.in, align 8, !noundef !5
  call void @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair10from_pkcs8(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.32.0)
  %i.h = load ptr, ptr %i.c, align 8, !noundef !5
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !936
  %i.l = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 64, i64 noundef 8) #31, !noalias !936 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #32
  resume { ptr, i32 } %i.n

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %0, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.k:                                             ; preds = %bb.a, %bb.d, %bb.i, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls.exit
  %.sink = phi i16 [ %2, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer19append_limited_copy(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = load ptr, ptr %1, align 8, !noundef !5   ; 3 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 6 uses
  %i.j = sub i64 %i.g, %i.i
  %.sroa.0.0 = select i1 %.not, i64 %i.i, i64 %i.j ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.k = load i64, ptr %0, align 8, !range !8, !alias.scope !947, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !947, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !949
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4iterCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
  %i.p = call noundef i64 @_RINvXs2_NtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iterINtB6_4IterINtNtBc_3vec3VechEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2y_14ChunkVecBuffer3len0EB2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !949
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !949, !noundef !5
  %i.s = sub i64 %i.p, %i.r
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 %i.s)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.0.0)
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit.exit

_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %..i.i, %bb.b ], [ %.sroa.0.0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit.exit
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !951, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.0.0.i, %i.i
  %..i.i1 = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.w) ; 2 uses
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %..i.i1, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !950
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.g, ptr %.sroa.612.0..sroa_idx.i, align 8, !alias.scope !950
  br label %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at.exit

bb.d:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit.exit
  %i.x = load ptr, ptr %i.u, align 8, !alias.scope !951, !nonnull !5, !noundef !5 ; 2 uses
  %..i16.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %.sroa.0.0.i) ; 3 uses
  %i.y = sub nuw i64 %i.i, %..i16.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %..i16.i
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at.exit

_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at.exit: ; preds = %bb.c, %bb.d
  %.sink19.i = phi i64 [ %i.aa, %bb.d ], [ %i.v, %bb.c ]
  %.sink18.i = phi i64 [ %..i16.i, %bb.d ], [ %i.i, %bb.c ]
  %.sink.i = phi i64 [ %i.ab, %bb.d ], [ %i.v, %bb.c ]
  %..i.sink.i = phi i64 [ %i.y, %bb.d ], [ %..i.i1, %bb.c ]
  store ptr %i.e, ptr %i.c, align 8, !alias.scope !950
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink19.i, ptr %i.ac, align 8, !alias.scope !950
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sink18.i, ptr %i.ad, align 8, !alias.scope !950
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.ae, align 8, !alias.scope !950
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sink.i, ptr %i.af, align 8, !alias.scope !950
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %..i.sink.i, ptr %i.ag, align 8, !alias.scope !950
  call void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks6to_vec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !952, !noundef !5 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !954
  %i.am = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE13push_back_mutCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !952 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !953
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append.exit

bb.f:                                             ; preds = %_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.g, !noalias !954

bb.g:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.h, !noalias !954

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !954
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.an

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !954
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append.exit

_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer19consume_first_chunk(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !957, !noundef !5
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !957, !noundef !5 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !range !18, !alias.scope !957, !noundef !5 ; 2 uses
  %.not8.i = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not8.i, i64 0, i64 %i.f
  %.sroa.02.0.i = sub nuw i64 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !957, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.02.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !957, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !957, !noundef !5 ; 4 uses
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw i64 %i.n, %i.l
  br label %_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #35, !noalias !957
  unreachable

_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk.exit: ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ]
  %.not5 = icmp ugt i64 %1, %.sroa.0.0
  br i1 %.not5, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @51, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #35
  unreachable

bb.f:                                             ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk.exit
  tail call fastcc void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer4read(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = icmp eq i64 %2, 0
  %i.c = load i64, ptr %i.a, align 8
  %i.d = icmp eq i64 %i.c, 0
  %or.cond22 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit
  %.sroa.04.023 = phi i64 [ 0, %.lr.ph ], [ %i.z, %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit ] ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !range !18, !noundef !5 ; 2 uses
  %.not19 = icmp ult i64 %i.i, %i.j
  %i.k = select i1 %.not19, i64 0, i64 %i.j
  %.sroa.012.0 = sub nuw i64 %i.i, %i.k
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.012.0 ; 2 uses
  %i.n = load i64, ptr %i.h, align 8, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = sub nuw i64 %i.p, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  %i.v = sub nuw nsw i64 %2, %.sroa.04.023
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.023 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 range(i64 0, -9223372036854775808) %i.v) ; 5 uses
  %i.x = icmp eq i64 %..i.i, 1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.u, align 1, !noalias !962, !noundef !5
  store i8 %i.y, ptr %i.w, align 1, !alias.scope !961
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.w, i64 noundef %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106), !noalias !963
  br label %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit

_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit: ; preds = %bb.e, %bb.f
  tail call fastcc void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %..i.i)
  %i.z = add nuw i64 %..i.i, %.sroa.04.023        ; 3 uses
  %i.aa = icmp uge i64 %i.z, %2
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read.exit
  %i.ad = inttoptr i64 %i.z to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.04.0.lcssa = phi ptr [ null, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  %i.ae = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %.sroa.04.0.lcssa, 1
  ret { i64, ptr } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !range !18, !noundef !5 ; 2 uses
  %.not8 = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not8, i64 0, i64 %i.f
  %.sroa.02.0 = sub nuw i64 %i.e, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.sroa.02.0 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.3.0 = phi i64 [ %i.t, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.u, %bb.d ], [ null, %bb.a ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.q

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = sub nuw i64 %i.n, %i.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.l, i64 noundef %i.n, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7consume(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = add i64 %i.c, %1
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %.not6 = icmp eq i64 %i.g, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit
  %i.j = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !range !18, !noundef !5 ; 2 uses
  %.not5 = icmp ult i64 %i.j, %i.k
  %i.l = select i1 %.not5, i64 0, i64 %i.k
  %.sroa.01.0 = sub nuw i64 %i.j, %i.l
  %i.m = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.01.0
  %i.o = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.o, %i.q
  br i1 %i.s, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit, %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw i64 %i.o, %i.q
  store i64 %i.t, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE9pop_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.u = load i64, ptr %i.a, align 8, !range !4, !alias.scope !966, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.w

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load i64, ptr %i.f, align 8, !noundef !5
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !969
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4iterCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  %i.g = call noundef i64 @_RINvXs2_NtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iterINtB6_4IterINtNtBc_3vec3VechEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4foldjNCNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2y_14ChunkVecBuffer3len0EB2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !969
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !969, !noundef !5
  %i.j = sub i64 %i.g, %i.i
  %i.k = icmp ugt i64 %i.j, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [1024 x i8], align 8              ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ 0, %bb.b ], [ %i.z, %bb.c ]    ; 5 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %i.n, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.z, 64
  br i1 %exitcond.not.3, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !976
  call void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEE4iterCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a), !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !976
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 5 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.432.0.copyload = load ptr, ptr %.sroa.432.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.733.0.copyload = load i64, ptr %.sroa.733.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 5 uses
  %i.ab = icmp ult i64 %.sroa.733.0.copyload, %.sroa.9.0.copyload
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph: ; preds = %bb.d
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.432.0.copyload) ]
  %i.ac = ptrtoint ptr %.sroa.5.0.copyload to i64
  %i.ad = ptrtoint ptr %.sroa.432.0.copyload to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24                ; 8 uses
  %i.ag = icmp ult i64 %.sroa.733.0.copyload, %i.af
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %.sroa.733.0.copyload
  %i.ai = sub nuw i64 %.sroa.733.0.copyload, %i.af
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai
  %.sroa.0.0.i.i.peel = select i1 %i.ag, ptr %i.ah, ptr %i.aj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.peel) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.peel, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 4 uses
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %bb.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.733.0.copyload ; 2 uses
  %i.ao = add nuw i64 %.sroa.733.0.copyload, 1    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.peel, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = sub nuw i64 %i.al, %i.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.m
  store ptr %i.as, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ar, ptr %i.at, align 8
  %exitcond46.peel.not = icmp eq i64 %i.ao, %.sroa.9.0.copyload
  br i1 %exitcond46.peel.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader: ; preds = %bb.e
  %i.au = add i64 %.sroa.9.0.copyload, -2
  %i.av = sub i64 %.sroa.733.0.copyload, %.sroa.9.0.copyload
  %i.aw = and i64 %i.av, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtBb_2io8io_slice7IoSliceEINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB22_3vec3VechEEEINtB5_7ZipImplBW_B1T_E4nextCs7ZUl82OSlxp_6rustls.exit.peel.next.preheader
  %i.ax = icmp ult i64 %i.ao, %i.af
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.432.0.copyload, i64 %i.ao
  %i.az = sub nuw i64 %i.ao, %i.af
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.az
  %.sroa.0.0.i.i.prol = select i1 %i.ax, ptr %i.ay, ptr %i.ba ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.prol) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.prol, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload, i64 %i.ao ; 2 uses
  %i.be = add i64 %.sroa.733.0.copyload, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.prol, i64 8
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks6to_vec:bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (32, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !5   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = add i64 %i.d, %2
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %..i, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %..i16 = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 3 uses
  %i.j = sub nuw i64 %i.d, %..i16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %..i16
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink19 = phi i64 [ %i.l, %bb.c ], [ %i.e, %bb.b ]
  %.sink18 = phi i64 [ %..i16, %bb.c ], [ %i.d, %bb.b ]
  %.sink = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ]
  %..i.sink = phi i64 [ %i.j, %bb.c ], [ %..i, %bb.b ]
  store ptr %i.a, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink19, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink18, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %..i.sink, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_u16(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 2) #34 ; 2 uses
  %.sroa.01.0.copyload = load i16, ptr %i.a, align 2
  %i.e = call i16 @llvm.bswap.i16(i16 %.sroa.01.0.copyload)
  %.sroa.3.0 = select i1 %i.d, i16 undef, i16 %i.e
  %.sroa.0.0 = zext i1 %i.d to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.g = insertvalue { i16, i16 } %i.f, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_u32(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4) #34 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %i.a, align 4
  %i.e = call i32 @llvm.bswap.i32(i32 %.sroa.01.0.copyload)
  %.sroa.3.0 = select i1 %i.d, i32 undef, i32 %i.e
  %.sroa.0.0 = zext i1 %i.d to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs7ZUl82OSlxp_6rustls4rand10random_vec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1118
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1118
  %i.c = load i64, ptr %i.a, align 8, !range !8, !noalias !1118, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !13, !noalias !1118, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !1118
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #33, !noalias !1118
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !1118, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1118
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !1118
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !1118
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.k, align 8, !alias.scope !1118
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !5, !nonnull !5
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull %i.i, i64 noundef %3)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %common.resume unwind label %bb.j

bb.d:                                             ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -65526) i64 @_RNvNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outbound26read_opaque_message_header(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.sroa.423 = alloca [6 x i8], align 2           ; 7 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXsm_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_11ContentTypeNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.d = load i8, ptr %i.c, align 8, !range !23, !noundef !5
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !19, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.h = load i8, ptr %i.g, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = icmp eq i8 %i.f, 5
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsx_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15ProtocolVersionNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.j = load i8, ptr %i.b, align 8, !range !23, !noundef !5
  %.not27 = icmp eq i8 %i.j, -1
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i16, ptr %i.k, align 2, !range !22, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load i16, ptr %i.m, align 4              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = icmp ne i16 %i.l, 9
  %i.p = and i16 %i.n, -256
  %i.q = icmp eq i16 %i.p, 768
  %or.cond30 = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond30, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.r = load i8, ptr %i.a, align 8, !range !23, !noundef !5
  %.not28 = icmp eq i8 %i.r, -1
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = load i16, ptr %i.s, align 2, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = icmp ne i8 %i.f, 3
  %i.v = icmp eq i16 %i.t, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp ugt i16 %i.t, 18431
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.423)
  %.sroa.423.2..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sroa.423, i64 2
  store i8 %i.f, ptr %.sroa.423.2..sroa_idx37, align 2
  %.sroa.423.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.423, i64 3
  store i8 %i.h, ptr %.sroa.423.3..sroa_idx, align 1
  store i16 %i.n, ptr %.sroa.423, align 2
  %.sroa.423.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.423, i64 4
  store i16 %i.t, ptr %.sroa.423.4..sroa_idx, align 2
  %.sroa.423.1..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.423, i64 1
  %.sroa.423.1..sroa.423.1..sroa.423.1..sroa.423.1..sroa.423.3..sroa.16.sroa.0.0.copyload = load i40, ptr %.sroa.423.1..sroa_idx36, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.423)
  %i.x = zext i40 %.sroa.423.1..sroa.423.1..sroa.423.1..sroa.423.1..sroa.423.3..sroa.16.sroa.0.0.copyload to i64
  %i.y = shl nuw i64 %i.x, 24
  %i.z = and i16 %i.n, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 16
  %i.ac = zext nneg i16 %i.l to i64
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = or disjoint i64 %i.ad, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.c, %bb.h, %bb.e, %bb.b, %bb.k
  %.sroa.16.sroa.0.0 = phi i64 [ 65535, %bb.b ], [ 327679, %bb.c ], [ 65535, %bb.e ], [ 65535, %bb.h ], [ 393215, %bb.f ], [ 196607, %bb.i ], [ %i.ae, %bb.k ], [ 262143, %bb.j ]
  ret i64 %.sroa.16.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign14any_ecdsa_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKey3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i16 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @65)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i16, ptr %i.h, align 8, !range !1149, !noundef !5
  %i.j = icmp eq i16 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKey3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i16 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @68)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i16, ptr %i.k, align 8, !range !1149, !noundef !5
  %i.m = icmp eq i16 %i.l, -1
  br i1 %i.m, label %bb.i, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.o, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1150
  %i.p = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 32, i64 noundef 8) #31, !noalias !1150 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit13, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.s = load ptr, ptr %i.n, align 8, !alias.scope !1155, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !1155
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #30
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.f, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.m ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.af, %bb.l ], [ %i.av, %bb.r ], [ %i.av, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit13: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @66, ptr %i.x, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.v, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit12, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit13
  ret void

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKey3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i16 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @70)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i16, ptr %i.y, align 8, !range !1149, !noundef !5
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ac, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1156
  %i.ad = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 32, i64 noundef 8) #31, !noalias !1156 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit12, !prof !14

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc15 unwind label %bb.l

.noexc15:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.ag = load ptr, ptr %i.ab, align 8, !alias.scope !1161, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !1161
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab) #30
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_.exit12: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @66, ptr %i.al, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.am = load i64, ptr %i.a, align 8, !range !8, !noundef !5
end_hunk_5
begin_hunk_6_@_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign14any_eddsa_type:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1182
  %i.p = load ptr, ptr %i.j, align 8, !noalias !1182, !nonnull !5, !noundef !5
  %i.q = load i64, ptr %i.k, align 8, !noalias !1182, !noundef !5
  store ptr %i.p, ptr %i.d, align 8, !noalias !1182
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !1182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1182
  store ptr %i.d, ptr %i.b, align 8, !noalias !1182
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11KeyRejectedNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !1182
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @50, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1182
  %.sroa.43.i.sroa.3.7.copyload = load ptr, ptr %i.c, align 8
  %.sroa.43.i.sroa.5.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.i.sroa.5.7.copyload = load i16, ptr %.sroa.43.i.sroa.5.7..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.415.sroa.6.0..sroa.415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %i.o, i64 6, i1 false)
  store i8 13, ptr %0, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.43.i.sroa.3.7.copyload, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.43.i.sroa.5.7.copyload, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  store i64 1, ptr %i.l, align 8, !noalias !1182
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1182
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.04.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1182
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1182
  %.sroa.73.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %.sroa.56.0.copyload.i, ptr %.sroa.73.0..sroa_idx.i, align 8, !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i16 11, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1184
  %i.w = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 32, i64 noundef 8) #31, !noalias !1184 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_.exit, !prof !14

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !1185
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #30
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @72, ptr %i.ad, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign18any_supported_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB2_13RsaSigningKey3new(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.f, -1
  br i1 %.not, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyNtNtB15_5error5ErrorEEB15_.exit16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1196
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 24, i64 noundef 8) #31, !noalias !1196 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.g, !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #33
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1197
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #30
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

.body:                                            ; preds = %bb.e, %bb.d
  %i.q = load i8, ptr %i.e, align 8, !range !7, !noundef !5
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @74, ptr %i.t, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.g
  ret void

bb.i:                                             ; preds = %bb.j, %.body
  resume { ptr, i32 } %i.m

bb.j:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyNtNtB15_5error5ErrorEEB15_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #32
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyNtNtB15_5error5ErrorEEB15_.exit16: ; preds = %bb.a
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign14any_ecdsa_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.v = load i8, ptr %i.d, align 8, !range !7, !noundef !5
  %.not11 = icmp eq i8 %i.v, -1
  br i1 %.not11, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit17

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyNtNtB15_5error5ErrorEEB15_.exit16
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load <2 x ptr>, ptr %i.w, align 8
  store <2 x ptr> %i.y, ptr %i.x, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit17: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyNtNtB15_5error5ErrorEEB15_.exit16
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = load i64, ptr %1, align 8, !range !20, !noundef !5
  %i.aa = icmp eq i64 %i.z, 2
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign14any_eddsa_type(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  %i.ac = load i8, ptr %i.c, align 8, !range !7, !noundef !5
  %.not13 = icmp eq i8 %i.ac, -1
  br i1 %.not13, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit19

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit19, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ad = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !13, !noundef !5 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !14

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8
  store <2 x ptr> %i.ak, ptr %i.aj, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtB1C_5error5ErrorEEB1C_.exit19: ; preds = %bb.m
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.ah, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.al) #33
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.ag, 50
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.am, ptr noundef nonnull align 1 dereferenceable(51) @75, i64 51, i1 false)
  store i8 13, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 51, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs222MioR9bx1_9aws_lc_rs4randNtB2_12SystemRandomNtB2_12SecureRandom4fillCs7ZUl82OSlxp_6rustls(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXNtCs7ZUl82OSlxp_6rustls7key_logNtB2_8NoKeyLogNtB2_6KeyLog3log(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2, ptr noalias nofree nonnull readonly captures(none) %3, i64 range(i64 0, -9223372036854775808) %4, ptr noalias nofree nonnull readonly captures(none) %5, i64 range(i64 0, -9223372036854775808) %6) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtCs7ZUl82OSlxp_6rustls7key_logNtB2_8NoKeyLogNtB2_6KeyLog8will_log(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1, i64 %2) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !23, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.513.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.b, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %.sroa.415.0..sroa_idx, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 2, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  store i8 15, ptr %0, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @76, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 23, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @41, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1200
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 80, i64 noundef 8) #31, !noalias !1200 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1k_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1k_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB2_5MlKemNtB8_16SupportedKxGroup18start_and_complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.041 = alloca [56 x i8], align 8          ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RNvMs6_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16EncapsulationKey3newCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.j = load i64, ptr %i.g, align 8, !range !8, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @77, i64 1), i64 7, i1 false)
  %.sroa.763.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.763.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @77, i64 24), i64 40, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.l, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.561.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noundef !5 ; 3 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store <2 x ptr> %i.p, ptr %i.h, align 16
  invoke void @_RNvMs6_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16EncapsulationKey11encapsulateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  %i.s = icmp eq i64 %i.r, -2
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.484.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) getelementptr inbounds nuw (i8, ptr @77, i64 1), i64 31, i1 false)
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.787.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @77, i64 48), i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.t, align 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.585.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef %i.o) #31
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.572.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.471.0.copyload, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store i64 %.sroa.572.0.copyload, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.041)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load <2 x i16>, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ao, %bb.o ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #32
          to label %.body unwind label %bb.ab

bb.i:                                             ; preds = %bb.k, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
end_hunk_6
begin_hunk_7_@_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtBT_14ChunkVecBuffer3len0INtB7_5FnMutTjRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE8call_mutBV_:bb.a
  %i.c = add i64 %.val, %1
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs222MioR9bx1_9aws_lc_rs6digest9AlgorithmNtB6_5Debug3fmtCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsh_NtCs222MioR9bx1_9aws_lc_rs6digestNtB5_9AlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls6verify21DigitallySignedStructNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1233
  store ptr %i.b, ptr %i.a, align 8, !noalias !1233
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1233
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs3ccs23ChangeCipherSpecPayloadNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier17offer_client_auth(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noundef { ptr, i64 } @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier18root_hint_subjects(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier18verify_client_cert(ptr dead_on_unwind noalias nofree readnone sret([64 x i8]) align 8 captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree nonnull readonly align 8 captures(none) %3, i64 range(i64 0, 384307168202282326) %4, i64 %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier22verify_tls12_signature(ptr dead_on_unwind noalias nofree readnone sret([64 x i8]) align 8 captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree readonly align 8 captures(none) %4, ptr noalias nofree readonly align 8 captures(none) %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #35
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier22verify_tls13_signature(ptr dead_on_unwind noalias nofree readnone sret([64 x i8]) align 8 captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree readonly align 8 captures(none) %4, ptr noalias nofree readonly align 8 captures(none) %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #35
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs2_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtB5_18ClientCertVerifier24supported_verify_schemes(ptr dead_on_unwind noalias nofree readnone sret([24 x i8]) align 8 captures(none) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSignerNtNtB9_6signer6Signer4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = tail call noundef i64 @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair18public_modulus_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1238
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1238
  %i.i = load i64, ptr %i.c, align 8, !range !8, !noalias !1238, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !13, !noalias !1238, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !1238
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #33, !noalias !1238
  unreachable

_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !1238, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1238
  store i64 %i.l, ptr %i.e, align 8, !alias.scope !1238
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1238
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.h, ptr %i.q, align 8, !alias.scope !1238
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !align !11, !noundef !5
  %i.v = invoke noundef zeroext i1 @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair4sign(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @93, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %i.o, i64 noundef %i.h)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1239
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.y = load i64, ptr %i.b, align 8, !range !8, !noalias !1239, !noundef !5
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !13, !noalias !1239, !noundef !5 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.z, label %.noexc2, label %bb.i, !prof !14

bb.g:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.noexc2:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !1239
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ae) #33
  unreachable

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  %i.af = load ptr, ptr %i.ac, align 8, !noalias !1239, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.ab, 13
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.af, ptr noundef nonnull align 1 dereferenceable(14) @12, i64 14, i1 false), !noalias !1239
  store i8 13, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

.body.thread:                                     ; preds = %bb.e, %bb.j
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body6

bb.j:                                             ; preds = %_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #32
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSignerNtNtB9_6signer6Signer6scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !range !24, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtB5_6sealed12SecureRandom9fill_impl(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6client5handyNtB5_21FailResolveClientCertNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_16SingleCertAndKeyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB5_20NeverProducesTicketsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp ult i64 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = add i64 %i.b, -5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.b, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSignerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 9)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtNtB7_4msgs5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.513 = alloca [24 x i8], align 8          ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsT_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureSchemeNtNtNtB7_4msgs5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !23, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.424.0.copyload = load i8, ptr %.sroa.424.0..sroa_idx, align 1
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.732.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.727.0..sroa_idx, i64 18, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load <2 x i16>, ptr %.sroa.525.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.c, ptr %i.d, align 8
  store i8 %.sroa.424.0.copyload, ptr %.sroa.429.0..sroa_idx, align 1
  store <2 x i16> %i.e, ptr %.sroa.530.0..sroa_idx, align 2
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.g = load <2 x i16>, ptr %i.f, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtB7_5codec5Codec4readB9_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.h = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i16> %i.g, ptr %.sroa.415.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtNtB7_4msgs5codec5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsT_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureSchemeNtNtNtB7_4msgs5codec5Codec6encode(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtB7_5codec5Codec6encodeB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsMutShE6as_mut(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp ult i64 %i.b, 5
  br i1 %i.c, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = add i64 %i.b, -5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.f, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 5, i64 noundef %i.b, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs222MioR9bx1_9aws_lc_rs4randNtB5_12SystemRandomNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKeyNtNtB9_6signer10SigningKey10public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i16, ptr %i.e, align 8, !range !24, !noundef !5
  switch i16 %i.f, label %bb.b [
    i16 3, label %bb.e
    i16 5, label %bb.c
    i16 7, label %bb.d
  ], !prof !1245

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.6.0 = phi i64 [ 16, %bb.d ], [ 16, %bb.c ], [ 19, %bb.a ]
  %.sroa.0.0 = phi ptr [ @109, %bb.d ], [ @108, %bb.c ], [ @107, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1247
  call void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0), !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1247
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1246, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !1246, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50918wrap_in_bit_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.g unwind label %bb.f, !noalias !1247

.body.i:                                          ; preds = %bb.k, %bb.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.f ], [ %i.x, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume.i unwind label %bb.q, !noalias !1247

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.l, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1247, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1247, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
          to label %.noexc.i unwind label %bb.i, !noalias !1247

.noexc.i:                                         ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1248, !noalias !1247, !noundef !5 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1248, !noalias !1247, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !1247
  %.pre.i.i = load i64, ptr %i.o, align 8, !alias.scope !1248, !noalias !1247
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body.i unwind label %bb.q, !noalias !1247

bb.j:                                             ; preds = %bb.h, %.noexc.i
  %i.v = phi i64 [ %.pre.i.i, %bb.h ], [ %i.p, %.noexc.i ]
  %i.w = add i64 %i.v, %i.n
  store i64 %i.w, ptr %i.o, align 8, !alias.scope !1248, !noalias !1247
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.k, !noalias !1247

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.m, !noalias !1247

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.f, !noalias !1247

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1247
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1247
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1247, !nonnull !5, !noundef !5
  %i.ab = load i64, ptr %i.o, align 8, !noalias !1247, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.n unwind label %bb.f, !noalias !1247

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1247
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_.exit unwind label %bb.o, !noalias !1247

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.p, !noalias !1247

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1247
  unreachable

common.resume.i:                                  ; preds = %bb.o, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.q:                                             ; preds = %bb.i, %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1247
  unreachable

_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKeyNtNtB9_6signer10SigningKey13choose_scheme(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_.exit
  %.sroa.0.0 = phi ptr [ %i.k, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_.exit ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @111, 1
  ret { ptr, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load <2 x i16>, ptr %i.b, align 8
  store <2 x i16> %i.j, ptr %i.i, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1257
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 16, i64 noundef 8) #31, !noalias !1257 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1258
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.m

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i8, i8 } @_RNvXs5_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKeyNtNtB9_6signer10SigningKey9algorithm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !24, !noundef !5 ; 2 uses
  %i.c = icmp samesign ult i16 %i.b, 13
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey9algorithm, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 6, %bb.a ]
  %i.e = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.f = insertvalue { i8, i8 } %i.e, i8 0, 1
  ret { i8, i8 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs222MioR9bx1_9aws_lc_rs3rsa9signatureNtB5_20RsaSignatureEncodingNtB5_11RsaEncoding8encoding(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert4FromRShE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add nuw i64 %2, 5                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 0, ptr %i.m, align 8
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 5)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !1263, !noundef !5 ; 2 uses
  %i.p = icmp sgt i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %i.l, align 8, !alias.scope !1263, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.r, i8 0, i64 5, i1 false)
  %.pre.i = load i64, ptr %i.m, align 8, !alias.scope !1263
  %i.s = add i64 %.pre.i, 5
  store i64 %i.s, ptr %i.m, align 8, !alias.scope !1263
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !alias.scope !1264, !noundef !5 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !1264, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i1 = load i64, ptr %i.m, align 8, !alias.scope !1264
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %i.x = phi i64 [ %.pre.i1, %bb.f ], [ %i.t, %.noexc ]
  %i.y = add i64 %i.x, %2
  store i64 %i.y, ptr %i.m, align 8, !alias.scope !1264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_15EcdsaSigningKeyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !range !24, !noundef !5
  switch i16 %i.d, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.c
    i16 5, label %bb.d
    i16 6, label %bb.c
    i16 7, label %bb.d
    i16 8, label %bb.c
    i16 9, label %bb.c
    i16 10, label %bb.c
    i16 11, label %bb.e
    i16 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 6, ptr %i.a, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i8 1, ptr %i.a, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store i8 3, ptr %i.a, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  store i8 4, ptr %i.a, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i8 5, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_11EcdsaSignerNtNtB9_6signer6Signer4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [4640 x i8], align 8              ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [4640 x i8], align 8              ; 9 uses
  %.sroa.958 = alloca [32 x i8], align 8          ; 3 uses
  %.sroa.10 = alloca [4576 x i8], align 8         ; 3 uses
  %.sroa.8.i.sroa.9 = alloca [32 x i8], align 8   ; 5 uses
  %.sroa.8.i.sroa.10 = alloca [4576 x i8], align 8 ; 5 uses
  %.sroa.538 = alloca [4632 x i8], align 8        ; 8 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !1280, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1281, !nonnull !5, !align !11, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1281, !nonnull !5, !align !11, !noundef !5
  %i.p = tail call { ptr, i64 } @_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE4signFONtB1a_15evp_pkey_ctx_stEINtNtCsj6eKBz9Db1c_4core6result6ResultuuEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.o, ptr noundef null), !noalias !1282 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = extractvalue { ptr, i64 } %i.p, 1        ; 14 uses
  %i.t = load ptr, ptr %i.l, align 8, !noalias !1282, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !10, !noalias !1282, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %switch.lookup, label %bb.z

switch.lookup:                                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.sroa.10)
  %i.x = load ptr, ptr %i.t, align 8, !noalias !1282, !nonnull !5, !noundef !5
  %.val13.i = load i8, ptr %i.x, align 1, !range !1283, !noalias !1282, !noundef !5
  %i.y = zext nneg i8 %.val13.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_11EcdsaSignerNtNtB9_6signer6Signer4sign, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %i.z = tail call noundef ptr @"\01aws_lc_0_43_0_ECDSA_SIG_from_bytes"(ptr noundef nonnull readonly %i.q, i64 noundef range(i64 0, -9223372036854775808) %i.s) #31, !noalias !1284 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ag, label %bb.d

bb.c:                                             ; preds = %bb.u, %bb.k, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.d:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1285
  %i.ac = tail call noundef ptr @"\01aws_lc_0_43_0_ECDSA_SIG_get0_r"(ptr noundef nonnull %i.z) #31, !noalias !1284 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ac, ptr %i.g, align 8, !noalias !1285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1285
  invoke void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs2bnINtNtB7_3ptr12ConstPointerNtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto9bignum_stE11to_be_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.c, !noalias !1284

.body26.i.i:                                      ; preds = %bb.q, %bb.p, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.ae, %bb.f ], [ %i.be, %bb.q ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #32
          to label %bb.y unwind label %bb.w, !noalias !1284

bb.f:                                             ; preds = %bb.r, %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1285
  %i.af = call noundef ptr @"\01aws_lc_0_43_0_ECDSA_SIG_get0_s"(ptr noundef nonnull %i.z) #31, !noalias !1284 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.af, ptr %i.e, align 8, !noalias !1285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1285
  invoke void @_RNvMs1_NtCs222MioR9bx1_9aws_lc_rs2bnINtNtB7_3ptr12ConstPointerNtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto9bignum_stE11to_be_bytes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.m unwind label %bb.f, !noalias !1284

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1285
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.j, !noalias !1284

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.y unwind label %bb.l, !noalias !1284

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.c, !noalias !1284

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1284
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1285
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4635) %i.c, i8 0, i64 4635, i1 false), !noalias !1285
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !1286, !noundef !5 ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = sub nsw i64 %switch.ext, %i.al          ; 2 uses
  %i.ao = shl nuw nsw i64 %switch.ext, 1          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1286, !noundef !5 ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = sub nsw i64 %i.ao, %i.aq                ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.al, %switch.ext
  br i1 %.not.i.i, label %.invoke.i.i, label %bb.n, !prof !1287

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1286, !nonnull !5, !noundef !5
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.at, i64 noundef %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc21.i.i unwind label %bb.p, !noalias !1284

.noexc21.i.i:                                     ; preds = %bb.n
  %.not2.i.i = icmp samesign ult i64 %i.ao, %i.aq
  br i1 %.not2.i.i, label %.invoke.i.i, label %bb.o, !prof !1287

.invoke.i.i:                                      ; preds = %.noexc21.i.i, %bb.m
  %i.aw = phi i64 [ %i.an, %bb.m ], [ %i.as, %.noexc21.i.i ]
  %i.ax = phi i64 [ %switch.ext, %bb.m ], [ %i.ao, %.noexc21.i.i ]
  %i.ay = phi ptr [ @9, %bb.m ], [ @8, %.noexc21.i.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef 4627, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay) #35
          to label %.cont.i.i unwind label %bb.p, !noalias !1284

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.o:                                             ; preds = %.noexc21.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1288, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.ap, align 8, !noalias !1288, !noundef !5
end_hunk_7
begin_hunk_8_@_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_11EcdsaSignerNtNtB9_6signer6Signer4sign:bb.a

bb.w:                                             ; preds = %bb.p, %.body26.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1284
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1285
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1285
  call void @"\01aws_lc_0_43_0_ECDSA_SIG_free"(ptr noundef nonnull %i.z) #31, !noalias !1284
  br label %bb.ag

bb.y:                                             ; preds = %bb.t, %bb.j, %.body26.i.i, %bb.c
  %.pn15.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body26.i.i ], [ %i.ah, %bb.j ], [ %i.ab, %bb.c ], [ %i.bg, %bb.t ]
  call void @"\01aws_lc_0_43_0_ECDSA_SIG_free"(ptr noundef nonnull %i.z) #31, !noalias !1284
  br label %.body.i

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4635) %i.h, i8 0, i64 4635, i1 false), !noalias !1281
  %i.bj = icmp ult i64 %i.s, 4628
  br i1 %i.bj, label %bb.ab, label %bb.aa, !prof !1290

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef 4627, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #35
          to label %.noexc.i unwind label %bb.ac, !noalias !1282

.noexc.i:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull dereferenceable(4627) %i.bk, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.ac, !noalias !1282

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ac, %bb.y
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bl, %bb.ac ], [ %.pn15.i.i, %bb.y ]
  %i.bm = icmp eq i64 %i.s, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #31, !noalias !1282
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i

_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.ab
  store i64 %i.s, ptr %i.h, align 8, !noalias !1281
  %i.bn = and i64 %i.s, 7936
  %.sroa.652.0.copyload = load i64, ptr %i.bk, align 8, !noalias !1281
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.754.0.copyload = load ptr, ptr %.sroa.754.0..sroa_idx, align 8, !noalias !1281
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.856.0.copyload = load i64, ptr %.sroa.856.0..sroa_idx, align 8, !noalias !1281
  %.sroa.958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.958, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.958.0..sroa_idx, i64 32, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.10.0..sroa_idx, i64 4576, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1281
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i
  %.sroa.048.0.in = phi i64 [ %i.ao, %bb.ai ], [ %i.s, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i ]
  %.sroa.550.0 = phi i64 [ 0, %bb.ai ], [ %i.bn, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i ]
  %.sroa.652.0 = phi i64 [ %.sroa.8.i.sroa.6.0.copyload, %bb.ai ], [ %.sroa.652.0.copyload, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i ]
  %.sroa.754.0 = phi ptr [ %.sroa.8.i.sroa.7.0.copyload, %bb.ai ], [ %.sroa.754.0.copyload, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i ]
  %.sroa.856.0 = phi i64 [ %.sroa.8.i.sroa.8.0.copyload, %bb.ai ], [ %.sroa.856.0.copyload, %_RNCNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB7_12EcdsaKeyPair4sign0Cs7ZUl82OSlxp_6rustls.exit.i ]
  %i.bo = icmp eq i64 %i.s, 0
  br i1 %i.bo, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #31, !noalias !1282
  br label %bb.al

bb.ag:                                            ; preds = %bb.x, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.10)
  %i.bp = icmp eq i64 %i.s, 0
  br i1 %i.bp, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.s, i64 noundef 1) #31, !noalias !1282
  br label %bb.aj

bb.ai:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1285
  call void @"\01aws_lc_0_43_0_ECDSA_SIG_free"(ptr noundef nonnull %i.z) #31, !noalias !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.958, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.sroa.9, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.8.i.sroa.10, i64 4576, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.10)
  br label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.ad, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1291
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1291
  %i.bq = load i64, ptr %i.b, align 8, !range !8, !noalias !1291, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !noalias !1291, !noundef !5 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.br, label %bb.ak, label %_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_.exit, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !1291
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bt, i64 %i.bv) #33, !noalias !1291
  unreachable

_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_.exit: ; preds = %bb.aj
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !1291, !nonnull !5, !noundef !5 ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bt, 13
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.bw, ptr noundef nonnull align 1 dereferenceable(14) @12, i64 14, i1 false), !noalias !1291
  store i8 13, ptr %0, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bw, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 14, ptr %.sroa.746.0..sroa_idx, align 8
  br label %bb.ar

bb.al:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.538)
  %.sroa.037.0.insert.ext = and i64 %.sroa.048.0.in, 255
  %.sroa.037.1.insert.insert = or disjoint i64 %.sroa.550.0, %.sroa.037.0.insert.ext ; 7 uses
  store i64 %.sroa.652.0, ptr %.sroa.538, align 8
  %.sroa.538.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.538, i64 8
  store ptr %.sroa.754.0, ptr %.sroa.538.8..sroa_idx, align 8
  %.sroa.538.16..sroa_idx75 = getelementptr inbounds nuw i8, ptr %.sroa.538, i64 16
  store i64 %.sroa.856.0, ptr %.sroa.538.16..sroa_idx75, align 8
  %.sroa.538.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.538, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.538.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.958, i64 32, i1 false)
  %.sroa.538.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.538, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.538.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(4576) %.sroa.10, i64 4576, i1 false)
  %i.by = icmp samesign ult i64 %.sroa.037.1.insert.insert, 4628
  br i1 %i.by, label %bb.an, label %bb.am, !prof !1290

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.037.1.insert.insert, i64 noundef 4627, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #35, !noalias !1292
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1292
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.037.1.insert.insert, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1292
  %i.bz = load i64, ptr %i.a, align 8, !range !8, !noalias !1292, !noundef !5
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !13, !noalias !1292, !noundef !5 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.ao, label %bb.ap, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !1292
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #33, !noalias !1292
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !1292, !nonnull !5, !noundef !5 ; 2 uses
  %i.cg = icmp samesign ule i64 %.sroa.037.1.insert.insert, %i.cc
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1292
  %.not.i = icmp eq i64 %.sroa.037.1.insert.insert, 0
  br i1 %.not.i, label %_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 8 %.sroa.538, i64 %.sroa.037.1.insert.insert, i1 false), !noalias !1293
  br label %_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_.exit

_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.538)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.ch, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cf, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.037.1.insert.insert, ptr %.sroa.536.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_.exit, %_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_11EcdsaSignerNtNtB9_6signer6Signer6scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !24, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_11EcdsaSignerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 11)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_12NoClientAuthNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs7ZUl82OSlxp_6rustls7key_logNtB4_8NoKeyLogNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6client5handyNtB4_21FailResolveClientCertNtNtB6_11client_conn18ResolvesClientCert7resolve(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree nonnull readonly align 8 captures(none) %1, i64 range(i64 0, 576460752303423488) %2, ptr noalias nofree nonnull readonly align 2 captures(none) %3, i64 range(i64 0, 2305843009213693952) %4) unnamed_addr #8 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6client5handyNtB4_21FailResolveClientCertNtNtB6_11client_conn18ResolvesClientCert9has_certs(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7decrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #14 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7enabled(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets7encrypt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #14 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6server5handyNtB4_20NeverProducesTicketsNtNtB6_11server_conn15ProducesTickets8lifetime(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey10public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1300
  call void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 13), !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1300
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1299, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !1299, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50918wrap_in_bit_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.c unwind label %bb.b, !noalias !1300

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.h, %bb.b ], [ %i.v, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume.i unwind label %bb.m, !noalias !1300

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.h, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1300, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !1300, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.l)
          to label %.noexc.i unwind label %bb.e, !noalias !1300

.noexc.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300, !noundef !5 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1301, !noalias !1300, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.j, i64 %i.l, i1 false), !noalias !1300
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body.i unwind label %bb.m, !noalias !1300

bb.f:                                             ; preds = %bb.d, %.noexc.i
  %i.t = phi i64 [ %.pre.i.i, %bb.d ], [ %i.n, %.noexc.i ]
  %i.u = add i64 %i.t, %i.l
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !1301, !noalias !1300
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1300

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !1300

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.b, !noalias !1300

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1300
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1300, !nonnull !5, !noundef !5
  %i.z = load i64, ptr %i.m, align 8, !noalias !1300, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z)
          to label %bb.j unwind label %bb.b, !noalias !1300

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1300
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_.exit unwind label %bb.k, !noalias !1300

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.l, !noalias !1300

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

common.resume.i:                                  ; preds = %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.e, %.body.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1300
  unreachable

_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey13choose_scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) @73, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.c, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 4), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 8), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.e, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 12), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.f, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 16), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.g, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) getelementptr inbounds nuw (i8, ptr @73, i64 20), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2), !noalias !1316
  br i1 %i.h, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.ptr.lcssa = phi ptr [ @73, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @73, i64 4), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @73, i64 8), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @73, i64 12), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @73, i64 16), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @73, i64 20), %bb.f ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.q, label %bb.g

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread: ; preds = %bb.f, %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit
  %.sroa.0.0 = phi ptr [ %i.u, %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit ], [ null, %bb.f ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr @46, 1
  ret { ptr, ptr } %i.m

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit
  %i.n = load <2 x i16>, ptr %.ptr.lcssa, align 2
  %i.o = load i16, ptr %.ptr.lcssa, align 2, !range !24, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %switch.tableidx = add nsw i16 %i.o, -2         ; 3 uses
  %i.p = icmp ult i16 %switch.tableidx, 9
  %switch.shifted = lshr i16 469, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.p, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #33
          to label %bb.m unwind label %bb.n

switch.lookup:                                    ; preds = %bb.g
  %i.q = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey13choose_scheme, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i16> %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %switch.load, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @34, ptr %i.t, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1317
  %i.u = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 32, i64 noundef 8) #31, !noalias !1317 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit, !prof !14

bb.i:                                             ; preds = %switch.lookup
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1318
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.w, %bb.j ], [ %i.w, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body7.i

bb.n:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !1319
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMs1_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_9RsaSigner3new.exit: ; preds = %switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit.thread

bb.q:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i8, i8 } @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKeyNtNtB8_6signer10SigningKey9algorithm(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret { i8, i8 } { i8 1, i8 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCs7ZUl82OSlxp_6rustls6server5handy5cacheNtB4_24ServerSessionMemoryCacheNtNtB8_11server_conn20StoresServerSessions9can_cache(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1322
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1322
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1322
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange11ffdhe_group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange5group(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !range !25, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange7pub_key(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %.sroa.525.0..sroa_idx, align 8
  %i.f = invoke { ptr, i64 } @_RNvMs2_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16DecapsulationKey11decapsulateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body:                                            ; preds = %bb.h, %bb.i, %bb.b, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.g, %bb.b ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEEB1k_(ptr nonnull %1) #32
          to label %bb.m unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.437.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @77, i64 1), i64 7, i1 false)
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.740.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @77, i64 24), i64 40, i1 false)
  store i8 9, ptr %0, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.538.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  store ptr %i.h, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
end_hunk_8
begin_hunk_9_@_RNvXsa_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs7ZUl82OSlxp_6rustls:bb.a
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey10public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1331
  call void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 5), !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1331
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50918wrap_in_bit_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, i64 noundef 32)
          to label %bb.c unwind label %bb.b, !noalias !1332

.body.i:                                          ; preds = %bb.g, %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.g, %bb.b ], [ %i.u, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #32
          to label %common.resume.i unwind label %bb.m, !noalias !1332

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %bb.h, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1331, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !1331, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.k)
          to label %.noexc.i unwind label %bb.e, !noalias !1332

.noexc.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1333, !noalias !1331, !noundef !5 ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1333, !noalias !1331, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.i, i64 %i.k, i1 false), !noalias !1332
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !1333, !noalias !1331
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body.i unwind label %bb.m, !noalias !1332

bb.f:                                             ; preds = %bb.d, %.noexc.i
  %i.s = phi i64 [ %.pre.i.i, %bb.d ], [ %i.m, %.noexc.i ]
  %i.t = add i64 %i.s, %i.k
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !1333, !noalias !1331
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !1332

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !1332

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i unwind label %bb.b, !noalias !1332

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1332
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1331
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1331, !nonnull !5, !noundef !5
  %i.y = load i64, ptr %i.l, align 8, !noalias !1331, !noundef !5
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls4x50916wrap_in_sequence(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.j unwind label %bb.b, !noalias !1332

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1331
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_.exit unwind label %bb.k, !noalias !1332

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.l, !noalias !1332

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1332
  unreachable

common.resume.i:                                  ; preds = %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.e, %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !1332
  unreachable

_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtCs222MioR9bx1_9aws_lc_rs7ed255199PublicKeyEB6_.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey13choose_scheme(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit
  %.sroa.0.0 = phi ptr [ %i.k, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr @121, 1
  ret { ptr, ptr } %i.h

bb.d:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load <2 x i16>, ptr %i.b, align 8
  store <2 x i16> %i.j, ptr %i.i, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1343
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 81) 16, i64 noundef 8) #31, !noalias !1343 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !1344
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerEBJ_.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.m

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13Ed25519SignerE3newBM_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i8, i8 } @_RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey9algorithm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !24, !noundef !5 ; 2 uses
  %i.c = icmp samesign ult i16 %i.b, 13
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtB9_6signer10SigningKey9algorithm, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 6, %bb.a ]
  %i.e = insertvalue { i8, i8 } poison, i8 %.sroa.0.0, 0
  %i.f = insertvalue { i8, i8 } %i.e, i8 0, 1
  ret { i8, i8 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKeyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !range !24, !noundef !5
  switch i16 %i.d, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.c
    i16 5, label %bb.d
    i16 6, label %bb.c
    i16 7, label %bb.d
    i16 8, label %bb.c
    i16 9, label %bb.c
    i16 10, label %bb.c
    i16 11, label %bb.e
    i16 12, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i8 6, ptr %i.a, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i8 1, ptr %i.a, align 1
  br label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  store i8 3, ptr %i.a, align 1
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  store i8 4, ptr %i.a, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i8 5, ptr %i.a, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @80)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtB9_6signer6Signer4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4640 x i8], align 8              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [4632 x i8], align 8          ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = tail call { ptr, i64 } @_RINvMs1_NtCs222MioR9bx1_9aws_lc_rs8evp_pkeyINtNtB8_3ptr14ManagedPointerONtNtCs9y7goCcaNJZ_10aws_lc_sys16universal_crypto11evp_pkey_stE4signFONtB1a_15evp_pkey_ctx_stEINtNtCsj6eKBz9Db1c_4core6result6ResultuuEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noundef null), !noalias !1352 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i64 } %i.f, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1353
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4635) %i.b, i8 0, i64 4635, i1 false), !noalias !1353
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull %i.j, i64 noundef 64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63)
          to label %bb.e unwind label %bb.c, !noalias !1352

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, 0) %i.i, i64 noundef 1) #31, !noalias !1352
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4632) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(4632) %i.j, i64 4632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1353
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, 0) %i.i, i64 noundef 1) #31, !noalias !1352
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #35, !noalias !1354
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 64, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.n = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !13, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.r, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #33
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = icmp samesign ugt i64 %i.q, 63
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7, i64 64, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i16, i16 } @_RNvXsc_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtB9_6signer6Signer6scheme(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !range !24, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2
  %i.e = insertvalue { i16, i16 } poison, i16 %i.b, 0
  %i.f = insertvalue { i16, i16 } %i.e, i16 %i.d, 1
  ret { i16, i16 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_13Ed25519SignerNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 13)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCs222MioR9bx1_9aws_lc_rs5errorNtB5_11UnspecifiedNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs7ZUl82OSlxp_6rustls6verify12NoClientAuthNtB4_18ClientCertVerifier21client_auth_mandatoryB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7ZUl82OSlxp_6rustls6verify12NoClientAuthNtB4_18ClientCertVerifier24requires_raw_public_keysB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCshVVPy9isBpn_6webpki14aws_lc_rs_algs16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm11fips_statusCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %. = zext i1 %i.a to i64
  store i64 %., ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6client5handy21FailResolveClientCertNtNtB6_11client_conn18ResolvesClientCert20only_raw_public_keysB8_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyNtNtNtB8_6client11client_conn18ResolvesClientCert20only_raw_public_keysB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyNtNtNtB8_6server11server_conn18ResolvesServerCert20only_raw_public_keysB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange16hybrid_componentBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  store i16 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange24complete_for_tls_versionBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i16, ptr %4, align 2, !range !22, !noundef !5
  %i.d = icmp eq i16 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.j, %bb.e
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i16, ptr %i.e, align 8, !range !25, !alias.scope !1357, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !1357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_6ActiveNtBa_17ActiveKeyExchange8complete(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.i = load i8, ptr %i.a, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, i64 24, i1 false)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.411.0..sroa_idx, i64 39, i1 false)
  store i8 %i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.k = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.f, i16 %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6crypto12SharedSecretEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #32
          to label %bb.l unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret19strip_leading_zeros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.k:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.l:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal void @_RNvYNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveNtBa_17ActiveKeyExchange25complete_hybrid_componentBc_(ptr dead_on_unwind noalias nofree readnone sret([64 x i8]) align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull inttoptr (i64 179 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #33
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEEB1k_(ptr nonnull %1) #32
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs222MioR9bx1_9aws_lc_rs6bufferINtB2_6BufferNtNtNtB4_3kem11buffer_type25EncapsulationKeyBytesTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBP_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_hEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_jEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecjEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB17_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18EchConfigExtensionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_9
begin_hunk_10_@_RNvXsd_CshEiLVZluVSb_7zeroizeINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs17_NtCs7ZUl82OSlxp_6rustls5enumsNtB6_18SignatureAlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs222MioR9bx1_9aws_lc_rs6digestNtB5_9AlgorithmNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair18public_modulus_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs3rsa3keyNtB5_7KeyPair4sign(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs222MioR9bx1_9aws_lc_rs4rand4fill(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtB6_5Debug3fmtB1a_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsW_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureSchemeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsT_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureSchemeNtNtNtB7_4msgs5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtB7_5codec5Codec4readB9_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsT_NtCs7ZUl82OSlxp_6rustls5enumsNtB5_15SignatureSchemeNtNtNtB7_4msgs5codec5Codec6encode(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtB7_5codec5Codec6encodeB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20StoresServerSessionsEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairE9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs2_NtCs222MioR9bx1_9aws_lc_rs3kemNtB5_16DecapsulationKey11decapsulateCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @"\01aws_lc_0_43_0_ECDSA_SIG_free"(ptr noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @"\01aws_lc_0_43_0_EVP_PKEY_free"(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCshVVPy9isBpn_6webpki14aws_lc_rs_algsNtB2_16AwsLcRsAlgorithmNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithm4fips(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs7ZUl82OSlxp_6rustls6cryptoNtB4_12SharedSecret19strip_leading_zeros(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noinline }
attributes #31 = { nounwind }
attributes #32 = { cold }
attributes #33 = { noreturn }
attributes #34 = { inlinehint }
attributes #35 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 -2, i64 -9223372036854775808}
!7 = !{i8 -1, i8 22}
!8 = !{i64 0, i64 2}
!9 = !{i64 -3, i64 -9223372036854775808}
!10 = !{i8 0, i8 2}
!11 = !{i64 8}
!12 = !{i16 0, i16 44}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{i64 0, i64 -9223372036854775808}
!19 = !{i8 0, i8 6}
!20 = !{i64 0, i64 3}
!21 = !{i64 2}
!22 = !{i16 0, i16 10}
!23 = !{i8 -1, i8 28}
!24 = !{i16 0, i16 17}
!25 = !{i16 0, i16 16}
!26 = distinct !{!26, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_"}
!27 = distinct !{!27, !26, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_: argument 0"}
!28 = distinct !{!28, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!29 = distinct !{!29, !28, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!31 = distinct !{!31, !30, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!32 = !{!27}
!33 = !{!29}
!34 = !{!31}
!35 = !{!31, !29, !27}
!36 = distinct !{!36, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEBF_"}
!37 = distinct !{!37, !36, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEBF_: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairECs7ZUl82OSlxp_6rustls"}
!40 = distinct !{!40, !39, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairECs7ZUl82OSlxp_6rustls: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyECs7ZUl82OSlxp_6rustls"}
!42 = distinct !{!42, !41, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyECs7ZUl82OSlxp_6rustls: argument 0"}
!43 = !{!40}
!44 = !{!42}
!45 = !{!42, !40}
!46 = distinct !{!46, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairECs7ZUl82OSlxp_6rustls"}
!47 = distinct !{!47, !46, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairECs7ZUl82OSlxp_6rustls: argument 0"}
!48 = distinct !{!48, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyECs7ZUl82OSlxp_6rustls"}
!49 = distinct !{!49, !48, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyECs7ZUl82OSlxp_6rustls: argument 0"}
!50 = !{!47}
!51 = !{!49, !47}
!52 = distinct !{!52, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEBL_"}
!53 = distinct !{!53, !52, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveEBL_: argument 0"}
!54 = !{!53}
!55 = distinct !{!55, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_"}
!56 = distinct !{!56, !55, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!58 = distinct !{!58, !57, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!59 = distinct !{!59, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!60 = distinct !{!60, !59, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!61 = distinct !{!61, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!62 = distinct !{!62, !61, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!63 = distinct !{!63, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!64 = distinct !{!64, !63, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!66 = distinct !{!66, !65, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!67 = distinct !{!67, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!68 = distinct !{!68, !67, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!69 = distinct !{!69, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!70 = distinct !{!70, !69, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!72 = distinct !{!72, !71, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!73 = distinct !{!73, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!74 = distinct !{!74, !73, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!75 = !{!58, !56}
!76 = !{!60}
!77 = !{!62}
!78 = !{!62, !60}
!79 = !{!64}
!80 = !{!66}
!81 = !{!66, !64}
!82 = !{!68}
!83 = !{!70}
!84 = !{!70, !68}
!85 = !{!72}
!86 = !{!74}
!87 = !{!74, !72}
!88 = distinct !{!88, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client7builder15WantsClientCertEBH_"}
!89 = distinct !{!89, !88, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client7builder15WantsClientCertEBH_: argument 0"}
!90 = distinct !{!90, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_"}
!91 = distinct !{!91, !90, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!93 = distinct !{!93, !92, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!94 = distinct !{!94, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!95 = distinct !{!95, !94, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!96 = distinct !{!96, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!97 = distinct !{!97, !96, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!98 = distinct !{!98, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!99 = distinct !{!99, !98, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!100 = distinct !{!100, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!101 = distinct !{!101, !100, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!102 = distinct !{!102, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!103 = distinct !{!103, !102, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!105 = distinct !{!105, !104, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!106 = distinct !{!106, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!107 = distinct !{!107, !106, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!108 = distinct !{!108, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!109 = distinct !{!109, !108, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!110 = distinct !{!110, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!111 = distinct !{!111, !110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!112 = distinct !{!112, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!113 = distinct !{!113, !112, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!114 = !{!89}
!115 = !{!91}
!116 = !{!93}
!117 = !{!93, !91, !89}
!118 = !{!95, !89}
!119 = !{!97, !89}
!120 = !{!99}
!121 = !{!101}
!122 = !{!101, !99}
!123 = !{!103}
!124 = !{!105}
!125 = !{!105, !103}
!126 = !{!107}
!127 = !{!109}
!128 = !{!109, !107}
!129 = !{!111}
!130 = !{!113}
!131 = !{!113, !111}
!132 = distinct !{!132, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_"}
!133 = distinct !{!133, !132, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_: argument 0"}
!134 = distinct !{!134, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!135 = distinct !{!135, !134, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!136 = distinct !{!136, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!137 = distinct !{!137, !136, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!138 = distinct !{!138, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!139 = distinct !{!139, !138, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!141 = distinct !{!141, !140, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!142 = distinct !{!142, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!143 = distinct !{!143, !142, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!144 = distinct !{!144, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!145 = distinct !{!145, !144, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!146 = distinct !{!146, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!147 = distinct !{!147, !146, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!148 = distinct !{!148, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!149 = distinct !{!149, !148, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!150 = distinct !{!150, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!151 = distinct !{!151, !150, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!152 = !{!135, !133}
!153 = !{!137}
!154 = !{!139}
!155 = !{!139, !137}
!156 = !{!141}
!157 = !{!143}
!158 = !{!143, !141}
!159 = !{!145}
!160 = !{!147}
!161 = !{!147, !145}
!162 = !{!149}
!163 = !{!151}
!164 = !{!151, !149}
!165 = distinct !{!165, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server7builder15WantsServerCertEBH_"}
!166 = distinct !{!166, !165, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server7builder15WantsServerCertEBH_: argument 0"}
!167 = distinct !{!167, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_"}
!168 = distinct !{!168, !167, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!170 = distinct !{!170, !169, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!171 = distinct !{!171, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!172 = distinct !{!172, !171, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!173 = distinct !{!173, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!174 = distinct !{!174, !173, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!175 = distinct !{!175, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!176 = distinct !{!176, !175, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!177 = distinct !{!177, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!178 = distinct !{!178, !177, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!179 = distinct !{!179, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!180 = distinct !{!180, !179, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!181 = distinct !{!181, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!182 = distinct !{!182, !181, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!183 = distinct !{!183, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!184 = distinct !{!184, !183, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!185 = distinct !{!185, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!186 = distinct !{!186, !185, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!187 = !{!166}
!188 = !{!168}
!189 = !{!170}
!190 = !{!170, !168, !166}
!191 = !{!172}
!192 = !{!174}
!193 = !{!174, !172}
!194 = !{!176}
!195 = !{!178}
!196 = !{!178, !176}
!197 = !{!180}
!198 = !{!182}
!199 = !{!182, !180}
!200 = !{!184}
!201 = !{!186}
!202 = !{!186, !184}
!203 = distinct !{!203, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!204 = distinct !{!204, !203, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!205 = distinct !{!205, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!206 = distinct !{!206, !205, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!207 = distinct !{!207, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!208 = distinct !{!208, !207, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!209 = distinct !{!209, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!210 = distinct !{!210, !209, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!211 = distinct !{!211, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCseO5Jl7W60Eg_16rustls_pki_types3DerEECs7ZUl82OSlxp_6rustls"}
!212 = distinct !{!212, !211, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtCseO5Jl7W60Eg_16rustls_pki_types3DerEECs7ZUl82OSlxp_6rustls: argument 0"}
!213 = !{!206, !204}
!214 = !{!210, !208}
!215 = !{!212}
!216 = distinct !{!216, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!217 = distinct !{!217, !216, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!218 = distinct !{!218, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!219 = distinct !{!219, !218, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!220 = !{!219, !217}
!221 = distinct !{!221, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!222 = distinct !{!222, !221, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!223 = distinct !{!223, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!224 = distinct !{!224, !223, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!416 = distinct !{!416, !415, !"_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratemuNCINvNtBb_3map8map_foldTjmETmmEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB3c_9handshakeNtB4s_16ClientExtensions44order_insensitive_extensions_in_random_orders_0E0NCINvNvB1e_8for_each4callB2u_NCINvMsk_NtB2H_3vecINtB6x_3VecB2u_E14extend_trustedINtB28_3MapIBX_IB7e_INtNtNtBf_5slice4iter4IterB38_EB4k_EEB2z_EE0E0E0E0B3e_: argument 0"}
!417 = distinct !{!417, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjmETmmEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB1G_9handshakeNtB2W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtB1b_3vecINtB5u_3VecBY_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateIB6a_INtNtNtBa_5slice4iter4IterB1C_EB2O_EEB13_EE0E0E0B1I_"}
!418 = distinct !{!418, !417, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjmETmmEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB1G_9handshakeNtB2W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtB1b_3vecINtB5u_3VecBY_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateIB6a_INtNtNtBa_5slice4iter4IterB1C_EB2O_EEB13_EE0E0E0B1I_: argument 0"}
!419 = distinct !{!419, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTmmENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2t_9enumerate9EnumerateIB2p_INtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB3R_9handshakeNtB4N_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtB1u_5sliceSB3N_18sort_by_cached_keymB4F_E0EE0E0B3T_"}
!420 = distinct !{!420, !419, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTmmENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2t_9enumerate9EnumerateIB2p_INtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB3R_9handshakeNtB4N_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtB1u_5sliceSB3N_18sort_by_cached_keymB4F_E0EE0E0B3T_: argument 0"}
!421 = distinct !{!421, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecTmmEE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB18_9enumerate9EnumerateIB14_INtNtNtB1c_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB2U_9handshakeNtB3Q_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtBa_5sliceSB2Q_18sort_by_cached_keymB3I_E0EE0B2W_"}
!422 = distinct !{!422, !421, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecTmmEE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB18_9enumerate9EnumerateIB14_INtNtNtB1c_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB2U_9handshakeNtB3Q_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtBa_5sliceSB2Q_18sort_by_cached_keymB3I_E0EE0B2W_: argument 0"}
!423 = !{!406}
!424 = !{!407}
!425 = !{!409}
!426 = !{!409, !406}
!427 = !{!412, !409, !410, !406, !407}
!428 = !{!414, !412, !409, !410, !406, !407}
!429 = !{!422, !420, !418, !416, !414, !412, !409, !410, !406, !407}
!430 = distinct !{!430, i1 true, !"_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1S_9handshakeNtB2O_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1O_18sort_by_cached_keymB2G_Es_0NCINvNvB4h_8for_each4callB5h_NCINvMsk_NtB5u_3vecINtB74_3VecB5h_E14extend_trustedIB19_BS_B5m_EE0E0E0EB1U_"}
!431 = distinct !{!431, !430, !"_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1S_9handshakeNtB2O_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1O_18sort_by_cached_keymB2G_Es_0NCINvNvB4h_8for_each4callB5h_NCINvMsk_NtB5u_3vecINtB74_3VecB5h_E14extend_trustedIB19_BS_B5m_EE0E0E0EB1U_: argument 0"}
!432 = distinct !{!432, !430, !"_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1S_9handshakeNtB2O_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1O_18sort_by_cached_keymB2G_Es_0NCINvNvB4h_8for_each4callB5h_NCINvMsk_NtB5u_3vecINtB74_3VecB5h_E14extend_trustedIB19_BS_B5m_EE0E0E0EB1U_: argument 1"}
!433 = distinct !{!433, i1 true, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1r_9handshakeNtB2n_16ClientExtensions44order_insensitive_extensions_in_random_orders_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvXs_NtB8_9enumerateINtB4D_9EnumeratepEB3P_4fold9enumeratemuNCINvB6_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1n_18sort_by_cached_keymB2f_Es_0NCINvNvB3P_8for_each4callB5R_NCINvMsk_NtB64_3vecINtB7E_3VecB5R_E14extend_trustedIBO_IB4T_BN_EB5W_EE0E0E0E0EB1t_"}
!434 = distinct !{!434, !433, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1r_9handshakeNtB2n_16ClientExtensions44order_insensitive_extensions_in_random_orders_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvXs_NtB8_9enumerateINtB4D_9EnumeratepEB3P_4fold9enumeratemuNCINvB6_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1n_18sort_by_cached_keymB2f_Es_0NCINvNvB3P_8for_each4callB5R_NCINvMsk_NtB64_3vecINtB7E_3VecB5R_E14extend_trustedIBO_IB4T_BN_EB5W_EE0E0E0E0EB1t_: argument 0"}
!435 = distinct !{!435, !433, !"_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB1r_9handshakeNtB2n_16ClientExtensions44order_insensitive_extensions_in_random_orders_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvXs_NtB8_9enumerateINtB4D_9EnumeratepEB3P_4fold9enumeratemuNCINvB6_8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1n_18sort_by_cached_keymB2f_Es_0NCINvNvB3P_8for_each4callB5R_NCINvMsk_NtB64_3vecINtB7E_3VecB5R_E14extend_trustedIBO_IB4T_BN_EB5W_EE0E0E0E0EB1t_: argument 1"}
!436 = distinct !{!436, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_muNCNvMsL_NtBU_9handshakeNtB3g_16ClientExtensions44order_insensitive_extensions_in_random_orders_0NCINvNvXs_NtB2A_9enumerateINtB4Q_9EnumeratepEB1I_4fold9enumeratemuNCIB2w_TjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBQ_18sort_by_cached_keymB38_Es_0NCINvNvB1I_8for_each4callB5V_NCINvMsk_NtB68_3vecINtB7H_3VecB5V_E14extend_trustedINtB2y_3MapIB57_IB8o_BF_B38_EEB60_EE0E0E0E0E0EBW_"}
!437 = distinct !{!437, !436, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_muNCNvMsL_NtBU_9handshakeNtB3g_16ClientExtensions44order_insensitive_extensions_in_random_orders_0NCINvNvXs_NtB2A_9enumerateINtB4Q_9EnumeratepEB1I_4fold9enumeratemuNCIB2w_TjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBQ_18sort_by_cached_keymB38_Es_0NCINvNvB1I_8for_each4callB5V_NCINvMsk_NtB68_3vecINtB7H_3VecB5V_E14extend_trustedINtB2y_3MapIB57_IB8o_BF_B38_EEB60_EE0E0E0E0E0EBW_: argument 0"}
!438 = distinct !{!438, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypemuNCNvMsL_NtBZ_9handshakeNtB1W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0NCINvNvXs_NtB6_9enumerateINtB3w_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratemuNCIB2_TjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBV_18sort_by_cached_keymB1O_Es_0NCINvNvB44_8for_each4callB53_NCINvMsk_NtB5g_3vecINtB6P_3VecB53_E14extend_trustedINtB4_3MapIB3M_IB7w_INtNtNtBa_5slice4iter4IterBV_EB1O_EEB58_EE0E0E0E0E0B11_"}
!439 = distinct !{!439, !438, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypemuNCNvMsL_NtBZ_9handshakeNtB1W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0NCINvNvXs_NtB6_9enumerateINtB3w_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratemuNCIB2_TjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBV_18sort_by_cached_keymB1O_Es_0NCINvNvB44_8for_each4callB53_NCINvMsk_NtB5g_3vecINtB6P_3VecB53_E14extend_trustedINtB4_3MapIB3M_IB7w_INtNtNtBa_5slice4iter4IterBV_EB1O_EEB58_EE0E0E0E0E0B11_: argument 0"}
!440 = distinct !{!440, i1 true, !"_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratemuNCINvNtBb_3map8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB3c_9handshakeNtB4s_16ClientExtensions44order_insensitive_extensions_in_random_orders_0Es_0NCINvNvB1e_8for_each4callB2u_NCINvMsk_NtB2H_3vecINtB6z_3VecB2u_E14extend_trustedINtB28_3MapIBX_IB7g_INtNtNtBf_5slice4iter4IterB38_EB4k_EEB2z_EE0E0E0E0B3e_"}
!441 = distinct !{!441, !440, !"_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumeratemuNCINvNtBb_3map8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB3c_9handshakeNtB4s_16ClientExtensions44order_insensitive_extensions_in_random_orders_0Es_0NCINvNvB1e_8for_each4callB2u_NCINvMsk_NtB2H_3vecINtB6z_3VecB2u_E14extend_trustedINtB28_3MapIBX_IB7g_INtNtNtBf_5slice4iter4IterB38_EB4k_EEB2z_EE0E0E0E0B3e_: argument 0"}
!442 = distinct !{!442, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB1G_9handshakeNtB2W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtB1b_3vecINtB5w_3VecBY_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateIB6c_INtNtNtBa_5slice4iter4IterB1C_EB2O_EEB13_EE0E0E0B1I_"}
!443 = distinct !{!443, !442, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldTjmETmjEuNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionType18sort_by_cached_keymNCNvMsL_NtB1G_9handshakeNtB2W_16ClientExtensions44order_insensitive_extensions_in_random_orders_0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBY_NCINvMsk_NtB1b_3vecINtB5w_3VecBY_E14extend_trustedINtB4_3MapINtNtB6_9enumerate9EnumerateIB6c_INtNtNtBa_5slice4iter4IterB1C_EB2O_EEB13_EE0E0E0B1I_: argument 0"}
!444 = distinct !{!444, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTmjENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2t_9enumerate9EnumerateIB2p_INtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB3R_9handshakeNtB4N_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtB1u_5sliceSB3N_18sort_by_cached_keymB4F_Es_0EE0E0B3T_"}
!445 = distinct !{!445, !444, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callTmjENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2t_9enumerate9EnumerateIB2p_INtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB3R_9handshakeNtB4N_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtB1u_5sliceSB3N_18sort_by_cached_keymB4F_Es_0EE0E0B3T_: argument 0"}
!446 = distinct !{!446, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecTmjEE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB18_9enumerate9EnumerateIB14_INtNtNtB1c_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB2U_9handshakeNtB3Q_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtBa_5sliceSB2Q_18sort_by_cached_keymB3I_Es_0EE0B2W_"}
!447 = distinct !{!447, !446, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecTmjEE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB18_9enumerate9EnumerateIB14_INtNtNtB1c_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENCNvMsL_NtB2U_9handshakeNtB3Q_16ClientExtensions44order_insensitive_extensions_in_random_orders_0EENCINvMNtBa_5sliceSB2Q_18sort_by_cached_keymB3I_Es_0EE0B2W_: argument 0"}
!448 = !{!431}
!449 = !{!432}
!450 = !{!434}
!451 = !{!434, !431}
!452 = !{!437, !434, !435, !431, !432}
!453 = !{!439, !437, !434, !435, !431, !432}
!454 = !{!447, !445, !443, !441, !439, !437, !434, !435, !431, !432}
!455 = distinct !{!455, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameuNCNvMNtNtB36_6webpki7anchorsNtB45_13RootCertStore8subjects0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5z_3VecB30_E14extend_trustedINtB2s_3MapBF_B40_EE0E0E0EB36_"}
!456 = distinct !{!456, !455, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldRBQ_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameuNCNvMNtNtB36_6webpki7anchorsNtB45_13RootCertStore8subjects0NCINvNvB1C_8for_each4callB30_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5z_3VecB30_E14extend_trustedINtB2s_3MapBF_B40_EE0E0E0EB36_: argument 0"}
!457 = distinct !{!457, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameuNCNvMNtNtB1M_6webpki7anchorsNtB2L_13RootCertStore8subjects0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4J_3VecB1G_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2G_EE0E0E0B1M_"}
!458 = distinct !{!458, !457, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameuNCNvMNtNtB1M_6webpki7anchorsNtB2L_13RootCertStore8subjects0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1G_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4J_3VecB1G_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2G_EE0E0E0B1M_: argument 0"}
!459 = distinct !{!459, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENCNvMNtNtB1l_6webpki7anchorsNtB51_13RootCertStore8subjects0EE0E0B1l_"}
!460 = distinct !{!460, !459, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENCNvMNtNtB1l_6webpki7anchorsNtB51_13RootCertStore8subjects0EE0E0B1l_: argument 0"}
!461 = distinct !{!461, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENCNvMNtNtBO_6webpki7anchorsNtB44_13RootCertStore8subjects0EE0BO_"}
!462 = distinct !{!462, !461, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENCNvMNtNtBO_6webpki7anchorsNtB44_13RootCertStore8subjects0EE0BO_: argument 0"}
!463 = !{!456}
!464 = !{!458, !456}
!465 = !{!462, !460, !458, !456}
!466 = distinct !{!466, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1S_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtNtB3L_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4X_B3F_EENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0NCINvXB2I_INtB2I_12GenericShuntINtB2G_3MapB3_B5M_EIB3k_NtNtBa_7convert10InfallibleB4A_EEB1M_8try_folduNCINvNvB1M_12try_for_each4callB3F_B5B_NcNtB5B_5Break0E0B5B_E0E0B4W_EB5S_"}
!467 = distinct !{!467, !466, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1S_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtNtB3L_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4X_B3F_EENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0NCINvXB2I_INtB2I_12GenericShuntINtB2G_3MapB3_B5M_EIB3k_NtNtBa_7convert10InfallibleB4A_EEB1M_8try_folduNCINvNvB1M_12try_for_each4callB3F_B5B_NcNtB5B_5Break0E0B5B_E0E0B4W_EB5S_: argument 0"}
!468 = distinct !{!468, !466, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1S_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtNtB3L_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4X_B3F_EENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0NCINvXB2I_INtB2I_12GenericShuntINtB2G_3MapB3_B5M_EIB3k_NtNtBa_7convert10InfallibleB4A_EEB1M_8try_folduNCINvNvB1M_12try_for_each4callB3F_B5B_NcNtB5B_5Break0E0B5B_E0E0B4W_EB5S_: argument 1"}
!469 = distinct !{!469, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls"}
!470 = distinct !{!470, !469, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls: argument 0"}
!471 = distinct !{!471, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCshVVPy9isBpn_6webpki5error5ErrorEEECs7ZUl82OSlxp_6rustls"}
!472 = distinct !{!472, !471, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCshVVPy9isBpn_6webpki5error5ErrorEEECs7ZUl82OSlxp_6rustls: argument 0"}
!473 = distinct !{!473, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerINtNtBa_6result6ResultNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtNtB2u_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B2o_EENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4v_EIB23_NtNtBa_7convert10InfallibleB3j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB75_12try_for_each4callB2o_B4k_NcNtB4k_5Break0E0B4k_E0E0B4B_"}
!474 = distinct !{!474, !473, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerINtNtBa_6result6ResultNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtNtB2u_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3G_B2o_EENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4v_EIB23_NtNtBa_7convert10InfallibleB3j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB75_12try_for_each4callB2o_B4k_NcNtB4k_5Break0E0B4k_E0E0B4B_: argument 0"}
!475 = distinct !{!475, i1 true, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCshVVPy9isBpn_6webpki5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callNtNtNtB4m_3crl5types18CertRevocationListINtNtNtB9_3ops12control_flow11ControlFlowB67_ENcNtB6L_5Break0E0B6L_E0B2P_"}
!476 = distinct !{!476, !475, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCshVVPy9isBpn_6webpki5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callNtNtNtB4m_3crl5types18CertRevocationListINtNtNtB9_3ops12control_flow11ControlFlowB67_ENcNtB6L_5Break0E0B6L_E0B2P_: argument 1"}
!477 = distinct !{!477, !475, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENCNvNtCs7ZUl82OSlxp_6rustls6webpki10parse_crls0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCshVVPy9isBpn_6webpki5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4V_12try_for_each4callNtNtNtB4m_3crl5types18CertRevocationListINtNtNtB9_3ops12control_flow11ControlFlowB67_ENcNtB6L_5Break0E0B6L_E0B2P_: argument 0"}
!478 = distinct !{!478, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error18InvalidNameContextECs7ZUl82OSlxp_6rustls"}
!479 = distinct !{!479, !478, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error18InvalidNameContextECs7ZUl82OSlxp_6rustls: argument 0"}
!480 = distinct !{!480, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls"}
!481 = distinct !{!481, !480, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls: argument 0"}
!482 = distinct !{!482, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls"}
!483 = distinct !{!483, !482, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECs7ZUl82OSlxp_6rustls: argument 0"}
!484 = distinct !{!484, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls"}
!485 = distinct !{!485, !484, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!486 = distinct !{!486, i1 true, !"_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListEENtNtB4_9try_trait3Try11from_outputCs7ZUl82OSlxp_6rustls"}
!487 = distinct !{!487, !486, !"_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListEENtNtB4_9try_trait3Try11from_outputCs7ZUl82OSlxp_6rustls: argument 0"}
!488 = distinct !{!488, i1 true, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs7ZUl82OSlxp_6rustls"}
!489 = distinct !{!489, !488, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs7ZUl82OSlxp_6rustls: argument 1"}
!490 = distinct !{!490, !488, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs7ZUl82OSlxp_6rustls: argument 0"}
!491 = !{!467}
!492 = !{!468}
!493 = !{!470, !468}
!494 = !{!467, !468}
!495 = !{i64 -1, i64 -9223372036854775758}
!496 = !{!472}
!497 = !{!477, !476, !474, !467, !468}
!498 = !{!481, !479}
!499 = !{!485, !483, !481, !479}
!500 = !{!487, !467}
!501 = !{!490, !489, !467}
!502 = distinct !{!502, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldRBQ_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBU_5error4joinBQ_E0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtB31_3vecINtB4C_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3A_EE0E0E0EBU_"}
!503 = distinct !{!503, !502, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1F_8adapters3map8map_foldRBQ_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBU_5error4joinBQ_E0NCINvNvB1z_8for_each4callB2X_NCINvMsk_NtB31_3vecINtB4C_3VecB2X_E14extend_trustedINtB2p_3MapBF_B3A_EE0E0E0EBU_: argument 0"}
!504 = distinct !{!504, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1H_3vecINtB3M_3VecB1D_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0BZ_"}
!505 = distinct !{!505, !504, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1H_3vecINtB3M_3VecB1D_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0BZ_: argument 1"}
!506 = distinct !{!506, !504, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_NtB1H_3vecINtB3M_3VecB1D_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2g_EE0E0E0BZ_: argument 0"}
!507 = distinct !{!507, i1 true, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums11ContentTypeE0B6_"}
!508 = distinct !{!508, !507, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums11ContentTypeE0B6_: argument 1"}
!509 = distinct !{!509, !507, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums11ContentTypeE0B6_: argument 0"}
!510 = distinct !{!510, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENCINvNtB3B_5error4joinB3x_E0EE0E0B3B_"}
!511 = distinct !{!511, !510, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENCINvNtB3B_5error4joinB3x_E0EE0E0B3B_: argument 0"}
!512 = distinct !{!512, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENCINvNtB2D_5error4joinB2z_E0EE0B2D_"}
!513 = distinct !{!513, !512, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENCINvNtB2D_5error4joinB2z_E0EE0B2D_: argument 0"}
!514 = !{!506, !505, !503}
!515 = !{!509, !508, !506, !505, !503}
!516 = !{!503}
!517 = !{!513, !511, !506, !503}
!518 = distinct !{!518, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBU_5error4joinBQ_E0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_NtB33_3vecINtB4E_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3C_EE0E0E0EBU_"}
!519 = distinct !{!519, !518, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBU_5error4joinBQ_E0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_NtB33_3vecINtB4E_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3C_EE0E0E0EBU_: argument 0"}
!520 = distinct !{!520, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1J_3vecINtB3O_3VecB1F_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0E0BZ_"}
!521 = distinct !{!521, !520, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1J_3vecINtB3O_3VecB1F_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0E0BZ_: argument 1"}
!522 = distinct !{!522, !520, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeNtNtCs4wP2HXfJTCR_5alloc6string6StringuNCINvNtBZ_5error4joinBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtB1J_3vecINtB3O_3VecB1F_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2i_EE0E0E0BZ_: argument 0"}
!523 = distinct !{!523, i1 true, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums13HandshakeTypeE0B6_"}
!524 = distinct !{!524, !523, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums13HandshakeTypeE0B6_: argument 1"}
!525 = distinct !{!525, !523, !"_RNCINvNtCs7ZUl82OSlxp_6rustls5error4joinNtNtB6_5enums13HandshakeTypeE0B6_: argument 0"}
!526 = distinct !{!526, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENCINvNtB3B_5error4joinB3x_E0EE0E0B3B_"}
!527 = distinct !{!527, !526, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4wP2HXfJTCR_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENCINvNtB3B_5error4joinB3x_E0EE0E0B3B_: argument 0"}
!528 = distinct !{!528, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENCINvNtB2D_5error4joinB2z_E0EE0B2D_"}
!529 = distinct !{!529, !528, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENCINvNtB2D_5error4joinB2z_E0EE0B2D_: argument 0"}
!530 = !{!522, !521, !519}
!531 = !{!525, !524, !522, !521, !519}
!532 = !{!519}
!533 = !{!529, !527, !522, !519}
!534 = distinct !{!534, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RShuNCNvMs0_NtNtBW_6client6commonNtB3q_17ClientAuthDetails7resolve0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4V_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3i_EE0E0E0EBW_"}
!535 = distinct !{!535, !534, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RShuNCNvMs0_NtNtBW_6client6commonNtB3q_17ClientAuthDetails7resolve0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4V_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3i_EE0E0E0EBW_: argument 0"}
!536 = distinct !{!536, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameRShuNCNvMs0_NtNtB11_6client6commonNtB26_17ClientAuthDetails7resolve0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B11_"}
!537 = distinct !{!537, !536, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameRShuNCNvMs0_NtNtB11_6client6commonNtB26_17ClientAuthDetails7resolve0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB46_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Y_EE0E0E0B11_: argument 0"}
!538 = distinct !{!538, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB3k_6client6commonNtB4m_17ClientAuthDetails7resolve0EE0E0B3k_"}
!539 = distinct !{!539, !538, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB3k_6client6commonNtB4m_17ClientAuthDetails7resolve0EE0E0B3k_: argument 1"}
!540 = distinct !{!540, !538, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callRShNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1r_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB3k_6client6commonNtB4m_17ClientAuthDetails7resolve0EE0E0B3k_: argument 0"}
!541 = distinct !{!541, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB2n_6client6commonNtB3p_17ClientAuthDetails7resolve0EE0B2n_"}
!542 = distinct !{!542, !541, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB2n_6client6commonNtB3p_17ClientAuthDetails7resolve0EE0B2n_: argument 1"}
!543 = distinct !{!543, !541, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecRShE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB2n_6client6commonNtB3p_17ClientAuthDetails7resolve0EE0B2n_: argument 0"}
!544 = !{!535}
!545 = !{!543, !542, !540, !539, !537, !535}
!546 = !{!"address", !"read_provenance"}
!547 = !{!543, !540, !537, !535}
!548 = distinct !{!548, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_"}
!549 = distinct !{!549, !548, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_: argument 0"}
!550 = distinct !{!550, !548, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtNtBP_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB42_BJ_EENCNvMs3_NtNtBP_6client3echNtB4Y_8EchState10grease_psk0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B4Q_EIB3i_NtNtBa_7convert10InfallibleB3G_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callBJ_B4G_NcNtB4G_5Break0E0B4G_E0E0B41_EBP_: argument 1"}
!551 = distinct !{!551, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_"}
!552 = distinct !{!552, !551, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_: argument 0"}
!553 = distinct !{!553, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderINtNtBa_6result6ResultB10_NtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2N_B10_EENCNvMs3_NtNtB16_6client3echNtB3K_8EchState10grease_psk0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3C_EIB21_NtNtBa_7convert10InfallibleB2q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6k_12try_for_each4callB10_B3r_NcNtB3r_5Break0E0B3r_E0E0B16_"}
!554 = distinct !{!554, !553, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderINtNtBa_6result6ResultB10_NtNtB16_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2N_B10_EENCNvMs3_NtNtB16_6client3echNtB3K_8EchState10grease_psk0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3C_EIB21_NtNtBa_7convert10InfallibleB2q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6k_12try_for_each4callB10_B3r_NcNtB3r_5Break0E0B3r_E0E0B16_: argument 0"}
!555 = distinct !{!555, i1 true, !"_RNCNvMs3_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_8EchState10grease_psk0Bb_"}
!556 = distinct !{!556, !555, !"_RNCNvMs3_NtNtCs7ZUl82OSlxp_6rustls6client3echNtB7_8EchState10grease_psk0Bb_: argument 0"}
!557 = distinct !{!557, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!558 = distinct !{!558, !557, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!559 = distinct !{!559, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_"}
!560 = distinct !{!560, !559, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEEEB1O_: argument 0"}
!561 = distinct !{!561, i1 true, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENCNvMs3_NtNtB1M_6client3echNtB2P_8EchState10grease_psk0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1M_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4K_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB60_5Break0E0B60_E0B1M_"}
!562 = distinct !{!562, !561, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENCNvMs3_NtNtB1M_6client3echNtB2P_8EchState10grease_psk0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1M_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4K_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB60_5Break0E0B60_E0B1M_: argument 1"}
!563 = distinct !{!563, !561, !"_RNCINvXNtNtCsj6eKBz9Db1c_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderENCNvMs3_NtNtB1M_6client3echNtB2P_8EchState10grease_psk0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1M_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4K_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB60_5Break0E0B60_E0B1M_: argument 0"}
!564 = distinct !{!564, i1 true, !"_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEENtNtB4_9try_trait3Try11from_outputB1a_"}
!565 = distinct !{!565, !564, !"_RNvXNtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEENtNtB4_9try_trait3Try11from_outputB1a_: argument 0"}
!566 = distinct !{!566, i1 true, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1c_"}
!567 = distinct !{!567, !566, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1c_: argument 1"}
!568 = distinct !{!568, !566, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake18PresharedKeyBinderEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualB1c_: argument 0"}
!569 = !{!549}
!570 = !{!550}
!571 = !{!552, !550}
!572 = !{!549, !550}
!573 = !{!554, !549, !550}
!574 = !{!556, !554, !549, !550}
!575 = !{!558}
!576 = !{!558, !556, !554, !549, !550}
!577 = !{!560}
!578 = !{!563, !562, !554, !549, !550}
!579 = !{!565, !549}
!580 = !{!568, !567, !549}
!581 = distinct !{!581, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtBW_6client2hs27emit_client_hello_for_retrys4_0NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_"}
!582 = distinct !{!582, !581, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtBW_6client2hs27emit_client_hello_for_retrys4_0NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5p_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_: argument 0"}
!583 = distinct !{!583, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_NtNtB11_5enums31CertificateCompressionAlgorithmuNCNvNtNtB11_6client2hs27emit_client_hello_for_retrys4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Q_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4B_3VecB1Q_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2C_EE0E0E0B11_"}
!584 = distinct !{!584, !583, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_NtNtB11_5enums31CertificateCompressionAlgorithmuNCNvNtNtB11_6client2hs27emit_client_hello_for_retrys4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Q_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4B_3VecB1Q_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2C_EE0E0E0B11_: argument 0"}
!585 = distinct !{null}
!586 = distinct !{!586, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterRDNtNtB1j_8compress16CertDecompressorEL_ENCNvNtNtB1j_6client2hs27emit_client_hello_for_retrys4_0EE0E0B1j_"}
!587 = distinct !{!587, !586, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterRDNtNtB1j_8compress16CertDecompressorEL_ENCNvNtNtB1j_6client2hs27emit_client_hello_for_retrys4_0EE0E0B1j_: argument 0"}
!588 = distinct !{!588, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRDNtNtBM_8compress16CertDecompressorEL_ENCNvNtNtBM_6client2hs27emit_client_hello_for_retrys4_0EE0BM_"}
!589 = distinct !{!589, !588, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRDNtNtBM_8compress16CertDecompressorEL_ENCNvNtNtBM_6client2hs27emit_client_hello_for_retrys4_0EE0BM_: argument 0"}
!590 = !{!582}
!591 = !{!584, !582}
!592 = !{!589, !587, !584, !582}
!593 = distinct !{!593, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtBW_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5E_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_"}
!594 = distinct !{!594, !593, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldRBQ_NtNtBW_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtBW_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvB1M_8for_each4callB3a_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5E_3VecB3a_E14extend_trustedINtB2C_3MapBF_B3V_EE0E0E0EBW_: argument 0"}
!595 = distinct !{!595, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_NtNtB11_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtB11_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Q_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4Q_3VecB1Q_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2C_EE0E0E0B11_"}
!596 = distinct !{!596, !595, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_NtNtB11_5enums31CertificateCompressionAlgorithmuNCNvNtNtNtB11_6server5tls1312client_hello26emit_certificate_req_tls130NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Q_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4Q_3VecB1Q_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2C_EE0E0E0B11_: argument 0"}
!597 = distinct !{null}
!598 = distinct !{!598, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterRDNtNtB1j_8compress16CertDecompressorEL_ENCNvNtNtNtB1j_6server5tls1312client_hello26emit_certificate_req_tls130EE0E0B1j_"}
!599 = distinct !{!599, !598, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2q_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterRDNtNtB1j_8compress16CertDecompressorEL_ENCNvNtNtNtB1j_6server5tls1312client_hello26emit_certificate_req_tls130EE0E0B1j_: argument 0"}
!600 = distinct !{!600, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRDNtNtBM_8compress16CertDecompressorEL_ENCNvNtNtNtBM_6server5tls1312client_hello26emit_certificate_req_tls130EE0BM_"}
!601 = distinct !{!601, !600, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterRDNtNtBM_8compress16CertDecompressorEL_ENCNvNtNtNtBM_6server5tls1312client_hello26emit_certificate_req_tls130EE0BM_: argument 0"}
!602 = !{!594}
!603 = !{!596, !594}
!604 = !{!601, !599, !596, !594}
!605 = distinct !{!605, i1 false, !"LVerDomain"}
!606 = distinct !{!606, !605}
!607 = distinct !{!607, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_"}
!608 = distinct !{!608, !607, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2W_8adapters3map8map_foldRBQ_BR_uNCNvMNtNtBV_6webpki6verifyNtB4n_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvB2Q_8for_each4callBR_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6a_3VecBR_E14extend_trustedINtB3G_3MapBF_B4i_EE0E0E0EBV_: argument 0"}
!609 = distinct !{!609, !605}
!610 = distinct !{!610, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EBW_uNCNvMNtNtB10_6webpki6verifyNtB33_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5l_3VecBW_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0B10_"}
!611 = distinct !{!611, !610, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EBW_uNCNvMNtNtB10_6webpki6verifyNtB33_25WebPkiSupportedAlgorithms17supported_schemes0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5l_3VecBW_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Y_EE0E0E0B10_: argument 0"}
!612 = distinct !{!612, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2a_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTB1f_RSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENCNvMNtNtB1j_6webpki6verifyNtB5k_25WebPkiSupportedAlgorithms17supported_schemes0EE0E0B1j_"}
!613 = distinct !{!613, !612, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2a_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTB1f_RSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENCNvMNtNtB1j_6webpki6verifyNtB5k_25WebPkiSupportedAlgorithms17supported_schemes0EE0E0B1j_: argument 0"}
!614 = distinct !{!614, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterTBI_RSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENCNvMNtNtBM_6webpki6verifyNtB4m_25WebPkiSupportedAlgorithms17supported_schemes0EE0BM_"}
!615 = distinct !{!615, !614, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterTBI_RSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENCNvMNtNtBM_6webpki6verifyNtB4m_25WebPkiSupportedAlgorithms17supported_schemes0EE0BM_: argument 0"}
!616 = distinct !{!616, !15, !16}
!617 = distinct !{!617, !17}
!618 = distinct !{!618, !15}
!619 = !{!606}
!620 = !{!608}
!621 = !{!609}
!622 = !{!615, !613, !611, !608}
!623 = distinct !{!623, i1 true, !"_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4ItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB2I_6client6commonNtB3B_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvB10_8for_each4callB2C_NCINvMsk_NtBc_3vecINtB5A_3VecB2C_E14extend_trustedINtB26_3MapB3_B3u_EE0E0E0EB2I_"}
!624 = distinct !{!624, !623, !"_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4ItertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB2I_6client6commonNtB3B_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvB10_8for_each4callB2C_NCINvMsk_NtBc_3vecINtB5A_3VecB2C_E14extend_trustedINtB26_3MapB3_B3u_EE0E0E0EB2I_: argument 1"}
!625 = distinct !{!625, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB12_6client6commonNtB1V_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4n_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB4p_11collections5btree3set4ItertEB1O_EE0E0E0B12_"}
!626 = distinct !{!626, !625, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRtNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeuNCNvMs_NtNtB12_6client6commonNtB1V_18ClientHelloDetails34server_sent_unsolicited_extensions0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4n_3VecBW_E14extend_trustedINtB4_3MapINtNtNtNtB4p_11collections5btree3set4ItertEB1O_EE0E0E0B12_: argument 0"}
!627 = distinct !{!627, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2f_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtNtB2h_11collections5btree3set4ItertENCNvMs_NtNtB1l_6client6commonNtB4q_18ClientHelloDetails34server_sent_unsolicited_extensions0EE0E0B1l_"}
!628 = distinct !{!628, !627, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB2f_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtNtB2h_11collections5btree3set4ItertENCNvMs_NtNtB1l_6client6commonNtB4q_18ClientHelloDetails34server_sent_unsolicited_extensions0EE0E0B1l_: argument 0"}
!629 = distinct !{!629, i1 true, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtBa_11collections5btree3set4ItertENCNvMs_NtNtBO_6client6commonNtB3r_18ClientHelloDetails34server_sent_unsolicited_extensions0EE0BO_"}
!630 = distinct !{!630, !629, !"_RNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB8_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeE14extend_trustedINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtNtBa_11collections5btree3set4ItertENCNvMs_NtNtBO_6client6commonNtB3r_18ClientHelloDetails34server_sent_unsolicited_extensions0EE0BO_: argument 0"}
!631 = !{!624}
!632 = !{!630, !628, !626, !624}
!633 = distinct !{!633, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_QNCNvMs_NtNtBN_6server2hsNtB4t_17ExpectClientHello18with_certified_key0E0E0B3d_EBN_"}
!634 = distinct !{!634, !633, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_QNCNvMs_NtNtBN_6server2hsNtB4t_17ExpectClientHello18with_certified_key0E0E0B3d_EBN_: argument 0"}
!635 = distinct !{!635, !633, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_QNCNvMs_NtNtBN_6server2hsNtB4t_17ExpectClientHello18with_certified_key0E0E0B3d_EBN_: argument 1"}
!636 = distinct !{!636, i1 true, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!637 = distinct !{!637, !636, !"_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!638 = distinct !{!638, i1 true, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvMs_NtNtB17_6server2hsNtB3I_17ExpectClientHello18with_certified_key0E0E0B17_"}
!639 = distinct !{!639, !638, !"_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvMs_NtNtB17_6server2hsNtB3I_17ExpectClientHello18with_certified_key0E0E0B17_: argument 0"}
!640 = distinct !{!640, i1 true, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteQNCNvMs_NtNtB1g_6server2hsNtB2c_17ExpectClientHello18with_certified_key0E0B1g_"}
!641 = distinct !{!641, !640, !"_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4find5checkNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteQNCNvMs_NtNtB1g_6server2hsNtB2c_17ExpectClientHello18with_certified_key0E0B1g_: argument 0"}
!642 = !{!634}
!643 = !{!634, !635}
!644 = !{!637, !634}
!645 = !{!639, !634, !635}
!646 = !{!641, !639, !634, !635}
!647 = distinct !{!647, i1 true, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len"}
!648 = distinct !{!648, !647, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len: argument 0"}
!649 = !{!648}
!650 = !{i64 -4, i64 -9223372036854775808}
!651 = distinct !{!651, i1 true, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier"}
!652 = distinct !{!652, !651, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier: argument 0"}
!653 = distinct !{!653, !651, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6server7builderINtNtB6_7builder13ConfigBuilderNtNtB4_11server_conn12ServerConfigNtBJ_13WantsVerifierE25with_client_cert_verifier: argument 1"}
!654 = distinct !{!654, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_"}
!655 = distinct !{!655, !654, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_: argument 0"}
!656 = distinct !{!656, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!657 = distinct !{!657, !656, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!658 = !{!652}
!659 = !{!653}
!660 = !{!657, !655, !653}
!661 = distinct !{!661, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_"}
!662 = distinct !{!662, !661, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7builder13WantsVerifierEBF_: argument 0"}
!663 = distinct !{!663, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!664 = distinct !{!664, !663, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!665 = !{!664, !662}
!666 = distinct !{!666, i1 true, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE8push_mutCs7ZUl82OSlxp_6rustls"}
!667 = distinct !{!667, !666, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE8push_mutCs7ZUl82OSlxp_6rustls: argument 0"}
!668 = distinct !{!668, !666, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorE8push_mutCs7ZUl82OSlxp_6rustls: argument 1"}
!669 = distinct !{!669, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls"}
!670 = distinct !{!670, !669, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls: argument 0"}
!671 = distinct !{!671, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!672 = distinct !{!672, !671, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!673 = distinct !{!673, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!674 = distinct !{!674, !673, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!675 = distinct !{!675, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls"}
!676 = distinct !{!676, !675, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerECs7ZUl82OSlxp_6rustls: argument 0"}
!677 = distinct !{!677, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!678 = distinct !{!678, !677, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!679 = distinct !{!679, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!680 = distinct !{!680, !679, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!681 = !{!667}
!682 = !{!668}
!683 = !{!674, !672, !670}
!684 = !{!680, !678, !676}
!685 = distinct !{!685, i1 true, !"_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity"}
!686 = distinct !{!686, !685, !"_RNvMs2_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayload13with_capacity: argument 0"}
!687 = !{!686}
!688 = distinct !{!688, i1 true, !"_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKey3new0Ba_"}
!689 = distinct !{!689, !688, !"_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKey3new0Ba_: argument 1"}
!690 = distinct !{!690, !688, !"_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB4_13RsaSigningKey3new0Ba_: argument 0"}
!691 = distinct !{!691, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEE3newCs7ZUl82OSlxp_6rustls"}
!692 = distinct !{!692, !691, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEE3newCs7ZUl82OSlxp_6rustls: argument 0"}
!693 = !{!690, !689}
!694 = !{!692}
!695 = distinct !{!695, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_"}
!696 = distinct !{!696, !695, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6client11client_conn12ClientConfigNtBE_13WantsVersionsEEBG_: argument 0"}
!697 = distinct !{!697, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!698 = distinct !{!698, !697, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!699 = distinct !{!699, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!700 = distinct !{!700, !699, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!701 = distinct !{!701, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!702 = distinct !{!702, !701, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!703 = distinct !{!703, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!704 = distinct !{!704, !703, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!705 = distinct !{!705, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!706 = distinct !{!706, !705, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!707 = distinct !{!707, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!708 = distinct !{!708, !707, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!709 = distinct !{!709, i1 true, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_"}
!710 = distinct !{!710, !709, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_: argument 0"}
!711 = distinct !{!711, i1 true, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8versionsNtB5_15EnabledVersions3new"}
!712 = distinct !{!712, !711, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8versionsNtB5_15EnabledVersions3new: argument 0"}
!713 = distinct !{!713, !17}
!714 = distinct !{!714, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_"}
!715 = distinct !{!715, !714, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6client11client_conn12ClientConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_: argument 1"}
!716 = distinct !{!716, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!717 = distinct !{!717, !716, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!718 = distinct !{!718, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!719 = distinct !{!719, !718, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!720 = distinct !{!720, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!721 = distinct !{!721, !720, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!722 = distinct !{!722, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!723 = distinct !{!723, !722, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!724 = !{!696}
!725 = !{!698}
!726 = !{!700}
!727 = !{!700, !698, !696}
!728 = !{!702}
!729 = !{!704}
!730 = !{!704, !702, !696}
!731 = !{!704, !702}
!732 = !{!706}
!733 = !{!708}
!734 = !{!708, !706, !696}
!735 = !{!708, !706}
!736 = !{!710}
!737 = !{!712}
!738 = !{!715}
!739 = !{!717}
!740 = !{!719}
!741 = !{!719, !717}
!742 = !{!721}
!743 = !{!723}
!744 = !{!723, !721}
!745 = distinct !{!745, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_"}
!746 = distinct !{!746, !745, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBG_6server11server_conn12ServerConfigNtBE_13WantsVersionsEEBG_: argument 0"}
!747 = distinct !{!747, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!748 = distinct !{!748, !747, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!749 = distinct !{!749, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!750 = distinct !{!750, !749, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!751 = distinct !{!751, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!752 = distinct !{!752, !751, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!753 = distinct !{!753, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!754 = distinct !{!754, !753, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!755 = distinct !{!755, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!756 = distinct !{!756, !755, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!757 = distinct !{!757, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!758 = distinct !{!758, !757, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!759 = distinct !{!759, i1 true, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_"}
!760 = distinct !{!760, !759, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmE8push_mutBL_: argument 0"}
!761 = distinct !{!761, i1 true, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8versionsNtB5_15EnabledVersions3new"}
!762 = distinct !{!762, !761, !"_RNvMs0_NtCs7ZUl82OSlxp_6rustls8versionsNtB5_15EnabledVersions3new: argument 0"}
!763 = distinct !{!763, !17}
!764 = distinct !{!764, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_"}
!765 = distinct !{!765, !764, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake20KeyExchangeAlgorithmENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtBW_7builderINtB2K_13ConfigBuilderNtNtNtBW_6server11server_conn12ServerConfigNtB2K_13WantsVersionsE22with_protocol_versions0EBW_: argument 1"}
!766 = distinct !{!766, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!767 = distinct !{!767, !766, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!768 = distinct !{!768, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!769 = distinct !{!769, !768, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!770 = distinct !{!770, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!771 = distinct !{!771, !770, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!772 = distinct !{!772, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!773 = distinct !{!773, !772, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!774 = !{!746}
!775 = !{!748}
!776 = !{!750}
!777 = !{!750, !748, !746}
!778 = !{!752}
!779 = !{!754}
!780 = !{!754, !752, !746}
!781 = !{!754, !752}
!782 = !{!756}
!783 = !{!758}
!784 = !{!758, !756, !746}
!785 = !{!758, !756}
!786 = !{!760}
!787 = !{!762}
!788 = !{!765}
!789 = !{!767}
!790 = !{!769}
!791 = !{!769, !767}
!792 = !{!771}
!793 = !{!773}
!794 = !{!773, !771}
!795 = distinct !{!795, i1 true, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from"}
!796 = distinct !{!796, !795, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from: argument 0"}
!797 = distinct !{!797, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_"}
!798 = distinct !{!798, !797, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_: argument 0"}
!799 = distinct !{!799, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_"}
!800 = distinct !{!800, !799, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_: argument 0"}
!801 = distinct !{!801, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_"}
!802 = distinct !{!802, !801, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_: argument 0"}
!803 = distinct !{!803, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_"}
!804 = distinct !{!804, !803, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_: argument 0"}
!805 = distinct !{!805, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_"}
!806 = distinct !{!806, !805, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_: argument 0"}
!807 = distinct !{!807, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!808 = distinct !{!808, !807, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!809 = !{!796}
!810 = !{!798, !796}
!811 = !{!800}
!812 = !{!808, !806, !804, !802}
!813 = distinct !{!813, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_"}
!814 = distinct !{!814, !813, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_: argument 0"}
!815 = distinct !{!815, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!816 = distinct !{!816, !815, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!817 = distinct !{!817, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_"}
!818 = distinct !{!818, !817, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_: argument 0"}
!819 = distinct !{!819, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!820 = distinct !{!820, !819, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!821 = distinct !{!821, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!822 = distinct !{!822, !821, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!823 = distinct !{!823, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!824 = distinct !{!824, !823, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!825 = distinct !{!825, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEE3newB14_"}
!826 = distinct !{!826, !825, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEE3newB14_: argument 0"}
!827 = distinct !{!827, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEEB1d_"}
!828 = distinct !{!828, !827, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEEB1d_: argument 0"}
!829 = distinct !{!829, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!830 = distinct !{!830, !829, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!831 = distinct !{!831, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_"}
!832 = distinct !{!832, !831, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_: argument 0"}
!833 = distinct !{!833, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!834 = distinct !{!834, !833, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!835 = distinct !{!835, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_"}
!836 = distinct !{!836, !835, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_EEB1g_: argument 0"}
!837 = distinct !{!837, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!838 = distinct !{!838, !837, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!839 = distinct !{!839, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_"}
!840 = distinct !{!840, !839, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10ResumptionEBH_: argument 0"}
!841 = distinct !{!841, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_EEB1g_"}
!842 = distinct !{!842, !841, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_EEB1g_: argument 0"}
!843 = distinct !{!843, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!844 = distinct !{!844, !843, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!845 = distinct !{!845, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!846 = distinct !{!846, !845, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!847 = distinct !{!847, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!848 = distinct !{!848, !847, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!849 = distinct !{!849, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_"}
!850 = distinct !{!850, !849, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEEB13_: argument 0"}
!851 = distinct !{!851, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_"}
!852 = distinct !{!852, !851, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EEB1e_: argument 0"}
!853 = distinct !{!853, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!854 = distinct !{!854, !853, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!855 = distinct !{!855, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!856 = distinct !{!856, !855, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!857 = distinct !{!857, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!858 = distinct !{!858, !857, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!859 = distinct !{!859, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!860 = distinct !{!860, !859, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!861 = distinct !{!861, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!862 = distinct !{!862, !861, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!863 = !{!816, !814}
!864 = !{!818}
!865 = !{!820}
!866 = !{!820, !818}
!867 = !{!822}
!868 = !{!824}
!869 = !{!824, !822}
!870 = !{!826}
!871 = !{!830, !828}
!872 = !{!832}
!873 = !{!834}
!874 = !{!834, !832}
!875 = !{!836}
!876 = !{!838}
!877 = !{!838, !836}
!878 = !{!840}
!879 = !{!842}
!880 = !{!844}
!881 = !{!844, !842, !840}
!882 = !{!846}
!883 = !{!848}
!884 = !{!848, !846}
!885 = !{!814}
!886 = !{!816}
!887 = !{!850}
!888 = !{!852}
!889 = !{!854}
!890 = !{!854, !852}
!891 = !{!856}
!892 = !{!858}
!893 = !{!858, !856}
!894 = !{!860}
!895 = !{!862}
!896 = !{!862, !860}
!897 = distinct !{!897, i1 true, !"_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref"}
!898 = distinct !{!898, !897, !"_RNvXs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB5_15PrefixedPayloadINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref: argument 0"}
!899 = !{!898}
!900 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!901 = distinct !{!901, i1 true, !"_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey15end_entity_cert"}
!902 = distinct !{!902, !901, !"_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey15end_entity_cert: argument 1"}
!903 = distinct !{!903, !901, !"_RNvMs2_NtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB5_12CertifiedKey15end_entity_cert: argument 0"}
!904 = distinct !{!904, i1 true, !"_RNvXs15_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq"}
!905 = distinct !{!905, !904, !"_RNvXs15_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_10BytesInnerNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq: argument 0"}
!906 = distinct !{!906, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls"}
!907 = distinct !{!907, !906, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls: argument 0"}
!908 = distinct !{!908, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!909 = distinct !{!909, !908, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!910 = distinct !{!910, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!911 = distinct !{!911, !910, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!912 = distinct !{!912, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls"}
!913 = distinct !{!913, !912, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls: argument 0"}
!914 = distinct !{!914, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!915 = distinct !{!915, !914, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!916 = distinct !{!916, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!917 = distinct !{!917, !916, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!918 = distinct !{!918, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls"}
!919 = distinct !{!919, !918, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types23SubjectPublicKeyInfoDerECs7ZUl82OSlxp_6rustls: argument 0"}
!920 = distinct !{!920, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls"}
!921 = distinct !{!921, !920, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types3DerECs7ZUl82OSlxp_6rustls: argument 0"}
!922 = distinct !{!922, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls"}
!923 = distinct !{!923, !922, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCseO5Jl7W60Eg_16rustls_pki_types10BytesInnerECs7ZUl82OSlxp_6rustls: argument 0"}
!924 = !{i64 1, i64 536870913}
!925 = !{!902}
!926 = !{!903, !902}
!927 = !{!905}
!928 = !{!911, !909, !907}
!929 = !{!917, !915, !913}
!930 = !{!923, !921, !919}
!931 = distinct !{!931, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!932 = distinct !{!932, !931, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!933 = !{!932}
!934 = distinct !{!934, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls"}
!935 = distinct !{!935, !934, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEE3newCs7ZUl82OSlxp_6rustls: argument 0"}
!936 = !{!935}
!937 = distinct !{!937, i1 true, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit"}
!938 = distinct !{!938, !937, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer11apply_limit: argument 0"}
!939 = distinct !{!939, i1 true, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len"}
!940 = distinct !{!940, !939, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len: argument 0"}
!941 = distinct !{!941, i1 true, !"_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at"}
!942 = distinct !{!942, !941, !"_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at: argument 0"}
!943 = distinct !{!943, !941, !"_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls4msgs7message8outboundNtB4_14OutboundChunks8split_at: argument 1"}
!944 = distinct !{!944, i1 true, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append"}
!945 = distinct !{!945, !944, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append: argument 1"}
!946 = distinct !{!946, !944, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer6append: argument 0"}
!947 = !{!938}
!948 = !{!940}
!949 = !{!940, !938}
!950 = !{!942}
!951 = !{!943}
!952 = !{!945}
!953 = !{!946, !945}
!954 = !{!946}
!955 = distinct !{!955, i1 true, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk"}
!956 = distinct !{!956, !955, !"_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer5chunk: argument 0"}
!957 = !{!956}
!958 = distinct !{!958, i1 true, !"_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read"}
!959 = distinct !{!959, !958, !"_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 1"}
!960 = distinct !{!960, !958, !"_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io5implsRShNtNtB7_4read4Read4read: argument 0"}
!961 = !{!959}
!962 = !{!960, !959}
!963 = !{!960}
!964 = distinct !{!964, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!965 = distinct !{!965, !964, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!966 = !{!965}
!967 = distinct !{!967, i1 true, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len"}
!968 = distinct !{!968, !967, !"_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3len: argument 0"}
!969 = !{!968}
!970 = distinct !{!970, i1 true, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB28_3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!971 = distinct !{!971, !970, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB28_3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 1"}
!972 = distinct !{!972, !970, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutNtNtNtBa_2io8io_slice7IoSliceENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtNtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque4iter4IterINtNtB28_3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!973 = distinct !{!973, !15, !16}
!974 = distinct !{!974, !16, !15}
!975 = distinct !{!975, !978}
!976 = !{!972, !971}
!977 = !{!971}
!978 = !{!"llvm.loop.peeled.count", i32 1}
!979 = distinct !{!979, i1 true, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from"}
!980 = distinct !{!980, !979, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from: argument 0"}
!981 = distinct !{!981, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_"}
!982 = distinct !{!982, !981, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_: argument 0"}
!983 = distinct !{!983, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_"}
!984 = distinct !{!984, !983, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_: argument 0"}
!985 = distinct !{!985, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_"}
!986 = distinct !{!986, !985, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_: argument 0"}
!987 = distinct !{!987, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_"}
!988 = distinct !{!988, !987, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_: argument 0"}
!989 = distinct !{!989, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_"}
!990 = distinct !{!990, !989, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_: argument 0"}
!991 = distinct !{!991, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!992 = distinct !{!992, !991, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!993 = !{!980}
!994 = !{!982, !980}
!995 = !{!984}
!996 = !{!992, !990, !988, !986}
!997 = distinct !{!997, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_EEB1g_"}
!998 = distinct !{!998, !997, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_EEB1g_: argument 0"}
!999 = distinct !{!999, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!1000 = distinct !{!1000, !999, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!1001 = distinct !{!1001, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20StoresServerSessionsEL_EEB1g_"}
!1002 = distinct !{!1002, !1001, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20StoresServerSessionsEL_EEB1g_: argument 0"}
!1003 = distinct !{!1003, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20StoresServerSessionsEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!1004 = distinct !{!1004, !1003, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn20StoresServerSessionsEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!1005 = distinct !{!1005, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!1006 = distinct !{!1006, !1005, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!1007 = distinct !{!1007, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!1008 = distinct !{!1008, !1007, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!1009 = distinct !{!1009, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEE3newB14_"}
!1010 = distinct !{!1010, !1009, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEE3newB14_: argument 0"}
!1011 = distinct !{!1011, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEEB1d_"}
!1012 = distinct !{!1012, !1011, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEEB1d_: argument 0"}
!1013 = distinct !{!1013, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!1014 = distinct !{!1014, !1013, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!1015 = distinct !{!1015, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_"}
!1016 = distinct !{!1016, !1015, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EEB1e_: argument 0"}
!1017 = distinct !{!1017, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!1018 = distinct !{!1018, !1017, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!1019 = distinct !{!1019, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1g_"}
!1020 = distinct !{!1020, !1019, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1g_: argument 0"}
!1021 = distinct !{!1021, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!1022 = distinct !{!1022, !1021, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!1023 = distinct !{!1023, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_"}
!1024 = distinct !{!1024, !1023, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_: argument 0"}
!1025 = distinct !{!1025, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!1026 = distinct !{!1026, !1025, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!1027 = distinct !{!1027, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!1028 = distinct !{!1028, !1027, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!1030 = distinct !{!1030, !1029, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!1031 = distinct !{!1031, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_EEB1g_"}
!1032 = distinct !{!1032, !1031, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_EEB1g_: argument 0"}
!1033 = distinct !{!1033, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!1034 = distinct !{!1034, !1033, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn18ResolvesServerCertEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!1035 = distinct !{!1035, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_"}
!1036 = distinct !{!1036, !1035, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_EEB1e_: argument 0"}
!1037 = distinct !{!1037, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!1038 = distinct !{!1038, !1037, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ClientCertVerifierEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!1039 = distinct !{!1039, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_"}
!1040 = distinct !{!1040, !1039, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_: argument 0"}
!1041 = distinct !{!1041, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_"}
!1042 = distinct !{!1042, !1041, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_: argument 0"}
!1043 = distinct !{!1043, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_"}
!1044 = distinct !{!1044, !1043, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EEB1e_: argument 0"}
!1045 = distinct !{!1045, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_"}
!1046 = distinct !{!1046, !1045, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_: argument 0"}
!1047 = !{!998}
!1048 = !{!1000}
!1049 = !{!1000, !998}
!1050 = !{!1002}
!1051 = !{!1004}
!1052 = !{!1004, !1002}
!1053 = !{!1006}
!1054 = !{!1008}
!1055 = !{!1008, !1006}
!1056 = !{!1010}
!1057 = !{!1014, !1012}
!1058 = !{!1016}
!1059 = !{!1018}
!1060 = !{!1018, !1016}
!1061 = !{!1020}
!1062 = !{!1022}
!1063 = !{!1022, !1020}
!1064 = !{!1024}
!1065 = !{!1026}
!1066 = !{!1026, !1024}
!1067 = !{!1028}
!1068 = !{!1030}
!1069 = !{!1030, !1028}
!1070 = !{!1034, !1032}
!1071 = !{!1036}
!1072 = !{!1038}
!1073 = !{!1038, !1036}
!1074 = !{!1040}
!1075 = !{!1042}
!1076 = !{!1042, !1040}
!1077 = !{!1044}
!1078 = !{!1046}
!1079 = !{!1046, !1044}
!1080 = distinct !{!1080, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls"}
!1081 = distinct !{!1081, !1080, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from"}
!1083 = distinct !{!1083, !1082, !"_RNvXNtNtCs7ZUl82OSlxp_6rustls6crypto6signerNtB2_16SingleCertAndKeyINtNtCsj6eKBz9Db1c_4core7convert4FromNtB2_12CertifiedKeyE4from: argument 0"}
!1084 = distinct !{!1084, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_"}
!1085 = distinct !{!1085, !1084, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_: argument 0"}
!1086 = distinct !{!1086, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_"}
!1087 = distinct !{!1087, !1086, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEE3newB16_: argument 0"}
!1088 = distinct !{!1088, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_"}
!1089 = distinct !{!1089, !1088, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEEB1k_: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_"}
!1091 = distinct !{!1091, !1090, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer16SingleCertAndKeyEBH_: argument 0"}
!1092 = distinct !{!1092, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_"}
!1093 = distinct !{!1093, !1092, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_: argument 0"}
!1094 = distinct !{!1094, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_"}
!1095 = distinct !{!1095, !1094, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBM_: argument 0"}
!1096 = distinct !{!1096, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_EEB1g_"}
!1097 = distinct !{!1097, !1096, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_EEB1g_: argument 0"}
!1098 = distinct !{!1098, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_"}
!1099 = distinct !{!1099, !1098, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer10SigningKeyEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_: argument 0"}
!1100 = !{!1081}
!1101 = !{!1083}
!1102 = !{!1085, !1083}
!1103 = !{!1087}
!1104 = !{!1095, !1093, !1091, !1089}
!1105 = !{!1097}
!1106 = !{!1099}
!1107 = !{!1099, !1097}
!1108 = distinct !{!1108, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1109 = distinct !{!1109, !1108, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1110 = distinct !{!1110, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1111 = distinct !{!1111, !1110, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1112 = !{!1109}
!1113 = !{!1111}
!1114 = distinct !{!1114, !15, !16}
!1115 = distinct !{!1115, !16, !15}
!1116 = distinct !{!1116, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!1117 = distinct !{!1117, !1116, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!1118 = !{!1117}
!1119 = distinct !{!1119, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1120 = distinct !{!1120, !1119, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1121 = distinct !{!1121, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1122 = distinct !{!1122, !1121, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1123 = distinct !{!1123, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1124 = distinct !{!1124, !1123, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1126 = distinct !{!1126, !1125, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1128 = distinct !{!1128, !1127, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1129 = distinct !{!1129, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1130 = distinct !{!1130, !1129, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1131 = distinct !{!1131, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1132 = distinct !{!1132, !1131, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1133 = distinct !{!1133, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1134 = distinct !{!1134, !1133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1135 = distinct !{!1135, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1136 = distinct !{!1136, !1135, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1137 = distinct !{!1137, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1138 = distinct !{!1138, !1137, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1139 = distinct !{!1139, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_"}
!1140 = distinct !{!1140, !1139, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEE3newB18_: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_"}
!1142 = distinct !{!1142, !1141, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEEB1m_: argument 0"}
!1143 = distinct !{!1143, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_"}
!1144 = distinct !{!1144, !1143, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign15EcdsaSigningKeyEBJ_: argument 0"}
!1145 = distinct !{!1145, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1146 = distinct !{!1146, !1145, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1147 = distinct !{!1147, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1148 = distinct !{!1148, !1147, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1149 = !{i16 -1, i16 17}
!1150 = !{!1120}
!1151 = !{!1122}
!1152 = !{!1124}
!1153 = !{!1126}
!1154 = !{!1128}
!1155 = !{!1128, !1126, !1124, !1122}
!1156 = !{!1130}
!1157 = !{!1132}
!1158 = !{!1134}
!1159 = !{!1136}
!1160 = !{!1138}
!1161 = !{!1138, !1136, !1134, !1132}
!1162 = !{!1140}
!1163 = !{!1142}
!1164 = !{!1144}
!1165 = !{!1146}
!1166 = !{!1148}
!1167 = !{!1148, !1146, !1144, !1142}
!1168 = distinct !{!1168, i1 true, !"_RNvMs9_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKey3new"}
!1169 = distinct !{!1169, !1168, !"_RNvMs9_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB5_17Ed25519SigningKey3new: argument 0"}
!1170 = distinct !{!1170, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEE3newCs7ZUl82OSlxp_6rustls"}
!1171 = distinct !{!1171, !1170, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEE3newCs7ZUl82OSlxp_6rustls: argument 0"}
!1172 = distinct !{!1172, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_"}
!1173 = distinct !{!1173, !1172, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEE3newB18_: argument 0"}
!1174 = distinct !{!1174, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEEB1m_"}
!1175 = distinct !{!1175, !1174, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEEB1m_: argument 0"}
!1176 = distinct !{!1176, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEBJ_"}
!1177 = distinct !{!1177, !1176, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign17Ed25519SigningKeyEBJ_: argument 0"}
!1178 = distinct !{!1178, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls"}
!1179 = distinct !{!1179, !1178, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1180 = distinct !{!1180, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1181 = distinct !{!1181, !1180, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs222MioR9bx1_9aws_lc_rs7ed2551914Ed25519KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1182 = !{!1169}
!1183 = !{!1171, !1169}
!1184 = !{!1173}
!1185 = !{!1181, !1179, !1177, !1175}
!1186 = distinct !{!1186, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEE3newB18_"}
!1187 = distinct !{!1187, !1186, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEE3newB18_: argument 0"}
!1188 = distinct !{!1188, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEEB1m_"}
!1189 = distinct !{!1189, !1188, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEEB1m_: argument 0"}
!1190 = distinct !{!1190, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_"}
!1191 = distinct !{!1191, !1190, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign13RsaSigningKeyEBJ_: argument 0"}
!1192 = distinct !{!1192, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1193 = distinct !{!1193, !1192, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1194 = distinct !{!1194, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1195 = distinct !{!1195, !1194, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1196 = !{!1187}
!1197 = !{!1195, !1193, !1191, !1189}
!1198 = distinct !{!1198, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_"}
!1199 = distinct !{!1199, !1198, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEE3newB16_: argument 0"}
!1200 = !{!1199}
!1201 = distinct !{!1201, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls"}
!1202 = distinct !{!1202, !1201, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem12SharedSecretECs7ZUl82OSlxp_6rustls: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls"}
!1204 = distinct !{!1204, !1203, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem10CiphertextECs7ZUl82OSlxp_6rustls: argument 0"}
!1205 = distinct !{!1205, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!1206 = distinct !{!1206, !1205, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!1207 = !{!1202}
!1208 = !{!1206, !1204}
!1209 = distinct !{!1209, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5start0Bc_"}
!1210 = distinct !{!1210, !1209, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5start0Bc_: argument 0"}
!1211 = distinct !{!1211, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_"}
!1212 = distinct !{!1212, !1211, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_: argument 1"}
!1213 = distinct !{!1213, !1211, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts_0Bc_: argument 0"}
!1214 = distinct !{!1214, i1 true, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts0_0Bc_"}
!1215 = distinct !{!1215, !1214, !"_RNCNvXNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkemNtB4_5MlKemNtBa_16SupportedKxGroup5starts0_0Bc_: argument 0"}
!1216 = distinct !{!1216, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveE3newBO_"}
!1217 = distinct !{!1217, !1216, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs2pq5mlkem6ActiveE3newBO_: argument 0"}
!1218 = distinct !{!1218, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem21EncapsulationKeyBytesECs7ZUl82OSlxp_6rustls"}
!1219 = distinct !{!1219, !1218, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs222MioR9bx1_9aws_lc_rs3kem21EncapsulationKeyBytesECs7ZUl82OSlxp_6rustls: argument 0"}
!1220 = distinct !{!1220, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs222MioR9bx1_9aws_lc_rs6buffer6BufferNtNtNtBG_3kem11buffer_type25EncapsulationKeyBytesTypeEECs7ZUl82OSlxp_6rustls"}
!1221 = distinct !{!1221, !1220, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs222MioR9bx1_9aws_lc_rs6buffer6BufferNtNtNtBG_3kem11buffer_type25EncapsulationKeyBytesTypeEECs7ZUl82OSlxp_6rustls: argument 0"}
!1222 = distinct !{!1222, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls"}
!1223 = distinct !{!1223, !1222, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CowShEECs7ZUl82OSlxp_6rustls: argument 0"}
!1224 = !{!1210}
!1225 = !{!1213, !1212}
!1226 = !{!1213}
!1227 = !{!1215}
!1228 = !{!1217}
!1229 = !{!1223, !1221, !1219}
!1230 = distinct !{!1230, i1 true, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!1231 = distinct !{!1231, !1230, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!1232 = distinct !{!1232, !1230, !"_RNvXsa_NtCs7ZUl82OSlxp_6rustls6verifyNtB5_21DigitallySignedStructNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!1233 = !{!1232, !1231}
!1234 = distinct !{!1234, i1 true, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls"}
!1235 = distinct !{!1235, !1234, !"_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7ZUl82OSlxp_6rustls: argument 0"}
!1236 = distinct !{!1236, i1 true, !"_RNCNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_9RsaSignerNtNtBb_6signer6Signer4signs_0Bd_"}
!1237 = distinct !{!1237, !1236, !"_RNCNvXs2_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_9RsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 0"}
!1238 = !{!1235}
!1239 = !{!1237}
!1240 = distinct !{!1240, i1 true, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_"}
!1241 = distinct !{!1241, !1240, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_: argument 1"}
!1242 = distinct !{!1242, !1240, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs2ec9signature9PublicKeyEB6_: argument 0"}
!1243 = distinct !{!1243, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1244 = distinct !{!1244, !1243, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1245 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!1246 = !{!1241}
!1247 = !{!1242, !1241}
!1248 = !{!1244}
!1249 = distinct !{!1249, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_"}
!1250 = distinct !{!1250, !1249, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerE3newBM_: argument 0"}
!1251 = distinct !{!1251, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_"}
!1252 = distinct !{!1252, !1251, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign11EcdsaSignerEBJ_: argument 0"}
!1253 = distinct !{!1253, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls"}
!1254 = distinct !{!1254, !1253, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1255 = distinct !{!1255, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1256 = distinct !{!1256, !1255, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pair12EcdsaKeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1257 = !{!1250}
!1258 = !{!1256, !1254, !1252}
!1259 = distinct !{!1259, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1260 = distinct !{!1260, !1259, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1261 = distinct !{!1261, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1262 = distinct !{!1262, !1261, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1263 = !{!1260}
!1264 = !{!1262}
!1265 = distinct !{!1265, i1 true, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign"}
!1266 = distinct !{!1266, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 1"}
!1267 = distinct !{!1267, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 2"}
!1268 = distinct !{!1268, !1265, !"_RNvMs2_NtNtCs222MioR9bx1_9aws_lc_rs2ec8key_pairNtB5_12EcdsaKeyPair4sign: argument 0"}
!1269 = distinct !{!1269, i1 true, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed"}
!1270 = distinct !{!1270, !1269, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed: argument 0"}
!1271 = distinct !{!1271, !1269, !"_RNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixed: argument 1"}
!1272 = distinct !{!1272, i1 true, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls"}
!1273 = distinct !{!1273, !1272, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls: argument 1"}
!1274 = distinct !{!1274, !1272, !"_RNCNvNtCs222MioR9bx1_9aws_lc_rs2ec19ecdsa_asn1_to_fixeds0_0Cs7ZUl82OSlxp_6rustls: argument 0"}
!1275 = distinct !{!1275, i1 true, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_"}
!1276 = distinct !{!1276, !1275, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4sign0Bd_: argument 0"}
!1277 = distinct !{!1277, i1 true, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_"}
!1278 = distinct !{!1278, !1277, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 1"}
!1279 = distinct !{!1279, !1277, !"_RNCNvXs7_NtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4signNtB7_11EcdsaSignerNtNtBb_6signer6Signer4signs_0Bd_: argument 0"}
!1280 = !{!1266}
!1281 = !{!1268, !1266, !1267}
!1282 = !{!1268}
!1283 = !{i8 0, i8 4}
!1284 = !{!1270, !1268}
!1285 = !{!1270, !1271, !1268, !1266, !1267}
!1286 = !{!1274, !1273, !1270, !1271, !1268, !1266, !1267}
!1287 = !{!"branch_weights", i32 4001, i32 4000000}
!1288 = !{!1274, !1270, !1271, !1268, !1266, !1267}
!1289 = !{!1271, !1268, !1266, !1267}
!1290 = !{!"branch_weights", i32 4000000, i32 4001}
!1291 = !{!1276}
!1292 = !{!1279, !1278}
!1293 = !{!1279}
!1294 = distinct !{!1294, i1 true, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_"}
!1295 = distinct !{!1295, !1294, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_: argument 1"}
!1296 = distinct !{!1296, !1294, !"_RINvNtNtCs7ZUl82OSlxp_6rustls6crypto6signer18public_key_to_spkiRNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key9PublicKeyEB6_: argument 0"}
!1297 = distinct !{!1297, i1 true, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls"}
!1298 = distinct !{!1298, !1297, !"_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls: argument 0"}
!1299 = !{!1295}
!1300 = !{!1296, !1295}
!1301 = !{!1298}
!1302 = distinct !{!1302, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_"}
!1303 = distinct !{!1303, !1302, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs_NtNtNtBU_6crypto9aws_lc_rs4signNtB2u_13RsaSigningKeyNtNtB2y_6signer10SigningKey13choose_scheme0EBU_: argument 0"}
!1304 = distinct !{!1304, i1 true, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerE3newBM_"}
!1305 = distinct !{!1305, !1304, !"_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerE3newBM_: argument 0"}
!1306 = distinct !{!1306, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerEBJ_"}
!1307 = distinct !{!1307, !1306, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4sign9RsaSignerEBJ_: argument 0"}
!1308 = distinct !{!1308, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1309 = distinct !{!1309, !1308, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1310 = distinct !{!1310, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1311 = distinct !{!1311, !1310, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
!1312 = distinct !{!1312, i1 true, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls"}
!1313 = distinct !{!1313, !1312, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairEECs7ZUl82OSlxp_6rustls: argument 0"}
!1314 = distinct !{!1314, i1 true, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls"}
!1315 = distinct !{!1315, !1314, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs222MioR9bx1_9aws_lc_rs3rsa3key7KeyPairENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls: argument 0"}
end_hunk_11
