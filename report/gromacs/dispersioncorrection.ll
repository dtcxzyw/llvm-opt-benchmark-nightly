inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20DispersionCorrection14TopologyParamsC2ERK10gmx_mtop_tRK10t_inputrecb:bb.a

bb.z:                                             ; preds = %.lr.ph342, %._crit_edge327
  %.0182340 = phi i64 [ 0, %.lr.ph342 ], [ %.1183.lcssa, %._crit_edge327 ] ; 3 uses
  %.sroa.0263.0337 = phi ptr [ %i.hh, %.lr.ph342 ], [ %i.kl, %._crit_edge327 ] ; 3 uses
  %i.iv = phi <2 x double> [ %i.hg, %.lr.ph342 ], [ %i.kk, %._crit_edge327 ] ; 4 uses
  %i.iw = load i32, ptr %.sroa.0263.0337, align 8, !tbaa !202
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2408 x i8], ptr %i.hj, i64 %i.ix ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !204 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.z
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 2360
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !209 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !210
  %invariant.gep331 = getelementptr i8, ptr %i.jg, i64 %.0.in.in.v.i ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 2384
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !211 ; 4 uses
  %i.jj = load ptr, ptr %i.jc, align 8, !tbaa !211 ; 2 uses
  %i.jk = sitofp i32 %i.je to float               ; 2 uses
  %i.jl = sext i32 %i.je to i64                   ; 2 uses
  %wide.trip.count458 = zext nneg i32 %i.ja to i64 ; 2 uses
  br i1 %3, label %.lr.ph326.split.us.preheader, label %.lr.ph326.split.preheader

.lr.ph326.split.preheader:                        ; preds = %.lr.ph326
  %i.jm = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph326.split

.lr.ph326.split.us.preheader:                     ; preds = %.lr.ph326
  %i.jo = extractelement <2 x double> %i.iv, i64 0
  br label %.lr.ph326.split.us

.lr.ph326.split.us:                               ; preds = %.lr.ph326.split.us.preheader, %._crit_edge314.split.us.us
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %._crit_edge314.split.us.us ], [ 0, %.lr.ph326.split.us.preheader ] ; 4 uses
  %.1183322.us = phi i64 [ %.2184.lcssa.us, %._crit_edge314.split.us.us ], [ %.0182340, %.lr.ph326.split.us.preheader ] ; 2 uses
  %.4202320.us = phi double [ %.5203.lcssa.us, %._crit_edge314.split.us.us ], [ %i.jo, %.lr.ph326.split.us.preheader ] ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.jj, i64 %indvars.iv455 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !197 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jp, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !197 ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jt
  %.not279308.us = icmp eq i32 %i.jq, %i.js
  br i1 %.not279308.us, label %._crit_edge314.split.us.us, label %.lr.ph.us

._crit_edge314.split.us.us:                       ; preds = %bb.ac, %.lr.ph326.split.us
  %.5203.lcssa.us = phi double [ %.4202320.us, %.lr.ph326.split.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
  %.2184.lcssa.us = phi i64 [ %.1183322.us, %.lr.ph326.split.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
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
  %.2184312.us.us = phi i64 [ %.1183322.us, %.lr.ph.us ], [ %.3185.us.us, %bb.ac ] ; 2 uses
  %.5203310.us.us = phi double [ %.4202320.us, %.lr.ph.us ], [ %.7205.us.us, %bb.ac ] ; 2 uses
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
  %.6204.us.us = fsub double %.5203310.us.us, %.pn229.us.us
  %i.kh = add nsw i64 %.2184312.us.us, %i.jl
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.7205.us.us = phi double [ %.6204.us.us, %bb.ab ], [ %.5203310.us.us, %bb.aa ] ; 2 uses
  %.3185.us.us = phi i64 [ %i.kh, %bb.ab ], [ %.2184312.us.us, %bb.aa ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0.0309.us.us, i64 4 ; 2 uses
  %.not279.us.us = icmp eq ptr %i.ki, %i.ju
  br i1 %.not279.us.us, label %._crit_edge314.split.us.us, label %bb.aa

._crit_edge327.loopexit:                          ; preds = %._crit_edge314.split.us.us
  %i.kj = insertelement <2 x double> %i.iv, double %.5203.lcssa.us, i64 0
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge314.split, %._crit_edge327.loopexit, %bb.z
  %.1183.lcssa = phi i64 [ %.0182340, %bb.z ], [ %.2184.lcssa.us, %._crit_edge327.loopexit ], [ %.2184.lcssa, %._crit_edge314.split ] ; 2 uses
  %i.kk = phi <2 x double> [ %i.iv, %bb.z ], [ %i.kj, %._crit_edge327.loopexit ], [ %i.kw, %._crit_edge314.split ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0337, i64 56 ; 2 uses
  %.not278 = icmp eq ptr %i.kl, %i.hi
  br i1 %.not278, label %._crit_edge343, label %bb.z

.lr.ph326.split:                                  ; preds = %.lr.ph326.split.preheader, %._crit_edge314.split
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %._crit_edge314.split ], [ 0, %.lr.ph326.split.preheader ] ; 4 uses
  %.1183322 = phi i64 [ %.2184.lcssa, %._crit_edge314.split ], [ %.0182340, %.lr.ph326.split.preheader ] ; 2 uses
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
  %.2184.lcssa = phi i64 [ %.1183322, %.lr.ph326.split ], [ %.3185, %bb.af ] ; 2 uses
  %i.kw = phi <2 x double> [ %i.km, %.lr.ph326.split ], [ %i.ll, %bb.af ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count458
  br i1 %exitcond454.not, label %._crit_edge327, label %.lr.ph326.split, !llvm.loop !212

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %.2184312 = phi i64 [ %.1183322, %.lr.ph ], [ %.3185, %bb.af ] ; 2 uses
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
  %i.lk = add nsw i64 %.2184312, %i.jl
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3185 = phi i64 [ %i.lk, %bb.ae ], [ %.2184312, %bb.ad ] ; 2 uses
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
  %.0176394 = phi i64 [ 0, %.lr.ph396 ], [ %i.rk, %._crit_edge367 ] ; 4 uses
  %.2189393 = phi i64 [ 0, %.lr.ph396 ], [ %.3190.lcssa, %._crit_edge367 ] ; 4 uses
  %.8206391 = phi double [ 0.000000e+00, %.lr.ph396 ], [ %i.rj, %._crit_edge367 ]
  %i.mp = phi <2 x double> [ zeroinitializer, %.lr.ph396 ], [ %i.ri, %._crit_edge367 ] ; 4 uses
  %i.mq = getelementptr inbounds nuw [56 x i8], ptr %i.mb, i64 %.0176394 ; 2 uses
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
  %i.mz = icmp ne i64 %.0176394, %i.mg            ; 3 uses
  %i.na = icmp ne i64 %.0176394, 0
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
  br i1 %3, label %.lr.ph366.split.us.split.us, label %.lr.ph366.split.us.split.preheader

.lr.ph366.split.us.split.preheader:               ; preds = %.lr.ph366.split.us
  %i.nh = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph366.split.us.split

.lr.ph366.split.us.split.us:                      ; preds = %.lr.ph366.split.us, %._crit_edge353.split.us.us.us
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %._crit_edge353.split.us.us.us ], [ 0, %.lr.ph366.split.us ] ; 2 uses
  %.3190363.us.us = phi i64 [ %i.oy, %._crit_edge353.split.us.us.us ], [ %.2189393, %.lr.ph366.split.us ]
  %.9207361.us.us = phi double [ %.11209.us.us.us.lcssa, %._crit_edge353.split.us.us.us ], [ %.8206391, %.lr.ph366.split.us ] ; 2 uses
  br i1 %brmerge, label %.lr.ph352.us.us, label %.split385.us

.lr.ph352.us.us:                                  ; preds = %.lr.ph366.split.us.split.us
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !210
  %i.nk = getelementptr inbounds nuw [36 x i8], ptr %i.nj, i64 %indvars.iv475
  %.0.in.in.i251.us.us = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.0.in.in.v.i
  %.0.in.i252.us.us = load i16, ptr %.0.in.in.i251.us.us, align 2, !tbaa !213
  %.0.i253.us.us = zext i16 %.0.in.i252.us.us to i32 ; 5 uses
  %i.nl = load ptr, ptr %i.mi, align 8, !tbaa !210
  %invariant.gep357.us.us = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.0.in.in.v.i ; 5 uses
  br i1 %i.mo, label %.epil.preheader593, label %.lr.ph352.us.us.new

.lr.ph352.us.us.new:                              ; preds = %.lr.ph352.us.us, %.lr.ph352.us.us.new
  %indvars.iv470 = phi i64 [ %indvars.iv.next471.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ] ; 5 uses
  %.10208347.us.us.us = phi double [ %.11209.us.us.us.3, %.lr.ph352.us.us.new ], [ %.9207361.us.us, %.lr.ph352.us.us ]
  %niter600 = phi i64 [ %niter600.next.3, %.lr.ph352.us.us.new ], [ 0, %.lr.ph352.us.us ]
  %gep358.us.us.us = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %.0.in.i256.us.us.us = load i16, ptr %gep358.us.us.us, align 2, !tbaa !213
  %.0.i257.us.us.us = zext i16 %.0.in.i256.us.us.us to i32
  %i.nm = mul nsw i32 %i.b, %.0.i257.us.us.us
  %i.nn = add nsw i32 %i.nm, %.0.i253.us.us
  %i.no = mul nsw i32 %i.nn, 3
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !171
  %i.ns = fmul float %i.nr, %i.ne
  %.pn232.in.us.us.us = fpext float %i.ns to double
  %.pn232.us.us.us = fdiv double %.pn232.in.us.us.us, 6.000000e+00
  %.11209.us.us.us = fadd double %.10208347.us.us.us, %.pn232.us.us.us
  %i.nt = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.1 = getelementptr inbounds nuw i8, ptr %i.nt, i64 36
  %.0.in.i256.us.us.us.1 = load i16, ptr %gep358.us.us.us.1, align 2, !tbaa !213
  %.0.i257.us.us.us.1 = zext i16 %.0.in.i256.us.us.us.1 to i32
  %i.nu = mul nsw i32 %i.b, %.0.i257.us.us.us.1
  %i.nv = add nsw i32 %i.nu, %.0.i253.us.us
  %i.nw = mul nsw i32 %i.nv, 3
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !171
  %i.oa = fmul float %i.nz, %i.ne
  %.pn232.in.us.us.us.1 = fpext float %i.oa to double
  %.pn232.us.us.us.1 = fdiv double %.pn232.in.us.us.us.1, 6.000000e+00
  %.11209.us.us.us.1 = fadd double %.11209.us.us.us, %.pn232.us.us.us.1
  %i.ob = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.2 = getelementptr inbounds nuw i8, ptr %i.ob, i64 72
  %.0.in.i256.us.us.us.2 = load i16, ptr %gep358.us.us.us.2, align 2, !tbaa !213
  %.0.i257.us.us.us.2 = zext i16 %.0.in.i256.us.us.us.2 to i32
  %i.oc = mul nsw i32 %i.b, %.0.i257.us.us.us.2
  %i.od = add nsw i32 %i.oc, %.0.i253.us.us
  %i.oe = mul nsw i32 %i.od, 3
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !171
  %i.oi = fmul float %i.oh, %i.ne
  %.pn232.in.us.us.us.2 = fpext float %i.oi to double
  %.pn232.us.us.us.2 = fdiv double %.pn232.in.us.us.us.2, 6.000000e+00
  %.11209.us.us.us.2 = fadd double %.11209.us.us.us.1, %.pn232.us.us.us.2
  %i.oj = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470
  %gep358.us.us.us.3 = getelementptr inbounds nuw i8, ptr %i.oj, i64 108
  %.0.in.i256.us.us.us.3 = load i16, ptr %gep358.us.us.us.3, align 2, !tbaa !213
  %.0.i257.us.us.us.3 = zext i16 %.0.in.i256.us.us.us.3 to i32
  %i.ok = mul nsw i32 %i.b, %.0.i257.us.us.us.3
  %i.ol = add nsw i32 %i.ok, %.0.i253.us.us
  %i.om = mul nsw i32 %i.ol, 3
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !171
  %i.oq = fmul float %i.op, %i.ne
  %.pn232.in.us.us.us.3 = fpext float %i.oq to double
  %.pn232.us.us.us.3 = fdiv double %.pn232.in.us.us.us.3, 6.000000e+00
  %.11209.us.us.us.3 = fadd double %.11209.us.us.us.2, %.pn232.us.us.us.3 ; 3 uses
  %indvars.iv.next471.3 = add nuw nsw i64 %indvars.iv470, 4 ; 2 uses
  %niter600.next.3 = add i64 %niter600, 4         ; 2 uses
  %niter600.ncmp.3 = icmp eq i64 %niter600.next.3, %unroll_iter599
  br i1 %niter600.ncmp.3, label %._crit_edge353.split.us.us.us.unr-lcssa, label %.lr.ph352.us.us.new, !llvm.loop !216

._crit_edge353.split.us.us.us.unr-lcssa:          ; preds = %.lr.ph352.us.us.new
  br i1 %lcmp.mod596.not, label %._crit_edge353.split.us.us.us, label %.epil.preheader593

.epil.preheader593:                               ; preds = %._crit_edge353.split.us.us.us.unr-lcssa, %.lr.ph352.us.us
  %indvars.iv470.epil.init = phi i64 [ 0, %.lr.ph352.us.us ], [ %indvars.iv.next471.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  %.10208347.us.us.us.epil.init = phi double [ %.9207361.us.us, %.lr.ph352.us.us ], [ %.11209.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod598)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader593
  %indvars.iv470.epil = phi i64 [ %indvars.iv.next471.epil, %bb.aj ], [ %indvars.iv470.epil.init, %.epil.preheader593 ] ; 2 uses
  %.10208347.us.us.us.epil = phi double [ %.11209.us.us.us.epil, %bb.aj ], [ %.10208347.us.us.us.epil.init, %.epil.preheader593 ]
  %epil.iter595 = phi i64 [ %epil.iter595.next, %bb.aj ], [ 0, %.epil.preheader593 ]
  %gep358.us.us.us.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us.us, i64 %indvars.iv470.epil
  %.0.in.i256.us.us.us.epil = load i16, ptr %gep358.us.us.us.epil, align 2, !tbaa !213
  %.0.i257.us.us.us.epil = zext i16 %.0.in.i256.us.us.us.epil to i32
  %i.or = mul nsw i32 %i.b, %.0.i257.us.us.us.epil
  %i.os = add nsw i32 %i.or, %.0.i253.us.us
  %i.ot = mul nsw i32 %i.os, 3
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !171
  %i.ox = fmul float %i.ow, %i.ne
  %.pn232.in.us.us.us.epil = fpext float %i.ox to double
  %.pn232.us.us.us.epil = fdiv double %.pn232.in.us.us.us.epil, 6.000000e+00
  %.11209.us.us.us.epil = fadd double %.10208347.us.us.us.epil, %.pn232.us.us.us.epil ; 2 uses
  %indvars.iv.next471.epil = add nuw nsw i64 %indvars.iv470.epil, 1
  %epil.iter595.next = add i64 %epil.iter595, 1   ; 2 uses
  %epil.iter595.cmp.not = icmp eq i64 %epil.iter595.next, %xtraiter594
  br i1 %epil.iter595.cmp.not, label %._crit_edge353.split.us.us.us, label %bb.aj, !llvm.loop !217

._crit_edge353.split.us.us.us:                    ; preds = %bb.aj, %._crit_edge353.split.us.us.us.unr-lcssa
  %.11209.us.us.us.lcssa = phi double [ %.11209.us.us.us.3, %._crit_edge353.split.us.us.us.unr-lcssa ], [ %.11209.us.us.us.epil, %bb.aj ] ; 2 uses
  %i.oy = add i64 %.3190363.us.us, %i.ng          ; 2 uses
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge367.loopexit, label %.lr.ph366.split.us.split.us, !llvm.loop !218

.lr.ph366.split.us.split:                         ; preds = %.lr.ph366.split.us.split.preheader, %._crit_edge353.split.us380
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %._crit_edge353.split.us380 ], [ 0, %.lr.ph366.split.us.split.preheader ] ; 2 uses
  %.3190363.us = phi i64 [ %i.rg, %._crit_edge353.split.us380 ], [ %.2189393, %.lr.ph366.split.us.split.preheader ]
  %i.oz = phi <2 x double> [ %.lcssa575, %._crit_edge353.split.us380 ], [ %i.mp, %.lr.ph366.split.us.split.preheader ] ; 2 uses
  br i1 %brmerge, label %.lr.ph352.us, label %.split385.us

.lr.ph352.us:                                     ; preds = %.lr.ph366.split.us.split
  %i.pa = load ptr, ptr %i.nc, align 8, !tbaa !210
  %i.pb = getelementptr inbounds nuw [36 x i8], ptr %i.pa, i64 %indvars.iv465
  %.0.in.in.i251.us = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0.in.in.v.i
  %.0.in.i252.us = load i16, ptr %.0.in.in.i251.us, align 2, !tbaa !213
  %.0.i253.us = zext i16 %.0.in.i252.us to i32    ; 5 uses
  %i.pc = load ptr, ptr %i.mi, align 8, !tbaa !210
  %invariant.gep357.us = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.0.in.in.v.i ; 5 uses
  br i1 %i.mn, label %.epil.preheader, label %.lr.ph352.us.new

.lr.ph352.us.new:                                 ; preds = %.lr.ph352.us, %.lr.ph352.us.new
  %indvars.iv460 = phi i64 [ %indvars.iv.next461.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ] ; 5 uses
  %i.pd = phi <2 x double> [ %i.qu, %.lr.ph352.us.new ], [ %i.oz, %.lr.ph352.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph352.us.new ], [ 0, %.lr.ph352.us ]
  %gep358.us374 = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %.0.in.i256.us375 = load i16, ptr %gep358.us374, align 2, !tbaa !213
  %.0.i257.us376 = zext i16 %.0.in.i256.us375 to i32
  %i.pe = mul nsw i32 %i.b, %.0.i257.us376
  %i.pf = add nsw i32 %i.pe, %.0.i253.us
  %i.pg = shl nsw i32 %i.pf, 1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr [4 x i8], ptr %i.mj, i64 %i.ph
  %i.pj = load <2 x float>, ptr %i.pi, align 4, !tbaa !171
  %i.pk = fmul <2 x float> %i.pj, %i.ni
  %i.pl = fpext <2 x float> %i.pk to <2 x double>
  %i.pm = fdiv <2 x double> %i.pl, <double 6.000000e+00, double 1.200000e+01>
  %i.pn = fadd <2 x double> %i.pd, %i.pm
  %i.po = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.1 = getelementptr inbounds nuw i8, ptr %i.po, i64 36
  %.0.in.i256.us375.1 = load i16, ptr %gep358.us374.1, align 2, !tbaa !213
  %.0.i257.us376.1 = zext i16 %.0.in.i256.us375.1 to i32
  %i.pp = mul nsw i32 %i.b, %.0.i257.us376.1
  %i.pq = add nsw i32 %i.pp, %.0.i253.us
  %i.pr = shl nsw i32 %i.pq, 1
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr [4 x i8], ptr %i.mj, i64 %i.ps
  %i.pu = load <2 x float>, ptr %i.pt, align 4, !tbaa !171
  %i.pv = fmul <2 x float> %i.pu, %i.ni
  %i.pw = fpext <2 x float> %i.pv to <2 x double>
  %i.px = fdiv <2 x double> %i.pw, <double 6.000000e+00, double 1.200000e+01>
  %i.py = fadd <2 x double> %i.pn, %i.px
  %i.pz = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.2 = getelementptr inbounds nuw i8, ptr %i.pz, i64 72
  %.0.in.i256.us375.2 = load i16, ptr %gep358.us374.2, align 2, !tbaa !213
  %.0.i257.us376.2 = zext i16 %.0.in.i256.us375.2 to i32
  %i.qa = mul nsw i32 %i.b, %.0.i257.us376.2
  %i.qb = add nsw i32 %i.qa, %.0.i253.us
  %i.qc = shl nsw i32 %i.qb, 1
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %i.mj, i64 %i.qd
  %i.qf = load <2 x float>, ptr %i.qe, align 4, !tbaa !171
  %i.qg = fmul <2 x float> %i.qf, %i.ni
  %i.qh = fpext <2 x float> %i.qg to <2 x double>
  %i.qi = fdiv <2 x double> %i.qh, <double 6.000000e+00, double 1.200000e+01>
  %i.qj = fadd <2 x double> %i.py, %i.qi
  %i.qk = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460
  %gep358.us374.3 = getelementptr inbounds nuw i8, ptr %i.qk, i64 108
  %.0.in.i256.us375.3 = load i16, ptr %gep358.us374.3, align 2, !tbaa !213
  %.0.i257.us376.3 = zext i16 %.0.in.i256.us375.3 to i32
  %i.ql = mul nsw i32 %i.b, %.0.i257.us376.3
  %i.qm = add nsw i32 %i.ql, %.0.i253.us
  %i.qn = shl nsw i32 %i.qm, 1
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [4 x i8], ptr %i.mj, i64 %i.qo
  %i.qq = load <2 x float>, ptr %i.qp, align 4, !tbaa !171
  %i.qr = fmul <2 x float> %i.qq, %i.ni
  %i.qs = fpext <2 x float> %i.qr to <2 x double>
  %i.qt = fdiv <2 x double> %i.qs, <double 6.000000e+00, double 1.200000e+01>
  %i.qu = fadd <2 x double> %i.qj, %i.qt          ; 3 uses
  %indvars.iv.next461.3 = add nuw nsw i64 %indvars.iv460, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge353.split.us380.unr-lcssa, label %.lr.ph352.us.new, !llvm.loop !216

._crit_edge353.split.us380.unr-lcssa:             ; preds = %.lr.ph352.us.new
  br i1 %lcmp.mod590.not, label %._crit_edge353.split.us380, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge353.split.us380.unr-lcssa, %.lr.ph352.us
  %indvars.iv460.epil.init = phi i64 [ 0, %.lr.ph352.us ], [ %indvars.iv.next461.3, %._crit_edge353.split.us380.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.oz, %.lr.ph352.us ], [ %i.qu, %._crit_edge353.split.us380.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod592)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv460.epil = phi i64 [ %indvars.iv460.epil.init, %.epil.preheader ], [ %indvars.iv.next461.epil, %bb.ak ] ; 2 uses
  %i.qv = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.rf, %bb.ak ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %gep358.us374.epil = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep357.us, i64 %indvars.iv460.epil
  %.0.in.i256.us375.epil = load i16, ptr %gep358.us374.epil, align 2, !tbaa !213
  %.0.i257.us376.epil = zext i16 %.0.in.i256.us375.epil to i32
  %i.qw = mul nsw i32 %i.b, %.0.i257.us376.epil
  %i.qx = add nsw i32 %i.qw, %.0.i253.us
  %i.qy = shl nsw i32 %i.qx, 1
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr [4 x i8], ptr %i.mj, i64 %i.qz
  %i.rb = load <2 x float>, ptr %i.ra, align 4, !tbaa !171
  %i.rc = fmul <2 x float> %i.rb, %i.ni
  %i.rd = fpext <2 x float> %i.rc to <2 x double>
  %i.re = fdiv <2 x double> %i.rd, <double 6.000000e+00, double 1.200000e+01>
  %i.rf = fadd <2 x double> %i.qv, %i.re          ; 2 uses
  %indvars.iv.next461.epil = add nuw nsw i64 %indvars.iv460.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter588
  br i1 %epil.iter.cmp.not, label %._crit_edge353.split.us380, label %bb.ak, !llvm.loop !219

._crit_edge353.split.us380:                       ; preds = %bb.ak, %._crit_edge353.split.us380.unr-lcssa
  %.lcssa575 = phi <2 x double> [ %i.qu, %._crit_edge353.split.us380.unr-lcssa ], [ %i.rf, %bb.ak ] ; 2 uses
  %i.rg = add i64 %.3190363.us, %i.ng             ; 2 uses
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count478
  br i1 %exitcond469.not, label %._crit_edge367, label %.lr.ph366.split.us.split, !llvm.loop !218

.lr.ph366.split:                                  ; preds = %.lr.ph366
  %brmerge518 = select i1 %i.mz, i1 true, i1 %or.cond.not412
  br i1 %brmerge518, label %._crit_edge367, label %.split385.us

._crit_edge367.loopexit:                          ; preds = %._crit_edge353.split.us.us.us
  %i.rh = insertelement <2 x double> %i.mp, double %.11209.us.us.us.lcssa, i64 0
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge353.split.us380, %._crit_edge367.loopexit, %.lr.ph366.split, %bb.ai
  %.3190.lcssa = phi i64 [ %.2189393, %bb.ai ], [ %i.oy, %._crit_edge367.loopexit ], [ %.2189393, %.lr.ph366.split ], [ %i.rg, %._crit_edge353.split.us380 ] ; 2 uses
  %i.ri = phi <2 x double> [ %i.mp, %bb.ai ], [ %i.rh, %._crit_edge367.loopexit ], [ %i.mp, %.lr.ph366.split ], [ %.lcssa575, %._crit_edge353.split.us380 ] ; 3 uses
  %i.rj = extractelement <2 x double> %i.ri, i64 0
  %i.rk = add nuw i64 %.0176394, 1                ; 2 uses
  %exitcond480.not = icmp eq i64 %i.rk, %i.mf
  br i1 %exitcond480.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ai, !llvm.loop !220

.split385.us:                                     ; preds = %.lr.ph366.split, %.lr.ph366.split.us.split, %.lr.ph366.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(75) @.str, i8 noundef zeroext 2)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.split385.us
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 223, ptr noundef nonnull @.str.1) #18
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %.split385.us
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.rm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn233 = phi { ptr, i32 } [ %i.rm, %bb.ao ], [ %i.rl, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge367, %bb.ah, %bb.y, %._crit_edge343
  %.5 = phi i64 [ %.0187.lcssa, %bb.y ], [ %.0187.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ %.3190.lcssa, %._crit_edge367 ]
  %.4186 = phi i64 [ %.0182.lcssa, %bb.y ], [ %.0182.lcssa, %._crit_edge343 ], [ 0, %bb.ah ], [ 0, %._crit_edge367 ] ; 2 uses
  %i.rn = phi <2 x double> [ %i.ir, %bb.y ], [ %i.ir, %._crit_edge343 ], [ zeroinitializer, %bb.ah ], [ %i.ri, %._crit_edge367 ]
  %i.ro = sub nsw i64 %.5, %.4186                 ; 2 uses
  %i.rp = icmp slt i64 %i.ro, 1
  %i.rq = uitofp nneg i64 %i.ro to double
  %i.rr = insertelement <2 x double> poison, double %i.rq, i64 0
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rt = fdiv <2 x double> %i.rn, %i.rs
  %i.ru = insertelement <2 x i1> poison, i1 %i.rp, i64 0
  %i.rv = shufflevector <2 x i1> %i.ru, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.rw = select <2 x i1> %i.rv, <2 x double> zeroinitializer, <2 x double> %i.rt ; 3 uses
  %i.rx = load ptr, ptr @debug, align 8, !tbaa !221 ; 2 uses
  %.not231 = icmp eq ptr %i.rx, null
  br i1 %.not231, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ry = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.rx, ptr noundef nonnull @.str.2, i64 noundef %.4186) #16 ; 0 uses
  %i.rz = load ptr, ptr @debug, align 8, !tbaa !221
  %i.sa = extractelement <2 x double> %i.rw, i64 0
  %i.sb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rz, ptr noundef nonnull @.str.3, double noundef %i.sa) #16 ; 0 uses
  %i.sc = load ptr, ptr @debug, align 8, !tbaa !221
  %i.sd = extractelement <2 x double> %i.rw, i64 1
  %i.se = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sc, ptr noundef nonnull @.str.4, double noundef %i.sd) #16 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv481
  %i.sg = shufflevector <2 x double> %i.rw, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %i.sh = fptrunc <3 x double> %i.sg to <3 x float>
  call void @llvm.masked.store.v3f32.p0(<3 x float> %i.sh, ptr align 4 %i.sf, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !171
  %i.si = load i32, ptr %i.dv, align 4, !tbaa !223
  %i.sj = icmp ne i32 %i.si, 0
  %i.sk = and i1 %i.sj, %i.eq
  br i1 %i.sk, label %bb.l, label %bb.j, !llvm.loop !224

_ZNSt6vectorIiSaIiEED2Ev.exit249:                 ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.ag, %bb.ap, %bb.h, %bb.d
  %.pn233.pn.pn = phi { ptr, i32 } [ %i.du, %bb.h ], [ %i.cb, %bb.d ], [ %.pn233, %bb.ap ], [ %i.hl, %bb.ag ], [ %i.hl, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sl = load ptr, ptr %4, align 16, !tbaa !185  ; 3 uses
  %.not.i.i.i258 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i258, label %_ZNSt6vectorIfSaIfEED2Ev.exit259, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249
  %i.sm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sn = load ptr, ptr %i.sm, align 16, !tbaa !187
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #17
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
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN20DispersionCorrection13setParametersERK19interaction_const_t(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(137) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !279
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN20DispersionCorrection24setInteractionParametersEPNS_17InteractionParamsERK19interaction_const_tPKc(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(137) %1, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @_ZNK20DispersionCorrection9calculateEPA3_Kff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !279    ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.a, -3
  %spec.select.i = icmp ult i32 %i.c, 2
  %i.d = load float, ptr %1, align 4, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !171 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !171 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !171 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load float, ptr %i.m, align 4, !tbaa !171 ; 2 uses
  %i.o = fneg float %i.n
  %i.p = fmul float %i.l, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.g, float %i.j, float %i.p)
  %i.r = load float, ptr %i.e, align 4, !tbaa !171
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !171 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !171
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = fmul float %i.l, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.j, float %i.x)
  %i.z = fneg float %i.y
  %i.aa = fmul float %i.r, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float %i.aa)
  %i.ac = load float, ptr %i.h, align 4, !tbaa !171
  %i.ad = fmul float %i.g, %i.w
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.n, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ae, float %i.ab)
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !292
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fmul float %i.ag, %i.aj                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load float, ptr %i.al, align 8, !tbaa !293 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !294
  %i.ap = icmp eq i32 %i.ao, 0                    ; 4 uses
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !171 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !171 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.au = fsub float 1.000000e+00, %2             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !171 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !171
  %i.az = fmul float %2, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !171 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load float, ptr %i.bd, align 8, !tbaa !171
  %i.bf = fmul float %2, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.au, float %i.bc, float %i.bf)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi float [ %i.at, %bb.c ], [ %i.bc, %bb.d ]
  %i.bi = phi float [ %i.ar, %bb.c ], [ %i.aw, %bb.d ]
  %.029 = phi float [ %i.ar, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %.028 = phi float [ %i.at, %bb.c ], [ %i.bg, %bb.d ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !295
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !296
  %i.bn = fneg float %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bk, float %i.bn)
  %i.bp = fmul float %i.am, %i.bo                 ; 2 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %.029, float %i.bp, float 0.000000e+00) ; 2 uses
  %.sroa.6.8.vec.insert40 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load float, ptr %i.br, align 8
  %i.bt = fsub float %i.bs, %i.bi
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bp, float 0.000000e+00)
  %.0 = select i1 %i.ap, float 0.000000e+00, float %i.bu ; 3 uses
  br i1 %spec.select.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !297
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.by = load float, ptr %i.bx, align 4, !tbaa !298
  %i.bz = fneg float %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.bw, float %i.bz)
  %i.cb = fmul float %i.am, %i.ca                 ; 2 uses
  %i.cc = tail call float @llvm.fmuladd.f32(float %.028, float %i.cb, float %i.bq)
  %.sroa.6.8.vec.insert = insertelement <2 x float> %.sroa.6.8.vec.insert40, float %i.cc, i64 0 ; 2 uses
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !171
  %i.cf = fsub float %i.ce, %i.bh
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cb, float %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.f ], [ %.sroa.6.8.vec.insert, %bb.g ], [ %.sroa.6.8.vec.insert40, %bb.e ] ; 3 uses
  %.2 = phi float [ %.0, %bb.f ], [ %i.cg, %bb.g ], [ %.0, %bb.e ]
  switch i32 %i.a, label %bb.l [
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ch = fmul float %i.am, %i.ak                 ; 2 uses
  %i.ci = fmul float %i.ch, %.029
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !299
  %i.cl = fmul float %i.ci, %i.ck
  %i.cm = fdiv float %i.cl, 3.000000e+00          ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0 ; 2 uses
  %i.cn = icmp eq i32 %i.a, 3
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.co = fmul float %i.ch, %.028
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !300
  %i.cr = fmul float %i.co, %i.cq
  %i.cs = fpext float %i.cr to double
  %i.ct = fdiv double %i.cs, 3.000000e+00
  %i.cu = fpext float %i.cm to double
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = fptrunc double %i.cv to float
  %.sroa.0.0.vec.insert35 = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.cw, i64 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert35, %bb.j ], [ %.sroa.0.0.vec.insert, %bb.i ] ; 2 uses
  %i.cx = fpext float %i.ag to double
  %i.cy = fmul double %i.cx, -2.000000e+00
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.cz = fpext float %.sroa.0.0.vec.extract to double
  %i.da = fmul double %i.cy, %i.cz
  %i.db = fmul double %i.da, f0x40309AFAE1F7C60E
  %i.dc = fptrunc double %i.db to float
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.dc, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %.sroa.0.1 = phi <2 x float> [ zeroinitializer, %bb.h ], [ %.sroa.0.4.vec.insert, %bb.k ] ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.6.12.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 1
  %i.dd = fadd float %.sroa.6.12.vec.extract, %.2
  %.sroa.6.12.vec.insert = insertelement <2 x float> %.sroa.6.0, float %i.dd, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a
  %.sroa.6.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.6.0, %bb.l ], [ %.sroa.6.12.vec.insert, %bb.m ]
  %.sroa.0.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0.1, %bb.l ], [ %.sroa.0.1, %bb.m ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS12t_forcetable", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 8}
!13 = !{!"_ZTS10gmx_mtop_t", !14, i64 0, !16, i64 8, !34, i64 112, !39, i64 136, !44, i64 160, !45, i64 168, !6, i64 176, !52, i64 184, !61, i64 688, !44, i64 704, !63, i64 712, !68, i64 736, !6, i64 760, !6, i64 764}
!14 = !{!"p2 omnipotent char", !15, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"_ZTS14gmx_ffparams_t", !6, i64 0, !17, i64 8, !21, i64 32, !26, i64 56, !27, i64 64, !28, i64 72}
!17 = !{!"_ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseI19InteractionFunctionSaIS0_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTS9t_iparams", !11, i64 0}
!26 = !{!"double", !7, i64 0}
!27 = !{!"float", !7, i64 0}
!28 = !{!"_ZTS10gmx_cmap_t", !6, i64 0, !29, i64 8}
!29 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTS14gmx_cmapdata_t", !11, i64 0}
!34 = !{!"_ZTSSt6vectorI13gmx_moltype_tSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseI13gmx_moltype_tSaIS0_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE12_Vector_implE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTS13gmx_moltype_t", !11, i64 0}
!39 = !{!"_ZTSSt6vectorI14gmx_molblock_tSaIS0_EE", !40, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseI14gmx_molblock_tSaIS0_EE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE12_Vector_implE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTS14gmx_molblock_t", !11, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"_ZTSSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_ELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEELb0EE", !51, i64 0}
!51 = !{!"p1 _ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !11, i64 0}
!52 = !{!"_ZTS16SimulationGroups", !53, i64 0, !54, i64 240, !60, i64 264}
!53 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIiSaIiEELS1_10EEE", !7, i64 0}
!54 = !{!"_ZTSSt6vectorIPPcSaIS1_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIPPcSaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p3 omnipotent char", !59, i64 0}
!59 = !{!"any p3 pointer", !15, i64 0}
!60 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EEE", !7, i64 0}
!61 = !{!"_ZTS8t_symtab", !6, i64 0, !62, i64 8}
!62 = !{!"p1 _ZTS8t_symbuf", !11, i64 0}
!63 = !{!"_ZTSSt6vectorIiSaIiEE", !64, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!67 = !{!"p1 int", !11, i64 0}
!68 = !{!"_ZTSSt6vectorI20MoleculeBlockIndicesSaIS0_EE", !69, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE12_Vector_implE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!72 = !{!"p1 _ZTS20MoleculeBlockIndices", !11, i64 0}
!73 = !{!24, !25, i64 0}
!74 = !{!24, !25, i64 8}
!75 = !{!76, !76, i64 0}
!76 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!77 = !{!78, !89, i64 172}
!78 = !{!"_ZTS10t_inputrec", !6, i64 0, !79, i64 4, !80, i64 8, !6, i64 16, !80, i64 24, !6, i64 32, !81, i64 36, !6, i64 40, !6, i64 44, !82, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !26, i64 80, !26, i64 88, !44, i64 96, !83, i64 104, !27, i64 128, !27, i64 132, !27, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !27, i64 156, !27, i64 160, !88, i64 164, !27, i64 168, !89, i64 172, !90, i64 176, !44, i64 180, !44, i64 181, !91, i64 184, !27, i64 188, !92, i64 192, !6, i64 196, !44, i64 200, !93, i64 204, !97, i64 296, !97, i64 320, !6, i64 344, !27, i64 348, !27, i64 352, !27, i64 356, !27, i64 360, !102, i64 364, !103, i64 368, !27, i64 372, !27, i64 376, !27, i64 380, !27, i64 384, !44, i64 388, !76, i64 392, !103, i64 396, !27, i64 400, !27, i64 404, !104, i64 408, !27, i64 412, !27, i64 416, !105, i64 420, !106, i64 424, !44, i64 432, !113, i64 440, !44, i64 448, !120, i64 456, !127, i64 464, !27, i64 468, !128, i64 472, !44, i64 476, !6, i64 480, !27, i64 484, !27, i64 488, !27, i64 492, !6, i64 496, !27, i64 500, !27, i64 504, !6, i64 508, !27, i64 512, !6, i64 516, !6, i64 520, !129, i64 524, !6, i64 528, !27, i64 532, !6, i64 536, !44, i64 540, !27, i64 544, !80, i64 552, !6, i64 560, !130, i64 564, !27, i64 568, !7, i64 572, !7, i64 580, !27, i64 588, !44, i64 592, !131, i64 600, !44, i64 608, !138, i64 616, !44, i64 624, !145, i64 632, !152, i64 640, !153, i64 648, !44, i64 656, !160, i64 664, !27, i64 672, !7, i64 676, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !27, i64 728, !27, i64 732, !27, i64 736, !27, i64 740, !161, i64 744, !44, i64 864, !44, i64 865, !44, i64 866, !44, i64 867, !164, i64 872, !165, i64 880}
!79 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!80 = !{!"long", !7, i64 0}
!81 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!82 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!83 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !84, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSN3gmx8MtsLevelE", !11, i64 0}
!88 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!89 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!90 = !{!"_ZTS7PbcType", !7, i64 0}
!91 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!92 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!93 = !{!"_ZTS23PressureCouplingOptions", !94, i64 0, !95, i64 4, !6, i64 8, !27, i64 12, !7, i64 16, !7, i64 52, !96, i64 88}
!94 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!95 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!96 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!97 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !98, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!102 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!103 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!104 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!105 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!106 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !107, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !108, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !109, i64 0}
!109 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !110, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !111, i64 0}
!111 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !112, i64 0}
!112 = !{!"p1 _ZTS8t_lambda", !11, i64 0}
!113 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !116, i64 0}
!116 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !117, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !118, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !119, i64 0}
!119 = !{!"p1 _ZTS9t_simtemp", !11, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !121, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !122, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !123, i64 0}
!123 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !124, i64 0}
!124 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !125, i64 0}
!125 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !126, i64 0}
!126 = !{!"p1 _ZTS10t_expanded", !11, i64 0}
!127 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!128 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!129 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!130 = !{!"_ZTS8WallType", !7, i64 0}
!131 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !132, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !133, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !134, i64 0}
!134 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !135, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !136, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !137, i64 0}
!137 = !{!"p1 _ZTS13pull_params_t", !11, i64 0}
!138 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !139, i64 0}
!139 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !140, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !141, i64 0}
!141 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !142, i64 0}
!142 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !143, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !144, i64 0}
!144 = !{!"p1 _ZTSN3gmx9AwhParamsE", !11, i64 0}
!145 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !146, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !147, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !148, i64 0}
!148 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !149, i64 0}
!149 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !150, i64 0}
!150 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !151, i64 0}
!151 = !{!"p1 _ZTS5t_rot", !11, i64 0}
!152 = !{!"_ZTS8SwapType", !7, i64 0}
!153 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !154, i64 0}
!154 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !155, i64 0}
!155 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !156, i64 0}
!156 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !157, i64 0}
!157 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !158, i64 0}
!158 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !159, i64 0}
!159 = !{!"p1 _ZTS12t_swapcoords", !11, i64 0}
!160 = !{!"p1 _ZTS5t_IMD", !11, i64 0}
!161 = !{!"_ZTS9t_grpopts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !162, i64 16, !162, i64 24, !11, i64 32, !67, i64 40, !163, i64 48, !163, i64 56, !162, i64 64, !97, i64 72, !67, i64 96, !67, i64 104, !6, i64 112}
!162 = !{!"p1 float", !11, i64 0}
!163 = !{!"p2 float", !15, i64 0}
!164 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !11, i64 0}
!165 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !166, i64 0}
end_hunk_1
