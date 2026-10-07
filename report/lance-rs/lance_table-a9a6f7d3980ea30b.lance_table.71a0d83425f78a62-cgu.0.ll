Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB2_10RowIdIndex3new:bb.a
  %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ] ; 5 uses
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wn, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tn, %bb.by ] ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1240
  %i.wq = getelementptr inbounds nuw [24 x i8], ptr %i.wp, i64 %i.tn ; 3 uses
  %i.wr = load i64, ptr %i.wq, align 8, !alias.scope !50375, !noalias !50376, !noundef !68
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !alias.scope !50377, !noalias !50378, !noundef !68
  %i.wu = call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.wt) ; 2 uses
  %i.wv = call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.wr) ; 2 uses
  %i.ww = icmp ult i64 %i.wu, %i.wv
  %i.wx = add nuw i64 %i.wu, 1
  %i.wy = icmp ugt i64 %i.wv, %i.wx
  %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.not = select i1 %i.ww, i1 %i.wy, i1 false ; 3 uses
  br i1 %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.not, label %.split.i.i.i.i.i.i.1, label %.split188.us.i.i.i.i.i.i

.split.i.i.i.i.i.i.1:                             ; preds = %bb.cc
  %i.wz = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xa = icmp eq i64 %.sroa.594.0.copyload.i.i.i.i.i.i, %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.1 = select i1 %i.wz, i1 %i.xa, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.1, label %.thread141.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.split.i.i.i.i.i.i.1
  %.not5.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.cb, label %.thread.i.i.i.i.i.i.i.i.i.i.i.1, !prof !50379

.thread.i.i.i.i.i.i.i.i.i.i.i.1:                  ; preds = %bb.cd
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.cf

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.1, %bb.ce
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.xc, %bb.ce ], [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.xd, %bb.ce ], [ 0, %.thread.i.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1232
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !50372, !noundef !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.xc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.split186.us.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.xd = add i64 %.sroa.4.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1504
  %i.xf = load i16, ptr %i.xe, align 8, !noalias !50372 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i16 %i.xf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1: ; preds = %bb.ce
  %i.xg = zext i16 %i.xf to i64
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.thread.i.i.i.i.i.i.i.i.i.i.i.1
  %.sroa.7.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.xg, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 0, %.thread.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.xd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.xc, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ] ; 4 uses
  %i.xh = add nsw i64 %.sroa.7.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -1 ; 4 uses
  %i.xi = icmp slt i64 %.sroa.7.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 12
  call void @llvm.assume(i1 %i.xi)
  %i.xj = icmp eq i64 %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 0
  br i1 %i.xj, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1512
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xh
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !50373, !nonnull !68, !noundef !68 ; 3 uses
  %i.xn = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -1 ; 4 uses
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1: ; preds = %bb.cg
  %i.xp = add i64 %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -2
  %xtraiter1869.1 = and i64 %i.xn, 7              ; 2 uses
  %lcmp.mod1870.1.not = icmp eq i64 %xtraiter1869.1, 0
  br i1 %lcmp.mod1870.1.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ], [ %i.xm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 = phi i64 [ %i.xx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ], [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ]
  %prol.iter1871.1 = phi i64 [ %prol.iter1871.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ]
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1, i64 1506
  %i.xr = load i16, ptr %i.xq, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.xs = zext nneg i16 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1, i64 1512
  %i.xu = icmp ult i16 %i.xr, 12
  call void @llvm.assume(i1 %i.xu)
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %i.xs
  %i.xw = load ptr, ptr %i.xv, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 3 uses
  %i.xx = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1, -1 ; 2 uses
  %prol.iter1871.next.1 = add i64 %prol.iter1871.1, 1 ; 2 uses
  %prol.iter1871.cmp.1.not = icmp eq i64 %prol.iter1871.next.1, %xtraiter1869.1
  br i1 %prol.iter1871.cmp.1.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1, !llvm.loop !50025

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1
  %.lcssa.unr.1 = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ], [ %i.xw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ]
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr.1 = phi ptr [ %i.xm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ], [ %i.xw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ]
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr.1 = phi i64 [ %i.xn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.1 ], [ %i.xx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.1 ]
  %i.xy = icmp ult i64 %i.xp, 7
  br i1 %i.xy, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.aac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.aad, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1 ]
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1506
  %i.ya = load i16, ptr %i.xz, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.yb = zext nneg i16 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1512
  %i.yd = icmp ult i16 %i.ya, 12
  call void @llvm.assume(i1 %i.yd)
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yb
  %i.yf = load ptr, ptr %i.ye, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1506
  %i.yh = load i16, ptr %i.yg, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.yi = zext nneg i16 %i.yh to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 1512
  %i.yk = icmp ult i16 %i.yh, 12
  call void @llvm.assume(i1 %i.yk)
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yi
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 1506
  %i.yo = load i16, ptr %i.yn, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.yp = zext nneg i16 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 1512
  %i.yr = icmp ult i16 %i.yo, 12
  call void @llvm.assume(i1 %i.yr)
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.yp
  %i.yt = load ptr, ptr %i.ys, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 1506
  %i.yv = load i16, ptr %i.yu, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.yw = zext nneg i16 %i.yv to i64
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yt, i64 1512
  %i.yy = icmp ult i16 %i.yv, 12
  call void @llvm.assume(i1 %i.yy)
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %i.yw
  %i.za = load ptr, ptr %i.yz, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1506
  %i.zc = load i16, ptr %i.zb, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.zd = zext nneg i16 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 1512
  %i.zf = icmp ult i16 %i.zc, 12
  call void @llvm.assume(i1 %i.zf)
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zd
  %i.zh = load ptr, ptr %i.zg, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 1506
  %i.zj = load i16, ptr %i.zi, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.zk = zext nneg i16 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zh, i64 1512
  %i.zm = icmp ult i16 %i.zj, 12
  call void @llvm.assume(i1 %i.zm)
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %i.zk
  %i.zo = load ptr, ptr %i.zn, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 1506
  %i.zq = load i16, ptr %i.zp, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.zr = zext nneg i16 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 1512
  %i.zt = icmp ult i16 %i.zq, 12
  call void @llvm.assume(i1 %i.zt)
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.zr
  %i.zv = load ptr, ptr %i.zu, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 1506
  %i.zx = load i16, ptr %i.zw, align 2, !noalias !50374, !noundef !68 ; 2 uses
  %i.zy = zext nneg i16 %i.zx to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 1512
  %i.aaa = icmp ult i16 %i.zx, 12
  call void @llvm.assume(i1 %i.aaa)
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.zy
  %i.aac = load ptr, ptr %i.aab, align 8, !noalias !50374, !nonnull !68, !noundef !68 ; 2 uses
  %i.aad = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, -8 ; 2 uses
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.cg
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.xm, %bb.cg ], [ %.lcssa.unr.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit.1 ], [ %i.aac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1506
  %i.aag = load i16, ptr %i.aaf, align 2, !noalias !50374, !noundef !68
  %i.aah = zext i16 %i.aag to i64
  br label %bb.ch

bb.ch:                                            ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.cf
  %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %.sroa.03.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.cf ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.aah, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.xh, %bb.cf ]
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 1240
  %i.aaj = getelementptr inbounds nuw [24 x i8], ptr %i.aai, i64 %i.xh ; 3 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !50375, !noalias !50376, !noundef !68
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aam = load i64, ptr %i.aal, align 8, !alias.scope !50377, !noalias !50378, !noundef !68
  %i.aan = call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.aam) ; 2 uses
  %i.aao = call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.aak) ; 2 uses
  %i.aap = icmp uge i64 %i.aan, %i.aao
  %i.aaq = add nuw i64 %i.aan, 1
  %i.aar = icmp ule i64 %i.aao, %i.aaq
  %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.aap, i1 true, i1 %i.aar
  br label %.split188.us.i.i.i.i.i.i

.split188.us.i.i.i.i.i.i:                         ; preds = %bb.cc, %bb.ch, %bb.br, %bb.bv
  %.us-phi.i.i.i.i.i.i = phi ptr [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.1, %bb.bv ], [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.br ], [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc ], [ %.sroa.03.0.lcssa.i.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.ch ] ; 3 uses
  %.us-phi189.i.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.1, %bb.bv ], [ %.sink.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.br ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.ch ] ; 3 uses
  %.us-phi190.i.i.i.i.i.i = phi ptr [ %i.sw, %bb.bv ], [ %i.pe, %bb.br ], [ %i.wq, %bb.cc ], [ %i.aaj, %bb.ch ]
  %.us-phi191.i.i.i.i.i.i = phi i64 [ 0, %bb.bv ], [ 1, %bb.br ], [ 1, %bb.cc ], [ 0, %bb.ch ]
  %.us-phi192.i.i.i.i.i.i = phi i1 [ %storemerge.i.i.i.i.not.not4.i.i.i.i.us.i.i.i.i.i.i.1, %bb.bv ], [ true, %bb.br ], [ true, %bb.cc ], [ %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.1, %bb.ch ]
  %.us-phi193.i.i.i.i.i.i = phi i1 [ %storemerge.i.i.i.i.not.not4.i.i.i.i.us.i.i.i.i.i.i.not, %bb.br ], [ %storemerge.i.i.i.i.not.not4.i.i.i.i.us.i.i.i.i.i.i.not, %bb.bv ], [ %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.not, %bb.ch ], [ %storemerge.i.i.i.i.not.not4.i.i.i.i.i.i.i.i.i.i.not, %bb.cc ]
  %.us-phi194.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.1, %bb.bv ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.br ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %bb.ch ] ; 2 uses
  %.us-phi195.i.i.i.i.i.i = phi i64 [ %i.pu, %bb.bv ], [ %i.mc, %bb.br ], [ %i.tn, %bb.cc ], [ %i.xh, %bb.ch ]
  %i.aas = getelementptr inbounds nuw [112 x i8], ptr %.us-phi194.i.i.i.i.i.i, i64 %.us-phi195.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi194.i.i.i.i.i.i) ]
  %not..i.i.i.i.i.i = xor i1 %.us-phi193.i.i.i.i.i.i, true
  %i.aat = select i1 %not..i.i.i.i.i.i, i1 true, i1 %.us-phi192.i.i.i.i.i.i
  br i1 %i.aat, label %bb.ci, label %.thread141.i.i.i.i.i.i

bb.ci:                                            ; preds = %.split188.us.i.i.i.i.i.i
  %i.aau = icmp eq i64 %.us-phi191.i.i.i.i.i.i, 0
  br i1 %i.aau, label %.loopexit160.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i53.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aav = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, %.us-phi.i.i.i.i.i.i
  %i.aaw = icmp eq i64 %.sroa.594.0.copyload.i.i.i.i.i.i, %.us-phi189.i.i.i.i.i.i
  %or.cond.i.i.i51.i.i.i.i.i.i = select i1 %i.aav, i1 %i.aaw, i1 false
  br i1 %or.cond.i.i.i51.i.i.i.i.i.i, label %.loopexit160.i.i.i.i.i.i, label %.thread.i.i.i.i.i53.i.i.i.i.i.i

.thread.i.i.i.i.i53.i.i.i.i.i.i:                  ; preds = %bb.ck, %bb.cj
  %.not20.i.i.i.i.i.i.i.i54.i.i.i.i.i.i = icmp eq i64 %.us-phi189.i.i.i.i.i.i, 0
  br i1 %.not20.i.i.i.i.i.i.i.i54.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i70.i.i.i.i.i.i, label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i70.i.i.i.i.i.i:             ; preds = %.thread.i.i.i.i.i53.i.i.i.i.i.i, %bb.cl
  %.sroa.0.022.i.i.i.i.i.i.i.i71.i.i.i.i.i.i = phi ptr [ %i.aay, %bb.cl ], [ %.us-phi.i.i.i.i.i.i, %.thread.i.i.i.i.i53.i.i.i.i.i.i ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i71.i.i.i.i.i.i, i64 1232
  %i.aay = load ptr, ptr %i.aax, align 8, !noalias !50381, !noundef !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i = icmp eq ptr %i.aay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i70.i.i.i.i.i.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i71.i.i.i.i.i.i, i64 1504
  %i.aba = load i16, ptr %i.aaz, align 8, !noalias !50381 ; 2 uses
  %.not.i.i.i.i.i.i.i.i74.i.i.i.i.i.i = icmp eq i16 %i.aba, 0
  br i1 %.not.i.i.i.i.i.i.i.i74.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i70.i.i.i.i.i.i, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i70.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #80
          to label %.noexc.i.i.i.i.i.i76.i.i.i.i.i.i unwind label %bb.co, !noalias !50382

.noexc.i.i.i.i.i.i76.i.i.i.i.i.i:                 ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.abb = zext nneg i16 %i.aba to i64
  br label %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.abc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i53.i.i.i.i.i.i, %bb.cn
  %.in.i.i.i.i.i.i = phi i64 [ %i.abb, %bb.cn ], [ %.us-phi189.i.i.i.i.i.i, %.thread.i.i.i.i.i53.i.i.i.i.i.i ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i57153.i.i.i.i.i.i = phi ptr [ %i.aay, %bb.cn ], [ %.us-phi.i.i.i.i.i.i, %.thread.i.i.i.i.i53.i.i.i.i.i.i ] ; 3 uses
  %i.abd = add nsw i64 %.in.i.i.i.i.i.i, -1       ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i57153.i.i.i.i.i.i, i64 1240
  %i.abf = getelementptr inbounds nuw [24 x i8], ptr %i.abe, i64 %i.abd ; 3 uses
  %i.abg = load i64, ptr %i.abf, align 8, !alias.scope !50383, !noalias !50384, !noundef !68
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abi = load i64, ptr %i.abh, align 8, !alias.scope !50385, !noalias !50386, !noundef !68
  %i.abj = call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.abi) ; 2 uses
  %i.abk = call i64 @llvm.umax.i64(i64 %i.lt, i64 %i.abg) ; 2 uses
  %i.abl = icmp ult i64 %i.abj, %i.abk
  %i.abm = add nuw i64 %i.abj, 1
  %i.abn = icmp ugt i64 %i.abk, %i.abm
  %storemerge.i.i.i.i.not.not4.i.i.i.i65.le.not.i.i.i.i.i.i = select i1 %i.abl, i1 %i.abn, i1 false
  %i.abo = getelementptr inbounds nuw [112 x i8], ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i57153.i.i.i.i.i.i, i64 %i.abd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i.i57153.i.i.i.i.i.i) ]
  %.sroa.0.0.i.mux.i.i.i.i67.i.i.i.i.i.i = select i1 %storemerge.i.i.i.i.not.not4.i.i.i.i65.le.not.i.i.i.i.i.i, ptr null, ptr %i.abf
  br label %.loopexit160.i.i.i.i.i.i

.loopexit160.i.i.i.i.i.i:                         ; preds = %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i, %bb.ck, %bb.ci
  %.sroa.4.0.i68.i.i.i.i.i.i = phi ptr [ undef, %bb.ci ], [ %i.abo, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i ], [ undef, %bb.ck ]
  %.sroa.0.0.i69.i.i.i.i.i.i = phi ptr [ null, %bb.ci ], [ %.sroa.0.0.i.mux.i.i.i.i67.i.i.i.i.i.i, %_RNvMsn_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2P_ENtB1k_14LeafOrInternalE14last_leaf_edgeB2V_.exit.i.i.i.i.i.i.i.i61.i.i.i.i.i.i ], [ null, %bb.ck ] ; 2 uses
  %.not32.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i69.i.i.i.i.i.i, null ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not32.i.i.i.i.i.i, ptr %.us-phi190.i.i.i.i.i.i, ptr %.sroa.0.0.i69.i.i.i.i.i.i ; 2 uses
  %spec.select36.i.i.i.i.i.i = select i1 %.not32.i.i.i.i.i.i, ptr %i.aas, ptr %.sroa.4.0.i68.i.i.i.i.i.i ; 2 uses
  %i.abp = load <2 x i64>, ptr %spec.select.i.i.i.i.i.i, align 8, !alias.scope !50387, !noalias !50388
  %i.abq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 16
  %i.abr = load i8, ptr %i.abq, align 8, !range !77, !alias.scope !50387, !noalias !50388, !noundef !68
  invoke fastcc void @_RNvXs8_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64SegmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(112) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %spec.select36.i.i.i.i.i.i)
          to label %.noexc79.i.i.i.i.i.i unwind label %bb.cq, !noalias !50368

.noexc79.i.i.i.i.i.i:                             ; preds = %.loopexit160.i.i.i.i.i.i
  %i.abs = getelementptr inbounds nuw i8, ptr %spec.select36.i.i.i.i.i.i, i64 56
  invoke fastcc void @_RNvXs8_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64SegmentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.lc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.abs)
          to label %_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit.i.i.i.i.i.i unwind label %bb.cp, !noalias !50368

bb.cp:                                            ; preds = %.noexc79.i.i.i.i.i.i
  %i.abt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEBH_(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.x) #81, !noalias !50389
  br label %.thread.i.i.i.i.i.i

bb.cq:                                            ; preds = %.loopexit160.i.i.i.i.i.i
  %i.abu = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i

_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit.i.i.i.i.i.i: ; preds = %.noexc79.i.i.i.i.i.i
  store <2 x i64> %i.abp, ptr %i.q, align 16, !noalias !50368
  store i8 %i.abr, ptr %.sroa.5114.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !50368
  invoke fastcc void @_RNvMs6_NtCseeNzlfJOvtk_8rangemap13inclusive_mapINtB5_17RangeInclusiveMapyTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1a_EE33adjust_touching_ranges_for_insertB1g_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.x, ptr noalias noundef align 8 dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ky)
          to label %_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit..thread141_crit_edge.i.i.i.i.i.i unwind label %.loopexit37.i.i.i, !noalias !50390

_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit..thread141_crit_edge.i.i.i.i.i.i: ; preds = %_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i, align 8, !alias.scope !50391, !noalias !50368
  br label %.thread141.i.i.i.i.i.i

.thread141.i.i.i.i.i.i:                           ; preds = %.split.i.i.i.i.i.i, %.split.i.i.i.i.i.i.1, %.split.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.1, %_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit..thread141_crit_edge.i.i.i.i.i.i, %.split188.us.i.i.i.i.i.i
  %i.abv = phi i64 [ %.pre.i.i.i.i.i.i, %_RNvYTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB3_ENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_.exit..thread141_crit_edge.i.i.i.i.i.i ], [ %i.lu, %.split.us.i.i.i.i.i.i ], [ %i.lu, %.split188.us.i.i.i.i.i.i ], [ %i.lu, %.split.us.i.i.i.i.i.i.1 ], [ %i.lu, %.split.i.i.i.i.i.i.1 ], [ %i.lu, %.split.i.i.i.i.i.i ] ; 2 uses
  %i.abw = add nuw i64 %i.abv, 1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.dv, %.thread141.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !50368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !50368
  store i64 0, ptr %i.v, align 8, !noalias !50368
  store ptr %i.aa, ptr %i.ld, align 8, !noalias !50368
  store i64 2, ptr %i.le, align 8, !noalias !50368
  %.val38.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !50370, !noalias !50371, !noundef !68
  %.val39.i.i.i.i.i.i = load i64, ptr %i.lb, align 8, !alias.scope !50370, !noalias !50371
  invoke fastcc void @_RINvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2k_EE5rangeB18_TINtNtNtCscI6d9CVNmLh_4core3ops5range5BoundRB18_EB3z_EEB2q_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.w, ptr %.val38.i.i.i.i.i.i, i64 %.val39.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.v)
          to label %bb.cs unwind label %.thread137.loopexit.i.i.i.i.i.i, !noalias !50368

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !50368
  call void @llvm.experimental.noalias.scope.decl(metadata !50392)
  %i.abx = load ptr, ptr %i.w, align 8, !alias.scope !50392, !noalias !50368, !noundef !68 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.abx, null
  %i.aby = load ptr, ptr %i.lf, align 8, !alias.scope !50392, !noalias !50368, !noundef !68 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abz = icmp eq ptr %i.abx, %i.aby
  %i.aca = load i64, ptr %i.lg, align 8, !alias.scope !50392, !noalias !50368 ; 3 uses
  %i.acb = load i64, ptr %i.lh, align 8, !alias.scope !50392, !noalias !50368
  %i.acc = icmp eq i64 %i.aca, %i.acb
  %or.cond.i.i.i.i.i.i.i = select i1 %i.abz, i1 %i.acc, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.thread155.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.acd = icmp eq ptr %i.aby, null
  br i1 %i.acd, label %.thread155.i.i.i.i.i.i, label %bb.cy

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ct
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abx, i64 1506
  %i.acf = load i16, ptr %i.ace, align 2, !noalias !50393, !noundef !68
  %i.acg = zext i16 %i.acf to i64
  %i.ach = icmp ult i64 %i.aca, %i.acg
  br i1 %i.ach, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.cv
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acj, %bb.cv ], [ %i.abx, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 1232
  %i.acj = load ptr, ptr %i.aci, align 8, !noalias !50394, !noundef !68 ; 4 uses
  %.not.i.i.i.i.i80.i.i.i.i.i.i = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i.i.i80.i.i.i.i.i.i, label %bb.cw, label %bb.cv

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.cv
  %i.ack = zext i16 %i.acm to i64
  br label %.loopexit.i.i.i.i.i.i

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 1504
  %i.acm = load i16, ptr %i.acl, align 8, !noalias !50394 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 1506
  %i.aco = load i16, ptr %i.acn, align 2, !noalias !50393, !noundef !68
  %i.acp = icmp ult i16 %i.acm, %i.aco
  br i1 %i.acp, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #80
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cx, !noalias !50395

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ack, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.aca, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acj, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.abx, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.acq = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.acq)
  %i.acr = getelementptr inbounds nuw [112 x i8], ptr %.sroa.02.0.ph.i.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i ; 21 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.02.0.ph.i.i.i.i.i.i.i.i.i, i64 1240
  %i.act = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.acu = load i64, ptr %i.act, align 8, !alias.scope !50396, !noalias !50397, !noundef !68 ; 3 uses
  %i.acv = icmp ugt i64 %i.acu, %i.abv
  br i1 %i.acv, label %bb.cz, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

bb.cy:                                            ; preds = %bb.cu
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #80
          to label %.noexc82.i.i.i.i.i.i unwind label %.thread137.loopexit.split-lp.i.i.i.i.i.i, !noalias !50368

.noexc82.i.i.i.i.i.i:                             ; preds = %bb.cy
  unreachable

.thread155.i.i.i.i.i.i:                           ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentBx_ENtNtB7_3cmp9PartialEq2neBD_.exit.i.i.i.i.i.i, %bb.da, %bb.cz, %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !50368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !50368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !50368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !50368
  invoke fastcc void @_RNvMsi_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2j_EE6insertB2p_(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(112) %i.ky)
          to label %.noexc.i.i.i unwind label %bb.dz, !noalias !50390

.noexc.i.i.i:                                     ; preds = %.thread155.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !50368
  %i.acx = load i64, ptr %i.s, align 8, !range !147, !alias.scope !50398, !noalias !50368, !noundef !68
  %i.acy = icmp eq i64 %i.acx, -1
  br i1 %i.acy, label %bb.ea, label %bb.dw

bb.cz:                                            ; preds = %.loopexit.i.i.i.i.i.i
  %i.acz = icmp ugt i64 %i.acu, %i.abw
  br i1 %i.acz, label %.thread155.i.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ada = call fastcc noundef zeroext i1 @_RNvXs6_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64SegmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.acr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ky), !noalias !50362
  br i1 %i.ada, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentBx_ENtNtB7_3cmp9PartialEq2neBD_.exit.i.i.i.i.i.i, label %.thread155.i.i.i.i.i.i

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentBx_ENtNtB7_3cmp9PartialEq2neBD_.exit.i.i.i.i.i.i: ; preds = %bb.da
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acr, i64 56
  %i.adc = call fastcc noundef zeroext i1 @_RNvXs6_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64SegmentNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.adb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.li), !noalias !50399
  br i1 %i.adc, label %bb.db, label %.thread155.i.i.i.i.i.i

bb.db:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentBx_ENtNtB7_3cmp9PartialEq2neBD_.exit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.ade = load i64, ptr %i.add, align 8, !alias.scope !50400, !noalias !50401, !noundef !68
  %i.adf = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.adg = load i8, ptr %i.adf, align 8, !range !77, !alias.scope !50402, !noalias !50401, !noundef !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !50368
  call void @llvm.experimental.noalias.scope.decl(metadata !50403)
  call void @llvm.experimental.noalias.scope.decl(metadata !50404)
  %i.adh = load i64, ptr %i.acr, align 8, !range !148, !alias.scope !50404, !noalias !50405, !noundef !68 ; 3 uses
  %i.adi = icmp ne i64 %i.adh, 4
  call void @llvm.assume(i1 %i.adi), !noalias !50406
  %i.adj = add nsw i64 %i.adh, -3
  %i.adk = icmp samesign ugt i64 %i.adh, 2
  %i.adl = select i1 %i.adk, i64 %i.adj, i64 1
  switch i64 %i.adl, label %bb.dc [
    i64 0, label %bb.dd
    i64 1, label %bb.de
    i64 2, label %bb.df
    i64 3, label %bb.dj
    i64 4, label %bb.dk
  ]

bb.dc:                                            ; preds = %bb.db
  unreachable

bb.dd:                                            ; preds = %bb.db
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.adn = load <2 x i64>, ptr %i.adm, align 8, !alias.scope !50404, !noalias !50405
  store <2 x i64> %i.adn, ptr %i.lk, align 8, !alias.scope !50403, !noalias !50407
  store i64 3, ptr %i.u, align 8, !alias.scope !50403, !noalias !50407
  br label %.noexc84.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.db
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acr, i64 40
  %i.adp = load <2 x i64>, ptr %i.ado, align 8, !alias.scope !50404, !noalias !50405
  invoke fastcc void @_RNvXs4_NtNtCs9KQ7US1M400_11lance_table6rowids13encoded_arrayNtB5_15EncodedU64ArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(112) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.acr)
          to label %.noexc23.i.i.i unwind label %.loopexit.i.i.i, !noalias !50362

end_hunk_0
