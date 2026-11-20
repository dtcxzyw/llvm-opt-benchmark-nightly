Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.13?download=true
inline.NumInlined: 729
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error:bb.a
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775790, ptr %i.bo, align 8
  store i8 11, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.z

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ae:                                            ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_jEEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %common.resume unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs7ZUl82OSlxp_6rustls6webpki6verify18verify_server_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  call void @_RNvMs_NtCshVVPy9isBpn_6webpki10end_entityNtB4_13EndEntityCert32verify_is_valid_for_subject_name(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.b = load i64, ptr %i.a, align 8, !range !29, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs7ZUl82OSlxp_6rustls6webpki6verify22verify_tls12_signature(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.619 = alloca [64 x i8], align 8          ; 5 uses
  %.sroa.613 = alloca [64 x i8], align 8          ; 5 uses
  %i.h = alloca [248 x i8], align 8               ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load i16, ptr %i.i, align 8, !range !41, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.l = load i16, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val60 = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val60, 24
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 2 uses
  %i.p = icmp eq i64 %.val60, 0
  br i1 %i.p, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.q = icmp eq i16 %i.j, 16
  br i1 %i.q, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %.val, %.lr.ph.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = load i16, ptr %i.r, align 8, !range !41, !alias.scope !1187, !noalias !1188, !noundef !5
  %i.u = icmp eq i16 %i.t, 16
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.split.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.w = load i16, ptr %i.v, align 2, !alias.scope !1187, !noalias !1188, !noundef !5
  %i.x = icmp eq i16 %i.w, %i.l
  br i1 %i.x, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.split.us.i
  %i.y = icmp eq ptr %i.s, %i.o
  br i1 %i.y, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i, label %.lr.ph.i.split.us.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %i.z = phi ptr [ %i.ai, %bb.d ], [ %.val, %.lr.ph.i.i ] ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !range !41, !alias.scope !1187, !noalias !1188, !noundef !5
  %i.ab = icmp eq i16 %i.aa, %i.j
  br i1 %i.ab, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i, label %bb.d

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i: ; preds = %.lr.ph.i.split.i, %bb.b
  %.us-phi.i = phi ptr [ %i.r, %bb.b ], [ %i.z, %.lr.ph.i.split.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1187, !noalias !1188, !nonnull !5, !align !11, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1187, !noalias !1188, !noundef !5
  %i.ag = insertvalue { ptr, i64 } poison, ptr %i.ad, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %i.af, 1
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i

bb.d:                                             ; preds = %.lr.ph.i.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.o
  br i1 %i.aj, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i, label %.lr.ph.i.split.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i: ; preds = %bb.d, %bb.c, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i, %bb.a
  %.merged.i.i = phi { ptr, i64 } [ %i.ah, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i ], [ { ptr null, i64 undef }, %bb.a ], [ { ptr null, i64 undef }, %bb.c ], [ { ptr null, i64 undef }, %bb.d ] ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 3 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtB2_25WebPkiSupportedAlgorithms14convert_scheme.exit, label %bb.e

_RNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtB2_25WebPkiSupportedAlgorithms14convert_scheme.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i
  store i8 9, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 62, ptr %.sroa.444.0..sroa_idx, align 1
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.545.0..sroa_idx, align 8
  br label %bb.ab

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619)
  call void @_RNvXNtCshVVPy9isBpn_6webpki10end_entityNtB2_13EndEntityCertINtNtCsj6eKBz9Db1c_4core7convert7TryFromRNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerE8try_from(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
  %i.al = load i64, ptr %i.a, align 8, !range !4, !noundef !5 ; 2 uses
  %i.am = icmp eq i64 %i.al, -2
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.619, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.619, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 2 uses
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.550.0..sroa_idx, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.449.0..sroa_idx, i64 64, i1 false)
  store i64 %i.al, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %i.g, align 8
  %.idx = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not87 = icmp eq i64 %i.ao, 0
  br i1 %.not87, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775760, ptr %i.b, align 8
  br label %bb.v

.lr.ph:                                           ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62
  %.sroa.026.088 = phi ptr [ %i.ak, %.lr.ph ], [ %i.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62 ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.026.088, i64 16 ; 2 uses
  %i.av = load ptr, ptr %.sroa.026.088, align 8, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.026.088, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !11, !noundef !5
  invoke void @_RNvMs_NtCshVVPy9isBpn_6webpki10end_entityNtB4_13EndEntityCert16verify_signature(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.h, ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at)
          to label %bb.i unwind label %.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62
  %.sroa.028.0.copyload.pre = load i64, ptr %i.g, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775760, ptr %i.b, align 8
  %.not57 = icmp eq i64 %.sroa.028.0.copyload.pre, -1
  br i1 %.not57, label %bb.v, label %bb.u

.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.o
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %.thread80.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.c, align 8, !range !29, !noundef !5
  switch i64 %i.ay, label %bb.o [
    i64 -1, label %bb.j
    i64 -9223372036854775759, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  store i8 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %bb.j
  %i.az = load i64, ptr %i.g, align 8, !range !29, !alias.scope !1189, !noundef !5
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit unwind label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.bb = load i64, ptr %i.g, align 8, !range !29, !alias.scope !1190, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62 unwind label %.thread

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.p unwind label %.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %.thread80.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit62: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %.not = icmp eq ptr %i.au, %i.ap
  br i1 %.not, label %._crit_edge, label %bb.h

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68: ; preds = %.thread80.loopexit.split-lp, %bb.ac, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.q ], [ %.pn79, %.thread80.loopexit.split-lp ], [ %.pn79, %bb.ac ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(248) %i.h) #23
          to label %common.resume unwind label %bb.ad

bb.q:                                             ; preds = %bb.w, %bb.u, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bf = load i64, ptr %i.h, align 8, !range !6, !alias.scope !1191, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68, %bb.z, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %i.bg, %bb.s ], [ %.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i: ; preds = %bb.r
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.u:                                             ; preds = %._crit_edge
  store i64 %.sroa.028.0.copyload.pre, ptr %i.d, align 8
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.530.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i64 48, i1 false)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.w unwind label %bb.q

bb.v:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCs7ZUl82OSlxp_6rustls6webpki9pki_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bj = load i64, ptr %i.h, align 8, !range !6, !alias.scope !1192, !noundef !5
  %.not.i.i.i.i.i63 = icmp eq i64 %i.bj, -1
  br i1 %.not.i.i.i.i.i63, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit66, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i65 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i65: ; preds = %bb.y
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit66

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit66: ; preds = %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit66, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki10end_entity13EndEntityCertECs7ZUl82OSlxp_6rustls.exit, %_RNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtB2_25WebPkiSupportedAlgorithms14convert_scheme.exit
  ret void

.thread80.loopexit.split-lp:                      ; preds = %.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread
  %.pn79 = phi { ptr, i32 } [ %i.bd, %.thread ], [ %lpad.loopexit.split-lp115, %.thread80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bm = load i64, ptr %i.g, align 8, !range !29, !alias.scope !1193, !noundef !5
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68, label %bb.ac

bb.ac:                                            ; preds = %.thread80.loopexit.split-lp
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCshVVPy9isBpn_6webpki5error5ErrorECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshVVPy9isBpn_6webpki5error5ErrorEECs7ZUl82OSlxp_6rustls.exit68
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs7ZUl82OSlxp_6rustls6webpki6verify22verify_tls13_signature(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 3 uses
  %i.c = alloca [248 x i8], align 8               ; 4 uses
  %.sroa.622 = alloca [64 x i8], align 8          ; 5 uses
  %.sroa.616 = alloca [64 x i8], align 8          ; 5 uses
  %i.d = alloca [248 x i8], align 8               ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.f = tail call noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls5enumsNtB2_15SignatureScheme18supported_in_tls13(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.e)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 62, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.e, align 8, !range !41, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.i = load i16, ptr %i.h, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val55 = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val55, 24
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 2 uses
  %i.m = icmp eq i64 %.val55, 0
  br i1 %i.m, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = icmp eq i16 %i.g, 16
  br i1 %i.n, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %bb.e
  %i.o = phi ptr [ %i.p, %bb.e ], [ %.val, %.lr.ph.i.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i16, ptr %i.o, align 8, !range !41, !alias.scope !1213, !noalias !1214, !noundef !5
  %i.r = icmp eq i16 %i.q, 16
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.split.us.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.t = load i16, ptr %i.s, align 2, !alias.scope !1213, !noalias !1214, !noundef !5
  %i.u = icmp eq i16 %i.t, %i.i
  br i1 %i.u, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.split.us.i
  %i.v = icmp eq ptr %i.p, %i.l
  br i1 %i.v, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1D_QNCNvMNtNtBV_6webpki6verifyNtB3O_25WebPkiSupportedAlgorithms14convert_scheme0EBV_.exit.i, label %.lr.ph.i.split.us.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %bb.f
  %i.w = phi ptr [ %i.af, %bb.f ], [ %.val, %.lr.ph.i.i ] ; 3 uses
  %i.x = load i16, ptr %i.w, align 8, !range !41, !alias.scope !1213, !noalias !1214, !noundef !5
  %i.y = icmp eq i16 %i.x, %i.g
  br i1 %i.y, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i, label %bb.f

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMNtNtCs7ZUl82OSlxp_6rustls6webpki6verifyNtBT_25WebPkiSupportedAlgorithms14convert_scheme0INtB7_5FnMutTRTNtNtBX_5enums15SignatureSchemeRSRDNtCseO5Jl7W60Eg_16rustls_pki_types30SignatureVerificationAlgorithmEL_EEE8call_mutBX_.exit.i.i: ; preds = %.lr.ph.i.split.i, %bb.d
  %.us-phi.i = phi ptr [ %i.o, %bb.d ], [ %i.w, %.lr.ph.i.split.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1213, !noalias !1214, !nonnull !5, !align !11, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1213, !noalias !1214, !noundef !5
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
end_hunk_0
