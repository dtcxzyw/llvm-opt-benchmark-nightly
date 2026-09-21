Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.07?download=true
inline.NumInlined: 6336
inline.NumDeleted: 2521
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvMs6_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtB6_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE10fmt_fieldsRINtNtB8_3pat10WitnessPatB1m_EINtNtNtCshzWfHUSfYae_4core5slice4iter4IterB2W_EEB1u_:bb.a
  store ptr %i.ah, ptr %i.ag, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.4173.0..sroa_idx, align 8
  store ptr %i.ai, ptr %i.ea, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENtB6_5Debug3fmtB1H_, ptr %.sroa.4177.0..sroa_idx, align 8
  %i.eu = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dj, ptr noundef nonnull @116, ptr noundef nonnull %i.ag)
  br i1 %i.eu, label %.loopexit531, label %bb.aa

.loopexit531:                                     ; preds = %bb.z, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0478509, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ew = icmp eq i64 %i.ej, 0
  br i1 %i.ew, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit453.thread, label %.peel.next529, !llvm.loop !513

bb.ab:                                            ; preds = %bb.d
  %i.ex = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !4, !align !7, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !invariant.load !4, !nonnull !4
  %i.fc = tail call noundef zeroext i1 %i.fb(ptr noundef nonnull %i.ex, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 1) #50
  br i1 %i.fc, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.fd = icmp eq ptr %3, %4
  br i1 %i.fd, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %3, ptr %i.aq, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !captures !9
  store i64 0, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.493.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.ff, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENtB6_5Debug3fmtB1H_, ptr %.sroa.497.0..sroa_idx, align 8
  %i.fg = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fh = load ptr, ptr %i.ey, align 8, !nonnull !4, !align !7, !noundef !4
  %i.fi = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.fg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fh, ptr noundef nonnull @116, ptr noundef nonnull %i.ao)
  br i1 %i.fi, label %.loopexit535, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.fk = icmp eq ptr %i.fj, %4
  br i1 %i.fk, label %._crit_edge, label %.peel.next533

._crit_edge:                                      ; preds = %bb.ae, %bb.ad, %.preheader
  %i.fl = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fm = load ptr, ptr %i.ey, align 8, !nonnull !4, !align !7, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !invariant.load !4, !nonnull !4
  %i.fp = call noundef zeroext i1 %i.fo(ptr noundef nonnull %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 1) #50
  br i1 %i.fp, label %bb.ah, label %.loopexit

.peel.next533:                                    ; preds = %bb.ad, %bb.ae
  %.sroa.0471.0518 = phi ptr [ %i.ft, %bb.ae ], [ %i.fj, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %.sroa.0471.0518, ptr %i.aq, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @115, ptr %i.ap, align 8, !captures !9
  store i64 2, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.ap, ptr %i.ao, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.493.0..sroa_idx, align 8
  store ptr %i.aq, ptr %i.ff, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENtB6_5Debug3fmtB1H_, ptr %.sroa.497.0..sroa_idx, align 8
  %i.fq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fr = load ptr, ptr %i.ey, align 8, !nonnull !4, !align !7, !noundef !4
  %i.fs = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.fq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fr, ptr noundef nonnull @116, ptr noundef nonnull %i.ao)
  br i1 %i.fs, label %.loopexit535, label %bb.ae

.loopexit535:                                     ; preds = %.peel.next533, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ah

bb.ae:                                            ; preds = %.peel.next533
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0471.0518, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.fu = icmp eq ptr %i.ft, %4
  br i1 %i.fu, label %._crit_edge, label %.peel.next533, !llvm.loop !514

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit449: ; preds = %bb.m
  store ptr %3, ptr %i.e, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENtB6_5Debug3fmtB1H_, ptr %.sroa.4357.0..sroa_idx, align 8
  %i.fv = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !4, !align !7, !noundef !4
  %i.fy = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fx, ptr noundef nonnull @124, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ah

bb.af:                                            ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #46
  unreachable

bb.ag:                                            ; preds = %bb.a
  %i.fz = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !4, !nonnull !4
  %i.ge = tail call noundef zeroext i1 %i.gd(ptr noundef nonnull %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 18) #50
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit453.thread, %bb.ak, %bb.aj, %bb.ag, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit449, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge, %bb.ab, %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit455.thread, %.loopexit527, %.loopexit535, %.loopexit523, %.loopexit531, %bb.x, %bb.o, %.loopexit
  %.sroa.0.2 = phi i1 [ %i.db, %bb.l ], [ false, %.loopexit ], [ true, %bb.o ], [ true, %bb.d ], [ %i.cw, %bb.k ], [ true, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit455.thread ], [ %i.dg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit ], [ %i.ce, %bb.i ], [ true, %.loopexit531 ], [ true, %.loopexit535 ], [ true, %.loopexit527 ], [ %i.bh, %bb.f ], [ %i.bv, %bb.h ], [ %i.cn, %bb.j ], [ %i.gn, %bb.aj ], [ %i.ge, %bb.ag ], [ true, %._crit_edge ], [ %i.fy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit449 ], [ true, %bb.x ], [ true, %.loopexit523 ], [ true, %bb.ab ], [ %i.gt, %bb.ak ], [ %i.bm, %bb.g ], [ true, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextB20_.exit453.thread ]
  ret i1 %.sroa.0.2

.peel.next:                                       ; preds = %bb.c, %bb.ai
  %.sroa.0476.0504 = phi ptr [ %i.gg, %bb.ai ], [ %i.az, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0476.0504, ptr %i.c, align 8, !captures !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @126, ptr %i.b, align 8, !captures !9
  store i64 3, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.4385.0..sroa_idx, align 8
  store ptr %i.c, ptr %i.au, align 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat10WitnessPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxENtB6_5Debug3fmtB1H_, ptr %.sroa.4389.0..sroa_idx, align 8
  %i.gf = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noundef nonnull @116, ptr noundef nonnull %i.a)
  br i1 %i.gf, label %.loopexit523, label %bb.ai

.loopexit523:                                     ; preds = %.peel.next, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.ai:                                            ; preds = %.peel.next
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0476.0504, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gh = icmp eq ptr %i.gg, %4
  br i1 %i.gh, label %.loopexit, label %.peel.next, !llvm.loop !515

bb.aj:                                            ; preds = %bb.a
  %i.gi = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !invariant.load !4, !nonnull !4
  %i.gn = tail call noundef zeroext i1 %i.gm(ptr noundef nonnull %i.gi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 1) #50
  br label %bb.ah

bb.ak:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.go = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !4, !align !7, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8, !invariant.load !4, !nonnull !4
  %i.gt = tail call noundef zeroext i1 %i.gs(ptr noundef nonnull %i.go, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 1) #50
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB6_9PlaceInfoNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE18split_column_ctorsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB30_INtNtNtB38_5slice4iter4IterINtB6_9MatrixRowB1i_EENCNvMse_B6_INtB6_6MatrixB1i_E5heads0ENCNCINvB6_37compute_exhaustiveness_and_usefulnessB1i_E0s_0EEB1q_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [304 x i8], align 16              ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [288 x i8], align 16              ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0520.i = alloca i64, align 8             ; 6 uses
  %i.q = alloca [80 x i8], align 16               ; 9 uses
  %i.r = alloca [80 x i8], align 16               ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.650.sroa.0.i = alloca [23 x i8], align 1 ; 6 uses
  %.sroa.546.sroa.0.i = alloca [23 x i8], align 1 ; 5 uses
  %i.t = alloca [104 x i8], align 8               ; 17 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [40 x i8], align 16               ; 9 uses
  %i.w = alloca [128 x i8], align 16              ; 14 uses
  %i.x = alloca [128 x i8], align 16              ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [80 x i8], align 16              ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 32 uses
  %i.ae = alloca [24 x i8], align 8               ; 16 uses
  %i.af = alloca [96 x i8], align 16              ; 52 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [128 x i8], align 16             ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 23 uses
  %i.al = alloca [96 x i8], align 16              ; 11 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [144 x i8], align 16             ; 21 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [128 x i8], align 16             ; 6 uses
  %i.as = alloca [128 x i8], align 16             ; 22 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ax = icmp ult i64 %i.aw, 2
  br i1 %i.ax, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctors10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ay, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !12

bb.c:                                             ; preds = %bb.b
  %i.az = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctors10___CALLSITE) #51 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.011.0 = phi i8 [ %i.az, %bb.c ], [ %i.ay, %bb.b ], [ %i.ay, %bb.b ]
  %i.bb = load ptr, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctors10___CALLSITE, align 8, !nonnull !4, !align !7, !noundef !4
  %i.bc = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, i8 noundef %.sroa.011.0)
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !range !13, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.jn, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctors10___CALLSITE, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %1, ptr %i.au, align 8
  store ptr %i.au, ptr %i.av, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @129, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 1, ptr %i.ai, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.av, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %3, ptr %i.at, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %4, ptr %i.bj, align 8
  %i.bk = call noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulness9MatrixRowNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCNvMse_B1u_INtB1u_6MatrixB2A_E5heads0ENCNCINvB1u_37compute_exhaustiveness_and_usefulnessB2A_E0s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5z_3any5checkRINtNtB1w_11constructor11ConstructorB2A_ENCINvMs7_B1u_INtB1u_9PlaceInfoB2A_E18split_column_ctorsBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br i1 %i.bk, label %bb.jm, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RNvXs1_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtxNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis5PatCx12ctors_for_ty(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.bl = load i128, ptr %i.ar, align 16, !range !14, !noundef !4 ; 2 uses
  %i.bm = icmp eq i128 %i.bl, -1
  br i1 %i.bm, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -1, ptr %i.bn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.jh

.body:                                            ; preds = %bb.iw, %bb.ba, %.critedge213.i, %bb.j, %bb.jl
  %.pn120 = phi { ptr, i32 } [ %.pn.pn.pn188193, %bb.jl ], [ %.pn209.pn.ph.i, %.critedge213.i ], [ %i.bo, %bb.j ], [ %i.fo, %bb.ba ], [ %i.xz, %bb.iw ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1Z_(ptr noalias nofree noundef align 16 dereferenceable(128) %i.as) #47
          to label %common.resume unwind label %bb.ji

bb.j:                                             ; preds = %bb.ix, %bb.bb, %bb.r, %bb.n, %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.495.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store i128 %i.bl, ptr %i.as, align 16
  %i.bp = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bq = icmp ult i64 %i.bp, 2
  br i1 %i.bq, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.br = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctorss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.br, label %bb.m [
    i8 0, label %bb.q
    i8 1, label %bb.n
    i8 2, label %bb.n
  ], !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bs = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctorss_10___CALLSITE)
          to label %bb.o unwind label %bb.j       ; 2 uses

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.o
  %.sroa.045.0 = phi i8 [ %i.bs, %bb.o ], [ %i.br, %bb.l ], [ %i.br, %bb.l ]
  %i.bt = load ptr, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctorss_10___CALLSITE, align 8, !nonnull !4, !align !7, !noundef !4
  %i.bu = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bt, i8 noundef %.sroa.045.0)
          to label %bb.p unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  %i.bv = icmp eq i8 %i.bs, 0
  br i1 %i.bv, label %bb.q, label %bb.n

bb.p:                                             ; preds = %bb.n
  br i1 %i.bu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.l, %bb.k, %bb.s, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bx = load i8, ptr %i.bw, align 2, !range !13, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr @_RNvNvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB7_9PlaceInfopE18split_column_ctorss_10___CALLSITE, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.as, ptr %i.ap, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @130, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 1, ptr %i.ah, align 8
  %.sroa.047.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aq, ptr %.sroa.047.sroa.4.0..sroa_idx, align 8
  %.sroa.047.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %.sroa.047.sroa.5.0..sroa_idx, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ca, ptr %.sroa.448.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah)
          to label %bb.s unwind label %bb.j

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.cc = load i128, ptr %i.as, align 16, !range !15, !noundef !4 ; 2 uses
  %i.cd = icmp ne i128 %i.cc, 8
  call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp eq i128 %i.cc, 11
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.sroa.049.0 = phi i1 [ %i.ce, %bb.t ], [ false, %bb.q ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !range !13, !noundef !4
  %i.ch = icmp eq i8 %i.cg, 0                     ; 3 uses
  %.not = xor i1 %i.ch, true
end_hunk_0
begin_hunk_1_@_RINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10usefulnessINtB6_9PlaceInfoNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE18split_column_ctorsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB30_INtNtNtB38_5slice4iter4IterINtB6_9MatrixRowB1i_EENCNvMse_B6_INtB6_6MatrixB1i_E5heads0ENCNCINvB6_37compute_exhaustiveness_and_usefulnessB1i_E0s_0EEB1q_:bb.a
  %i.ql = icmp eq ptr %i.pt, %i.pc
  br i1 %i.ql, label %.loopexit600.i, label %.lr.ph.i.i.preheader.i.i

bb.fq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit122.i.i, %.loopexit.split-lp127.i.i, %.loopexit126.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp129.i.i, %.loopexit.split-lp127.i.i ], [ %lpad.loopexit128.i.i, %.loopexit126.i.i ], [ %lpad.loopexit.i.i, %.loopexit122.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set14GrowableBitSetjEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #47
          to label %.thread.i unwind label %bb.ga, !noalias !862

.lr.ph.i.i72.preheader.i.i:                       ; preds = %.preheader.i.i, %bb.fy
  %.sroa.01.3180.i.i = phi i64 [ %.sroa.01.4.i.i, %bb.fy ], [ -1, %.preheader.i.i ] ; 3 uses
  %.sroa.04.0179.i.i = phi i64 [ %.sroa.04.1.i.i, %bb.fy ], [ 1, %.preheader.i.i ] ; 3 uses
  %.sroa.615.1178.i.i = phi i64 [ %.sroa.615.4.i.i, %bb.fy ], [ %.sroa.3.0.copyload.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.13.1177.i.i = phi i64 [ %.sroa.13.2.i.i, %bb.fy ], [ %.sroa.8.0.copyload.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.0.0108176.i.i = phi ptr [ %i.qn, %bb.fy ], [ %i.ef, %.preheader.i.i ]
  br label %.lr.ph.i.i72.i.i

.lr.ph.i.i72.i.i:                                 ; preds = %.backedge.i.i73.i.i, %.lr.ph.i.i72.preheader.i.i
  %i.qm = phi ptr [ %i.qn, %.backedge.i.i73.i.i ], [ %.sroa.0.0108176.i.i, %.lr.ph.i.i72.preheader.i.i ] ; 6 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.qo = load i8, ptr %i.qm, align 16, !range !6, !alias.scope !868, !noalias !869, !noundef !4
  %i.qp = icmp eq i8 %i.qo, 3
  br i1 %i.qp, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapIB3K_INtNtNtBb_5slice4iter4IterINtNtBZ_10usefulness9MatrixRowB2g_EENCNvMse_B4P_INtB4P_6MatrixB2g_E5heads0ENCNCINvB4P_37compute_exhaustiveness_and_usefulnessB2g_E0s_0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i, label %.backedge.i.i73.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapIB3K_INtNtNtBb_5slice4iter4IterINtNtBZ_10usefulness9MatrixRowB2g_EENCNvMse_B4P_INtB4P_6MatrixB2g_E5heads0ENCNCINvB4P_37compute_exhaustiveness_and_usefulnessB2g_E0s_0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i: ; preds = %.lr.ph.i.i72.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.sroa.088.0.copyload.i.i = load i64, ptr %i.qq, align 8, !alias.scope !870, !noalias !871
  %i.qr = icmp eq i64 %.sroa.088.0.copyload.i.i, 2
  br i1 %i.qr, label %.backedge.i.i73.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB4X_IB1b_INtNtB1F_10usefulness9MatrixRowB2N_EENCNvMse_B5p_INtB5p_6MatrixB2N_E5heads0ENCNCINvB5p_37compute_exhaustiveness_and_usefulnessB2N_E0s_0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i

.backedge.i.i73.i.i:                              ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapIB3K_INtNtNtBb_5slice4iter4IterINtNtBZ_10usefulness9MatrixRowB2g_EENCNvMse_B4P_INtB4P_6MatrixB2g_E5heads0ENCNCINvB4P_37compute_exhaustiveness_and_usefulnessB2g_E0s_0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i, %.lr.ph.i.i72.i.i
  %i.qs = icmp eq ptr %i.qn, %i.pc
  br i1 %i.qs, label %.loopexit.i.i, label %.lr.ph.i.i72.i.i

.loopexit122.i.i:                                 ; preds = %bb.ft
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

.loopexit.split-lp.i.i:                           ; preds = %bb.fx, %bb.fv
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB4X_IB1b_INtNtB1F_10usefulness9MatrixRowB2N_EENCNvMse_B5p_INtB5p_6MatrixB2N_E5heads0ENCNCINvB5p_37compute_exhaustiveness_and_usefulnessB2N_E0s_0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapIB3K_INtNtNtBb_5slice4iter4IterINtNtBZ_10usefulness9MatrixRowB2g_EENCNvMse_B4P_INtB4P_6MatrixB2g_E5heads0ENCNCINvB4P_37compute_exhaustiveness_and_usefulnessB2g_E0s_0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i
  %.sroa.8.0..sroa_idx90.le.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %.sroa.8.0.copyload91.le.i.i = load i64, ptr %.sroa.8.0..sroa_idx90.le.i.i, align 8, !alias.scope !870, !noalias !871 ; 7 uses
  %.sroa.789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %.sroa.789.0.copyload.i.i = load i64, ptr %.sroa.789.0..sroa_idx.i.i, align 8, !alias.scope !870, !noalias !871
  %i.qt = trunc nuw i64 %.sroa.789.0.copyload.i.i to i1
  br i1 %i.qt, label %bb.fz, label %bb.ft

.loopexit.i.i:                                    ; preds = %bb.fy, %.backedge.i.i73.i.i, %.preheader.i.i
  %.sroa.13.1155.i.i = phi i64 [ %.sroa.13.1177.i.i, %.backedge.i.i73.i.i ], [ %.sroa.8.0.copyload.i.i, %.preheader.i.i ], [ %.sroa.13.2.i.i, %bb.fy ] ; 5 uses
  %.sroa.615.1150.i.i = phi i64 [ %.sroa.615.1178.i.i, %.backedge.i.i73.i.i ], [ %.sroa.3.0.copyload.i.i, %.preheader.i.i ], [ %.sroa.615.4.i.i, %bb.fy ] ; 2 uses
  %.sroa.04.0145.i.i = phi i64 [ %.sroa.04.0179.i.i, %.backedge.i.i73.i.i ], [ 1, %.preheader.i.i ], [ %.sroa.04.1.i.i, %bb.fy ]
  %.sroa.01.3140.i.i = phi i64 [ %.sroa.01.3180.i.i, %.backedge.i.i73.i.i ], [ -1, %.preheader.i.i ], [ %.sroa.01.4.i.i, %bb.fy ] ; 2 uses
  %i.qu = add i64 %.sroa.615.1150.i.i, %.sroa.13.1155.i.i
  %i.qv = call i64 @llvm.usub.sat.i64(i64 %.sroa.04.0145.i.i, i64 %i.qu)
  %.sroa.615.2.i.i = add i64 %i.qv, %.sroa.615.1150.i.i ; 4 uses
  %i.qw = load i64, ptr %i.v, align 16, !range !10, !alias.scope !852, !noalias !853, !noundef !4
  %i.qx = trunc nuw i64 %i.qw to i1
  br i1 %i.qx, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %.loopexit.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.qz = add i64 %.sroa.615.2.i.i, %.sroa.13.1155.i.i
  %i.ra = load i64, ptr %i.qy, align 8, !alias.scope !852, !noalias !853, !noundef !4 ; 2 uses
  %.not68.i.i = icmp ult i64 %i.qz, %i.ra         ; 2 uses
  %.sroa.615.2..i.i = select i1 %.not68.i.i, i64 %.sroa.615.2.i.i, i64 %i.ra
  %.sroa.050.0.copyload..i.i = zext i1 %.not68.i.i to i64
  br label %.loopexit600.i

bb.fs:                                            ; preds = %.loopexit.i.i
  %i.rb = add i64 %.sroa.615.2.i.i, %.sroa.13.1155.i.i
  br label %.loopexit600.i

bb.ft:                                            ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB4X_IB1b_INtNtB1F_10usefulness9MatrixRowB2N_EENCNvMse_B5p_INtB5p_6MatrixB2N_E5heads0ENCNCINvB5p_37compute_exhaustiveness_and_usefulnessB2N_E0s_0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i
  %i.rc = add i64 %.sroa.8.0.copyload91.le.i.i, 1 ; 2 uses
  %..i80.i.i = call noundef i64 @llvm.umax.i64(i64 %i.rc, i64 %.sroa.04.0179.i.i)
  invoke void @_RNvMsm_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB5_14GrowableBitSetjE6ensureCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.rc)
          to label %bb.fu unwind label %.loopexit122.i.i, !noalias !862

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.rd = load i64, ptr %.sroa.440.0..sroa_idx.i.i, align 8, !alias.scope !872, !noalias !854, !noundef !4
  %i.re = icmp ult i64 %.sroa.8.0.copyload91.le.i.i, %i.rd
  br i1 %i.re, label %bb.fw, label %bb.fv, !prof !5

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !873
  store i64 %.sroa.8.0.copyload91.le.i.i, ptr %i.c, align 8, !noalias !873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !873
  store ptr %i.c, ptr %i.b, align 8, !noalias !873
  %.sroa.42.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i81.i.i, align 8, !noalias !873
  %i.rf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.440.0..sroa_idx.i.i, ptr %i.rf, align 8, !noalias !873
  %.sroa.46.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i82.i.i, align 8, !noalias !873
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @230, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #46
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.i.i, !noalias !862

.noexc83.i.i:                                     ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.rg = lshr i64 %.sroa.8.0.copyload91.le.i.i, 6 ; 3 uses
  %i.rh = load i64, ptr %.sroa.039.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !872, !noalias !854, !noundef !4 ; 2 uses
  %i.ri = icmp ult i64 %i.rg, %i.rh
  br i1 %i.ri, label %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.rg, i64 noundef %i.rh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #46
          to label %.noexc84.i.i unwind label %.loopexit.split-lp.i.i, !noalias !862

.noexc84.i.i:                                     ; preds = %bb.fx
  unreachable

_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i: ; preds = %bb.fw
  %i.rj = load ptr, ptr %.sroa.039.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !872, !noalias !854, !nonnull !4, !noundef !4
  %i.rk = and i64 %.sroa.8.0.copyload91.le.i.i, 63
  %i.rl = shl nuw i64 1, %i.rk
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.rg ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !noalias !874, !noundef !4
  %i.ro = or i64 %i.rn, %i.rl
  store i64 %i.ro, ptr %i.rm, align 8, !noalias !874
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fz, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1177.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i86.i.i, %bb.fz ] ; 2 uses
  %.sroa.615.4.i.i = phi i64 [ %.sroa.615.1178.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i79.i.i, %bb.fz ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %..i80.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %.sroa.04.0179.i.i, %bb.fz ] ; 2 uses
  %.sroa.01.4.i.i = phi i64 [ %.sroa.01.3180.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i87.i.i, %bb.fz ] ; 2 uses
  %i.rp = icmp eq ptr %i.qn, %i.pc
  br i1 %i.rp, label %.loopexit.i.i, label %.lr.ph.i.i72.preheader.i.i

bb.fz:                                            ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB4X_IB1b_INtNtB1F_10usefulness9MatrixRowB2N_EENCNvMse_B5p_INtB5p_6MatrixB2N_E5heads0ENCNCINvB5p_37compute_exhaustiveness_and_usefulnessB2N_E0s_0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i
  %.sroa.9.0..sroa_idx.le.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 40
  %.sroa.9.0.copyload.le.i.i = load i64, ptr %.sroa.9.0..sroa_idx.le.i.i, align 8, !alias.scope !870, !noalias !871 ; 2 uses
  %..i79.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload91.le.i.i, i64 %.sroa.615.1178.i.i)
  %..i86.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.0.copyload.le.i.i, i64 %.sroa.13.1177.i.i)
  %i.rq = add i64 %.sroa.9.0.copyload.le.i.i, %.sroa.8.0.copyload91.le.i.i
  %..i87.i.i = call noundef i64 @llvm.umin.i64(i64 %i.rq, i64 %.sroa.01.3180.i.i)
  br label %bb.fy

bb.ga:                                            ; preds = %bb.fq
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !862
  unreachable

.loopexit600.i:                                   ; preds = %bb.fp, %.backedge.i.i.i.i, %bb.fs, %bb.fr, %.preheader124.i.i
  %.sroa.429.0.i.i = phi i64 [ 0, %bb.fr ], [ %i.rb, %bb.fs ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.fp ]
  %.sroa.028.0.i.i = phi i64 [ 0, %bb.fr ], [ %i.pf, %bb.fs ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.fp ]
  %.sroa.13.0.i.i = phi i64 [ %.sroa.13.1155.i.i, %bb.fr ], [ %.sroa.13.1155.i.i, %bb.fs ], [ %.sroa.8.0.copyload.i.i, %.preheader124.i.i ], [ %.sroa.8.0.copyload.i.i, %.backedge.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.fp ]
  %.sroa.615.0.i.i = phi i64 [ %.sroa.615.2..i.i, %bb.fr ], [ %.sroa.615.2.i.i, %bb.fs ], [ %.sroa.3.0.copyload.i.i, %.preheader124.i.i ], [ %.sroa.3.0.copyload.i.i, %.backedge.i.i.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.fp ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.050.0.copyload..i.i, %bb.fr ], [ 1, %bb.fs ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.fp ]
  %.sroa.01.1.i.i = phi i64 [ %.sroa.01.3140.i.i, %bb.fr ], [ %.sroa.01.3140.i.i, %bb.fs ], [ -1, %.preheader124.i.i ], [ %.sroa.01.0173.i.i, %.backedge.i.i.i.i ], [ %.sroa.01.2.i.i, %bb.fp ]
  %.sroa.9493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9493.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !854
  store i64 1, ptr %i.t, align 8, !noalias !772
  %.sroa.2486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store i64 %.sroa.028.0.i.i, ptr %.sroa.2486.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.3487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.429.0.i.i, ptr %.sroa.3487.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.4488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i64 %.sroa.012.0.i.i, ptr %.sroa.4488.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.5489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store i64 %.sroa.615.0.i.i, ptr %.sroa.5489.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.6490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  store i64 %.sroa.13.0.i.i, ptr %.sroa.6490.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.7491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %.sroa.8492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.rs = load <2 x i64>, ptr %i.v, align 16, !alias.scope !852, !noalias !853
  store <2 x i64> %i.rs, ptr %.sroa.7491.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.10494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  store i64 %.sroa.01.1.i.i, ptr %.sroa.10494.0..sroa_idx.i, align 8, !noalias !772
  %.sroa.4527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4527.sroa.4.0..sroa.4527.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.rt = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ru = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.rv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.546.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.546.sroa.0.i, i64 7
  %.sroa.650.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.650.sroa.0.i, i64 7
  %i.rw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.rx = load i8, ptr %i.rw, align 16, !range !13, !alias.scope !771, !noalias !773
  %i.ry = trunc nuw i8 %i.rx to i1
  br label %bb.gb

bb.gb:                                            ; preds = %bb.hb, %.loopexit600.i
  %i.rz = phi i64 [ %.pre.i128, %bb.hb ], [ 1, %.loopexit600.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.546.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0520.i)
  %i.sa = trunc nuw i64 %i.rz to i1
  br i1 %i.sa, label %bb.gc, label %bb.gg

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.sb = load i64, ptr %.sroa.2486.0..sroa_idx.i, align 8, !alias.scope !877, !noalias !878, !noundef !4 ; 3 uses
  %i.sc = load i64, ptr %.sroa.3487.0..sroa_idx.i, align 8, !alias.scope !879, !noalias !880, !noundef !4
  %i.sd = icmp ult i64 %i.sb, %i.sc
  br i1 %i.sd, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  store i64 0, ptr %i.t, align 8, !alias.scope !881, !noalias !882
  br label %bb.gg

bb.ge:                                            ; preds = %bb.gy, %bb.gf
  %.pn.i = phi { ptr, i32 } [ %i.tl, %bb.gy ], [ %i.se, %bb.gf ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IBC_IB4V_INtNtB27_10usefulness9MatrixRowB5E_EENCNvMse_B83_INtB83_6MatrixB5E_E5heads0ENCNCINvB83_37compute_exhaustiveness_and_usefulnessB5E_E0s_0EEs1_0EE0EEB5M_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.t) #47
          to label %.thread.i unwind label %bb.cl, !noalias !773

bb.gf:                                            ; preds = %bb.gk
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a: ; preds = %bb.gc
  %i.sf = add nuw i64 %i.sb, 1
  store i64 %i.sf, ptr %.sroa.2486.0..sroa_idx.i, align 8, !alias.scope !883, !noalias !884
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gd, %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.sg = load i64, ptr %.sroa.4488.0..sroa_idx.i, align 8, !range !23, !alias.scope !887, !noalias !888, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.sg, -1
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i, label %5

5:                                                ; preds = %bb.gg
  store i64 %i.sg, ptr %.sroa.0520.i, align 8, !alias.scope !889, !noalias !890
  %.sroa.8523.sroa.0.0.copyload.i = load i64, ptr %.sroa.5489.0..sroa_idx.i, align 8, !alias.scope !889, !noalias !890
  %.sroa.8523.sroa.6.0.copyload.i = load i64, ptr %.sroa.6490.0..sroa_idx.i, align 8, !alias.scope !889, !noalias !890
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %5, %bb.gg
  %.sroa.8523.sroa.0.0.i = phi i64 [ undef, %bb.gg ], [ %.sroa.8523.sroa.0.0.copyload.i, %5 ]
  %.sroa.8523.sroa.6.0.i = phi i64 [ undef, %bb.gg ], [ %.sroa.8523.sroa.6.0.copyload.i, %5 ]
  %.sink.i.i346.i = phi ptr [ %.sroa.0520.i, %bb.gg ], [ %.sroa.4488.0..sroa_idx.i, %5 ]
  store i64 2, ptr %.sink.i.i346.i, align 8, !alias.scope !891, !noalias !890
  %.sroa.0520.i.0..sroa.0520.i.0..sroa.0520.i.0..sroa.0520.0..sroa.0520.0..sroa.0520.0..pr.i = load i64, ptr %.sroa.0520.i, align 8, !noalias !772 ; 2 uses
  %.not196.i = icmp eq i64 %.sroa.0520.i.0..sroa.0520.i.0..sroa.0520.i.0..sroa.0520.0..sroa.0520.0..sroa.0520.0..pr.i, 2
  br i1 %.not196.i, label %bb.gm, label %bb.gh

bb.gh:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a
  %.sroa.8523.sroa.6.1589.i = phi i64 [ undef, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.8523.sroa.6.0.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.8523.sroa.0.1588.i = phi i64 [ %i.sb, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.8523.sroa.0.0.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.0520.0..sroa.0520.0.587.i = phi i64 [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.0520.i.0..sroa.0520.i.0..sroa.0520.i.0..sroa.0520.0..sroa.0520.0..sroa.0520.0..pr.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !772
  store i64 %.sroa.0520.0..sroa.0520.0.587.i, ptr %i.o, align 8, !noalias !772
  store i64 %.sroa.8523.sroa.0.1588.i, ptr %.sroa.4527.0..sroa_idx.i, align 8, !noalias !772
  store i64 %.sroa.8523.sroa.6.1589.i, ptr %.sroa.4527.sroa.4.0..sroa.4527.0..sroa_idx.sroa_idx.i, align 8, !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.sh = trunc nuw i64 %.sroa.0520.0..sroa.0520.0.587.i to i1
  %i.si = select i1 %i.sh, i64 %.sroa.8523.sroa.6.1589.i, i64 0
  %.sroa.0.0.i347.i = add i64 %i.si, %.sroa.8523.sroa.0.1588.i ; 3 uses
  %i.sj = load i64, ptr %.sroa.10494.0..sroa_idx.i, align 8, !alias.scope !892, !noalias !893, !noundef !4
  %.not.i348.i = icmp ugt i64 %i.sj, %.sroa.0.0.i347.i
  br i1 %.not.i348.i, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  %i.sk = lshr i64 %.sroa.0.0.i347.i, 6           ; 2 uses
  %i.sl = load i64, ptr %i.rt, align 8, !alias.scope !892, !noalias !893, !noundef !4
  %i.sm = icmp ult i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.sn = load ptr, ptr %i.ru, align 8, !alias.scope !892, !noalias !893, !nonnull !4, !noundef !4
  %i.so = and i64 %.sroa.0.0.i347.i, 63
  %i.sp = shl nuw i64 1, %i.so
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sk
  %i.sr = load i64, ptr %i.sq, align 8, !noalias !894, !noundef !4
  %i.ss = and i64 %i.sr, %i.sp
  %.not4.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not4.i.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gl, %bb.gj, %bb.gi
  %.sroa.03.0.i.i = phi i1 [ true, %bb.gl ], [ false, %bb.gi ], [ false, %bb.gj ]
  %i.st = load i64, ptr %.sroa.7491.0..sroa_idx.i, align 8, !range !10, !alias.scope !892, !noalias !893, !noundef !4
  %i.su = load i64, ptr %.sroa.8492.0..sroa_idx.i, align 8, !alias.scope !892, !noalias !893
  invoke void @_RNvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtB5_5Slice3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.rv, i64 noundef %i.st, i64 %i.su, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.gp unwind label %bb.gf, !noalias !773

bb.gl:                                            ; preds = %bb.gj, %bb.gh
  br label %bb.gk

bb.gm:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0520.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.546.sroa.0.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9493.0..sroa_idx.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB5B_IB2L_INtNtBM_10usefulness9MatrixRowB3t_EENCNvMse_B64_INtB64_6MatrixB3t_E5heads0ENCNCINvB64_37compute_exhaustiveness_and_usefulnessB3t_E0s_0EEs1_0EE0EB3B_.exit.i.i unwind label %bb.gn, !noalias !773

bb.gn:                                            ; preds = %bb.gm
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9493.0..sroa_idx.i)
          to label %.thread.i unwind label %bb.go, !noalias !773

bb.go:                                            ; preds = %bb.gn
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !773
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB5B_IB2L_INtNtBM_10usefulness9MatrixRowB3t_EENCNvMse_B64_INtB64_6MatrixB3t_E5heads0ENCNCINvB64_37compute_exhaustiveness_and_usefulnessB3t_E0s_0EEs1_0EE0EB3B_.exit.i.i: ; preds = %bb.gm
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9493.0..sroa_idx.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IBC_IB4V_INtNtB27_10usefulness9MatrixRowB5E_EENCNvMse_B83_INtB83_6MatrixB5E_E5heads0ENCNCINvB83_37compute_exhaustiveness_and_usefulnessB5E_E0s_0EEs1_0EE0EEB5M_.exit.i unwind label %.thread550.i, !noalias !773

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IBC_IB4V_INtNtB27_10usefulness9MatrixRowB5E_EENCNvMse_B83_INtB83_6MatrixB5E_E5heads0ENCNCINvB83_37compute_exhaustiveness_and_usefulnessB5E_E0s_0EEs1_0EE0EEB5M_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB5B_IB2L_INtNtBM_10usefulness9MatrixRowB3t_EENCNvMse_B64_INtB64_6MatrixB3t_E5heads0ENCNCINvB64_37compute_exhaustiveness_and_usefulnessB3t_E0s_0EEs1_0EE0EB3B_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !772
  br label %bb.az

bb.gp:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.546.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.546.0..sroa_idx.i, i64 23, i1 false), !noalias !772
  %.sroa.546.sroa.5.0.copyload.i = load i64, ptr %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !772 ; 4 uses
  %.sroa.546.sroa.6.0.copyload.i = load i64, ptr %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !772 ; 4 uses
  %.sroa.546.sroa.7.0.copyload.i = load i64, ptr %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !772 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0520.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.650.sroa.0.7..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.546.sroa.0.7..sroa_idx.i, i64 16, i1 false), !noalias !772
  br i1 %.sroa.03.0.i.i, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.sx = load i64, ptr %i.cm, align 16, !alias.scope !895, !noalias !896, !noundef !4 ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, 1                   ; 2 uses
  %i.sz = load ptr, ptr %i.af, align 16, !alias.scope !895, !noalias !896, !nonnull !4
  %.sink10.i.i354.i = select i1 %i.sy, ptr %i.sz, ptr %i.af
  %.sink9.i.i355.i = select i1 %i.sy, ptr %i.cu, ptr %i.cm ; 2 uses
  %.sink.i.i356.i = call i64 @llvm.umax.i64(i64 %i.sx, i64 1)
  %i.ta = load i64, ptr %.sink9.i.i355.i, align 8, !alias.scope !897, !noalias !898, !noundef !4 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, %.sink.i.i356.i
  br i1 %i.tb, label %bb.gr, label %bb.hc, !prof !18

bb.gr:                                            ; preds = %bb.gq
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc360.i unwind label %bb.gy, !noalias !773

.noexc360.i:                                      ; preds = %bb.gr
  %i.tc = load ptr, ptr %i.af, align 16, !alias.scope !897, !noalias !898, !nonnull !4, !noundef !4
  %.pre.i359.i = load i64, ptr %i.cu, align 8, !alias.scope !897, !noalias !898
  br label %bb.hc

bb.gs:                                            ; preds = %bb.gp
  br i1 %i.ry, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gv, %bb.gs
  %i.td = load i64, ptr %i.cq, align 8, !alias.scope !899, !noalias !900, !noundef !4 ; 3 uses
  %i.te = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !899, !noalias !900, !noundef !4
  %i.tf = icmp eq i64 %i.td, %i.te
  br i1 %i.tf, label %bb.gu, label %bb.gz

bb.gu:                                            ; preds = %bb.gt
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #51
          to label %bb.gz unwind label %bb.gy, !noalias !773

bb.gv:                                            ; preds = %bb.gs
  %i.tg = trunc nuw i64 %.sroa.546.sroa.5.0.copyload.i to i1
  %i.th = select i1 %i.tg, i64 %.sroa.546.sroa.7.0.copyload.i, i64 0
  %.sroa.056.0.i = sub i64 0, %i.th
  %.not197.i = icmp eq i64 %.sroa.546.sroa.6.0.copyload.i, %.sroa.056.0.i
  br i1 %.not197.i, label %bb.gt, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ti = load i64, ptr %i.co, align 8, !alias.scope !901, !noalias !902, !noundef !4 ; 3 uses
  %i.tj = load i64, ptr %i.ae, align 8, !range !19, !alias.scope !901, !noalias !902, !noundef !4
  %i.tk = icmp eq i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #51
          to label %bb.ha unwind label %bb.gy, !noalias !773

bb.gy:                                            ; preds = %bb.gx, %bb.gu, %bb.gr
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gz:                                            ; preds = %bb.gu, %bb.gt
  %i.tm = load ptr, ptr %i.cp, align 8, !alias.scope !899, !noalias !900, !nonnull !4, !noundef !4
  %i.tn = getelementptr inbounds nuw [80 x i8], ptr %i.tm, i64 %i.td ; 5 uses
  store i8 3, ptr %i.tn, align 16, !noalias !773
  %.sroa.4508.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4508.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !773
  %.sroa.5509.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5509.0..sroa_idx.i, align 8, !noalias !773
  %.sroa.6510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6510.0..sroa_idx.i, align 16, !noalias !773
  %.sroa.7511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7511.0..sroa_idx.i, align 8, !noalias !773
  %i.to = add i64 %i.td, 1
  store i64 %i.to, ptr %i.cq, align 8, !alias.scope !899, !noalias !900
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gx, %bb.gw
  %i.tp = load ptr, ptr %i.cn, align 8, !alias.scope !901, !noalias !902, !nonnull !4, !noundef !4
  %i.tq = getelementptr inbounds nuw [80 x i8], ptr %i.tp, i64 %i.ti ; 5 uses
  store i8 3, ptr %i.tq, align 16, !noalias !773
  %.sroa.4502.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4502.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !773
  %.sroa.5503.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5503.0..sroa_idx.i, align 8, !noalias !773
  %.sroa.6504.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6504.0..sroa_idx.i, align 16, !noalias !773
  %.sroa.7505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7505.0..sroa_idx.i, align 8, !noalias !773
  %i.tr = add i64 %i.ti, 1
  store i64 %i.tr, ptr %i.co, align 8, !alias.scope !901, !noalias !902
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hc, %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.546.sroa.0.i)
  %.pre.i128 = load i64, ptr %i.t, align 8, !range !10, !alias.scope !881, !noalias !882
  br label %bb.gb

bb.hc:                                            ; preds = %.noexc360.i, %bb.gq
  %i.ts = phi i64 [ %.pre.i359.i, %.noexc360.i ], [ %i.ta, %bb.gq ]
  %.sroa.01.0.i357.i = phi ptr [ %i.cu, %.noexc360.i ], [ %.sink9.i.i355.i, %bb.gq ] ; 2 uses
  %.sroa.0.0.i358.i = phi ptr [ %i.tc, %.noexc360.i ], [ %.sink10.i.i354.i, %bb.gq ]
  %i.tt = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i358.i, i64 %i.ts ; 5 uses
  store i8 3, ptr %i.tt, align 16, !noalias !773
  %.sroa.4496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4496.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !773
  %.sroa.5497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5497.0..sroa_idx.i, align 8, !noalias !773
  %.sroa.6498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6498.0..sroa_idx.i, align 16, !noalias !773
  %.sroa.7499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7499.0..sroa_idx.i, align 8, !noalias !773
  %i.tu = load i64, ptr %.sroa.01.0.i357.i, align 8, !alias.scope !897, !noalias !898, !noundef !4
  %i.tv = add i64 %i.tu, 1
  store i64 %i.tv, ptr %.sroa.01.0.i357.i, align 8, !alias.scope !897, !noalias !898
  br label %bb.hb

bb.hd:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !772
  %i.tw = load i64, ptr %i.cq, align 8, !alias.scope !903, !noalias !904, !noundef !4 ; 3 uses
  %i.tx = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !903, !noalias !904, !noundef !4
  %i.ty = icmp eq i64 %i.tw, %i.tx
  br i1 %i.ty, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #51
          to label %bb.hf unwind label %bb.y, !noalias !773

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.tz = load ptr, ptr %i.cp, align 8, !alias.scope !903, !noalias !904, !nonnull !4, !noundef !4
  %i.ua = getelementptr inbounds nuw [80 x i8], ptr %i.tz, i64 %i.tw
  store i8 17, ptr %i.ua, align 16, !noalias !773
  %i.ub = add i64 %i.tw, 1
  store i64 %i.ub, ptr %i.cq, align 8, !alias.scope !903, !noalias !904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ao, ptr noundef nonnull align 16 dereferenceable(96) %i.af, i64 96, i1 false), !noalias !771
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !771
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ud, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !771
  br label %bb.ht

bb.hg:                                            ; preds = %bb.ao, %bb.an
  %i.ue = load ptr, ptr %i.cn, align 8, !alias.scope !775, !noalias !776, !nonnull !4, !noundef !4
  %i.uf = getelementptr inbounds nuw [80 x i8], ptr %i.ue, i64 %i.el
  store i8 16, ptr %i.uf, align 16, !noalias !773
  %i.ug = add i64 %i.el, 1
  store i64 %i.ug, ptr %i.co, align 8, !alias.scope !775, !noalias !776
  br label %bb.az

bb.hh:                                            ; preds = %bb.aa
  %i.uh = load i64, ptr %i.cs, align 8, !alias.scope !905, !noalias !906, !noundef !4 ; 3 uses
  %i.ui = load i64, ptr %i.ac, align 8, !range !19, !alias.scope !905, !noalias !906, !noundef !4
  %i.uj = icmp eq i64 %i.uh, %i.ui
  br i1 %i.uj, label %bb.hi, label %bb.hq

bb.hi:                                            ; preds = %bb.hh
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #51
          to label %bb.hq unwind label %.loopexit, !noalias !773

bb.hj:                                            ; preds = %bb.aa
  br i1 %.sroa.0.0.i127.ph, label %.outer.backedge, label %bb.hm

.outer.backedge:                                  ; preds = %bb.hj, %bb.ho
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.x
  %.sroa.0.0.i127.ph = phi i1 [ false, %bb.x ], [ true, %.outer.backedge ] ; 2 uses
  br label %bb.z

bb.hk:                                            ; preds = %bb.aa
  %i.uk = load i64, ptr %i.cm, align 16, !alias.scope !907, !noalias !908, !noundef !4 ; 2 uses
  %i.ul = icmp ugt i64 %i.uk, 1                   ; 2 uses
  %i.um = load ptr, ptr %i.af, align 16, !alias.scope !907, !noalias !908, !nonnull !4
  %.sink10.i.i370.i = select i1 %i.ul, ptr %i.um, ptr %i.af
  %.sink9.i.i371.i = select i1 %i.ul, ptr %i.cu, ptr %i.cm ; 2 uses
  %.sink.i.i372.i = call i64 @llvm.umax.i64(i64 %i.uk, i64 1)
  %i.un = load i64, ptr %.sink9.i.i371.i, align 8, !alias.scope !909, !noalias !910, !noundef !4 ; 2 uses
  %i.uo = icmp eq i64 %i.un, %.sink.i.i372.i
  br i1 %i.uo, label %bb.hl, label %bb.hp, !prof !18

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc376.i unwind label %.loopexit, !noalias !773

.noexc376.i:                                      ; preds = %bb.hl
  %i.up = load ptr, ptr %i.af, align 16, !alias.scope !909, !noalias !910, !nonnull !4, !noundef !4
  %.pre.i375.i = load i64, ptr %i.cu, align 8, !alias.scope !909, !noalias !910
  br label %bb.hp

bb.hm:                                            ; preds = %bb.hj
  %i.uq = load i64, ptr %i.cm, align 16, !alias.scope !911, !noalias !912, !noundef !4 ; 2 uses
  %i.ur = icmp ugt i64 %i.uq, 1                   ; 2 uses
  %i.us = load ptr, ptr %i.af, align 16, !alias.scope !911, !noalias !912, !nonnull !4
  %.sink10.i.i378.i = select i1 %i.ur, ptr %i.us, ptr %i.af
  %.sink9.i.i379.i = select i1 %i.ur, ptr %i.cu, ptr %i.cm ; 2 uses
  %.sink.i.i380.i = call i64 @llvm.umax.i64(i64 %i.uq, i64 1)
  %i.ut = load i64, ptr %.sink9.i.i379.i, align 8, !alias.scope !913, !noalias !914, !noundef !4 ; 2 uses
  %i.uu = icmp eq i64 %i.ut, %.sink.i.i380.i
  br i1 %i.uu, label %bb.hn, label %bb.ho, !prof !18

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc384.i unwind label %.loopexit.split-lp, !noalias !773
end_hunk_1
begin_hunk_2_@_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedE6new_gcBR_:bb.a
  %i.ak = and i64 %i.aj, %.val5.i                 ; 2 uses
  %i.al = invoke fastcc noundef zeroext i1 @_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern6internINtB48_8InternedB1A_E6new_gc0NCB45_s_0E0B1G_(ptr noundef nonnull %i.a, i64 noundef %i.ak) #50
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.k
  %i.am = add i16 %.sroa.05.0.i.i, -1
  %i.an = and i16 %i.am, %.sroa.05.0.i.i
  br i1 %i.al, label %bb.s, label %bb.j

bb.l:                                             ; preds = %bb.j
  %.not11.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not11.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i, zeroinitializer
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.0.017.i.i, %i.ar
  %i.at = and i64 %i.as, %.val5.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.4.1.i.i = phi i64 [ %.sroa.4.0.i.i, %bb.l ], [ %i.at, %bb.n ], [ undef, %bb.m ] ; 3 uses
  %.sroa.01.1.i.i = phi i64 [ 1, %bb.l ], [ 1, %bb.n ], [ 0, %bb.m ]
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i
  %i.ax = add i64 %i.ad, 16                       ; 2 uses
  %i.ay = add i64 %i.ax, %.sroa.0.017.i.i
  br label %bb.i

bb.p:                                             ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.1.i.i
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.bc = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not.i22.i.i = icmp ne i16 %i.bd, 0
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  call void @llvm.assume(i1 %.not.i22.i.i)
  br label %bb.t

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.v
  %.sroa.03.2.lpad-body = phi i8 [ 0, %bb.v ], [ 1, %.loopexit.split-lp ], [ 1, %.loopexit ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %i.bg = cmpxchg ptr %i.p, i64 -4, i64 0 release monotonic, align 8
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit, label %bb.r, !prof !5

bb.r:                                             ; preds = %.body
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit unwind label %bb.ac

bb.s:                                             ; preds = %.noexc13
  %i.bi = load ptr, ptr %i.s, align 8, !alias.scope !9678, !noalias !9681, !nonnull !4
  %i.bj = sub nsw i64 0, %i.ak
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.q, %bb.p
  %.sroa.3.0.i.i.ph = phi i64 [ %i.bf, %bb.q ], [ %.sroa.4.1.i.i, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  store i64 1, ptr %i.c, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !9683
  %i.bm = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 24, 81) 80, i64 noundef range(i64 8, 17) 8) #52, !noalias !9683 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.u, label %bb.z, !prof !18

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #49
          to label %.noexc15 unwind label %bb.v

.noexc15:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.bl)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.x:                                             ; preds = %bb.s, %bb.z
  %i.bq = phi ptr [ %.pre, %bb.s ], [ %i.bm, %bb.z ]
  %.sroa.03.3 = phi i8 [ 1, %bb.s ], [ 0, %bb.z ] ; 2 uses
  %i.br = cmpxchg ptr %i.p, i64 -4, i64 0 release monotonic, align 8
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  br i1 %i.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit18, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit18 unwind label %bb.b

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !9684)
  %i.bt = load ptr, ptr %i.s, align 8, !alias.scope !9684, !nonnull !4, !noundef !4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.3.0.i.i.ph ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !9684, !noundef !4
  %i.bw = and i8 %i.bv, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = add i64 %.sroa.3.0.i.i.ph, -16
  %i.bz = load i64, ptr %i.y, align 8, !alias.scope !9684, !noundef !4
  %i.ca = and i64 %i.bz, %i.by
  store i8 %i.aa, ptr %i.bu, align 1, !noalias !9684
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store i8 %i.aa, ptr %i.cc, align 1, !noalias !9684
  %i.cd = load <2 x i64>, ptr %i.t, align 8, !alias.scope !9684
  %i.ce = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bx, i64 0
  %i.cf = sub <2 x i64> %i.cd, %i.ce
  store <2 x i64> %i.cf, ptr %i.t, align 8, !alias.scope !9684
  %i.cg = sub nsw i64 0, %.sroa.3.0.i.i.ph
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8
  store ptr %i.bm, ptr %i.ci, align 8, !noalias !9684
  br label %bb.x

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit18: ; preds = %bb.x, %bb.y
  %i.cj = trunc nuw i8 %.sroa.03.3 to i1
  br i1 %i.cj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  ret ptr %i.ck

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit18
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
  br label %bb.aa

bb.ac:                                            ; preds = %bb.r, %bb.ae
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit
  resume { ptr, i32 } %.pn

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock16RwLockWriteGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEINtNtB1w_4util11SharedValueuEEEEEB3C_.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver7opaques27ExternalConstraintsInternedEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #47
          to label %bb.ad unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10pat_columnINtB2_13PatternColumnNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE13analyze_ctorsB1r_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(144) %0, ptr %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [288 x i8], align 16              ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [304 x i8], align 16              ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0473.i = alloca i64, align 8             ; 6 uses
  %i.q = alloca [80 x i8], align 16               ; 9 uses
  %i.r = alloca [80 x i8], align 16               ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.650.sroa.0.i = alloca [23 x i8], align 1 ; 6 uses
  %.sroa.546.sroa.0.i = alloca [23 x i8], align 1 ; 5 uses
  %i.t = alloca [104 x i8], align 8               ; 17 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [40 x i8], align 16               ; 9 uses
  %i.w = alloca [128 x i8], align 16              ; 14 uses
  %i.x = alloca [128 x i8], align 16              ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [80 x i8], align 16              ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 32 uses
  %i.ae = alloca [24 x i8], align 8               ; 16 uses
  %i.af = alloca [96 x i8], align 16              ; 52 uses
  %i.ag = alloca [144 x i8], align 16             ; 9 uses
  %i.ah = alloca [128 x i8], align 16             ; 6 uses
  %i.ai = alloca [128 x i8], align 16             ; 20 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvXs1_NtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysisNtB5_13MatchCheckCtxNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis5PatCx12ctors_for_ty(ptr noalias nofree noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.aj = load i128, ptr %i.ah, align 16, !range !14, !noundef !4 ; 2 uses
  %i.ak = icmp eq i128 %i.aj, -1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.al, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEEB1Z_.exit

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.16.val
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.45.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i128 %i.aj, ptr %i.ai, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.650.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9928
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 23 uses
  store i64 0, ptr %i.an, align 16, !noalias !9928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9928
  store i64 0, ptr %i.ae, align 8, !noalias !9928
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ao, align 8, !noalias !9928
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 9 uses
  store i64 0, ptr %i.ap, align 8, !noalias !9928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9928
  store i64 0, ptr %i.ad, align 8, !noalias !9928
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 13 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.aq, align 8, !noalias !9928
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 25 uses
  store i64 0, ptr %i.ar, align 8, !noalias !9928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9928
  store i64 0, ptr %i.ac, align 8, !noalias !9928
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 6 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.as, align 8, !noalias !9928
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 10 uses
  store i64 0, ptr %i.at, align 8, !noalias !9928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9928
  store ptr %.8.val, ptr %i.ab, align 8, !noalias !9928
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.am, ptr %i.au, align 8, !noalias !9928
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 33 uses
  br label %.outer

.thread503.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB2L_RINtNtBM_3pat16DeconstructedPatB3t_EENCNvMNtBM_10pat_columnINtB6C_13PatternColumnB3t_E13analyze_ctors0EEs1_0EE0EB3B_.exit.i.i, %bb.el, %bb.ed, %bb.cq, %bb.co, %bb.cj, %bb.ch, %bb.ca, %bb.by, %bb.bu, %bb.bs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecyEECs8K4cjrcxBsw_6hir_ty.exit.i.i, %bb.ab, %bb.z, %bb.v, %bb.t, %bb.q, %bb.p, %.invoke.i, %bb.k
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.gj, %bb.r
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.e:                                             ; preds = %.backedge398, %.outer
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis3pat16DeconstructedPatNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCNvMNtB1N_10pat_columnINtB4k_13PatternColumnB2R_E13analyze_ctors0EENtNtNtB8_6traits8iterator8Iterator4nextB2Z_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %bb.f unwind label %.loopexit, !noalias !9929

.loopexit:                                        ; preds = %bb.e, %bb.gn, %bb.gq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp:                               ; preds = %bb.gs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.aw = load i8, ptr %i.aa, align 16, !range !16, !noalias !9928, !noundef !4 ; 2 uses
  switch i8 %i.aw, label %bb.gm [
    i8 -1, label %bb.g
    i8 12, label %bb.go
    i8 13, label %bb.gp
    i8 15, label %.backedge398
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9928
  br i1 %.sroa.0.0.i.ph, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i128, ptr %i.ai, align 16, !range !15, !alias.scope !9927, !noalias !9929, !noundef !4 ; 3 uses
  %i.ay = icmp ne i128 %i.ax, 8
  call void @llvm.assume(i1 %i.ay)
  %i.az = trunc nuw nsw i128 %i.ax to i64
  %i.ba = add nsw i64 %i.az, -3
  %i.bb = icmp samesign ugt i128 %i.ax, 2
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 5
  switch i64 %i.bc, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.q
    i64 7, label %bb.r
    i64 8, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.at, align 8, !noalias !9928, !noundef !4 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 115292150460684698
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %bb.w, label %bb.u

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9928
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.bi = load i64, ptr %i.bh, align 16, !alias.scope !9927, !noalias !9929, !noundef !4 ; 6 uses
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = and i64 %i.bi, 63
  %.not205.i = icmp ne i64 %i.bk, 0
  %i.bl = zext i1 %.not205.i to i64
  %.sroa.067.0.i = add nuw nsw i64 %i.bj, %i.bl   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9930
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef range(i64 0, 288230376151711745) %.sroa.067.0.i, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc.i unwind label %.thread503.i, !noalias !9929

.noexc.i:                                         ; preds = %bb.k
  %i.bm = load i64, ptr %i.n, align 8, !range !10, !noalias !9930, !noundef !4
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !17, !noalias !9930, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.l, label %bb.ai, !prof !18

bb.l:                                             ; preds = %.noexc.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !9930
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.em, %bb.l
  %i.bs = phi i64 [ %i.bp, %bb.l ], [ %i.nm, %bb.em ]
  %i.bt = phi i64 [ %i.br, %bb.l ], [ %i.no, %bb.em ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bt) #49
          to label %.cont.i unwind label %.thread503.i, !noalias !9929

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %i.at, align 8, !noalias !9928, !noundef !4 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 115292150460684698
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %bb.bt, label %bb.br

bb.n:                                             ; preds = %bb.h
  %i.bx = load i64, ptr %i.at, align 8, !noalias !9928, !noundef !4 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 115292150460684698
  call void @llvm.assume(i1 %i.by)
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %bb.bz, label %bb.bx

bb.o:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %i.as, align 8, !noalias !9928, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = load i64, ptr %i.at, align 8, !noalias !9928, !noundef !4
  %i.cc = getelementptr inbounds nuw [80 x i8], ptr %i.ca, i64 %i.cb
  br label %bb.cd

end_hunk_2
begin_hunk_3_@_RNvMNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis10pat_columnINtB2_13PatternColumnNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE13analyze_ctorsB1r_:bb.a
  %i.oo = icmp eq ptr %i.nw, %i.nf
  br i1 %i.oo, label %.loopexit547.i, label %.lr.ph.i.i.preheader.i.i

bb.ev:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit122.i.i, %.loopexit.split-lp127.i.i, %.loopexit126.i.i
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp129.i.i, %.loopexit.split-lp127.i.i ], [ %lpad.loopexit128.i.i, %.loopexit126.i.i ], [ %lpad.loopexit.i.i, %.loopexit122.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_set14GrowableBitSetjEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #47
          to label %.thread.i unwind label %bb.ff, !noalias !10016

.lr.ph.i.i72.preheader.i.i:                       ; preds = %.preheader.i.i, %bb.fd
  %.sroa.01.3180.i.i = phi i64 [ %.sroa.01.4.i.i, %bb.fd ], [ -1, %.preheader.i.i ] ; 3 uses
  %.sroa.04.0179.i.i = phi i64 [ %.sroa.04.1.i.i, %bb.fd ], [ 1, %.preheader.i.i ] ; 3 uses
  %.sroa.615.1178.i.i = phi i64 [ %.sroa.615.4.i.i, %bb.fd ], [ %.sroa.3.0.copyload.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.13.1177.i.i = phi i64 [ %.sroa.13.2.i.i, %bb.fd ], [ %.sroa.8.0.copyload.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.0.0108176.i.i = phi ptr [ %i.oq, %bb.fd ], [ %i.cg, %.preheader.i.i ]
  br label %.lr.ph.i.i72.i.i

.lr.ph.i.i72.i.i:                                 ; preds = %.backedge.i.i73.i.i, %.lr.ph.i.i72.preheader.i.i
  %i.op = phi ptr [ %i.oq, %.backedge.i.i73.i.i ], [ %.sroa.0.0108176.i.i, %.lr.ph.i.i72.preheader.i.i ] ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10020)
  call void @llvm.experimental.noalias.scope.decl(metadata !10021)
  %i.or = load i8, ptr %i.op, align 16, !range !6, !alias.scope !10022, !noalias !10023, !noundef !4
  %i.os = icmp eq i8 %i.or, 3
  br i1 %i.os, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterRINtNtBZ_3pat16DeconstructedPatB2g_EENCNvMNtBZ_10pat_columnINtB5n_13PatternColumnB2g_E13analyze_ctors0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i, label %.backedge.i.i73.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterRINtNtBZ_3pat16DeconstructedPatB2g_EENCNvMNtBZ_10pat_columnINtB5n_13PatternColumnB2g_E13analyze_ctors0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i: ; preds = %.lr.ph.i.i72.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.088.0.copyload.i.i = load i64, ptr %i.ot, align 8, !alias.scope !10024, !noalias !10025
  %i.ou = icmp eq i64 %.sroa.088.0.copyload.i.i, 2
  br i1 %i.ou, label %.backedge.i.i73.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB1b_RINtNtB1F_3pat16DeconstructedPatB2N_EENCNvMNtB1F_10pat_columnINtB5Y_13PatternColumnB2N_E13analyze_ctors0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i

.backedge.i.i73.i.i:                              ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterRINtNtBZ_3pat16DeconstructedPatB2g_EENCNvMNtBZ_10pat_columnINtB5n_13PatternColumnB2g_E13analyze_ctors0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i, %.lr.ph.i.i72.i.i
  %i.ov = icmp eq ptr %i.oq, %i.nf
  br i1 %i.ov, label %.loopexit.i.i, label %.lr.ph.i.i72.i.i

.loopexit122.i.i:                                 ; preds = %bb.ey
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.loopexit.split-lp.i.i:                           ; preds = %bb.fc, %bb.fa
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB1b_RINtNtB1F_3pat16DeconstructedPatB2N_EENCNvMNtB1F_10pat_columnINtB5Y_13PatternColumnB2N_E13analyze_ctors0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvMs7_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorINtBX_14ConstructorSetNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxE5splitINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterRINtNtBZ_3pat16DeconstructedPatB2g_EENCNvMNtBZ_10pat_columnINtB5n_13PatternColumnB2g_E13analyze_ctors0EEs1_0INtB7_5FnMutTRINtBX_11ConstructorB2g_EEE8call_mutB2o_.exit.i.i75.i.i
  %.sroa.8.0..sroa_idx90.le.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %.sroa.8.0.copyload91.le.i.i = load i64, ptr %.sroa.8.0..sroa_idx90.le.i.i, align 8, !alias.scope !10024, !noalias !10025 ; 7 uses
  %.sroa.789.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %.sroa.789.0.copyload.i.i = load i64, ptr %.sroa.789.0..sroa_idx.i.i, align 8, !alias.scope !10024, !noalias !10025
  %i.ow = trunc nuw i64 %.sroa.789.0.copyload.i.i to i1
  br i1 %i.ow, label %bb.fe, label %bb.ey

.loopexit.i.i:                                    ; preds = %bb.fd, %.backedge.i.i73.i.i, %.preheader.i.i
  %.sroa.13.1155.i.i = phi i64 [ %.sroa.13.1177.i.i, %.backedge.i.i73.i.i ], [ %.sroa.8.0.copyload.i.i, %.preheader.i.i ], [ %.sroa.13.2.i.i, %bb.fd ] ; 5 uses
  %.sroa.615.1150.i.i = phi i64 [ %.sroa.615.1178.i.i, %.backedge.i.i73.i.i ], [ %.sroa.3.0.copyload.i.i, %.preheader.i.i ], [ %.sroa.615.4.i.i, %bb.fd ] ; 2 uses
  %.sroa.04.0145.i.i = phi i64 [ %.sroa.04.0179.i.i, %.backedge.i.i73.i.i ], [ 1, %.preheader.i.i ], [ %.sroa.04.1.i.i, %bb.fd ]
  %.sroa.01.3140.i.i = phi i64 [ %.sroa.01.3180.i.i, %.backedge.i.i73.i.i ], [ -1, %.preheader.i.i ], [ %.sroa.01.4.i.i, %bb.fd ] ; 2 uses
  %i.ox = add i64 %.sroa.615.1150.i.i, %.sroa.13.1155.i.i
  %i.oy = call i64 @llvm.usub.sat.i64(i64 %.sroa.04.0145.i.i, i64 %i.ox)
  %.sroa.615.2.i.i = add i64 %i.oy, %.sroa.615.1150.i.i ; 4 uses
  %i.oz = load i64, ptr %i.v, align 16, !range !10, !alias.scope !10006, !noalias !10007, !noundef !4
  %i.pa = trunc nuw i64 %i.oz to i1
  br i1 %i.pa, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.loopexit.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.pc = add i64 %.sroa.615.2.i.i, %.sroa.13.1155.i.i
  %i.pd = load i64, ptr %i.pb, align 8, !alias.scope !10006, !noalias !10007, !noundef !4 ; 2 uses
  %.not68.i.i = icmp ult i64 %i.pc, %i.pd         ; 2 uses
  %.sroa.615.2..i.i = select i1 %.not68.i.i, i64 %.sroa.615.2.i.i, i64 %i.pd
  %.sroa.050.0.copyload..i.i = zext i1 %.not68.i.i to i64
  br label %.loopexit547.i

bb.ex:                                            ; preds = %.loopexit.i.i
  %i.pe = add i64 %.sroa.615.2.i.i, %.sroa.13.1155.i.i
  br label %.loopexit547.i

bb.ey:                                            ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB1b_RINtNtB1F_3pat16DeconstructedPatB2N_EENCNvMNtB1F_10pat_columnINtB5Y_13PatternColumnB2N_E13analyze_ctors0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i
  %i.pf = add i64 %.sroa.8.0.copyload91.le.i.i, 1 ; 2 uses
  %..i80.i.i = call noundef i64 @llvm.umax.i64(i64 %i.pf, i64 %.sroa.04.0179.i.i)
  invoke void @_RNvMsm_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB5_14GrowableBitSetjE6ensureCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.pf)
          to label %bb.ez unwind label %.loopexit122.i.i, !noalias !10016

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !10026)
  %i.pg = load i64, ptr %.sroa.440.0..sroa_idx.i.i, align 8, !alias.scope !10026, !noalias !10008, !noundef !4
  %i.ph = icmp ult i64 %.sroa.8.0.copyload91.le.i.i, %i.pg
  br i1 %i.ph, label %bb.fb, label %bb.fa, !prof !5

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10027
  store i64 %.sroa.8.0.copyload91.le.i.i, ptr %i.g, align 8, !noalias !10027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10027
  store ptr %i.g, ptr %i.f, align 8, !noalias !10027
  %.sroa.42.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i81.i.i, align 8, !noalias !10027
  %i.pi = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.440.0..sroa_idx.i.i, ptr %i.pi, align 8, !noalias !10027
  %.sroa.46.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i82.i.i, align 8, !noalias !10027
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @230, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #46
          to label %.noexc83.i.i unwind label %.loopexit.split-lp.i.i, !noalias !10016

.noexc83.i.i:                                     ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.pj = lshr i64 %.sroa.8.0.copyload91.le.i.i, 6 ; 3 uses
  %i.pk = load i64, ptr %.sroa.039.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10026, !noalias !10008, !noundef !4 ; 2 uses
  %i.pl = icmp ult i64 %i.pj, %i.pk
  br i1 %i.pl, label %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.pj, i64 noundef %i.pk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #46
          to label %.noexc84.i.i unwind label %.loopexit.split-lp.i.i, !noalias !10016

.noexc84.i.i:                                     ; preds = %bb.fc
  unreachable

_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i: ; preds = %bb.fb
  %i.pm = load ptr, ptr %.sroa.039.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10026, !noalias !10008, !nonnull !4, !noundef !4
  %i.pn = and i64 %.sroa.8.0.copyload91.le.i.i, 63
  %i.po = shl nuw i64 1, %i.pn
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pj ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !noalias !10028, !noundef !4
  %i.pr = or i64 %i.pq, %i.po
  store i64 %i.pr, ptr %i.pp, align 8, !noalias !10028
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fe, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i
  %.sroa.13.2.i.i = phi i64 [ %.sroa.13.1177.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i86.i.i, %bb.fe ] ; 2 uses
  %.sroa.615.4.i.i = phi i64 [ %.sroa.615.1178.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i79.i.i, %bb.fe ] ; 2 uses
  %.sroa.04.1.i.i = phi i64 [ %..i80.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %.sroa.04.0179.i.i, %bb.fe ] ; 2 uses
  %.sroa.01.4.i.i = phi i64 [ %.sroa.01.3180.i.i, %_RNvMs_NtCs6q8GQ6zN3Tv_17ra_ap_rustc_index7bit_setINtB4_11DenseBitSetjE6insertCs8K4cjrcxBsw_6hir_ty.exit85.i.i ], [ %..i87.i.i, %bb.fe ] ; 2 uses
  %i.ps = icmp eq ptr %i.oq, %i.nf
  br i1 %i.ps, label %.loopexit.i.i, label %.lr.ph.i.i72.preheader.i.i

bb.fe:                                            ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B1D_INtB1D_14ConstructorSetB2N_E5splitINtNtB7_3map3MapIB1b_RINtNtB1F_3pat16DeconstructedPatB2N_EENCNvMNtB1F_10pat_columnINtB5Y_13PatternColumnB2N_E13analyze_ctors0EEs1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2V_.exit78.i.i
  %.sroa.9.0..sroa_idx.le.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %.sroa.9.0.copyload.le.i.i = load i64, ptr %.sroa.9.0..sroa_idx.le.i.i, align 8, !alias.scope !10024, !noalias !10025 ; 2 uses
  %..i79.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload91.le.i.i, i64 %.sroa.615.1178.i.i)
  %..i86.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.0.copyload.le.i.i, i64 %.sroa.13.1177.i.i)
  %i.pt = add i64 %.sroa.9.0.copyload.le.i.i, %.sroa.8.0.copyload91.le.i.i
  %..i87.i.i = call noundef i64 @llvm.umin.i64(i64 %i.pt, i64 %.sroa.01.3180.i.i)
  br label %bb.fd

bb.ff:                                            ; preds = %bb.ev
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !10016
  unreachable

.loopexit547.i:                                   ; preds = %bb.eu, %.backedge.i.i.i.i, %bb.ex, %bb.ew, %.preheader124.i.i
  %.sroa.429.0.i.i = phi i64 [ 0, %bb.ew ], [ %i.pe, %bb.ex ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.eu ]
  %.sroa.028.0.i.i = phi i64 [ 0, %bb.ew ], [ %i.ni, %bb.ex ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.eu ]
  %.sroa.13.0.i.i = phi i64 [ %.sroa.13.1155.i.i, %bb.ew ], [ %.sroa.13.1155.i.i, %bb.ex ], [ %.sroa.8.0.copyload.i.i, %.preheader124.i.i ], [ %.sroa.8.0.copyload.i.i, %.backedge.i.i.i.i ], [ %.sroa.8.0.copyload.i.i, %bb.eu ]
  %.sroa.615.0.i.i = phi i64 [ %.sroa.615.2..i.i, %bb.ew ], [ %.sroa.615.2.i.i, %bb.ex ], [ %.sroa.3.0.copyload.i.i, %.preheader124.i.i ], [ %.sroa.3.0.copyload.i.i, %.backedge.i.i.i.i ], [ %.sroa.3.0.copyload.i.i, %bb.eu ]
  %.sroa.012.0.i.i = phi i64 [ %.sroa.050.0.copyload..i.i, %bb.ew ], [ 1, %bb.ex ], [ 0, %.preheader124.i.i ], [ 0, %.backedge.i.i.i.i ], [ 0, %bb.eu ]
  %.sroa.01.1.i.i = phi i64 [ %.sroa.01.3140.i.i, %bb.ew ], [ %.sroa.01.3140.i.i, %bb.ex ], [ -1, %.preheader124.i.i ], [ %.sroa.01.0173.i.i, %.backedge.i.i.i.i ], [ %.sroa.01.2.i.i, %bb.eu ]
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !9928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10008
  store i64 1, ptr %i.t, align 8, !noalias !9928
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store i64 %.sroa.028.0.i.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store i64 %.sroa.429.0.i.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.4444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i64 %.sroa.012.0.i.i, ptr %.sroa.4444.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.5445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store i64 %.sroa.615.0.i.i, ptr %.sroa.5445.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.6446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  store i64 %.sroa.13.0.i.i, ptr %.sroa.6446.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.7447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.pv = load <2 x i64>, ptr %i.v, align 16, !alias.scope !10006, !noalias !10007
  store <2 x i64> %i.pv, ptr %.sroa.7447.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  store i64 %.sroa.01.1.i.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !9928
  %.sroa.4480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4480.sroa.4.0..sroa.4480.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.px = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.py = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.546.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.546.sroa.0.i, i64 7
  %.sroa.650.sroa.0.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.650.sroa.0.i, i64 7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.qa = load i8, ptr %i.pz, align 16, !range !13, !alias.scope !9927, !noalias !9929
  %i.qb = trunc nuw i8 %i.qa to i1
  br label %bb.fg

bb.fg:                                            ; preds = %bb.gg, %.loopexit547.i
  %i.qc = phi i64 [ %.pre.i, %bb.gg ], [ 1, %.loopexit547.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.546.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0473.i)
  %i.qd = trunc nuw i64 %i.qc to i1
  br i1 %i.qd, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !10029)
  call void @llvm.experimental.noalias.scope.decl(metadata !10030)
  %i.qe = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !10031, !noalias !10032, !noundef !4 ; 3 uses
  %i.qf = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !10033, !noalias !10034, !noundef !4
  %i.qg = icmp ult i64 %i.qe, %i.qf
  br i1 %i.qg, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i64 0, ptr %i.t, align 8, !alias.scope !10035, !noalias !10036
  br label %bb.fl

bb.fj:                                            ; preds = %bb.gd, %bb.fk
  %.pn.i = phi { ptr, i32 } [ %i.ro, %bb.gd ], [ %i.qh, %bb.fk ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IB4V_RINtNtB27_3pat16DeconstructedPatB5E_EENCNvMNtB27_10pat_columnINtB8D_13PatternColumnB5E_E13analyze_ctors0EEs1_0EE0EEB5M_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.t) #47
          to label %.thread.i unwind label %bb.bq, !noalias !9929

bb.fk:                                            ; preds = %bb.fp
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a: ; preds = %bb.fh
  %i.qi = add nuw i64 %i.qe, 1
  store i64 %i.qi, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !10037, !noalias !10038
  call void @llvm.experimental.noalias.scope.decl(metadata !10039)
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fi, %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !10040)
  %i.qj = load i64, ptr %.sroa.4444.0..sroa_idx.i, align 8, !range !23, !alias.scope !10041, !noalias !10042, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.qj, -1
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i, label %3

3:                                                ; preds = %bb.fl
  store i64 %i.qj, ptr %.sroa.0473.i, align 8, !alias.scope !10043, !noalias !10044
  %.sroa.8476.sroa.0.0.copyload.i = load i64, ptr %.sroa.5445.0..sroa_idx.i, align 8, !alias.scope !10043, !noalias !10044
  %.sroa.8476.sroa.6.0.copyload.i = load i64, ptr %.sroa.6446.0..sroa_idx.i, align 8, !alias.scope !10043, !noalias !10044
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %3, %bb.fl
  %.sroa.8476.sroa.0.0.i = phi i64 [ undef, %bb.fl ], [ %.sroa.8476.sroa.0.0.copyload.i, %3 ]
  %.sroa.8476.sroa.6.0.i = phi i64 [ undef, %bb.fl ], [ %.sroa.8476.sroa.6.0.copyload.i, %3 ]
  %.sink.i.i327.i = phi ptr [ %.sroa.0473.i, %bb.fl ], [ %.sroa.4444.0..sroa_idx.i, %3 ]
  store i64 2, ptr %.sink.i.i327.i, align 8, !alias.scope !10045, !noalias !10044
  %.sroa.0473.i.0..sroa.0473.i.0..sroa.0473.i.0..sroa.0473.0..sroa.0473.0..sroa.0473.0..pr.i = load i64, ptr %.sroa.0473.i, align 8, !noalias !9928 ; 2 uses
  %.not196.i = icmp eq i64 %.sroa.0473.i.0..sroa.0473.i.0..sroa.0473.i.0..sroa.0473.0..sroa.0473.0..sroa.0473.0..pr.i, 2
  br i1 %.not196.i, label %bb.fr, label %bb.fm

bb.fm:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a
  %.sroa.8476.sroa.6.1536.i = phi i64 [ undef, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.8476.sroa.6.0.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.8476.sroa.0.1535.i = phi i64 [ %i.qe, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.8476.sroa.0.0.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  %.sroa.0473.0..sroa.0473.0.534.i = phi i64 [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.thread.i.a ], [ %.sroa.0473.i.0..sroa.0473.i.0..sroa.0473.i.0..sroa.0473.0..sroa.0473.0..sroa.0473.0..pr.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9928
  store i64 %.sroa.0473.0..sroa.0473.0.534.i, ptr %i.o, align 8, !noalias !9928
  store i64 %.sroa.8476.sroa.0.1535.i, ptr %.sroa.4480.0..sroa_idx.i, align 8, !noalias !9928
  store i64 %.sroa.8476.sroa.6.1536.i, ptr %.sroa.4480.sroa.4.0..sroa.4480.0..sroa_idx.sroa_idx.i, align 8, !noalias !9928
  call void @llvm.experimental.noalias.scope.decl(metadata !10046)
  %i.qk = trunc nuw i64 %.sroa.0473.0..sroa.0473.0.534.i to i1
  %i.ql = select i1 %i.qk, i64 %.sroa.8476.sroa.6.1536.i, i64 0
  %.sroa.0.0.i328.i = add i64 %i.ql, %.sroa.8476.sroa.0.1535.i ; 3 uses
  %i.qm = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !10046, !noalias !10047, !noundef !4
  %.not.i329.i = icmp ugt i64 %i.qm, %.sroa.0.0.i328.i
  br i1 %.not.i329.i, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  %i.qn = lshr i64 %.sroa.0.0.i328.i, 6           ; 2 uses
  %i.qo = load i64, ptr %i.pw, align 8, !alias.scope !10046, !noalias !10047, !noundef !4
  %i.qp = icmp ult i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.qq = load ptr, ptr %i.px, align 8, !alias.scope !10046, !noalias !10047, !nonnull !4, !noundef !4
  %i.qr = and i64 %.sroa.0.0.i328.i, 63
  %i.qs = shl nuw i64 1, %i.qr
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qn
  %i.qu = load i64, ptr %i.qt, align 8, !noalias !10048, !noundef !4
  %i.qv = and i64 %i.qu, %i.qs
  %.not4.i.i = icmp eq i64 %i.qv, 0
  br i1 %.not4.i.i, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fq, %bb.fo, %bb.fn
  %.sroa.03.0.i.i = phi i1 [ true, %bb.fq ], [ false, %bb.fn ], [ false, %bb.fo ]
  %i.qw = load i64, ptr %.sroa.7447.0..sroa_idx.i, align 8, !range !10, !alias.scope !10046, !noalias !10047, !noundef !4
  %i.qx = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !10046, !noalias !10047
  invoke void @_RNvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtB5_5Slice3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.py, i64 noundef %i.qw, i64 %i.qx, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.fu unwind label %bb.fk, !noalias !9929

bb.fq:                                            ; preds = %bb.fo, %bb.fm
  br label %bb.fp

bb.fr:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKindE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB27_5ChainINtNtB29_3map3MapINtNtNtB5_3ops5range5RangejENcNtBI_8FixedLen0EINtNtNtB2b_7sources4once4OnceBI_EENtNtNtB2b_6traits8iterator8Iterator4next0ECs8K4cjrcxBsw_6hir_ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0473.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.546.sroa.0.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB2L_RINtNtBM_3pat16DeconstructedPatB3t_EENCNvMNtBM_10pat_columnINtB6C_13PatternColumnB3t_E13analyze_ctors0EEs1_0EE0EB3B_.exit.i.i unwind label %bb.fs, !noalias !9929

bb.fs:                                            ; preds = %bb.fr
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i)
          to label %.thread.i unwind label %bb.ft, !noalias !9929

bb.ft:                                            ; preds = %bb.fs
  %i.qz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !9929
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB2L_RINtNtBM_3pat16DeconstructedPatB3t_EENCNvMNtBM_10pat_columnINtB6C_13PatternColumnB3t_E13analyze_ctors0EEs1_0EE0EB3B_.exit.i.i: ; preds = %bb.fr
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecyENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IB4V_RINtNtB27_3pat16DeconstructedPatB5E_EENCNvMNtB27_10pat_columnINtB8D_13PatternColumnB5E_E13analyze_ctors0EEs1_0EE0EEB5M_.exit.i unwind label %.thread503.i, !noalias !9929

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtNtNtB4_3ops5range5RangejENcNtNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor9SliceKind8FixedLen0EINtNtNtBI_7sources4once4OnceB23_EENCINvMs3_B25_NtB25_5Slice5splitINtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtB25_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_B25_INtB25_14ConstructorSetB5E_E5splitIBC_IB4V_RINtNtB27_3pat16DeconstructedPatB5E_EENCNvMNtB27_10pat_columnINtB8D_13PatternColumnB5E_E13analyze_ctors0EEs1_0EE0EEB5M_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvMs3_NtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructorNtBK_5Slice5splitINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtB4_5slice4iter4IterINtBK_11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEENCINvMs7_BK_INtBK_14ConstructorSetB3t_E5splitINtNtB23_3map3MapIB2L_RINtNtBM_3pat16DeconstructedPatB3t_EENCNvMNtBM_10pat_columnINtB6C_13PatternColumnB3t_E13analyze_ctors0EEs1_0EE0EB3B_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9928
  br label %bb.ae

bb.fu:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.546.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.546.0..sroa_idx.i, i64 23, i1 false), !noalias !9928
  %.sroa.546.sroa.5.0.copyload.i = load i64, ptr %.sroa.546.sroa.5.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !9928 ; 4 uses
  %.sroa.546.sroa.6.0.copyload.i = load i64, ptr %.sroa.546.sroa.6.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !9928 ; 4 uses
  %.sroa.546.sroa.7.0.copyload.i = load i64, ptr %.sroa.546.sroa.7.0..sroa.546.0..sroa_idx.sroa_idx.i, align 8, !noalias !9928 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9928
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0473.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.650.sroa.0.7..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.546.sroa.0.7..sroa_idx.i, i64 16, i1 false), !noalias !9928
  br i1 %.sroa.03.0.i.i, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.ra = load i64, ptr %i.an, align 16, !alias.scope !10049, !noalias !10050, !noundef !4 ; 2 uses
  %i.rb = icmp ugt i64 %i.ra, 1                   ; 2 uses
  %i.rc = load ptr, ptr %i.af, align 16, !alias.scope !10049, !noalias !10050, !nonnull !4
  %.sink10.i.i335.i = select i1 %i.rb, ptr %i.rc, ptr %i.af
  %.sink9.i.i336.i = select i1 %i.rb, ptr %i.av, ptr %i.an ; 2 uses
  %.sink.i.i337.i = call i64 @llvm.umax.i64(i64 %i.ra, i64 1)
  %i.rd = load i64, ptr %.sink9.i.i336.i, align 8, !alias.scope !10051, !noalias !10052, !noundef !4 ; 2 uses
  %i.re = icmp eq i64 %i.rd, %.sink.i.i337.i
  br i1 %i.re, label %bb.fw, label %bb.gh, !prof !18

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc341.i unwind label %bb.gd, !noalias !9929

.noexc341.i:                                      ; preds = %bb.fw
  %i.rf = load ptr, ptr %i.af, align 16, !alias.scope !10051, !noalias !10052, !nonnull !4, !noundef !4
  %.pre.i340.i = load i64, ptr %i.av, align 8, !alias.scope !10051, !noalias !10052
  br label %bb.gh

bb.fx:                                            ; preds = %bb.fu
  br i1 %i.qb, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.ga, %bb.fx
  %i.rg = load i64, ptr %i.ar, align 8, !alias.scope !10053, !noalias !10054, !noundef !4 ; 3 uses
  %i.rh = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !10053, !noalias !10054, !noundef !4
  %i.ri = icmp eq i64 %i.rg, %i.rh
  br i1 %i.ri, label %bb.fz, label %bb.ge

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #51
          to label %bb.ge unwind label %bb.gd, !noalias !9929

bb.ga:                                            ; preds = %bb.fx
  %i.rj = trunc nuw i64 %.sroa.546.sroa.5.0.copyload.i to i1
  %i.rk = select i1 %i.rj, i64 %.sroa.546.sroa.7.0.copyload.i, i64 0
  %.sroa.056.0.i = sub i64 0, %i.rk
  %.not197.i = icmp eq i64 %.sroa.546.sroa.6.0.copyload.i, %.sroa.056.0.i
  br i1 %.not197.i, label %bb.fy, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.rl = load i64, ptr %i.ap, align 8, !alias.scope !10055, !noalias !10056, !noundef !4 ; 3 uses
  %i.rm = load i64, ptr %i.ae, align 8, !range !19, !alias.scope !10055, !noalias !10056, !noundef !4
  %i.rn = icmp eq i64 %i.rl, %i.rm
  br i1 %i.rn, label %bb.gc, label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #51
          to label %bb.gf unwind label %bb.gd, !noalias !9929

bb.gd:                                            ; preds = %bb.gc, %bb.fz, %bb.fw
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.ge:                                            ; preds = %bb.fz, %bb.fy
  %i.rp = load ptr, ptr %i.aq, align 8, !alias.scope !10053, !noalias !10054, !nonnull !4, !noundef !4
  %i.rq = getelementptr inbounds nuw [80 x i8], ptr %i.rp, i64 %i.rg ; 5 uses
  store i8 3, ptr %i.rq, align 16, !noalias !9929
  %.sroa.4461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4461.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !9929
  %.sroa.5462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5462.0..sroa_idx.i, align 8, !noalias !9929
  %.sroa.6463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6463.0..sroa_idx.i, align 16, !noalias !9929
  %.sroa.7464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7464.0..sroa_idx.i, align 8, !noalias !9929
  %i.rr = add i64 %i.rg, 1
  store i64 %i.rr, ptr %i.ar, align 8, !alias.scope !10053, !noalias !10054
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gc, %bb.gb
  %i.rs = load ptr, ptr %i.ao, align 8, !alias.scope !10055, !noalias !10056, !nonnull !4, !noundef !4
  %i.rt = getelementptr inbounds nuw [80 x i8], ptr %i.rs, i64 %i.rl ; 5 uses
  store i8 3, ptr %i.rt, align 16, !noalias !9929
  %.sroa.4455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4455.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !9929
  %.sroa.5456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5456.0..sroa_idx.i, align 8, !noalias !9929
  %.sroa.6457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6457.0..sroa_idx.i, align 16, !noalias !9929
  %.sroa.7458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7458.0..sroa_idx.i, align 8, !noalias !9929
  %i.ru = add i64 %i.rl, 1
  store i64 %i.ru, ptr %i.ap, align 8, !alias.scope !10055, !noalias !10056
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gh, %bb.gf, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.546.sroa.0.i)
  %.pre.i = load i64, ptr %i.t, align 8, !range !10, !alias.scope !10035, !noalias !10036
  br label %bb.fg

bb.gh:                                            ; preds = %.noexc341.i, %bb.fv
  %i.rv = phi i64 [ %.pre.i340.i, %.noexc341.i ], [ %i.rd, %bb.fv ]
  %.sroa.01.0.i338.i = phi ptr [ %i.av, %.noexc341.i ], [ %.sink9.i.i336.i, %bb.fv ] ; 2 uses
  %.sroa.0.0.i339.i = phi ptr [ %i.rf, %.noexc341.i ], [ %.sink10.i.i335.i, %bb.fv ]
  %i.rw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i339.i, i64 %i.rv ; 5 uses
  store i8 3, ptr %i.rw, align 16, !noalias !9929
  %.sroa.4449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4449.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.650.sroa.0.i, i64 23, i1 false), !noalias !9929
  %.sroa.5450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  store i64 %.sroa.546.sroa.5.0.copyload.i, ptr %.sroa.5450.0..sroa_idx.i, align 8, !noalias !9929
  %.sroa.6451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  store i64 %.sroa.546.sroa.6.0.copyload.i, ptr %.sroa.6451.0..sroa_idx.i, align 16, !noalias !9929
  %.sroa.7452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  store i64 %.sroa.546.sroa.7.0.copyload.i, ptr %.sroa.7452.0..sroa_idx.i, align 8, !noalias !9929
  %i.rx = load i64, ptr %.sroa.01.0.i338.i, align 8, !alias.scope !10051, !noalias !10052, !noundef !4
  %i.ry = add i64 %i.rx, 1
  store i64 %i.ry, ptr %.sroa.01.0.i338.i, align 8, !alias.scope !10051, !noalias !10052
  br label %bb.gg

bb.gi:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9928
  %i.rz = load i64, ptr %i.ar, align 8, !alias.scope !10057, !noalias !10058, !noundef !4 ; 3 uses
  %i.sa = load i64, ptr %i.ad, align 8, !range !19, !alias.scope !10057, !noalias !10058, !noundef !4
  %i.sb = icmp eq i64 %i.rz, %i.sa
  br i1 %i.sb, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #51
          to label %bb.gk unwind label %bb.d, !noalias !9929

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.sc = load ptr, ptr %i.aq, align 8, !alias.scope !10057, !noalias !10058, !nonnull !4, !noundef !4
  %i.sd = getelementptr inbounds nuw [80 x i8], ptr %i.sc, i64 %i.rz
  store i8 17, ptr %i.sd, align 16, !noalias !9929
  %i.se = add i64 %i.rz, 1
  store i64 %i.se, ptr %i.ar, align 8, !alias.scope !10057, !noalias !10058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ag, ptr noundef nonnull align 16 dereferenceable(96) %i.af, i64 96, i1 false), !noalias !9927
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.sf, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !9927
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sg, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !9927
  br label %bb.gz

bb.gl:                                            ; preds = %bb.t, %bb.s
  %i.sh = load ptr, ptr %i.ao, align 8, !alias.scope !9931, !noalias !9932, !nonnull !4, !noundef !4
  %i.si = getelementptr inbounds nuw [80 x i8], ptr %i.sh, i64 %i.cm
  store i8 16, ptr %i.si, align 16, !noalias !9929
  %i.sj = add i64 %i.cm, 1
  store i64 %i.sj, ptr %i.ap, align 8, !alias.scope !9931, !noalias !9932
  br label %bb.ae

bb.gm:                                            ; preds = %bb.f
  %i.sk = load i64, ptr %i.at, align 8, !alias.scope !10059, !noalias !10060, !noundef !4 ; 3 uses
  %i.sl = load i64, ptr %i.ac, align 8, !range !19, !alias.scope !10059, !noalias !10060, !noundef !4
  %i.sm = icmp eq i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEE8grow_oneB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #51
          to label %bb.gv unwind label %.loopexit, !noalias !9929

bb.go:                                            ; preds = %bb.f
  br i1 %.sroa.0.0.i.ph, label %.outer.backedge, label %bb.gr

.outer.backedge:                                  ; preds = %bb.go, %bb.gt
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.c
  %.sroa.0.0.i.ph = phi i1 [ false, %bb.c ], [ true, %.outer.backedge ] ; 2 uses
  br label %bb.e

bb.gp:                                            ; preds = %bb.f
  %i.sn = load i64, ptr %i.an, align 16, !alias.scope !10061, !noalias !10062, !noundef !4 ; 2 uses
  %i.so = icmp ugt i64 %i.sn, 1                   ; 2 uses
  %i.sp = load ptr, ptr %i.af, align 16, !alias.scope !10061, !noalias !10062, !nonnull !4
  %.sink10.i.i351.i = select i1 %i.so, ptr %i.sp, ptr %i.af
  %.sink9.i.i352.i = select i1 %i.so, ptr %i.av, ptr %i.an ; 2 uses
  %.sink.i.i353.i = call i64 @llvm.umax.i64(i64 %i.sn, i64 1)
  %i.sq = load i64, ptr %.sink9.i.i352.i, align 8, !alias.scope !10063, !noalias !10064, !noundef !4 ; 2 uses
  %i.sr = icmp eq i64 %i.sq, %.sink.i.i353.i
  br i1 %i.sr, label %bb.gq, label %bb.gu, !prof !18

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc357.i unwind label %.loopexit, !noalias !9929

.noexc357.i:                                      ; preds = %bb.gq
  %i.ss = load ptr, ptr %i.af, align 16, !alias.scope !10063, !noalias !10064, !nonnull !4, !noundef !4
  %.pre.i356.i = load i64, ptr %i.av, align 8, !alias.scope !10063, !noalias !10064
  br label %bb.gu

bb.gr:                                            ; preds = %bb.go
  %i.st = load i64, ptr %i.an, align 16, !alias.scope !10065, !noalias !10066, !noundef !4 ; 2 uses
  %i.su = icmp ugt i64 %i.st, 1                   ; 2 uses
  %i.sv = load ptr, ptr %i.af, align 16, !alias.scope !10065, !noalias !10066, !nonnull !4
  %.sink10.i.i359.i = select i1 %i.su, ptr %i.sv, ptr %i.af
  %.sink9.i.i360.i = select i1 %i.su, ptr %i.av, ptr %i.an ; 2 uses
  %.sink.i.i361.i = call i64 @llvm.umax.i64(i64 %i.st, i64 1)
  %i.sw = load i64, ptr %.sink9.i.i360.i, align 8, !alias.scope !10067, !noalias !10068, !noundef !4 ; 2 uses
  %i.sx = icmp eq i64 %i.sw, %.sink.i.i361.i
  br i1 %i.sx, label %bb.gs, label %bb.gt, !prof !18

bb.gs:                                            ; preds = %bb.gr
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor11ConstructorNtNtNtNtCs8K4cjrcxBsw_6hir_ty11diagnostics11match_check12pat_analysis13MatchCheckCtxEj1_E21reserve_one_uncheckedB23_(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %i.af)
          to label %.noexc365.i unwind label %.loopexit.split-lp, !noalias !9929
end_hunk_3
