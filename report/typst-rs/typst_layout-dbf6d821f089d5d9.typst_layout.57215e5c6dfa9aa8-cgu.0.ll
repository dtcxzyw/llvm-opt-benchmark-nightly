Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1c_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB17_20sort_unstable_by_keyB2g_NCNvB2i_6commits0_0E0EB2m_:bb.a
  %.sroa.15.077115 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.078114 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.j = add nsw i32 %.sroa.026.075117, -1        ; 3 uses
  %i.k = lshr i64 %.sroa.15.077115, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.k, 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 448
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx2.i ; 3 uses
  %i.n = icmp samesign ult i64 %.sroa.15.077115, 64
  br i1 %i.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB14_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SBZ_20sort_unstable_by_keyB28_NCNvB2a_6commits0_0E0EB2e_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph118
  %i.o = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB19_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB14_20sort_unstable_by_keyB2d_NCNvB2f_6commits0_0E0EB2j_(ptr noundef nonnull readonly align 8 %.sroa.0.078114, ptr noundef readonly %i.l, ptr noundef readonly %i.m, i64 noundef %i.k)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1a_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB15_20sort_unstable_by_keyB2e_NCNvB2g_6commits0_0E0EB2k_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB14_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SBZ_20sort_unstable_by_keyB28_NCNvB2a_6commits0_0E0EB2e_.exit.i: ; preds = %.lr.ph118
  %i.p = getelementptr i8, ptr %.sroa.0.078114, i64 56
  %.val6.i = load i64, ptr %i.p, align 8, !alias.scope !12837, !noundef !41 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 56
  %.val7.i = load i64, ptr %i.q, align 8, !alias.scope !12837, !noundef !41 ; 2 uses
  %i.r = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 56
  %.val5.i = load i64, ptr %i.s, align 8, !alias.scope !12837, !noundef !41 ; 2 uses
  %i.t = icmp ult i64 %.val6.i, %.val5.i
  %i.u = xor i1 %i.r, %i.t
  %i.v = icmp ult i64 %.val7.i, %.val5.i
  %i.w = xor i1 %i.r, %i.v
  %..i.i = select i1 %i.w, ptr %i.m, ptr %i.l
  %.sroa.0.0.i.i = select i1 %i.u, ptr %.sroa.0.078114, ptr %..i.i
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1a_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB15_20sort_unstable_by_keyB2e_NCNvB2g_6commits0_0E0EB2k_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1a_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB15_20sort_unstable_by_keyB2e_NCNvB2g_6commits0_0E0EB2k_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB14_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SBZ_20sort_unstable_by_keyB28_NCNvB2a_6commits0_0E0EB2e_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB14_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SBZ_20sort_unstable_by_keyB28_NCNvB2a_6commits0_0E0EB2e_.exit.i ], [ %i.o, %bb.b ]
  %i.x = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.y = ptrtoint ptr %.sroa.0.078114 to i64
  %i.z = sub nuw i64 %i.x, %i.y                   ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.z, 6
  %i.aa = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.077115
  tail call void @llvm.assume(i1 %i.aa)
  %.not = icmp eq ptr %.sroa.023.076116, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1a_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB15_20sort_unstable_by_keyB2e_NCNvB2g_6commits0_0E0EB2k_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12838)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %i.z ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, i64 64, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !alias.scope !12839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12841)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false), !noalias !12841
  %i.ad = shl nuw nsw i64 %.sroa.15.077115, 6
  %i.ae = getelementptr i8, ptr %.sroa.0.078114, i64 %i.ad ; 2 uses
  %.sroa.11.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 128
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 56
  %.val1.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !12843, !noalias !41 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.aj, %.preheader.i.i ], [ %i.ao, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep19.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 5 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.028.i.i, %.lr.ph.i.i ]
  %i.af = icmp eq ptr %.sroa.11.1.i.i, %i.ae      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.af, ptr %i.e, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, ptr %i.e, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 56
  %.val.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !12844, !noundef !41
  %i.ag = icmp ult i64 %.val.i.i.i, %.val1.i.pre.i.i
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !alias.scope !12845, !noalias !12846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.01.0.i.i, i64 64, i1 false), !noalias !12844
  %i.ai = zext i1 %i.ag to i64
  %i.aj = add i64 %.sroa.19.1.i.i, %i.ai          ; 5 uses
  %.sroa.11.1.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 64
  br i1 %i.af, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0EB2M_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.028.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.025.i.i, %bb.d ] ; 4 uses
  %.sroa.011.027.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i ], [ %i.ac, %bb.d ] ; 2 uses
  %.sroa.19.026.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.011.027.i.i, i64 120
  %.val.i9.i.i = load i64, ptr %i.ak, align 8, !alias.scope !12845, !noalias !12847, !noundef !41
  %i.al = icmp ult i64 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %.sroa.19.026.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.011.027.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !alias.scope !12845, !noalias !12847
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.028.i.i, i64 64, i1 false), !alias.scope !12845, !noalias !12847
  %i.an = zext i1 %i.al to i64
  %i.ao = add i64 %.sroa.19.026.i.i, %i.an        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i, i64 64 ; 3 uses
  %i.ap = icmp ult ptr %.sroa.11.0.i.i, %i.ae
  br i1 %i.ap, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0EB2M_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12842
  %.not7.i = icmp ult i64 %i.aj, %.sroa.15.077115
  br i1 %.not7.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0EB2M_.exit.i
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.078114, i64 %i.aj ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, i64 64, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !alias.scope !12848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = xor i64 %i.aj, -1
  %i.at = add i64 %.sroa.15.077115, %i.as
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1c_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB17_20sort_unstable_by_keyB2g_NCNvB2i_6commits0_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.078114, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %.sroa.023.076116, i32 noundef %i.j, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1a_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB15_20sort_unstable_by_keyB2e_NCNvB2g_6commits0_0E0EB2k_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %i.z ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.023.076116, i64 56
  %.sroa.023.0.val = load i64, ptr %i.av, align 8, !noundef !41
  %i.aw = getelementptr i8, ptr %i.au, i64 56
  %.val = load i64, ptr %i.aw, align 8, !noundef !41
  %i.ax = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.ax, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12849)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, i64 64, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false), !alias.scope !12850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false), !noalias !12852
  %i.az = shl nuw nsw i64 %.sroa.15.077115, 6
  %i.ba = getelementptr i8, ptr %.sroa.0.078114, i64 %i.az ; 2 uses
  %.sroa.11.025.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 128
  %.phi.trans.insert.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 56
  %.val1.i.pre.i.i43 = load i64, ptr %.phi.trans.insert.i.i42, align 8, !alias.scope !12854, !noalias !41 ; 2 uses
  br label %.lr.ph.i.i44

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i44, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.bf, %.preheader.i.i50 ], [ %i.bk, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep19.i.i58, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ] ; 5 uses
  %.sroa.011.1.i.i53 = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ]
  %i.bb = icmp eq ptr %.sroa.11.1.i.i52, %i.ba    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.bb, ptr %i.b, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bb, ptr %i.b, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 56
  %.val.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !12855, !noundef !41
  %i.bc = icmp uge i64 %.val1.i.pre.i.i43, %.val.i.i.i57
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.011.1.i.i53, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !alias.scope !12856, !noalias !12857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.01.0.i.i54, i64 64, i1 false), !noalias !12855
  %i.be = zext i1 %i.bc to i64
  %i.bf = add i64 %.sroa.19.1.i.i51, %i.be        ; 4 uses
  %.sroa.11.1.sroa.gep19.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 64
  br i1 %i.bb, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0E0EB2M_.exit.i, label %.preheader.i.i50

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44, %bb.g
  %.sroa.11.028.i.i45 = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ], [ %.sroa.11.025.i.i41, %bb.g ] ; 4 uses
  %.sroa.011.027.i.i46 = phi ptr [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ], [ %i.ay, %bb.g ] ; 2 uses
  %.sroa.19.026.i.i47 = phi i64 [ %i.bk, %.lr.ph.i.i44 ], [ 0, %bb.g ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.sroa.011.027.i.i46, i64 120
  %.val.i9.i.i48 = load i64, ptr %i.bg, align 8, !alias.scope !12856, !noalias !12858, !noundef !41
  %i.bh = icmp uge i64 %.val1.i.pre.i.i43, %.val.i9.i.i48
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %.sroa.19.026.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.011.027.i.i46, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false), !alias.scope !12856, !noalias !12858
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.028.i.i45, i64 64, i1 false), !alias.scope !12856, !noalias !12858
  %i.bj = zext i1 %i.bh to i64
  %i.bk = add i64 %.sroa.19.026.i.i47, %i.bj      ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i45, i64 64 ; 3 uses
  %i.bl = icmp ult ptr %.sroa.11.0.i.i49, %i.ba
  br i1 %i.bl, label %.lr.ph.i.i44, label %.preheader.i.i50

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0E0EB2M_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12853
  %.not7.i59 = icmp ult i64 %i.bf, %.sroa.15.077115
  br i1 %.not7.i59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0E0EB2M_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1C_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyB2G_NCNvB2I_6commits0_0E0E0EB2M_.exit.i
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.078114, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, i64 64, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.078114, ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i64 64, i1 false), !alias.scope !12859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %i.bo = sub nuw i64 %.sroa.15.077115, %i.bn
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.078114, i64 %i.bn
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit
  %.sroa.023.0.be = phi ptr [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit ], [ %i.bo, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ar, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bq, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleECs7tN9tvpkfrg_12typst_layout(ptr nofree noundef captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !48, !noundef !41
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE0ECs7tN9tvpkfrg_12typst_layout.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !41 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !41
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !41 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE0ECs7tN9tvpkfrg_12typst_layout.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE0ECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() #59
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsazW1U07H1KN_15crossbeam_epoch9collector11LocalHandleE0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 305) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12862)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !45, !alias.scope !12862, !noundef !41 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12862
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !12862
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 1, 401) %4), !noalias !12862
  %i.h = load i64, ptr %i.a, align 8, !range !49, !noalias !12862, !noundef !41
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !124, !noalias !12862, !noundef !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !12862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12862
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #57
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !12862, !nonnull !41, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12862
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !12862
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !12862
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCsazW1U07H1KN_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB22_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resize0uE0ECs7tN9tvpkfrg_12typst_layout(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !41
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCsazW1U07H1KN_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resize0uE0Cs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !41, !noundef !41
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #56
  br label %_RNCINvMNtCsazW1U07H1KN_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resize0uE0Cs7tN9tvpkfrg_12typst_layout.exit

_RNCINvMNtCsazW1U07H1KN_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCs66IsRtDrrKP_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCsf1gSX8u3EQ2_10rayon_core3job6JobRefE6resize0uE0Cs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #56
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1O_6styles10StyleChainERB2M_NtNtNtB1Q_13introspection7locator7LocatorEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout5pages3run12LayoutedPageEINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1Q_4diag16SourceDiagnosticEENtNtB1Q_6engine4SinkEENCINvMB8m_NtB8m_6Engine11parallelizeINtNtNtNtB5d_4iter8adapters10filter_map9FilterMapINtNtNtB5d_5slice4iter4IterNtNtB6l_7collect4ItemENCNvB6l_12layout_pages0EB9g_B1E_B58_NCBaS_s_0E0EEB6n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 16 %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 18 uses
  %i.b = alloca [120 x i8], align 8               ; 18 uses
  %i.c = alloca [120 x i8], align 8               ; 18 uses
  %i.d = alloca [120 x i8], align 8               ; 18 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [200 x i8], align 8               ; 10 uses
  %i.l = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.425.i.i.i = alloca [112 x i8], align 8   ; 5 uses
  %i.m = alloca [120 x i8], align 8               ; 6 uses
  %.sroa.712.i.i.i = alloca [112 x i8], align 8   ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 12 uses
  %i.o = alloca [8 x i8], align 8                 ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 11 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  store i64 %1, ptr %i.q, align 8
  store i64 %3, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %4, ptr %i.r, align 8
  %i.s = lshr i64 %1, 1                           ; 16 uses
  %.not = icmp ult i64 %i.s, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.f, label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.t = tail call noundef i64 @_RNvCsf1gSX8u3EQ2_10rayon_core19current_num_threads()
  %i.u = lshr i64 %3, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %i.t)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i64 %3, 1
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %.sink.i = phi i64 [ %i.v, %bb.d ], [ %..i.i, %.noexc ]
  store i64 %.sink.i, ptr %i.p, align 8, !alias.scope !12915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.s, ptr %i.o, align 8
  %.not.i.i = icmp samesign ugt i64 %i.s, %6
  br i1 %.not.i.i, label %.noexc.i, label %bb.s, !prof !44

.noexc.i:                                         ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @286, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @798) #53
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !12916, !noundef !41 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !12916, !noundef !41 ; 3 uses
  %i.aa = load ptr, ptr %7, align 8, !alias.scope !12916, !nonnull !41, !align !46, !noundef !41 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12917)
  %.idx.i = mul nuw nsw i64 %6, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.712.i.i.i)
  %i.ac = icmp eq i64 %6, 0
  br i1 %i.ac, label %.loopexit, label %_RNvXsb_NtCsa3eaf3mS27M_5rayon3vecINtB5_10SliceDrainTRRSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBX_6styles10StyleChainERB1V_NtNtNtBZ_13introspection7locator7LocatorEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_RNvNtCs7tN9tvpkfrg_12typst_layout4grid11layout_cell:bb.a

bb.aj:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32828)
  call void @llvm.experimental.noalias.scope.decl(metadata !32829)
  call void @llvm.experimental.noalias.scope.decl(metadata !32830)
  call void @llvm.experimental.noalias.scope.decl(metadata !32831)
  %i.dt = load i64, ptr %i.dl, align 16, !range !45, !alias.scope !32832, !noalias !32833, !noundef !41
  %i.du = icmp samesign ult i64 %i.dt, 2
  br i1 %i.du, label %bb.ak, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef 0, i64 noundef 2, i64 noundef 16, i64 noundef 192)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !32834

.noexc2.i.i:                                      ; preds = %bb.ak
  %.pre.i.i.i.i.i = load i64, ptr %i.dm, align 16, !alias.scope !32835, !noalias !32833
  %.pre16.i = load ptr, ptr %i.dp, align 8, !alias.scope !32835, !noalias !32833
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %.noexc2.i.i, %bb.aj
  %i.dv = phi ptr [ %i.dq, %bb.aj ], [ %.pre16.i, %.noexc2.i.i ]
  %i.dw = phi i64 [ 0, %bb.aj ], [ %.pre.i.i.i.i.i, %.noexc2.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32836)
  call void @llvm.experimental.noalias.scope.decl(metadata !32837)
  call void @llvm.experimental.noalias.scope.decl(metadata !32838)
  call void @llvm.experimental.noalias.scope.decl(metadata !32839)
  call void @llvm.experimental.noalias.scope.decl(metadata !32840)
  %i.dx = mul i64 %i.dw, 192
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.dv, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %scevgep.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(384) %.sroa.5.0..sroa_idx.i.i, i64 384, i1 false), !noalias !32841
  %i.dy = add i64 %i.dw, 2
  store i64 2, ptr %i.b, align 16, !alias.scope !32842, !noalias !32819
  store i64 %i.dy, ptr %i.dm, align 16, !alias.scope !32835, !noalias !32843
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ao, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.val.i.i.i33.i.i.ph.i = phi i64 [ 1, %bb.ao ], [ 0, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32844
  %i.dz = sub nuw nsw i64 2, %.val.i.i.i33.i.i.ph.i ; 4 uses
  %i.ea = mul nuw nsw i64 %i.dz, 192              ; 4 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !32845
  %i.eb = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, 17) 16) #56, !noalias !32845 ; 6 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.ea) #57
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !32834

.noexc3.i.i:                                      ; preds = %bb.al
  unreachable

.thread.i.i.i:                                    ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %.sroa.7.0..sroa_idx3.i44.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ee = load ptr, ptr %i.dp, align 8, !noalias !32846, !nonnull !41, !noundef !41 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ef, ptr noundef nonnull align 16 dereferenceable(16) %i.ed, i64 16, i1 false), !noalias !32820
  %.sroa.4.0..sroa_idx.i45.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 208
  store i64 %.sroa.5.0.copyload2.i42.i.i.1.i, ptr %.sroa.4.0..sroa_idx.i45.i.i.1.i, align 16, !noalias !32846
  %.sroa.55.0..sroa_idx.i46.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i46.i.i.1.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i44.i.i.1.i, i64 168, i1 false), !noalias !32820
  %i.eg = load i64, ptr %i.dm, align 16, !noalias !32846, !noundef !41
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.dm, align 16, !noalias !32846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32844
  call void @llvm.experimental.noalias.scope.decl(metadata !32847)
  call void @llvm.experimental.noalias.scope.decl(metadata !32848)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8, !noalias !32844
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ei, align 8, !noalias !32844
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.ej, align 8, !noalias !32844
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 16 to ptr), ptr %i.ek, align 8, !noalias !32844
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.am:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32849)
  %i.el = load i64, ptr %i.dl, align 16, !range !45, !noalias !32850, !noundef !41
  %i.em = sub nsw i64 %i.el, %i.dn
  %i.en = icmp ult i64 %i.em, 2
  br i1 %i.en, label %bb.an, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dl, i64 noundef %i.dn, i64 noundef 2, i64 noundef 16, i64 noundef 192)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !32834

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i: ; preds = %bb.an
  %.pre.i = load ptr, ptr %i.dp, align 8, !noalias !32850
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i, %bb.am
  %i.eo = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i ], [ %i.dq, %bb.am ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 384
  %i.eq = mul nuw nsw i64 %i.dn, 192              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ep, ptr nonnull align 16 %i.eo, i64 %i.eq, i1 false), !noalias !32850
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !32851, !noalias !32819
  call void @llvm.experimental.noalias.scope.decl(metadata !32852)
  %i.er = load i64, ptr %i.dm, align 16, !noalias !32846, !noundef !41 ; 3 uses
  %.not10.i35.i.i.i = icmp ult i64 %i.er, 2
  br i1 %.not10.i35.i.i.i, label %.lr.ph.i36.i.i.preheader.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

.lr.ph.i36.i.i.preheader.i:                       ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32853)
  call void @llvm.experimental.noalias.scope.decl(metadata !32854)
  store i64 1, ptr %i.b, align 16, !alias.scope !32855, !noalias !32819
  %.sroa.5.0..sroa_idx1.i41.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5.0.copyload2.i42.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i41.i.i.i, align 16, !alias.scope !32856, !noalias !32819 ; 2 uses
  %.not.i43.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i42.i.i.i, -1
  br i1 %.not.i43.i.i.i, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i36.i.i.preheader.i
  %.sroa.7.0..sroa_idx3.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.es = load ptr, ptr %i.dp, align 8, !noalias !32846, !nonnull !41, !noundef !41
  %i.et = getelementptr inbounds nuw [192 x i8], ptr %i.es, i64 %i.er ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.et, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !noalias !32820
  %.sroa.4.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.5.0.copyload2.i42.i.i.i, ptr %.sroa.4.0..sroa_idx.i45.i.i.i, align 16, !noalias !32846
  %.sroa.55.0..sroa_idx.i46.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i46.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i44.i.i.i, i64 168, i1 false), !noalias !32820
  %i.eu = load i64, ptr %i.dm, align 16, !noalias !32846, !noundef !41
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.dm, align 16, !noalias !32846
  %exitcond.not.i47.i.i.i = icmp eq i64 %i.er, 1
  br i1 %exitcond.not.i47.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i: ; preds = %bb.ao
  store i64 2, ptr %i.b, align 16, !alias.scope !32855, !noalias !32819
  %.sroa.5.0..sroa_idx1.i41.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.sroa.5.0.copyload2.i42.i.i.1.i = load i64, ptr %.sroa.5.0..sroa_idx1.i41.i.i.1.i, align 16, !alias.scope !32857, !noalias !32819 ; 2 uses
  %.not.i43.i.i.1.i = icmp eq i64 %.sroa.5.0.copyload2.i42.i.i.1.i, -1
  br i1 %.not.i43.i.i.1.i, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i, label %.thread.i.i.i

bb.ap:                                            ; preds = %bb.ar
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #54
          to label %.body.i.i unwind label %bb.au, !noalias !32833

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i: ; preds = %bb.at, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  store ptr %i.fn, ptr %i.fb, align 8, !noalias !32844
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.as, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, %.thread.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !32834

.noexc5.i.i:                                      ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32844
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.aq:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32858)
  %i.ex = mul nuw nsw i64 %.val.i.i.i33.i.i.ph.i, 192
  %i.ey = getelementptr i8, ptr %i.b, i64 %i.ex
  %scevgep1.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ey, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.eb, ptr noundef nonnull align 16 dereferenceable(1) %scevgep1.i.i.i.i.i.i.i.i.i.i, i64 %i.ea, i1 false), !noalias !32859
  store i64 2, ptr %i.b, align 16, !alias.scope !32860, !noalias !32819
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !noalias !32844
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.dz, ptr %i.fa, align 8, !noalias !32844
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.eb, ptr %i.fb, align 8, !noalias !32844
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ez, ptr %i.fc, align 8, !noalias !32844
  call void @llvm.experimental.noalias.scope.decl(metadata !32861)
  %i.fd = add nuw nsw i64 %i.dn, 2                ; 2 uses
  %i.fe = load i64, ptr %i.dl, align 16, !range !45, !noalias !32862, !noundef !41
  %i.ff = sub nsw i64 %i.fe, %i.fd
  %i.fg = icmp ugt i64 %i.dz, %i.ff
  br i1 %i.fg, label %bb.ar, label %bb.as, !prof !44

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dl, i64 noundef %i.fd, i64 noundef %i.dz, i64 noundef 16, i64 noundef 192)
          to label %bb.as unwind label %bb.ap, !noalias !32833

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fh = sub nuw nsw i64 4, %.val.i.i.i33.i.i.ph.i ; 4 uses
  %i.fi = load ptr, ptr %i.dp, align 8, !noalias !32862, !nonnull !41, !noundef !41 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 384
  %i.fk = getelementptr inbounds nuw [192 x i8], ptr %i.fi, i64 %i.fh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.fk, ptr nonnull align 16 %i.fj, i64 %i.eq, i1 false), !noalias !32862
  store i64 %i.fh, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !32863, !noalias !32819
  %i.fl = load i64, ptr %i.dm, align 16, !noalias !32864, !noundef !41 ; 2 uses
  %.not10.i51.i.i.i = icmp ult i64 %i.fl, %i.fh
  br i1 %.not10.i51.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.as, %bb.at
  %.sroa.01.09.i5471.i.i.i = phi i64 [ %i.fo, %bb.at ], [ %i.fl, %bb.as ] ; 2 uses
  %i.fm = phi ptr [ %i.fn, %bb.at ], [ %i.eb, %bb.as ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 192 ; 3 uses
  %.sroa.5.0..sroa_idx1.i55.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.5.0.copyload2.i56.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx1.i55.i.i.i, align 16, !noalias !32865 ; 2 uses
  %.not.i57.i.i.i = icmp eq i64 %.sroa.5.0.copyload2.i56.i.i.i, -1
  br i1 %.not.i57.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, label %bb.at

bb.at:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.7.0..sroa_idx3.i58.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = add nuw i64 %.sroa.01.09.i5471.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx3.i58.i.i.i, i64 168, i1 false), !noalias !32864
  %i.fp = load ptr, ptr %i.dp, align 8, !noalias !32864, !nonnull !41, !noundef !41
  %i.fq = getelementptr inbounds nuw [192 x i8], ptr %i.fp, i64 %.sroa.01.09.i5471.i.i.i ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fq, ptr noundef nonnull align 16 dereferenceable(16) %i.fm, i64 16, i1 false), !noalias !32864
  %.sroa.4.0..sroa_idx.i59.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %.sroa.5.0.copyload2.i56.i.i.i, ptr %.sroa.4.0..sroa_idx.i59.i.i.i, align 16, !noalias !32864
  %.sroa.55.0..sroa_idx.i60.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.0..sroa_idx.i60.i.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.55.i.i.i.i, i64 168, i1 false), !noalias !32864
  %i.fr = load i64, ptr %i.dm, align 16, !noalias !32864, !noundef !41
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.dm, align 16, !noalias !32864
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.i.i.i.i)
  %exitcond.not.i61.i.i.i = icmp eq i64 %i.fo, %i.fh
  %i.ft = icmp eq ptr %i.fn, %i.ez
  %or.cond.i.i.i = select i1 %exitcond.not.i61.i.i.i, i1 true, i1 %i.ft
  br i1 %or.cond.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.au:                                            ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32833
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.an, %bb.al, %bb.ak
  %lpad.loopexit.split-lp11.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %bb.ap
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ew, %bb.ap ], [ %lpad.loopexit.split-lp11.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1n_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dr) #54
          to label %bb.av unwind label %bb.be, !noalias !32820

_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc5.i.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBX_5frame9FrameItemEKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i40.i.i.1.i, %.lr.ph.i36.i.i.preheader.i, %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterBT_Kj2_EE11spec_extendCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1n_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dr)
          to label %bb.ba unwind label %bb.az, !noalias !32820

bb.av:                                            ; preds = %bb.az, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.gl, %bb.az ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.fv = load i64, ptr %i.b, align 16, !alias.scope !32866, !noalias !32819, !noundef !41 ; 3 uses
  %i.fw = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !32866, !noalias !32819, !noundef !41 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, %i.fv
  br i1 %i.fx, label %.body92.thread, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.av
  %i.fy = sub nuw i64 %i.fw, %i.fv                ; 3 uses
  %i.fz = getelementptr inbounds nuw [192 x i8], ptr %.sroa.5.0..sroa_idx.i.i, i64 %i.fv ; 2 uses
  br label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.ga = icmp eq i64 %i.gc, %i.fy
  br i1 %i.ga, label %.body92.thread, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph187, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i185 = phi i64 [ 0, %.lr.ph187 ], [ %i.gc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [192 x i8], ptr %i.fz, i64 %.sroa.0.0.i.i.i.i.i.i.i.i185
  %i.gc = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i185, 1 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.gd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %bb.ax, !noalias !32820

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i: ; preds = %.lr.ph190
  %i.ge = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i188, 1 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, %i.fy
  br i1 %i.gf, label %.body2.i, label %.lr.ph190

bb.ax:                                            ; preds = %bb.aw
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gh = icmp eq i64 %i.gc, %i.fy
  br i1 %i.gh, label %.body2.i, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i188 = phi i64 [ %i.ge, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i ], [ %i.gc, %bb.ax ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [192 x i8], ptr %i.fz, i64 %.sroa.0.1.i.i.i.i.i.i.i.i188
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.gj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !32820

bb.ay:                                            ; preds = %.lr.ph190
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32820
  unreachable

bb.az:                                            ; preds = %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ba:                                            ; preds = %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1G_5frame9FrameItemEKj2_EENtNtNtBY_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.gm = load i64, ptr %i.b, align 16, !alias.scope !32867, !noalias !32819, !noundef !41 ; 3 uses
  %i.gn = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !32867, !noalias !32819, !noundef !41 ; 2 uses
  %i.go = icmp eq i64 %i.gn, %i.gm
  br i1 %i.go, label %.loopexit, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.ba
  %i.gp = sub nuw i64 %i.gn, %i.gm                ; 3 uses
  %i.gq = getelementptr inbounds nuw [192 x i8], ptr %.sroa.5.0..sroa_idx.i.i, i64 %i.gm ; 2 uses
  br label %bb.bb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.gr = icmp eq i64 %i.gt, %i.gp
  br i1 %i.gr, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph193, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i191 = phi i64 [ 0, %.lr.ph193 ], [ %i.gt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [192 x i8], ptr %i.gq, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i191
  %i.gt = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i191, 1 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.gu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i unwind label %bb.bc, !noalias !32820

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph196
  %i.gv = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i194, 1 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, %i.gp
  br i1 %i.gw, label %.body92.thread, label %.lr.ph196

bb.bc:                                            ; preds = %bb.bb
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = icmp eq i64 %i.gt, %i.gp
  br i1 %i.gy, label %.body92.thread, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i194 = phi i64 [ %i.gv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i ], [ %i.gt, %bb.bc ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [192 x i8], ptr %i.gq, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i194
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame9FrameItemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 16 dereferenceable(176) %i.ha)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i.i unwind label %bb.bd, !noalias !32820

bb.bd:                                            ; preds = %.lr.ph196
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32820
  unreachable

bb.be:                                            ; preds = %.body.i.i
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body2.i

.body2.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i.i.i.i.i.i.i, %bb.ax, %bb.be
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !32820
  unreachable

bb.bf:                                            ; preds = %._crit_edge
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueATNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBH_5frame9FrameItemEj2_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 dereferenceable(384) %i.j) #54
          to label %.body92.thread unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.loopexit:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBG_5frame9FrameItemEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.sink.split

bb.bh:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 1, ptr %i.hf, align 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 1, ptr %.sroa.416.0..sroa_idx, align 1
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  store i8 1, ptr %.sroa.517.0..sroa_idx, align 2
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i128 %i.cs, ptr %.sroa.619.0..sroa_idx, align 16
  %.sroa.720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i128 %i.cu, ptr %.sroa.720.0..sroa_idx, align 16
  store i64 5, ptr %i.k, align 16
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ck, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(176) %i.k)
          to label %bb.bi unwind label %.body92

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.sink.split

.loopexit.split-lp:                               ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body92.thread unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit97.sink.split: ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96
  %.sink = phi i64 [ %i.hm, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96 ], [ %i.cx, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.sink180 = phi i64 [ %i.hp, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i96 ], [ %i.da, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ]
  %.val76.sink = load ptr, ptr %i.u, align 16, !nonnull !41, !noundef !41
  %i.hg = sub nuw nsw i64 -32, %.sink
  %i.hh = getelementptr inbounds i8, ptr %.val76.sink, i64 %i.hg
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hh, i64 noundef %.sink180, i64 noundef range(i64 1, -9223372036854775807) 16) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator12SplitLocatorECs7tN9tvpkfrg_12typst_layout.exit97

end_hunk_1
