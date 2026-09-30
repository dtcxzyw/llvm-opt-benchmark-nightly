Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
begin_hunk_0_@local_laplacian_internal:bb.a
  %lcmp.mod1595.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1595.not, label %.lr.ph.i705.5.preheader, label %.lr.ph.i697.5.epil.preheader

.lr.ph.i697.5.epil.preheader:                     ; preds = %.lr.ph.i705.5.preheader.unr-lcssa, %.lr.ph.i697.5.preheader
  %.056.i699.5.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.5.preheader ], [ %i.wj, %.lr.ph.i705.5.preheader.unr-lcssa ]
  %lcmp.mod1597 = icmp ne i64 %xtraiter1593, 0
  tail call void @llvm.assume(i1 %lcmp.mod1597)
  br label %.lr.ph.i697.5.epil

.lr.ph.i697.5.epil:                               ; preds = %.lr.ph.i697.5.epil, %.lr.ph.i697.5.epil.preheader
  %.056.i699.5.epil = phi i32 [ %i.wk, %.lr.ph.i697.5.epil ], [ %.056.i699.5.epil.init, %.lr.ph.i697.5.epil.preheader ]
  %epil.iter1594 = phi i64 [ %epil.iter1594.next, %.lr.ph.i697.5.epil ], [ 0, %.lr.ph.i697.5.epil.preheader ]
  %i.wk = sdiv i32 %.056.i699.5.epil, 2           ; 2 uses
  %epil.iter1594.next = add i64 %epil.iter1594, 1 ; 2 uses
  %epil.iter1594.cmp.not = icmp eq i64 %epil.iter1594.next, %xtraiter1593
  br i1 %epil.iter1594.cmp.not, label %.lr.ph.i705.5.preheader, label %.lr.ph.i697.5.epil, !llvm.loop !80

.lr.ph.i705.5.preheader:                          ; preds = %.lr.ph.i697.5.epil, %.lr.ph.i705.5.preheader.unr-lcssa
  %.lcssa1395 = phi i32 [ %i.wj, %.lr.ph.i705.5.preheader.unr-lcssa ], [ %i.wk, %.lr.ph.i697.5.epil ]
  %xtraiter1600 = and i64 %indvars.iv958.5, 7     ; 3 uses
  %i.wl = icmp samesign ult i64 %indvars.iv958.5, 8
  br i1 %i.wl, label %.lr.ph.i705.5.epil.preheader, label %.lr.ph.i705.5.preheader.new

.lr.ph.i705.5.preheader.new:                      ; preds = %.lr.ph.i705.5.preheader
  %unroll_iter1605 = and i64 %indvars.iv958.5, 9223372036854775800
  br label %.lr.ph.i705.5

.lr.ph.i705.5:                                    ; preds = %.lr.ph.i705.5, %.lr.ph.i705.5.preheader.new
  %.056.i707.5 = phi i32 [ %.pre1081, %.lr.ph.i705.5.preheader.new ], [ %i.wm, %.lr.ph.i705.5 ]
  %niter1606 = phi i64 [ 0, %.lr.ph.i705.5.preheader.new ], [ %niter1606.next.7, %.lr.ph.i705.5 ]
  %i.wm = sdiv i32 %.056.i707.5, 256              ; 3 uses
  %niter1606.next.7 = add i64 %niter1606, 8       ; 2 uses
  %niter1606.ncmp.7 = icmp eq i64 %niter1606.next.7, %unroll_iter1605
  br i1 %niter1606.ncmp.7, label %._crit_edge.loopexit.i709.5.unr-lcssa, label %.lr.ph.i705.5

._crit_edge.loopexit.i709.5.unr-lcssa:            ; preds = %.lr.ph.i705.5
  %lcmp.mod1602.not = icmp eq i64 %xtraiter1600, 0
  br i1 %lcmp.mod1602.not, label %._crit_edge.loopexit.i709.5, label %.lr.ph.i705.5.epil.preheader

.lr.ph.i705.5.epil.preheader:                     ; preds = %._crit_edge.loopexit.i709.5.unr-lcssa, %.lr.ph.i705.5.preheader
  %.056.i707.5.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.5.preheader ], [ %i.wm, %._crit_edge.loopexit.i709.5.unr-lcssa ]
  %lcmp.mod1604 = icmp ne i64 %xtraiter1600, 0
  tail call void @llvm.assume(i1 %lcmp.mod1604)
  br label %.lr.ph.i705.5.epil

.lr.ph.i705.5.epil:                               ; preds = %.lr.ph.i705.5.epil, %.lr.ph.i705.5.epil.preheader
  %.056.i707.5.epil = phi i32 [ %i.wn, %.lr.ph.i705.5.epil ], [ %.056.i707.5.epil.init, %.lr.ph.i705.5.epil.preheader ]
  %epil.iter1601 = phi i64 [ %epil.iter1601.next, %.lr.ph.i705.5.epil ], [ 0, %.lr.ph.i705.5.epil.preheader ]
  %i.wn = sdiv i32 %.056.i707.5.epil, 2           ; 2 uses
  %epil.iter1601.next = add i64 %epil.iter1601, 1 ; 2 uses
  %epil.iter1601.cmp.not = icmp eq i64 %epil.iter1601.next, %xtraiter1600
  br i1 %epil.iter1601.cmp.not, label %._crit_edge.loopexit.i709.5, label %.lr.ph.i705.5.epil, !llvm.loop !81

._crit_edge.loopexit.i709.5:                      ; preds = %.lr.ph.i705.5.epil, %._crit_edge.loopexit.i709.5.unr-lcssa
  %.lcssa1396 = phi i32 [ %i.wm, %._crit_edge.loopexit.i709.5.unr-lcssa ], [ %i.wn, %.lr.ph.i705.5.epil ]
  %i.wo = add nsw i32 %.lcssa1395, 1
  %i.wp = add nsw i32 %.lcssa1396, 1
  br label %dl.exit710.5

dl.exit710.5:                                     ; preds = %._crit_edge.loopexit.i709.5, %bb.x
  %.in833.5 = phi i32 [ %i.wo, %._crit_edge.loopexit.i709.5 ], [ %.pre, %bb.x ]
  %.05.lcssa.i703.5 = phi i32 [ %i.wp, %._crit_edge.loopexit.i709.5 ], [ %.pre1074, %bb.x ]
  %i.wq = sext i32 %.in833.5 to i64
  %i.wr = sext i32 %.05.lcssa.i703.5 to i64
  %i.ws = shl nsw i64 %i.wq, 2
  %i.wt = mul i64 %i.ws, %i.wr
  %i.wu = tail call ptr @dt_alloc_aligned(i64 noundef %i.wt) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.wu, i64 64) ]
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %indvars.iv958.5
  store ptr %i.wu, ptr %i.wv, align 8, !tbaa !17
  %.not620.5 = icmp eq ptr %i.wu, null
  br i1 %.not620.5, label %iter.check1336, label %bb.y

bb.y:                                             ; preds = %dl.exit710.5
  %indvars.iv.next959.5 = add nuw nsw i64 %indvars.iv958.5, 1 ; 2 uses
  %exitcond962.5.not = icmp eq i64 %indvars.iv.next959.5, %wide.trip.count947.pre-phi
  br i1 %exitcond962.5.not, label %.thread807.5, label %bb.x

bb.z:                                             ; preds = %._crit_edge885
  br i1 %.not, label %bb.ag, label %bb.aa

.thread807.5:                                     ; preds = %bb.y, %._crit_edge885
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %._crit_edge885 ], [ 0, %bb.y ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %indvars.iv1013 ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 16, !tbaa !17 ; 2 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv1013
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !21
  tail call void @apply_curve(ptr noundef %i.wx, ptr noundef %storemerge, i32 noundef %.pre, i32 noundef %.pre1074, i32 noundef %i.ma, float noundef %i.wz, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  br i1 %.not612871, label %._crit_edge885, label %.lr.ph884

._crit_edge885:                                   ; preds = %dl.exit726, %.thread807.5
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %exitcond1016.not = icmp eq i64 %indvars.iv.next1014, 6
  br i1 %exitcond1016.not, label %bb.z, label %.thread807.5

.lr.ph884:                                        ; preds = %.thread807.5, %dl.exit726
  %indvar1607 = phi i64 [ %indvar.next1608, %dl.exit726 ], [ 0, %.thread807.5 ] ; 4 uses
  %i.xa = phi ptr [ %i.xe, %dl.exit726 ], [ %i.wx, %.thread807.5 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %dl.exit726 ], [ 1, %.thread807.5 ] ; 4 uses
  %i.xb = add i64 %indvar1607, -1                 ; 2 uses
  %i.xc = add nsw i64 %indvars.iv1008, -1         ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv1008
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !17 ; 2 uses
  %i.xf = icmp samesign ugt i64 %indvars.iv1008, 1
  br i1 %i.xf, label %.lr.ph.i713.preheader, label %dl.exit726

.lr.ph.i713.preheader:                            ; preds = %.lr.ph884
  %xtraiter1609 = and i64 %i.xc, 7                ; 3 uses
  %i.xg = icmp ult i64 %i.xb, 7
  br i1 %i.xg, label %.lr.ph.i713.epil.preheader, label %.lr.ph.i713.preheader.new

.lr.ph.i713.preheader.new:                        ; preds = %.lr.ph.i713.preheader
  %unroll_iter1614 = and i64 %i.xc, -8
  br label %.lr.ph.i713

.lr.ph.i713:                                      ; preds = %.lr.ph.i713, %.lr.ph.i713.preheader.new
  %.056.i715 = phi i32 [ %.pre1079, %.lr.ph.i713.preheader.new ], [ %i.xh, %.lr.ph.i713 ]
  %niter1615 = phi i64 [ 0, %.lr.ph.i713.preheader.new ], [ %niter1615.next.7, %.lr.ph.i713 ]
  %i.xh = sdiv i32 %.056.i715, 256                ; 3 uses
  %niter1615.next.7 = add i64 %niter1615, 8       ; 2 uses
  %niter1615.ncmp.7 = icmp eq i64 %niter1615.next.7, %unroll_iter1614
  br i1 %niter1615.ncmp.7, label %.lr.ph.i721.preheader.unr-lcssa, label %.lr.ph.i713

.lr.ph.i721.preheader.unr-lcssa:                  ; preds = %.lr.ph.i713
  %lcmp.mod1611.not = icmp eq i64 %xtraiter1609, 0
  br i1 %lcmp.mod1611.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil.preheader

.lr.ph.i713.epil.preheader:                       ; preds = %.lr.ph.i721.preheader.unr-lcssa, %.lr.ph.i713.preheader
  %.056.i715.epil.init = phi i32 [ %.pre1079, %.lr.ph.i713.preheader ], [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ]
  %lcmp.mod1613 = icmp ne i64 %xtraiter1609, 0
  tail call void @llvm.assume(i1 %lcmp.mod1613)
  br label %.lr.ph.i713.epil

.lr.ph.i713.epil:                                 ; preds = %.lr.ph.i713.epil, %.lr.ph.i713.epil.preheader
  %.056.i715.epil = phi i32 [ %i.xi, %.lr.ph.i713.epil ], [ %.056.i715.epil.init, %.lr.ph.i713.epil.preheader ]
  %epil.iter1610 = phi i64 [ %epil.iter1610.next, %.lr.ph.i713.epil ], [ 0, %.lr.ph.i713.epil.preheader ]
  %i.xi = sdiv i32 %.056.i715.epil, 2             ; 2 uses
  %epil.iter1610.next = add i64 %epil.iter1610, 1 ; 2 uses
  %epil.iter1610.cmp.not = icmp eq i64 %epil.iter1610.next, %xtraiter1609
  br i1 %epil.iter1610.cmp.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil, !llvm.loop !82

.lr.ph.i721.preheader:                            ; preds = %.lr.ph.i713.epil, %.lr.ph.i721.preheader.unr-lcssa
  %.lcssa1393 = phi i32 [ %i.xh, %.lr.ph.i721.preheader.unr-lcssa ], [ %i.xi, %.lr.ph.i713.epil ]
  %xtraiter1616 = and i64 %indvar1607, 7          ; 3 uses
  %i.xj = icmp ult i64 %i.xb, 7
  br i1 %i.xj, label %.lr.ph.i721.epil.preheader, label %.lr.ph.i721.preheader.new

.lr.ph.i721.preheader.new:                        ; preds = %.lr.ph.i721.preheader
  %unroll_iter1621 = and i64 %indvar1607, -8
  br label %.lr.ph.i721

._crit_edge.loopexit.i725.unr-lcssa:              ; preds = %.lr.ph.i721
  %lcmp.mod1618.not = icmp eq i64 %xtraiter1616, 0
  br i1 %lcmp.mod1618.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil.preheader

.lr.ph.i721.epil.preheader:                       ; preds = %._crit_edge.loopexit.i725.unr-lcssa, %.lr.ph.i721.preheader
  %.056.i723.epil.init = phi i32 [ %.pre1081, %.lr.ph.i721.preheader ], [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ]
  %lcmp.mod1620 = icmp ne i64 %xtraiter1616, 0
  tail call void @llvm.assume(i1 %lcmp.mod1620)
  br label %.lr.ph.i721.epil

.lr.ph.i721.epil:                                 ; preds = %.lr.ph.i721.epil, %.lr.ph.i721.epil.preheader
  %.056.i723.epil = phi i32 [ %i.xk, %.lr.ph.i721.epil ], [ %.056.i723.epil.init, %.lr.ph.i721.epil.preheader ]
  %epil.iter1617 = phi i64 [ %epil.iter1617.next, %.lr.ph.i721.epil ], [ 0, %.lr.ph.i721.epil.preheader ]
  %i.xk = sdiv i32 %.056.i723.epil, 2             ; 2 uses
  %epil.iter1617.next = add i64 %epil.iter1617, 1 ; 2 uses
  %epil.iter1617.cmp.not = icmp eq i64 %epil.iter1617.next, %xtraiter1616
  br i1 %epil.iter1617.cmp.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil, !llvm.loop !83

._crit_edge.loopexit.i725:                        ; preds = %.lr.ph.i721.epil, %._crit_edge.loopexit.i725.unr-lcssa
  %.lcssa1394 = phi i32 [ %i.xn, %._crit_edge.loopexit.i725.unr-lcssa ], [ %i.xk, %.lr.ph.i721.epil ]
  %i.xl = add nsw i32 %.lcssa1393, 1
  %i.xm = add nsw i32 %.lcssa1394, 1
  br label %dl.exit726

.lr.ph.i721:                                      ; preds = %.lr.ph.i721, %.lr.ph.i721.preheader.new
  %.056.i723 = phi i32 [ %.pre1081, %.lr.ph.i721.preheader.new ], [ %i.xn, %.lr.ph.i721 ]
  %niter1622 = phi i64 [ 0, %.lr.ph.i721.preheader.new ], [ %niter1622.next.7, %.lr.ph.i721 ]
  %i.xn = sdiv i32 %.056.i723, 256                ; 3 uses
  %niter1622.next.7 = add i64 %niter1622, 8       ; 2 uses
  %niter1622.ncmp.7 = icmp eq i64 %niter1622.next.7, %unroll_iter1621
  br i1 %niter1622.ncmp.7, label %._crit_edge.loopexit.i725.unr-lcssa, label %.lr.ph.i721

dl.exit726:                                       ; preds = %.lr.ph884, %._crit_edge.loopexit.i725
  %.in831 = phi i32 [ %i.xl, %._crit_edge.loopexit.i725 ], [ %.pre, %.lr.ph884 ]
  %.05.lcssa.i719 = phi i32 [ %i.xm, %._crit_edge.loopexit.i725 ], [ %.pre1074, %.lr.ph884 ]
  %i.xo = sext i32 %.in831 to i64
  %i.xp = sext i32 %.05.lcssa.i719 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.xa, ptr noundef %i.xe, i64 noundef %i.xo, i64 noundef %i.xp)
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count947.pre-phi
  %indvar.next1608 = add i64 %indvar1607, 1
  br i1 %exitcond1012.not, label %._crit_edge885, label %.lr.ph884

bb.aa:                                            ; preds = %bb.z
  %i.xq = load i32, ptr %8, align 8, !tbaa !18
  %i.xr = icmp eq i32 %i.xq, 2
  br i1 %i.xr, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %9 = uitofp nneg i32 %.0528797 to float
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %9) ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !26
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !28
  %i.xw = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !29
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !30
  %i.ya = sitofp reassoc nsz arcp contract afn i32 %i.xz to float
  %i.yb = fmul reassoc nsz arcp contract afn float %i.xv, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !111
  %i.ye = sitofp reassoc nsz arcp contract afn i32 %i.yd to float
  %i.yf = fmul reassoc nsz arcp contract afn float %exp2, %i.ye
  %i.yg = fdiv reassoc nsz arcp contract afn float %i.yf, %i.yb
  %i.yh = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !16 ; 2 uses
  %i.yj = add nsw i32 %i.yi, -1
  %i.yk = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.yg) ; 2 uses
  %i.yl = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yn = fadd reassoc nsz arcp contract afn <2 x float> %i.ym, <float -0.000000e+00, float 1.000000e+00>
  %i.yo = fptosi <2 x float> %i.yn to <2 x i32>   ; 2 uses
  %i.yp = insertelement <2 x i32> poison, i32 %i.yi, i64 0
  %i.yq = shufflevector <2 x i32> %i.yp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yr = icmp sgt <2 x i32> %i.yq, %i.yo
  %i.ys = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yo, <2 x i32> zeroinitializer)
  %i.yt = insertelement <2 x i32> poison, i32 %i.yj, i64 0
  %i.yu = shufflevector <2 x i32> %i.yt, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yv = select <2 x i1> %i.yr, <2 x i32> %i.ys, <2 x i32> %i.yu ; 3 uses
  %i.yw = extractelement <2 x i32> %i.yv, i64 0   ; 10 uses
  %i.yx = sitofp reassoc nsz arcp contract afn i32 %i.yw to float
  %i.yy = fsub reassoc nsz arcp contract afn float %i.yk, %i.yx ; 3 uses
  %i.yz = fcmp reassoc nsz arcp contract afn ogt float %i.yy, 1.000000e+00
  %i.za = fcmp reassoc nsz arcp contract afn olt float %i.yy, 0.000000e+00
  %i.zb = select reassoc nsz arcp contract afn i1 %i.za, float 0.000000e+00, float %i.yy
  %i.zc = select reassoc nsz arcp contract afn i1 %i.yz, float 1.000000e+00, float %i.zb
  %i.zd = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.yv)
  %i.ze = fdiv reassoc nnan nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.zd
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.zg = icmp sgt i32 %.0528797, 0
  br i1 %i.zg, label %.lr.ph.i729.preheader, label %dl.exit742

.lr.ph.i729.preheader:                            ; preds = %bb.ab
  %xtraiter1623 = and i32 %.0528797, 7            ; 3 uses
  %i.zh = icmp ult i32 %.0528797, 8
  br i1 %i.zh, label %.lr.ph.i729.epil.preheader, label %.lr.ph.i729.preheader.new

.lr.ph.i729.preheader.new:                        ; preds = %.lr.ph.i729.preheader
  %unroll_iter1628 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i729

.lr.ph.i729:                                      ; preds = %.lr.ph.i729, %.lr.ph.i729.preheader.new
  %.056.i731 = phi i32 [ %.pre1079, %.lr.ph.i729.preheader.new ], [ %i.zi, %.lr.ph.i729 ]
  %niter1629 = phi i32 [ 0, %.lr.ph.i729.preheader.new ], [ %niter1629.next.7, %.lr.ph.i729 ]
  %i.zi = sdiv i32 %.056.i731, 256                ; 3 uses
  %niter1629.next.7 = add nuw nsw i32 %niter1629, 8 ; 2 uses
  %niter1629.ncmp.7 = icmp eq i32 %niter1629.next.7, %unroll_iter1628
  br i1 %niter1629.ncmp.7, label %.lr.ph.i737.preheader.unr-lcssa, label %.lr.ph.i729

.lr.ph.i737.preheader.unr-lcssa:                  ; preds = %.lr.ph.i729
  %lcmp.mod1625.not = icmp eq i32 %xtraiter1623, 0
  br i1 %lcmp.mod1625.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil.preheader

.lr.ph.i729.epil.preheader:                       ; preds = %.lr.ph.i737.preheader.unr-lcssa, %.lr.ph.i729.preheader
  %.056.i731.epil.init = phi i32 [ %.pre1079, %.lr.ph.i729.preheader ], [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ]
  %lcmp.mod1627 = icmp ne i32 %xtraiter1623, 0
  tail call void @llvm.assume(i1 %lcmp.mod1627)
  br label %.lr.ph.i729.epil

.lr.ph.i729.epil:                                 ; preds = %.lr.ph.i729.epil, %.lr.ph.i729.epil.preheader
  %.056.i731.epil = phi i32 [ %i.zj, %.lr.ph.i729.epil ], [ %.056.i731.epil.init, %.lr.ph.i729.epil.preheader ]
  %epil.iter1624 = phi i32 [ %epil.iter1624.next, %.lr.ph.i729.epil ], [ 0, %.lr.ph.i729.epil.preheader ]
  %i.zj = sdiv i32 %.056.i731.epil, 2             ; 2 uses
  %epil.iter1624.next = add i32 %epil.iter1624, 1 ; 2 uses
  %epil.iter1624.cmp.not = icmp eq i32 %epil.iter1624.next, %xtraiter1623
  br i1 %epil.iter1624.cmp.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil, !llvm.loop !84

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i729.epil, %.lr.ph.i737.preheader.unr-lcssa
  %.lcssa1392 = phi i32 [ %i.zi, %.lr.ph.i737.preheader.unr-lcssa ], [ %i.zj, %.lr.ph.i729.epil ]
  %xtraiter1630 = and i32 %.0528797, 7            ; 3 uses
  %i.zk = icmp ult i32 %.0528797, 8
  br i1 %i.zk, label %.lr.ph.i737.epil.preheader, label %.lr.ph.i737.preheader.new

.lr.ph.i737.preheader.new:                        ; preds = %.lr.ph.i737.preheader
  %unroll_iter1635 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i737

._crit_edge.loopexit.i741.unr-lcssa:              ; preds = %.lr.ph.i737
  %lcmp.mod1632.not = icmp eq i32 %xtraiter1630, 0
  br i1 %lcmp.mod1632.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil.preheader

.lr.ph.i737.epil.preheader:                       ; preds = %._crit_edge.loopexit.i741.unr-lcssa, %.lr.ph.i737.preheader
  %.056.i739.epil.init = phi i32 [ %.pre1081, %.lr.ph.i737.preheader ], [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ]
  %lcmp.mod1634 = icmp ne i32 %xtraiter1630, 0
  tail call void @llvm.assume(i1 %lcmp.mod1634)
  br label %.lr.ph.i737.epil

.lr.ph.i737.epil:                                 ; preds = %.lr.ph.i737.epil, %.lr.ph.i737.epil.preheader
  %.056.i739.epil = phi i32 [ %i.zl, %.lr.ph.i737.epil ], [ %.056.i739.epil.init, %.lr.ph.i737.epil.preheader ]
  %epil.iter1631 = phi i32 [ %epil.iter1631.next, %.lr.ph.i737.epil ], [ 0, %.lr.ph.i737.epil.preheader ]
  %i.zl = sdiv i32 %.056.i739.epil, 2             ; 2 uses
  %epil.iter1631.next = add i32 %epil.iter1631, 1 ; 2 uses
  %epil.iter1631.cmp.not = icmp eq i32 %epil.iter1631.next, %xtraiter1630
  br i1 %epil.iter1631.cmp.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil, !llvm.loop !85

._crit_edge.loopexit.i741:                        ; preds = %.lr.ph.i737.epil, %._crit_edge.loopexit.i741.unr-lcssa
  %.lcssa1391 = phi i32 [ %i.zo, %._crit_edge.loopexit.i741.unr-lcssa ], [ %i.zl, %.lr.ph.i737.epil ]
  %i.zm = add nsw i32 %.lcssa1392, 1
  %i.zn = add nsw i32 %.lcssa1391, 1
  br label %dl.exit742

.lr.ph.i737:                                      ; preds = %.lr.ph.i737, %.lr.ph.i737.preheader.new
  %.056.i739 = phi i32 [ %.pre1081, %.lr.ph.i737.preheader.new ], [ %i.zo, %.lr.ph.i737 ]
  %niter1636 = phi i32 [ 0, %.lr.ph.i737.preheader.new ], [ %niter1636.next.7, %.lr.ph.i737 ]
  %i.zo = sdiv i32 %.056.i739, 256                ; 3 uses
  %niter1636.next.7 = add i32 %niter1636, 8       ; 2 uses
  %niter1636.ncmp.7 = icmp eq i32 %niter1636.next.7, %unroll_iter1635
  br i1 %niter1636.ncmp.7, label %._crit_edge.loopexit.i741.unr-lcssa, label %.lr.ph.i737

dl.exit742:                                       ; preds = %bb.ab, %._crit_edge.loopexit.i741
  %.05.lcssa.i727813 = phi i32 [ %i.zm, %._crit_edge.loopexit.i741 ], [ %.pre, %bb.ab ] ; 4 uses
  %.05.lcssa.i735 = phi i32 [ %i.zn, %._crit_edge.loopexit.i741 ], [ %.pre1074, %bb.ab ] ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !112 ; 4 uses
  %i.zr = icmp sgt i32 %i.yw, 0
  br i1 %i.zr, label %.lr.ph.preheader.i744, label %dl.exit750

.lr.ph.preheader.i744:                            ; preds = %dl.exit742
  %i.zs = add nsw i32 %i.zq, -1                   ; 2 uses
  %xtraiter1637 = and i32 %i.yw, 7                ; 3 uses
  %i.zt = icmp ult i32 %i.yw, 8
  br i1 %i.zt, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1642 = and i32 %i.yw, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zs, %.lr.ph.preheader.i744.new ], [ %i.zu, %.lr.ph.i745 ]
  %niter1643 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1643.next.7, %.lr.ph.i745 ]
  %i.zu = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1643.next.7 = add nuw nsw i32 %niter1643, 8 ; 2 uses
  %niter1643.ncmp.7 = icmp eq i32 %niter1643.next.7, %unroll_iter1642
  br i1 %niter1643.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zv = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !113 ; 2 uses
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1639.not = icmp eq i32 %xtraiter1637, 0
  br i1 %lcmp.mod1639.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zs, %.lr.ph.preheader.i744 ], [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1641 = icmp ne i32 %xtraiter1637, 0
  tail call void @llvm.assume(i1 %lcmp.mod1641)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zx, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1638 = phi i32 [ %epil.iter1638.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zx = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1638.next = add i32 %epil.iter1638, 1 ; 2 uses
  %epil.iter1638.cmp.not = icmp eq i32 %epil.iter1638.next, %xtraiter1637
  br i1 %epil.iter1638.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !86

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1390 = phi i32 [ %i.zu, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zx, %.lr.ph.i745.epil ]
  %i.zy = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !113 ; 2 uses
  %i.aaa = add nsw i32 %i.zz, -1                  ; 2 uses
  %xtraiter1644 = and i32 %i.yw, 7                ; 3 uses
  %i.aab = icmp ult i32 %i.yw, 8
  br i1 %i.aab, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1649 = and i32 %i.yw, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1646.not = icmp eq i32 %xtraiter1644, 0
  br i1 %lcmp.mod1646.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
  %.056.i755.epil.init = phi i32 [ %i.aaa, %.lr.ph.preheader.i752 ], [ %i.aaf, %._crit_edge.loopexit.i757.unr-lcssa ]
  %lcmp.mod1648 = icmp ne i32 %xtraiter1644, 0
  tail call void @llvm.assume(i1 %lcmp.mod1648)
  br label %.lr.ph.i753.epil

.lr.ph.i753.epil:                                 ; preds = %.lr.ph.i753.epil, %.lr.ph.i753.epil.preheader
  %.056.i755.epil = phi i32 [ %i.aac, %.lr.ph.i753.epil ], [ %.056.i755.epil.init, %.lr.ph.i753.epil.preheader ]
  %epil.iter1645 = phi i32 [ %epil.iter1645.next, %.lr.ph.i753.epil ], [ 0, %.lr.ph.i753.epil.preheader ]
  %i.aac = sdiv i32 %.056.i755.epil, 2            ; 2 uses
  %epil.iter1645.next = add i32 %epil.iter1645, 1 ; 2 uses
  %epil.iter1645.cmp.not = icmp eq i32 %epil.iter1645.next, %xtraiter1644
  br i1 %epil.iter1645.cmp.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil, !llvm.loop !87

end_hunk_0
begin_hunk_1_@ll_laplacian:bb.a
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !21
  %i.cu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cv = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cn, i64 1
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cs
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cx
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul reassoc nsz arcp contract afn double %i.da, 2.400000e+01
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, 4.000000e+00
  %i.de = fadd reassoc nsz arcp contract afn double %i.dd, %i.db
  %i.df = fmul reassoc nsz arcp contract afn double %i.de, 1.562500e-02
  %i.dg = fptrunc reassoc nsz arcp contract afn double %i.df to float
  br label %ll_expand_gaussian.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dh = sext i32 %i.q to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr i8, ptr %i.di, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !21
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = add nsw i32 %i.q, %i.m
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !21
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %i.dp, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !21
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 2.500000e-01
  br label %ll_expand_gaussian.exit

ll_expand_gaussian.exit:                          ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi nsz float [ %i.be, %bb.f ], [ %i.cg, %bb.g ], [ %i.dg, %bb.h ], [ %i.dv, %bb.i ]
  %i.dw = mul nsw i32 %4, %3
  %i.dx = add nsw i32 %i.dw, %2
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !21
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %.0.i
  ret float %i.eb
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @local_laplacian_memory_use(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = xor i32 %i.b, 31
  %spec.select = select i1 %i.c, i32 30, i32 %i.d ; 3 uses
  %i.e = shl nuw i32 1, %spec.select              ; 2 uses
  %i.f = add nsw i32 %i.e, %0                     ; 2 uses
  %i.g = add nsw i32 %i.e, %1                     ; 2 uses
  %.not36 = icmp eq i32 %spec.select, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %dl.exit31, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %dl.exit31 ]
  ret i64 %.022.lcssa

bb.b:                                             ; preds = %.lr.ph, %dl.exit31
  %.035 = phi i32 [ 0, %.lr.ph ], [ %i.v, %dl.exit31 ] ; 8 uses
  %.02234 = phi i64 [ 0, %.lr.ph ], [ %i.u, %dl.exit31 ]
  %.not = icmp eq i32 %.035, 0
  br i1 %.not, label %dl.exit31, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %.035, 7                    ; 3 uses
  %i.j = icmp samesign ult i32 %.035, 8
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.035, 2147483640
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056.i = phi i32 [ %i.h, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.k = sdiv i32 %.056.i, 256                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i26.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i26.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i26.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.056.i.epil.init = phi i32 [ %i.h, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ]
  %lcmp.mod46 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.l, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.l = sdiv i32 %.056.i.epil, 2                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i26.preheader, label %.lr.ph.i.epil, !llvm.loop !227

.lr.ph.i26.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i26.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.k, %.lr.ph.i26.preheader.unr-lcssa ], [ %i.l, %.lr.ph.i.epil ]
  %xtraiter47 = and i32 %.035, 7                  ; 3 uses
  %i.m = icmp samesign ult i32 %.035, 8
  br i1 %i.m, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter52 = and i32 %.035, 2147483640
  br label %.lr.ph.i26

._crit_edge.loopexit.i30.unr-lcssa:               ; preds = %.lr.ph.i26
  %lcmp.mod49.not = icmp eq i32 %xtraiter47, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %._crit_edge.loopexit.i30.unr-lcssa, %.lr.ph.i26.preheader
  %.056.i28.epil.init = phi i32 [ %i.i, %.lr.ph.i26.preheader ], [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %.056.i28.epil = phi i32 [ %i.n, %.lr.ph.i26.epil ], [ %.056.i28.epil.init, %.lr.ph.i26.epil.preheader ]
  %epil.iter48 = phi i32 [ %epil.iter48.next, %.lr.ph.i26.epil ], [ 0, %.lr.ph.i26.epil.preheader ]
  %i.n = sdiv i32 %.056.i28.epil, 2               ; 2 uses
  %epil.iter48.next = add i32 %epil.iter48, 1     ; 2 uses
  %epil.iter48.cmp.not = icmp eq i32 %epil.iter48.next, %xtraiter47
  br i1 %epil.iter48.cmp.not, label %._crit_edge.loopexit.i30, label %.lr.ph.i26.epil, !llvm.loop !228

._crit_edge.loopexit.i30:                         ; preds = %.lr.ph.i26.epil, %._crit_edge.loopexit.i30.unr-lcssa
  %.lcssa43 = phi i32 [ %i.q, %._crit_edge.loopexit.i30.unr-lcssa ], [ %i.n, %.lr.ph.i26.epil ]
  %i.o = add nsw i32 %.lcssa, 1
  %i.p = add nsw i32 %.lcssa43, 1
  br label %dl.exit31

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %.056.i28 = phi i32 [ %i.i, %.lr.ph.i26.preheader.new ], [ %i.q, %.lr.ph.i26 ]
  %niter53 = phi i32 [ 0, %.lr.ph.i26.preheader.new ], [ %niter53.next.7, %.lr.ph.i26 ]
  %i.q = sdiv i32 %.056.i28, 256                  ; 3 uses
  %niter53.next.7 = add i32 %niter53, 8           ; 2 uses
  %niter53.ncmp.7 = icmp eq i32 %niter53.next.7, %unroll_iter52
  br i1 %niter53.ncmp.7, label %._crit_edge.loopexit.i30.unr-lcssa, label %.lr.ph.i26

dl.exit31:                                        ; preds = %bb.b, %._crit_edge.loopexit.i30
  %.in.in = phi i32 [ %i.o, %._crit_edge.loopexit.i30 ], [ %i.f, %bb.b ]
  %.05.lcssa.i24 = phi i32 [ %i.p, %._crit_edge.loopexit.i30 ], [ %i.g, %bb.b ]
  %.in = sext i32 %.in.in to i64
  %i.r = shl nsw i64 %.in, 5
  %i.s = sext i32 %.05.lcssa.i24 to i64
  %i.t = mul i64 %i.r, %i.s
  %i.u = add i64 %i.t, %.02234                    ; 2 uses
  %i.v = add nuw nsw i32 %.035, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @local_laplacian_singlebuffer_size(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = sub nsw i32 30, %i.b
  %i.e = shl nuw nsw i32 2, %i.d
  %i.f = select i1 %i.c, i32 1073741824, i32 %i.e ; 2 uses
  %i.g = add nsw i32 %i.f, %0
  %i.h = add nsw i32 %i.f, %1
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = sext i32 %i.h to i64
  %i.l = mul i64 %i.j, %i.k
  ret i64 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 float", !11, i64 0}
!13 = !{!"p1 _ZTS12dt_iop_roi_t", !11, i64 0}
!14 = !{!"local_laplacian_boundary_t", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !13, i64 40, !7, i64 48, !8, i64 288}
!15 = !{!14, !12, i64 8}
!16 = !{!14, !8, i64 288}
!17 = !{!12, !12, i64 0}
!18 = !{!14, !8, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!"float", !7, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = !{!14, !13, i64 32}
!27 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !20, i64 16}
!28 = !{!27, !20, i64 16}
!29 = !{!14, !13, i64 40}
!30 = !{!27, !8, i64 8}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = distinct !{!32, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !22, !23}
!36 = distinct !{!36, !22, !23}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !22, !23}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !22, !23}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !22, !23}
!49 = distinct !{!49, !22, !23}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !22, !23}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !22, !23}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = distinct !{!68, !22, !23}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !22, !23}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !22, !23}
!93 = distinct !{!93, !22, !23}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !98}
!102 = distinct !{!102, !22, !23}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !165}
!105 = !{!33}
!106 = !{!34}
!107 = !{!39}
!108 = !{!40}
!109 = !{!46}
!110 = !{!47}
!111 = !{!14, !8, i64 16}
!112 = !{!14, !8, i64 24}
!113 = !{!14, !8, i64 28}
!114 = !{!"dt_codepath_t", !8, i64 0}
!115 = !{!"p1 _ZTS6_GList", !11, i64 0}
!116 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!117 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!118 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!119 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!120 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!121 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!122 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!123 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!124 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!125 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!126 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!127 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!128 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!129 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!130 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!131 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!132 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!133 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!134 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!135 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!136 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!137 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!138 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!139 = !{!"dt_pthread_mutex_t", !7, i64 0}
!140 = !{!"p1 omnipotent char", !11, i64 0}
!141 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!142 = !{!"_Bool", !7, i64 0}
!143 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!144 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!145 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!146 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!147 = !{!"", !141, i64 0, !139, i64 8, !7, i64 48, !142, i64 96, !142, i64 97, !143, i64 104, !144, i64 112, !145, i64 120, !146, i64 128, !146, i64 136, !146, i64 144}
!148 = !{!"double", !7, i64 0}
!149 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!150 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!151 = !{!"long", !7, i64 0}
!152 = !{!"p1 int", !11, i64 0}
!153 = !{!"dt_sys_resources_t", !151, i64 0, !151, i64 8, !152, i64 16, !152, i64 24, !8, i64 32}
!154 = !{!"dt_backthumb_t", !148, i64 0, !148, i64 8, !8, i64 16, !8, i64 20}
!155 = !{!"dt_gimp_t", !8, i64 0, !140, i64 8, !140, i64 16, !8, i64 24, !8, i64 28}
!156 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!157 = !{!"dt_splash_t", !156, i64 0, !156, i64 8, !156, i64 16, !156, i64 24, !8, i64 32}
!158 = !{!"darktable_t", !114, i64 0, !8, i64 4, !8, i64 8, !115, i64 16, !115, i64 24, !115, i64 32, !115, i64 40, !116, i64 48, !117, i64 56, !118, i64 64, !119, i64 72, !120, i64 80, !121, i64 88, !122, i64 96, !123, i64 104, !124, i64 112, !125, i64 120, !126, i64 128, !127, i64 136, !128, i64 144, !129, i64 152, !130, i64 160, !131, i64 168, !132, i64 176, !133, i64 184, !134, i64 192, !135, i64 200, !136, i64 208, !137, i64 216, !138, i64 224, !7, i64 232, !139, i64 2792, !139, i64 2832, !139, i64 2872, !139, i64 2912, !139, i64 2952, !139, i64 2992, !140, i64 3032, !140, i64 3040, !140, i64 3048, !140, i64 3056, !140, i64 3064, !140, i64 3072, !140, i64 3080, !140, i64 3088, !140, i64 3096, !140, i64 3104, !140, i64 3112, !140, i64 3120, !140, i64 3128, !147, i64 3136, !115, i64 3288, !148, i64 3296, !115, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !149, i64 3520, !150, i64 3528, !153, i64 3536, !154, i64 3576, !155, i64 3600, !157, i64 3632, !8, i64 3672}
!159 = !{!158, !140, i64 3096}
end_hunk_1
