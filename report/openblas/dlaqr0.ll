Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr0?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr0_:bb.a
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
  %.not527.not = icmp slt i64 %indvars.iv.next565, %indvars.iv567
  br i1 %.not527.not, label %bb.ac, label %bb.af, !llvm.loop !10

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
  %i.my = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.mu ; 2 uses
  %i.mz = mul i32 %i.mr, %i.cn
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.na
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !17
  %16 = getelementptr i8, ptr %i.my, i64 -8       ; 2 uses
  %17 = load <2 x double>, ptr %16, align 8, !tbaa !17 ; 3 uses
  %18 = insertelement <2 x double> poison, double %i.nc, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fsub <2 x double> %17, %19
  %21 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %20) ; 2 uses
  %shift609 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %22 = fcmp olt <2 x double> %shift609, %21
  %23 = extractelement <2 x i1> %22, i64 0
  br i1 %23, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %24 = extractelement <2 x double> %17, i64 1
  store double %24, ptr %16, align 8, !tbaa !17
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %25 = extractelement <2 x double> %17, i64 0
  store double %25, ptr %i.my, align 8, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %.loopexit
  %i.nd = load i32, ptr %i.n, align 4, !tbaa !14
  %i.ne = add nsw i32 %i.ms, 1
  %i.nf = call i32 @llvm.smin.i32(i32 %i.nd, i32 %i.ne) ; 2 uses
  %i.ng = srem i32 %i.nf, 2
  %i.nh = sub nsw i32 %i.nf, %i.ng                ; 4 uses
  store i32 %i.nh, ptr %i.n, align 4, !tbaa !14
  %i.ni = add i32 %i.mr, 1
  %i.nj = sub i32 %i.ni, %i.nh
  %i.nk = shl i32 %i.nh, 1                        ; 4 uses
  %i.nl = load i32, ptr %2, align 4, !tbaa !14    ; 2 uses
  %i.nm = sub nsw i32 %i.nl, %i.nk                ; 2 uses
  %i.nn = add nsw i32 %i.nm, 1                    ; 2 uses
  %i.no = or disjoint i32 %i.nk, 1
  %i.np = sub i32 %i.nm, %i.nk
  %i.nq = add i32 %i.np, -3
  store i32 %i.nq, ptr %i.r, align 4, !tbaa !14
  %.neg541 = add i32 %i.nl, 1
  %i.nr = shl i32 %i.nh, 2
  %reass.sub562 = sub i32 %.neg541, %i.nr
  %i.ns = add i32 %reass.sub562, -4
  store i32 %i.ns, ptr %i.s, align 4, !tbaa !14
  %i.nt = sext i32 %i.nj to i64                   ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.nt
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.nt
  %i.nw = add nsw i32 %i.nn, %i.t
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.nx
  %.reass602 = add i32 %i.nk, %invariant.op601
  %i.nz = sext i32 %.reass602 to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.nz
  %i.ob = mul nsw i32 %i.no, %i.t
  %i.oc = add nsw i32 %i.nn, %i.ob
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.od
  call void @dlaqr5_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull %i.nu, ptr noundef nonnull %i.nv, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @c__3, ptr noundef %i.ny, ptr noundef nonnull %6, ptr noundef nonnull %i.s, ptr noundef %i.oa, ptr noundef nonnull %6, ptr noundef nonnull %i.r, ptr noundef %i.oe, ptr noundef nonnull %6) #4
  %.pre = load i32, ptr %i.b, align 4, !tbaa !14
  %.pre581 = load i32, ptr %i.j, align 4, !tbaa !14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.r, %bb.q
  %i.of = phi i32 [ %.pre581, %bb.ao ], [ %i.ex, %bb.r ], [ %i.ex, %bb.q ]
  %i.og = phi i32 [ %.pre, %bb.ao ], [ %i.ez, %bb.r ], [ %i.ez, %bb.q ] ; 2 uses
  %i.oh = add nsw i32 %.0490556, 1
  %.inv = icmp slt i32 %i.of, 1
  %.1491 = select i1 %.inv, i32 %i.oh, i32 1
  %i.oi = add nuw nsw i32 %.0483557, 1
  %i.oj = load i32, ptr %i.a, align 4, !tbaa !14
  %.not511.not = icmp slt i32 %.0483557, %i.oj
  br i1 %.not511.not, label %bb.h, label %._crit_edge560, !llvm.loop !13

._crit_edge560:                                   ; preds = %bb.ap, %bb.g
  %i.ok = phi i32 [ %i.by, %bb.g ], [ %i.og, %bb.ap ]
  store i32 %i.ok, ptr %15, align 4, !tbaa !14
  br label %.loopexit545

.loopexit545:                                     ; preds = %bb.h, %._crit_edge560, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ %i.bh, %._crit_edge560 ], [ %i.bh, %bb.h ]
  %i.ol = uitofp nneg i32 %.0 to double
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %.loopexit545, %bb.f
  %.sink604 = phi double [ %i.ol, %.loopexit545 ], [ %i.bk, %bb.f ], [ 1.000000e+00, %bb.a ]
  store double %.sink604, ptr %13, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dlahqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaqr3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dlanv2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaqr4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaqr5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = !{!5, !5, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_0
