Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.06?download=true
inline.NumInlined: 901
inline.NumDeleted: 375
begin_hunk_0_@_RINvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENCINvNtNtB22_8adapters3map12map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMs1h_BZ_NtBZ_23CertificatePayloadTls1322into_certificate_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B5e_EB13_:bb.a
_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop11InPlaceDropB1X_EINtNtBa_6result6ResultB2L_zENCNvMs1h_B11_NtB11_23CertificatePayloadTls1322into_certificate_chain0NCINvNtB2Q_16in_place_collect24write_in_place_with_dropB1X_E0E0B15_.exit: ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.015, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop11InPlaceDropB1X_EINtNtBa_6result6ResultB2L_zENCNvMs1h_B11_NtB11_23CertificatePayloadTls1322into_certificate_chain0NCINvNtB2Q_16in_place_collect24write_in_place_with_dropB1X_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateEntryNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerINtNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_drop11InPlaceDropB1X_EINtNtBa_6result6ResultB2L_zENCNvMs1h_B11_NtB11_23CertificatePayloadTls1322into_certificate_chain0NCINvNtB2Q_16in_place_collect24write_in_place_with_dropB1X_E0E0B15_.exit ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B2i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.b = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !515, !noundef !6 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload, align 8, !alias.scope !515
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsaKJjC64KgbL_3std4sync9once_lockINtB5_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0B1x_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !515
  unreachable

_RNCINvMNtNtCsaKJjC64KgbL_3std4sync9once_lockINtB5_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0B1x_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2n_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !524, !noalias !525 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !524, !noalias !525 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !524, !noalias !525
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !528, !noalias !529, !noundef !6 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !528, !noalias !529
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2l_.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !530
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #31, !noalias !529
  unreachable

_RNvYNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2l_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !529
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig12current_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !6
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  %i.n = tail call { i64, i64 } %i.m(ptr noundef nonnull %i.k) #32 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 14, ptr %i.a, align 8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = extractvalue { i64, i64 } %i.n, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig13find_kx_group(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0, i16 noundef range(i16 0, 16) %1, i16 %2, i16 noundef range(i16 0, 10) %3, i16 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1D_4find5checkBJ_NCNvMNtNtBP_6client11client_connNtB4r_12ClientConfig13find_kx_group0E0E0B3e_EBP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = icmp ne i16 %1, 15
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i, %.lr.ph.i
  %i.j = phi ptr [ %i.d, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.val9.i = load ptr, ptr %i.j, align 8, !noalias !538, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val10.i = load ptr, ptr %i.l, align 8, !noalias !538, !nonnull !6, !align !12, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.m = getelementptr inbounds nuw i8, ptr %.val10.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !6, !alias.scope !539, !noalias !538, !nonnull !6
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %.val9.i, i16 noundef %3, i16 %4) #32, !noalias !540, !inline_history !537
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val10.i, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !6, !alias.scope !539, !noalias !538, !nonnull !6
  %i.r = tail call { i16, i16 } %i.q(ptr noundef nonnull %.val9.i) #32, !noalias !540, !inline_history !537
  %.fr6.i.i.i = freeze { i16, i16 } %i.r          ; 2 uses
  %i.s = extractvalue { i16, i16 } %.fr6.i.i.i, 0
  %i.t = icmp eq i16 %i.s, %1
  %i.u = extractvalue { i16, i16 } %.fr6.i.i.i, 1
  %i.v = icmp eq i16 %i.u, %2
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.v
  %or.cond22.i = select i1 %i.t, i1 %or.cond.i, i1 false
  br i1 %or.cond22.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1D_4find5checkBJ_NCNvMNtNtBP_6client11client_connNtB4r_12ClientConfig13find_kx_group0E0E0B3e_EBP_.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i: ; preds = %bb.c, %bb.b
  %i.w = icmp eq ptr %i.k, %i.g
  br i1 %i.w, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1D_4find5checkBJ_NCNvMNtNtBP_6client11client_connNtB4r_12ClientConfig13find_kx_group0E0E0B3e_EBP_.exit, label %bb.b

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1D_4find5checkBJ_NCNvMNtNtBP_6client11client_connNtB4r_12ClientConfig13find_kx_group0E0E0B3e_EBP_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i, %bb.a
  %.sroa.3.0.i = phi ptr [ undef, %bb.a ], [ %.val10.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i ], [ %.val10.i, %bb.c ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %.val9.i, %bb.c ], [ null, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_uINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB19_6client11client_connNtB3G_12ClientConfig13find_kx_group0E0E0B19_.exit.i ]
  %i.x = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.y = insertvalue { ptr, ptr } %i.x, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.y
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig15needs_key_share(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.01.0.in.in.i = load ptr, ptr %i.a, align 8, !alias.scope !546, !align !23, !noundef !6
  %.sroa.01.0.in.not.i = icmp eq ptr %.sroa.01.0.in.in.i, null
  br i1 %.sroa.01.0.in.not.i, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !546, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !546, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !546, !noundef !6 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version.exit, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.b
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, align 2, !range !24, !noalias !547
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, align 2, !range !24, !noalias !547
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.a
  %i.i = phi ptr [ %i.e, %.lr.ph.i.i.a ], [ %i.m, %bb.c ] ; 2 uses
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !15, !noalias !547, !noundef !6
  %i.j = trunc nuw i64 %.val2.i.i to i1
  %i.k = select i1 %i.j, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i.i, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i
  %i.l = icmp eq i16 %i.k, 5                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.m, %i.h
  %or.cond = select i1 %i.l, i1 true, i1 %.not9.i.i
  br i1 %or.cond, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version.exit, label %bb.c

_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig16supports_version(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0, i16 noundef range(i16 0, 10) %1, i16 %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  switch i16 %1, label %.loopexit [
    i16 4, label %bb.c
    i16 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 328, %bb.b ], [ 320, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.01.0.in.in = load ptr, ptr %i.a, align 8, !align !23, !noundef !6
  %.sroa.01.0.in.not = icmp eq ptr %.sroa.01.0.in.in, null
  br i1 %.sroa.01.0.in.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, align 2, !range !24, !noalias !551
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, align 2, !range !24, !noalias !551
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i, %.lr.ph.i.a
  %i.i = phi ptr [ %i.e, %.lr.ph.i.a ], [ %i.m, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i ] ; 2 uses
  %.val2.i = load i64, ptr %i.i, align 8, !range !15, !noalias !551, !noundef !6
  %i.j = trunc nuw i64 %.val2.i to i1
  %i.k = select i1 %i.j, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i
  %i.l = icmp eq i16 %i.k, %1
  br i1 %i.l, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig16supports_version0EBU_.exit, label %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i

_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not9.i = icmp eq ptr %i.m, %i.h
  br i1 %.not9.i, label %.loopexit, label %bb.e

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig16supports_version0EBU_.exit: ; preds = %bb.e
  %i.n = icmp eq i16 %1, 5
  %not. = xor i1 %3, true
  %spec.select = or i1 %i.n, %not.
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig16supports_version0EBU_.exit, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ %spec.select, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig16supports_version0EBU_.exit ], [ false, %bb.c ], [ false, %bb.a ], [ false, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig16supports_version0B8_.exit.backedge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig17find_cipher_suite(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0, i16 noundef range(i16 0, 377) %1, i16 %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = icmp ne i16 %1, 376                      ; 2 uses
  br i1 %3, label %.lr.ph.split.split.i, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  br i1 %i.i, label %.lr.ph.split.us.i.us, label %.lr.ph.split.us.i

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us
  %i.j = phi ptr [ %i.o, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us ], [ %i.d, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val10.us.i.us = load ptr, ptr %i.k, align 8, !noalias !556, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val10.us.i.us, i64 72
  %i.m = load i16, ptr %i.l, align 8, !range !25, !noalias !556, !noundef !6
  %i.n = icmp eq i16 %i.m, %1
  br i1 %i.n, label %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us: ; preds = %.lr.ph.split.us.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit, label %.lr.ph.split.us.i.us

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i
  %i.q = phi ptr [ %i.r, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i ], [ %i.d, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %.val10.us.i = load ptr, ptr %i.s, align 8, !noalias !556, !nonnull !6, !noundef !6 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val10.us.i, i64 72
  %i.u = load i16, ptr %i.t, align 8, !range !25, !noalias !556, !noundef !6
  %i.v = icmp eq i16 %i.u, 376
  br i1 %i.v, label %bb.b, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val10.us.i, i64 74
  %i.x = load i16, ptr %i.w, align 2, !noalias !556
  %i.y = icmp eq i16 %i.x, %2
  br i1 %i.y, label %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i: ; preds = %bb.b, %.lr.ph.split.us.i
  %i.z = icmp eq ptr %i.r, %i.g
  br i1 %i.z, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit, label %.lr.ph.split.us.i

_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i: ; preds = %bb.b, %.lr.ph.split.us.i.us
  %.us-phi = phi ptr [ %i.j, %.lr.ph.split.us.i.us ], [ %i.q, %bb.b ]
  %.us-phi9 = phi ptr [ %.val10.us.i.us, %.lr.ph.split.us.i.us ], [ %.val10.us.i, %bb.b ]
  %.val9.us.le.i = load i64, ptr %.us-phi, align 8, !range !15, !noalias !556, !noundef !6
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i
  %i.aa = phi ptr [ %i.ab, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val10.i = load ptr, ptr %i.ac, align 8, !noalias !556, !nonnull !6, !noundef !6 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10.i, i64 72
  %i.ae = load i16, ptr %i.ad, align 8, !range !25, !noalias !556, !noundef !6
  %i.af = icmp eq i16 %i.ae, %1
  br i1 %i.af, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i

bb.c:                                             ; preds = %.lr.ph.split.split.i
  %.val9.i = load i64, ptr %i.aa, align 8, !range !15, !noalias !556, !noundef !6
  %i.ag = trunc nuw i64 %.val9.i to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %.val10.i, i64 74
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !556
  %i.aj = icmp eq i16 %i.ai, %2
  %or.cond.not30.not32.i = select i1 %i.i, i1 true, i1 %i.aj
  %brmerge.not.i = and i1 %or.cond.not30.not32.i, %i.ag
  br i1 %brmerge.not.i, label %.split.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i

.split.i.i.i:                                     ; preds = %bb.c
  %i.ak = load ptr, ptr %.val10.i, align 8, !noalias !556, !noundef !6
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i: ; preds = %.split.i.i.i, %bb.c, %.lr.ph.split.split.i
  %i.al = icmp eq ptr %i.ab, %i.g
  br i1 %i.al, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit, label %.lr.ph.split.split.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowBJ_ENCINvNvB1C_4find5checkBJ_NCNvMNtNtBN_6client11client_connNtB4q_12ClientConfig17find_cipher_suite0E0E0B3d_EBN_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us, %.split.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i, %bb.a
  %.sroa.3.0.i = phi ptr [ undef, %bb.a ], [ %.val10.i, %.split.i.i.i ], [ %.us-phi9, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us ], [ %.val10.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i ]
  %.sroa.0.0.i = phi i64 [ 2, %bb.a ], [ 1, %.split.i.i.i ], [ %.val9.us.le.i, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17find_cipher_suite0B8_.exit.i.i._crit_edge.split.us.i ], [ 2, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i.us ], [ 2, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.i ], [ 2, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copied13copy_try_foldNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_NCNvMNtNtB17_6client11client_connNtB3F_12ClientConfig17find_cipher_suite0E0E0B17_.exit.us.i ]
  %i.am = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.an = insertvalue { i64, ptr } %i.am, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.an
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig17supports_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(344) %0, i1 noundef zeroext %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i = icmp ne i64 %i.f, 0                   ; 2 uses
  %brmerge.not = and i1 %1, %.not.i
  br i1 %brmerge.not, label %.lr.ph.split.us.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig17supports_protocol0EBU_.exit

.lr.ph.split.us.i:                                ; preds = %bb.a, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i
  %i.h = phi ptr [ %i.i, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.val2.us.i = load i64, ptr %i.h, align 8, !noalias !560
  %i.j = trunc nuw i64 %.val2.us.i to i1
  br i1 %i.j, label %.split.us.i, label %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val3.us.i = load ptr, ptr %i.k, align 8, !noalias !560, !nonnull !6, !noundef !6
  %i.l = load ptr, ptr %.val3.us.i, align 8, !noalias !560, !noundef !6
  %.not.us.i = icmp eq ptr %i.l, null
  br i1 %.not.us.i, label %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig17supports_protocol0EBU_.exit

_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i: ; preds = %.split.us.i, %.lr.ph.split.us.i
  %.not13.i = icmp eq ptr %i.i, %i.g
  br i1 %.not13.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig17supports_protocol0EBU_.exit, label %.lr.ph.split.us.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBU_6client11client_connNtB2x_12ClientConfig17supports_protocol0EBU_.exit: ; preds = %.split.us.i, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i, %bb.a
  %.lcssa.i = phi i1 [ %.not.i, %bb.a ], [ false, %_RNCNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_12ClientConfig17supports_protocol0B8_.exit.backedge.us.i ], [ true, %.split.us.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig21builder_with_provider(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 16, i64 noundef 8) #22 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !565
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

end_hunk_0
begin_hunk_1_@_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_14EarlyDataState6accept:bb.a
  store i64 %1, ptr %.sroa.0.sroa.5.0..sroa_idx6, align 8
  %.sroa.0.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx8, align 8
  %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx8.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx8.sroa_idx, i8 0, i64 24, i1 false)
  store i64 %1, ptr %.sroa.5.0..sroa_idx1, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB5_14EarlyDataState6reject(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !674, !noundef !6 ; 2 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn14EarlyDataStateEBH_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferEBF_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferEBF_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn14EarlyDataStateEBH_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferEBF_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  store i64 4, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn14EarlyDataStateEBH_.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferEBF_.exit.i
  store i64 4, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_10Resumption18in_memory_sessions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cacheNtB4_24ClientSessionMemoryCache3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, i64 noundef %1)
  store i64 1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !677
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 104, i64 noundef 8) #22, !noalias !677 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache24ClientSessionMemoryCacheEE3newB18_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache24ClientSessionMemoryCacheEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #28
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache24ClientSessionMemoryCacheEE3newB18_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @34, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB4_10Resumption8disabled(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !680
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 16, i64 noundef 8) #22, !noalias !680 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33, !noalias !680
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @35, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig12current_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !6
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  %i.n = tail call { i64, i64 } %i.m(ptr noundef nonnull %i.k) #32 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 14, ptr %i.a, align 8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = extractvalue { i64, i64 } %i.n, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig16supports_version(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %0, i16 noundef range(i16 0, 10) %1, i16 %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  switch i16 %1, label %.loopexit [
    i16 4, label %bb.c
    i16 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 208, %bb.b ], [ 200, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.01.0.in.in = load ptr, ptr %i.a, align 8, !align !23, !noundef !6
  %.sroa.01.0.in.not = icmp eq ptr %.sroa.01.0.in.in, null
  br i1 %.sroa.01.0.in.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, align 2, !range !24, !noalias !684
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, align 2, !range !24, !noalias !684
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i, %.lr.ph.i.a
  %i.i = phi ptr [ %i.e, %.lr.ph.i.a ], [ %i.m, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i ] ; 2 uses
  %.val2.i = load i64, ptr %i.i, align 8, !range !15, !noalias !684, !noundef !6
  %i.j = trunc nuw i64 %.val2.i to i1
  %i.k = select i1 %i.j, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i
  %i.l = icmp eq i16 %i.k, %1
  br i1 %i.l, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig16supports_version0EBU_.exit, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not9.i = icmp eq ptr %i.m, %i.h
  br i1 %.not9.i, label %.loopexit, label %bb.e

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig16supports_version0EBU_.exit: ; preds = %bb.e
  %i.n = icmp eq i16 %1, 5
  %not. = xor i1 %3, true
  %spec.select = or i1 %i.n, %not.
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig16supports_version0EBU_.exit, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.d ], [ %spec.select, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig16supports_version0EBU_.exit ], [ false, %bb.c ], [ false, %bb.a ], [ false, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig16supports_version0Ba_.exit.backedge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig17supports_protocol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %0, i1 noundef zeroext %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i = icmp ne i64 %i.f, 0                   ; 2 uses
  %brmerge.not = and i1 %1, %.not.i
  br i1 %brmerge.not, label %.lr.ph.split.us.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig17supports_protocol0EBU_.exit

.lr.ph.split.us.i:                                ; preds = %bb.a, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i
  %i.h = phi ptr [ %i.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.val2.us.i = load i64, ptr %i.h, align 8, !noalias !688
  %i.j = trunc nuw i64 %.val2.us.i to i1
  br i1 %i.j, label %.split.us.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val3.us.i = load ptr, ptr %i.k, align 8, !noalias !688, !nonnull !6, !noundef !6
  %i.l = load ptr, ptr %.val3.us.i, align 8, !noalias !688, !noundef !6
  %.not.us.i = icmp eq ptr %i.l, null
  br i1 %.not.us.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig17supports_protocol0EBU_.exit

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i: ; preds = %.split.us.i, %.lr.ph.split.us.i
  %.not13.i = icmp eq ptr %i.i, %i.g
  br i1 %.not13.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig17supports_protocol0EBU_.exit, label %.lr.ph.split.us.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBU_6server11server_connNtB2z_12ServerConfig17supports_protocol0EBU_.exit: ; preds = %.split.us.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i, %bb.a
  %.lcssa.i = phi i1 [ %.not.i, %bb.a ], [ false, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB6_12ServerConfig17supports_protocol0Ba_.exit.backedge.us.i ], [ true, %.split.us.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig21builder_with_provider(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 16, i64 noundef 8) #22 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !693
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEEB1d_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig30builder_with_protocol_versions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMNtCs7ZUl82OSlxp_6rustls6cryptoNtB2_14CryptoProvider42get_default_or_install_from_crate_features() ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !703
  store ptr %i.i, ptr %i.a, align 8, !noalias !703
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !703
  %i.j = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 257) 16, i64 noundef 8) #22, !noalias !703 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig21builder_with_provider.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #33
          to label %.noexc.i unwind label %bb.d, !noalias !703

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !704
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %common.resume

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #30
          to label %common.resume unwind label %bb.f, !noalias !703

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29, !noalias !703
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.u, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig21builder_with_provider.exit: ; preds = %bb.b
  store i64 1, ptr %i.j, align 8, !noalias !703
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !703
  store ptr %i.i, ptr %i.c, align 8, !alias.scope !703
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.p, align 8, !alias.scope !703
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @10, ptr %i.q, align 8, !alias.scope !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !703
  call void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls7builderINtB5_13ConfigBuilderNtNtNtB7_6server11server_conn12ServerConfigNtB5_13WantsVersionsE22with_protocol_versionsB7_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.r = load i64, ptr %i.d, align 8, !range !26, !alias.scope !706, !noalias !705, !noundef !6
  %i.s = icmp eq i64 %i.r, -4
  br i1 %i.s, label %bb.g, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtCs7ZUl82OSlxp_6rustls7builder13ConfigBuilderNtNtNtBM_6server11server_conn12ServerConfigNtBK_13WantsVerifierENtNtBM_5error5ErrorE6unwrapBM_.exit, !prof !22

bb.g:                                             ; preds = %_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server11server_connNtB4_12ServerConfig21builder_with_provider.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !707
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !705
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
          to label %bb.i unwind label %bb.h, !noalias !707

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b) #28
          to label %common.resume unwind label %bb.j, !noalias !707

bb.i:                                             ; preds = %bb.g
  unreachable

end_hunk_1
