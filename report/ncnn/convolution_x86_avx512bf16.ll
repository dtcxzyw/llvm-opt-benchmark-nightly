Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod524)
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %indvars.iv2185.i.epil.init ; 2 uses
  %i.wp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.wo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wp)
  store <16 x bfloat> %i.wq, ptr %.611711639.us.i.epil.init, align 1, !tbaa !18
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.ig ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 32
  %i.wt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wr, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wt)
  store <16 x bfloat> %i.wu, ptr %i.ws, align 1, !tbaa !18
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ig ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 64
  %i.wx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wv, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.wy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wx)
  store <16 x bfloat> %i.wy, ptr %i.ww, align 1, !tbaa !18
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.ig
  %i.xa = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 96
  %i.xb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.wz, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xb)
  store <16 x bfloat> %i.xc, ptr %i.xa, align 1, !tbaa !18
  %i.xd = getelementptr inbounds nuw i8, ptr %.611711639.us.i.epil.init, i64 128
  br label %._crit_edge.us1646.i

._crit_edge.us1646.i:                             ; preds = %._crit_edge.us1646.i.unr-lcssa, %.epil.preheader
  %.lcssa516 = phi ptr [ %i.wn, %._crit_edge.us1646.i.unr-lcssa ], [ %i.xd, %.epil.preheader ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.210961642.us.i, i64 %i.ik ; 2 uses
  %i.xf = add nuw nsw i32 %.211781640.us.i, 4     ; 3 uses
  %i.xg = or disjoint i32 %i.xf, 3
  %i.xh = icmp slt i32 %i.xg, %2
  br i1 %i.xh, label %.preheader1587.us.i, label %.preheader1591.i, !llvm.loop !59

.preheader1591.i:                                 ; preds = %._crit_edge.us1646.i, %.preheader1592.i
  %.21178.lcssa.i = phi i32 [ %.11177.lcssa.i, %.preheader1592.i ], [ %i.xf, %._crit_edge.us1646.i ] ; 3 uses
  %.51170.lcssa.i = phi ptr [ %.21167.lcssa.i, %.preheader1592.i ], [ %.lcssa516, %._crit_edge.us1646.i ] ; 2 uses
  %.21096.lcssa.i = phi ptr [ %.11095.lcssa.i, %.preheader1592.i ], [ %i.xe, %._crit_edge.us1646.i ] ; 2 uses
  %i.xi = or disjoint i32 %.21178.lcssa.i, 1
  %i.xj = icmp slt i32 %i.xi, %2
  br i1 %i.xj, label %.preheader1586.lr.ph.i, label %.preheader1590.i

.preheader1586.lr.ph.i:                           ; preds = %.preheader1591.i
  br i1 %i.ia, label %.preheader1586.us.i, label %._crit_edge1671.split.i

.preheader1586.us.i:                              ; preds = %.preheader1586.lr.ph.i, %._crit_edge.us1662.i
  %.310971658.us.i = phi ptr [ %i.yj, %._crit_edge.us1662.i ], [ %.21096.lcssa.i, %.preheader1586.lr.ph.i ] ; 4 uses
  %.811731657.us.i = phi ptr [ %.lcssa519, %._crit_edge.us1662.i ], [ %.51170.lcssa.i, %.preheader1586.lr.ph.i ] ; 2 uses
  %.311791656.us.i = phi i32 [ %i.yk, %._crit_edge.us1662.i ], [ %.21178.lcssa.i, %.preheader1586.lr.ph.i ]
  br i1 %i.jc, label %.epil.preheader525, label %.preheader1586.us.i.new

.preheader1586.us.i.new:                          ; preds = %.preheader1586.us.i, %.preheader1586.us.i.new
  %indvars.iv2191.i = phi i64 [ %indvars.iv.next2192.i.1, %.preheader1586.us.i.new ], [ 0, %.preheader1586.us.i ] ; 3 uses
  %.911741655.us.i = phi ptr [ %i.ya, %.preheader1586.us.i.new ], [ %.811731657.us.i, %.preheader1586.us.i ] ; 5 uses
  %niter531 = phi i64 [ %niter531.next.1, %.preheader1586.us.i.new ], [ 0, %.preheader1586.us.i ]
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i ; 2 uses
  %i.xl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xk, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xl)
  store <16 x bfloat> %i.xm, ptr %.911741655.us.i, align 1, !tbaa !18
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.ig
  %i.xo = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 32
  %i.xp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xn, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xp)
  store <16 x bfloat> %i.xq, ptr %i.xo, align 1, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.xu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xt, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xu)
  store <16 x bfloat> %i.xv, ptr %i.xr, align 1, !tbaa !18
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.ig
  %i.xx = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 96
  %i.xy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xw, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xy)
  store <16 x bfloat> %i.xz, ptr %i.xx, align 1, !tbaa !18
  %i.ya = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 128 ; 3 uses
  %indvars.iv.next2192.i.1 = add nuw nsw i64 %indvars.iv2191.i, 2 ; 2 uses
  %niter531.next.1 = add i64 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i64 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge.us1662.i.unr-lcssa, label %.preheader1586.us.i.new, !llvm.loop !60

._crit_edge.us1662.i.unr-lcssa:                   ; preds = %.preheader1586.us.i.new
  br i1 %lcmp.mod527.not, label %._crit_edge.us1662.i, label %.epil.preheader525

.epil.preheader525:                               ; preds = %._crit_edge.us1662.i.unr-lcssa, %.preheader1586.us.i
  %indvars.iv2191.i.epil.init = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2192.i.1, %._crit_edge.us1662.i.unr-lcssa ]
  %.911741655.us.i.epil.init = phi ptr [ %.811731657.us.i, %.preheader1586.us.i ], [ %i.ya, %._crit_edge.us1662.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2191.i.epil.init ; 2 uses
  %i.yc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yb, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yc)
  store <16 x bfloat> %i.yd, ptr %.911741655.us.i.epil.init, align 1, !tbaa !18
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.ig
  %i.yf = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 32
  %i.yg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ye, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yg)
  store <16 x bfloat> %i.yh, ptr %i.yf, align 1, !tbaa !18
  %i.yi = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 64
  br label %._crit_edge.us1662.i

._crit_edge.us1662.i:                             ; preds = %._crit_edge.us1662.i.unr-lcssa, %.epil.preheader525
  %.lcssa519 = phi ptr [ %i.ya, %._crit_edge.us1662.i.unr-lcssa ], [ %i.yi, %.epil.preheader525 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %i.im ; 2 uses
  %i.yk = add nuw nsw i32 %.311791656.us.i, 2     ; 3 uses
  %i.yl = or disjoint i32 %i.yk, 1
  %i.ym = icmp slt i32 %i.yl, %2
  br i1 %i.ym, label %.preheader1586.us.i, label %.preheader1590.i, !llvm.loop !61

.preheader1590.i:                                 ; preds = %._crit_edge.us1662.i, %.preheader1591.i
  %.31179.lcssa.i = phi i32 [ %.21178.lcssa.i, %.preheader1591.i ], [ %i.yk, %._crit_edge.us1662.i ] ; 2 uses
  %.81173.lcssa.i = phi ptr [ %.51170.lcssa.i, %.preheader1591.i ], [ %.lcssa519, %._crit_edge.us1662.i ]
  %.31097.lcssa.i = phi ptr [ %.21096.lcssa.i, %.preheader1591.i ], [ %i.yj, %._crit_edge.us1662.i ] ; 5 uses
  %i.yn = icmp sge i32 %.31179.lcssa.i, %2
  %brmerge.i = or i1 %i.in, %i.yn
  br i1 %brmerge.i, label %._crit_edge1671.split.i, label %.preheader1585.i

.preheader1585.i:                                 ; preds = %.preheader1590.i, %._crit_edge.i
  %.111670.i = phi ptr [ %.lcssa522, %._crit_edge.i ], [ %.81173.lcssa.i, %.preheader1590.i ] ; 2 uses
  %.411801669.i = phi i32 [ %i.ys, %._crit_edge.i ], [ %.31179.lcssa.i, %.preheader1590.i ]
  br i1 %i.jd, label %.epil.preheader532, label %.preheader1585.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1585.i.new
  br i1 %lcmp.mod534.not, label %._crit_edge.i, label %.epil.preheader532

.epil.preheader532:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1585.i
  %indvars.iv2196.i.epil.init = phi i64 [ 0, %.preheader1585.i ], [ %indvars.iv.next2197.i.3, %._crit_edge.i.unr-lcssa ]
  %.121668.i.epil.init = phi ptr [ %.111670.i, %.preheader1585.i ], [ %i.zl, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader532
  %indvars.iv2196.i.epil = phi i64 [ %indvars.iv2196.i.epil.init, %.epil.preheader532 ], [ %indvars.iv.next2197.i.epil, %bb.az ] ; 2 uses
  %.121668.i.epil = phi ptr [ %.121668.i.epil.init, %.epil.preheader532 ], [ %i.yr, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader532 ], [ %epil.iter.next, %bb.az ]
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i.epil
  %i.yp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yo, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yp)
  store <16 x bfloat> %i.yq, ptr %.121668.i.epil, align 1, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %.121668.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2197.i.epil = add nuw nsw i64 %indvars.iv2196.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter533
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.az, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.az, %._crit_edge.i.unr-lcssa
  %.lcssa522 = phi ptr [ %i.zl, %._crit_edge.i.unr-lcssa ], [ %i.yr, %bb.az ]
  %i.ys = add nuw nsw i32 %.411801669.i, 1        ; 2 uses
  %exitcond2201.not.i = icmp eq i32 %i.ys, %2
  br i1 %exitcond2201.not.i, label %._crit_edge1671.split.i, label %.preheader1585.i, !llvm.loop !63

.preheader1585.i.new:                             ; preds = %.preheader1585.i, %.preheader1585.i.new
  %indvars.iv2196.i = phi i64 [ %indvars.iv.next2197.i.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ] ; 5 uses
  %.121668.i = phi ptr [ %i.zl, %.preheader1585.i.new ], [ %.111670.i, %.preheader1585.i ] ; 5 uses
  %niter538 = phi i64 [ %niter538.next.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ]
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.yu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yt, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yu)
  store <16 x bfloat> %i.yv, ptr %.121668.i, align 1, !tbaa !18
  %i.yw = getelementptr inbounds nuw i8, ptr %.121668.i, i64 32
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  %i.yz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yy, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.za = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yz)
  store <16 x bfloat> %i.za, ptr %i.yw, align 1, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %.121668.i, i64 64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zd, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.zf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ze)
  store <16 x bfloat> %i.zf, ptr %i.zb, align 1, !tbaa !18
  %i.zg = getelementptr inbounds nuw i8, ptr %.121668.i, i64 96
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2196.i
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 12
  %i.zj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zi, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.zk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.zj)
  store <16 x bfloat> %i.zk, ptr %i.zg, align 1, !tbaa !18
  %i.zl = getelementptr inbounds nuw i8, ptr %.121668.i, i64 128 ; 3 uses
  %indvars.iv.next2197.i.3 = add nuw nsw i64 %indvars.iv2196.i, 4 ; 2 uses
  %niter538.next.3 = add i64 %niter538, 4         ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader1585.i.new, !llvm.loop !64

._crit_edge1671.split.i:                          ; preds = %._crit_edge.i, %.preheader1590.i, %.preheader1586.lr.ph.i, %.preheader1587.lr.ph.i
  %indvars.iv.next2203.i = add nuw nsw i64 %indvars.iv2202.i, 16 ; 3 uses
  %i.zm = or disjoint i64 %indvars.iv.next2203.i, 15
  %i.zn = icmp samesign ult i64 %i.zm, %i.ix
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.it
  br i1 %i.zn, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1584.loopexit.i, !llvm.loop !65

.preheader1575.loopexit.i:                        ; preds = %._crit_edge1767.split.i
  %i.zo = trunc nuw nsw i64 %indvars.iv.next2264.i to i32
  br label %.preheader1575.i

.preheader1575.i:                                 ; preds = %.preheader1575.loopexit.i, %.preheader1584.i
  %.1.lcssa.i = phi i32 [ %.01092.lcssa.i, %.preheader1584.i ], [ %i.zo, %.preheader1575.loopexit.i ] ; 4 uses
  %i.zp = or disjoint i32 %.1.lcssa.i, 3          ; 2 uses
  %i.zq = icmp slt i32 %i.zp, %3
  br i1 %i.zq, label %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i, label %.preheader1566.i

_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i:                ; preds = %.preheader1575.i
  %i.zr = insertelement <4 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.zs = shufflevector <4 x i32> %i.zr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zt = or disjoint <4 x i32> %i.zs, <i32 0, i32 0, i32 0, i32 3>
  %6 = mul i32 %i.a, %2                           ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zw = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.zx = shufflevector <4 x i32> %i.zw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zy = mul <4 x i32> %i.zx, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.zz = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.aaa = shufflevector <8 x i32> %i.zz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aab = mul <8 x i32> %i.aaa, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aac = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.aad = shufflevector <16 x i32> %i.aac, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aae = mul <16 x i32> %i.aad, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aaf = icmp sgt i32 %2, 15
  %i.aag = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aah = shl i32 %i.a, 4
  %i.aai = sext i32 %i.aah to i64                 ; 5 uses
  %i.aaj = shl i32 %i.a, 3
  %i.aak = sext i32 %i.aaj to i64                 ; 5 uses
  %i.aal = shl i32 %i.a, 2
  %i.aam = sext i32 %i.aal to i64                 ; 4 uses
  %i.aan = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.aao = shufflevector <4 x i32> %i.aan, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aap = mul <4 x i32> %i.zy, %i.aao            ; 11 uses
  %i.aaq = sext i32 %i.a to i64                   ; 3 uses
  %i.aar = shl i32 %i.a, 1
  %i.aas = sext i32 %i.aar to i64
  %i.aat = icmp slt i32 %i.a, 1
  %i.aau = add i32 %2, -16                        ; 2 uses
  %i.aav = lshr i32 %i.aau, 2
  %i.aaw = and i32 %i.aav, 1073741820
  %narrow2433.i = add nuw nsw i32 %i.aaw, 4
  %i.aax = zext nneg i32 %narrow2433.i to i64
  %i.aay = mul nsw i64 %i.aai, %i.aax
  %i.aaz = shl i32 %6, 2
  %i.aba = add nuw <4 x i32> %i.zt, <i32 0, i32 1, i32 2, i32 0>
  %i.abb = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abd = mul <4 x i32> %i.abc, %i.aba
  %i.abe = and i32 %i.aau, -16
  %i.abf = add nuw i32 %i.abe, 16                 ; 4 uses
  %i.abg = add i32 %2, -8
  %i.abh = zext nneg i32 %.1.lcssa.i to i64
  %i.abi = sext i32 %3 to i64
  %i.abj = or disjoint i32 %i.abf, 7
  %i.abk = icmp slt i32 %i.abj, %2
  %wide.trip.count2284.i = zext i32 %i.a to i64   ; 8 uses
  %i.abl = insertelement <4 x i32> poison, i32 %i.aaz, i64 0
  %i.abm = shufflevector <4 x i32> %i.abl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abn = add nsw i64 %wide.trip.count2284.i, -1 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count2284.i, 1
  %i.abo = icmp eq i64 %i.abn, 0
  %unroll_iter569 = and i64 %wide.trip.count2284.i, 2147483646
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  %lcmp.mod568 = trunc i32 %i.a to i1
  %xtraiter572 = and i64 %wide.trip.count2284.i, 3 ; 3 uses
  %i.abp = icmp ult i64 %i.abn, 3
  %unroll_iter577 = and i64 %wide.trip.count2284.i, 2147483644
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter572, 0
  br label %_ZN4ncnn3MatD2Ev.exit1302.i

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1767.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2263.i = phi i64 [ %i.kp, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2264.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2261.i = phi i32 [ %i.kq, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2262.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2206.i = phi i32 [ %i.kk, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2207.i, %._crit_edge1767.split.i ] ; 2 uses
  %i.abq = sext i32 %indvars.iv2206.i to i64
  %i.abr = shl nsw i64 %i.abq, 2
  %i.abs = load ptr, ptr %0, align 8, !tbaa !15   ; 9 uses
  %i.abt = trunc nuw i64 %indvars.iv2263.i to i32 ; 9 uses
  %i.abu = mul i32 %i.jh, %i.abt
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abv ; 2 uses
  %i.abx = add i32 %i.abt, 1
  %i.aby = mul i32 %i.abx, %i.jh
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abz ; 2 uses
  %i.acb = add i32 %i.abt, 2
  %i.acc = mul i32 %i.acb, %i.jh
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acd ; 2 uses
  %i.acf = add i32 %i.abt, 3
  %i.acg = mul i32 %i.acf, %i.jh
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.ach ; 2 uses
  %i.acj = add i32 %i.abt, 4
  %i.ack = mul i32 %i.acj, %i.jh
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acl ; 2 uses
  %i.acn = add i32 %i.abt, 5
  %i.aco = mul i32 %i.acn, %i.jh
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acp ; 2 uses
  %i.acr = add i32 %i.abt, 6
  %i.acs = mul i32 %i.acr, %i.jh
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.act ; 2 uses
  %i.acv = mul i32 %indvars.iv2261.i, %i.jh
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acw ; 2 uses
  %i.acy = lshr i32 %i.abt, 4
  %i.acz = lshr i32 %i.abt, 3
  %i.ada = and i32 %i.acz, 1
  %i.adb = add nuw nsw i32 %i.ada, %i.acy
  %i.adc = load ptr, ptr %1, align 8, !tbaa !15, !noalias !132
  %i.add = load i64, ptr %i.ji, align 8, !tbaa !16, !noalias !132
  %i.ade = zext nneg i32 %i.adb to i64
  %i.adf = mul i64 %i.add, %i.ade
  %i.adg = load i64, ptr %i.jj, align 8, !tbaa !17, !noalias !132
  %i.adh = mul i64 %i.adf, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adh ; 4 uses
  br i1 %i.jq, label %.preheader1580.lr.ph.i, label %.preheader1583.i

.preheader1580.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.jr, label %.preheader1580.us.i, label %.preheader1583.thread.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1676.us.i
  %.012311687.us.i = phi ptr [ %i.afv, %._crit_edge1676.us.i ], [ %i.abw, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012351686.us.i = phi ptr [ %i.afw, %._crit_edge1676.us.i ], [ %i.aca, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012371685.us.i = phi ptr [ %i.afx, %._crit_edge1676.us.i ], [ %i.ace, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012391684.us.i = phi ptr [ %i.afy, %._crit_edge1676.us.i ], [ %i.aci, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012411683.us.i = phi ptr [ %i.afz, %._crit_edge1676.us.i ], [ %i.acm, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012441682.us.i = phi ptr [ %i.aga, %._crit_edge1676.us.i ], [ %i.acq, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012461681.us.i = phi ptr [ %i.agb, %._crit_edge1676.us.i ], [ %i.acu, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012481680.us.i = phi ptr [ %i.agc, %._crit_edge1676.us.i ], [ %i.acx, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012501679.us.i = phi ptr [ %i.afu, %._crit_edge1676.us.i ], [ %i.adi, %.preheader1580.lr.ph.i ]
  %.012621678.us.i = phi i32 [ %i.agd, %._crit_edge1676.us.i ], [ 0, %.preheader1580.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1580.us.i
  %indvars.iv2231.i = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2232.i, %bb.ba ] ; 9 uses
  %.112511675.us.i = phi ptr [ %.012501679.us.i, %.preheader1580.us.i ], [ %i.afu, %bb.ba ] ; 9 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %indvars.iv2231.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %indvars.iv2231.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %indvars.iv2231.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %indvars.iv2231.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %indvars.iv2231.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %indvars.iv2231.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %indvars.iv2231.i
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %indvars.iv2231.i
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adq, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aex = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afb = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afe = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aff = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aex)
  store <16 x bfloat> %i.aff, ptr %.112511675.us.i, align 1, !tbaa !18
  %i.afg = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 32
  %i.afh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aey)
  store <16 x bfloat> %i.afh, ptr %i.afg, align 1, !tbaa !18
  %i.afi = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 64
  %i.afj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aez)
  store <16 x bfloat> %i.afj, ptr %i.afi, align 1, !tbaa !18
  %i.afk = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 96
  %i.afl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afa)
  store <16 x bfloat> %i.afl, ptr %i.afk, align 1, !tbaa !18
  %i.afm = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 128
  %i.afn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afb)
  store <16 x bfloat> %i.afn, ptr %i.afm, align 1, !tbaa !18
  %i.afo = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 160
  %i.afp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afc)
  store <16 x bfloat> %i.afp, ptr %i.afo, align 1, !tbaa !18
  %i.afq = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 192
  %i.afr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afd)
  store <16 x bfloat> %i.afr, ptr %i.afq, align 1, !tbaa !18
  %i.afs = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 224
  %i.aft = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afe)
  store <16 x bfloat> %i.aft, ptr %i.afs, align 1, !tbaa !18
  %i.afu = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 256 ; 3 uses
  %indvars.iv.next2232.i = add nuw nsw i64 %indvars.iv2231.i, 1 ; 2 uses
  %exitcond2235.not.i = icmp eq i64 %indvars.iv.next2232.i, %wide.trip.count2234.i
  br i1 %exitcond2235.not.i, label %._crit_edge1676.us.i, label %bb.ba, !llvm.loop !68

._crit_edge1676.us.i:                             ; preds = %bb.ba
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %i.jt ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %i.jt ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %i.jt ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %i.jt ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %i.jt ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %i.jt ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %i.jt ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %i.jt ; 2 uses
  %i.agd = add nuw nsw i32 %.012621678.us.i, 16   ; 2 uses
  %i.age = or disjoint i32 %i.agd, 15
  %i.agf = icmp slt i32 %i.age, %2
  br i1 %i.agf, label %.preheader1580.us.i, label %.preheader1583.i, !llvm.loop !69

.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01262.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.kn, %._crit_edge1676.us.i ] ; 4 uses
  %.01250.lcssa.i = phi ptr [ %i.adi, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afu, %._crit_edge1676.us.i ] ; 3 uses
  %.01248.lcssa.i = phi ptr [ %i.acx, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agc, %._crit_edge1676.us.i ]
  %.01246.lcssa.i = phi ptr [ %i.acu, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agb, %._crit_edge1676.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.acq, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.aga, %._crit_edge1676.us.i ]
  %.01241.lcssa.i = phi ptr [ %i.acm, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afz, %._crit_edge1676.us.i ]
  %.01239.lcssa.i = phi ptr [ %i.aci, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afy, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.ace, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afx, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.aca, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afw, %._crit_edge1676.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.abw, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afv, %._crit_edge1676.us.i ] ; 3 uses
  %i.agg = or disjoint i32 %.01262.lcssa.i, 7
end_hunk_0
