Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr0?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr0_:bb.a
  %i.fy = add nsw i64 %indvars.iv573, -1          ; 3 uses
  %i.fz = add nsw i32 %indvars575, -1
  %i.ga = mul nsw i32 %i.fz, %i.t
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv573
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !17 ; 3 uses
  %i.gf = fcmp oge double %i.ge, 0.000000e+00
  %i.gg = fneg double %i.ge
  %i.gh = select i1 %i.gf, double %i.ge, double %i.gg
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, -2 ; 3 uses
  %i.gi = mul nsw i64 %indvars.iv.next574, %i.co
  %i.gj = getelementptr [8 x i8], ptr %i.v, i64 %i.gi
  %i.gk = getelementptr [8 x i8], ptr %i.gj, i64 %i.fy
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !17 ; 3 uses
  %i.gm = fcmp oge double %i.gl, 0.000000e+00
  %i.gn = fneg double %i.gl
  %i.go = select i1 %i.gm, double %i.gl, double %i.gn
  %i.gp = fadd double %i.gh, %i.go                ; 3 uses
  %i.gq = mul i32 %i.cn, %indvars575
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !17
  %i.gu = call double @llvm.fmuladd.f64(double %i.gp, double 7.500000e-01, double %i.gt) ; 2 uses
  store double %i.gu, ptr %i.f, align 8, !tbaa !17
  store double %i.gp, ptr %i.g, align 8, !tbaa !17
  %i.gv = fmul double %i.gp, -4.375000e-01
  store double %i.gv, ptr %i.h, align 8, !tbaa !17
  store double %i.gu, ptr %i.i, align 8, !tbaa !17
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.fy
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.fy
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv573
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv573
  call void @dlanv2_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #4
  %.not530 = icmp slt i64 %indvars.iv.next574, %i.fx
  br i1 %.not530, label %._crit_edge.loopexit, label %.lr.ph553, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph553
  %.pre580 = load i32, ptr %i.c, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.ha = phi i32 [ %.pre580, %._crit_edge.loopexit ], [ %i.fj, %bb.t ]
  %i.hb = icmp eq i32 %i.fs, %i.ha
  br i1 %i.hb, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge
  %i.hc = mul i32 %i.ft, %i.cn
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !17
  %i.hg = sext i32 %i.ft to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.hg ; 2 uses
  store double %i.hf, ptr %i.hh, align 8, !tbaa !17
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hg ; 2 uses
  store double 0.000000e+00, ptr %i.hi, align 8, !tbaa !17
  %i.hj = load double, ptr %i.hh, align 8, !tbaa !17
  %i.hk = sext i32 %i.fs to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.hk
  store double %i.hj, ptr %i.hl, align 8, !tbaa !17
  %i.hm = load double, ptr %i.hi, align 8, !tbaa !17
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hk
  store double %i.hm, ptr %i.hn, align 8, !tbaa !17
  br label %.loopexit

bb.v:                                             ; preds = %bb.s
  %i.ho = sub nsw i32 %i.ez, %i.fc
  %.not524.not = icmp slt i32 %i.ho, %i.fn
  br i1 %.not524.not, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hp = sub nsw i32 %i.ez, %i.fo
  %i.hq = add nsw i32 %i.hp, 1                    ; 3 uses
  %i.hr = load i32, ptr %2, align 4, !tbaa !14
  %i.hs = mul i32 %i.hq, %i.cn
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ht
  %i.hv = sub i32 %i.cn, %i.fo
  %i.hw = add i32 %i.hv, %i.hr
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hx ; 3 uses
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.n, ptr noundef %i.hu, ptr noundef nonnull %6, ptr noundef %i.hy, ptr noundef nonnull %6) #4
  %i.hz = load i32, ptr %i.n, align 4, !tbaa !14
  %i.ia = icmp sgt i32 %i.hz, %i.bm
  %i.ib = sext i32 %i.hq to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ib ; 2 uses
  br i1 %i.ia, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @dlaqr4_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %i.n, ptr noundef nonnull @c__1, ptr noundef nonnull %i.n, ptr noundef %i.hy, ptr noundef nonnull %6, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull @c__1, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %i.q) #4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @dlahqr_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %i.n, ptr noundef nonnull @c__1, ptr noundef nonnull %i.n, ptr noundef %i.hy, ptr noundef nonnull %6, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ie = load i32, ptr %i.q, align 4, !tbaa !14
  %i.if = add nsw i32 %i.ie, %i.hq                ; 2 uses
  %i.ig = load i32, ptr %i.b, align 4, !tbaa !14  ; 7 uses
  %.not525 = icmp slt i32 %i.if, %i.ig
  br i1 %.not525, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ih = add nsw i32 %i.ig, -1                   ; 4 uses
  %i.ii = mul i32 %i.ih, %i.cn
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !17
  store double %i.il, ptr %i.f, align 8, !tbaa !17
  %i.im = mul nsw i32 %i.ih, %i.t
  %i.in = add nsw i32 %i.im, %i.ig
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !17
  store double %i.iq, ptr %i.h, align 8, !tbaa !17
  %i.ir = mul nsw i32 %i.ig, %i.t
  %i.is = add nsw i32 %i.ih, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.it
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !17
  store double %i.iv, ptr %i.g, align 8, !tbaa !17
  %i.iw = mul i32 %i.ig, %i.cn
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !17
  store double %i.iz, ptr %i.i, align 8, !tbaa !17
  %i.ja = sext i32 %i.ih to i64                   ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ja
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ja
  %i.jd = sext i32 %i.ig to i64                   ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.jd
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.jd
  call void @dlanv2_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.jb, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.je, ptr noundef nonnull %i.jf, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #4
  %i.jg = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.jh = add nsw i32 %i.jg, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.v
  %i.ji = phi i32 [ %i.jg, %bb.aa ], [ %i.ig, %bb.z ], [ %i.ez, %bb.v ] ; 5 uses
  %.0481 = phi i32 [ %i.jh, %bb.aa ], [ %i.if, %bb.z ], [ %i.fc, %bb.v ] ; 7 uses
  %i.jj = sub nsw i32 %i.ji, %.0481
  %i.jk = load i32, ptr %i.n, align 4, !tbaa !14
  %.not526 = icmp slt i32 %i.jj, %i.jk
  %i.jl = icmp sle i32 %i.ji, %.0481
  %or.cond561 = or i1 %.not526, %i.jl
  br i1 %or.cond561, label %.loopexit543, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ab
  %i.jm = sext i32 %.0481 to i64                  ; 3 uses
  %i.jn = sext i32 %i.ji to i64
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.jm
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %indvars.iv567 = phi i64 [ %i.jn, %.preheader.preheader ], [ %indvars.iv.next568, %bb.af ] ; 2 uses
  %.pre579 = load double, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ae
  %i.jo = phi double [ %.pre579, %.preheader ], [ %i.km, %bb.ae ]
  %indvars.iv564 = phi i64 [ %i.jm, %.preheader ], [ %indvars.iv.next565, %bb.ae ] ; 5 uses
  %.1547 = phi i32 [ 1, %.preheader ], [ %.2, %bb.ae ]
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv564 ; 2 uses
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, 1 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %8, i64 %indvars.iv564
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !17 ; 2 uses
  %i.js = load <2 x double>, ptr %i.jp, align 8, !tbaa !17 ; 3 uses
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ju = fcmp oge <2 x double> %i.jt, zeroinitializer
  %i.jv = fneg <2 x double> %i.jt
  %i.jw = select <2 x i1> %i.ju, <2 x double> %i.jt, <2 x double> %i.jv
  %i.jx = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jo, i64 1 ; 3 uses
  %i.jz = fcmp oge <2 x double> %i.jy, zeroinitializer
  %i.ka = fneg <2 x double> %i.jy
  %i.kb = select <2 x i1> %i.jz, <2 x double> %i.jy, <2 x double> %i.ka
  %i.kc = fadd <2 x double> %i.jw, %i.kb          ; 2 uses
  %shift = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = fcmp olt <2 x double> %shift, %i.kc
  %i.ke = extractelement <2 x i1> %i.kd, i64 0
  br i1 %i.ke, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kf = getelementptr [8 x i8], ptr %7, i64 %indvars.iv564
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv564 ; 2 uses
  %i.kh = extractelement <2 x double> %i.js, i64 1
  store double %i.kh, ptr %i.jp, align 8, !tbaa !17
  %i.ki = extractelement <2 x double> %i.js, i64 0
  store double %i.ki, ptr %i.kf, align 8, !tbaa !17
  %i.kj = load <2 x double>, ptr %i.kg, align 8, !tbaa !17 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.kk, ptr %i.kg, align 8, !tbaa !17
  %i.kl = extractelement <2 x double> %i.kj, i64 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.km = phi double [ %i.kl, %bb.ad ], [ %i.jr, %bb.ac ]
  %.2 = phi i32 [ 0, %bb.ad ], [ %.1547, %bb.ac ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next565, %indvars.iv567
  br i1 %exitcond.not, label %bb.af, label %bb.ac, !llvm.loop !10

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, -1 ; 2 uses
  %i.kn = icmp sle i64 %indvars.iv.next568, %i.jm
  %i.ko = icmp ne i32 %.2, 0
  %or.cond = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %or.cond, label %.loopexit543, label %.preheader, !llvm.loop !11

.loopexit543:                                     ; preds = %bb.af, %bb.ab
  %i.kp = add nsw i32 %.0481, 2                   ; 2 uses
  %.not528549 = icmp slt i32 %i.ji, %i.kp
  br i1 %.not528549, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit543
  %i.kq = sext i32 %i.ji to i64                   ; 7 uses
  %i.kr = sext i32 %i.kp to i64                   ; 2 uses
  %i.ks = sub nsw i64 %i.kq, %i.kr                ; 2 uses
  %i.kt = and i64 %i.ks, 2
  %lcmp.mod.not.not = icmp eq i64 %i.kt, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.kq ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !17
  %i.kw = add nsw i64 %i.kq, -1                   ; 2 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.kw ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !17
  %i.kz = fneg double %i.ky
  %i.la = fcmp une double %i.kv, %i.kz
  br i1 %i.la, label %bb.ag, label %.lr.ph._crit_edge.prol

.lr.ph._crit_edge.prol:                           ; preds = %.lr.ph.prol
  %.pre583.prol = add nsw i64 %i.kq, -2
  br label %.lr.ph.prol.loopexit

bb.ag:                                            ; preds = %.lr.ph.prol
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.kq
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !17
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.kw
  %i.le = add nsw i64 %i.kq, -2                   ; 3 uses
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.le ; 2 uses
  %i.lg = load <2 x double>, ptr %i.lf, align 8, !tbaa !17
  store <2 x double> %i.lg, ptr %i.ld, align 8, !tbaa !17
  store double %i.lc, ptr %i.lf, align 8, !tbaa !17
  %i.lh = load double, ptr %i.ku, align 8, !tbaa !17
  %i.li = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.le ; 2 uses
  %i.lj = load <2 x double>, ptr %i.li, align 8, !tbaa !17
  store <2 x double> %i.lj, ptr %i.kx, align 8, !tbaa !17
  store double %i.lh, ptr %i.li, align 8, !tbaa !17
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph._crit_edge.prol, %bb.ag, %.lr.ph.preheader
  %indvars.iv570.unr = phi i64 [ %i.kq, %.lr.ph.preheader ], [ %.pre583.prol, %.lr.ph._crit_edge.prol ], [ %i.le, %bb.ag ]
  %i.lk = icmp ult i64 %i.ks, 2
  br i1 %i.lk, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.aj
  %indvars.iv570 = phi i64 [ %indvars.iv.next571.pre-phi.1, %bb.aj ], [ %indvars.iv570.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv570 ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !17
  %i.ln = add nsw i64 %indvars.iv570, -1          ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ln ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !17
  %i.lq = fneg double %i.lp
  %i.lr = fcmp une double %i.lm, %i.lq
  br i1 %i.lr, label %bb.ah, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre583 = add nsw i64 %indvars.iv570, -2
  br label %.lr.ph.1

bb.ah:                                            ; preds = %.lr.ph
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv570
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !17
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ln
  %i.lv = add nsw i64 %indvars.iv570, -2          ; 3 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lv ; 2 uses
  %i.lx = load <2 x double>, ptr %i.lw, align 8, !tbaa !17
  store <2 x double> %i.lx, ptr %i.lu, align 8, !tbaa !17
  store double %i.lt, ptr %i.lw, align 8, !tbaa !17
  %i.ly = load double, ptr %i.ll, align 8, !tbaa !17
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.lv ; 2 uses
  %i.ma = load <2 x double>, ptr %i.lz, align 8, !tbaa !17
  store <2 x double> %i.ma, ptr %i.lo, align 8, !tbaa !17
  store double %i.ly, ptr %i.lz, align 8, !tbaa !17
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph._crit_edge, %bb.ah
  %indvars.iv.next571.pre-phi = phi i64 [ %.pre583, %.lr.ph._crit_edge ], [ %i.lv, %bb.ah ] ; 5 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.next571.pre-phi ; 2 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !17
  %i.md = add nsw i64 %indvars.iv.next571.pre-phi, -1 ; 2 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.md ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !17
  %i.mg = fneg double %i.mf
  %i.mh = fcmp une double %i.mc, %i.mg
  br i1 %i.mh, label %bb.ai, label %.lr.ph._crit_edge.1

.lr.ph._crit_edge.1:                              ; preds = %.lr.ph.1
  %.pre583.1 = add nsw i64 %indvars.iv.next571.pre-phi, -2
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.1
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next571.pre-phi
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !17
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.md
  %i.ml = add nsw i64 %indvars.iv.next571.pre-phi, -2 ; 3 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ml ; 2 uses
  %i.mn = load <2 x double>, ptr %i.mm, align 8, !tbaa !17
  store <2 x double> %i.mn, ptr %i.mk, align 8, !tbaa !17
  store double %i.mj, ptr %i.mm, align 8, !tbaa !17
  %i.mo = load double, ptr %i.mb, align 8, !tbaa !17
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ml ; 2 uses
  %i.mq = load <2 x double>, ptr %i.mp, align 8, !tbaa !17
  store <2 x double> %i.mq, ptr %i.me, align 8, !tbaa !17
  store double %i.mo, ptr %i.mp, align 8, !tbaa !17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph._crit_edge.1
  %indvars.iv.next571.pre-phi.1 = phi i64 [ %.pre583.1, %.lr.ph._crit_edge.1 ], [ %i.ml, %bb.ai ] ; 2 uses
  %.not528.1 = icmp slt i64 %indvars.iv.next571.pre-phi.1, %i.kr
  br i1 %.not528.1, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %bb.aj, %.loopexit543, %._crit_edge, %bb.u
  %.1482 = phi i32 [ %i.fs, %bb.u ], [ %i.fs, %._crit_edge ], [ %.0481, %.loopexit543 ], [ %.0481, %bb.aj ], [ %.0481, %.lr.ph.prol.loopexit ]
  %i.mr = load i32, ptr %i.b, align 4, !tbaa !14  ; 4 uses
  %i.ms = sub nsw i32 %i.mr, %.1482               ; 2 uses
  %i.mt = icmp eq i32 %i.ms, 1
  br i1 %i.mt, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.loopexit
  %i.mu = sext i32 %i.mr to i64                   ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.mu
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !17
  %i.mx = fcmp oeq double %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.my = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.mu ; 3 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !17 ; 2 uses
  %i.na = mul i32 %i.mr, %i.cn
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !17 ; 2 uses
  %i.ne = fsub double %i.mz, %i.nd
  %i.nf = call double @llvm.fabs.f64(double %i.ne)
  %i.ng = getelementptr i8, ptr %i.my, i64 -8     ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !17 ; 2 uses
  %i.ni = fsub double %i.nh, %i.nd
  %i.nj = call double @llvm.fabs.f64(double %i.ni)
  %i.nk = fcmp olt double %i.nf, %i.nj
  br i1 %i.nk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.mz, ptr %i.ng, align 8, !tbaa !17
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  store double %i.nh, ptr %i.my, align 8, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %.loopexit
  %i.nl = load i32, ptr %i.n, align 4, !tbaa !14
  %i.nm = add nsw i32 %i.ms, 1
  %i.nn = call i32 @llvm.smin.i32(i32 %i.nl, i32 %i.nm) ; 2 uses
  %i.no = srem i32 %i.nn, 2
  %i.np = sub nsw i32 %i.nn, %i.no                ; 4 uses
  store i32 %i.np, ptr %i.n, align 4, !tbaa !14
  %i.nq = add i32 %i.mr, 1
  %i.nr = sub i32 %i.nq, %i.np
  %i.ns = shl i32 %i.np, 1                        ; 4 uses
  %i.nt = load i32, ptr %2, align 4, !tbaa !14    ; 2 uses
  %i.nu = sub nsw i32 %i.nt, %i.ns                ; 2 uses
  %i.nv = add nsw i32 %i.nu, 1                    ; 2 uses
  %i.nw = or disjoint i32 %i.ns, 1
  %i.nx = sub i32 %i.nu, %i.ns
  %i.ny = add i32 %i.nx, -3
  store i32 %i.ny, ptr %i.r, align 4, !tbaa !14
  %.neg541 = add i32 %i.nt, 1
  %i.nz = shl i32 %i.np, 2
  %reass.sub562 = sub i32 %.neg541, %i.nz
  %i.oa = add i32 %reass.sub562, -4
  store i32 %i.oa, ptr %i.s, align 4, !tbaa !14
  %i.ob = sext i32 %i.nr to i64                   ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ob
  %i.od = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ob
  %i.oe = add nsw i32 %i.nv, %i.t
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.of
  %.reass602 = add i32 %i.ns, %invariant.op601
  %i.oh = sext i32 %.reass602 to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.oh
  %i.oj = mul nsw i32 %i.nw, %i.t
  %i.ok = add nsw i32 %i.nv, %i.oj
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ol
  call void @dlaqr5_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull %i.oc, ptr noundef nonnull %i.od, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @c__3, ptr noundef %i.og, ptr noundef nonnull %6, ptr noundef nonnull %i.s, ptr noundef %i.oi, ptr noundef nonnull %6, ptr noundef nonnull %i.r, ptr noundef %i.om, ptr noundef nonnull %6) #4
  %.pre = load i32, ptr %i.b, align 4, !tbaa !14
  %.pre581 = load i32, ptr %i.j, align 4, !tbaa !14
  br label %bb.ap
end_hunk_0
