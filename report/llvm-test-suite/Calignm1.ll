begin_hunk_0_@Calignm1:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vq, i8 0, i64 12, i1 false), !tbaa !50
  %indvars.iv.next534.1 = add nuw nsw i64 %indvars.iv533, 2 ; 2 uses
  %niter853.next.1 = add i64 %niter853, 2         ; 2 uses
  %niter853.ncmp.1 = icmp eq i64 %niter853.next.1, %unroll_iter852
  br i1 %niter853.ncmp.1, label %.preheader379.thread.unr-lcssa, label %.preheader381, !llvm.loop !57

.preheader379.thread.unr-lcssa:                   ; preds = %.preheader381
  %i.vr = and i64 %i.ag, 1
  %lcmp.mod850.not.not = icmp eq i64 %i.vr, 0
  br i1 %lcmp.mod850.not.not, label %.preheader381.epil.preheader, label %.preheader379.thread

.preheader381.epil.preheader:                     ; preds = %.preheader379.thread.unr-lcssa, %.preheader381.lr.ph
  %indvars.iv533.epil.init = phi i64 [ 0, %.preheader381.lr.ph ], [ %indvars.iv.next534.1, %.preheader379.thread.unr-lcssa ]
  %lcmp.mod851 = trunc i64 %i.va to i1
  tail call void @llvm.assume(i1 %lcmp.mod851)
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv533.epil.init
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !38 ; 3 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vu, i8 0, i64 12, i1 false), !tbaa !50
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vw, i8 0, i64 12, i1 false), !tbaa !50
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vy, i8 0, i64 12, i1 false), !tbaa !50
  br label %.preheader379.thread

.preheader379.thread:                             ; preds = %.preheader379.thread.unr-lcssa, %.preheader381.epil.preheader
  br i1 %.not387, label %.preheader378.thread, label %.lr.ph422.preheader

.preheader378.thread:                             ; preds = %.preheader379.thread
  %i.vz = add nuw i32 %i.ah, 2
  %.pre639.pre.pre680 = load ptr, ptr @Calignm1.gs, align 8
  br label %.preheader377.lr.ph

.lr.ph422.preheader:                              ; preds = %.preheader379.thread
  %i.wa = load i32, ptr @penalty, align 4
  %i.wb = sitofp i32 %i.wa to float               ; 7 uses
  %i.wc = load ptr, ptr @Calignm1.g, align 8
  %i.wd = and i64 %i.ag, 2147483647
  %i.we = add nuw nsw i64 %i.ag, 1
  %i.wf = add nuw i32 %4, 1
  %wide.trip.count546 = zext i32 %i.wf to i64
  %wide.trip.count541 = and i64 %i.we, 4294967295
  br label %.lr.ph422

.preheader378:                                    ; preds = %._crit_edge423, %._crit_edge413
  %i.wg = add i32 %i.ah, 2                        ; 2 uses
  %i.wh = icmp sgt i32 %i.ah, -2
  %.pre639.pre.pre = load ptr, ptr @Calignm1.gs, align 8 ; 2 uses
  br i1 %i.wh, label %.preheader377.lr.ph, label %.preheader376

.preheader377.lr.ph:                              ; preds = %.preheader378.thread, %.preheader378
  %.pre639.pre.pre681 = phi ptr [ %.pre639.pre.pre680, %.preheader378.thread ], [ %.pre639.pre.pre, %.preheader378 ] ; 2 uses
  %i.wi = phi i32 [ %i.vz, %.preheader378.thread ], [ %i.wg, %.preheader378 ] ; 2 uses
  %i.wj = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.wi, i32 1)
  %wide.trip.count562 = zext nneg i32 %smax to i64
  br label %.preheader377

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge423
  %indvars.iv543 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next544, %._crit_edge423 ] ; 3 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv543
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !26
  %i.wm = fptrunc double %i.wl to float           ; 4 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv543
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !8
  %i.wp = fmul float %i.wm, 0.000000e+00          ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph422, %bb.j
  %indvars.iv538 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next539, %bb.j ] ; 4 uses
  %.0322419 = phi i32 [ 0, %.lr.ph422 ], [ %spec.store.select, %bb.j ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv538
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !11
  %i.ws = icmp eq i8 %i.wr, 45
  %i.wt = icmp ne i64 %indvars.iv538, %i.wd
  %narrow = select i1 %i.wt, i1 %i.ws, i1 false   ; 3 uses
  %spec.store.select = zext i1 %narrow to i32
  %i.wu = xor i32 %.0322419, 1                    ; 2 uses
  %i.wv = uitofp nneg i32 %i.wu to float          ; 2 uses
  %i.ww = select i1 %narrow, float %i.wv, float 0.000000e+00
  %i.wx = fmul float %i.ww, %i.wm
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv538
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !38 ; 3 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !43 ; 4 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !50
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.wx, float %i.wb, float %i.xb)
  store float %i.xc, ptr %i.xa, align 4, !tbaa !50
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !43 ; 3 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !50
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.wp, float %i.wb, float %i.xf)
  store float %i.xg, ptr %i.xe, align 4, !tbaa !50
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !43 ; 3 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !50
  %i.xk = tail call float @llvm.fmuladd.f32(float %i.wp, float %i.wb, float %i.xj)
  store float %i.xk, ptr %i.xi, align 4, !tbaa !50
  %i.xl = add nuw nsw i32 %i.wu, %.0322419
  %i.xm = uitofp nneg i32 %i.xl to float
  %i.xn = select i1 %narrow, float 0.000000e+00, float %i.xm
  %i.xo = fmul float %i.xn, %i.wm
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xa, i64 4 ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !50
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xo, float %i.wb, float %i.xq)
  store float %i.xr, ptr %i.xp, align 4, !tbaa !50
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xe, i64 4 ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !50
  %i.xu = tail call float @llvm.fmuladd.f32(float %i.wp, float %i.wb, float %i.xt)
  store float %i.xu, ptr %i.xs, align 4, !tbaa !50
  %i.xv = fmul float %i.wm, %i.wv
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !50
  %i.xy = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.wb, float %i.xx)
  store float %i.xy, ptr %i.xw, align 4, !tbaa !50
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !50
  %i.yb = tail call float @llvm.fmuladd.f32(float %i.wp, float %i.wb, float %i.ya)
  store float %i.yb, ptr %i.xz, align 4, !tbaa !50
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond542.not = icmp eq i64 %indvars.iv.next539, %wide.trip.count541
  br i1 %exitcond542.not, label %._crit_edge423, label %bb.j, !llvm.loop !58

._crit_edge423:                                   ; preds = %bb.j
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next544, %wide.trip.count546
  br i1 %exitcond547.not, label %.preheader378, label %.lr.ph422, !llvm.loop !59

.loopexit:                                        ; preds = %scalar.ph787.prol.loopexit, %scalar.ph787, %middle.block795
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %indvars.iv.next556 = add nuw nsw i64 %indvars.iv555, 1
  %exitcond563.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count562
  br i1 %exitcond563.not, label %.preheader376, label %.preheader377, !llvm.loop !60

.preheader377:                                    ; preds = %.preheader377.lr.ph, %.loopexit
  %indvars.iv557 = phi i64 [ 0, %.preheader377.lr.ph ], [ %indvars.iv.next558, %.loopexit ] ; 4 uses
  %indvars.iv555 = phi i64 [ 2, %.preheader377.lr.ph ], [ %indvars.iv.next556, %.loopexit ] ; 6 uses
  %i.yc = add nuw i64 %indvars.iv557, 1
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv557
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !43 ; 7 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.pre639.pre.pre681, i64 %indvars.iv557
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !43 ; 7 uses
  %min.iters.check788 = icmp samesign ult i64 %indvars.iv555, 8
  %i.yh = ptrtoaddr ptr %i.yg to i64
  %i.yi = ptrtoaddr ptr %i.ye to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %diff.check786 = icmp ult i64 %i.yj, 32
  %or.cond827 = select i1 %min.iters.check788, i1 true, i1 %diff.check786
  br i1 %or.cond827, label %scalar.ph787.preheader, label %vector.ph789

vector.ph789:                                     ; preds = %.preheader377
  %n.vec791 = and i64 %indvars.iv555, 9223372036854775800 ; 3 uses
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph789
  %index793 = phi i64 [ 0, %vector.ph789 ], [ %index.next794, %vector.body792 ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %index793 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  store <4 x float> zeroinitializer, ptr %i.yk, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %i.yl, align 4, !tbaa !50
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %index793 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store <4 x float> zeroinitializer, ptr %i.ym, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %i.yn, align 4, !tbaa !50
  %index.next794 = add nuw i64 %index793, 8       ; 2 uses
  %i.yo = icmp eq i64 %index.next794, %n.vec791
  br i1 %i.yo, label %middle.block795, label %vector.body792, !llvm.loop !61

middle.block795:                                  ; preds = %vector.body792
  %cmp.n796 = icmp eq i64 %indvars.iv555, %n.vec791
  br i1 %cmp.n796, label %.loopexit, label %scalar.ph787.preheader

scalar.ph787.preheader:                           ; preds = %.preheader377, %middle.block795
  %indvars.iv548.ph = phi i64 [ 0, %.preheader377 ], [ %n.vec791, %middle.block795 ] ; 3 uses
  %i.yp = sub i64 %i.yc, %indvars.iv548.ph
  %xtraiter854 = and i64 %indvars.iv555, 3        ; 2 uses
  %lcmp.mod855.not = icmp eq i64 %xtraiter854, 0
  br i1 %lcmp.mod855.not, label %scalar.ph787.prol.loopexit, label %scalar.ph787.prol

scalar.ph787.prol:                                ; preds = %scalar.ph787.preheader, %scalar.ph787.prol
  %indvars.iv548.prol = phi i64 [ %indvars.iv.next549.prol, %scalar.ph787.prol ], [ %indvars.iv548.ph, %scalar.ph787.preheader ] ; 3 uses
  %prol.iter856 = phi i64 [ %prol.iter856.next, %scalar.ph787.prol ], [ 0, %scalar.ph787.preheader ]
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv548.prol
  store float 0.000000e+00, ptr %i.yq, align 4, !tbaa !50
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv548.prol
  store float 0.000000e+00, ptr %i.yr, align 4, !tbaa !50
  %indvars.iv.next549.prol = add nuw nsw i64 %indvars.iv548.prol, 1 ; 2 uses
  %prol.iter856.next = add i64 %prol.iter856, 1   ; 2 uses
  %prol.iter856.cmp.not = icmp eq i64 %prol.iter856.next, %xtraiter854
  br i1 %prol.iter856.cmp.not, label %scalar.ph787.prol.loopexit, label %scalar.ph787.prol, !llvm.loop !62

scalar.ph787.prol.loopexit:                       ; preds = %scalar.ph787.prol, %scalar.ph787.preheader
  %indvars.iv548.unr = phi i64 [ %indvars.iv548.ph, %scalar.ph787.preheader ], [ %indvars.iv.next549.prol, %scalar.ph787.prol ]
  %i.ys = icmp ult i64 %i.yp, 3
  br i1 %i.ys, label %.loopexit, label %scalar.ph787

.preheader376:                                    ; preds = %.loopexit, %.preheader378
  %.pre639.pre.pre682 = phi ptr [ %.pre639.pre.pre, %.preheader378 ], [ %.pre639.pre.pre681, %.loopexit ] ; 5 uses
  %i.yt = phi i32 [ %i.wg, %.preheader378 ], [ %i.wi, %.loopexit ]
  br i1 %.not387, label %.preheader375, label %.lr.ph438.a

.lr.ph438.a:                                      ; preds = %.preheader376
  %6 = load ptr, ptr @Calignm1.gl, align 8
  %i.yu = add i64 %i.ag, 1
  %i.yv = add nuw i32 %4, 1
  %wide.trip.count572 = zext i32 %i.yv to i64
  %wide.trip.count567 = and i64 %i.yu, 4294967295
  br label %7

scalar.ph787:                                     ; preds = %scalar.ph787.prol.loopexit, %scalar.ph787
  %indvars.iv548 = phi i64 [ %indvars.iv.next549.3, %scalar.ph787 ], [ %indvars.iv548.unr, %scalar.ph787.prol.loopexit ] ; 6 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv548
  store float 0.000000e+00, ptr %i.yw, align 4, !tbaa !50
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv548
  store float 0.000000e+00, ptr %i.yx, align 4, !tbaa !50
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next549
  store float 0.000000e+00, ptr %i.yy, align 4, !tbaa !50
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next549
  store float 0.000000e+00, ptr %i.yz, align 4, !tbaa !50
  %indvars.iv.next549.1 = add nuw nsw i64 %indvars.iv548, 2 ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next549.1
  store float 0.000000e+00, ptr %i.za, align 4, !tbaa !50
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next549.1
  store float 0.000000e+00, ptr %i.zb, align 4, !tbaa !50
  %indvars.iv.next549.2 = add nuw nsw i64 %indvars.iv548, 3 ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next549.2
  store float 0.000000e+00, ptr %i.zc, align 4, !tbaa !50
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next549.2
  store float 0.000000e+00, ptr %i.zd, align 4, !tbaa !50
  %indvars.iv.next549.3 = add nuw nsw i64 %indvars.iv548, 4 ; 2 uses
  %exitcond554.3 = icmp eq i64 %indvars.iv.next549.3, %indvars.iv555
  br i1 %exitcond554.3, label %.loopexit, label %scalar.ph787, !llvm.loop !63

.preheader375:                                    ; preds = %._crit_edge435, %.preheader376
  br i1 %.not342407, label %._crit_edge447, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %i.ze = load ptr, ptr @Calignm1.gl, align 8
  %i.zf = add nuw nsw i64 %i.ag, 1
  %wide.trip.count591 = and i64 %i.zf, 4294967295
  br label %.preheader374

7:                                                ; preds = %.lr.ph438.a, %._crit_edge435
  %indvars.iv569 = phi i64 [ 0, %.lr.ph438.a ], [ %indvars.iv.next570, %._crit_edge435 ] ; 3 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv569
  %9 = load double, ptr %8, align 8, !tbaa !26
  %10 = fptrunc double %9 to float                ; 2 uses
  br i1 %.not342407, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %7
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv569
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !8
  %i.zi = load i32, ptr @penalty, align 4
  %i.zj = sitofp i32 %i.zi to float               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph434, %bb.n
  %indvars.iv564 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next565, %bb.n ] ; 4 uses
  %.0323431 = phi i32 [ 0, %.lr.ph434 ], [ %.1324, %bb.n ]
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 %indvars.iv564 ; 2 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !11
  %i.zm = icmp eq i8 %i.zl, 45
  br i1 %i.zm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.zn = add nsw i32 %.0323431, 1                ; 3 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %.pre639.pre.pre682, i64 %indvars.iv564
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !43
  %i.zq = sext i32 %i.zn to i64                   ; 2 uses
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.zq ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !50
  %i.zt = tail call float @llvm.fmuladd.f32(float %10, float %i.zj, float %i.zs)
  store float %i.zt, ptr %i.zr, align 4, !tbaa !50
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zk, i64 1
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !11
  %.not361 = icmp eq i8 %i.zv, 45
  br i1 %.not361, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv564
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !43
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.zq ; 2 uses
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !50
  %i.aaa = tail call float @llvm.fmuladd.f32(float %10, float %i.zj, float %i.zz)
  store float %i.aaa, ptr %i.zy, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1324 = phi i32 [ %i.zn, %bb.m ], [ %i.zn, %bb.l ], [ 0, %bb.k ]
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count567
  br i1 %exitcond568.not, label %._crit_edge435, label %bb.k, !llvm.loop !64

._crit_edge435:                                   ; preds = %bb.n, %7
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %exitcond573.not = icmp eq i64 %indvars.iv.next570, %wide.trip.count572
  br i1 %exitcond573.not, label %.preheader375, label %7, !llvm.loop !65

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv581 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next582, %._crit_edge444 ] ; 9 uses
  %i.aab = shl i64 %indvars.iv581, 2
  %.not359439 = icmp eq i64 %indvars.iv581, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader374
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %.pre639.pre.pre682, i64 %indvars.iv581
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !43 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %.pre638 = load float, ptr %.phi.trans.insert, align 4, !tbaa !50 ; 2 uses
  %xtraiter858 = and i64 %indvars.iv581, 3        ; 3 uses
  %i.aae = icmp samesign ult i64 %indvars.iv581, 4
  br i1 %i.aae, label %.epil.preheader857, label %.lr.ph441.new

.lr.ph441.new:                                    ; preds = %.lr.ph441
  %unroll_iter862 = and i64 %indvars.iv581, 9223372036854775804
  br label %bb.p

.lr.ph443.unr-lcssa:                              ; preds = %bb.p
  %lcmp.mod860.not = icmp eq i64 %xtraiter858, 0
  br i1 %lcmp.mod860.not, label %.lr.ph443, label %.epil.preheader857

.epil.preheader857:                               ; preds = %.lr.ph443.unr-lcssa, %.lr.ph441
  %.epil.init = phi float [ %.pre638, %.lr.ph441 ], [ %i.abb, %.lr.ph443.unr-lcssa ]
  %indvars.iv574.epil.init = phi i64 [ 1, %.lr.ph441 ], [ %indvars.iv.next575.3, %.lr.ph443.unr-lcssa ]
  %lcmp.mod861 = icmp ne i64 %xtraiter858, 0
  tail call void @llvm.assume(i1 %lcmp.mod861)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader857
  %i.aaf = phi float [ %.epil.init, %.epil.preheader857 ], [ %i.aai, %bb.o ]
  %indvars.iv574.epil = phi i64 [ %indvars.iv574.epil.init, %.epil.preheader857 ], [ %indvars.iv.next575.epil, %bb.o ]
  %epil.iter859 = phi i64 [ 0, %.epil.preheader857 ], [ %epil.iter859.next, %bb.o ]
  %indvars.iv.next575.epil = add nuw nsw i64 %indvars.iv574.epil, 1 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv.next575.epil ; 2 uses
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !50
  %i.aai = fadd float %i.aaf, %i.aah              ; 2 uses
  store float %i.aai, ptr %i.aag, align 4, !tbaa !50
  %epil.iter859.next = add i64 %epil.iter859, 1   ; 2 uses
  %epil.iter859.cmp.not = icmp eq i64 %epil.iter859.next, %xtraiter858
  br i1 %epil.iter859.cmp.not, label %.lr.ph443, label %bb.o, !llvm.loop !66

.lr.ph443:                                        ; preds = %bb.o, %.lr.ph443.unr-lcssa
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv581
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !43 ; 2 uses
  %i.aal = getelementptr i8, ptr %i.aak, i64 %i.aab
  %scevgep = getelementptr i8, ptr %i.aal, i64 4
  %load_initial = load float, ptr %scevgep, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph441.new
  %i.aam = phi float [ %.pre638, %.lr.ph441.new ], [ %i.abb, %bb.p ]
  %indvars.iv574 = phi i64 [ 1, %.lr.ph441.new ], [ %indvars.iv.next575.3, %bb.p ] ; 4 uses
  %niter863 = phi i64 [ 0, %.lr.ph441.new ], [ %niter863.next.3, %bb.p ]
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv574
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 4 ; 2 uses
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !50
  %i.aaq = fadd float %i.aam, %i.aap              ; 2 uses
  store float %i.aaq, ptr %i.aao, align 4, !tbaa !50
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv574
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8 ; 2 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !50
  %i.aau = fadd float %i.aaq, %i.aat              ; 2 uses
  store float %i.aau, ptr %i.aas, align 4, !tbaa !50
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv574
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 12 ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !50
  %i.aay = fadd float %i.aau, %i.aax              ; 2 uses
  store float %i.aay, ptr %i.aaw, align 4, !tbaa !50
  %indvars.iv.next575.3 = add nuw nsw i64 %indvars.iv574, 4 ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aad, i64 %indvars.iv.next575.3 ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !50
  %i.abb = fadd float %i.aay, %i.aba              ; 3 uses
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !50
  %niter863.next.3 = add i64 %niter863, 4         ; 2 uses
  %niter863.ncmp.3 = icmp eq i64 %niter863.next.3, %unroll_iter862
  br i1 %niter863.ncmp.3, label %.lr.ph443.unr-lcssa, label %bb.p, !llvm.loop !67

bb.q:                                             ; preds = %.lr.ph443, %bb.q
  %store_forwarded = phi float [ %load_initial, %.lr.ph443 ], [ %i.abe, %bb.q ]
  %indvars.iv583 = phi i64 [ %indvars.iv581, %.lr.ph443 ], [ %indvars.iv.next584, %bb.q ] ; 3 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv583 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !50
  %i.abe = fadd float %store_forwarded, %i.abd    ; 2 uses
  store float %i.abe, ptr %i.abc, align 4, !tbaa !50
  %indvars.iv.next584 = add nsw i64 %indvars.iv583, -1
  %i.abf = icmp sgt i64 %indvars.iv583, 1
  br i1 %i.abf, label %bb.q, label %._crit_edge444, !llvm.loop !68

._crit_edge444:                                   ; preds = %bb.q, %.preheader374
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count591
  br i1 %exitcond592.not, label %._crit_edge447, label %.preheader374, !llvm.loop !69

._crit_edge447:                                   ; preds = %._crit_edge444, %.preheader375
  %i.abg = load ptr, ptr @Calignm1.v, align 8, !tbaa !38 ; 11 uses
  store ptr %i.abg, ptr @Calignm1.w, align 8, !tbaa !38
  %i.abh = load ptr, ptr @Calignm1.g, align 8, !tbaa !40 ; 6 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !38
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !43 ; 2 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !50
  %i.abl = load ptr, ptr %i.abg, align 8, !tbaa !43 ; 8 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !50
  %i.abn = fadd float %i.abk, %i.abm
  store float %i.abn, ptr %i.abl, align 4, !tbaa !50
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 4 ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !50
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !38
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !43 ; 2 uses
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !50
  %i.abv = fadd float %i.abp, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %.pre639.pre.pre682, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !43
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !50
  %i.aca = fadd float %i.abv, %i.abz
  %i.acb = load float, ptr %i.uw, align 4, !tbaa !50
  %i.acc = fadd float %i.aca, %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !43 ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !50
  %i.acg = fadd float %i.acc, %i.acf
  store float %i.acg, ptr %i.ace, align 4, !tbaa !50
  br i1 %i.fd, label %.lr.ph451, label %._crit_edge452

.lr.ph451:                                        ; preds = %._crit_edge447
  %i.ach = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38
  %smax596 = tail call i32 @llvm.smax.i32(i32 %i.yt, i32 3)
  %wide.trip.count597 = zext nneg i32 %smax596 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph451, %bb.r
  %i.aci = phi ptr [ %i.abt, %.lr.ph451 ], [ %i.add, %bb.r ]
  %indvars.iv593 = phi i64 [ 2, %.lr.ph451 ], [ %indvars.iv.next594, %bb.r ] ; 6 uses
  %.0318448 = phi float [ 0.000000e+00, %.lr.ph451 ], [ %i.acv, %bb.r ]
  %i.acj = add nsw i64 %indvars.iv593, -1         ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !50
  %i.acm = getelementptr [8 x i8], ptr %i.ach, i64 %indvars.iv593
  %i.acn = getelementptr i8, ptr %i.acm, i64 -16
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !43
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.aco, i64 %i.acj
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !50
  %i.acr = fadd float %i.acl, %i.acq
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.acj
  %i.act = load float, ptr %i.acs, align 4, !tbaa !50
  %i.acu = fadd float %i.acr, %i.act
  %i.acv = fadd float %.0318448, %i.acu           ; 2 uses
  %i.acw = load float, ptr %i.abo, align 4, !tbaa !50
  %i.acx = load float, ptr %i.uw, align 4, !tbaa !50
  %i.acy = fadd float %i.acw, %i.acx
  %i.acz = fadd float %i.acv, %i.acy
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %indvars.iv593
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !38
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !43 ; 2 uses
  %i.ade = load float, ptr %i.add, align 4, !tbaa !50
  %i.adf = fadd float %i.acz, %i.ade
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %.pre639.pre.pre682, i64 %indvars.iv593
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !43
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 3 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %indvars.iv.next594
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !50
  %i.adk = fadd float %i.adf, %i.adj
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %indvars.iv593
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !43 ; 2 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !50
  %i.ado = fadd float %i.adk, %i.adn
  store float %i.ado, ptr %i.adm, align 4, !tbaa !50
  %exitcond598.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count597
  br i1 %exitcond598.not, label %._crit_edge452, label %bb.r, !llvm.loop !70

._crit_edge452:                                   ; preds = %bb.r, %._crit_edge447
  %i.adp = load i32, ptr @penalty, align 4, !tbaa !4
  %i.adq = sitofp i32 %i.adp to float             ; 4 uses
  %i.adr = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !4
  %i.ads = sitofp i32 %i.adr to float             ; 4 uses
  %i.adt = fmul float %.0315.lcssa, %i.ads
  %i.adu = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0315.lcssa, float %i.adt)
  %i.adv = getelementptr i8, ptr %i.abl, i64 4    ; 2 uses
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !50
  %i.adx = fadd float %i.adw, %i.adu
  store float %i.adx, ptr %i.adv, align 4, !tbaa !50
  %.not348453 = icmp slt i32 %i.aj, 2
  br i1 %.not348453, label %.preheader372, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %._crit_edge452
  %i.ady = add nuw nsw i64 %i.ai, 1               ; 3 uses
  %wide.trip.count602 = and i64 %i.ady, 4294967295 ; 2 uses
  %xtraiter864 = and i64 %i.ady, 1                ; 2 uses
  %i.adz = icmp eq i64 %wide.trip.count602, 3
  br i1 %i.adz, label %.lr.ph457.epil.preheader, label %.lr.ph457.preheader.new

.lr.ph457.preheader.new:                          ; preds = %.lr.ph457.preheader
  %i.aea = add nsw i64 %wide.trip.count602, -2
  %unroll_iter868 = sub nsw i64 %i.aea, %xtraiter864
  br label %.lr.ph457

.preheader372:                                    ; preds = %._crit_edge452
  br i1 %.not343410, label %.preheader371, label %.lr.ph460

.lr.ph460.loopexit.unr-lcssa:                     ; preds = %.lr.ph457
  %lcmp.mod866.not = icmp eq i64 %xtraiter864, 0
  br i1 %lcmp.mod866.not, label %.lr.ph460, label %.lr.ph457.epil.preheader

.lr.ph457.epil.preheader:                         ; preds = %.lr.ph460.loopexit.unr-lcssa, %.lr.ph457.preheader
  %indvars.iv599.epil.init = phi i64 [ 2, %.lr.ph457.preheader ], [ %indvars.iv.next600.1, %.lr.ph460.loopexit.unr-lcssa ]
  %.1319454.epil.init = phi float [ 0.000000e+00, %.lr.ph457.preheader ], [ %i.aet, %.lr.ph460.loopexit.unr-lcssa ]
  %lcmp.mod867 = trunc i64 %i.ady to i1
  tail call void @llvm.assume(i1 %lcmp.mod867)
  %i.aeb = tail call float @llvm.fmuladd.f32(float %i.ads, float %.0315.lcssa, float %.1319454.epil.init)
  %i.aec = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0315.lcssa, float %i.aeb)
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %indvars.iv599.epil.init ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !50
  %i.aef = fadd float %i.aec, %i.aee
  store float %i.aef, ptr %i.aed, align 4, !tbaa !50
  br label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph457.epil.preheader, %.lr.ph460.loopexit.unr-lcssa, %.preheader372
  %i.aeg = load ptr, ptr @Calignm1.m, align 8, !tbaa !43 ; 2 uses
  %i.aeh = load ptr, ptr @Calignm1.mp, align 8, !tbaa !16 ; 2 uses
  %i.aei = add nuw nsw i64 %i.ai, 1               ; 2 uses
  %wide.trip.count607 = and i64 %i.aei, 4294967295 ; 3 uses
  %min.iters.check799 = icmp samesign ult i64 %wide.trip.count607, 8
  br i1 %min.iters.check799, label %scalar.ph798.preheader, label %vector.ph800

vector.ph800:                                     ; preds = %.lr.ph460
  %n.vec802 = and i64 %i.aei, 4294967288          ; 3 uses
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph800
  %index804 = phi i64 [ 0, %vector.ph800 ], [ %index.next805, %vector.body803 ] ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %index804 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store <4 x float> zeroinitializer, ptr %i.aej, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %i.aek, align 4, !tbaa !50
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %index804 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  store <4 x i32> zeroinitializer, ptr %i.ael, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.aem, align 4, !tbaa !4
  %index.next805 = add nuw i64 %index804, 8       ; 2 uses
  %i.aen = icmp eq i64 %index.next805, %n.vec802
  br i1 %i.aen, label %middle.block806, label %vector.body803, !llvm.loop !71

middle.block806:                                  ; preds = %vector.body803
  %cmp.n807 = icmp eq i64 %wide.trip.count607, %n.vec802
  br i1 %cmp.n807, label %.preheader371, label %scalar.ph798.preheader

scalar.ph798.preheader:                           ; preds = %.lr.ph460, %middle.block806
  %indvars.iv604.ph = phi i64 [ 0, %.lr.ph460 ], [ %n.vec802, %middle.block806 ]
  br label %scalar.ph798

.lr.ph457:                                        ; preds = %.lr.ph457, %.lr.ph457.preheader.new
  %indvars.iv599 = phi i64 [ 2, %.lr.ph457.preheader.new ], [ %indvars.iv.next600.1, %.lr.ph457 ] ; 3 uses
  %.1319454 = phi float [ 0.000000e+00, %.lr.ph457.preheader.new ], [ %i.aet, %.lr.ph457 ]
  %niter869 = phi i64 [ 0, %.lr.ph457.preheader.new ], [ %niter869.next.1, %.lr.ph457 ]
  %i.aeo = tail call float @llvm.fmuladd.f32(float %i.ads, float %.0315.lcssa, float %.1319454) ; 2 uses
  %i.aep = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0315.lcssa, float %i.aeo)
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %indvars.iv599 ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !50
  %i.aes = fadd float %i.aep, %i.aer
  store float %i.aes, ptr %i.aeq, align 4, !tbaa !50
  %i.aet = tail call float @llvm.fmuladd.f32(float %i.ads, float %.0315.lcssa, float %i.aeo) ; 3 uses
  %i.aeu = tail call float @llvm.fmuladd.f32(float %i.adq, float %.0315.lcssa, float %i.aet)
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %indvars.iv599
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 4 ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !50
  %i.aey = fadd float %i.aeu, %i.aex
  store float %i.aey, ptr %i.aew, align 4, !tbaa !50
  %indvars.iv.next600.1 = add nuw nsw i64 %indvars.iv599, 2 ; 2 uses
  %niter869.next.1 = add i64 %niter869, 2         ; 2 uses
  %niter869.ncmp.1 = icmp eq i64 %niter869.next.1, %unroll_iter868
  br i1 %niter869.ncmp.1, label %.lr.ph460.loopexit.unr-lcssa, label %.lr.ph457, !llvm.loop !72

.preheader371:                                    ; preds = %scalar.ph798, %middle.block806, %.preheader372
  %.not350468 = icmp slt i32 %i.ah, 1
  br i1 %.not350468, label %._crit_edge471, label %.lr.ph470

.lr.ph470:                                        ; preds = %.preheader371
  %.not358461 = icmp slt i32 %i.aj, 1
  %i.aez = load ptr, ptr @Calignm1.m, align 8     ; 4 uses
  %i.afa = load ptr, ptr @Calignm1.mp, align 8    ; 6 uses
  %i.afb = load ptr, ptr @Calignm1.gl, align 8
  %i.afc = load ptr, ptr @Calignm1.ijp, align 8
  br i1 %.not358461, label %._crit_edge471, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %.lr.ph470
  %i.afd = add nuw nsw i64 %i.ai, 1
  %i.afe = add nuw nsw i64 %i.ag, 1
  %wide.trip.count618 = and i64 %i.afe, 4294967295
  %wide.trip.count612 = and i64 %i.afd, 4294967295 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afa, i64 4
end_hunk_0
