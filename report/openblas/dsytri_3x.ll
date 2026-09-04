Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytri_3x?download=true
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@dsytri_3x_:bb.a
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ua
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !139
  %i.ud = mul nsw i64 %indvars.iv.next1007.3, %i.fw
  %gep1259.3 = getelementptr [8 x i8], ptr %invariant.gep1258, i64 %i.ud
  store double %i.uc, ptr %gep1259.3, align 8, !tbaa !139
  %exitcond1010.not.3 = icmp eq i64 %indvars.iv.next1007.3, %wide.trip.count1009
  br i1 %exitcond1010.not.3, label %._crit_edge770, label %vec.epilog.scalar.ph1596, !llvm.loop !35

._crit_edge770:                                   ; preds = %vec.epilog.scalar.ph1596.prol.loopexit, %vec.epilog.scalar.ph1596, %middle.block1591, %vec.epilog.middle.block1613, %._crit_edge765
  %indvars.iv.next1005 = add nuw nsw i64 %indvars.iv1004, 1 ; 2 uses
  %exitcond1013.not = icmp eq i64 %indvars.iv.next1005, %wide.trip.count1012
  %indvar.next1546 = add i64 %indvar1545, 1
  br i1 %exitcond1013.not, label %..preheader722_crit_edge, label %.lr.ph774, !llvm.loop !36

.preheader721:                                    ; preds = %.loopexit720, %.preheader722
  %.not68277112281232 = phi i1 [ %.not682771, %.preheader722 ], [ %.not68277112281231, %.loopexit720 ]
  br i1 %.not68277112281232, label %._crit_edge803, label %.lr.ph802.preheader

.lr.ph802.preheader:                              ; preds = %.preheader721
  %i.ue = add nuw i32 %i.lf, 1                    ; 2 uses
  %i.uf = add i32 %i.lf, 1
  store i32 %i.lf, ptr %i.c, align 4, !tbaa !137
  br label %.lr.ph802

bb.u:                                             ; preds = %.lr.ph788, %.loopexit720
  %storemerge683787 = phi i32 [ 1, %.lr.ph788 ], [ %i.xb, %.loopexit720 ] ; 8 uses
  %i.ug = sext i32 %storemerge683787 to i64       ; 3 uses
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !137
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %.not68277112281231, label %.loopexit720, label %.lr.ph784

.lr.ph784:                                        ; preds = %bb.v
  %i.uk = add nsw i32 %storemerge683787, %i.fo
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ul ; 5 uses
  %invariant.gep1264 = getelementptr [8 x i8], ptr %i.t, i64 %i.ug ; 5 uses
  br i1 %i.pr, label %.epil.preheader2300, label %.lr.ph784.new

.lr.ph784.new:                                    ; preds = %.lr.ph784, %.lr.ph784.new
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020.3, %.lr.ph784.new ], [ 1, %.lr.ph784 ] ; 5 uses
  %niter2305 = phi i64 [ %niter2305.next.3, %.lr.ph784.new ], [ 0, %.lr.ph784 ]
  %i.un = load double, ptr %i.um, align 8, !tbaa !139
  %i.uo = mul nsw i64 %indvars.iv1019, %i.fw
  %gep1265 = getelementptr [8 x i8], ptr %invariant.gep1264, i64 %i.uo ; 2 uses
  %i.up = load double, ptr %gep1265, align 8, !tbaa !139
  %i.uq = fmul double %i.un, %i.up
  store double %i.uq, ptr %gep1265, align 8, !tbaa !139
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1
  %i.ur = load double, ptr %i.um, align 8, !tbaa !139
  %i.us = mul nsw i64 %indvars.iv.next1020, %i.fw
  %gep1265.1 = getelementptr [8 x i8], ptr %invariant.gep1264, i64 %i.us ; 2 uses
  %i.ut = load double, ptr %gep1265.1, align 8, !tbaa !139
  %i.uu = fmul double %i.ur, %i.ut
  store double %i.uu, ptr %gep1265.1, align 8, !tbaa !139
  %indvars.iv.next1020.1 = add nuw nsw i64 %indvars.iv1019, 2
  %i.uv = load double, ptr %i.um, align 8, !tbaa !139
  %i.uw = mul nsw i64 %indvars.iv.next1020.1, %i.fw
  %gep1265.2 = getelementptr [8 x i8], ptr %invariant.gep1264, i64 %i.uw ; 2 uses
  %i.ux = load double, ptr %gep1265.2, align 8, !tbaa !139
  %i.uy = fmul double %i.uv, %i.ux
  store double %i.uy, ptr %gep1265.2, align 8, !tbaa !139
  %indvars.iv.next1020.2 = add nuw nsw i64 %indvars.iv1019, 3
  %i.uz = load double, ptr %i.um, align 8, !tbaa !139
  %i.va = mul nsw i64 %indvars.iv.next1020.2, %i.fw
  %gep1265.3 = getelementptr [8 x i8], ptr %invariant.gep1264, i64 %i.va ; 2 uses
  %i.vb = load double, ptr %gep1265.3, align 8, !tbaa !139
  %i.vc = fmul double %i.uz, %i.vb
  store double %i.vc, ptr %gep1265.3, align 8, !tbaa !139
  %indvars.iv.next1020.3 = add nuw nsw i64 %indvars.iv1019, 4 ; 2 uses
  %niter2305.next.3 = add nuw i64 %niter2305, 4   ; 2 uses
  %niter2305.ncmp.3 = icmp eq i64 %niter2305.next.3, %unroll_iter2304
  br i1 %niter2305.ncmp.3, label %.loopexit720.loopexit.unr-lcssa, label %.lr.ph784.new, !llvm.loop !37

bb.w:                                             ; preds = %bb.u
  %.pre1179 = add nsw i32 %storemerge683787, 1    ; 6 uses
  br i1 %.not68277112281231, label %.loopexit720, label %.lr.ph779

.lr.ph779:                                        ; preds = %bb.w
  %i.vd = add nsw i32 %storemerge683787, %i.fo
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ve ; 3 uses
  %i.vg = add nsw i32 %storemerge683787, %i.fq
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.vh ; 3 uses
  %i.vj = add nsw i32 %.pre1179, %i.fo
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.vk ; 3 uses
  %i.vm = add nsw i32 %.pre1179, %i.fq
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.vn ; 3 uses
  %i.vp = sext i32 %.pre1179 to i64
  %invariant.gep1260 = getelementptr [8 x i8], ptr %i.t, i64 %i.ug ; 3 uses
  %invariant.gep1262 = getelementptr [8 x i8], ptr %i.t, i64 %i.vp ; 3 uses
  br i1 %i.pq, label %.epil.preheader, label %.lr.ph779.new

.lr.ph779.new:                                    ; preds = %.lr.ph779, %.lr.ph779.new
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015.1, %.lr.ph779.new ], [ 1, %.lr.ph779 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph779.new ], [ 0, %.lr.ph779 ]
  %i.vq = mul nsw i64 %indvars.iv1014, %i.fw      ; 2 uses
  %gep1261 = getelementptr [8 x i8], ptr %invariant.gep1260, i64 %i.vq ; 2 uses
  %i.vr = load double, ptr %gep1261, align 8, !tbaa !139 ; 2 uses
  %gep1263 = getelementptr [8 x i8], ptr %invariant.gep1262, i64 %i.vq ; 2 uses
  %i.vs = load double, ptr %gep1263, align 8, !tbaa !139 ; 2 uses
  %i.vt = load double, ptr %i.vf, align 8, !tbaa !139
  %i.vu = load double, ptr %i.vi, align 8, !tbaa !139
  %i.vv = fmul double %i.vs, %i.vu
  %i.vw = call double @llvm.fmuladd.f64(double %i.vt, double %i.vr, double %i.vv)
  store double %i.vw, ptr %gep1261, align 8, !tbaa !139
  %i.vx = load double, ptr %i.vl, align 8, !tbaa !139
  %i.vy = load double, ptr %i.vo, align 8, !tbaa !139
  %i.vz = fmul double %i.vs, %i.vy
  %i.wa = call double @llvm.fmuladd.f64(double %i.vx, double %i.vr, double %i.vz)
  store double %i.wa, ptr %gep1263, align 8, !tbaa !139
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 1
  %i.wb = mul nsw i64 %indvars.iv.next1015, %i.fw ; 2 uses
  %gep1261.1 = getelementptr [8 x i8], ptr %invariant.gep1260, i64 %i.wb ; 2 uses
  %i.wc = load double, ptr %gep1261.1, align 8, !tbaa !139 ; 2 uses
  %gep1263.1 = getelementptr [8 x i8], ptr %invariant.gep1262, i64 %i.wb ; 2 uses
  %i.wd = load double, ptr %gep1263.1, align 8, !tbaa !139 ; 2 uses
  %i.we = load double, ptr %i.vf, align 8, !tbaa !139
  %i.wf = load double, ptr %i.vi, align 8, !tbaa !139
  %i.wg = fmul double %i.wd, %i.wf
  %i.wh = call double @llvm.fmuladd.f64(double %i.we, double %i.wc, double %i.wg)
  store double %i.wh, ptr %gep1261.1, align 8, !tbaa !139
  %i.wi = load double, ptr %i.vl, align 8, !tbaa !139
  %i.wj = load double, ptr %i.vo, align 8, !tbaa !139
  %i.wk = fmul double %i.wd, %i.wj
  %i.wl = call double @llvm.fmuladd.f64(double %i.wi, double %i.wc, double %i.wk)
  store double %i.wl, ptr %gep1263.1, align 8, !tbaa !139
  %indvars.iv.next1015.1 = add nuw nsw i64 %indvars.iv1014, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit720.loopexit2280.unr-lcssa, label %.lr.ph779.new, !llvm.loop !38

.loopexit720.loopexit.unr-lcssa:                  ; preds = %.lr.ph784.new
  br i1 %lcmp.mod2302.not, label %.loopexit720, label %.epil.preheader2300

.epil.preheader2300:                              ; preds = %.loopexit720.loopexit.unr-lcssa, %.lr.ph784
  %indvars.iv1019.epil.init = phi i64 [ 1, %.lr.ph784 ], [ %indvars.iv.next1020.3, %.loopexit720.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2303)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader2300
  %indvars.iv1019.epil = phi i64 [ %indvars.iv1019.epil.init, %.epil.preheader2300 ], [ %indvars.iv.next1020.epil, %bb.x ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader2300 ], [ %epil.iter.next, %bb.x ]
  %i.wm = load double, ptr %i.um, align 8, !tbaa !139
  %i.wn = mul nsw i64 %indvars.iv1019.epil, %i.fw
  %gep1265.epil = getelementptr [8 x i8], ptr %invariant.gep1264, i64 %i.wn ; 2 uses
  %i.wo = load double, ptr %gep1265.epil, align 8, !tbaa !139
  %i.wp = fmul double %i.wm, %i.wo
  store double %i.wp, ptr %gep1265.epil, align 8, !tbaa !139
  %indvars.iv.next1020.epil = add nuw nsw i64 %indvars.iv1019.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2301
  br i1 %epil.iter.cmp.not, label %.loopexit720, label %bb.x, !llvm.loop !39

.loopexit720.loopexit2280.unr-lcssa:              ; preds = %.lr.ph779.new
  br i1 %lcmp.mod2298.not, label %.loopexit720, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit720.loopexit2280.unr-lcssa, %.lr.ph779
  %indvars.iv1014.epil.init = phi i64 [ 1, %.lr.ph779 ], [ %indvars.iv.next1015.1, %.loopexit720.loopexit2280.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2299)
  %i.wq = mul nsw i64 %indvars.iv1014.epil.init, %i.fw ; 2 uses
  %gep1261.epil = getelementptr [8 x i8], ptr %invariant.gep1260, i64 %i.wq ; 2 uses
  %i.wr = load double, ptr %gep1261.epil, align 8, !tbaa !139 ; 2 uses
  %gep1263.epil = getelementptr [8 x i8], ptr %invariant.gep1262, i64 %i.wq ; 2 uses
  %i.ws = load double, ptr %gep1263.epil, align 8, !tbaa !139 ; 2 uses
  %i.wt = load double, ptr %i.vf, align 8, !tbaa !139
  %i.wu = load double, ptr %i.vi, align 8, !tbaa !139
  %i.wv = fmul double %i.ws, %i.wu
  %i.ww = call double @llvm.fmuladd.f64(double %i.wt, double %i.wr, double %i.wv)
  store double %i.ww, ptr %gep1261.epil, align 8, !tbaa !139
  %i.wx = load double, ptr %i.vl, align 8, !tbaa !139
  %i.wy = load double, ptr %i.vo, align 8, !tbaa !139
  %i.wz = fmul double %i.ws, %i.wy
  %i.xa = call double @llvm.fmuladd.f64(double %i.wx, double %i.wr, double %i.wz)
  store double %i.xa, ptr %gep1263.epil, align 8, !tbaa !139
  br label %.loopexit720

.loopexit720:                                     ; preds = %.epil.preheader, %.loopexit720.loopexit2280.unr-lcssa, %.loopexit720.loopexit.unr-lcssa, %bb.x, %bb.w, %bb.v
  %storemerge683785 = phi i32 [ %.pre1179, %bb.w ], [ %storemerge683787, %bb.v ], [ %storemerge683787, %.loopexit720.loopexit.unr-lcssa ], [ %storemerge683787, %bb.x ], [ %.pre1179, %.loopexit720.loopexit2280.unr-lcssa ], [ %.pre1179, %.epil.preheader ] ; 2 uses
  %i.xb = add nsw i32 %storemerge683785, 1
  %.not684.not = icmp slt i32 %storemerge683785, %i.lg
  br i1 %.not684.not, label %bb.u, label %.preheader721, !llvm.loop !40

.lr.ph802:                                        ; preds = %.lr.ph802.preheader, %.loopexit719
  %storemerge685801 = phi i32 [ %i.aau, %.loopexit719 ], [ 1, %.lr.ph802.preheader ] ; 14 uses
  %i.xc = add nsw i32 %storemerge685801, %i.lg    ; 5 uses
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !137
  %i.xg = icmp sgt i32 %i.xf, 0
  %.not698795 = icmp sgt i32 %storemerge685801, %i.lf ; 2 uses
  br i1 %i.xg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph802
  br i1 %.not698795, label %.loopexit719, label %.lr.ph798

.lr.ph798:                                        ; preds = %bb.y
  %i.xh = add nsw i32 %i.xc, %i.fo
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.xi ; 5 uses
  %i.xk = add nsw i32 %storemerge685801, %i.db
  %i.xl = sext i32 %storemerge685801 to i64       ; 2 uses
  %i.xm = sext i32 %i.xk to i64
  %invariant.gep1268 = getelementptr [8 x i8], ptr %i.t, i64 %i.xm ; 5 uses
  %i.xn = sub i32 %i.uf, %storemerge685801
  %i.xo = sub i32 %i.lf, %storemerge685801
  %xtraiter2311 = and i32 %i.xn, 3                ; 2 uses
  %lcmp.mod2312.not = icmp eq i32 %xtraiter2311, 0
  br i1 %lcmp.mod2312.not, label %.prol.loopexit2310, label %.prol.preheader2309

.prol.preheader2309:                              ; preds = %.lr.ph798, %.prol.preheader2309
  %indvars.iv1029.prol = phi i64 [ %indvars.iv.next1030.prol, %.prol.preheader2309 ], [ %i.xl, %.lr.ph798 ] ; 2 uses
  %prol.iter2313 = phi i32 [ %prol.iter2313.next, %.prol.preheader2309 ], [ 0, %.lr.ph798 ]
  %i.xp = load double, ptr %i.xj, align 8, !tbaa !139
  %i.xq = mul nsw i64 %indvars.iv1029.prol, %i.fw
  %gep1269.prol = getelementptr [8 x i8], ptr %invariant.gep1268, i64 %i.xq ; 2 uses
  %i.xr = load double, ptr %gep1269.prol, align 8, !tbaa !139
  %i.xs = fmul double %i.xp, %i.xr
  store double %i.xs, ptr %gep1269.prol, align 8, !tbaa !139
  %indvars.iv.next1030.prol = add nsw i64 %indvars.iv1029.prol, 1 ; 2 uses
  %prol.iter2313.next = add i32 %prol.iter2313, 1 ; 2 uses
  %prol.iter2313.cmp.not = icmp eq i32 %prol.iter2313.next, %xtraiter2311
  br i1 %prol.iter2313.cmp.not, label %.prol.loopexit2310, label %.prol.preheader2309, !llvm.loop !41

.prol.loopexit2310:                               ; preds = %.prol.preheader2309, %.lr.ph798
  %indvars.iv1029.unr = phi i64 [ %i.xl, %.lr.ph798 ], [ %indvars.iv.next1030.prol, %.prol.preheader2309 ]
  %i.xt = icmp ult i32 %i.xo, 3
  br i1 %i.xt, label %.loopexit719, label %.lr.ph798.new

.lr.ph798.new:                                    ; preds = %.prol.loopexit2310, %.lr.ph798.new
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030.3, %.lr.ph798.new ], [ %indvars.iv1029.unr, %.prol.loopexit2310 ] ; 5 uses
  %i.xu = load double, ptr %i.xj, align 8, !tbaa !139
  %i.xv = mul nsw i64 %indvars.iv1029, %i.fw
  %gep1269 = getelementptr [8 x i8], ptr %invariant.gep1268, i64 %i.xv ; 2 uses
  %i.xw = load double, ptr %gep1269, align 8, !tbaa !139
  %i.xx = fmul double %i.xu, %i.xw
  store double %i.xx, ptr %gep1269, align 8, !tbaa !139
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, 1
  %i.xy = load double, ptr %i.xj, align 8, !tbaa !139
  %i.xz = mul nsw i64 %indvars.iv.next1030, %i.fw
  %gep1269.1 = getelementptr [8 x i8], ptr %invariant.gep1268, i64 %i.xz ; 2 uses
  %i.ya = load double, ptr %gep1269.1, align 8, !tbaa !139
  %i.yb = fmul double %i.xy, %i.ya
  store double %i.yb, ptr %gep1269.1, align 8, !tbaa !139
  %indvars.iv.next1030.1 = add nsw i64 %indvars.iv1029, 2
  %i.yc = load double, ptr %i.xj, align 8, !tbaa !139
  %i.yd = mul nsw i64 %indvars.iv.next1030.1, %i.fw
  %gep1269.2 = getelementptr [8 x i8], ptr %invariant.gep1268, i64 %i.yd ; 2 uses
  %i.ye = load double, ptr %gep1269.2, align 8, !tbaa !139
  %i.yf = fmul double %i.yc, %i.ye
  store double %i.yf, ptr %gep1269.2, align 8, !tbaa !139
  %indvars.iv.next1030.2 = add nsw i64 %indvars.iv1029, 3
  %i.yg = load double, ptr %i.xj, align 8, !tbaa !139
  %i.yh = mul nsw i64 %indvars.iv.next1030.2, %i.fw
  %gep1269.3 = getelementptr [8 x i8], ptr %invariant.gep1268, i64 %i.yh ; 2 uses
  %i.yi = load double, ptr %gep1269.3, align 8, !tbaa !139
  %i.yj = fmul double %i.yg, %i.yi
  store double %i.yj, ptr %gep1269.3, align 8, !tbaa !139
  %indvars.iv.next1030.3 = add nsw i64 %indvars.iv1029, 4 ; 2 uses
  %lftr.wideiv1032.3 = trunc i64 %indvars.iv.next1030.3 to i32
  %exitcond1033.not.3 = icmp eq i32 %i.ue, %lftr.wideiv1032.3
  br i1 %exitcond1033.not.3, label %.loopexit719, label %.lr.ph798.new, !llvm.loop !42

bb.z:                                             ; preds = %.lr.ph802
  br i1 %.not698795, label %._crit_edge794, label %.lr.ph793

.lr.ph793:                                        ; preds = %bb.z
  %i.yk = add nsw i32 %storemerge685801, %i.db    ; 2 uses
  %invariant.op = add i32 %i.yk, 1                ; 3 uses
  %i.yl = add nsw i32 %i.xc, %i.fo
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ym ; 3 uses
  %i.yo = add nsw i32 %i.xc, %i.fq
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.yp ; 3 uses
  %i.yr = add nsw i32 %i.xc, 1                    ; 2 uses
  %i.ys = add nsw i32 %i.yr, %i.fo
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.yt ; 3 uses
  %i.yv = add nsw i32 %i.yr, %i.fq
  %i.yw = sext i32 %i.yv to i64
  %i.yx = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.yw ; 3 uses
  %i.yy = sext i32 %storemerge685801 to i64       ; 3 uses
  %i.yz = sext i32 %i.yk to i64
  %invariant.gep1266 = getelementptr [8 x i8], ptr %i.t, i64 %i.yz ; 3 uses
  %i.za = add i32 %i.lf, %storemerge685801
  %i.zb = and i32 %i.za, 1
  %lcmp.mod2307.not.not = icmp eq i32 %i.zb, 0
  br i1 %lcmp.mod2307.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph793
  %i.zc = mul nsw i64 %i.yy, %i.fw                ; 2 uses
  %gep1267.prol = getelementptr [8 x i8], ptr %invariant.gep1266, i64 %i.zc ; 2 uses
  %i.zd = load double, ptr %gep1267.prol, align 8, !tbaa !139 ; 2 uses
  %i.ze = trunc nsw i64 %i.zc to i32
  %.reass.prol = add i32 %invariant.op, %i.ze
  %i.zf = sext i32 %.reass.prol to i64
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.zf ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !139 ; 2 uses
  %i.zi = load double, ptr %i.yn, align 8, !tbaa !139
  %i.zj = load double, ptr %i.yq, align 8, !tbaa !139
  %i.zk = fmul double %i.zh, %i.zj
  %i.zl = call double @llvm.fmuladd.f64(double %i.zi, double %i.zd, double %i.zk)
  store double %i.zl, ptr %gep1267.prol, align 8, !tbaa !139
  %i.zm = load double, ptr %i.yu, align 8, !tbaa !139
  %i.zn = load double, ptr %i.yx, align 8, !tbaa !139
  %i.zo = fmul double %i.zh, %i.zn
  %i.zp = call double @llvm.fmuladd.f64(double %i.zm, double %i.zd, double %i.zo)
  store double %i.zp, ptr %i.zg, align 8, !tbaa !139
  %indvars.iv.next1025.prol = add nsw i64 %i.yy, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph793
  %indvars.iv1024.unr = phi i64 [ %i.yy, %.lr.ph793 ], [ %indvars.iv.next1025.prol, %.prol.loopexit.unr-lcssa ]
  %i.zq = icmp eq i32 %i.lf, %storemerge685801
  br i1 %i.zq, label %._crit_edge794, label %.lr.ph793.new

.lr.ph793.new:                                    ; preds = %.prol.loopexit, %.lr.ph793.new
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025.1, %.lr.ph793.new ], [ %indvars.iv1024.unr, %.prol.loopexit ] ; 3 uses
  %i.zr = mul nsw i64 %indvars.iv1024, %i.fw      ; 2 uses
  %gep1267 = getelementptr [8 x i8], ptr %invariant.gep1266, i64 %i.zr ; 2 uses
  %i.zs = load double, ptr %gep1267, align 8, !tbaa !139 ; 2 uses
  %i.zt = trunc nsw i64 %i.zr to i32
  %.reass = add i32 %invariant.op, %i.zt
  %i.zu = sext i32 %.reass to i64
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.zu ; 2 uses
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !139 ; 2 uses
  %i.zx = load double, ptr %i.yn, align 8, !tbaa !139
  %i.zy = load double, ptr %i.yq, align 8, !tbaa !139
  %i.zz = fmul double %i.zw, %i.zy
  %i.aaa = call double @llvm.fmuladd.f64(double %i.zx, double %i.zs, double %i.zz)
  store double %i.aaa, ptr %gep1267, align 8, !tbaa !139
  %i.aab = load double, ptr %i.yu, align 8, !tbaa !139
  %i.aac = load double, ptr %i.yx, align 8, !tbaa !139
  %i.aad = fmul double %i.zw, %i.aac
  %i.aae = call double @llvm.fmuladd.f64(double %i.aab, double %i.zs, double %i.aad)
  store double %i.aae, ptr %i.zv, align 8, !tbaa !139
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, 1
  %i.aaf = mul nsw i64 %indvars.iv.next1025, %i.fw ; 2 uses
  %gep1267.1 = getelementptr [8 x i8], ptr %invariant.gep1266, i64 %i.aaf ; 2 uses
  %i.aag = load double, ptr %gep1267.1, align 8, !tbaa !139 ; 2 uses
  %i.aah = trunc nsw i64 %i.aaf to i32
  %.reass.1 = add i32 %invariant.op, %i.aah
  %i.aai = sext i32 %.reass.1 to i64
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aai ; 2 uses
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !139 ; 2 uses
  %i.aal = load double, ptr %i.yn, align 8, !tbaa !139
  %i.aam = load double, ptr %i.yq, align 8, !tbaa !139
  %i.aan = fmul double %i.aak, %i.aam
  %i.aao = call double @llvm.fmuladd.f64(double %i.aal, double %i.aag, double %i.aan)
  store double %i.aao, ptr %gep1267.1, align 8, !tbaa !139
  %i.aap = load double, ptr %i.yu, align 8, !tbaa !139
  %i.aaq = load double, ptr %i.yx, align 8, !tbaa !139
  %i.aar = fmul double %i.aak, %i.aaq
  %i.aas = call double @llvm.fmuladd.f64(double %i.aap, double %i.aag, double %i.aar)
  store double %i.aas, ptr %i.aaj, align 8, !tbaa !139
  %indvars.iv.next1025.1 = add nsw i64 %indvars.iv1024, 2 ; 2 uses
  %lftr.wideiv1027.1 = trunc i64 %indvars.iv.next1025.1 to i32
  %exitcond1028.not.1 = icmp eq i32 %i.ue, %lftr.wideiv1027.1
  br i1 %exitcond1028.not.1, label %._crit_edge794, label %.lr.ph793.new, !llvm.loop !43

._crit_edge794:                                   ; preds = %.prol.loopexit, %.lr.ph793.new, %bb.z
  %i.aat = add nsw i32 %storemerge685801, 1
  br label %.loopexit719

.loopexit719:                                     ; preds = %.prol.loopexit2310, %.lr.ph798.new, %bb.y, %._crit_edge794
  %storemerge685799 = phi i32 [ %i.aat, %._crit_edge794 ], [ %storemerge685801, %bb.y ], [ %storemerge685801, %.lr.ph798.new ], [ %storemerge685801, %.prol.loopexit2310 ] ; 2 uses
  %i.aau = add nsw i32 %storemerge685799, 1       ; 2 uses
  %.not686.not = icmp slt i32 %storemerge685799, %i.lf
  br i1 %.not686.not, label %.lr.ph802, label %._crit_edge803, !llvm.loop !44

._crit_edge803:                                   ; preds = %.loopexit719, %.preheader721
  %storemerge685.lcssa = phi i32 [ 1, %.preheader721 ], [ %i.aau, %.loopexit719 ]
  store i32 %storemerge685.lcssa, ptr %i.f, align 4, !tbaa !137
  %i.aav = load i32, ptr %1, align 4, !tbaa !137
  %i.aaw = add i32 %i.jx, 1
  %i.aax = add i32 %i.aaw, %i.aav
  store i32 %i.aax, ptr %i.c, align 4, !tbaa !137
  %i.aay = add nsw i32 %i.lg, 1
  %i.aaz = mul i32 %i.aay, %i.fr
  %i.aba = sext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aba
  call void @dtrmm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b10, ptr noundef %i.abb, ptr noundef nonnull %3, ptr noundef %i.fv, ptr noundef nonnull %i.c) #8
  %i.abc = load i32, ptr %i.h, align 4, !tbaa !137 ; 4 uses
  %.not688806 = icmp slt i32 %i.abc, 1
  %.pre = load i32, ptr %i.i, align 4, !tbaa !137 ; 2 uses
  br i1 %.not688806, label %._crit_edge810, label %.lr.ph809

.lr.ph809:                                        ; preds = %._crit_edge803
  %i.abd = sext i32 %.pre to i64                  ; 10 uses
  %i.abe = add nuw i32 %i.abc, 1                  ; 2 uses
  %wide.trip.count1042 = zext i32 %i.abe to i64   ; 5 uses
  %invariant.gep1272 = getelementptr [8 x i8], ptr %i.l, i64 %i.abd
  %i.abf = add nsw i64 %wide.trip.count1042, -2
  %i.abg = shl nsw i64 %i.abd, 4
  %i.abh = shl nuw nsw i64 %wide.trip.count1042, 3 ; 2 uses
  %i.abi = add nsw i64 %i.abh, -8
  %i.abj = mul i64 %i.abi, %i.ae
  %i.abk = zext nneg i32 %i.abc to i64
  %i.abl = zext nneg i32 %i.abc to i64
  %i.abm = getelementptr i8, ptr %2, i64 %i.abg
  %i.abn = getelementptr i8, ptr %i.abm, i64 -8
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.abh
  %i.abp = getelementptr i8, ptr %i.ji, i64 %i.abj
  br label %iter.check1522

iter.check1522:                                   ; preds = %.lr.ph809, %.loopexit2266.a
  %indvar1475 = phi i64 [ 0, %.lr.ph809 ], [ %indvar.next1476, %.loopexit2266.a ] ; 7 uses
  %indvars.iv1034 = phi i64 [ 1, %.lr.ph809 ], [ %indvars.iv.next1035, %.loopexit2266.a ] ; 12 uses
  %i.abq = sub i64 %i.abk, %indvar1475            ; 7 uses
  %i.abr = add i64 %indvar1475, %i.abd
  %i.abs = shl i64 %i.abr, 4
  %scevgep1482 = getelementptr i8, ptr %2, i64 %i.abs
  %i.abt = shl nuw nsw i64 %indvar1475, 3         ; 2 uses
  %scevgep1483 = getelementptr i8, ptr %i.abo, i64 %i.abt
  %scevgep1484 = getelementptr i8, ptr %i.abp, i64 %i.abt ; 4 uses
  %i.abu = mul i64 %i.ht, %indvar1475
  %scevgep1485 = getelementptr i8, ptr %i.jj, i64 %i.abu ; 4 uses
  %i.abv = icmp ult ptr %scevgep1484, %scevgep1485
  %umin1486 = select i1 %i.abv, ptr %scevgep1484, ptr %scevgep1485
  %i.abw = icmp ugt ptr %scevgep1484, %scevgep1485
  %umax1487 = select i1 %i.abw, ptr %scevgep1484, ptr %scevgep1485
  %scevgep1488 = getelementptr i8, ptr %umax1487, i64 8
  %gep1271 = getelementptr [8 x i8], ptr %invariant.gep1270, i64 %indvars.iv1034 ; 10 uses
  %gep1273 = getelementptr [8 x i8], ptr %invariant.gep1272, i64 %indvars.iv1034 ; 7 uses
  %min.iters.check1492 = icmp ult i64 %i.abq, 4
  br i1 %min.iters.check1492, label %vec.epilog.scalar.ph1523.preheader, label %vector.scevcheck1473

vector.scevcheck1473:                             ; preds = %iter.check1522
  %i.abx = mul i64 %i.hj, %indvar1475
  %scevgep1477 = getelementptr i8, ptr %i.jk, i64 %i.abx ; 4 uses
  %i.aby = sub i64 %i.abf, %indvar1475
  %mul1478 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jm, i64 %i.aby) ; 2 uses
  %mul.result1479 = extractvalue { i64, i1 } %mul1478, 0 ; 2 uses
  %mul.overflow1480 = extractvalue { i64, i1 } %mul1478, 1
  %i.abz = sub i64 0, %mul.result1479
  %i.aca = getelementptr i8, ptr %scevgep1477, i64 %mul.result1479
  %i.acb = getelementptr i8, ptr %scevgep1477, i64 %i.abz
  %i.acc = icmp ult ptr %i.aca, %scevgep1477
  %i.acd = icmp ugt ptr %i.acb, %scevgep1477
  %i.ace = select i1 %i.jl, i1 %i.acd, i1 %i.acc
  %i.acf = or i1 %i.ace, %mul.overflow1480
  %i.acg = or i1 %ident.check1474, %i.acf
  br i1 %i.acg, label %vec.epilog.scalar.ph1523.preheader, label %vector.memcheck1481

vector.memcheck1481:                              ; preds = %vector.scevcheck1473
  %bound01489 = icmp ult ptr %scevgep1482, %scevgep1488
  %bound11490 = icmp ult ptr %umin1486, %scevgep1483
  %found.conflict1491 = and i1 %bound01489, %bound11490
  br i1 %found.conflict1491, label %vec.epilog.scalar.ph1523.preheader, label %vector.main.loop.iter.check1493

vector.main.loop.iter.check1493:                  ; preds = %vector.memcheck1481
  %min.iters.check1494 = icmp ult i64 %i.abq, 16
  br i1 %min.iters.check1494, label %vec.epilog.ph1526, label %vector.ph1495

vector.ph1495:                                    ; preds = %vector.main.loop.iter.check1493
  %i.ach = and i64 %i.abq, 12
  %n.vec1496 = and i64 %i.abq, -16                ; 4 uses
  %i.aci = add i64 %indvars.iv1034, %n.vec1496    ; 2 uses
  %broadcast.splatinsert1499 = insertelement <4 x i64> poison, i64 %indvars.iv1034, i64 0
  %broadcast.splat1500 = shufflevector <4 x i64> %broadcast.splatinsert1499, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1501 = add nuw nsw <4 x i64> %broadcast.splat1500, <i64 0, i64 1, i64 2, i64 3>
  %i.acj = getelementptr [8 x i8], ptr %gep1273, i64 %indvars.iv1034
  %invariant.gep2397 = getelementptr [8 x i8], ptr %i.acj, i64 %i.abd
  br label %vector.body1502

vector.body1502:                                  ; preds = %vector.body1502, %vector.ph1495
  %index1503 = phi i64 [ 0, %vector.ph1495 ], [ %index.next1516, %vector.body1502 ] ; 2 uses
  %vec.ind1504 = phi <4 x i64> [ %induction1501, %vector.ph1495 ], [ %vec.ind.next1517, %vector.body1502 ] ; 5 uses
  %step.add1505 = add nuw nsw <4 x i64> %vec.ind1504, splat (i64 4)
  %step.add.21506 = add nuw nsw <4 x i64> %vec.ind1504, splat (i64 8)
  %step.add.31507 = add nuw nsw <4 x i64> %vec.ind1504, splat (i64 12)
  %i.ack = mul nsw <4 x i64> %vec.ind1504, %broadcast.splat1498
  %i.acl = mul nsw <4 x i64> %step.add1505, %broadcast.splat1498
  %i.acm = mul nsw <4 x i64> %step.add.21506, %broadcast.splat1498
  %i.acn = mul nsw <4 x i64> %step.add.31507, %broadcast.splat1498
  %wide.gep1508 = getelementptr [8 x i8], ptr %gep1271, <4 x i64> %i.ack
  %wide.gep1509 = getelementptr [8 x i8], ptr %gep1271, <4 x i64> %i.acl
  %wide.gep1510 = getelementptr [8 x i8], ptr %gep1271, <4 x i64> %i.acm
  %wide.gep1511 = getelementptr [8 x i8], ptr %gep1271, <4 x i64> %i.acn
  %wide.masked.gather1512 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1508, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !139, !alias.scope !150
  %wide.masked.gather1513 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1509, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !139, !alias.scope !150
  %wide.masked.gather1514 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1510, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !139, !alias.scope !150
  %wide.masked.gather1515 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1511, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !139, !alias.scope !150
  %gep2398 = getelementptr [8 x i8], ptr %invariant.gep2397, i64 %index1503 ; 4 uses
  %i.aco = getelementptr i8, ptr %gep2398, i64 32
  %i.acp = getelementptr i8, ptr %gep2398, i64 64
  %i.acq = getelementptr i8, ptr %gep2398, i64 96
  store <4 x double> %wide.masked.gather1512, ptr %gep2398, align 8, !tbaa !139, !alias.scope !151, !noalias !150
  store <4 x double> %wide.masked.gather1513, ptr %i.aco, align 8, !tbaa !139, !alias.scope !151, !noalias !150
  store <4 x double> %wide.masked.gather1514, ptr %i.acp, align 8, !tbaa !139, !alias.scope !151, !noalias !150
  store <4 x double> %wide.masked.gather1515, ptr %i.acq, align 8, !tbaa !139, !alias.scope !151, !noalias !150
  %index.next1516 = add nuw i64 %index1503, 16    ; 2 uses
  %vec.ind.next1517 = add nuw nsw <4 x i64> %vec.ind1504, splat (i64 16)
  %i.acr = icmp eq i64 %index.next1516, %n.vec1496
  br i1 %i.acr, label %middle.block1518, label %vector.body1502, !llvm.loop !48

middle.block1518:                                 ; preds = %vector.body1502
  %cmp.n1519 = icmp eq i64 %i.abq, %n.vec1496
  br i1 %cmp.n1519, label %.loopexit2266.a, label %vec.epilog.iter.check1524

vec.epilog.iter.check1524:                        ; preds = %middle.block1518
  %min.epilog.iters.check1525 = icmp eq i64 %i.ach, 0
  br i1 %min.epilog.iters.check1525, label %vec.epilog.scalar.ph1523.preheader, label %vec.epilog.ph1526, !prof !143

vec.epilog.ph1526:                                ; preds = %vector.main.loop.iter.check1493, %vec.epilog.iter.check1524
  %vec.epilog.resume.val1520 = phi i64 [ %n.vec1496, %vec.epilog.iter.check1524 ], [ 0, %vector.main.loop.iter.check1493 ]
  %bc.resume.val1521 = phi i64 [ %i.aci, %vec.epilog.iter.check1524 ], [ %indvars.iv1034, %vector.main.loop.iter.check1493 ]
  %n.vec1527 = and i64 %i.abq, -4                 ; 3 uses
  %i.acs = add i64 %indvars.iv1034, %n.vec1527
  %broadcast.splatinsert1530 = insertelement <4 x i64> poison, i64 %bc.resume.val1521, i64 0
  %broadcast.splat1531 = shufflevector <4 x i64> %broadcast.splatinsert1530, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1532 = add nuw nsw <4 x i64> %broadcast.splat1531, <i64 0, i64 1, i64 2, i64 3>
  %i.act = getelementptr [8 x i8], ptr %gep1273, i64 %indvars.iv1034
  %invariant.gep2399 = getelementptr [8 x i8], ptr %i.act, i64 %i.abd
  br label %vec.epilog.vector.body1533

vec.epilog.vector.body1533:                       ; preds = %vec.epilog.vector.body1533, %vec.epilog.ph1526
  %index1534 = phi i64 [ %vec.epilog.resume.val1520, %vec.epilog.ph1526 ], [ %index.next1538, %vec.epilog.vector.body1533 ] ; 2 uses
  %vec.ind1535 = phi <4 x i64> [ %induction1532, %vec.epilog.ph1526 ], [ %vec.ind.next1539, %vec.epilog.vector.body1533 ] ; 2 uses
  %i.acu = mul nsw <4 x i64> %vec.ind1535, %broadcast.splat1529
  %wide.gep1536 = getelementptr [8 x i8], ptr %gep1271, <4 x i64> %i.acu
  %wide.masked.gather1537 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1536, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !139, !alias.scope !150
  %gep2400 = getelementptr [8 x i8], ptr %invariant.gep2399, i64 %index1534
  store <4 x double> %wide.masked.gather1537, ptr %gep2400, align 8, !tbaa !139, !alias.scope !151, !noalias !150
  %index.next1538 = add nuw i64 %index1534, 4     ; 2 uses
  %vec.ind.next1539 = add nuw nsw <4 x i64> %vec.ind1535, splat (i64 4)
  %i.acv = icmp eq i64 %index.next1538, %n.vec1527
  br i1 %i.acv, label %vec.epilog.middle.block1540, label %vec.epilog.vector.body1533, !llvm.loop !49

vec.epilog.middle.block1540:                      ; preds = %vec.epilog.vector.body1533
  %cmp.n1541 = icmp eq i64 %i.abq, %n.vec1527
  br i1 %cmp.n1541, label %.loopexit2266.a, label %vec.epilog.scalar.ph1523.preheader

vec.epilog.scalar.ph1523.preheader:               ; preds = %vector.memcheck1481, %vector.scevcheck1473, %iter.check1522, %vec.epilog.iter.check1524, %vec.epilog.middle.block1540
  %indvars.iv1036.ph = phi i64 [ %indvars.iv1034, %iter.check1522 ], [ %indvars.iv1034, %vector.scevcheck1473 ], [ %indvars.iv1034, %vector.memcheck1481 ], [ %i.aci, %vec.epilog.iter.check1524 ], [ %i.acs, %vec.epilog.middle.block1540 ] ; 4 uses
  %i.acw = sub i64 %wide.trip.count1042, %indvars.iv1036.ph
  %i.acx = sub i64 %i.abl, %indvars.iv1036.ph
  %xtraiter2314 = and i64 %i.acw, 3               ; 2 uses
  %lcmp.mod2315.not = icmp eq i64 %xtraiter2314, 0
  br i1 %lcmp.mod2315.not, label %vec.epilog.scalar.ph1523.prol.loopexit, label %vec.epilog.scalar.ph1523.prol

vec.epilog.scalar.ph1523.prol:                    ; preds = %vec.epilog.scalar.ph1523.preheader, %vec.epilog.scalar.ph1523.prol
  %indvars.iv1036.prol = phi i64 [ %indvars.iv.next1037.prol, %vec.epilog.scalar.ph1523.prol ], [ %indvars.iv1036.ph, %vec.epilog.scalar.ph1523.preheader ] ; 3 uses
  %prol.iter2316 = phi i64 [ %prol.iter2316.next, %vec.epilog.scalar.ph1523.prol ], [ 0, %vec.epilog.scalar.ph1523.preheader ]
  %i.acy = mul nsw i64 %indvars.iv1036.prol, %i.fw
  %i.acz = getelementptr [8 x i8], ptr %gep1271, i64 %i.acy
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !139
  %i.adb = add nsw i64 %indvars.iv1036.prol, %i.abd
  %i.adc = mul nsw i64 %i.adb, %i.fy
  %i.add = getelementptr [8 x i8], ptr %gep1273, i64 %i.adc
  store double %i.ada, ptr %i.add, align 8, !tbaa !139
  %indvars.iv.next1037.prol = add nuw nsw i64 %indvars.iv1036.prol, 1 ; 2 uses
  %prol.iter2316.next = add i64 %prol.iter2316, 1 ; 2 uses
  %prol.iter2316.cmp.not = icmp eq i64 %prol.iter2316.next, %xtraiter2314
  br i1 %prol.iter2316.cmp.not, label %vec.epilog.scalar.ph1523.prol.loopexit, label %vec.epilog.scalar.ph1523.prol, !llvm.loop !50

vec.epilog.scalar.ph1523.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1523.prol, %vec.epilog.scalar.ph1523.preheader
  %indvars.iv1036.unr = phi i64 [ %indvars.iv1036.ph, %vec.epilog.scalar.ph1523.preheader ], [ %indvars.iv.next1037.prol, %vec.epilog.scalar.ph1523.prol ]
  %i.ade = icmp ult i64 %i.acx, 3
  br i1 %i.ade, label %.loopexit2266.a, label %vec.epilog.scalar.ph1523

vec.epilog.scalar.ph1523:                         ; preds = %vec.epilog.scalar.ph1523.prol.loopexit, %vec.epilog.scalar.ph1523
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037.3, %vec.epilog.scalar.ph1523 ], [ %indvars.iv1036.unr, %vec.epilog.scalar.ph1523.prol.loopexit ] ; 6 uses
  %i.adf = mul nsw i64 %indvars.iv1036, %i.fw
  %i.adg = getelementptr [8 x i8], ptr %gep1271, i64 %i.adf
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !139
  %i.adi = add nsw i64 %indvars.iv1036, %i.abd
  %i.adj = mul nsw i64 %i.adi, %i.fy
  %i.adk = getelementptr [8 x i8], ptr %gep1273, i64 %i.adj
  store double %i.adh, ptr %i.adk, align 8, !tbaa !139
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %i.adl = mul nsw i64 %indvars.iv.next1037, %i.fw
end_hunk_0
