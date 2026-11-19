Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter13finish_region:bb.a
  %i.dy = add i64 %i.dv, %i.dx
  store i64 %i.dy, ptr %i.dw, align 8, !alias.scope !27903
  %i.dz = icmp ult i64 %i.dc, %i.dt
  br i1 %i.dz, label %.lr.ph.i384, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

.lr.ph.i384:                                      ; preds = %._crit_edge638
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 209
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i
  %i.eb = add nuw nsw i64 %.sroa.010.021.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eb, %i.dt
  br i1 %exitcond.not.i, label %._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i384
  %.sroa.010.021.i = phi i64 [ %i.dc, %.lr.ph.i384 ], [ %i.eb, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i64 24, i1 false), !noalias !27906
  store i64 0, ptr %i.ea, align 8, !alias.scope !27907
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27907
  store i8 1, ptr %.sroa.62.0..sroa_idx.i, align 1, !alias.scope !27907
  %i.ec = call fastcc { ptr, i64 } @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter19layout_row_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %.sroa.010.021.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, i64 noundef range(i64 0, 192153584101141163) %i.dl), !noalias !27908, !inline_history !27757 ; 2 uses
  %i.ed = extractvalue { ptr, i64 } %i.ec, 0      ; 2 uses
  %.not.i.i385 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i385, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i: ; preds = %bb.t
  %i.ee = extractvalue { ptr, i64 } %i.ec, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit414

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i: ; preds = %bb.t
  %.sroa.08.0.copyload.i = load i64, ptr %i.ea, align 8, !alias.scope !27903, !noalias !27909
  %.sroa.49.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !27903, !noalias !27909
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !27903, !noalias !27909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !27906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ef = icmp eq i64 %.sroa.08.0.copyload.i, 2
  br i1 %i.ef, label %.loopexit414, label %bb.s

._RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit_crit_edge.loopexit: ; preds = %bb.s
  %.pre.pre = load i64, ptr %i.bk, align 8
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit

.loopexit414:                                     ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i
  %.sroa.6.016.i = phi ptr [ %i.ed, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.49.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ] ; 2 uses
  %.sroa.8.015.i = phi i64 [ %i.ee, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.thread.i ], [ %.sroa.510.0.copyload.i, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter21layout_row_with_state.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.016.i) ]
  br label %bb.bm

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit, %bb.w
  %.sroa.020.0304 = phi ptr [ %i.eg, %bb.w ], [ %i.cw, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 4 uses
  %.sroa.0109.0303 = phi double [ %.sroa.0109.1, %bb.w ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 2 uses
  %.sroa.0103.0302 = phi double [ %.sroa.0103.1, %bb.w ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 64 ; 2 uses
  %i.eh = load i64, ptr %.sroa.020.0304, align 8, !range !52, !noundef !41
  %i.ei = icmp eq i64 %i.eh, 2
  br i1 %i.ei, label %bb.u, label %bb.v

._crit_edge:                                      ; preds = %bb.w, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit
  %i.ej = phi i1 [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ true, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ false, %bb.w ]
  %i.ek = phi ptr [ %i.cx, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ %i.cu, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %i.cx, %bb.w ] ; 2 uses
  %i.el = phi ptr [ %i.cw, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ %i.cu, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %i.cw, %bb.w ] ; 3 uses
  %.sroa.014.1369 = phi i1 [ %.sroa.014.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %.sroa.014.1, %bb.w ]
  %.sroa.4.1368 = phi i64 [ %.sroa.4.1, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ undef, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %.sroa.4.1, %bb.w ] ; 2 uses
  %.sroa.0103.0.lcssa = phi double [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %.sroa.0103.1, %bb.w ] ; 2 uses
  %.sroa.0109.0.lcssa = phi double [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit ], [ 0.000000e+00, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_12GridLayouter13finish_regions_0EBW_.exit.thread ], [ %.sroa.0109.1, %bb.w ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.en = load double, ptr %i.em, align 8, !noundef !41 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ep = load double, ptr %i.eo, align 8, !noundef !41 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.er = load double, ptr %i.eq, align 8, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.en, ptr %i.l, align 8
  store double %i.ep, ptr %i.k, align 8
  %i.es = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
  %i.et = icmp slt i8 %i.es, 0
  %..i.i = select i1 %i.et, double %i.ep, double %i.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store double %.sroa.0109.0.lcssa, ptr %i.j, align 8
  store double %i.er, ptr %i.i, align 8
  %i.eu = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
  %i.ev = icmp sgt i8 %i.eu, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ew = fcmp ule double %.sroa.0103.0.lcssa, 0.000000e+00
  %i.ex = call double @llvm.fabs.f64(double %i.er)
  %i.ey = fcmp ueq double %i.ex, +inf
  %or.cond268 = or i1 %i.ew, %i.ey
  %i.ez = and i1 %or.cond268, %i.ev
  %.sroa.2.0 = select i1 %i.ez, double %.sroa.0109.0.lcssa, double %i.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.u, double noundef %..i.i, double noundef %.sroa.2.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @421)
  store i64 0, ptr %i.n, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !noundef !41 ; 6 uses
  %i.fe = icmp ult i64 %i.fd, 192153584101141163
  call void @llvm.assume(i1 %i.fe)
  %i.ff = load i64, ptr %i.bi, align 8, !range !45, !noundef !41
  store i64 0, ptr %i.bi, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8
  store i64 0, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.el, ptr %i.t, align 8
  %.sroa.027.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.el, ptr %.sroa.027.sroa.2.0..sroa_idx, align 8
  %.sroa.027.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ff, ptr %.sroa.027.sroa.3.0..sroa_idx, align 8
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.ek, ptr %.sroa.027.sroa.4.0..sroa_idx, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.228.0..sroa_idx, align 8
  br i1 %i.ej, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph: ; preds = %._crit_edge
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fh = fneg double %.sroa.0109.0.lcssa
  %i.fi = fcmp uno double %.sroa.0109.0.lcssa, 0.000000e+00
  %spec.store.select4 = select i1 %i.fi, double 0.000000e+00, double %i.fh
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.fm = add nuw nsw i64 %i.fd, 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.014.1369.not = xor i1 %.sroa.014.1369, true
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i

bb.u:                                             ; preds = %.lr.ph
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !noundef !41
  %i.fp = fadd double %.sroa.0103.0302, %i.fo     ; 2 uses
  %.inv163 = fcmp ord double %i.fp, 0.000000e+00
  %spec.store.select = select i1 %.inv163, double %i.fp, double 0.000000e+00
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.020.0304, i64 32
  %i.fr = load double, ptr %i.fq, align 8, !noundef !41
  %i.fs = fadd double %.sroa.0109.0303, %i.fr     ; 2 uses
  %.inv = fcmp ord double %i.fs, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.fs, double 0.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.0103.1 = phi double [ %spec.store.select, %bb.u ], [ %.sroa.0103.0302, %bb.v ] ; 2 uses
  %.sroa.0109.1 = phi double [ %.sroa.0109.0303, %bb.u ], [ %spec.store.select1, %bb.v ] ; 2 uses
  %i.ft = icmp eq ptr %i.eg, %i.cx
  br i1 %i.ft, label %._crit_edge, label %.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph, %bb.ca
  %i.fu = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.sn, %bb.ca ]
  %i.fv = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.fy, %bb.ca ] ; 4 uses
  %.sroa.624.0317 = phi double [ 0.000000e+00, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %spec.store.select7, %bb.ca ] ; 3 uses
  %.sroa.0129.0316 = phi double [ 0.000000e+00, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %.sroa.0129.1, %bb.ca ] ; 3 uses
  %i.fw = phi ptr [ %i.el, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.lr.ph ], [ %i.fx, %bb.ca ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27910)
  call void @llvm.experimental.noalias.scope.decl(metadata !27911)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64 ; 3 uses
  store ptr %i.fx, ptr %.sroa.027.sroa.2.0..sroa_idx, align 8, !alias.scope !27912
  %.sroa.0.0.copyload1.i = load i64, ptr %i.fw, align 8, !noalias !27913 ; 3 uses
  %.not.i200 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i200, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit210: ; preds = %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cs
  %.pn176 = phi { ptr, i32 } [ %lpad.loopexit.split-lp662, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp662, %bb.cs ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp275.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #53
          to label %.thread236 unwind label %bb.ct

bb.x:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.10.16.copyload = load double, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !27910 ; 2 uses
  %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %.sroa.12.16.copyload = load i64, ptr %.sroa.12.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !27910 ; 3 uses
  %.sroa.13.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !27910 ; 2 uses
  %.sroa.15.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %.sroa.15.16.copyload = load i64, ptr %.sroa.15.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !27910
  %.sroa.16.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %.sroa.16.16.copyload = load i8, ptr %.sroa.16.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !27910
  %i.fy = add i64 %i.fv, 1                        ; 3 uses
  store i64 %i.fy, ptr %.sroa.228.0..sroa_idx, align 8, !alias.scope !27910
  %i.fz = icmp eq i64 %.sroa.0.0.copyload1.i, 2
  br i1 %i.fz, label %bb.bn, label %bb.bo

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge: ; preds = %bb.ca, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i, %._crit_edge
  %.sroa.0129.0.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %.sroa.0129.1, %bb.ca ], [ %.sroa.0129.0316, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge, %bb.cj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread236

bb.z:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gc = load <2 x i64>, ptr %i.ga, align 8
  store <2 x i64> %i.gc, ptr %i.m, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store double %.sroa.0129.0.lcssa, ptr %i.gd, align 16
  call fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter22finish_region_internal(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %2, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  store i64 0, ptr %i.ge, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i8 0, i64 24, i1 false)
  %i.gf = load i64, ptr %i.fc, align 8, !noundef !41 ; 2 uses
  %i.gg = icmp ult i64 %i.gf, 192153584101141163
  call void @llvm.assume(i1 %i.gg)
  %i.gh = load ptr, ptr %i.bw, align 8, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 168
  %i.gj = load i8, ptr %i.gi, align 8, !range !48, !noundef !41
  %i.gk = icmp eq i8 %i.gj, 1
  br i1 %i.gk, label %bb.ab, label %bb.ac

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread: ; preds = %bb.bf, %._crit_edge.i.i.i, %bb.be, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit, %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bm

bb.ab:                                            ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 144
  %.val194 = load i64, ptr %i.gl, align 8, !noundef !41
  %i.gm = getelementptr i8, ptr %i.gh, i64 152
  %.val195 = load i64, ptr %i.gm, align 8, !noundef !41
  %i.gn = call fastcc { ptr, i64 } @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter14prepare_footer(ptr noalias nofree noundef align 8 dereferenceable(488) %0, i64 %.val194, i64 %.val195, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i64 noundef %i.gf) ; 2 uses
  %i.go = extractvalue { ptr, i64 } %i.gn, 0      ; 2 uses
  %.not166 = icmp eq ptr %i.go, null
  br i1 %.not166, label %bb.ac, label %bb.bl

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.gq = load double, ptr %i.gp, align 8, !noundef !41 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.gs = load double, ptr %i.gr, align 8, !noundef !41
  %i.gt = fneg double %i.gq
  %i.gu = fcmp uno double %i.gq, 0.000000e+00
  %spec.store.select2 = select i1 %i.gu, double 0.000000e+00, double %i.gt
  %i.gv = fadd double %i.gs, %spec.store.select2  ; 2 uses
  %.inv167 = fcmp ord double %i.gv, 0.000000e+00
  %spec.store.select3 = select i1 %.inv167, double %i.gv, double 0.000000e+00 ; 2 uses
  store double %spec.store.select3, ptr %i.gr, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 9 uses
  store double %spec.store.select3, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !41 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 1152921504606846976
  call void @llvm.assume(i1 %i.gz)
  %i.ha = icmp eq i64 %i.gy, 0
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.hc = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %or.cond189 = select i1 %i.ha, i1 %i.hd, i1 false
  br i1 %or.cond189, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !27914)
  %i.he = load i64, ptr %i.fc, align 8, !alias.scope !27914, !noundef !41 ; 5 uses
  %i.hf = icmp ult i64 %i.he, 192153584101141163
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !27914, !nonnull !41, !noundef !41 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gy
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !27914, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hk, i64 %i.hc
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val81.i = load double, ptr %i.hm, align 8, !alias.scope !27914
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge, %bb.ad
  %.sroa.8.0.i.i = phi ptr [ %i.hk, %bb.ad ], [ %.sroa.8.1.ph.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge ] ; 4 uses
  %.sroa.0.0.i.i386 = phi ptr [ %i.hh, %bb.ad ], [ %.sroa.0.2.ph.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge ] ; 4 uses
  %.sroa.016.0.i.i = phi double [ 0.000000e+00, %bb.ad ], [ %spec.store.select.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge ] ; 2 uses
  %.not.i.i.i.i387 = icmp eq ptr %.sroa.0.0.i.i386, null
  %i.hn = icmp eq ptr %.sroa.0.0.i.i386, %i.hi
  %or.cond167.i = select i1 %.not.i.i.i.i387, i1 true, i1 %i.hn
  br i1 %or.cond167.i, label %bb.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i386, i64 8
  %i.hp = load ptr, ptr %.sroa.0.0.i.i386, align 8, !noalias !27915, !nonnull !41, !align !46, !noundef !41
  br label %bb.ag

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i
  %i.hq = icmp eq ptr %.sroa.8.0.i.i, %i.hl
  br i1 %i.hq, label %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i, i64 32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.8.1.ph.i.i = phi ptr [ %.sroa.8.0.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.hr, %bb.af ]
  %.sroa.0.2.ph.i.i = phi ptr [ %i.ho, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ null, %bb.af ]
  %.sroa.0.0.i2.i.ph.i.i = phi ptr [ %i.hp, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEB1Q_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.8.0.i.i, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27916
  %.val22.i.i = load i64, ptr %.sroa.0.0.i2.i.ph.i.i, align 8, !noalias !27917, !noundef !41 ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.0.0.i2.i.ph.i.i, i64 8
  %.val23.i.i = load i64, ptr %i.hs, align 8, !noalias !27917, !noundef !41
  %i.ht = sub i64 %.val23.i.i, %.val22.i.i
  call fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB4_8layouter12GridLayouter30simulate_unbreakable_row_group(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, i64 noundef %.val22.i.i, i64 noundef 1, i64 %i.ht, double %.val81.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1, i64 noundef range(i64 0, 192153584101141163) %i.he), !noalias !27917, !inline_history !27779
  %i.hu = load i64, ptr %i.c, align 8, !range !70, !noalias !27916, !noundef !41 ; 3 uses
  %i.hv = icmp eq i64 %i.hu, -1
  %i.hw = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !27916 ; 5 uses
  br i1 %i.hv, label %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.i, label %bb.ah

_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.thread.i: ; preds = %bb.ae
  %i.hx = bitcast double %.sroa.016.0.i.i to i64
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %.sroa.615.0.copyload15.i.i = load double, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !27916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27916
  %i.hy = fadd double %.sroa.016.0.i.i, %.sroa.615.0.copyload15.i.i ; 2 uses
  %.inv.i.i = fcmp ord double %i.hy, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %i.hy, double 0.000000e+00
  %i.hz = icmp eq i64 %i.hu, 0
  br i1 %i.hz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ia = shl nuw i64 %i.hu, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hw) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.ia, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !27917, !inline_history !27780
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i.backedge: ; preds = %bb.ai, %bb.ah
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19UnbreakableRowGroupEBH_.exit.i.i

_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.i: ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !27916, !noundef !41 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27916
  %.not.i388 = icmp eq ptr %i.hw, null
  br i1 %.not.i388, label %bb.aj, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread404

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter21layout_active_headers.exit.thread404: ; preds = %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.i
  %i.id = insertvalue { ptr, i64 } poison, ptr %i.hw, 0
  %i.ie = insertvalue { ptr, i64 } %i.id, i64 %i.ic, 1
  br label %bb.bl

bb.aj:                                            ; preds = %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.i, %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.thread.i
  %.sroa.6.0139.i = phi i64 [ %i.hx, %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.thread.i ], [ %i.ic, %_RINvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB5_8layouter12GridLayouter22simulate_header_heightINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve6HeaderEEINtNtB1K_3map3MapIB2V_INtB3o_10RepeatableB3m_EENvYB4M_NtNtNtB1O_3ops5deref5Deref5derefEEEB7_.exit.i ]
  %i.if = bitcast i64 %.sroa.6.0139.i to double   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !27914, !noundef !41
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i394, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread141.thread.i

.lr.ph.i394:                                      ; preds = %bb.aj
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.im = load double, ptr %i.gr, align 8, !alias.scope !27914, !noundef !41
  %i.in = call noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs4fits(double noundef %i.im, double noundef %i.if), !inline_history !27780
  br i1 %i.in, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread141.thread.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i394
  %i.io = load i8, ptr %i.ij, align 8, !range !54, !alias.scope !27918, !noundef !41
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread.peel.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iq = load i64, ptr %0, align 8, !range !49, !alias.scope !27918, !noundef !41
  %.not.i.peel.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i.peel.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread141.thread.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.peel.i

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.peel.i: ; preds = %bb.al
  %i.ir = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gw), !inline_history !27780
  br i1 %i.ir, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread141.thread.i, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8repeatedNtNtB4_8layouter12GridLayouter25may_progress_with_repeats.exit.thread.peel.i

end_hunk_0
