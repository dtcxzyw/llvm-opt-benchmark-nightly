Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.wh = icmp slt i32 %i.wg, %i.r
  br i1 %i.wh, label %.preheader1584.lr.ph.i, label %.preheader1588.i

.preheader1584.lr.ph.i:                           ; preds = %.preheader1589.i
  br i1 %i.ik, label %.preheader1584.us.i, label %._crit_edge1669.split.i

.preheader1584.us.i:                              ; preds = %.preheader1584.lr.ph.i, %._crit_edge.us1660.i
  %.311241656.us.i = phi ptr [ %i.xp, %._crit_edge.us1660.i ], [ %.21123.lcssa.i, %.preheader1584.lr.ph.i ] ; 6 uses
  %.811721655.us.i = phi ptr [ %.lcssa578, %._crit_edge.us1660.i ], [ %.51169.lcssa.i, %.preheader1584.lr.ph.i ] ; 2 uses
  %.311781654.us.i = phi i32 [ %i.xq, %._crit_edge.us1660.i ], [ %.21177.lcssa.i, %.preheader1584.lr.ph.i ]
  br i1 %i.jl, label %.epil.preheader584, label %.preheader1584.us.i.new

.preheader1584.us.i.new:                          ; preds = %.preheader1584.us.i, %.preheader1584.us.i.new
  %indvars.iv2189.i = phi i64 [ %indvars.iv.next2190.i.3, %.preheader1584.us.i.new ], [ 0, %.preheader1584.us.i ] ; 5 uses
  %.911731653.us.i = phi ptr [ %i.xi, %.preheader1584.us.i.new ], [ %.811721655.us.i, %.preheader1584.us.i ] ; 9 uses
  %niter590 = phi i64 [ %niter590.next.3, %.preheader1584.us.i.new ], [ 0, %.preheader1584.us.i ]
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i ; 2 uses
  %i.wj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.wi, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wj, ptr %.911731653.us.i, align 64, !tbaa !45
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.ip
  %i.wl = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 64
  %i.wm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wk, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wm, ptr %i.wl, align 64, !tbaa !45
  %i.wn = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 128
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 4 ; 2 uses
  %i.wq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wp, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wq, ptr %i.wn, align 64, !tbaa !45
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.ip
  %i.ws = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 192
  %i.wt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wr, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wt, ptr %i.ws, align 64, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 256
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.wx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ww, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.wx, ptr %i.wu, align 64, !tbaa !45
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.ip
  %i.wz = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 320
  %i.xa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wy, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xa, ptr %i.wz, align 64, !tbaa !45
  %i.xb = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 384
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 12 ; 2 uses
  %i.xe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xd, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xe, ptr %i.xb, align 64, !tbaa !45
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.ip
  %i.xg = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 448
  %i.xh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xf, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xh, ptr %i.xg, align 64, !tbaa !45
  %i.xi = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 512 ; 3 uses
  %indvars.iv.next2190.i.3 = add nuw nsw i64 %indvars.iv2189.i, 4 ; 2 uses
  %niter590.next.3 = add i64 %niter590, 4         ; 2 uses
  %niter590.ncmp.3 = icmp eq i64 %niter590.next.3, %unroll_iter589
  br i1 %niter590.ncmp.3, label %._crit_edge.us1660.i.unr-lcssa, label %.preheader1584.us.i.new, !llvm.loop !82

._crit_edge.us1660.i.unr-lcssa:                   ; preds = %.preheader1584.us.i.new
  br i1 %lcmp.mod586.not, label %._crit_edge.us1660.i, label %.epil.preheader584

.epil.preheader584:                               ; preds = %._crit_edge.us1660.i.unr-lcssa, %.preheader1584.us.i
  %indvars.iv2189.i.epil.init = phi i64 [ 0, %.preheader1584.us.i ], [ %indvars.iv.next2190.i.3, %._crit_edge.us1660.i.unr-lcssa ]
  %.911731653.us.i.epil.init = phi ptr [ %.811721655.us.i, %.preheader1584.us.i ], [ %i.xi, %._crit_edge.us1660.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod588)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader584
  %indvars.iv2189.i.epil = phi i64 [ %indvars.iv2189.i.epil.init, %.epil.preheader584 ], [ %indvars.iv.next2190.i.epil, %bb.bc ] ; 2 uses
  %.911731653.us.i.epil = phi ptr [ %.911731653.us.i.epil.init, %.epil.preheader584 ], [ %i.xo, %bb.bc ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader584 ], [ %epil.iter.next, %bb.bc ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2189.i.epil ; 2 uses
  %i.xk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xj, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xk, ptr %.911731653.us.i.epil, align 64, !tbaa !45
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.ip
  %i.xm = getelementptr inbounds nuw i8, ptr %.911731653.us.i.epil, i64 64
  %i.xn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xl, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xn, ptr %i.xm, align 64, !tbaa !45
  %i.xo = getelementptr inbounds nuw i8, ptr %.911731653.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2190.i.epil = add nuw nsw i64 %indvars.iv2189.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter585
  br i1 %epil.iter.cmp.not, label %._crit_edge.us1660.i, label %bb.bc, !llvm.loop !83

._crit_edge.us1660.i:                             ; preds = %bb.bc, %._crit_edge.us1660.i.unr-lcssa
  %.lcssa578 = phi ptr [ %i.xi, %._crit_edge.us1660.i.unr-lcssa ], [ %i.xo, %bb.bc ] ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %i.iv ; 2 uses
  %i.xq = add nuw nsw i32 %.311781654.us.i, 2     ; 3 uses
  %i.xr = or disjoint i32 %i.xq, 1
  %i.xs = icmp slt i32 %i.xr, %i.r
  br i1 %i.xs, label %.preheader1584.us.i, label %.preheader1588.i, !llvm.loop !84

.preheader1588.i:                                 ; preds = %._crit_edge.us1660.i, %.preheader1589.i
  %.31178.lcssa.i = phi i32 [ %.21177.lcssa.i, %.preheader1589.i ], [ %i.xq, %._crit_edge.us1660.i ] ; 2 uses
  %.81172.lcssa.i = phi ptr [ %.51169.lcssa.i, %.preheader1589.i ], [ %.lcssa578, %._crit_edge.us1660.i ]
  %.31124.lcssa.i = phi ptr [ %.21123.lcssa.i, %.preheader1589.i ], [ %i.xp, %._crit_edge.us1660.i ] ; 9 uses
  %i.xt = icmp sge i32 %.31178.lcssa.i, %i.r
  %brmerge.i = or i1 %i.iw, %i.xt
  br i1 %brmerge.i, label %._crit_edge1669.split.i, label %.preheader1583.i

.preheader1583.i:                                 ; preds = %.preheader1588.i, %._crit_edge.i
  %.111668.i = phi ptr [ %.lcssa581, %._crit_edge.i ], [ %.81172.lcssa.i, %.preheader1588.i ] ; 2 uses
  %.411791667.i = phi i32 [ %i.xx, %._crit_edge.i ], [ %.31178.lcssa.i, %.preheader1588.i ]
  br i1 %i.jm, label %.epil.preheader591, label %.preheader1583.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1583.i.new
  br i1 %lcmp.mod594.not, label %._crit_edge.i, label %.epil.preheader591

.epil.preheader591:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1583.i
  %indvars.iv2194.i.epil.init = phi i64 [ 0, %.preheader1583.i ], [ %indvars.iv.next2195.i.7, %._crit_edge.i.unr-lcssa ]
  %.121666.i.epil.init = phi ptr [ %.111668.i, %.preheader1583.i ], [ %i.zc, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod596)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader591
  %indvars.iv2194.i.epil = phi i64 [ %indvars.iv2194.i.epil.init, %.epil.preheader591 ], [ %indvars.iv.next2195.i.epil, %bb.bd ] ; 2 uses
  %.121666.i.epil = phi ptr [ %.121666.i.epil.init, %.epil.preheader591 ], [ %i.xw, %bb.bd ] ; 2 uses
  %epil.iter593 = phi i64 [ 0, %.epil.preheader591 ], [ %epil.iter593.next, %bb.bd ]
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i.epil
  %i.xv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xu, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xv, ptr %.121666.i.epil, align 64, !tbaa !45
  %i.xw = getelementptr inbounds nuw i8, ptr %.121666.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2195.i.epil = add nuw nsw i64 %indvars.iv2194.i.epil, 1
  %epil.iter593.next = add i64 %epil.iter593, 1   ; 2 uses
  %epil.iter593.cmp.not = icmp eq i64 %epil.iter593.next, %xtraiter592
  br i1 %epil.iter593.cmp.not, label %._crit_edge.i, label %bb.bd, !llvm.loop !85

._crit_edge.i:                                    ; preds = %bb.bd, %._crit_edge.i.unr-lcssa
  %.lcssa581 = phi ptr [ %i.zc, %._crit_edge.i.unr-lcssa ], [ %i.xw, %bb.bd ]
  %i.xx = add nuw nsw i32 %.411791667.i, 1        ; 2 uses
  %exitcond2199.not.i = icmp eq i32 %i.xx, %i.r
  br i1 %exitcond2199.not.i, label %._crit_edge1669.split.i, label %.preheader1583.i, !llvm.loop !86

.preheader1583.i.new:                             ; preds = %.preheader1583.i, %.preheader1583.i.new
  %indvars.iv2194.i = phi i64 [ %indvars.iv.next2195.i.7, %.preheader1583.i.new ], [ 0, %.preheader1583.i ] ; 9 uses
  %.121666.i = phi ptr [ %i.zc, %.preheader1583.i.new ], [ %.111668.i, %.preheader1583.i ] ; 9 uses
  %niter598 = phi i64 [ %niter598.next.7, %.preheader1583.i.new ], [ 0, %.preheader1583.i ]
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.xz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xy, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xz, ptr %.121666.i, align 64, !tbaa !45
  %i.ya = getelementptr inbounds nuw i8, ptr %.121666.i, i64 64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.yd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yc, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yd, ptr %i.ya, align 64, !tbaa !45
  %i.ye = getelementptr inbounds nuw i8, ptr %.121666.i, i64 128
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yg, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yh, ptr %i.ye, align 64, !tbaa !45
  %i.yi = getelementptr inbounds nuw i8, ptr %.121666.i, i64 192
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 12
  %i.yl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yk, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yl, ptr %i.yi, align 64, !tbaa !45
  %i.ym = getelementptr inbounds nuw i8, ptr %.121666.i, i64 256
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yo, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yp, ptr %i.ym, align 64, !tbaa !45
  %i.yq = getelementptr inbounds nuw i8, ptr %.121666.i, i64 320
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 20
  %i.yt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ys, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yt, ptr %i.yq, align 64, !tbaa !45
  %i.yu = getelementptr inbounds nuw i8, ptr %.121666.i, i64 384
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.yx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yw, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yx, ptr %i.yu, align 64, !tbaa !45
  %i.yy = getelementptr inbounds nuw i8, ptr %.121666.i, i64 448
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2194.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 28
  %i.zb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.za, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.zb, ptr %i.yy, align 64, !tbaa !45
  %i.zc = getelementptr inbounds nuw i8, ptr %.121666.i, i64 512 ; 3 uses
  %indvars.iv.next2195.i.7 = add nuw nsw i64 %indvars.iv2194.i, 8 ; 2 uses
  %niter598.next.7 = add i64 %niter598, 8         ; 2 uses
  %niter598.ncmp.7 = icmp eq i64 %niter598.next.7, %unroll_iter597
  br i1 %niter598.ncmp.7, label %._crit_edge.i.unr-lcssa, label %.preheader1583.i.new, !llvm.loop !87

._crit_edge1669.split.i:                          ; preds = %._crit_edge.i, %.preheader1588.i, %.preheader1584.lr.ph.i, %.preheader1585.lr.ph.i
  %indvars.iv.next2201.i = add nuw nsw i64 %indvars.iv2200.i, 16 ; 3 uses
  %i.zd = or disjoint i64 %indvars.iv.next2201.i, 15
  %i.ze = icmp samesign ult i64 %i.zd, %i.jg
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.jc
  br i1 %i.ze, label %_ZN4ncnn3MatD2Ev.exit1328.i, label %.preheader1582.loopexit.i, !llvm.loop !88

.preheader1573.loopexit.i:                        ; preds = %._crit_edge1765.split.i
  %i.zf = trunc nuw nsw i64 %indvars.iv.next2262.i to i32
  br label %.preheader1573.i

.preheader1573.i:                                 ; preds = %.preheader1573.loopexit.i, %.preheader1582.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1582.i ], [ %i.zf, %.preheader1573.loopexit.i ] ; 4 uses
  %i.zg = or disjoint i32 %.1.lcssa.i, 3          ; 2 uses
  %i.zh = icmp slt i32 %i.zg, %i.m
  br i1 %i.zh, label %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i, label %.preheader1564.i

_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i:                ; preds = %.preheader1573.i
  %i.zi = insertelement <4 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.zj = shufflevector <4 x i32> %i.zi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zk = or disjoint <4 x i32> %i.zj, <i32 0, i32 0, i32 0, i32 3>
  %2 = mul i32 %i.r, %i.j                         ; 6 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.zn = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.zo = shufflevector <4 x i32> %i.zn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zp = mul <4 x i32> %i.zo, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.zq = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.zr = shufflevector <8 x i32> %i.zq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zs = mul <8 x i32> %i.zr, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.zt = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.zu = shufflevector <16 x i32> %i.zt, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.zv = mul <16 x i32> %i.zu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.zw = icmp sgt i32 %i.r, 15
  %i.zx = icmp sgt i32 %i.j, 0                    ; 4 uses
  %i.zy = shl i32 %i.j, 4
  %i.zz = sext i32 %i.zy to i64                   ; 5 uses
  %i.aaa = shl i32 %i.j, 3
  %i.aab = sext i32 %i.aaa to i64                 ; 5 uses
  %i.aac = shl i32 %i.j, 2
  %i.aad = sext i32 %i.aac to i64                 ; 4 uses
  %i.aae = shufflevector <2 x i32> %i.p, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aaf = mul <4 x i32> %i.aae, %i.zp            ; 19 uses
  %i.aag = sext i32 %i.j to i64                   ; 5 uses
  %i.aah = shl i32 %i.j, 1
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = icmp slt i32 %i.j, 1
  %i.aak = add i32 %i.r, -16                      ; 2 uses
  %i.aal = lshr i32 %i.aak, 2
  %i.aam = and i32 %i.aal, 1073741820
  %narrow2431.i = add nuw nsw i32 %i.aam, 4
  %i.aan = zext nneg i32 %narrow2431.i to i64
  %i.aao = mul nsw i64 %i.aan, %i.zz
  %i.aap = shl i32 %2, 2
  %i.aaq = add nuw <4 x i32> %i.zk, <i32 0, i32 1, i32 2, i32 0>
  %i.aar = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.aas = shufflevector <4 x i32> %i.aar, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aat = mul <4 x i32> %i.aas, %i.aaq
  %i.aau = and i32 %i.aak, -16
  %i.aav = add nuw i32 %i.aau, 16                 ; 4 uses
  %i.aaw = add i32 %i.r, -8
  %i.aax = zext nneg i32 %.1.lcssa.i to i64
  %i.aay = sext i32 %i.m to i64
  %i.aaz = or disjoint i32 %i.aav, 7
  %i.aba = icmp slt i32 %i.aaz, %i.r
  %wide.trip.count2282.i = zext i32 %i.j to i64   ; 8 uses
  %i.abb = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abd = add nsw i64 %wide.trip.count2282.i, -1 ; 2 uses
  %xtraiter624 = and i64 %wide.trip.count2282.i, 3 ; 3 uses
  %i.abe = icmp ult i64 %i.abd, 3
  %unroll_iter629 = and i64 %wide.trip.count2282.i, 2147483644
  %lcmp.mod626.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod628 = icmp ne i64 %xtraiter624, 0
  %xtraiter632 = and i64 %wide.trip.count2282.i, 7 ; 3 uses
  %i.abf = icmp ult i64 %i.abd, 7
  %unroll_iter637 = and i64 %wide.trip.count2282.i, 2147483640
  %lcmp.mod634.not = icmp eq i64 %xtraiter632, 0
  %lcmp.mod636 = icmp ne i64 %xtraiter632, 0
  br label %_ZN4ncnn3MatD2Ev.exit1326.i

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1765.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2261.i = phi i64 [ %i.kx, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2262.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2259.i = phi i32 [ %i.ky, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2260.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2204.i = phi i32 [ %i.ks, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2205.i, %._crit_edge1765.split.i ] ; 2 uses
  %i.abg = sext i32 %indvars.iv2204.i to i64
  %i.abh = shl nsw i64 %i.abg, 2
  %i.abi = load ptr, ptr %i.s, align 8, !tbaa !19 ; 9 uses
  %i.abj = trunc nuw i64 %indvars.iv2261.i to i32 ; 9 uses
  %i.abk = mul i32 %i.jq, %i.abj
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abl ; 2 uses
  %i.abn = add i32 %i.abj, 1
  %i.abo = mul i32 %i.abn, %i.jq
  %i.abp = sext i32 %i.abo to i64
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abp ; 2 uses
  %i.abr = add i32 %i.abj, 2
  %i.abs = mul i32 %i.abr, %i.jq
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abt ; 2 uses
  %i.abv = add i32 %i.abj, 3
  %i.abw = mul i32 %i.abv, %i.jq
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.abx ; 2 uses
  %i.abz = add i32 %i.abj, 4
  %i.aca = mul i32 %i.abz, %i.jq
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acb ; 2 uses
  %i.acd = add i32 %i.abj, 5
  %i.ace = mul i32 %i.acd, %i.jq
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acf ; 2 uses
  %i.ach = add i32 %i.abj, 6
  %i.aci = mul i32 %i.ach, %i.jq
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acj ; 2 uses
  %i.acl = mul i32 %indvars.iv2259.i, %i.jq
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.acm ; 2 uses
  %i.aco = lshr i32 %i.abj, 4
  %i.acp = lshr i32 %i.abj, 3
  %i.acq = and i32 %i.acp, 1
  %i.acr = add nuw nsw i32 %i.acq, %i.aco
  %i.acs = load ptr, ptr %i.t, align 8, !tbaa !19, !noalias !178
  %i.act = load i64, ptr %i.jr, align 8, !tbaa !20, !noalias !178
  %i.acu = zext nneg i32 %i.acr to i64
  %i.acv = mul i64 %i.act, %i.acu
  %i.acw = load i64, ptr %i.js, align 8, !tbaa !44, !noalias !178
  %i.acx = mul i64 %i.acv, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acx ; 4 uses
  br i1 %i.jz, label %.preheader1578.lr.ph.i, label %.preheader1581.i

.preheader1578.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.ka, label %.preheader1578.us.i, label %.preheader1581.thread.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1674.us.i
  %.012201685.us.i = phi ptr [ %i.afd, %._crit_edge1674.us.i ], [ %i.abm, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012241684.us.i = phi ptr [ %i.afe, %._crit_edge1674.us.i ], [ %i.abq, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012261683.us.i = phi ptr [ %i.aff, %._crit_edge1674.us.i ], [ %i.abu, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012281682.us.i = phi ptr [ %i.afg, %._crit_edge1674.us.i ], [ %i.aby, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012311681.us.i = phi ptr [ %i.afh, %._crit_edge1674.us.i ], [ %i.acc, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012331680.us.i = phi ptr [ %i.afi, %._crit_edge1674.us.i ], [ %i.acg, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012351679.us.i = phi ptr [ %i.afj, %._crit_edge1674.us.i ], [ %i.ack, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012371678.us.i = phi ptr [ %i.afk, %._crit_edge1674.us.i ], [ %i.acn, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012401677.us.i = phi ptr [ %i.afc, %._crit_edge1674.us.i ], [ %i.acy, %.preheader1578.lr.ph.i ]
  %.012521676.us.i = phi i32 [ %i.afl, %._crit_edge1674.us.i ], [ 0, %.preheader1578.lr.ph.i ]
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1578.us.i
  %indvars.iv2229.i = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2230.i, %bb.be ] ; 9 uses
  %.112411673.us.i = phi ptr [ %.012401677.us.i, %.preheader1578.us.i ], [ %i.afc, %bb.be ] ; 9 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %indvars.iv2229.i
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %indvars.iv2229.i
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %indvars.iv2229.i
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %indvars.iv2229.i
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %indvars.iv2229.i
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %indvars.iv2229.i
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %indvars.iv2229.i
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %indvars.iv2229.i
  %i.adh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acz, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ada, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adb, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adc, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.add, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ade, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adf, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ado = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adg, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adp = shufflevector <16 x float> %i.adh, <16 x float> %i.adi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adq = shufflevector <16 x float> %i.adh, <16 x float> %i.adi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adr = shufflevector <16 x float> %i.adj, <16 x float> %i.adk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ads = shufflevector <16 x float> %i.adj, <16 x float> %i.adk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adt = shufflevector <16 x float> %i.adl, <16 x float> %i.adm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adu = shufflevector <16 x float> %i.adl, <16 x float> %i.adm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adv = shufflevector <16 x float> %i.adn, <16 x float> %i.ado, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adw = shufflevector <16 x float> %i.adn, <16 x float> %i.ado, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.adx = shufflevector <16 x float> %i.adp, <16 x float> %i.adr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ady = shufflevector <16 x float> %i.adp, <16 x float> %i.adr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adq, <16 x float> %i.ads, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.adq, <16 x float> %i.ads, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.adt, <16 x float> %i.adv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adt, <16 x float> %i.adv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adu, <16 x float> %i.adw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adu, <16 x float> %i.adw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adx, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.ady, <16 x float> %i.aec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.adz, <16 x float> %i.aed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.aea, <16 x float> %i.aee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.adx, <16 x float> %i.aeb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.ady, <16 x float> %i.aec, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.adz, <16 x float> %i.aed, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aea, <16 x float> %i.aee, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aef, <16 x float> %i.aeg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aeo = shufflevector <16 x float> %i.aeh, <16 x float> %i.aei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aep = shufflevector <16 x float> %i.aej, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aeq = shufflevector <16 x float> %i.ael, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aer = shufflevector <16 x float> %i.aef, <16 x float> %i.aeg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aes = shufflevector <16 x float> %i.aeh, <16 x float> %i.aei, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aet = shufflevector <16 x float> %i.aej, <16 x float> %i.aek, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aeu = shufflevector <16 x float> %i.ael, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.aen, ptr %.112411673.us.i, align 1, !tbaa !45
  %i.aev = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 64
  store <16 x float> %i.aeo, ptr %i.aev, align 1, !tbaa !45
  %i.aew = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 128
  store <16 x float> %i.aep, ptr %i.aew, align 1, !tbaa !45
  %i.aex = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 192
  store <16 x float> %i.aeq, ptr %i.aex, align 1, !tbaa !45
  %i.aey = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 256
  store <16 x float> %i.aer, ptr %i.aey, align 1, !tbaa !45
  %i.aez = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 320
  store <16 x float> %i.aes, ptr %i.aez, align 1, !tbaa !45
  %i.afa = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 384
  store <16 x float> %i.aet, ptr %i.afa, align 1, !tbaa !45
  %i.afb = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 448
  store <16 x float> %i.aeu, ptr %i.afb, align 1, !tbaa !45
  %i.afc = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 512 ; 3 uses
  %indvars.iv.next2230.i = add nuw nsw i64 %indvars.iv2229.i, 1 ; 2 uses
  %exitcond2233.not.i = icmp eq i64 %indvars.iv.next2230.i, %wide.trip.count2232.i
  br i1 %exitcond2233.not.i, label %._crit_edge1674.us.i, label %bb.be, !llvm.loop !91

._crit_edge1674.us.i:                             ; preds = %bb.be
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %i.kc ; 2 uses
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %i.kc ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %i.kc ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %i.kc ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %i.kc ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %i.kc ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %i.kc ; 2 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %i.kc ; 2 uses
  %i.afl = add nuw nsw i32 %.012521676.us.i, 16   ; 2 uses
  %i.afm = or disjoint i32 %i.afl, 15
  %i.afn = icmp slt i32 %i.afm, %i.r
  br i1 %i.afn, label %.preheader1578.us.i, label %.preheader1581.i, !llvm.loop !92

.preheader1581.i:                                 ; preds = %._crit_edge1674.us.i, %_ZN4ncnn3MatD2Ev.exit1327.i
  %.01252.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.kv, %._crit_edge1674.us.i ] ; 4 uses
  %.01240.lcssa.i = phi ptr [ %i.acy, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afc, %._crit_edge1674.us.i ] ; 3 uses
  %.01237.lcssa.i = phi ptr [ %i.acn, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afk, %._crit_edge1674.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.ack, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afj, %._crit_edge1674.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.acg, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afi, %._crit_edge1674.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.acc, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afh, %._crit_edge1674.us.i ]
  %.01228.lcssa.i = phi ptr [ %i.aby, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afg, %._crit_edge1674.us.i ]
  %.01226.lcssa.i = phi ptr [ %i.abu, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.aff, %._crit_edge1674.us.i ]
  %.01224.lcssa.i = phi ptr [ %i.abq, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afe, %._crit_edge1674.us.i ]
  %.01220.lcssa.i = phi ptr [ %i.abm, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afd, %._crit_edge1674.us.i ] ; 3 uses
  %i.afo = or disjoint i32 %.01252.lcssa.i, 7
  %i.afp = icmp slt i32 %i.afo, %i.r
  br i1 %i.afp, label %.preheader1577.lr.ph.i, label %._crit_edge1720.i

.preheader1581.thread.i:                          ; preds = %.preheader1578.lr.ph.i
  %scevgep2203.i = getelementptr i8, ptr %i.abi, i64 %i.kr
  %scevgep2206.i = getelementptr i8, ptr %scevgep2203.i, i64 %i.abh ; 2 uses
  br i1 %i.lb, label %.preheader1577.preheader.i, label %._crit_edge1720.i

end_hunk_0
begin_hunk_1_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.51173.lcssa.i = phi ptr [ %.21170.lcssa.i, %.preheader1604.i ], [ %i.acj, %._crit_edge.us1658.i ] ; 2 uses
  %.21098.lcssa.i = phi ptr [ %.11097.lcssa.i, %.preheader1604.i ], [ %i.ack, %._crit_edge.us1658.i ] ; 2 uses
  %i.aco = or disjoint i32 %.21181.lcssa.i, 1
  %i.acp = icmp slt i32 %i.aco, %i.l
  br i1 %i.acp, label %.preheader1598.lr.ph.i, label %.preheader1602.i

.preheader1598.lr.ph.i:                           ; preds = %.preheader1603.i
  br i1 %i.if, label %.preheader1598.us.i, label %._crit_edge1683.split.i

.preheader1598.us.i:                              ; preds = %.preheader1598.lr.ph.i, %._crit_edge.us1674.i
  %.310991670.us.i = phi ptr [ %i.aez, %._crit_edge.us1674.i ], [ %.21098.lcssa.i, %.preheader1598.lr.ph.i ] ; 4 uses
  %.811761669.us.i = phi ptr [ %.lcssa521, %._crit_edge.us1674.i ], [ %.51173.lcssa.i, %.preheader1598.lr.ph.i ] ; 2 uses
  %.311821668.us.i = phi i32 [ %i.afa, %._crit_edge.us1674.i ], [ %.21181.lcssa.i, %.preheader1598.lr.ph.i ]
  br i1 %i.jf, label %.epil.preheader, label %.preheader1598.us.i.new

.preheader1598.us.i.new:                          ; preds = %.preheader1598.us.i, %.preheader1598.us.i.new
  %indvars.iv2203.i = phi i64 [ %indvars.iv.next2204.i.1, %.preheader1598.us.i.new ], [ 0, %.preheader1598.us.i ] ; 3 uses
  %.911771667.us.i = phi ptr [ %i.aee, %.preheader1598.us.i.new ], [ %.811761669.us.i, %.preheader1598.us.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader1598.us.i.new ], [ 0, %.preheader1598.us.i ]
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %indvars.iv2203.i ; 2 uses
  %i.acr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acq, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.acs = bitcast <16 x float> %i.acr to <16 x i32>
  %i.act = lshr <16 x i32> %i.acs, splat (i32 16) ; 2 uses
  %i.acu = shufflevector <16 x i32> %i.act, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acv = shufflevector <16 x i32> %i.act, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.acw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.acu, <8 x i32> %i.acv)
  %i.acx = bitcast <16 x i16> %i.acw to <4 x i64>
  %i.acy = shufflevector <4 x i64> %i.acx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.acy, ptr %.911771667.us.i, align 32, !tbaa !45
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %i.ik
  %i.ada = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 32
  %i.adb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.acz, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.adc = bitcast <16 x float> %i.adb to <16 x i32>
  %i.add = lshr <16 x i32> %i.adc, splat (i32 16) ; 2 uses
  %i.ade = shufflevector <16 x i32> %i.add, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adf = shufflevector <16 x i32> %i.add, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ade, <8 x i32> %i.adf)
  %i.adh = bitcast <16 x i16> %i.adg to <4 x i64>
  %i.adi = shufflevector <4 x i64> %i.adh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.adi, ptr %i.ada, align 32, !tbaa !45
  %i.adj = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %indvars.iv2203.i
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4 ; 2 uses
  %i.adm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.adl, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.adn = bitcast <16 x float> %i.adm to <16 x i32>
  %i.ado = lshr <16 x i32> %i.adn, splat (i32 16) ; 2 uses
  %i.adp = shufflevector <16 x i32> %i.ado, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adq = shufflevector <16 x i32> %i.ado, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adp, <8 x i32> %i.adq)
  %i.ads = bitcast <16 x i16> %i.adr to <4 x i64>
  %i.adt = shufflevector <4 x i64> %i.ads, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.adt, ptr %i.adj, align 32, !tbaa !45
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adl, i64 %i.ik
  %i.adv = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 96
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.adu, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.adx = bitcast <16 x float> %i.adw to <16 x i32>
  %i.ady = lshr <16 x i32> %i.adx, splat (i32 16) ; 2 uses
  %i.adz = shufflevector <16 x i32> %i.ady, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aea = shufflevector <16 x i32> %i.ady, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aeb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adz, <8 x i32> %i.aea)
  %i.aec = bitcast <16 x i16> %i.aeb to <4 x i64>
  %i.aed = shufflevector <4 x i64> %i.aec, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aed, ptr %i.adv, align 32, !tbaa !45
  %i.aee = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 128 ; 3 uses
  %indvars.iv.next2204.i.1 = add nuw nsw i64 %indvars.iv2203.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1674.i.unr-lcssa, label %.preheader1598.us.i.new, !llvm.loop !309

._crit_edge.us1674.i.unr-lcssa:                   ; preds = %.preheader1598.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1674.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1674.i.unr-lcssa, %.preheader1598.us.i
  %indvars.iv2203.i.epil.init = phi i64 [ 0, %.preheader1598.us.i ], [ %indvars.iv.next2204.i.1, %._crit_edge.us1674.i.unr-lcssa ]
  %.911771667.us.i.epil.init = phi ptr [ %.811761669.us.i, %.preheader1598.us.i ], [ %i.aee, %._crit_edge.us1674.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod526)
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %indvars.iv2203.i.epil.init ; 2 uses
  %i.aeg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aef, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.aeh = bitcast <16 x float> %i.aeg to <16 x i32>
  %i.aei = lshr <16 x i32> %i.aeh, splat (i32 16) ; 2 uses
  %i.aej = shufflevector <16 x i32> %i.aei, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aek = shufflevector <16 x i32> %i.aei, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ael = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aej, <8 x i32> %i.aek)
  %i.aem = bitcast <16 x i16> %i.ael to <4 x i64>
  %i.aen = shufflevector <4 x i64> %i.aem, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aen, ptr %.911771667.us.i.epil.init, align 32, !tbaa !45
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.ik
  %i.aep = getelementptr inbounds nuw i8, ptr %.911771667.us.i.epil.init, i64 32
  %i.aeq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aeo, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.aer = bitcast <16 x float> %i.aeq to <16 x i32>
  %i.aes = lshr <16 x i32> %i.aer, splat (i32 16) ; 2 uses
  %i.aet = shufflevector <16 x i32> %i.aes, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aeu = shufflevector <16 x i32> %i.aes, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aev = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aet, <8 x i32> %i.aeu)
  %i.aew = bitcast <16 x i16> %i.aev to <4 x i64>
  %i.aex = shufflevector <4 x i64> %i.aew, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aex, ptr %i.aep, align 32, !tbaa !45
  %i.aey = getelementptr inbounds nuw i8, ptr %.911771667.us.i.epil.init, i64 64
  br label %._crit_edge.us1674.i

._crit_edge.us1674.i:                             ; preds = %._crit_edge.us1674.i.unr-lcssa, %.epil.preheader
  %.lcssa521 = phi ptr [ %i.aee, %._crit_edge.us1674.i.unr-lcssa ], [ %i.aey, %.epil.preheader ] ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %i.iq ; 2 uses
  %i.afa = add nuw nsw i32 %.311821668.us.i, 2    ; 3 uses
  %i.afb = or disjoint i32 %i.afa, 1
  %i.afc = icmp slt i32 %i.afb, %i.l
  br i1 %i.afc, label %.preheader1598.us.i, label %.preheader1602.i, !llvm.loop !310

.preheader1602.i:                                 ; preds = %._crit_edge.us1674.i, %.preheader1603.i
  %.31182.lcssa.i = phi i32 [ %.21181.lcssa.i, %.preheader1603.i ], [ %i.afa, %._crit_edge.us1674.i ] ; 2 uses
  %.81176.lcssa.i = phi ptr [ %.51173.lcssa.i, %.preheader1603.i ], [ %.lcssa521, %._crit_edge.us1674.i ]
  %.31099.lcssa.i = phi ptr [ %.21098.lcssa.i, %.preheader1603.i ], [ %i.aez, %._crit_edge.us1674.i ] ; 3 uses
  %i.afd = icmp sge i32 %.31182.lcssa.i, %i.l
  %brmerge.i = or i1 %i.ir, %i.afd
  br i1 %brmerge.i, label %._crit_edge1683.split.i, label %.preheader1597.i

.preheader1597.i:                                 ; preds = %.preheader1602.i, %._crit_edge.i
  %.111682.i = phi ptr [ %.lcssa524, %._crit_edge.i ], [ %.81176.lcssa.i, %.preheader1602.i ] ; 2 uses
  %.411831681.i = phi i32 [ %i.afo, %._crit_edge.i ], [ %.31182.lcssa.i, %.preheader1602.i ]
  br i1 %i.jg, label %.epil.preheader527, label %.preheader1597.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1597.i.new
  br i1 %lcmp.mod529.not, label %._crit_edge.i, label %.epil.preheader527

.epil.preheader527:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1597.i
  %indvars.iv2208.i.epil.init = phi i64 [ 0, %.preheader1597.i ], [ %indvars.iv.next2209.i.1, %._crit_edge.i.unr-lcssa ]
  %.121680.i.epil.init = phi ptr [ %.111682.i, %.preheader1597.i ], [ %i.agj, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod531)
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2208.i.epil.init
  %i.aff = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.afe, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.afg = bitcast <16 x float> %i.aff to <16 x i32>
  %i.afh = lshr <16 x i32> %i.afg, splat (i32 16) ; 2 uses
  %i.afi = shufflevector <16 x i32> %i.afh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afj = shufflevector <16 x i32> %i.afh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afk = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afi, <8 x i32> %i.afj)
  %i.afl = bitcast <16 x i16> %i.afk to <4 x i64>
  %i.afm = shufflevector <4 x i64> %i.afl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.afm, ptr %.121680.i.epil.init, align 32, !tbaa !45
  %i.afn = getelementptr inbounds nuw i8, ptr %.121680.i.epil.init, i64 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader527
  %.lcssa524 = phi ptr [ %i.agj, %._crit_edge.i.unr-lcssa ], [ %i.afn, %.epil.preheader527 ]
  %i.afo = add nuw nsw i32 %.411831681.i, 1       ; 2 uses
  %exitcond2213.not.i = icmp eq i32 %i.afo, %i.l
  br i1 %exitcond2213.not.i, label %._crit_edge1683.split.i, label %.preheader1597.i, !llvm.loop !311

.preheader1597.i.new:                             ; preds = %.preheader1597.i, %.preheader1597.i.new
  %indvars.iv2208.i = phi i64 [ %indvars.iv.next2209.i.1, %.preheader1597.i.new ], [ 0, %.preheader1597.i ] ; 3 uses
  %.121680.i = phi ptr [ %i.agj, %.preheader1597.i.new ], [ %.111682.i, %.preheader1597.i ] ; 3 uses
  %niter533 = phi i64 [ %niter533.next.1, %.preheader1597.i.new ], [ 0, %.preheader1597.i ]
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2208.i
  %i.afq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.afp, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.afr = bitcast <16 x float> %i.afq to <16 x i32>
  %i.afs = lshr <16 x i32> %i.afr, splat (i32 16) ; 2 uses
  %i.aft = shufflevector <16 x i32> %i.afs, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afu = shufflevector <16 x i32> %i.afs, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afv = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aft, <8 x i32> %i.afu)
  %i.afw = bitcast <16 x i16> %i.afv to <4 x i64>
  %i.afx = shufflevector <4 x i64> %i.afw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.afx, ptr %.121680.i, align 32, !tbaa !45
  %i.afy = getelementptr inbounds nuw i8, ptr %.121680.i, i64 32
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2208.i
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 4
  %i.agb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aga, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4)
  %i.agc = bitcast <16 x float> %i.agb to <16 x i32>
  %i.agd = lshr <16 x i32> %i.agc, splat (i32 16) ; 2 uses
  %i.age = shufflevector <16 x i32> %i.agd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agf = shufflevector <16 x i32> %i.agd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.age, <8 x i32> %i.agf)
  %i.agh = bitcast <16 x i16> %i.agg to <4 x i64>
  %i.agi = shufflevector <4 x i64> %i.agh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.agi, ptr %i.afy, align 32, !tbaa !45
  %i.agj = getelementptr inbounds nuw i8, ptr %.121680.i, i64 64 ; 3 uses
  %indvars.iv.next2209.i.1 = add nuw nsw i64 %indvars.iv2208.i, 2 ; 2 uses
  %niter533.next.1 = add i64 %niter533, 2         ; 2 uses
  %niter533.ncmp.1 = icmp eq i64 %niter533.next.1, %unroll_iter532
  br i1 %niter533.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader1597.i.new, !llvm.loop !312

._crit_edge1683.split.i:                          ; preds = %._crit_edge.i, %.preheader1602.i, %.preheader1598.lr.ph.i, %.preheader1599.lr.ph.i
  %indvars.iv.next2215.i = add nuw nsw i64 %indvars.iv2214.i, 16 ; 3 uses
  %i.agk = or disjoint i64 %indvars.iv.next2215.i, 15
  %i.agl = icmp samesign ult i64 %i.agk, %i.jb
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.ix
  br i1 %i.agl, label %_ZN4ncnn3MatD2Ev.exit1303.i, label %.preheader1596.loopexit.i, !llvm.loop !313

.preheader1587.loopexit.i:                        ; preds = %._crit_edge1779.split.i
  %i.agm = trunc nuw nsw i64 %indvars.iv.next2276.i to i32
  br label %.preheader1587.i

.preheader1587.i:                                 ; preds = %.preheader1587.loopexit.i, %.preheader1596.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1596.i ], [ %i.agm, %.preheader1587.loopexit.i ] ; 4 uses
  %i.agn = or disjoint i32 %.1.lcssa.i, 3         ; 2 uses
  %i.ago = icmp slt i32 %i.agn, %i.g
  br i1 %i.ago, label %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i, label %.preheader1578.i

_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i:                ; preds = %.preheader1587.i
  %i.agp = insertelement <4 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.agq = shufflevector <4 x i32> %i.agp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agr = or disjoint <4 x i32> %i.agq, <i32 0, i32 0, i32 0, i32 3>
  %2 = mul i32 %i.l, %i.d                         ; 6 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.agt = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.agu = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.agv = shufflevector <4 x i32> %i.agu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agw = mul <4 x i32> %i.agv, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.agx = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.agy = shufflevector <8 x i32> %i.agx, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.agz = mul <8 x i32> %i.agy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aha = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.ahb = shufflevector <16 x i32> %i.aha, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ahc = mul <16 x i32> %i.ahb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ahd = icmp sgt i32 %i.l, 15
  %i.ahe = icmp sgt i32 %i.d, 0                   ; 4 uses
  %i.ahf = shl i32 %i.d, 4
  %i.ahg = sext i32 %i.ahf to i64                 ; 5 uses
  %i.ahh = shl i32 %i.d, 3
  %i.ahi = sext i32 %i.ahh to i64                 ; 5 uses
  %i.ahj = shl i32 %i.d, 2
  %i.ahk = sext i32 %i.ahj to i64                 ; 4 uses
  %i.ahl = shufflevector <2 x i32> %i.j, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ahm = mul <4 x i32> %i.ahl, %i.agw           ; 11 uses
  %i.ahn = sext i32 %i.d to i64                   ; 3 uses
  %i.aho = shl i32 %i.d, 1
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = icmp slt i32 %i.d, 1
  %i.ahr = add i32 %i.l, -16                      ; 2 uses
  %i.ahs = lshr i32 %i.ahr, 2
  %i.aht = and i32 %i.ahs, 1073741820
  %narrow2445.i = add nuw nsw i32 %i.aht, 4
  %i.ahu = zext nneg i32 %narrow2445.i to i64
  %i.ahv = mul nsw i64 %i.ahu, %i.ahg
  %i.ahw = shl i32 %2, 2
  %i.ahx = add nuw <4 x i32> %i.agr, <i32 0, i32 1, i32 2, i32 0>
  %i.ahy = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.ahz = shufflevector <4 x i32> %i.ahy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aia = mul <4 x i32> %i.ahz, %i.ahx
  %i.aib = and i32 %i.ahr, -16
  %i.aic = add nuw i32 %i.aib, 16                 ; 4 uses
  %i.aid = add i32 %i.l, -8
  %i.aie = zext nneg i32 %.1.lcssa.i to i64
  %i.aif = sext i32 %i.g to i64
  %i.aig = or disjoint i32 %i.aic, 7
  %i.aih = icmp slt i32 %i.aig, %i.l
  %wide.trip.count2296.i = zext i32 %i.d to i64   ; 8 uses
  %i.aii = insertelement <4 x i32> poison, i32 %i.ahw, i64 0
  %i.aij = shufflevector <4 x i32> %i.aii, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aik = add nsw i64 %wide.trip.count2296.i, -1 ; 2 uses
  %xtraiter549 = and i64 %wide.trip.count2296.i, 1
  %i.ail = icmp eq i64 %i.aik, 0
  %unroll_iter554 = and i64 %wide.trip.count2296.i, 2147483646
  %lcmp.mod551.not = icmp eq i64 %xtraiter549, 0
  %lcmp.mod553 = trunc i32 %i.d to i1
  %xtraiter557 = and i64 %wide.trip.count2296.i, 3 ; 3 uses
  %i.aim = icmp ult i64 %i.aik, 3
  %unroll_iter562 = and i64 %wide.trip.count2296.i, 2147483644
  %lcmp.mod559.not = icmp eq i64 %xtraiter557, 0
  %lcmp.mod561 = icmp ne i64 %xtraiter557, 0
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1779.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2275.i = phi i64 [ %i.kr, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2276.i, %._crit_edge1779.split.i ] ; 2 uses
  %indvars.iv2273.i = phi i32 [ %i.ks, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2274.i, %._crit_edge1779.split.i ] ; 2 uses
  %indvars.iv2218.i = phi i32 [ %i.km, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2219.i, %._crit_edge1779.split.i ] ; 2 uses
  %i.ain = sext i32 %indvars.iv2218.i to i64
  %i.aio = shl nsw i64 %i.ain, 2
  %i.aip = load ptr, ptr %i.m, align 8, !tbaa !19 ; 9 uses
  %i.aiq = trunc nuw i64 %indvars.iv2275.i to i32 ; 9 uses
  %i.air = mul i32 %i.jk, %i.aiq
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.ais ; 2 uses
  %i.aiu = add i32 %i.aiq, 1
  %i.aiv = mul i32 %i.aiu, %i.jk
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.aiw ; 2 uses
  %i.aiy = add i32 %i.aiq, 2
  %i.aiz = mul i32 %i.aiy, %i.jk
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.aja ; 2 uses
  %i.ajc = add i32 %i.aiq, 3
  %i.ajd = mul i32 %i.ajc, %i.jk
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.aje ; 2 uses
  %i.ajg = add i32 %i.aiq, 4
  %i.ajh = mul i32 %i.ajg, %i.jk
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.aji ; 2 uses
  %i.ajk = add i32 %i.aiq, 5
  %i.ajl = mul i32 %i.ajk, %i.jk
  %i.ajm = sext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.ajm ; 2 uses
  %i.ajo = add i32 %i.aiq, 6
  %i.ajp = mul i32 %i.ajo, %i.jk
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.ajq ; 2 uses
  %i.ajs = mul i32 %indvars.iv2273.i, %i.jk
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.aip, i64 %i.ajt ; 2 uses
  %i.ajv = lshr i32 %i.aiq, 4
  %i.ajw = lshr i32 %i.aiq, 3
  %i.ajx = and i32 %i.ajw, 1
  %i.ajy = add nuw nsw i32 %i.ajx, %i.ajv
  %i.ajz = load ptr, ptr %i.n, align 8, !tbaa !19, !noalias !379
  %i.aka = load i64, ptr %i.jl, align 8, !tbaa !20, !noalias !379
  %i.akb = zext nneg i32 %i.ajy to i64
  %i.akc = mul i64 %i.aka, %i.akb
  %i.akd = load i64, ptr %i.jm, align 8, !tbaa !44, !noalias !379
  %i.ake = mul i64 %i.akc, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.ake ; 4 uses
  br i1 %i.jt, label %.preheader1592.lr.ph.i, label %.preheader1595.i

.preheader1592.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.ju, label %.preheader1592.us.i, label %.preheader1595.thread.i

.preheader1592.us.i:                              ; preds = %.preheader1592.lr.ph.i, %._crit_edge1688.us.i
  %.012341699.us.i = phi ptr [ %i.aoo, %._crit_edge1688.us.i ], [ %i.ait, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012381698.us.i = phi ptr [ %i.aop, %._crit_edge1688.us.i ], [ %i.aix, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012401697.us.i = phi ptr [ %i.aoq, %._crit_edge1688.us.i ], [ %i.ajb, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012421696.us.i = phi ptr [ %i.aor, %._crit_edge1688.us.i ], [ %i.ajf, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012441695.us.i = phi ptr [ %i.aos, %._crit_edge1688.us.i ], [ %i.ajj, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012461694.us.i = phi ptr [ %i.aot, %._crit_edge1688.us.i ], [ %i.ajn, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012491693.us.i = phi ptr [ %i.aou, %._crit_edge1688.us.i ], [ %i.ajr, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012511692.us.i = phi ptr [ %i.aov, %._crit_edge1688.us.i ], [ %i.aju, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012531691.us.i = phi ptr [ %i.aon, %._crit_edge1688.us.i ], [ %i.akf, %.preheader1592.lr.ph.i ]
  %.012651690.us.i = phi i32 [ %i.aow, %._crit_edge1688.us.i ], [ 0, %.preheader1592.lr.ph.i ]
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.preheader1592.us.i
  %indvars.iv2243.i = phi i64 [ 0, %.preheader1592.us.i ], [ %indvars.iv.next2244.i, %bb.bc ] ; 9 uses
  %.112541687.us.i = phi ptr [ %.012531691.us.i, %.preheader1592.us.i ], [ %i.aon, %bb.bc ] ; 9 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %.012341699.us.i, i64 %indvars.iv2243.i
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %.012381698.us.i, i64 %indvars.iv2243.i
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.012401697.us.i, i64 %indvars.iv2243.i
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %.012421696.us.i, i64 %indvars.iv2243.i
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %.012441695.us.i, i64 %indvars.iv2243.i
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %.012461694.us.i, i64 %indvars.iv2243.i
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %.012491693.us.i, i64 %indvars.iv2243.i
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %.012511692.us.i, i64 %indvars.iv2243.i
  %i.ako = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akg, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akh, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aki, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akj, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aks = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akk, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akl, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aku = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akm, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akn, <16 x i32> %i.js, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akw = shufflevector <16 x float> %i.ako, <16 x float> %i.akp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.akx = shufflevector <16 x float> %i.ako, <16 x float> %i.akp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aky = shufflevector <16 x float> %i.akq, <16 x float> %i.akr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.akz = shufflevector <16 x float> %i.akq, <16 x float> %i.akr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ala = shufflevector <16 x float> %i.aks, <16 x float> %i.akt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.alb = shufflevector <16 x float> %i.aks, <16 x float> %i.akt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.alc = shufflevector <16 x float> %i.aku, <16 x float> %i.akv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ald = shufflevector <16 x float> %i.aku, <16 x float> %i.akv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ale = shufflevector <16 x float> %i.akw, <16 x float> %i.aky, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alf = shufflevector <16 x float> %i.akw, <16 x float> %i.aky, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alg = shufflevector <16 x float> %i.akx, <16 x float> %i.akz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alh = shufflevector <16 x float> %i.akx, <16 x float> %i.akz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ali = shufflevector <16 x float> %i.ala, <16 x float> %i.alc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alj = shufflevector <16 x float> %i.ala, <16 x float> %i.alc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alk = shufflevector <16 x float> %i.alb, <16 x float> %i.ald, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.all = shufflevector <16 x float> %i.alb, <16 x float> %i.ald, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alm = shufflevector <16 x float> %i.ale, <16 x float> %i.ali, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aln = shufflevector <16 x float> %i.alf, <16 x float> %i.alj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alo = shufflevector <16 x float> %i.alg, <16 x float> %i.alk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alp = shufflevector <16 x float> %i.alh, <16 x float> %i.all, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alq = shufflevector <16 x float> %i.ale, <16 x float> %i.ali, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alr = shufflevector <16 x float> %i.alf, <16 x float> %i.alj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.als = shufflevector <16 x float> %i.alg, <16 x float> %i.alk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alt = shufflevector <16 x float> %i.alh, <16 x float> %i.all, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.alu = shufflevector <16 x float> %i.alm, <16 x float> %i.aln, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alv = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alw = shufflevector <16 x float> %i.alq, <16 x float> %i.alr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.alx = shufflevector <16 x float> %i.als, <16 x float> %i.alt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aly = shufflevector <16 x float> %i.alm, <16 x float> %i.aln, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.alz = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ama = shufflevector <16 x float> %i.alq, <16 x float> %i.alr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amb = shufflevector <16 x float> %i.als, <16 x float> %i.alt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amc = bitcast <16 x float> %i.alu to <16 x i32>
  %i.amd = lshr <16 x i32> %i.amc, splat (i32 16) ; 2 uses
  %i.ame = shufflevector <16 x i32> %i.amd, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amf = shufflevector <16 x i32> %i.amd, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amg = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ame, <8 x i32> %i.amf)
  %i.amh = bitcast <16 x i16> %i.amg to <4 x i64>
  %i.ami = shufflevector <4 x i64> %i.amh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ami, ptr %.112541687.us.i, align 1, !tbaa !45
  %i.amj = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 32
  %i.amk = bitcast <16 x float> %i.alv to <16 x i32>
  %i.aml = lshr <16 x i32> %i.amk, splat (i32 16) ; 2 uses
  %i.amm = shufflevector <16 x i32> %i.aml, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amn = shufflevector <16 x i32> %i.aml, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amm, <8 x i32> %i.amn)
  %i.amp = bitcast <16 x i16> %i.amo to <4 x i64>
  %i.amq = shufflevector <4 x i64> %i.amp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amq, ptr %i.amj, align 1, !tbaa !45
  %i.amr = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 64
  %i.ams = bitcast <16 x float> %i.alw to <16 x i32>
  %i.amt = lshr <16 x i32> %i.ams, splat (i32 16) ; 2 uses
  %i.amu = shufflevector <16 x i32> %i.amt, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amv = shufflevector <16 x i32> %i.amt, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amu, <8 x i32> %i.amv)
  %i.amx = bitcast <16 x i16> %i.amw to <4 x i64>
  %i.amy = shufflevector <4 x i64> %i.amx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amy, ptr %i.amr, align 1, !tbaa !45
  %i.amz = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 96
  %i.ana = bitcast <16 x float> %i.alx to <16 x i32>
  %i.anb = lshr <16 x i32> %i.ana, splat (i32 16) ; 2 uses
  %i.anc = shufflevector <16 x i32> %i.anb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.and = shufflevector <16 x i32> %i.anb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ane = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.anc, <8 x i32> %i.and)
  %i.anf = bitcast <16 x i16> %i.ane to <4 x i64>
  %i.ang = shufflevector <4 x i64> %i.anf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ang, ptr %i.amz, align 1, !tbaa !45
  %i.anh = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 128
  %i.ani = bitcast <16 x float> %i.aly to <16 x i32>
  %i.anj = lshr <16 x i32> %i.ani, splat (i32 16) ; 2 uses
  %i.ank = shufflevector <16 x i32> %i.anj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anl = shufflevector <16 x i32> %i.anj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anm = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ank, <8 x i32> %i.anl)
  %i.ann = bitcast <16 x i16> %i.anm to <4 x i64>
  %i.ano = shufflevector <4 x i64> %i.ann, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ano, ptr %i.anh, align 1, !tbaa !45
  %i.anp = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 160
  %i.anq = bitcast <16 x float> %i.alz to <16 x i32>
  %i.anr = lshr <16 x i32> %i.anq, splat (i32 16) ; 2 uses
  %i.ans = shufflevector <16 x i32> %i.anr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ant = shufflevector <16 x i32> %i.anr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anu = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ans, <8 x i32> %i.ant)
  %i.anv = bitcast <16 x i16> %i.anu to <4 x i64>
  %i.anw = shufflevector <4 x i64> %i.anv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.anw, ptr %i.anp, align 1, !tbaa !45
  %i.anx = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 192
end_hunk_1
