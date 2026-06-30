loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Calignm1:bb.a
  %indvars.iv.next508 = or disjoint i64 %indvars.iv507, 1 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next508
  %i.te = load i8, ptr %i.td, align 1, !tbaa !11
  %i.tf = sext i8 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !4
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ti
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !50
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv.next508
  store float %i.tk, ptr %i.tl, align 4, !tbaa !50
  %indvars.iv.next508.1 = add nuw nsw i64 %indvars.iv507, 2 ; 2 uses
  %niter839.next.1 = add i64 %niter839.a, 2       ; 2 uses
  %niter839.ncmp.1 = icmp eq i64 %niter839.next.1, %unroll_iter838.a
  br i1 %niter839.ncmp.1, label %._crit_edge403.loopexit.unr-lcssa, label %.lr.ph402.new, !llvm.loop !53

._crit_edge403.loopexit.unr-lcssa:                ; preds = %.lr.ph402.new
  br i1 %lcmp.mod836.not.a, label %._crit_edge403, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge403.loopexit.unr-lcssa, %.lr.ph402
  %indvars.iv507.epil.init = phi i64 [ 0, %.lr.ph402 ], [ %indvars.iv.next508.1, %._crit_edge403.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod837.a)
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv507.epil.init
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !11
  %i.to = sext i8 %i.tn to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !4
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.tr
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !50
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv507.epil.init
  store float %i.tt, ptr %i.tu, align 4, !tbaa !50
  br label %._crit_edge403

._crit_edge403:                                   ; preds = %.epil.preheader, %._crit_edge403.loopexit.unr-lcssa, %scalar.ph702
  %i.tv = load float, ptr %i.fh, align 16, !tbaa !50
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv512
  store float %i.tv, ptr %i.tw, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %.preheader383, label %vector.ph703, !llvm.loop !54

.preheader382.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod843.not = icmp eq i64 %xtraiter841, 0
  br i1 %lcmp.mod843.not, label %.preheader382, label %.epil.preheader840

.epil.preheader840:                               ; preds = %.preheader382.loopexit.unr-lcssa, %.lr.ph409
  %indvars.iv517.epil.init = phi i64 [ 0, %.lr.ph409 ], [ %indvars.iv.next518.3, %.preheader382.loopexit.unr-lcssa ]
  %lcmp.mod844 = icmp ne i64 %xtraiter841, 0
  tail call void @llvm.assume(i1 %lcmp.mod844)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader840
  %indvars.iv517.epil = phi i64 [ %indvars.iv517.epil.init, %.epil.preheader840 ], [ %indvars.iv.next518.epil, %bb.h ] ; 2 uses
  %epil.iter842 = phi i64 [ 0, %.epil.preheader840 ], [ %epil.iter842.next, %bb.h ]
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv517.epil
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !43
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 %i.lm
  store float 0.000000e+00, ptr %i.tz, align 4, !tbaa !50
  %indvars.iv.next518.epil = add nuw nsw i64 %indvars.iv517.epil, 1
  %epil.iter842.next = add i64 %epil.iter842, 1   ; 2 uses
  %epil.iter842.cmp.not = icmp eq i64 %epil.iter842.next, %xtraiter841
  br i1 %epil.iter842.cmp.not, label %.preheader382, label %bb.h, !llvm.loop !55

.preheader382:                                    ; preds = %.preheader382.loopexit.unr-lcssa, %bb.h, %.preheader383
  %.not343410 = icmp slt i32 %i.aj, 0             ; 3 uses
  br i1 %.not343410, label %.preheader382.._crit_edge413_crit_edge, label %.lr.ph412

.preheader382.._crit_edge413_crit_edge:           ; preds = %.preheader382
  %.pre651 = shl i64 %i.ag, 32
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
  %niter846 = phi i64 [ 0, %.lr.ph409.new ], [ %niter846.next.3, %bb.i ]
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
  %niter846.next.3 = add i64 %niter846, 4         ; 2 uses
  %niter846.ncmp.3 = icmp eq i64 %niter846.next.3, %unroll_iter845
  br i1 %niter846.ncmp.3, label %.preheader382.loopexit.unr-lcssa, label %bb.i, !llvm.loop !56

._crit_edge413:                                   ; preds = %.preheader382.._crit_edge413_crit_edge, %.lr.ph412
  %sext.pre-phi = phi i64 [ %.pre651, %.preheader382.._crit_edge413_crit_edge ], [ %sext365, %.lr.ph412 ] ; 2 uses
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
  %unroll_iter851 = and i64 %i.va, 4294967294
  br label %.preheader381

.preheader381:                                    ; preds = %.preheader381, %.preheader381.lr.ph.new
  %indvars.iv532 = phi i64 [ 0, %.preheader381.lr.ph.new ], [ %indvars.iv.next533.1, %.preheader381 ] ; 3 uses
  %niter852 = phi i64 [ 0, %.preheader381.lr.ph.new ], [ %niter852.next.1, %.preheader381 ]
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
  %niter852.next.1 = add i64 %niter852, 2         ; 2 uses
  %niter852.ncmp.1 = icmp eq i64 %niter852.next.1, %unroll_iter851
  br i1 %niter852.ncmp.1, label %.preheader379.thread.unr-lcssa, label %.preheader381, !llvm.loop !57

.preheader379.thread.unr-lcssa:                   ; preds = %.preheader381
  %i.vr = and i64 %i.ag, 1
  %lcmp.mod849.not.not = icmp eq i64 %i.vr, 0
  br i1 %lcmp.mod849.not.not, label %.preheader381.epil.preheader, label %.preheader379.thread

.preheader381.epil.preheader:                     ; preds = %.preheader379.thread.unr-lcssa, %.preheader381.lr.ph
  %indvars.iv532.epil.init = phi i64 [ 0, %.preheader381.lr.ph ], [ %indvars.iv.next533.1, %.preheader379.thread.unr-lcssa ]
  %lcmp.mod850 = trunc i64 %i.va to i1
  tail call void @llvm.assume(i1 %lcmp.mod850)
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
  %.pre638.pre.pre679 = load ptr, ptr @Calignm1.gs, align 8
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
  %.pre638.pre.pre = load ptr, ptr @Calignm1.gs, align 8 ; 2 uses
  br i1 %i.wh, label %.preheader377.lr.ph, label %.preheader376

.preheader377.lr.ph:                              ; preds = %.preheader378.thread, %.preheader378
  %.pre638.pre.pre680 = phi ptr [ %.pre638.pre.pre679, %.preheader378.thread ], [ %.pre638.pre.pre, %.preheader378 ] ; 2 uses
  %i.wi = phi i32 [ %i.vz, %.preheader378.thread ], [ %i.wg, %.preheader378 ] ; 2 uses
  %i.wj = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38
  %smax = tail call i32 @llvm.smax.i32(i32 %i.wi, i32 1)
  %wide.trip.count561.a = zext nneg i32 %smax to i64
  br label %.preheader377

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge423
  %indvars.iv542 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next543, %._crit_edge423 ] ; 3 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv542
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !26
  %i.wm = fptrunc double %i.wl to float           ; 4 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv542
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !8
  %i.wp = fmul float %i.wm, 0.000000e+00          ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph422, %bb.j
  %indvars.iv537 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next538, %bb.j ] ; 4 uses
  %.0322419 = phi i32 [ 0, %.lr.ph422 ], [ %spec.store.select, %bb.j ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 %indvars.iv537
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !11
  %i.ws = icmp eq i8 %i.wr, 45
  %i.wt = icmp ne i64 %indvars.iv537, %i.wd
  %narrow = select i1 %i.wt, i1 %i.ws, i1 false   ; 3 uses
  %spec.store.select = zext i1 %narrow to i32
  %i.wu = xor i32 %.0322419, 1                    ; 2 uses
  %i.wv = uitofp nneg i32 %i.wu to float          ; 2 uses
  %i.ww = select i1 %narrow, float %i.wv, float 0.000000e+00
  %i.wx = fmul float %i.ww, %i.wm
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv537
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
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge423, label %bb.j, !llvm.loop !58

._crit_edge423:                                   ; preds = %bb.j
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.preheader378, label %.lr.ph422, !llvm.loop !59

.loopexit:                                        ; preds = %scalar.ph786.prol.loopexit, %scalar.ph786, %middle.block794
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1
  %exitcond562.not.a = icmp eq i64 %indvars.iv.next557, %wide.trip.count561.a
  br i1 %exitcond562.not.a, label %.preheader376, label %.preheader377, !llvm.loop !60

.preheader377:                                    ; preds = %.preheader377.lr.ph, %.loopexit
  %indvars.iv556 = phi i64 [ 0, %.preheader377.lr.ph ], [ %indvars.iv.next557, %.loopexit ] ; 4 uses
  %indvars.iv554 = phi i64 [ 2, %.preheader377.lr.ph ], [ %indvars.iv.next555, %.loopexit ] ; 6 uses
  %i.yc = add nuw i64 %indvars.iv556, 1
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv556
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !43 ; 7 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %.pre638.pre.pre680, i64 %indvars.iv556
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !43 ; 7 uses
  %min.iters.check787 = icmp samesign ult i64 %indvars.iv554, 8
  %6 = ptrtoaddr ptr %i.yg to i64
  %7 = ptrtoaddr ptr %i.ye to i64
  %8 = sub i64 %6, %7
  %diff.check785 = icmp ult i64 %8, 32
  %or.cond826 = select i1 %min.iters.check787, i1 true, i1 %diff.check785
  br i1 %or.cond826, label %scalar.ph786.preheader, label %vector.ph788

vector.ph788:                                     ; preds = %.preheader377
  %n.vec790 = and i64 %indvars.iv554, 9223372036854775800 ; 3 uses
  br label %vector.body791

vector.body791:                                   ; preds = %vector.body791, %vector.ph788
  %index792 = phi i64 [ 0, %vector.ph788 ], [ %index.next793, %vector.body791 ] ; 3 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %index792 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> zeroinitializer, ptr %9, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %10, align 4, !tbaa !50
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %index792 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <4 x float> zeroinitializer, ptr %11, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %12, align 4, !tbaa !50
  %index.next793 = add nuw i64 %index792, 8       ; 2 uses
  %13 = icmp eq i64 %index.next793, %n.vec790
  br i1 %13, label %middle.block794, label %vector.body791, !llvm.loop !61

middle.block794:                                  ; preds = %vector.body791
  %cmp.n795 = icmp eq i64 %indvars.iv554, %n.vec790
  br i1 %cmp.n795, label %.loopexit, label %scalar.ph786.preheader

scalar.ph786.preheader:                           ; preds = %.preheader377, %middle.block794
  %indvars.iv547.ph = phi i64 [ 0, %.preheader377 ], [ %n.vec790, %middle.block794 ] ; 3 uses
  %14 = sub i64 %i.yc, %indvars.iv547.ph
  %xtraiter853 = and i64 %indvars.iv554, 3        ; 2 uses
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %scalar.ph786.prol.loopexit, label %scalar.ph786.prol

scalar.ph786.prol:                                ; preds = %scalar.ph786.preheader, %scalar.ph786.prol
  %indvars.iv547.prol = phi i64 [ %indvars.iv.next548.prol, %scalar.ph786.prol ], [ %indvars.iv547.ph, %scalar.ph786.preheader ] ; 3 uses
  %prol.iter855 = phi i64 [ %prol.iter855.next, %scalar.ph786.prol ], [ 0, %scalar.ph786.preheader ]
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv547.prol
  store float 0.000000e+00, ptr %15, align 4, !tbaa !50
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv547.prol
  store float 0.000000e+00, ptr %16, align 4, !tbaa !50
  %indvars.iv.next548.prol = add nuw nsw i64 %indvars.iv547.prol, 1 ; 2 uses
  %prol.iter855.next = add i64 %prol.iter855, 1   ; 2 uses
  %prol.iter855.cmp.not = icmp eq i64 %prol.iter855.next, %xtraiter853
  br i1 %prol.iter855.cmp.not, label %scalar.ph786.prol.loopexit, label %scalar.ph786.prol, !llvm.loop !62

scalar.ph786.prol.loopexit:                       ; preds = %scalar.ph786.prol, %scalar.ph786.preheader
  %indvars.iv547.unr = phi i64 [ %indvars.iv547.ph, %scalar.ph786.preheader ], [ %indvars.iv.next548.prol, %scalar.ph786.prol ]
  %17 = icmp ult i64 %14, 3
  br i1 %17, label %.loopexit, label %scalar.ph786

.preheader376:                                    ; preds = %.loopexit, %.preheader378
  %.pre638.pre.pre681 = phi ptr [ %.pre638.pre.pre, %.preheader378 ], [ %.pre638.pre.pre680, %.loopexit ] ; 5 uses
  %18 = phi i32 [ %i.wg, %.preheader378 ], [ %i.wi, %.loopexit ]
  br i1 %.not387, label %.preheader375, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader376
  %i.yh = load ptr, ptr @Calignm1.gl, align 8
  br i1 %.not342407, label %._crit_edge447, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %.lr.ph438
  %i.yi = add nuw nsw i64 %i.ag, 1
  %i.yj = add nuw i32 %4, 1
  %wide.trip.count571 = zext i32 %i.yj to i64
  %wide.trip.count566 = and i64 %i.yi, 4294967295
  br label %.lr.ph434

scalar.ph786:                                     ; preds = %scalar.ph786.prol.loopexit, %scalar.ph786
  %indvars.iv547 = phi i64 [ %indvars.iv.next548.3, %scalar.ph786 ], [ %indvars.iv547.unr, %scalar.ph786.prol.loopexit ] ; 6 uses
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv547
  store float 0.000000e+00, ptr %19, align 4, !tbaa !50
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv547
  store float 0.000000e+00, ptr %20, align 4, !tbaa !50
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next548
  store float 0.000000e+00, ptr %21, align 4, !tbaa !50
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next548
  store float 0.000000e+00, ptr %22, align 4, !tbaa !50
  %indvars.iv.next548.1 = add nuw nsw i64 %indvars.iv547, 2 ; 2 uses
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next548.1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next548.1
  store float 0.000000e+00, ptr %24, align 4, !tbaa !50
  %indvars.iv.next548.2 = add nuw nsw i64 %indvars.iv547, 3 ; 2 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.next548.2
  store float 0.000000e+00, ptr %25, align 4, !tbaa !50
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv.next548.2
  store float 0.000000e+00, ptr %26, align 4, !tbaa !50
  %indvars.iv.next548.3 = add nuw nsw i64 %indvars.iv547, 4 ; 2 uses
  %exitcond553.3 = icmp eq i64 %indvars.iv.next548.3, %indvars.iv554
  br i1 %exitcond553.3, label %.loopexit, label %scalar.ph786, !llvm.loop !63

.preheader375:                                    ; preds = %._crit_edge435, %.preheader376
  br i1 %.not342407, label %._crit_edge447, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %i.yk = load ptr, ptr @Calignm1.gl, align 8
  %i.yl = add nuw nsw i64 %i.ag, 1
  %wide.trip.count590 = and i64 %i.yl, 4294967295
  br label %.preheader374

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge435
  %indvars.iv568 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next569, %._crit_edge435 ] ; 3 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv568
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !26
  %i.yo = fptrunc double %i.yn to float           ; 2 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv568
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !8
  %i.yr = load i32, ptr @penalty, align 4
  %i.ys = sitofp i32 %i.yr to float               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph434, %bb.n
  %indvars.iv563.a = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next564, %bb.n ] ; 4 uses
  %.0323431 = phi i32 [ 0, %.lr.ph434 ], [ %.1324, %bb.n ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 %indvars.iv563.a ; 2 uses
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !11
  %i.yv = icmp eq i8 %i.yu, 45
  br i1 %i.yv, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.yw = add nsw i32 %.0323431, 1                ; 3 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %.pre638.pre.pre681, i64 %indvars.iv563.a
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !43
  %i.yz = sext i32 %i.yw to i64                   ; 2 uses
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yy, i64 %i.yz ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !50
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.yo, float %i.ys, float %i.zb)
  store float %i.zc, ptr %i.za, align 4, !tbaa !50
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !11
  %.not361 = icmp eq i8 %i.ze, 45
  br i1 %.not361, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv563.a
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !43
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.yz ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !50
  %i.zj = tail call float @llvm.fmuladd.f32(float %i.yo, float %i.ys, float %i.zi)
  store float %i.zj, ptr %i.zh, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1324 = phi i32 [ %i.yw, %bb.m ], [ %i.yw, %bb.l ], [ 0, %bb.k ]
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563.a, 1 ; 2 uses
  %exitcond567.not = icmp eq i64 %indvars.iv.next564, %wide.trip.count566
  br i1 %exitcond567.not, label %._crit_edge435, label %bb.k, !llvm.loop !64

._crit_edge435:                                   ; preds = %bb.n
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count571
  br i1 %exitcond572.not, label %.preheader375, label %.lr.ph434, !llvm.loop !65

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv580 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next581, %._crit_edge444 ] ; 9 uses
  %i.zk = shl i64 %indvars.iv580, 2
  %.not359439 = icmp eq i64 %indvars.iv580, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader374
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %.pre638.pre.pre681, i64 %indvars.iv580
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !43 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %.pre637.a = load float, ptr %.phi.trans.insert, align 4, !tbaa !50 ; 2 uses
  %xtraiter857 = and i64 %indvars.iv580, 3        ; 3 uses
  %i.zn = icmp samesign ult i64 %indvars.iv580, 4
  br i1 %i.zn, label %.epil.preheader856, label %.lr.ph441.new

.lr.ph441.new:                                    ; preds = %.lr.ph441
  %unroll_iter861 = and i64 %indvars.iv580, 9223372036854775804
  br label %bb.p

.lr.ph443.unr-lcssa:                              ; preds = %bb.p
  %lcmp.mod859.not = icmp eq i64 %xtraiter857, 0
  br i1 %lcmp.mod859.not, label %.lr.ph443, label %.epil.preheader856

.epil.preheader856:                               ; preds = %.lr.ph443.unr-lcssa, %.lr.ph441
  %.epil.init = phi float [ %.pre637.a, %.lr.ph441 ], [ %i.aak, %.lr.ph443.unr-lcssa ]
  %indvars.iv573.epil.init = phi i64 [ 1, %.lr.ph441 ], [ %indvars.iv.next574.3, %.lr.ph443.unr-lcssa ]
  %lcmp.mod860 = icmp ne i64 %xtraiter857, 0
  tail call void @llvm.assume(i1 %lcmp.mod860)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader856
  %i.zo = phi float [ %.epil.init, %.epil.preheader856 ], [ %i.zr, %bb.o ]
  %indvars.iv573.epil = phi i64 [ %indvars.iv573.epil.init, %.epil.preheader856 ], [ %indvars.iv.next574.epil, %bb.o ]
  %epil.iter858 = phi i64 [ 0, %.epil.preheader856 ], [ %epil.iter858.next, %bb.o ]
  %indvars.iv.next574.epil = add nuw nsw i64 %indvars.iv573.epil, 1 ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next574.epil ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !50
  %i.zr = fadd float %i.zo, %i.zq                 ; 2 uses
  store float %i.zr, ptr %i.zp, align 4, !tbaa !50
  %epil.iter858.next = add i64 %epil.iter858, 1   ; 2 uses
  %epil.iter858.cmp.not = icmp eq i64 %epil.iter858.next, %xtraiter857
  br i1 %epil.iter858.cmp.not, label %.lr.ph443, label %bb.o, !llvm.loop !66

.lr.ph443:                                        ; preds = %bb.o, %.lr.ph443.unr-lcssa
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %indvars.iv580
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !43 ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 %i.zk
  %scevgep = getelementptr i8, ptr %i.zu, i64 4
  %load_initial = load float, ptr %scevgep, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph441.new
  %i.zv = phi float [ %.pre637.a, %.lr.ph441.new ], [ %i.aak, %bb.p ]
  %indvars.iv573 = phi i64 [ 1, %.lr.ph441.new ], [ %indvars.iv.next574.3, %bb.p ] ; 4 uses
  %niter862 = phi i64 [ 0, %.lr.ph441.new ], [ %niter862.next.3, %bb.p ]
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv573
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 4 ; 2 uses
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !50
  %i.zz = fadd float %i.zv, %i.zy                 ; 2 uses
  store float %i.zz, ptr %i.zx, align 4, !tbaa !50
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv573
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8 ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !50
  %i.aad = fadd float %i.zz, %i.aac               ; 2 uses
  store float %i.aad, ptr %i.aab, align 4, !tbaa !50
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv573
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 12 ; 2 uses
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !50
  %i.aah = fadd float %i.aad, %i.aag              ; 2 uses
  store float %i.aah, ptr %i.aaf, align 4, !tbaa !50
  %indvars.iv.next574.3 = add nuw nsw i64 %indvars.iv573, 4 ; 3 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next574.3 ; 2 uses
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !50
  %i.aak = fadd float %i.aah, %i.aaj              ; 3 uses
  store float %i.aak, ptr %i.aai, align 4, !tbaa !50
  %niter862.next.3 = add nuw i64 %niter862, 4     ; 2 uses
  %niter862.ncmp.3 = icmp eq i64 %niter862.next.3, %unroll_iter861
  br i1 %niter862.ncmp.3, label %.lr.ph443.unr-lcssa, label %bb.p, !llvm.loop !67

bb.q:                                             ; preds = %.lr.ph443, %bb.q
  %store_forwarded = phi float [ %load_initial, %.lr.ph443 ], [ %i.aan, %bb.q ]
  %indvars.iv582.a = phi i64 [ %indvars.iv580, %.lr.ph443 ], [ %indvars.iv.next583.a, %bb.q ] ; 3 uses
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %indvars.iv582.a ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !50
  %i.aan = fadd float %store_forwarded, %i.aam    ; 2 uses
  store float %i.aan, ptr %i.aal, align 4, !tbaa !50
  %indvars.iv.next583.a = add nsw i64 %indvars.iv582.a, -1
  %i.aao = icmp sgt i64 %indvars.iv582.a, 1
  br i1 %i.aao, label %bb.q, label %._crit_edge444, !llvm.loop !68

._crit_edge444:                                   ; preds = %bb.q, %.preheader374
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge447, label %.preheader374, !llvm.loop !69

._crit_edge447:                                   ; preds = %._crit_edge444, %.lr.ph438, %.preheader375
  %i.aap = load ptr, ptr @Calignm1.v, align 8, !tbaa !38 ; 11 uses
  store ptr %i.aap, ptr @Calignm1.w, align 8, !tbaa !38
  %i.aaq = load ptr, ptr @Calignm1.g, align 8, !tbaa !40 ; 6 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !38
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !43 ; 2 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !50
  %i.aau = load ptr, ptr %i.aap, align 8, !tbaa !43 ; 8 uses
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !50
  %i.aaw = fadd float %i.aat, %i.aav
  store float %i.aaw, ptr %i.aau, align 4, !tbaa !50
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 4 ; 2 uses
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !50
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !38
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !43 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !50
  %i.abe = fadd float %i.aay, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %.pre638.pre.pre681, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !43
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !50
  %i.abj = fadd float %i.abe, %i.abi
  %i.abk = load float, ptr %i.uw, align 4, !tbaa !50
  %i.abl = fadd float %i.abj, %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !43 ; 2 uses
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !50
  %i.abp = fadd float %i.abl, %i.abo
  store float %i.abp, ptr %i.abn, align 4, !tbaa !50
  br i1 %i.fd, label %.lr.ph451, label %._crit_edge452

.lr.ph451:                                        ; preds = %._crit_edge447
  %i.abq = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38
  %smax595 = tail call i32 @llvm.smax.i32(i32 %18, i32 3)
  %wide.trip.count596 = zext nneg i32 %smax595 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph451, %bb.r
  %i.abr = phi ptr [ %i.abc, %.lr.ph451 ], [ %i.acm, %bb.r ]
  %indvars.iv592 = phi i64 [ 2, %.lr.ph451 ], [ %indvars.iv.next593, %bb.r ] ; 6 uses
  %.0318448 = phi float [ 0.000000e+00, %.lr.ph451 ], [ %i.ace, %bb.r ]
  %i.abs = add nsw i64 %indvars.iv592, -1         ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 4
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !50
  %i.abv = getelementptr [8 x i8], ptr %i.abq, i64 %indvars.iv592
  %i.abw = getelementptr i8, ptr %i.abv, i64 -16
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !43
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.abx, i64 %i.abs
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !50
  %i.aca = fadd float %i.abu, %i.abz
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.abs
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !50
  %i.acd = fadd float %i.aca, %i.acc
  %i.ace = fadd float %.0318448, %i.acd           ; 2 uses
  %i.acf = load float, ptr %i.aax, align 4, !tbaa !50
  %i.acg = load float, ptr %i.uw, align 4, !tbaa !50
  %i.ach = fadd float %i.acf, %i.acg
  %i.aci = fadd float %i.ace, %i.ach
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %indvars.iv592
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !38
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !43 ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !50
  %i.aco = fadd float %i.aci, %i.acn
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.pre638.pre.pre681, i64 %indvars.iv592
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !43
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 3 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.next593
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !50
  %i.act = fadd float %i.aco, %i.acs
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %indvars.iv592
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !43 ; 2 uses
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !50
  %i.acx = fadd float %i.act, %i.acw
  store float %i.acx, ptr %i.acv, align 4, !tbaa !50
  %exitcond597.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count596
  br i1 %exitcond597.not, label %._crit_edge452, label %bb.r, !llvm.loop !70

._crit_edge452:                                   ; preds = %bb.r, %._crit_edge447
  %i.acy = load i32, ptr @penalty, align 4, !tbaa !4
  %i.acz = sitofp i32 %i.acy to float             ; 4 uses
  %i.ada = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !4
  %i.adb = sitofp i32 %i.ada to float             ; 4 uses
  %i.adc = fmul float %.0315.lcssa, %i.adb
  %i.add = tail call float @llvm.fmuladd.f32(float %i.acz, float %.0315.lcssa, float %i.adc)
  %i.ade = getelementptr i8, ptr %i.aau, i64 4    ; 2 uses
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !50
  %i.adg = fadd float %i.adf, %i.add
  store float %i.adg, ptr %i.ade, align 4, !tbaa !50
  %.not348453 = icmp slt i32 %i.aj, 2
  br i1 %.not348453, label %.preheader372, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %._crit_edge452
  %i.adh = add nuw nsw i64 %i.ai, 1               ; 3 uses
  %wide.trip.count601 = and i64 %i.adh, 4294967295 ; 2 uses
  %xtraiter863 = and i64 %i.adh, 1                ; 2 uses
  %i.adi = icmp eq i64 %wide.trip.count601, 3
  br i1 %i.adi, label %.lr.ph457.epil.preheader, label %.lr.ph457.preheader.new

.lr.ph457.preheader.new:                          ; preds = %.lr.ph457.preheader
  %i.adj = add nsw i64 %wide.trip.count601, -2
  %unroll_iter867 = sub nsw i64 %i.adj, %xtraiter863
  br label %.lr.ph457

.preheader372:                                    ; preds = %._crit_edge452
  br i1 %.not343410, label %.preheader371, label %.lr.ph460

.lr.ph460.loopexit.unr-lcssa:                     ; preds = %.lr.ph457
  %lcmp.mod865.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod865.not, label %.lr.ph460, label %.lr.ph457.epil.preheader

.lr.ph457.epil.preheader:                         ; preds = %.lr.ph460.loopexit.unr-lcssa, %.lr.ph457.preheader
  %indvars.iv598.epil.init = phi i64 [ 2, %.lr.ph457.preheader ], [ %indvars.iv.next599.1, %.lr.ph460.loopexit.unr-lcssa ]
  %.1319454.epil.init = phi float [ 0.000000e+00, %.lr.ph457.preheader ], [ %i.adx, %.lr.ph460.loopexit.unr-lcssa ]
  %lcmp.mod866 = trunc i64 %i.adh to i1
  tail call void @llvm.assume(i1 %lcmp.mod866)
  %i.adk = tail call float @llvm.fmuladd.f32(float %i.adb, float %.0315.lcssa, float %.1319454.epil.init)
  %i.adl = tail call float @llvm.fmuladd.f32(float %i.acz, float %.0315.lcssa, float %i.adk)
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv598.epil.init ; 2 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !50
  %i.ado = fadd float %i.adl, %i.adn
  store float %i.ado, ptr %i.adm, align 4, !tbaa !50
  br label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph457.epil.preheader, %.lr.ph460.loopexit.unr-lcssa, %.preheader372
  %i.adp = load ptr, ptr @Calignm1.m, align 8, !tbaa !43 ; 2 uses
  %i.adq = load ptr, ptr @Calignm1.mp, align 8, !tbaa !16 ; 2 uses
  %i.adr = add nuw nsw i64 %i.ai, 1               ; 2 uses
  %wide.trip.count606 = and i64 %i.adr, 4294967295 ; 3 uses
  %min.iters.check798 = icmp samesign ult i64 %wide.trip.count606, 8
  br i1 %min.iters.check798, label %scalar.ph797.preheader, label %vector.ph799

vector.ph799:                                     ; preds = %.lr.ph460
  %n.vec801 = and i64 %i.adr, 4294967288          ; 3 uses
  br label %vector.body802

vector.body802:                                   ; preds = %vector.body802, %vector.ph799
  %index803 = phi i64 [ 0, %vector.ph799 ], [ %index.next804, %vector.body802 ] ; 3 uses
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %index803 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <4 x float> zeroinitializer, ptr %27, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %28, align 4, !tbaa !50
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %index803 ; 2 uses
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store <4 x i32> zeroinitializer, ptr %29, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %30, align 4, !tbaa !4
  %index.next804 = add nuw i64 %index803, 8       ; 2 uses
  %31 = icmp eq i64 %index.next804, %n.vec801
  br i1 %31, label %middle.block805, label %vector.body802, !llvm.loop !71

middle.block805:                                  ; preds = %vector.body802
  %cmp.n806 = icmp eq i64 %wide.trip.count606, %n.vec801
  br i1 %cmp.n806, label %.preheader371, label %scalar.ph797.preheader

scalar.ph797.preheader:                           ; preds = %.lr.ph460, %middle.block805
  %indvars.iv603.ph = phi i64 [ 0, %.lr.ph460 ], [ %n.vec801, %middle.block805 ]
  br label %scalar.ph797

.lr.ph457:                                        ; preds = %.lr.ph457, %.lr.ph457.preheader.new
  %indvars.iv598 = phi i64 [ 2, %.lr.ph457.preheader.new ], [ %indvars.iv.next599.1, %.lr.ph457 ] ; 3 uses
  %.1319454 = phi float [ 0.000000e+00, %.lr.ph457.preheader.new ], [ %i.adx, %.lr.ph457 ]
  %niter868 = phi i64 [ 0, %.lr.ph457.preheader.new ], [ %niter868.next.1, %.lr.ph457 ]
  %i.ads = tail call float @llvm.fmuladd.f32(float %i.adb, float %.0315.lcssa, float %.1319454) ; 2 uses
  %i.adt = tail call float @llvm.fmuladd.f32(float %i.acz, float %.0315.lcssa, float %i.ads)
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv598 ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !50
  %i.adw = fadd float %i.adt, %i.adv
  store float %i.adw, ptr %i.adu, align 4, !tbaa !50
  %i.adx = tail call float @llvm.fmuladd.f32(float %i.adb, float %.0315.lcssa, float %i.ads) ; 3 uses
  %i.ady = tail call float @llvm.fmuladd.f32(float %i.acz, float %.0315.lcssa, float %i.adx)
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv598
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 4 ; 2 uses
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !50
  %i.aec = fadd float %i.ady, %i.aeb
  store float %i.aec, ptr %i.aea, align 4, !tbaa !50
  %indvars.iv.next599.1 = add nuw nsw i64 %indvars.iv598, 2 ; 2 uses
  %niter868.next.1 = add i64 %niter868, 2         ; 2 uses
  %niter868.ncmp.1 = icmp eq i64 %niter868.next.1, %unroll_iter867
  br i1 %niter868.ncmp.1, label %.lr.ph460.loopexit.unr-lcssa, label %.lr.ph457, !llvm.loop !72

.preheader371:                                    ; preds = %scalar.ph797, %middle.block805, %.preheader372
  %.not350468 = icmp slt i32 %i.ah, 1
  br i1 %.not350468, label %._crit_edge471, label %.lr.ph470

.lr.ph470:                                        ; preds = %.preheader371
  %.not358461 = icmp slt i32 %i.aj, 1
  %i.aed = load ptr, ptr @Calignm1.m, align 8     ; 4 uses
  %i.aee = load ptr, ptr @Calignm1.mp, align 8    ; 6 uses
  %i.aef = load ptr, ptr @Calignm1.gl, align 8
  %i.aeg = load ptr, ptr @Calignm1.ijp, align 8
  br i1 %.not358461, label %._crit_edge471, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %.lr.ph470
  %i.aeh = add nuw nsw i64 %i.ai, 1
  %i.aei = add nuw nsw i64 %i.ag, 1
  %wide.trip.count617 = and i64 %i.aei, 4294967295
  %wide.trip.count611 = and i64 %i.aeh, 4294967295 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aed, i64 4
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aee, i64 4 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aed, i64 4 ; 3 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %exitcond612.peel.not = icmp eq i64 %wide.trip.count611, 2
  br label %bb.s

scalar.ph797:                                     ; preds = %scalar.ph797.preheader, %scalar.ph797
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %scalar.ph797 ], [ %indvars.iv603.ph, %scalar.ph797.preheader ] ; 3 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv603
  store float 0.000000e+00, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %indvars.iv603
  store i32 0, ptr %33, align 4, !tbaa !4
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1 ; 2 uses
  %exitcond607.not = icmp eq i64 %indvars.iv.next604, %wide.trip.count606
  br i1 %exitcond607.not, label %.preheader371, label %scalar.ph797, !llvm.loop !73

bb.s:                                             ; preds = %.lr.ph464.preheader, %._crit_edge465
  %indvars.iv614 = phi i64 [ 1, %.lr.ph464.preheader ], [ %indvars.iv.next615, %._crit_edge465 ] ; 11 uses
  %i.aeo = getelementptr [8 x i8], ptr %i.aap, i64 %indvars.iv614 ; 2 uses
  %i.aep = getelementptr i8, ptr %i.aeo, i64 -8
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %indvars.iv614 ; 2 uses
  %i.aer = add nsw i64 %indvars.iv614, -1         ; 3 uses
  %i.aes = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.aer
  %i.aet = getelementptr inbounds [8 x i8], ptr %i.aaq, i64 %i.aer ; 3 uses
  %i.aeu = icmp samesign ugt i64 %indvars.iv614, 1 ; 2 uses
  %i.aev = add nsw i64 %indvars.iv614, -2         ; 4 uses
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aev ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.aer ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aef, i64 %i.aev ; 2 uses
  %i.aez = load ptr, ptr %i.aep, align 8, !tbaa !43 ; 3 uses
  %i.afa = load ptr, ptr %i.aeq, align 8, !tbaa !38 ; 3 uses
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !43 ; 4 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv614
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !16 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !43 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !43 ; 2 uses
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %.pre638.pre.pre681, i64 %indvars.iv614
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !43 ; 2 uses
  %i.afk = load ptr, ptr %i.aeo, align 8, !tbaa !43 ; 2 uses
  %i.afl = load float, ptr %i.aez, align 4, !tbaa !50
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !50
  %i.afo = fadd float %i.afl, %i.afn              ; 2 uses
  br i1 %i.aeu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.afp = load float, ptr %i.aau, align 4, !tbaa !50
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !50
  %i.afs = fadd float %i.afp, %i.afr              ; 2 uses
  store float %i.afs, ptr %i.aej, align 4, !tbaa !50
  store i32 0, ptr %i.aek, align 4, !tbaa !4
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.aft = load ptr, ptr %i.aew, align 8, !tbaa !43
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !50
  %i.afv = load ptr, ptr %i.aet, align 8, !tbaa !38 ; 2 uses
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !43
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 4
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !50
  %i.afz = fadd float %i.afu, %i.afy
  %i.aga = load float, ptr %i.aex, align 4, !tbaa !50 ; 2 uses
  %i.agb = fadd float %i.afz, %i.aga              ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !43
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  %i.agf = load float, ptr %i.age, align 4, !tbaa !50
  %i.agg = load ptr, ptr %i.aey, align 8, !tbaa !43
  %i.agh = load i32, ptr %i.ael, align 4, !tbaa !4
  %i.agi = sext i32 %i.agh to i64
  %i.agj = sub nsw i64 %indvars.iv614, %i.agi
  %i.agk = getelementptr [4 x i8], ptr %i.agg, i64 %i.agj
  %i.agl = getelementptr i8, ptr %i.agk, i64 -8
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !50
  %i.agn = fadd float %i.agf, %i.agm
  %i.ago = fadd float %i.aga, %i.agn
  %i.agp = load float, ptr %i.aem, align 4, !tbaa !50
  %i.agq = fadd float %i.agp, %i.ago              ; 3 uses
  store float %i.agq, ptr %i.aem, align 4, !tbaa !50
  %i.agr = fcmp olt float %i.agq, %i.agb
  br i1 %i.agr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.agb, ptr %i.aem, align 4, !tbaa !50
  %i.ags = trunc nsw i64 %i.aev to i32
  store i32 %i.ags, ptr %i.ael, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.agt = phi float [ %i.agb, %bb.v ], [ %i.agq, %bb.u ], [ %i.afs, %bb.t ]
  %i.agu = load float, ptr %i.aez, align 4, !tbaa !50
  %i.agv = load float, ptr %i.afb, align 4, !tbaa !50
  %i.agw = fadd float %i.agu, %i.agv              ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.afd, i64 4 ; 3 uses
  store i32 0, ptr %i.agx, align 4, !tbaa !4
  %i.agy = load float, ptr %i.aff, align 4, !tbaa !50
  %i.agz = fadd float %i.afo, %i.agy              ; 2 uses
  %i.aha = fcmp ogt float %i.agz, %i.agw
  br i1 %i.aha, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 -1, ptr %i.agx, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0320.peel = phi float [ %i.agz, %bb.x ], [ %i.agw, %bb.w ] ; 2 uses
  %i.ahb = load float, ptr %i.afh, align 4, !tbaa !50
  %i.ahc = fadd float %i.agt, %i.ahb
  %i.ahd = load i32, ptr %i.aen, align 4, !tbaa !4
  %i.ahe = trunc nuw nsw i64 %indvars.iv614 to i32 ; 2 uses
  %i.ahf = sub nsw i32 %i.ahe, %i.ahd             ; 2 uses
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.ahg
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !50
  %i.ahj = fadd float %i.ahc, %i.ahi              ; 2 uses
  %i.ahk = fcmp ogt float %i.ahj, %.0320.peel
  br i1 %i.ahk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ahf, ptr %i.agx, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1321.peel = phi float [ %i.ahj, %bb.z ], [ %.0320.peel, %bb.y ]
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.afk, i64 4 ; 2 uses
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !50
  %i.ahn = fadd float %.1321.peel, %i.ahm
  store float %i.ahn, ptr %i.ahl, align 4, !tbaa !50
  br i1 %exitcond612.peel.not, label %._crit_edge465, label %.peel.next

.peel.next:                                       ; preds = %bb.aa
  %i.aho = load ptr, ptr %i.aes, align 8, !tbaa !43
  %i.ahp = load ptr, ptr %i.aeq, align 8, !tbaa !38 ; 2 uses
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !43
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahs = load ptr, ptr %i.aet, align 8, !tbaa !38
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !43
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = trunc nsw i64 %i.aev to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.peel.next
  %indvars.iv608 = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next609, %bb.aj ] ; 13 uses
  %i.ahx = phi float [ %i.afo, %.peel.next ], [ %i.ain, %bb.aj ]
  %i.ahy = phi i32 [ 0, %.peel.next ], [ %i.aim, %bb.aj ]
  %i.ahz = add nsw i64 %indvars.iv608, -2         ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.ahz
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !50
  %i.aic = load float, ptr %i.ahr, align 4, !tbaa !50
  %i.aid = fadd float %i.aib, %i.aic
  %i.aie = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !4
  %i.aif = sitofp i32 %i.aie to float             ; 2 uses
  %i.aig = tail call float @llvm.fmuladd.f32(float %i.aif, float %.0315.lcssa, float %i.aid) ; 2 uses
  %i.aih = load float, ptr %i.ahv, align 4, !tbaa !50
  %i.aii = tail call float @llvm.fmuladd.f32(float %i.aif, float %.0315.lcssa, float %i.aih)
  %i.aij = fadd float %i.ahx, %i.aii              ; 2 uses
  %i.aik = fcmp olt float %i.aij, %i.aig          ; 2 uses
  %i.ail = trunc nsw i64 %i.ahz to i32
  %i.aim = select i1 %i.aik, i32 %i.ail, i32 %i.ahy ; 2 uses
  %i.ain = select i1 %i.aik, float %i.aig, float %i.aij ; 2 uses
  br i1 %i.aeu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.aio = load ptr, ptr %i.aew, align 8, !tbaa !43
  %i.aip = getelementptr [4 x i8], ptr %i.aio, i64 %indvars.iv608
  %i.aiq = getelementptr i8, ptr %i.aip, i64 -4
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !50
  %i.ais = load ptr, ptr %i.aet, align 8, !tbaa !38 ; 2 uses
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !43
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !50
  %i.aiw = fadd float %i.air, %i.aiv
  %i.aix = load float, ptr %i.aex, align 4, !tbaa !50 ; 2 uses
  %i.aiy = fadd float %i.aiw, %i.aix              ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !43
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !50
  %i.ajd = load ptr, ptr %i.aey, align 8, !tbaa !43
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv608 ; 2 uses
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !4
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = sub nsw i64 %indvars.iv614, %i.ajg
  %i.aji = getelementptr [4 x i8], ptr %i.ajd, i64 %i.ajh
  %i.ajj = getelementptr i8, ptr %i.aji, i64 -8
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !50
  %i.ajl = fadd float %i.ajc, %i.ajk
  %i.ajm = fadd float %i.aix, %i.ajl
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %indvars.iv608 ; 3 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !50
  %i.ajp = fadd float %i.ajo, %i.ajm              ; 3 uses
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !50
  %i.ajq = fcmp olt float %i.ajp, %i.aiy
  br i1 %i.ajq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store float %i.aiy, ptr %i.ajn, align 4, !tbaa !50
  store i32 %i.ahw, ptr %i.aje, align 4, !tbaa !4
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ajr = getelementptr [4 x i8], ptr %i.aau, i64 %indvars.iv608
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 -4
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !50
  %i.aju = load ptr, ptr %i.ahp, align 8, !tbaa !43
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 4
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !50
  %i.ajx = fadd float %i.ajt, %i.ajw              ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %indvars.iv608
  store float %i.ajx, ptr %i.ajy, align 4, !tbaa !50
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv608
  store i32 0, ptr %i.ajz, align 4, !tbaa !4
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.aka = phi float [ %i.ajp, %bb.ac ], [ %i.aiy, %bb.ad ], [ %i.ajx, %bb.ae ]
  %i.akb = getelementptr [4 x i8], ptr %i.aez, i64 %indvars.iv608
  %i.akc = getelementptr i8, ptr %i.akb, i64 -4
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !50
  %i.ake = load float, ptr %i.afb, align 4, !tbaa !50
  %i.akf = fadd float %i.akd, %i.ake              ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv608 ; 3 uses
  store i32 0, ptr %i.akg, align 4, !tbaa !4
  %i.akh = load float, ptr %i.aff, align 4, !tbaa !50
  %i.aki = fadd float %i.ain, %i.akh              ; 2 uses
  %i.akj = fcmp ogt float %i.aki, %i.akf
  br i1 %i.akj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.akk = trunc nuw nsw i64 %indvars.iv608 to i32
  %.neg = sub nsw i32 %i.aim, %i.akk
  store i32 %.neg, ptr %i.akg, align 4, !tbaa !4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0320 = phi float [ %i.aki, %bb.ag ], [ %i.akf, %bb.af ] ; 2 uses
  %i.akl = load float, ptr %i.afh, align 4, !tbaa !50
  %i.akm = fadd float %i.aka, %i.akl
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %indvars.iv608
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !4
  %i.akp = sub nsw i32 %i.ahe, %i.ako             ; 2 uses
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.akq
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !50
  %i.akt = fadd float %i.akm, %i.aks              ; 2 uses
  %i.aku = fcmp ogt float %i.akt, %.0320
  br i1 %i.aku, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.akp, ptr %i.akg, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1321 = phi float [ %i.akt, %bb.ai ], [ %.0320, %bb.ah ]
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %indvars.iv608 ; 2 uses
  %i.akw = load float, ptr %i.akv, align 4, !tbaa !50
  %i.akx = fadd float %.1321, %i.akw
  store float %i.akx, ptr %i.akv, align 4, !tbaa !50
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next609, %wide.trip.count611
  br i1 %exitcond612.not, label %._crit_edge465, label %bb.ab, !llvm.loop !74

._crit_edge465:                                   ; preds = %bb.aj, %bb.aa
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %wide.trip.count617
  br i1 %exitcond618.not, label %._crit_edge471, label %bb.s, !llvm.loop !76

._crit_edge471:                                   ; preds = %._crit_edge465, %.lr.ph470, %.preheader371
  %i.aky = load i32, ptr @cnst, align 4, !tbaa !4
  %.not351 = icmp eq i32 %i.aky, 0
  br i1 %.not351, label %._crit_edge644, label %bb.ak

._crit_edge644:                                   ; preds = %._crit_edge471
  %.phi.trans.insert645 = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.ux
  %.pre646 = load ptr, ptr %.phi.trans.insert645, align 8, !tbaa !43
  %.pre647.pre.pre = load ptr, ptr @Calignm1.ijp, align 8, !tbaa !48
  %.pre649 = shl i64 %i.ai, 32
  %.pre650 = ashr exact i64 %.pre649, 32
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge471
  %sext352 = add i64 %sext.pre-phi, -4294967296
  %i.akz = ashr exact i64 %sext352, 29
  %i.ala = getelementptr inbounds i8, ptr %i.aap, i64 %i.akz
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !43
  %i.alc = shl i64 %i.ai, 32                      ; 2 uses
  %sext353 = add i64 %i.alc, -4294967296
  %i.ald = ashr exact i64 %sext353, 30
  %i.ale = getelementptr inbounds i8, ptr %i.alb, i64 %i.ald
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !50
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.aaq, i64 %i.ux
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !38
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !43
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !50
  %i.alk = fadd float %i.alf, %i.alj
  %i.all = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.ux
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !43 ; 2 uses
  %i.aln = ashr exact i64 %i.alc, 32              ; 3 uses
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.alm, i64 %i.aln
  store float %i.alk, ptr %i.alo, align 4, !tbaa !50
  %i.alp = load ptr, ptr @Calignm1.ijp, align 8, !tbaa !48 ; 2 uses
  %i.alq = getelementptr inbounds [8 x i8], ptr %i.alp, i64 %i.ux
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !16
  %i.als = getelementptr inbounds [4 x i8], ptr %i.alr, i64 %i.aln
  store i32 0, ptr %i.als, align 4, !tbaa !4
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge644, %bb.ak
  %.pre-phi = phi i64 [ %.pre650, %._crit_edge644 ], [ %i.aln, %bb.ak ] ; 2 uses
  %.pre647.pre = phi ptr [ %.pre647.pre.pre, %._crit_edge644 ], [ %i.alp, %bb.ak ] ; 11 uses
  %i.alt = phi ptr [ %.pre646, %._crit_edge644 ], [ %i.alm, %bb.ak ]
  %i.alu = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %.pre-phi
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !50
  store float %i.alv, ptr %0, align 4, !tbaa !50
  br i1 %.not342407, label %.preheader, label %.lr.ph479

.lr.ph479:                                        ; preds = %bb.al
  %i.alw = add nuw nsw i64 %i.ag, 1               ; 3 uses
  %wide.trip.count622 = and i64 %i.alw, 4294967295
  %i.alx = add nsw i64 %wide.trip.count622, -1
  %xtraiter870 = and i64 %i.alw, 7                ; 3 uses
  %i.aly = icmp ult i64 %i.alx, 7
  br i1 %i.aly, label %.epil.preheader869, label %.lr.ph479.new

.lr.ph479.new:                                    ; preds = %.lr.ph479
  %unroll_iter874 = and i64 %i.alw, 4294967288
  br label %bb.an

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.an
  %lcmp.mod872.not = icmp eq i64 %xtraiter870, 0
  br i1 %lcmp.mod872.not, label %.preheader, label %.epil.preheader869

.epil.preheader869:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph479
  %indvars.iv619.epil.init = phi i64 [ 0, %.lr.ph479 ], [ %indvars.iv.next620.7, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod873 = icmp ne i64 %xtraiter870, 0
  tail call void @llvm.assume(i1 %lcmp.mod873)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader869
  %indvars.iv619.epil = phi i64 [ %indvars.iv619.epil.init, %.epil.preheader869 ], [ %indvars.iv.next620.epil, %bb.am ] ; 2 uses
  %epil.iter871 = phi i64 [ 0, %.epil.preheader869 ], [ %epil.iter871.next, %bb.am ]
  %indvars.iv.next620.epil = add nuw nsw i64 %indvars.iv619.epil, 1 ; 2 uses
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv619.epil
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !16
  %i.amb = trunc nuw i64 %indvars.iv.next620.epil to i32
  store i32 %i.amb, ptr %i.ama, align 4, !tbaa !4
  %epil.iter871.next = add i64 %epil.iter871, 1   ; 2 uses
  %epil.iter871.cmp.not = icmp eq i64 %epil.iter871.next, %xtraiter870
  br i1 %epil.iter871.cmp.not, label %.preheader, label %bb.am, !llvm.loop !77

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.am, %bb.al
  br i1 %.not343410, label %._crit_edge483, label %.lr.ph482

.lr.ph482:                                        ; preds = %.preheader
  %i.amc = load ptr, ptr %.pre647.pre, align 8, !tbaa !16 ; 2 uses
  %i.amd = add nuw nsw i64 %i.ai, 1               ; 2 uses
  %wide.trip.count627 = and i64 %i.amd, 4294967295 ; 3 uses
  %min.iters.check809 = icmp samesign ult i64 %wide.trip.count627, 8
  br i1 %min.iters.check809, label %scalar.ph808.preheader, label %vector.ph810

vector.ph810:                                     ; preds = %.lr.ph482
  %n.vec812 = and i64 %i.amd, 4294967288          ; 3 uses
  br label %vector.body813

vector.body813:                                   ; preds = %vector.body813, %vector.ph810
  %index814 = phi i64 [ 0, %vector.ph810 ], [ %index.next815, %vector.body813 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph810 ], [ %vec.ind.next, %vector.body813 ] ; 3 uses
  %i.ame = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.amf = sub <4 x i32> splat (i32 -5), %vec.ind
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %index814 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16
  store <4 x i32> %i.ame, ptr %i.amg, align 4, !tbaa !4
  store <4 x i32> %i.amf, ptr %i.amh, align 4, !tbaa !4
  %index.next815 = add nuw i64 %index814, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ami = icmp eq i64 %index.next815, %n.vec812
  br i1 %i.ami, label %middle.block816, label %vector.body813, !llvm.loop !78

middle.block816:                                  ; preds = %vector.body813
  %cmp.n817 = icmp eq i64 %wide.trip.count627, %n.vec812
  br i1 %cmp.n817, label %._crit_edge483, label %scalar.ph808.preheader

scalar.ph808.preheader:                           ; preds = %.lr.ph482, %middle.block816
  %indvars.iv624.ph = phi i64 [ 0, %.lr.ph482 ], [ %n.vec812, %middle.block816 ]
  br label %scalar.ph808

bb.an:                                            ; preds = %bb.an, %.lr.ph479.new
  %indvars.iv619 = phi i64 [ 0, %.lr.ph479.new ], [ %indvars.iv.next620.7, %bb.an ] ; 9 uses
  %niter875 = phi i64 [ 0, %.lr.ph479.new ], [ %niter875.next.7, %bb.an ]
  %indvars.iv.next620 = or disjoint i64 %indvars.iv619, 1 ; 2 uses
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv619
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !16
  %i.aml = trunc nuw i64 %indvars.iv.next620 to i32
  store i32 %i.aml, ptr %i.amk, align 4, !tbaa !4
  %indvars.iv.next620.1 = or disjoint i64 %indvars.iv619, 2 ; 2 uses
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !16
  %i.amo = trunc nuw i64 %indvars.iv.next620.1 to i32
  store i32 %i.amo, ptr %i.amn, align 4, !tbaa !4
  %indvars.iv.next620.2 = or disjoint i64 %indvars.iv619, 3 ; 2 uses
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.1
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !16
  %i.amr = trunc nuw i64 %indvars.iv.next620.2 to i32
  store i32 %i.amr, ptr %i.amq, align 4, !tbaa !4
  %indvars.iv.next620.3 = or disjoint i64 %indvars.iv619, 4 ; 2 uses
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.2
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !16
  %i.amu = trunc nuw i64 %indvars.iv.next620.3 to i32
  store i32 %i.amu, ptr %i.amt, align 4, !tbaa !4
  %indvars.iv.next620.4 = or disjoint i64 %indvars.iv619, 5 ; 2 uses
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.3
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !16
  %i.amx = trunc nuw i64 %indvars.iv.next620.4 to i32
  store i32 %i.amx, ptr %i.amw, align 4, !tbaa !4
  %indvars.iv.next620.5 = or disjoint i64 %indvars.iv619, 6 ; 2 uses
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.4
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !16
  %i.ana = trunc nuw i64 %indvars.iv.next620.5 to i32
  store i32 %i.ana, ptr %i.amz, align 4, !tbaa !4
  %indvars.iv.next620.6 = or disjoint i64 %indvars.iv619, 7 ; 2 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.5
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !16
  %i.and = trunc nuw i64 %indvars.iv.next620.6 to i32
  store i32 %i.and, ptr %i.anc, align 4, !tbaa !4
  %indvars.iv.next620.7 = add nuw nsw i64 %indvars.iv619, 8 ; 3 uses
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %.pre647.pre, i64 %indvars.iv.next620.6
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !16
  %i.ang = trunc nuw i64 %indvars.iv.next620.7 to i32
  store i32 %i.ang, ptr %i.anf, align 4, !tbaa !4
  %niter875.next.7 = add i64 %niter875, 8         ; 2 uses
  %niter875.ncmp.7 = icmp eq i64 %niter875.next.7, %unroll_iter874
  br i1 %niter875.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %bb.an, !llvm.loop !79

scalar.ph808:                                     ; preds = %scalar.ph808.preheader, %scalar.ph808
  %indvars.iv624 = phi i64 [ %indvars.iv.next625, %scalar.ph808 ], [ %indvars.iv624.ph, %scalar.ph808.preheader ] ; 3 uses
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %i.anh = trunc nuw nsw i64 %indvars.iv624 to i32
  %i.ani = xor i32 %i.anh, -1
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %indvars.iv624
  store i32 %i.ani, ptr %i.anj, align 4, !tbaa !4
  %exitcond628.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count627
  br i1 %exitcond628.not, label %._crit_edge483, label %scalar.ph808, !llvm.loop !80

._crit_edge483:                                   ; preds = %scalar.ph808, %middle.block816, %.preheader
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.aap, i64 %i.ux
  %i.anl = load ptr, ptr @Calignm1.nseq, align 8, !tbaa !30 ; 2 uses
  tail call void @tracking(ptr noundef %i.anl, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %.pre647.pre, i32 noundef %4)
  %i.anm = load ptr, ptr %i.ank, align 8, !tbaa !43
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.anm, i64 %.pre-phi
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !50
  store float %i.ano, ptr %0, align 4, !tbaa !50
  ret ptr %i.anl
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.l = zext i32 %2 to i64
  %wide.trip.count124 = and i64 %i.b, 2147483647
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 5 uses
  %.095115.us = phi double [ %i.bv, %._crit_edge.us ], [ 0.000000e+00, %.preheader.lr.ph.split.us ]
  %.not.us = icmp eq i64 %indvars.iv121, 0
  %i.m = add nsw i64 %indvars.iv121, -1           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %.092112.us = phi double [ 0.000000e+00, %.preheader.us ], [ %.1.us, %bb.i ] ; 2 uses
  %.093111.us = phi double [ 0.000000e+00, %.preheader.us ], [ %.194.us, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load double, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.p = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.us, label %.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %.not109.us = icmp eq i8 %i.t, 45
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = icmp eq i8 %i.w, 45
  %i.y = zext i1 %i.x to i32                      ; 2 uses
  br i1 %.not109.us, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  br label %bb.f

.thread.us:                                       ; preds = %bb.d, %bb.c
  %.096106.us = phi i32 [ %i.y, %bb.d ], [ 0, %bb.c ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 0, ptr %i.ac, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.e
  %.091107.us = phi i32 [ 0, %.thread.us ], [ 1, %bb.e ] ; 3 uses
  %.096105.us = phi i32 [ %.096106.us, %.thread.us ], [ %i.y, %bb.e ] ; 5 uses
  %.not98.us = icmp eq i32 %.096105.us, 0
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  br i1 %.not98.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = add nsw i32 %i.ae, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.af, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store i32 %.sink, ptr %i.ad, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv121
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 45                    ; 4 uses
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv121
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11  ; 2 uses
  %.not101.us = icmp ne i8 %i.an, 45              ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %.not99.not.us = icmp slt i32 %i.ap, %.sink
  %.not100.not.us = icmp sle i32 %i.ap, %.sink
  %i.aq = xor i32 %.091107.us, 1                  ; 2 uses
  %i.ar = select i1 %i.ak, i32 %i.aq, i32 0       ; 2 uses
  %i.as = xor i32 %.096105.us, 1                  ; 2 uses
  %i.at = select i1 %i.ak, i32 0, i32 %i.aq
  %.v.us = select i1 %.not101.us, i32 %i.ar, i32 %i.at
  %i.au = mul nuw nsw i32 %.v.us, %i.as
  %i.av = mul nuw nsw i32 %i.ar, %.096105.us
  %i.aw = select i1 %i.ak, i32 0, i32 %.091107.us ; 2 uses
  %i.ax = mul nuw nsw i32 %i.aw, %i.as
  %i.ay = mul nuw nsw i32 %i.aw, %.096105.us
  %i.az = select i1 %.not99.not.us, i1 true, i1 %.not101.us
  %i.ba = select i1 %i.az, i32 0, i32 %i.ay
  %i.bb = select i1 %i.ak, i32 %.091107.us, i32 0
  %i.bc = mul nuw nsw i32 %i.bb, %.096105.us
  %.not110.us = select i1 %.not100.not.us, i1 %.not101.us, i1 false
  %i.bd = select i1 %.not110.us, i32 %i.bc, i32 0
  %i.be = select i1 %.not101.us, i32 %i.av, i32 %i.ax
  %i.bf = add nuw nsw i32 %i.be, %i.au
  %i.bg = add nuw nsw i32 %i.bf, %i.ba
  %i.bh = add nuw nsw i32 %i.bg, %i.bd
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = load i32, ptr @penalty, align 4, !tbaa !4
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fmul nnan double %i.bk, %i.bi
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.o, double %.093111.us)
  %i.bn = sext i8 %i.aj to i64
  %i.bo = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.bn
  %i.bp = sext i8 %i.an to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = sitofp i32 %i.br to double
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.o, double %.092112.us)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.194.us = phi double [ %i.bm, %bb.h ], [ %.093111.us, %bb.b ] ; 2 uses
  %.1.us = phi double [ %i.bt, %bb.h ], [ %.092112.us, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !83

._crit_edge.us:                                   ; preds = %bb.i
  %i.bu = fadd double %.095115.us, %.1.us
  %i.bv = fadd double %.194.us, %i.bu             ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !84

._crit_edge117:                                   ; preds = %._crit_edge.us, %.preheader.lr.ph, %bb.a
  %.095.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader.lr.ph ], [ %i.bv, %._crit_edge.us ]
  tail call void @free(ptr noundef %i.d) #10
  tail call void @free(ptr noundef %i.e) #10
  ret double %.095.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

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
!61 = distinct !{!61, !15, !34, !35}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !15, !34}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15, !34, !35}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15, !35, !34}
!74 = distinct !{!74, !15, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !15, !34, !35}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15, !35, !34}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 double", !10, i64 0}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
end_hunk_0
