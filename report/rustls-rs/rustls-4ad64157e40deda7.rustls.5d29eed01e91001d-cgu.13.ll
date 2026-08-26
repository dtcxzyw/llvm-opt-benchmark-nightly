Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.13?download=true
inline.NumInlined: 729
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsj_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone:bb.a
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.db, ptr %.sroa.257.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.36.sroa.0.0, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7.0..sroa.36.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.sroa.7, i64 24, i1 false)
  store i8 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.sroa.7)
  br label %bb.ca

bb.bg:                                            ; preds = %bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.de = load i64, ptr %i.dd, align 8, !range !207, !alias.scope !1400, !noalias !1403, !noundef !10 ; 2 uses
  switch i64 %i.de, label %default.unreachable29 [
    i64 0, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 1, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 5, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 6, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 7, label %bb.bj
    i64 8, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 9, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 10, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 11, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 12, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
    i64 13, label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1405
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1405
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.bl unwind label %bb.bk, !noalias !1403

bb.bi:                                            ; preds = %bb.bg
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1405
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1405
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %bb.bo unwind label %bb.bn, !noalias !1403

bb.bj:                                            ; preds = %bb.bg
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !1400, !noalias !1403, !nonnull !10, !noundef !10 ; 2 uses
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !1405
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %bb.bh
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %common.resume unwind label %bb.bm, !noalias !1403

bb.bl:                                            ; preds = %bb.bh
  %i.do = load <2 x ptr>, ptr %i.d, align 16, !noalias !1400
  %.sroa.21.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dp = load i64, ptr %.sroa.21.8..sroa_idx26, align 16, !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1405
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.bn, %bb.bk
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !1403
  unreachable

bb.bn:                                            ; preds = %bb.bi
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #23
          to label %common.resume unwind label %bb.bm, !noalias !1403

bb.bo:                                            ; preds = %bb.bi
  %i.ds = load <2 x ptr>, ptr %i.b, align 16, !noalias !1400
  %.sroa.21.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = load i64, ptr %.sroa.21.8..sroa_idx, align 16, !noalias !1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1405
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bp:                                            ; preds = %bb.bj
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1400, !noalias !1403, !nonnull !10, !align !26, !noundef !10
  %i.dw = insertelement <2 x ptr> poison, ptr %i.dk, i64 0
  %i.dx = insertelement <2 x ptr> %i.dw, ptr %i.dv, i64 1
  br label %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.bq:                                            ; preds = %bb.bj
  tail call void @llvm.trap()
  unreachable

_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bl, %bb.bo, %bb.bp
  %.sroa.21.sroa.0.0 = phi i64 [ %i.dp, %bb.bl ], [ %i.dt, %bb.bo ], [ undef, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dy = phi <2 x ptr> [ %i.do, %bb.bl ], [ %i.ds, %bb.bo ], [ %i.dx, %bb.bp ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ], [ undef, %bb.bg ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.de, ptr %i.dz, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.dy, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.21.sroa.0.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5.0..sroa.21.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.sroa.5, i64 24, i1 false)
  store i8 12, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.5)
  br label %bb.ca

bb.br:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
  store i8 13, ptr %0, align 8
  br label %bb.ca

bb.bs:                                            ; preds = %bb.a
  store i8 14, ptr %0, align 8
  br label %bb.ca

bb.bt:                                            ; preds = %bb.a
  store i8 15, ptr %0, align 8
  br label %bb.ca

bb.bu:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8
  br label %bb.ca

bb.bv:                                            ; preds = %bb.a
  store i8 17, ptr %0, align 8
  br label %bb.ca

bb.bw:                                            ; preds = %bb.a
  store i8 18, ptr %0, align 8
  br label %bb.ca

bb.bx:                                            ; preds = %bb.a
  store i8 19, ptr %0, align 8
  br label %bb.ca

bb.by:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !range !192, !noundef !10
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ed, ptr %i.ee, align 1
  store i8 20, ptr %0, align 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %bb.cb, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %_RNvXsN_NtCs7ZUl82OSlxp_6rustls5errorNtB5_23CertRevocationListErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %_RNvXsG_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16CertificateErrorNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.n, %bb.m, %_RNvXsE_NtCs7ZUl82OSlxp_6rustls5errorNtB5_16PeerIncompatibleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.cb:                                            ; preds = %bb.bz
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !10, !align !26, !noundef !10
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ek, ptr %i.em, align 8
  store i8 21, ptr %0, align 8
  br label %bb.ca

bb.cc:                                            ; preds = %bb.bz
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCshVVPy9isBpn_6webpki3crlNtB5_19UnknownStatusPolicyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !192, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 4, i64 5
  %.1 = select i1 %i.b, ptr @141, ptr @140
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !421

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1409
  invoke void @_RNvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeE7next_kvCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !1409, !noundef !10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !421

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1409
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
          to label %.noexc1.i unwind label %bb.g, !noalias !1406

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1409
  store ptr %i.k, ptr %i.a, align 8, !noalias !1409
  invoke void @_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !1406

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit unwind label %bb.g, !noalias !1406 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1y_4LeafENtB1y_4EdgeETRB1R_RB29_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1406
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4ItertNtNtB7_7set_val9SetValZSTENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  %i.h = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmuttNtNtB7_7set_val9SetValZSTE10init_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.d, !prof !421

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRtRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit
  %.sroa.3.0 = phi ptr [ %i.p, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRtRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRtRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1416
  invoke void @_RNvMsh_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !noalias !1416, !noundef !10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f, !prof !421

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28
          to label %.noexc1.i unwind label %bb.g, !noalias !1413

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  store ptr %i.k, ptr %i.a, align 8, !noalias !1416
  invoke void @_RNvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.g, !noalias !1413

.noexc2.i:                                        ; preds = %bb.f
  %i.m = invoke { ptr, ptr } @_RNvMsP_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmuttNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRtRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit unwind label %bb.g, !noalias !1413 ; 2 uses

bb.g:                                             ; preds = %.noexc2.i, %bb.f, %bb.e, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmuttNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeETRtRB1S_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECs7ZUl82OSlxp_6rustls.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  %i.o = extractvalue { ptr, ptr } %i.m, 0
  %i.p = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.c

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCshVVPy9isBpn_6webpki3crlNtB5_16ExpirationPolicyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !192, !noundef !10
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 6, i64 7
  %.1 = select i1 %i.b, ptr @245, ptr @244
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListNtB5_5Debug3fmtCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 60680079189834052) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCshVVPy9isBpn_6webpki3crl5types18CertRevocationListINtNtNtBa_5slice4iter4IterB14_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtCshVVPy9isBpn_6webpki3crlNtB5_12CrlsRequiredNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7ZUl82OSlxp_6rustls6verify12NoClientAuthNtB4_18ClientCertVerifier24requires_raw_public_keysB6_(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCshVVPy9isBpn_6webpki5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error11descriptionCs7ZUl82OSlxp_6rustls(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @248, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshVVPy9isBpn_6webpki5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeCs7ZUl82OSlxp_6rustls(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshVVPy9isBpn_6webpki5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error6sourceCs7ZUl82OSlxp_6rustls(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshVVPy9isBpn_6webpki5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7provideCs7ZUl82OSlxp_6rustls(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshVVPy9isBpn_6webpki5error5ErrorNtNtCsj6eKBz9Db1c_4core5error5Error7type_idCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @249, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE15extract_secretsB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 1), (8, 9)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 16, ptr %i.a, align 8
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE20handle_decrypt_errorB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE22export_keying_materialB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree readonly align 8 captures(none) %1, ptr noalias nofree nonnull readnone captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5, ptr noalias nofree readonly captures(none) %6, i64 %7) unnamed_addr #6 {
bb.a:
  store i8 16, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6server2hs17ExpectClientHelloINtNtB8_12common_state5StateNtNtB6_11server_conn20ServerConnectionDataE23send_key_update_requestB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  store i8 16, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls6webpki15client_verifier20WebPkiClientVerifierNtNtB8_6verify18ClientCertVerifier24requires_raw_public_keysB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs7ZUl82OSlxp_6rustls6vecbufNtB2_14ChunkVecBuffer3pop(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs4_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_19DeframerSliceBuffer10filled_mut(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10take_frontCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCshVVPy9isBpn_6webpki3crl5types16OwnedRevokedCertE10init_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtB7_7set_val9SetValZSTE10take_frontCs7ZUl82OSlxp_6rustls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingtNtNtB7_7set_val9SetValZSTE10init_frontCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCshVVPy9isBpn_6webpki5errorNtB2_5Error13most_specific(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCshVVPy9isBpn_6webpki11verify_certNtB5_8KeyUsageNtB5_25ExtendedKeyUsageValidator8validate(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_jEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types28CertificateRevocationListDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15CertificateTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums31CertificateCompressionAlgorithmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

end_hunk_0
