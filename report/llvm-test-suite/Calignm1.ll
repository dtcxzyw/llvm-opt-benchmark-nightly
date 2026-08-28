Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Calignm1?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Calignm1:bb.a
  store float %i.tv, ptr %i.tw, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %.preheader383, label %vector.ph691, !llvm.loop !54

.preheader382.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod803.not = icmp eq i64 %xtraiter801, 0
  br i1 %lcmp.mod803.not, label %.preheader382, label %.epil.preheader800

.epil.preheader800:                               ; preds = %.preheader382.loopexit.unr-lcssa, %.lr.ph409
  %indvars.iv517.epil.init = phi i64 [ 0, %.lr.ph409 ], [ %indvars.iv.next518.3, %.preheader382.loopexit.unr-lcssa ]
  %lcmp.mod804 = icmp ne i64 %xtraiter801, 0
  tail call void @llvm.assume(i1 %lcmp.mod804)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader800
  %indvars.iv517.epil = phi i64 [ %indvars.iv517.epil.init, %.epil.preheader800 ], [ %indvars.iv.next518.epil, %bb.h ] ; 2 uses
  %epil.iter802 = phi i64 [ 0, %.epil.preheader800 ], [ %epil.iter802.next, %bb.h ]
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517.epil
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !43
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 %i.lm
  store float 0.000000e+00, ptr %i.tz, align 4, !tbaa !50
  %indvars.iv.next518.epil = add nuw nsw i64 %indvars.iv517.epil, 1
  %epil.iter802.next = add i64 %epil.iter802, 1   ; 2 uses
  %epil.iter802.cmp.not = icmp eq i64 %epil.iter802.next, %xtraiter801
  br i1 %epil.iter802.cmp.not, label %.preheader382, label %bb.h, !llvm.loop !55

.preheader382:                                    ; preds = %.preheader382.loopexit.unr-lcssa, %bb.h, %.preheader383
  %.not343410 = icmp slt i32 %i.aj, 0             ; 3 uses
  br i1 %.not343410, label %.preheader382.._crit_edge413_crit_edge, label %.lr.ph412

.preheader382.._crit_edge413_crit_edge:           ; preds = %.preheader382
  %.pre639 = shl i64 %i.ag, 32
  br label %._crit_edge413

.lr.ph412:                                        ; preds = %.preheader382
  %i.ua = load ptr, ptr @Calignm1.v, align 8, !tbaa !38
  %sext365 = shl i64 %i.ag, 32                    ; 2 uses
  %i.ub = ashr exact i64 %sext365, 29
  %i.uc = getelementptr inbounds i8, ptr %i.ua, i64 %i.ub
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !43
  %i.ue = shl i64 %i.ai, 2
  %i.uf = add nuw nsw i64 %i.ue, 4
  %i.ug = and i64 %i.uf, 17179869180
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ud, i8 0, i64 %i.ug, i1 false), !tbaa !50
  br label %._crit_edge413

bb.i:                                             ; preds = %bb.i, %.lr.ph409.new
  %indvars.iv517 = phi i64 [ 0, %.lr.ph409.new ], [ %indvars.iv.next518.3, %bb.i ] ; 5 uses
  %niter806 = phi i64 [ 0, %.lr.ph409.new ], [ %niter806.next.3, %bb.i ]
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !43
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 %i.lm
  store float 0.000000e+00, ptr %i.uj, align 4, !tbaa !50
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !43
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 %i.lm
  store float 0.000000e+00, ptr %i.un, align 4, !tbaa !50
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !43
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %i.lm
  store float 0.000000e+00, ptr %i.ur, align 4, !tbaa !50
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !43
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 %i.lm
  store float 0.000000e+00, ptr %i.uv, align 4, !tbaa !50
  %indvars.iv.next518.3 = add nuw nsw i64 %indvars.iv517, 4 ; 2 uses
  %niter806.next.3 = add i64 %niter806, 4         ; 2 uses
  %niter806.ncmp.3 = icmp eq i64 %niter806.next.3, %unroll_iter805
  br i1 %niter806.ncmp.3, label %.preheader382.loopexit.unr-lcssa, label %bb.i, !llvm.loop !56

._crit_edge413:                                   ; preds = %.preheader382.._crit_edge413_crit_edge, %.lr.ph412
  %sext.pre-phi = phi i64 [ %.pre639, %.preheader382.._crit_edge413_crit_edge ], [ %sext365, %.lr.ph412 ] ; 2 uses
  %i.uw = load ptr, ptr @Calignm1.gvsa, align 8, !tbaa !43 ; 5 uses
  %i.ux = ashr exact i64 %sext.pre-phi, 32        ; 6 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.ux
  store float 0.000000e+00, ptr %i.uy, align 4, !tbaa !50
  br i1 %.not342407, label %.preheader378, label %.preheader381.lr.ph

.preheader381.lr.ph:                              ; preds = %._crit_edge413
  %i.uz = load ptr, ptr @Calignm1.g, align 8, !tbaa !40 ; 3 uses
  %i.va = add nuw nsw i64 %i.ag, 1                ; 3 uses
  %wide.trip.count535 = and i64 %i.va, 4294967295
  %i.vb = icmp eq i64 %wide.trip.count535, 1
  br i1 %i.vb, label %.preheader381.epil.preheader, label %.preheader381.lr.ph.new

.preheader381.lr.ph.new:                          ; preds = %.preheader381.lr.ph
  %unroll_iter811 = and i64 %i.va, 4294967294
  br label %.preheader381

.preheader381:                                    ; preds = %.preheader381, %.preheader381.lr.ph.new
  %indvars.iv532 = phi i64 [ 0, %.preheader381.lr.ph.new ], [ %indvars.iv.next533.1, %.preheader381 ] ; 3 uses
  %niter812 = phi i64 [ 0, %.preheader381.lr.ph.new ], [ %niter812.next.1, %.preheader381 ]
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv532
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !38 ; 3 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ve, i8 0, i64 12, i1 false), !tbaa !50
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vg, i8 0, i64 12, i1 false), !tbaa !50
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vi, i8 0, i64 12, i1 false), !tbaa !50
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv532
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !38 ; 3 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vm, i8 0, i64 12, i1 false), !tbaa !50
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vo, i8 0, i64 12, i1 false), !tbaa !50
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.vq, i8 0, i64 12, i1 false), !tbaa !50
  %indvars.iv.next533.1 = add nuw nsw i64 %indvars.iv532, 2 ; 2 uses
  %niter812.next.1 = add i64 %niter812, 2         ; 2 uses
  %niter812.ncmp.1 = icmp eq i64 %niter812.next.1, %unroll_iter811
  br i1 %niter812.ncmp.1, label %.preheader379.thread.unr-lcssa, label %.preheader381, !llvm.loop !57

.preheader379.thread.unr-lcssa:                   ; preds = %.preheader381
  %i.vr = and i64 %i.ag, 1
  %lcmp.mod809.not.not = icmp eq i64 %i.vr, 0
  br i1 %lcmp.mod809.not.not, label %.preheader381.epil.preheader, label %.preheader379.thread

.preheader381.epil.preheader:                     ; preds = %.preheader379.thread.unr-lcssa, %.preheader381.lr.ph
  %indvars.iv532.epil.init = phi i64 [ 0, %.preheader381.lr.ph ], [ %indvars.iv.next533.1, %.preheader379.thread.unr-lcssa ]
  %lcmp.mod810 = trunc i64 %i.va to i1
  tail call void @llvm.assume(i1 %lcmp.mod810)
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %indvars.iv532.epil.init
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
  %.pre626.pre.pre668 = load ptr, ptr @Calignm1.gs, align 8
  br label %.preheader377.lr.ph

.lr.ph422.preheader:                              ; preds = %.preheader379.thread
  %i.wa = load i32, ptr @penalty, align 4
  %i.wb = sitofp i32 %i.wa to float               ; 7 uses
  %i.wc = load ptr, ptr @Calignm1.g, align 8
  %i.wd = and i64 %i.ag, 2147483647
  %i.we = add nuw nsw i64 %i.ag, 1
  %i.wf = add nuw i32 %4, 1
  %wide.trip.count545 = zext i32 %i.wf to i64
  %wide.trip.count540 = and i64 %i.we, 4294967295
  br label %.lr.ph422

.preheader378:                                    ; preds = %._crit_edge423, %._crit_edge413
  %i.wg = add i32 %i.ah, 2                        ; 2 uses
  %i.wh = icmp sgt i32 %i.ah, -2
  %.pre626.pre.pre = load ptr, ptr @Calignm1.gs, align 8 ; 2 uses
  br i1 %i.wh, label %.preheader377.lr.ph, label %.preheader376

.preheader377.lr.ph:                              ; preds = %.preheader378.thread, %.preheader378
  %.pre626.pre.pre669 = phi ptr [ %.pre626.pre.pre668, %.preheader378.thread ], [ %.pre626.pre.pre, %.preheader378 ] ; 5 uses
  %i.wi = phi i32 [ %i.vz, %.preheader378.thread ], [ %i.wg, %.preheader378 ] ; 4 uses
  %i.wj = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.wi, i32 1) ; 2 uses
  %wide.trip.count551 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter813 = and i64 %wide.trip.count551, 1
  %i.wk = icmp slt i32 %i.wi, 2
  br i1 %i.wk, label %.preheader377.epil.preheader, label %.preheader377.lr.ph.new

.preheader377.lr.ph.new:                          ; preds = %.preheader377.lr.ph
  %unroll_iter817 = and i64 %wide.trip.count551, 2147483646
  br label %.preheader377

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge423
  %indvars.iv542 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next543, %._crit_edge423 ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv542
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !26
  %i.wn = fptrunc double %i.wm to float           ; 4 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv542
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !8
  %i.wq = fmul float %i.wn, 0.000000e+00          ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph422, %bb.j
  %indvars.iv537 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next538, %bb.j ] ; 4 uses
  %.0302420 = phi i32 [ 0, %.lr.ph422 ], [ %spec.store.select, %bb.j ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 %indvars.iv537
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !11
  %i.wt = icmp eq i8 %i.ws, 45
  %i.wu = icmp ne i64 %indvars.iv537, %i.wd
  %narrow = select i1 %i.wu, i1 %i.wt, i1 false   ; 3 uses
  %spec.store.select = zext i1 %narrow to i32
  %i.wv = xor i32 %.0302420, 1                    ; 2 uses
  %6 = uitofp nneg i32 %i.wv to float             ; 2 uses
  %7 = select i1 %narrow, float %6, float 0.000000e+00
  %i.ww = fmul float %7, %i.wn
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv537
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !38 ; 3 uses
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !43 ; 4 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !50
  %i.xb = tail call float @llvm.fmuladd.f32(float %i.ww, float %i.wb, float %i.xa)
  store float %i.xb, ptr %i.wz, align 4, !tbaa !50
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !43 ; 3 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !50
  %i.xf = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xe)
  store float %i.xf, ptr %i.xd, align 4, !tbaa !50
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !43 ; 3 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !50
  %i.xj = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xi)
  store float %i.xj, ptr %i.xh, align 4, !tbaa !50
  %8 = add nuw nsw i32 %i.wv, %.0302420
  %9 = uitofp nneg i32 %8 to float
  %10 = select i1 %narrow, float 0.000000e+00, float %9
  %i.xk = fmul float %10, %i.wn
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !50
  %i.xn = tail call float @llvm.fmuladd.f32(float %i.xk, float %i.wb, float %i.xm)
  store float %i.xn, ptr %i.xl, align 4, !tbaa !50
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xd, i64 4 ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !50
  %i.xq = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xp)
  store float %i.xq, ptr %i.xo, align 4, !tbaa !50
  %i.xr = fmul float %i.wn, %6
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !50
  %i.xu = tail call float @llvm.fmuladd.f32(float %i.xr, float %i.wb, float %i.xt)
  store float %i.xu, ptr %i.xs, align 4, !tbaa !50
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !50
  %i.xx = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xw)
  store float %i.xx, ptr %i.xv, align 4, !tbaa !50
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge423, label %bb.j, !llvm.loop !58

._crit_edge423:                                   ; preds = %bb.j
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.preheader378, label %.lr.ph422, !llvm.loop !59

.preheader377:                                    ; preds = %.preheader377, %.preheader377.lr.ph.new
  %indvar = phi i64 [ 0, %.preheader377.lr.ph.new ], [ %indvar.next.1, %.preheader377 ] ; 5 uses
  %niter818 = phi i64 [ 0, %.preheader377.lr.ph.new ], [ %niter818.next.1, %.preheader377 ]
  %i.xy = shl nuw nsw i64 %indvar, 2
  %i.xz = add nuw nsw i64 %i.xy, 8                ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !43
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yb, i8 0, i64 %i.xz, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yd, i8 0, i64 %i.xz, i1 false), !tbaa !50
  %indvar.next = or disjoint i64 %indvar, 1       ; 3 uses
  %i.ye = shl nuw nsw i64 %indvar.next, 2
  %i.yf = add nuw nsw i64 %i.ye, 8                ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar.next
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !43
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar.next
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yh, i8 0, i64 %i.yf, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yj, i8 0, i64 %i.yf, i1 false), !tbaa !50
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter818.next.1 = add i64 %niter818, 2         ; 2 uses
  %niter818.ncmp.1 = icmp eq i64 %niter818.next.1, %unroll_iter817
  br i1 %niter818.ncmp.1, label %.preheader376.loopexit.unr-lcssa, label %.preheader377, !llvm.loop !60

.preheader376.loopexit.unr-lcssa:                 ; preds = %.preheader377
  %lcmp.mod815.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod815.not, label %.preheader376, label %.preheader377.epil.preheader

.preheader377.epil.preheader:                     ; preds = %.preheader376.loopexit.unr-lcssa, %.preheader377.lr.ph
  %indvar.epil.init = phi i64 [ 0, %.preheader377.lr.ph ], [ %indvar.next.1, %.preheader376.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod816 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod816)
  %i.yk = shl nuw nsw i64 %indvar.epil.init, 2
  %i.yl = add nuw nsw i64 %i.yk, 8                ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar.epil.init
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !43
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar.epil.init
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yn, i8 0, i64 %i.yl, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yp, i8 0, i64 %i.yl, i1 false), !tbaa !50
  br label %.preheader376

.preheader376:                                    ; preds = %.preheader377.epil.preheader, %.preheader376.loopexit.unr-lcssa, %.preheader378
  %.pre626.pre.pre670 = phi ptr [ %.pre626.pre.pre, %.preheader378 ], [ %.pre626.pre.pre669, %.preheader376.loopexit.unr-lcssa ], [ %.pre626.pre.pre669, %.preheader377.epil.preheader ] ; 5 uses
  %i.yq = phi i32 [ %i.wg, %.preheader378 ], [ %i.wi, %.preheader376.loopexit.unr-lcssa ], [ %i.wi, %.preheader377.epil.preheader ]
  br i1 %.not387, label %.preheader375, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader376
  %i.yr = load ptr, ptr @Calignm1.gl, align 8
  br i1 %.not342407, label %._crit_edge447, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %.lr.ph438
  %i.ys = add nuw nsw i64 %i.ag, 1
  %i.yt = add nuw i32 %4, 1
  %wide.trip.count561 = zext i32 %i.yt to i64
  %wide.trip.count556 = and i64 %i.ys, 4294967295
  br label %.lr.ph434

.preheader375:                                    ; preds = %._crit_edge435, %.preheader376
  br i1 %.not342407, label %._crit_edge447, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %i.yu = load ptr, ptr @Calignm1.gl, align 8
  %i.yv = add nuw nsw i64 %i.ag, 1
  %wide.trip.count580 = and i64 %i.yv, 4294967295
  br label %.preheader374

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge435
  %indvars.iv558 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next559, %._crit_edge435 ] ; 3 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv558
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !26
  %i.yy = fptrunc double %i.yx to float           ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv558
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !8
  %i.zb = load i32, ptr @penalty, align 4
  %i.zc = sitofp i32 %i.zb to float               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph434, %bb.n
  %indvars.iv553 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next554, %bb.n ] ; 4 uses
  %.0303432 = phi i32 [ 0, %.lr.ph434 ], [ %.1304, %bb.n ]
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %indvars.iv553 ; 2 uses
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !11
  %i.zf = icmp eq i8 %i.ze, 45
  br i1 %i.zf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.zg = add nsw i32 %.0303432, 1                ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv553
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !43
  %i.zj = sext i32 %i.zg to i64                   ; 2 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %i.zj ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !50
  %i.zm = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.zc, float %i.zl)
  store float %i.zm, ptr %i.zk, align 4, !tbaa !50
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !11
  %.not361 = icmp eq i8 %i.zo, 45
  br i1 %.not361, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv553
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !43
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.zj ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !50
  %i.zt = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.zc, float %i.zs)
  store float %i.zt, ptr %i.zr, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1304 = phi i32 [ %i.zg, %bb.m ], [ %i.zg, %bb.l ], [ 0, %bb.k ]
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next554, %wide.trip.count556
  br i1 %exitcond557.not, label %._crit_edge435, label %bb.k, !llvm.loop !61

._crit_edge435:                                   ; preds = %bb.n
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond562.not = icmp eq i64 %indvars.iv.next559, %wide.trip.count561
  br i1 %exitcond562.not, label %.preheader375, label %.lr.ph434, !llvm.loop !62

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv570 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next571, %._crit_edge444 ] ; 9 uses
  %i.zu = shl i64 %indvars.iv570, 2
  %.not359439 = icmp eq i64 %indvars.iv570, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader374
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv570
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !43 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %.pre625 = load float, ptr %.phi.trans.insert, align 4, !tbaa !50 ; 2 uses
  %xtraiter820 = and i64 %indvars.iv570, 3        ; 3 uses
  %i.zx = icmp samesign ult i64 %indvars.iv570, 4
  br i1 %i.zx, label %.epil.preheader819, label %.lr.ph441.new

.lr.ph441.new:                                    ; preds = %.lr.ph441
  %unroll_iter824 = and i64 %indvars.iv570, 9223372036854775804
  br label %bb.p

.lr.ph443.unr-lcssa:                              ; preds = %bb.p
  %lcmp.mod822.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod822.not, label %.lr.ph443, label %.epil.preheader819

.epil.preheader819:                               ; preds = %.lr.ph443.unr-lcssa, %.lr.ph441
  %.epil.init = phi float [ %.pre625, %.lr.ph441 ], [ %i.aau, %.lr.ph443.unr-lcssa ]
  %indvars.iv563.epil.init = phi i64 [ 1, %.lr.ph441 ], [ %indvars.iv.next564.3, %.lr.ph443.unr-lcssa ]
  %lcmp.mod823 = icmp ne i64 %xtraiter820, 0
  tail call void @llvm.assume(i1 %lcmp.mod823)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader819
  %i.zy = phi float [ %.epil.init, %.epil.preheader819 ], [ %i.aab, %bb.o ]
  %indvars.iv563.epil = phi i64 [ %indvars.iv563.epil.init, %.epil.preheader819 ], [ %indvars.iv.next564.epil, %bb.o ]
  %epil.iter821 = phi i64 [ 0, %.epil.preheader819 ], [ %epil.iter821.next, %bb.o ]
  %indvars.iv.next564.epil = add nuw nsw i64 %indvars.iv563.epil, 1 ; 2 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv.next564.epil ; 2 uses
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !50
  %i.aab = fadd float %i.zy, %i.aaa               ; 2 uses
  store float %i.aab, ptr %i.zz, align 4, !tbaa !50
  %epil.iter821.next = add i64 %epil.iter821, 1   ; 2 uses
  %epil.iter821.cmp.not = icmp eq i64 %epil.iter821.next, %xtraiter820
  br i1 %epil.iter821.cmp.not, label %.lr.ph443, label %bb.o, !llvm.loop !63

.lr.ph443:                                        ; preds = %bb.o, %.lr.ph443.unr-lcssa
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %indvars.iv570
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !43 ; 2 uses
  %i.aae = getelementptr i8, ptr %i.aad, i64 %i.zu
  %scevgep = getelementptr i8, ptr %i.aae, i64 4
  %load_initial = load float, ptr %scevgep, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph441.new
  %i.aaf = phi float [ %.pre625, %.lr.ph441.new ], [ %i.aau, %bb.p ]
  %indvars.iv563 = phi i64 [ 1, %.lr.ph441.new ], [ %indvars.iv.next564.3, %bb.p ] ; 4 uses
  %niter825 = phi i64 [ 0, %.lr.ph441.new ], [ %niter825.next.3, %bb.p ]
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv563
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4 ; 2 uses
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !50
  %i.aaj = fadd float %i.aaf, %i.aai              ; 2 uses
  store float %i.aaj, ptr %i.aah, align 4, !tbaa !50
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv563
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@Calignm1:bb.a
  %i.anb = icmp eq i64 %index.next778, %n.vec775
  br i1 %i.anb, label %middle.block779, label %vector.body776, !llvm.loop !73

middle.block779:                                  ; preds = %vector.body776
  %cmp.n780 = icmp eq i64 %wide.trip.count615, %n.vec775
  br i1 %cmp.n780, label %._crit_edge483, label %scalar.ph772.preheader

scalar.ph772.preheader:                           ; preds = %.lr.ph482, %middle.block779
  %indvars.iv612.ph = phi i64 [ 0, %.lr.ph482 ], [ %n.vec775, %middle.block779 ]
  br label %scalar.ph772

bb.an:                                            ; preds = %bb.an, %.lr.ph479.new
  %indvars.iv607 = phi i64 [ 0, %.lr.ph479.new ], [ %indvars.iv.next608.7, %bb.an ] ; 9 uses
  %niter838 = phi i64 [ 0, %.lr.ph479.new ], [ %niter838.next.7, %bb.an ]
  %indvars.iv.next608 = or disjoint i64 %indvars.iv607, 1 ; 2 uses
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv607
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !16
  %i.ane = trunc nuw i64 %indvars.iv.next608 to i32
  store i32 %i.ane, ptr %i.and, align 4, !tbaa !4
  %indvars.iv.next608.1 = or disjoint i64 %indvars.iv607, 2 ; 2 uses
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !16
  %i.anh = trunc nuw i64 %indvars.iv.next608.1 to i32
  store i32 %i.anh, ptr %i.ang, align 4, !tbaa !4
  %indvars.iv.next608.2 = or disjoint i64 %indvars.iv607, 3 ; 2 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.1
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !16
  %i.ank = trunc nuw i64 %indvars.iv.next608.2 to i32
  store i32 %i.ank, ptr %i.anj, align 4, !tbaa !4
  %indvars.iv.next608.3 = or disjoint i64 %indvars.iv607, 4 ; 2 uses
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.2
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !16
  %i.ann = trunc nuw i64 %indvars.iv.next608.3 to i32
  store i32 %i.ann, ptr %i.anm, align 4, !tbaa !4
  %indvars.iv.next608.4 = or disjoint i64 %indvars.iv607, 5 ; 2 uses
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.3
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !16
  %i.anq = trunc nuw i64 %indvars.iv.next608.4 to i32
  store i32 %i.anq, ptr %i.anp, align 4, !tbaa !4
  %indvars.iv.next608.5 = or disjoint i64 %indvars.iv607, 6 ; 2 uses
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.4
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !16
  %i.ant = trunc nuw i64 %indvars.iv.next608.5 to i32
  store i32 %i.ant, ptr %i.ans, align 4, !tbaa !4
  %indvars.iv.next608.6 = or disjoint i64 %indvars.iv607, 7 ; 2 uses
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.5
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !16
  %i.anw = trunc nuw i64 %indvars.iv.next608.6 to i32
  store i32 %i.anw, ptr %i.anv, align 4, !tbaa !4
  %indvars.iv.next608.7 = add nuw nsw i64 %indvars.iv607, 8 ; 3 uses
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %.pre635.pre, i64 %indvars.iv.next608.6
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !16
  %i.anz = trunc nuw i64 %indvars.iv.next608.7 to i32
  store i32 %i.anz, ptr %i.any, align 4, !tbaa !4
  %niter838.next.7 = add i64 %niter838, 8         ; 2 uses
  %niter838.ncmp.7 = icmp eq i64 %niter838.next.7, %unroll_iter837
  br i1 %niter838.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.an, !llvm.loop !74

scalar.ph772:                                     ; preds = %scalar.ph772.preheader, %scalar.ph772
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %scalar.ph772 ], [ %indvars.iv612.ph, %scalar.ph772.preheader ] ; 3 uses
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %i.aoa = trunc nuw nsw i64 %indvars.iv612 to i32
  %i.aob = xor i32 %i.aoa, -1
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.amv, i64 %indvars.iv612
  store i32 %i.aob, ptr %i.aoc, align 4, !tbaa !4
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  br i1 %exitcond616.not, label %._crit_edge483, label %scalar.ph772, !llvm.loop !75

._crit_edge483:                                   ; preds = %scalar.ph772, %middle.block779, %.preheader
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.aaz, i64 %i.ux
  %i.aoe = load ptr, ptr @Calignm1.nseq, align 8, !tbaa !30 ; 2 uses
  tail call void @tracking(ptr noundef %i.aoe, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre635.pre, i32 noundef %4)
  %i.aof = load ptr, ptr %i.aod, align 8, !tbaa !43
  %i.aog = getelementptr inbounds [4 x i8], ptr %i.aof, i64 %.pre-phi
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !50
  store float %i.aoh, ptr %0, align 4, !tbaa !50
  ret ptr %i.aoe
}

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatCub(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatTri(ptr noundef) local_unnamed_addr #4

declare void @FreeFloatVec(ptr noundef) local_unnamed_addr #4

declare void @FreeIntVec(ptr noundef) local_unnamed_addr #4

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #4

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatCub(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatTri(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #4

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #4

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @scmx_calc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local double @Cscore_m_1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call ptr @AllocateIntVec(i32 noundef %1) #10 ; 4 uses
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %1) #10 ; 2 uses
  %i.f = icmp sgt i32 %i.c, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge117

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 0
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h ; 2 uses
  br i1 %i.g, label %.preheader.lr.ph.split.us, label %._crit_edge117

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = zext i32 %2 to i64
  %wide.trip.count124 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 5 uses
  %.092116.us = phi double [ %i.bp, %._crit_edge.us ], [ 0.000000e+00, %.preheader.lr.ph.split.us ]
  %.not.us = icmp eq i64 %indvars.iv121, 0
  %i.m = add nsw i64 %indvars.iv121, -1           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %i.n = phi <2 x double> [ zeroinitializer, %.preheader.us ], [ %i.bl, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load double, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.q, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.us, label %.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %.not109.us = icmp eq i8 %i.u, 45
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 45
  %i.z = zext i1 %i.y to i32                      ; 2 uses
  br i1 %.not109.us, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !4
  br label %bb.f

.thread.us:                                       ; preds = %bb.d, %bb.c
  %.093108.us = phi i32 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 0, ptr %i.ad, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.e
  %.093107.us = phi i32 [ %.093108.us, %.thread.us ], [ %i.z, %bb.e ] ; 5 uses
  %.094105.us = phi i32 [ 0, %.thread.us ], [ 1, %bb.e ] ; 3 uses
  %.not98.us = icmp eq i32 %.093107.us, 0
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  br i1 %.not98.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.ag, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store i32 %.sink, ptr %i.ae, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 45                    ; 4 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv121
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11  ; 2 uses
  %.not101.us = icmp ne i8 %i.ao, 45              ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %.not99.not.us = icmp slt i32 %i.aq, %.sink
  %.not100.not.us = icmp sle i32 %i.aq, %.sink
  %i.ar = xor i32 %.094105.us, 1                  ; 2 uses
  %4 = select i1 %i.al, i32 %i.ar, i32 0          ; 2 uses
  %i.as = xor i32 %.093107.us, 1                  ; 2 uses
  %5 = select i1 %i.al, i32 0, i32 %i.ar
  %.v.us = select i1 %.not101.us, i32 %4, i32 %5
  %6 = mul nuw nsw i32 %.v.us, %i.as
  %7 = mul nuw nsw i32 %4, %.093107.us
  %8 = select i1 %i.al, i32 0, i32 %.094105.us    ; 2 uses
  %9 = mul nuw nsw i32 %8, %i.as
  %10 = mul nuw nsw i32 %8, %.093107.us
  %11 = select i1 %.not99.not.us, i1 true, i1 %.not101.us
  %12 = select i1 %11, i32 0, i32 %10
  %13 = select i1 %i.al, i32 %.094105.us, i32 0
  %14 = mul nuw nsw i32 %13, %.093107.us
  %.not110.us = select i1 %.not100.not.us, i1 %.not101.us, i1 false
  %15 = select i1 %.not110.us, i32 %14, i32 0
  %16 = select i1 %.not101.us, i32 %7, i32 %9
  %i.at = add nuw nsw i32 %16, %6
  %i.au = add nuw nsw i32 %i.at, %12
  %i.av = add nuw nsw i32 %i.au, %15
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = load i32, ptr @penalty, align 4, !tbaa !4
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fmul nnan double %i.ay, %i.aw
  %i.ba = sext i8 %i.ak to i64
  %i.bb = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ba
  %i.bc = sext i8 %i.ao to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = sitofp i32 %i.be to double
  %i.bg = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.bl = phi <2 x double> [ %i.bk, %bb.h ], [ %i.n, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !78

._crit_edge.us:                                   ; preds = %bb.i
  %i.bm = extractelement <2 x double> %i.bl, i64 1
  %i.bn = fadd double %.092116.us, %i.bm
  %i.bo = extractelement <2 x double> %i.bl, i64 0
  %i.bp = fadd double %i.bo, %i.bn                ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !79

._crit_edge117:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %.092.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader.lr.ph ], [ %i.bp, %._crit_edge.us ]
  tail call void @free(ptr noundef %i.d) #10
  tail call void @free(ptr noundef %i.e) #10
  ret double %.092.lcssa
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !6, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !13}
!30 = !{!31, !31, i64 0}
!31 = !{!"p2 omnipotent char", !32, i64 0}
!32 = !{!"any p2 pointer", !10, i64 0}
!33 = distinct !{!33, !15, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !15, !34}
!38 = !{!39, !39, i64 0}
!39 = !{!"p2 float", !32, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p3 float", !42, i64 0}
!42 = !{!"any p3 pointer", !32, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 float", !10, i64 0}
!45 = distinct !{!45, !15, !34, !35}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !15, !34}
!48 = !{!49, !49, i64 0}
!49 = !{!"p2 int", !32, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"float", !6, i64 0}
!52 = distinct !{!52, !15, !34, !35}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15, !70}
!70 = !{!"llvm.loop.peeled.count", i32 1}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !15, !34, !35}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15, !35, !34}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 double", !10, i64 0}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
end_hunk_1
