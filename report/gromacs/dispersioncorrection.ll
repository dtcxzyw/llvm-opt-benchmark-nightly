inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb:bb.a
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %._crit_edge327.loopexit, label %.lr.ph326.split.us, !llvm.loop !212

.lr.ph.us:                                        ; preds = %.lr.ph326.split.us
  %i.jv = sext i32 %i.jq to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jv
  %gep332.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv455
  %.0.in.i.us = load i16, ptr %gep332.us, align 2, !tbaa !213
  %.0.i.us = zext i16 %.0.in.i.us to i32
  %i.jx = mul nuw nsw i32 %i.b, %.0.i.us
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.us
  %.5312.us.us = phi double [ %.4190324.us, %.lr.ph.us ], [ %.7.us.us, %bb.ac ] ; 2 uses
  %.2213310.us.us = phi i64 [ %.1212322.us, %.lr.ph.us ], [ %.3214.us.us, %bb.ac ] ; 2 uses
  %.sroa.0.0309.us.us = phi ptr [ %i.jw, %.lr.ph.us ], [ %i.ki, %bb.ac ] ; 2 uses
  %i.jy = load i32, ptr %.sroa.0.0309.us.us, align 4, !tbaa !197
  %i.jz = sext i32 %i.jy to i64                   ; 2 uses
  %i.ka = icmp slt i64 %indvars.iv455, %i.jz
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %gep.us.us = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.jz
  %.0.in.i246.us.us = load i16, ptr %gep.us.us, align 2, !tbaa !213
  %.0.i247.us.us = zext i16 %.0.in.i246.us.us to i32
  %i.kb = add nuw nsw i32 %i.jx, %.0.i247.us.us
  %i.kc = mul nuw nsw i32 %i.kb, 3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !171
  %i.kg = fmul float %i.kf, %i.jk
  %.pn229.in.us.us = fpext float %i.kg to double
  %.pn229.us.us = fdiv double %.pn229.in.us.us, 6.000000e+00
  %.6.us.us = fsub double %.5312.us.us, %.pn229.us.us
  %i.kh = add nsw i64 %.2213310.us.us, %i.jl
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3214.us.us = phi i64 [ %i.kh, %bb.ab ], [ %.2213310.us.us, %bb.aa ] ; 2 uses
  %.7.us.us = phi double [ %.6.us.us, %bb.ab ], [ %.5312.us.us, %bb.aa ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.0309.us.us, i64 4 ; 2 uses
  %.not279.us.us = icmp eq ptr %i.ki, %i.ju
  br i1 %.not279.us.us, label %._crit_edge314.split.us.us, label %bb.aa

._crit_edge327.loopexit:                          ; preds = %._crit_edge314.split.us.us
  %i.kj = insertelement <2 x double> %i.iv, double %.5.lcssa.us, i64 0
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge314.split, %._crit_edge327.loopexit, %bb.z
  %.1212.lcssa = phi i64 [ %.0211338, %bb.z ], [ %.2213.lcssa.us, %._crit_edge327.loopexit ], [ %.2213.lcssa, %._crit_edge314.split ] ; 2 uses
  %i.kk = phi <2 x double> [ %i.iv, %bb.z ], [ %i.kj, %._crit_edge327.loopexit ], [ %i.kw, %._crit_edge314.split ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 56 ; 2 uses
  %.not278 = icmp eq ptr %i.kl, %i.hi
  br i1 %.not278, label %._crit_edge343, label %bb.z

.lr.ph326.split:                                  ; preds = %.lr.ph326.split.preheader, %._crit_edge314.split
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %._crit_edge314.split ], [ 0, %.lr.ph326.split.preheader ] ; 4 uses
  %.1212322 = phi i64 [ %.2213.lcssa, %._crit_edge314.split ], [ %.0211338, %.lr.ph326.split.preheader ] ; 2 uses
  %i.km = phi <2 x double> [ %i.kw, %._crit_edge314.split ], [ %i.iv, %.lr.ph326.split.preheader ] ; 2 uses
  %i.kn = getelementptr [4 x i8], ptr %i.jj, i64 %indvars.iv450 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !197 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !197 ; 2 uses
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.kr
  %.not279308 = icmp eq i32 %i.ko, %i.kq
  br i1 %.not279308, label %._crit_edge314.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph326.split
  %i.kt = sext i32 %i.ko to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.kt
  %gep332 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep331, i64 %indvars.iv450
  %.0.in.i = load i16, ptr %gep332, align 2, !tbaa !213
  %.0.i = zext i16 %.0.in.i to i32
  %i.kv = mul nuw nsw i32 %i.b, %.0.i
  br label %bb.ad

._crit_edge314.split:                             ; preds = %bb.af, %.lr.ph326.split
  %.2213.lcssa = phi i64 [ %.1212322, %.lr.ph326.split ], [ %.3214, %bb.af ] ; 2 uses
  %i.kw = phi <2 x double> [ %i.km, %.lr.ph326.split ], [ %i.ll, %bb.af ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count458
  br i1 %exitcond454.not, label %._crit_edge327, label %.lr.ph326.split, !llvm.loop !212

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %.2213310 = phi i64 [ %.1212322, %.lr.ph ], [ %.3214, %bb.af ] ; 2 uses
  %.sroa.0.0309 = phi ptr [ %i.ku, %.lr.ph ], [ %i.lm, %bb.af ] ; 2 uses
  %i.kx = phi <2 x double> [ %i.km, %.lr.ph ], [ %i.ll, %bb.af ] ; 2 uses
  %i.ky = load i32, ptr %.sroa.0.0309, align 4, !tbaa !197
  %i.kz = sext i32 %i.ky to i64                   ; 2 uses
  %i.la = icmp slt i64 %indvars.iv450, %i.kz
  br i1 %i.la, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep = getelementptr [36 x i8], ptr %invariant.gep331, i64 %i.kz
  %.0.in.i246 = load i16, ptr %gep, align 2, !tbaa !213
  %.0.i247 = zext i16 %.0.in.i246 to i32
  %i.lb = add nuw nsw i32 %i.kv, %.0.i247
  %i.lc = shl nuw nsw i32 %i.lb, 1
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ld
  %i.lf = load <2 x float>, ptr %i.le, align 4, !tbaa !171
  %i.lg = fmul <2 x float> %i.lf, %i.jn
  %i.lh = fpext <2 x float> %i.lg to <2 x double>
  %i.li = fdiv <2 x double> %i.lh, <double 6.000000e+00, double 1.200000e+01>
  %i.lj = fsub <2 x double> %i.kx, %i.li
  %i.lk = add nsw i64 %.2213310, %i.jl
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3214 = phi i64 [ %i.lk, %bb.ae ], [ %.2213310, %bb.ad ] ; 2 uses
  %i.ll = phi <2 x double> [ %i.lj, %bb.ae ], [ %i.kx, %bb.ad ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0309, i64 4 ; 2 uses
  %.not279 = icmp eq ptr %i.lm, %i.ks
  br i1 %.not279, label %._crit_edge314.split, label %bb.ad

bb.ag:                                            ; preds = %bb.t
  %i.ln = ptrtoint ptr %.sroa.12.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0267.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0, i64 noundef %i.lp) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

bb.ah:                                            ; preds = %bb.l
  %i.lq = load ptr, ptr %i.ef, align 8, !tbaa !200 ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -56
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !202
  %i.lt = sext i32 %i.ls to i64
  %i.lu = load ptr, ptr %i.eg, align 8, !tbaa !201 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2408 x i8], ptr %i.lu, i64 %i.lt ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.dx, align 8, !tbaa !192
  %i.ly = load i32, ptr %i.lw, align 8, !tbaa !204
  %.fr409 = freeze i32 %i.ly                      ; 7 uses
  %i.lz = sub nsw i32 %i.lx, %.fr409
  store i32 %i.lz, ptr %0, align 4, !tbaa !193
  %i.ma = sitofp i32 %.fr409 to float
  store float %i.ma, ptr %i.dy, align 4, !tbaa !196
  %i.mb = load ptr, ptr %i.ee, align 8, !tbaa !215 ; 3 uses
  %.not407 = icmp eq ptr %i.lq, %i.mb
  br i1 %.not407, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.ah
  %i.mc = ptrtoint ptr %i.lq to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = sdiv exact i64 %i.me, 56                ; 2 uses
  %i.mg = add nsw i64 %i.mf, -1
  %i.mh = icmp sgt i32 %.fr409, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  %i.mj = load ptr, ptr %4, align 16              ; 10 uses
  %i.mk = add i32 %.fr409, -1
  %i.ml = zext i32 %i.mk to i64
  %i.mm = add nuw nsw i64 %i.ml, 1
  %wide.trip.count463 = zext i32 %.fr409 to i64   ; 4 uses
  %xtraiter588 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.mn = icmp ult i32 %.fr409, 4
  %unroll_iter = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = icmp ne i64 %xtraiter588, 0
  %xtraiter594 = and i64 %wide.trip.count463, 3   ; 3 uses
  %i.mo = icmp ult i32 %.fr409, 4
  %unroll_iter599 = and i64 %wide.trip.count463, 2147483644
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  %lcmp.mod598 = icmp ne i64 %xtraiter594, 0
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph396, %._crit_edge367
  %.0183394 = phi i64 [ 0, %.lr.ph396 ], [ %i.rd, %._crit_edge367 ] ; 4 uses
  %.8393 = phi double [ 0.000000e+00, %.lr.ph396 ], [ %i.rc, %._crit_edge367 ]
  %.2207391 = phi i64 [ 0, %.lr.ph396 ], [ %.3208.lcssa, %._crit_edge367 ] ; 4 uses
  %i.mp = phi <2 x double> [ zeroinitializer, %.lr.ph396 ], [ %i.rb, %._crit_edge367 ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [56 x i8], ptr %i.mb, i64 %.0183394 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !202
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [2408 x i8], ptr %i.lu, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !204 ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %bb.ai
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !209 ; 2 uses
  %i.mz = icmp ne i64 %.0183394, %i.mg            ; 3 uses
  %i.na = icmp ne i64 %.0183394, 0
  %i.nb = icmp ne i32 %i.my, 1
  %or.cond.not412 = select i1 %i.na, i1 true, i1 %i.nb ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  br i1 %i.mh, label %.lr.ph366.split.us, label %.lr.ph366.split

.lr.ph366.split.us:                               ; preds = %.lr.ph366
  %wide.trip.count478 = zext nneg i32 %i.mv to i64 ; 2 uses
  %brmerge = select i1 %i.mz, i1 true, i1 %or.cond.not412 ; 2 uses
  %not. = xor i1 %i.mz, true
  %i.nd = sext i1 %not. to i32
  %.mux = add nsw i32 %i.my, %i.nd                ; 2 uses
  %i.ne = sitofp i32 %.mux to float               ; 6 uses
  %i.nf = sext i32 %.mux to i64
  %i.ng = mul nsw i64 %i.mm, %i.nf                ; 2 uses
  br i1 %3, label %.lr.ph366.split.us.split.us.preheader, label %.lr.ph366.split.us.split.preheader

.lr.ph366.split.us.split.preheader:               ; preds = %.lr.ph366.split.us
  br i1 %brmerge, label %.lr.ph366.split.us.split.preheader.a, label %.split385.us

.lr.ph366.split.us.split.preheader.a:             ; preds = %.lr.ph366.split.us.split.preheader
  %8 = load ptr, ptr %i.nc, align 8, !tbaa !210
  %invariant.gep = getelementptr inbounds nuw i8, ptr %8, i64 %.0.in.in.v.i
  %9 = load ptr, ptr %i.mi, align 8, !tbaa !210
  %invariant.gep357.us = getelementptr inbounds nuw i8, ptr %9, i64 %.0.in.in.v.i ; 5 uses
  %i.nh = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph352.us

.lr.ph366.split.us.split.us.preheader:            ; preds = %.lr.ph366.split.us
  br i1 %brmerge, label %.lr.ph366.split.us.split.us.a, label %.split385.us

.lr.ph366.split.us.split.us.a:                    ; preds = %.lr.ph366.split.us.split.us.preheader
  %10 = load ptr, ptr %i.nc, align 8, !tbaa !210
  %invariant.gep519 = getelementptr inbounds nuw i8, ptr %10, i64 %.0.in.in.v.i
  %11 = load ptr, ptr %i.mi, align 8, !tbaa !210
  %invariant.gep357.us.us = getelementptr inbounds nuw i8, ptr %11, i64 %.0.in.in.v.i ; 5 uses
  br label %.lr.ph352.us.us

.lr.ph352.us.us:                                  ; preds = %.lr.ph366.split.us.split.us.a, %._crit_edge353.split.us.us.us
  %indvars.iv475 = phi i64 [ 0, %.lr.ph366.split.us.split.us.a ], [ %indvars.iv.next476, %._crit_edge353.split.us.us.us ] ; 2 uses
  %.9363.us.us = phi double [ %.8393, %.lr.ph366.split.us.split.us.a ], [ %.11.us.us.us.lcssa, %._crit_edge353.split.us.us.us ] ; 2 uses
  %.3208361.us.us = phi i64 [ %.2207391, %.lr.ph366.split.us.split.us.a ], [ %i.ov, %._crit_edge353.split.us.us.us ]
  %gep520 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep519, i64 %indvars.iv475
  %.0.in.i252.us.us = load i16, ptr %gep520, align 2, !tbaa !213
  %.0.i253.us.us = zext i16 %.0.in.i252.us.us to i32 ; 5 uses
  br i1 %i.mo, label %.epil.preheader593, label %.lr.ph352.us.us.new

.lr.ph352.us.us.new:                              ; preds = %.lr.ph352.us.us, %.lr.ph352.us.us.new
  %indvars.iv470 = phi i64 [ %indvars.iv.next471.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ] ; 5 uses
  %.10349.us.us.us = phi double [ %.11.us.us.us.3, %.lr.ph352.us.us.new ], [ %.9363.us.us, %.lr.ph352.us.us ]
  %niter600 = phi i64 [ %niter600.next.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ]
  %gep358.us.us.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %.0.in.i256.us.us.us = load i16, ptr %gep358.us.us.us, align 2, !tbaa !213
  %.0.i257.us.us.us = zext i16 %.0.in.i256.us.us.us to i32
  %i.nj = mul nsw i32 %i.b, %.0.i257.us.us.us
  %i.nk = add nsw i32 %i.nj, %.0.i253.us.us
  %i.nl = mul nsw i32 %i.nk, 3
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !171
  %i.np = fmul float %i.no, %i.ne
  %.pn232.in.us.us.us = fpext float %i.np to double
  %.pn232.us.us.us = fdiv double %.pn232.in.us.us.us, 6.000000e+00
  %.11.us.us.us = fadd double %.10349.us.us.us, %.pn232.us.us.us
  %i.nq = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.1 = getelementptr inbounds nuw i8, ptr %i.nq, i64 36
  %.0.in.i256.us.us.us.1 = load i16, ptr %gep358.us.us.us.1, align 2, !tbaa !213
  %.0.i257.us.us.us.1 = zext i16 %.0.in.i256.us.us.us.1 to i32
  %i.nr = mul nsw i32 %i.b, %.0.i257.us.us.us.1
  %i.ns = add nsw i32 %i.nr, %.0.i253.us.us
  %i.nt = mul nsw i32 %i.ns, 3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nu
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !171
  %i.nx = fmul float %i.nw, %i.ne
  %.pn232.in.us.us.us.1 = fpext float %i.nx to double
  %.pn232.us.us.us.1 = fdiv double %.pn232.in.us.us.us.1, 6.000000e+00
  %.11.us.us.us.1 = fadd double %.11.us.us.us, %.pn232.us.us.us.1
  %i.ny = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.2 = getelementptr inbounds nuw i8, ptr %i.ny, i64 72
  %.0.in.i256.us.us.us.2 = load i16, ptr %gep358.us.us.us.2, align 2, !tbaa !213
  %.0.i257.us.us.us.2 = zext i16 %.0.in.i256.us.us.us.2 to i32
  %i.nz = mul nsw i32 %i.b, %.0.i257.us.us.us.2
  %i.oa = add nsw i32 %i.nz, %.0.i253.us.us
  %i.ob = mul nsw i32 %i.oa, 3
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !171
  %i.of = fmul float %i.oe, %i.ne
  %.pn232.in.us.us.us.2 = fpext float %i.of to double
  %.pn232.us.us.us.2 = fdiv double %.pn232.in.us.us.us.2, 6.000000e+00
  %.11.us.us.us.2 = fadd double %.11.us.us.us.1, %.pn232.us.us.us.2
  %i.og = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.3 = getelementptr inbounds nuw i8, ptr %i.og, i64 108
  %.0.in.i256.us.us.us.3 = load i16, ptr %gep358.us.us.us.3, align 2, !tbaa !213
  %.0.i257.us.us.us.3 = zext i16 %.0.in.i256.us.us.us.3 to i32
  %i.oh = mul nsw i32 %i.b, %.0.i257.us.us.us.3
  %i.oi = add nsw i32 %i.oh, %.0.i253.us.us
  %i.oj = mul nsw i32 %i.oi, 3
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ok
  %i.om = load float, ptr %i.ol, align 4, !tbaa !171
  %i.on = fmul float %i.om, %i.ne
  %.pn232.in.us.us.us.3 = fpext float %i.on to double
  %.pn232.us.us.us.3 = fdiv double %.pn232.in.us.us.us.3, 6.000000e+00
  %.11.us.us.us.3 = fadd double %.11.us.us.us.2, %.pn232.us.us.us.3 ; 3 uses
  %indvars.iv.next471.3 = add nuw nsw i64 %indvars.iv470, 4 ; 2 uses
  %niter600.next.3 = add i64 %niter600, 4         ; 2 uses
  %niter600.ncmp.3 = icmp eq i64 %niter600.next.3, %unroll_iter599
  br i1 %niter600.ncmp.3, label %._crit_edge353.split.us.us.us.unr-lcssa, label %.lr.ph352.us.us.new, !llvm.loop !216

._crit_edge353.split.us.us.us.unr-lcssa:          ; preds = %.lr.ph352.us.us.new
  br i1 %lcmp.mod596.not, label %._crit_edge353.split.us.us.us, label %.epil.preheader593

.epil.preheader593:                               ; preds = %._crit_edge353.split.us.us.us.unr-lcssa, %.lr.ph352.us.us
  %indvars.iv470.epil.init = phi i64 [ 0, %.lr.ph352.us.us ], [ %indvars.iv.next471.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  %.10349.us.us.us.epil.init = phi double [ %.9363.us.us, %.lr.ph352.us.us ], [ %.11.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod598)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader593
  %indvars.iv470.epil = phi i64 [ %indvars.iv.next471.epil, %bb.aj ], [ %indvars.iv470.epil.init, %.epil.preheader593 ] ; 2 uses
  %.10349.us.us.us.epil = phi double [ %.11.us.us.us.epil, %bb.aj ], [ %.10349.us.us.us.epil.init, %.epil.preheader593 ]
  %epil.iter595 = phi i64 [ %epil.iter595.next, %bb.aj ], [ 0, %.epil.preheader593 ]
  %gep358.us.us.us.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470.epil
  %.0.in.i256.us.us.us.epil = load i16, ptr %gep358.us.us.us.epil, align 2, !tbaa !213
  %.0.i257.us.us.us.epil = zext i16 %.0.in.i256.us.us.us.epil to i32
  %i.oo = mul nsw i32 %i.b, %.0.i257.us.us.us.epil
  %i.op = add nsw i32 %i.oo, %.0.i253.us.us
  %i.oq = mul nsw i32 %i.op, 3
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.or
  %i.ot = load float, ptr %i.os, align 4, !tbaa !171
  %i.ou = fmul float %i.ot, %i.ne
  %.pn232.in.us.us.us.epil = fpext float %i.ou to double
  %.pn232.us.us.us.epil = fdiv double %.pn232.in.us.us.us.epil, 6.000000e+00
  %.11.us.us.us.epil = fadd double %.10349.us.us.us.epil, %.pn232.us.us.us.epil ; 2 uses
  %indvars.iv.next471.epil = add nuw nsw i64 %indvars.iv470.epil, 1
  %epil.iter595.next = add i64 %epil.iter595, 1   ; 2 uses
  %epil.iter595.cmp.not = icmp eq i64 %epil.iter595.next, %xtraiter594
  br i1 %epil.iter595.cmp.not, label %._crit_edge353.split.us.us.us, label %bb.aj, !llvm.loop !217

._crit_edge353.split.us.us.us:                    ; preds = %bb.aj, %._crit_edge353.split.us.us.us.unr-lcssa
  %.11.us.us.us.lcssa = phi double [ %.11.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ], [ %.11.us.us.us.epil, %bb.aj ] ; 2 uses
  %i.ov = add i64 %.3208361.us.us, %i.ng          ; 2 uses
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge367.loopexit, label %.lr.ph352.us.us, !llvm.loop !218

.lr.ph352.us:                                     ; preds = %.lr.ph366.split.us.split.preheader.a, %._crit_edge353.split.us380
  %indvars.iv465 = phi i64 [ 0, %.lr.ph366.split.us.split.preheader.a ], [ %indvars.iv.next466, %._crit_edge353.split.us380 ] ; 2 uses
  %.3208361.us = phi i64 [ %.2207391, %.lr.ph366.split.us.split.preheader.a ], [ %i.qz, %._crit_edge353.split.us380 ]
  %12 = phi <2 x double> [ %i.mp, %.lr.ph366.split.us.split.preheader.a ], [ %.lcssa575, %._crit_edge353.split.us380 ] ; 2 uses
  %gep518 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep, i64 %indvars.iv465
  %.0.in.i252.us = load i16, ptr %gep518, align 2, !tbaa !213
  %.0.i253.us = zext i16 %.0.in.i252.us to i32    ; 5 uses
  br i1 %i.mn, label %.epil.preheader, label %.lr.ph352.us.new

.lr.ph352.us.new:                                 ; preds = %.lr.ph352.us, %.lr.ph352.us.new
  %indvars.iv460 = phi i64 [ %indvars.iv.next461.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ] ; 5 uses
  %i.ow = phi <2 x double> [ %i.qn, %.lr.ph352.us.new ], [ %12, %.lr.ph352.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ]
  %gep358.us374 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %.0.in.i256.us375 = load i16, ptr %gep358.us374, align 2, !tbaa !213
  %.0.i257.us376 = zext i16 %.0.in.i256.us375 to i32
  %i.ox = mul nsw i32 %i.b, %.0.i257.us376
  %i.oy = add nsw i32 %i.ox, %.0.i253.us
  %i.oz = shl nsw i32 %i.oy, 1
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr [4 x i8], ptr %i.mj, i64 %i.pa
  %i.pc = load <2 x float>, ptr %i.pb, align 4, !tbaa !171
  %i.pd = fmul <2 x float> %i.pc, %i.ni
  %i.pe = fpext <2 x float> %i.pd to <2 x double>
  %i.pf = fdiv <2 x double> %i.pe, <double 6.000000e+00, double 1.200000e+01>
  %i.pg = fadd <2 x double> %i.ow, %i.pf
  %i.ph = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.1 = getelementptr inbounds nuw i8, ptr %i.ph, i64 36
  %.0.in.i256.us375.1 = load i16, ptr %gep358.us374.1, align 2, !tbaa !213
  %.0.i257.us376.1 = zext i16 %.0.in.i256.us375.1 to i32
  %i.pi = mul nsw i32 %i.b, %.0.i257.us376.1
  %i.pj = add nsw i32 %i.pi, %.0.i253.us
  %i.pk = shl nsw i32 %i.pj, 1
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr [4 x i8], ptr %i.mj, i64 %i.pl
  %i.pn = load <2 x float>, ptr %i.pm, align 4, !tbaa !171
  %i.po = fmul <2 x float> %i.pn, %i.ni
  %i.pp = fpext <2 x float> %i.po to <2 x double>
  %i.pq = fdiv <2 x double> %i.pp, <double 6.000000e+00, double 1.200000e+01>
  %i.pr = fadd <2 x double> %i.pg, %i.pq
  %i.ps = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.2 = getelementptr inbounds nuw i8, ptr %i.ps, i64 72
  %.0.in.i256.us375.2 = load i16, ptr %gep358.us374.2, align 2, !tbaa !213
  %.0.i257.us376.2 = zext i16 %.0.in.i256.us375.2 to i32
  %i.pt = mul nsw i32 %i.b, %.0.i257.us376.2
  %i.pu = add nsw i32 %i.pt, %.0.i253.us
  %i.pv = shl nsw i32 %i.pu, 1
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr [4 x i8], ptr %i.mj, i64 %i.pw
  %i.py = load <2 x float>, ptr %i.px, align 4, !tbaa !171
  %i.pz = fmul <2 x float> %i.py, %i.ni
  %i.qa = fpext <2 x float> %i.pz to <2 x double>
  %i.qb = fdiv <2 x double> %i.qa, <double 6.000000e+00, double 1.200000e+01>
  %i.qc = fadd <2 x double> %i.pr, %i.qb
  %i.qd = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.3 = getelementptr inbounds nuw i8, ptr %i.qd, i64 108
  %.0.in.i256.us375.3 = load i16, ptr %gep358.us374.3, align 2, !tbaa !213
  %.0.i257.us376.3 = zext i16 %.0.in.i256.us375.3 to i32
  %i.qe = mul nsw i32 %i.b, %.0.i257.us376.3
  %i.qf = add nsw i32 %i.qe, %.0.i253.us
  %i.qg = shl nsw i32 %i.qf, 1
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr [4 x i8], ptr %i.mj, i64 %i.qh
  %i.qj = load <2 x float>, ptr %i.qi, align 4, !tbaa !171
  %i.qk = fmul <2 x float> %i.qj, %i.ni
  %i.ql = fpext <2 x float> %i.qk to <2 x double>
  %i.qm = fdiv <2 x double> %i.ql, <double 6.000000e+00, double 1.200000e+01>
  %i.qn = fadd <2 x double> %i.qc, %i.qm          ; 3 uses
  %indvars.iv.next461.3 = add nuw nsw i64 %indvars.iv460, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge353.split.us380.unr-lcssa, label %.lr.ph352.us.new, !llvm.loop !216

._crit_edge353.split.us380.unr-lcssa:             ; preds = %.lr.ph352.us.new
  br i1 %lcmp.mod590.not, label %._crit_edge353.split.us380, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge353.split.us380.unr-lcssa, %.lr.ph352.us
  %indvars.iv460.epil.init = phi i64 [ 0, %.lr.ph352.us ], [ %indvars.iv.next461.3, %._crit_edge353.split.us380.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %12, %.lr.ph352.us ], [ %i.qn, %._crit_edge353.split.us380.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod592)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv460.epil = phi i64 [ %indvars.iv460.epil.init, %.epil.preheader ], [ %indvars.iv.next461.epil, %bb.ak ] ; 2 uses
  %i.qo = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.qy, %bb.ak ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %gep358.us374.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460.epil
  %.0.in.i256.us375.epil = load i16, ptr %gep358.us374.epil, align 2, !tbaa !213
  %.0.i257.us376.epil = zext i16 %.0.in.i256.us375.epil to i32
  %i.qp = mul nsw i32 %i.b, %.0.i257.us376.epil
  %i.qq = add nsw i32 %i.qp, %.0.i253.us
  %i.qr = shl nsw i32 %i.qq, 1
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr [4 x i8], ptr %i.mj, i64 %i.qs
  %i.qu = load <2 x float>, ptr %i.qt, align 4, !tbaa !171
  %i.qv = fmul <2 x float> %i.qu, %i.ni
  %i.qw = fpext <2 x float> %i.qv to <2 x double>
  %i.qx = fdiv <2 x double> %i.qw, <double 6.000000e+00, double 1.200000e+01>
  %i.qy = fadd <2 x double> %i.qo, %i.qx          ; 2 uses
  %indvars.iv.next461.epil = add nuw nsw i64 %indvars.iv460.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter588
  br i1 %epil.iter.cmp.not, label %._crit_edge353.split.us380, label %bb.ak, !llvm.loop !219

._crit_edge353.split.us380:                       ; preds = %bb.ak, %._crit_edge353.split.us380.unr-lcssa
  %.lcssa575 = phi <2 x double> [ %i.qn, %._crit_edge353.split.us380.unr-lcssa ], [ %i.qy, %bb.ak ] ; 2 uses
  %i.qz = add i64 %.3208361.us, %i.ng             ; 2 uses
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count478
  br i1 %exitcond469.not, label %._crit_edge367, label %.lr.ph352.us, !llvm.loop !218

.lr.ph366.split:                                  ; preds = %.lr.ph366
  %brmerge518 = select i1 %i.mz, i1 true, i1 %or.cond.not412
  br i1 %brmerge518, label %._crit_edge367, label %.split385.us

._crit_edge367.loopexit:                          ; preds = %._crit_edge353.split.us.us.us
  %i.ra = insertelement <2 x double> %i.mp, double %.11.us.us.us.lcssa, i64 0
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge353.split.us380, %._crit_edge367.loopexit, %.lr.ph366.split, %bb.ai
  %.3208.lcssa = phi i64 [ %.2207391, %bb.ai ], [ %i.ov, %._crit_edge367.loopexit ], [ %.2207391, %.lr.ph366.split ], [ %i.qz, %._crit_edge353.split.us380 ] ; 2 uses
  %i.rb = phi <2 x double> [ %i.mp, %bb.ai ], [ %i.ra, %._crit_edge367.loopexit ], [ %i.mp, %.lr.ph366.split ], [ %.lcssa575, %._crit_edge353.split.us380 ] ; 3 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0
  %i.rd = add nuw i64 %.0183394, 1                ; 2 uses
  %exitcond480.not = icmp eq i64 %i.rd, %i.mf
  br i1 %exitcond480.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ai, !llvm.loop !220

.split385.us:                                     ; preds = %.lr.ph366.split, %.lr.ph366.split.us.split.preheader, %.lr.ph366.split.us.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(75) @.str, i8 noundef zeroext 2)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.split385.us
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 223, ptr noundef nonnull @.str.1) #18
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %.split385.us
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn233 = phi { ptr, i32 } [ %i.rf, %bb.ao ], [ %i.re, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge367, %bb.ah, %bb.y, %._crit_edge343
  %.4215 = phi i64 [ %.0211.lcssa, %bb.y ], [ %.0211.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ 0, %._crit_edge367 ] ; 2 uses
  %.5210 = phi i64 [ %.0205.lcssa, %bb.y ], [ %.0205.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ %.3208.lcssa, %._crit_edge367 ]
  %i.rg = phi <2 x double> [ %i.ir, %bb.y ], [ %i.ir, %._crit_edge343 ], [ zeroinitializer, %bb.ah ], [ %i.rb, %._crit_edge367 ]
  %i.rh = sub nsw i64 %.5210, %.4215              ; 2 uses
  %i.ri = icmp slt i64 %i.rh, 1
  %i.rj = uitofp nneg i64 %i.rh to double
  %i.rk = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.rl = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rm = fdiv <2 x double> %i.rg, %i.rl
  %i.rn = insertelement <2 x i1> poison, i1 %i.ri, i64 0
  %i.ro = shufflevector <2 x i1> %i.rn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.rp = select <2 x i1> %i.ro, <2 x double> zeroinitializer, <2 x double> %i.rm ; 3 uses
  %i.rq = load ptr, ptr @debug, align 8, !tbaa !221 ; 2 uses
  %.not231 = icmp eq ptr %i.rq, null
  br i1 %.not231, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.rq, ptr noundef nonnull @.str.2, i64 noundef %.4215) #16 ; 0 uses
  %i.rs = load ptr, ptr @debug, align 8, !tbaa !221
  %i.rt = extractelement <2 x double> %i.rp, i64 0
  %i.ru = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rs, ptr noundef nonnull @.str.3, double noundef %i.rt) #16 ; 0 uses
  %i.rv = load ptr, ptr @debug, align 8, !tbaa !221
  %i.rw = extractelement <2 x double> %i.rp, i64 1
  %i.rx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rv, ptr noundef nonnull @.str.4, double noundef %i.rw) #16 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv481
  %i.rz = shufflevector <2 x double> %i.rp, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.sa = fptrunc <3 x double> %i.rz to <3 x float>
  call void @llvm.masked.store.v3f32.p0(<3 x float> %i.sa, ptr align 4 %i.ry, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !171
  %i.sb = load i32, ptr %i.dv, align 4, !tbaa !223
  %i.sc = icmp ne i32 %i.sb, 0
  %i.sd = and i1 %i.sc, %i.eq
  br i1 %i.sd, label %bb.l, label %bb.j, !llvm.loop !224

_ZNSt6vectorIiSaIiEED2Ev.exit249:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.ag, %bb.ap, %bb.h, %bb.d
  %.pn233.pn.pn = phi { ptr, i32 } [ %i.du, %bb.h ], [ %i.cb, %bb.d ], [ %.pn233, %bb.ap ], [ %i.hl, %bb.ag ], [ %i.hl, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.se = load ptr, ptr %4, align 16, !tbaa !185  ; 3 uses
  %.not.i.i.i258 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249
  %i.sf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sg = load ptr, ptr %i.sf, align 16, !tbaa !187
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.se to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.sj) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit259

_ZNSt6vectorIfSaIfEED2Ev.exit259:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn233.pn.pn
}

declare void @_Z27makeNonBondedParameterListsibN3gmx8ArrayRefIK9t_iparamsEEb(ptr dead_on_unwind writable sret(%"class.std::vector.53") align 8, i32 noundef, i1 noundef zeroext, ptr, ptr, i1 noundef zeroext) local_unnamed_addr #5

declare void @_Z35makeLJPmeC6GridCorrectionParametersiN3gmx8ArrayRefIK9t_iparamsEE12LongRangeVdW(ptr dead_on_unwind writable sret(%"class.std::vector.53") align 8, i32 noundef, ptr, ptr, i32 noundef) local_unnamed_addr #5

declare void @_Z24gmx_mtop_count_atomtypesRK10gmx_mtop_tiPi(ptr noundef nonnull align 8 dereferenceable(768), i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(75) %1, i8 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(75) %1) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.b, ptr %i.a, align 8, !tbaa !228
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !229
  %i.f = load i64, ptr %i.a, align 8, !tbaa !228
  store i64 %i.f, ptr %i.c, align 8, !tbaa !231
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !231
  store i8 %i.h, ptr %i.g, align 1, !tbaa !231
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !232
  %i.k = load ptr, ptr %0, align 8, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !233  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !229    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !231
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !229    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
