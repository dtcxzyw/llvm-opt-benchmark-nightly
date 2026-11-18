Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinsol?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@AndersonAcc:bb.a
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !57
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.0248296
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !57
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.hh
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !57
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.0248296
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !57
  %i.ho = add nuw nsw i64 %.0248296, 2            ; 2 uses
  %exitcond315.not.1 = icmp eq i64 %i.ho, %i.fk
  br i1 %exitcond315.not.1, label %._crit_edge299, label %.lr.ph298, !llvm.loop !153

.thread:                                          ; preds = %bb.t, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.5.ph = phi i32 [ 0, %bb.ac ], [ 0, %bb.ab ], [ -18, %bb.aa ], [ -18, %bb.y ], [ -19, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ao

.loopexit294:                                     ; preds = %._crit_edge299, %bb.ad
  %i.hp = phi i64 [ %i.er, %bb.ad ], [ %i.gw, %._crit_edge299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.af

bb.af:                                            ; preds = %.loopexit294, %bb.r
  %i.hq = phi i64 [ %i.hp, %.loopexit294 ], [ %.pre335, %bb.r ] ; 12 uses
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !168
  %i.hu = call i32 @N_VDotProdMulti(i32 noundef %i.hr, ptr noundef %2, ptr noundef %i.ht, ptr noundef %7) #13
  %.not277 = icmp eq i32 %i.hu, 0
  br i1 %.not277, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !52 ; 2 uses
  %.not278 = icmp eq ptr %i.hw, null
  br i1 %.not278, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ic = call i32 %i.hw(i64 noundef %i.hy, ptr noundef %4, ptr noundef %1, ptr noundef %7, i64 noundef %i.hq, ptr noundef %i.ia, ptr noundef nonnull %i.ib) #13
  %.not279 = icmp eq i32 %i.ic, 0
  br i1 %.not279, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2906, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43)
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.id = load double, ptr %i.ib, align 8, !tbaa !21 ; 2 uses
  %i.ie = fcmp ole double %i.id, 0.000000e+00
  %i.if = fcmp ogt double %i.id, 1.000000e+00
  %or.cond289 = or i1 %i.ie, %i.if
  br i1 %or.cond289, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @KINProcessError(ptr noundef nonnull %0, i32 noundef -18, i32 noundef 2912, ptr noundef nonnull @__func__.AndersonAcc, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44)
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj, %bb.ag
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !27
  store ptr %1, ptr %i.e, align 8, !tbaa !57
  %i.ig = add nsw i64 %i.hq, -1                   ; 5 uses
  %i.ih = icmp sgt i64 %i.hq, 0                   ; 2 uses
  br i1 %i.ih, label %.preheader.lr.ph, label %._crit_edge308

.preheader.lr.ph:                                 ; preds = %bb.al
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !49 ; 4 uses
  %.0247283 = add i64 %i.ij, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !164
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge305
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge305 ] ; 3 uses
  %indvars.iv318 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next319, %._crit_edge305 ] ; 4 uses
  %.0247307 = phi i64 [ %i.ig, %.preheader.lr.ph ], [ %i.jk, %._crit_edge305 ] ; 8 uses
  %invariant.gep = getelementptr [8 x i8], ptr %6, i64 %.0247307 ; 3 uses
  %.0246302 = add nuw nsw i64 %.0247307, 1        ; 4 uses
  %i.im = icmp slt i64 %.0246302, %i.hq
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0247307 ; 4 uses
  %.promoted = load double, ptr %i.in, align 8, !tbaa !27 ; 3 uses
  br i1 %i.im, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.preheader
  %xtraiter424 = and i64 %indvar, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph304.prol.loopexit, label %.lr.ph304.prol

.lr.ph304.prol:                                   ; preds = %.lr.ph304.preheader
  %i.io = mul nsw i64 %i.ij, %.0246302
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.io
  %i.ip = load double, ptr %gep.prol, align 8, !tbaa !27
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246302
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !27
  %i.is = fneg double %i.ip
  %i.it = call double @llvm.fmuladd.f64(double %i.is, double %i.ir, double %.promoted) ; 3 uses
  store double %i.it, ptr %i.in, align 8, !tbaa !27
  %.0246.prol = add nuw nsw i64 %.0247307, 2
  br label %.lr.ph304.prol.loopexit

.lr.ph304.prol.loopexit:                          ; preds = %.lr.ph304.prol, %.lr.ph304.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph304.preheader ], [ %i.it, %.lr.ph304.prol ]
  %.unr = phi double [ %.promoted, %.lr.ph304.preheader ], [ %i.it, %.lr.ph304.prol ]
  %.0246303.unr = phi i64 [ %.0246302, %.lr.ph304.preheader ], [ %.0246.prol, %.lr.ph304.prol ]
  %i.iu = icmp eq i64 %indvar, 1
  br i1 %i.iu, label %._crit_edge305, label %.lr.ph304

._crit_edge308.loopexit:                          ; preds = %._crit_edge305
  %i.iv = trunc i64 %i.hq to i32
  %i.iw = add i32 %i.iv, 1
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %bb.al
  %.0252.lcssa = phi i32 [ 1, %bb.al ], [ %i.iw, %._crit_edge308.loopexit ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !53
  %.not280 = icmp eq i32 %i.iy, 0
  br i1 %.not280, label %bb.am, label %bb.an

._crit_edge305:                                   ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304, %.preheader
  %i.iz = phi double [ %.promoted, %.preheader ], [ %.lcssa.unr, %.lr.ph304.prol.loopexit ], [ %i.jx, %.lr.ph304 ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0247307
  %i.jb = mul i64 %.0247283, %.0247307
  %i.jc = getelementptr inbounds [8 x i8], ptr %6, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !27
  %i.je = fdiv double %i.iz, %i.jd                ; 2 uses
  store double %i.je, ptr %i.ja, align 8, !tbaa !27
  %i.jf = fneg double %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv318
  store double %i.jf, ptr %i.jg, align 8, !tbaa !27
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.0247307
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !57
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv318
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !57
  %indvars.iv.next319 = add nuw i64 %indvars.iv318, 1
  %i.jk = add nsw i64 %.0247307, -1
  %exitcond321.not = icmp eq i64 %indvars.iv318, %i.hq
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond321.not, label %._crit_edge308.loopexit, label %.preheader

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %i.jl = phi double [ %i.jx, %.lr.ph304 ], [ %.unr, %.lr.ph304.prol.loopexit ]
  %.0246303 = phi i64 [ %.0246.1, %.lr.ph304 ], [ %.0246303.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %i.jm = mul nsw i64 %i.ij, %.0246303
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.jm
  %i.jn = load double, ptr %gep, align 8, !tbaa !27
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246303
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !27
  %i.jq = fneg double %i.jn
  %i.jr = call double @llvm.fmuladd.f64(double %i.jq, double %i.jp, double %i.jl) ; 2 uses
  store double %i.jr, ptr %i.in, align 8, !tbaa !27
  %.0246 = add nuw nsw i64 %.0246303, 1           ; 2 uses
  %i.js = mul nsw i64 %i.ij, %.0246
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.js
  %i.jt = load double, ptr %gep.1, align 8, !tbaa !27
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0246
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !27
  %i.jw = fneg double %i.jt
  %i.jx = call double @llvm.fmuladd.f64(double %i.jw, double %i.jv, double %i.jr) ; 3 uses
  store double %i.jx, ptr %i.in, align 8, !tbaa !27
  %.0246.1 = add nuw nsw i64 %.0246303, 2         ; 2 uses
  %exitcond317.not.1 = icmp eq i64 %.0246.1, %i.hq
  br i1 %exitcond317.not.1, label %._crit_edge305, label %.lr.ph304

bb.am:                                            ; preds = %._crit_edge308
  %i.jy = load ptr, ptr %i.hv, align 8, !tbaa !52
  %.not281 = icmp eq ptr %i.jy, null
  br i1 %.not281, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge308
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !21
  %i.kb = fsub double 1.000000e+00, %i.ka         ; 5 uses
  %i.kc = fneg double %i.kb
  %i.kd = zext nneg i32 %.0252.lcssa to i64       ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kd
  store double %i.kc, ptr %i.ke, align 8, !tbaa !27
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kd
  store ptr %2, ptr %i.kf, align 8, !tbaa !57
  %.1253309 = add i32 %.0252.lcssa, 1             ; 2 uses
  br i1 %i.ih, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %bb.an
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !165 ; 6 uses
  %i.ki = zext i32 %.1253309 to i64               ; 5 uses
  %min.iters.check398 = icmp ult i64 %i.hq, 12
  br i1 %min.iters.check398, label %scalar.ph397.preheader, label %vector.memcheck399

vector.memcheck399:                               ; preds = %.lr.ph313
  %i.kj = shl nuw nsw i64 %i.ki, 3                ; 3 uses
  %i.kk = getelementptr i8, ptr %i.c, i64 %i.kj
  %i.kl = shl i64 %i.hq, 3                        ; 3 uses
  %i.km = add i64 %i.kl, %i.kj                    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.c, i64 %i.km
  %i.ko = getelementptr i8, ptr %7, i64 %i.kl
  %8 = getelementptr i8, ptr %i.e, i64 %i.kj
  %9 = getelementptr i8, ptr %i.e, i64 %i.km
  %10 = getelementptr i8, ptr %i.kh, i64 %i.kl
  %bound0400 = icmp ult ptr %i.kk, %i.ko
  %bound1401 = icmp ult ptr %7, %i.kn
  %found.conflict402 = and i1 %bound0400, %bound1401
  %bound0403 = icmp ult ptr %8, %10
  %bound1404 = icmp ult ptr %i.kh, %9
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx = or i1 %found.conflict402, %found.conflict405
  br i1 %conflict.rdx, label %scalar.ph397.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %vector.memcheck399
  %n.vec407 = and i64 %i.hq, 9223372036854775806  ; 4 uses
  %i.kp = add nuw i64 %n.vec407, %i.ki            ; 2 uses
  %i.kq = sub i64 %i.ig, %n.vec407
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.kr = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next413, %vector.body408 ] ; 3 uses
  %i.ks = add nuw i64 %index409, %i.ki            ; 2 uses
  %i.kt = sub i64 %i.ig, %index409                ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.kt
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -8
  %wide.load410 = load <2 x double>, ptr %i.kv, align 8, !tbaa !27, !alias.scope !176
  %i.kw = shufflevector <2 x double> %wide.load410, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse = fmul <2 x double> %i.kr, %i.kw
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ks
  store <2 x double> %reverse, ptr %i.kx, align 8, !tbaa !27, !alias.scope !177, !noalias !176
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kt
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -8
  %wide.load411 = load <2 x ptr>, ptr %i.kz, align 8, !tbaa !57, !alias.scope !178
  %reverse412 = shufflevector <2 x ptr> %wide.load411, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ks
  store <2 x ptr> %reverse412, ptr %i.la, align 8, !tbaa !57, !alias.scope !179, !noalias !178
  %index.next413 = add nuw i64 %index409, 2       ; 2 uses
  %i.lb = icmp eq i64 %index.next413, %n.vec407
  br i1 %i.lb, label %middle.block414, label %vector.body408, !llvm.loop !159

middle.block414:                                  ; preds = %vector.body408
  %cmp.n415 = icmp eq i64 %i.hq, %n.vec407
  br i1 %cmp.n415, label %.loopexit.loopexit, label %scalar.ph397.preheader

scalar.ph397.preheader:                           ; preds = %vector.memcheck399, %.lr.ph313, %middle.block414
  %indvars.iv322.ph = phi i64 [ %i.ki, %vector.memcheck399 ], [ %i.ki, %.lr.ph313 ], [ %i.kp, %middle.block414 ] ; 4 uses
  %.0310.ph = phi i64 [ %i.ig, %vector.memcheck399 ], [ %i.ig, %.lr.ph313 ], [ %i.kq, %middle.block414 ] ; 6 uses
  %i.lc = and i64 %.0310.ph, 1
  %lcmp.mod427.not.not = icmp eq i64 %i.lc, 0
  br i1 %lcmp.mod427.not.not, label %scalar.ph397.prol, label %scalar.ph397.prol.loopexit

scalar.ph397.prol:                                ; preds = %scalar.ph397.preheader
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310.ph
  %i.le = load double, ptr %i.ld, align 8, !tbaa !27
  %i.lf = fmul double %i.kb, %i.le
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322.ph
  store double %i.lf, ptr %i.lg, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.0310.ph
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !57
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322.ph
  store ptr %i.li, ptr %i.lj, align 8, !tbaa !57
  %i.lk = add nsw i64 %.0310.ph, -1
  %indvars.iv.next323.prol = add nuw nsw i64 %indvars.iv322.ph, 1 ; 2 uses
  br label %scalar.ph397.prol.loopexit

scalar.ph397.prol.loopexit:                       ; preds = %scalar.ph397.prol, %scalar.ph397.preheader
  %indvars.iv.next323.lcssa418.unr = phi i64 [ poison, %scalar.ph397.preheader ], [ %indvars.iv.next323.prol, %scalar.ph397.prol ]
  %indvars.iv322.unr = phi i64 [ %indvars.iv322.ph, %scalar.ph397.preheader ], [ %indvars.iv.next323.prol, %scalar.ph397.prol ]
  %.0310.unr = phi i64 [ %.0310.ph, %scalar.ph397.preheader ], [ %i.lk, %scalar.ph397.prol ]
  %i.ll = icmp eq i64 %.0310.ph, 0
  br i1 %i.ll, label %.loopexit.loopexit, label %scalar.ph397

scalar.ph397:                                     ; preds = %scalar.ph397.prol.loopexit, %scalar.ph397
  %indvars.iv322 = phi i64 [ %indvars.iv.next323.1, %scalar.ph397 ], [ %indvars.iv322.unr, %scalar.ph397.prol.loopexit ] ; 4 uses
  %.0310 = phi i64 [ %i.mb, %scalar.ph397 ], [ %.0310.unr, %scalar.ph397.prol.loopexit ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0310
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !27
  %i.lo = fmul double %i.kb, %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv322
  store double %i.lo, ptr %i.lp, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.0310
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !57
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv322
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !57
  %i.lt = add nsw i64 %.0310, -1                  ; 3 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !27
  %i.lw = fmul double %i.kb, %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next323
  store double %i.lw, ptr %i.lx, align 8, !tbaa !27
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.lt
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !57
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next323
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !57
  %i.mb = add nsw i64 %.0310, -2
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %.not356.1 = icmp eq i64 %i.lt, 0
  br i1 %.not356.1, label %.loopexit.loopexit, label %scalar.ph397, !llvm.loop !160

.loopexit.loopexit:                               ; preds = %scalar.ph397.prol.loopexit, %scalar.ph397, %middle.block414
  %indvars.iv.next323.lcssa = phi i64 [ %i.kp, %middle.block414 ], [ %indvars.iv.next323.lcssa418.unr, %scalar.ph397.prol.loopexit ], [ %indvars.iv.next323.1, %scalar.ph397 ]
  %i.mc = trunc nuw i64 %indvars.iv.next323.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.an, %bb.am
  %.2254 = phi i32 [ %.0252.lcssa, %bb.am ], [ %.1253309, %bb.an ], [ %i.mc, %.loopexit.loopexit ]
  %i.md = call i32 @N_VLinearCombination(i32 noundef %.2254, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %3) #13
  %.not282 = icmp eq i32 %i.md, 0
  %.290 = select i1 %.not282, i32 0, i32 -16
  br label %bb.ao

bb.ao:                                            ; preds = %.thread, %.loopexit, %bb.af, %bb.l, %bb.m, %bb.ak, %bb.ai, %bb.k, %bb.i
  %.6 = phi i32 [ -18, %bb.i ], [ -18, %bb.k ], [ %.5.ph, %.thread ], [ 0, %bb.l ], [ -18, %bb.ai ], [ -18, %bb.ak ], [ %.290, %.loopexit ], [ -16, %bb.af ], [ 0, %bb.m ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @AndersonAccQRDelete(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, -1                           ; 3 uses
  %i.b = icmp sgt i32 %3, 1                       ; 2 uses
  br i1 %i.b, label %.lr.ph149, label %._crit_edge154.split

.lr.ph149:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = zext nneg i32 %3 to i64                  ; 6 uses
  %i.e = zext nneg i32 %3 to i64
  %wide.trip.count172 = zext i32 %i.a to i64      ; 3 uses
  %i.f = add nsw i64 %i.d, -3
  br label %bb.b

.preheader144.preheader:                          ; preds = %._crit_edge
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count185 = zext nneg i32 %3 to i64
  %wide.trip.count179 = zext i32 %i.a to i64
  %min.iters.check = icmp ult i32 %3, 5
  %n.vec = and i64 %wide.trip.count172, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count172
  br label %.preheader144

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvars.iv169 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next170, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph149 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next170 to i32
  %i.h = mul nuw nsw i32 %3, %indvars
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !27 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.l, %i.l
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.m) ; 2 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.o)
  %i.q = select i1 %i.p, double %sqrt, double 0.000000e+00 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x double> %i.l, %i.s             ; 6 uses
  %i.u = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.q, i64 0
  store <2 x double> %i.u, ptr %i.k, align 8, !tbaa !27
  %i.v = add nuw nsw i64 %indvars.iv169, 2
  %i.w = icmp samesign ult i64 %i.v, %i.e
  %i.x = extractelement <2 x double> %i.t, i64 1  ; 2 uses
  %i.y = fneg double %i.x                         ; 2 uses
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.z = sub nsw i64 %i.d, %indvars.iv169
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv169 ; 3 uses
  %i.aa = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x double> %i.aa, double %i.y, i64 0 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ac = mul nuw nsw i64 %indvars.iv, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ac ; 2 uses
  %i.ad = load <2 x double>, ptr %gep.prol, align 8, !tbaa !27 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x double> %i.t, %i.ae
  %i.ag = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ag, <2 x double> %i.af)
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ai, ptr %gep.prol, align 8, !tbaa !27
  %indvars.iv.next167.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv166.unr = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next167.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %i.f, %indvars.iv169
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph.new ], [ %indvars.iv166.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv166, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ak ; 2 uses
  %i.al = load <2 x double>, ptr %gep, align 8, !tbaa !27 ; 2 uses
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x double> %i.t, %i.am
  %i.ao = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ao, <2 x double> %i.an)
end_hunk_0
