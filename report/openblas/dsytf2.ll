Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytf2?download=true
begin_hunk_0_@dsytf2_:bb.a

bb.n:                                             ; preds = %bb.k
  %i.bx = load double, ptr %i.e, align 8, !tbaa !24
  %i.by = fmul double %.0483, f0x3FE47E0F66AFED07 ; 2 uses
  %i.bz = fcmp ult double %i.bx, %i.by
  br i1 %i.bz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ca = sub nsw i32 %.0491546, %.1498
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !22
  %i.cb = add nsw i32 %.1498, 1
  %i.cc = mul nsw i32 %i.cb, %i.f
  %i.cd = add nsw i32 %i.cc, %.1498
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ce
  %i.cg = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.cf, ptr noundef nonnull %3) #4
  %i.ch = add nsw i32 %i.cg, %.1498
  %i.ci = mul nsw i32 %i.ch, %i.f
  %i.cj = add nsw i32 %i.ci, %.1498
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !24 ; 4 uses
  store double %i.cm, ptr %i.b, align 8, !tbaa !24
  %i.cn = fcmp oge double %i.cm, 0.000000e+00
  %i.co = fneg double %i.cm
  %i.cp = select i1 %i.cn, double %i.cm, double %i.co ; 3 uses
  %i.cq = icmp sgt i32 %.1498, 1
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = add nsw i32 %.1498, -1
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !22
  %i.cs = mul nsw i32 %.1498, %i.f                ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.cv, ptr noundef nonnull @c__1) #4
  %i.cx = add nsw i32 %i.cw, %i.cs
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !24 ; 4 uses
  store double %i.da, ptr %i.b, align 8, !tbaa !24
  %i.db = fcmp oge double %i.da, 0.000000e+00
  %i.dc = fneg double %i.da
  %i.dd = select i1 %i.db, double %i.da, double %i.dc ; 2 uses
  %i.de = fcmp oge double %i.cp, %i.dd
  %i.df = select i1 %i.de, double %i.cp, double %i.dd
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.df, %bb.p ], [ %i.cp, %bb.o ] ; 2 uses
  %i.dg = load double, ptr %i.e, align 8, !tbaa !24
  %i.dh = fdiv double %.0483, %.0
  %i.di = fmul double %i.by, %i.dh
  %i.dj = fcmp ult double %i.dg, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = mul i32 %.1498, %i.ah
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24 ; 2 uses
  store double %i.dn, ptr %i.b, align 8, !tbaa !24
  %i.do = call double @llvm.fabs.f64(double %i.dn)
  %i.dp = fmul double %.0, f0x3FE47E0F66AFED07
  %i.dq = fcmp ult double %i.do, %i.dp            ; 3 uses
  %not. = xor i1 %i.dq, true
  %.520 = select i1 %i.dq, i32 -2, i32 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.dr = phi i1 [ false, %bb.q ], [ false, %bb.n ], [ %i.dq, %bb.r ]
  %i.ds = phi i1 [ true, %bb.q ], [ true, %bb.n ], [ %not., %bb.r ]
  %.0487.neg = phi i32 [ -1, %bb.q ], [ -1, %bb.n ], [ %.520, %bb.r ]
  %.0485 = phi i32 [ %.0491546, %bb.q ], [ %.0491546, %bb.n ], [ %.1498, %bb.r ] ; 10 uses
  %i.dt = add nsw i32 %.0487.neg, %.0491546       ; 2 uses
  %i.du = add nsw i32 %i.dt, 1                    ; 3 uses
  %.not518 = icmp eq i32 %.0485, %i.du
  br i1 %.not518, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = add nsw i32 %.0485, -1
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !22
  %i.dw = mul nsw i32 %i.du, %i.f                 ; 3 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [8 x i8], ptr %i.h, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = mul nsw i32 %.0485, %i.f                ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %i.h, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.dz, ptr noundef nonnull @c__1, ptr noundef %i.ed, ptr noundef nonnull @c__1) #4
  %i.ee = sub i32 %i.dt, %.0485
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !22
  %i.ef = add nsw i32 %.0485, 1                   ; 2 uses
  %i.eg = add nsw i32 %i.dw, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eh
  %i.ej = mul nsw i32 %i.ef, %i.f
  %i.ek = add nsw i32 %i.ej, %.0485
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.el
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.ei, ptr noundef nonnull @c__1, ptr noundef %i.em, ptr noundef nonnull %3) #4
  %i.en = add nsw i32 %i.dw, %i.du
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24
  %i.er = add nsw i32 %i.ea, %.0485
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !24
  store double %i.eu, ptr %i.ep, align 8, !tbaa !24
  store double %i.eq, ptr %i.et, align 8, !tbaa !24
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = add nsw i32 %.0491546, -1
  %i.ew = add nsw i32 %i.ev, %i.aw
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !24
  %i.fa = add nsw i32 %.0485, %i.aw
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fb ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  store double %i.fd, ptr %i.ey, align 8, !tbaa !24
  store double %i.ez, ptr %i.fc, align 8, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = load double, ptr %i.az, align 8, !tbaa !24
  %i.ff = fdiv double 1.000000e+00, %i.fe         ; 2 uses
  store double %i.ff, ptr %i.c, align 8, !tbaa !24
  %i.fg = add nsw i32 %.0491546, -1               ; 2 uses
  store i32 %i.fg, ptr %i.a, align 4, !tbaa !22
  %i.fh = fneg double %i.ff
  store double %i.fh, ptr %i.b, align 8, !tbaa !24
  %i.fi = sext i32 %i.aw to i64
  %i.fj = getelementptr [8 x i8], ptr %i.h, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 8      ; 2 uses
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fk, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  store i32 %i.fg, ptr %i.a, align 4, !tbaa !22
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.fk, ptr noundef nonnull @c__1) #4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fl = icmp samesign ugt i32 %.0491546, 2
  br i1 %i.fl, label %.lr.ph.preheader, label %.loopexit541

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.fm = add nsw i32 %.0491546, -1               ; 3 uses
  %i.fn = add nsw i32 %i.fm, %i.aw
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24 ; 3 uses
  %i.fr = mul nsw i32 %i.fm, %i.f                 ; 2 uses
  %i.fs = add nsw i32 %i.fr, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !24
  %i.fw = fdiv double %i.fv, %i.fq                ; 2 uses
  %i.fx = load double, ptr %i.az, align 8, !tbaa !24
  %i.fy = fdiv double %i.fx, %i.fq                ; 2 uses
  %i.fz = call double @llvm.fmuladd.f64(double %i.fy, double %i.fw, double -1.000000e+00)
  %i.ga = fdiv double 1.000000e+00, %i.fz
  %i.gb = fdiv double %i.ga, %i.fq                ; 2 uses
  %i.gc = add nsw i32 %.0491546, -2
  %i.gd = zext i32 %i.gc to i64                   ; 5 uses
  %i.ge = sext i32 %i.aw to i64                   ; 4 uses
  %i.gf = sext i32 %i.fr to i64                   ; 4 uses
  %invariant.gep591 = getelementptr [8 x i8], ptr %i.h, i64 %i.gf
  %invariant.gep593 = getelementptr [8 x i8], ptr %i.h, i64 %i.ge
  %invariant.gep587 = getelementptr [8 x i8], ptr %i.h, i64 %i.ge ; 2 uses
  %invariant.gep589 = getelementptr [8 x i8], ptr %i.h, i64 %i.gf ; 2 uses
  %i.gg = mul i64 %i.ak, %i.gd
  %i.gh = mul i64 %i.an, %i.gd
  %i.gi = add nsw i64 %i.g, %i.ge
  %i.gj = shl nsw i64 %i.gi, 3
  %scevgep608 = getelementptr i8, ptr %2, i64 %i.gj
  %i.gk = shl nsw i64 %i.ge, 3
  %i.gl = shl nuw nsw i64 %i.gd, 3                ; 2 uses
  %i.gm = add nsw i64 %i.g, %i.gf
  %i.gn = shl nsw i64 %i.gm, 3
  %scevgep611 = getelementptr i8, ptr %2, i64 %i.gn
  %i.go = shl nsw i64 %i.gf, 3
  %i.gp = add nuw nsw i64 %i.gd, 1
  %i.gq = getelementptr i8, ptr %i.aq, i64 %i.go
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gl
  %i.gs = getelementptr i8, ptr %i.as, i64 %i.gk
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gl
  %i.gu = getelementptr i8, ptr %i.au, i64 %i.gh
  %i.gv = getelementptr i8, ptr %i.av, i64 %i.gg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit669
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit669 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.gd, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit669 ] ; 11 uses
  %6 = sub i64 %i.gp, %indvar
  %gep592 = getelementptr [8 x i8], ptr %invariant.gep591, i64 %indvars.iv ; 2 uses
  %i.gw = load double, ptr %gep592, align 8, !tbaa !24 ; 2 uses
  %gep594 = getelementptr [8 x i8], ptr %invariant.gep593, i64 %indvars.iv ; 2 uses
  %i.gx = load double, ptr %gep594, align 8, !tbaa !24 ; 2 uses
  %i.gy = fneg double %i.gx
  %i.gz = call double @llvm.fmuladd.f64(double %i.fy, double %i.gw, double %i.gy)
  %i.ha = fmul double %i.gb, %i.gz                ; 3 uses
  %i.hb = fneg double %i.gw
  %i.hc = call double @llvm.fmuladd.f64(double %i.fw, double %i.gx, double %i.hb)
  %i.hd = fmul double %i.gb, %i.hc                ; 3 uses
  %i.he = mul nsw i64 %indvars.iv, %i.ai
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.he ; 2 uses
  %i.hf = icmp ne i64 %indvars.iv, 0
  %.neg = sext i1 %i.hf to i64
  %i.hg = add i64 %6, %.neg                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.hg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hh = mul nsw i64 %indvar, -8                 ; 2 uses
  %scevgep613 = getelementptr i8, ptr %i.gr, i64 %i.hh
  %.not670 = icmp eq i64 %indvars.iv, 0
  %i.hi = select i1 %.not670, i64 0, i64 8        ; 3 uses
  %scevgep612 = getelementptr i8, ptr %scevgep611, i64 %i.hi
  %scevgep610 = getelementptr i8, ptr %i.gt, i64 %i.hh
  %scevgep609 = getelementptr i8, ptr %scevgep608, i64 %i.hi
  %i.hj = mul i64 %i.ao, %indvar
  %scevgep607 = getelementptr i8, ptr %i.gu, i64 %i.hj ; 2 uses
  %i.hk = mul i64 %i.al, %indvar
  %scevgep = getelementptr i8, ptr %i.gv, i64 %i.hk
  %scevgep606 = getelementptr i8, ptr %scevgep, i64 %i.hi ; 2 uses
  %bound0 = icmp ult ptr %scevgep606, %scevgep610
  %bound1 = icmp ult ptr %scevgep609, %scevgep607
  %found.conflict = and i1 %bound0, %bound1
  %bound0614 = icmp ult ptr %scevgep606, %scevgep613
  %bound1615 = icmp ult ptr %scevgep612, %scevgep607
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx = or i1 %found.conflict, %found.conflict616
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hg, -8                      ; 3 uses
  %i.hl = sub i64 %indvars.iv, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ha, i64 0 ; 2 uses
  %broadcast.splatinsert617 = insertelement <4 x double> poison, double %i.hd, i64 0 ; 2 uses
  %i.hm = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.hn = shufflevector <4 x double> %broadcast.splatinsert617, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ho = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.hp = shufflevector <4 x double> %broadcast.splatinsert617, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hq = sub i64 %indvars.iv, %index             ; 3 uses
  %i.hr = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 -24    ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hr, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.hs, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load619 = load <4 x double>, ptr %i.ht, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %i.hu = getelementptr [8 x i8], ptr %invariant.gep587, i64 %i.hq ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -24
  %i.hw = getelementptr i8, ptr %i.hu, i64 -56
  %wide.load621 = load <4 x double>, ptr %i.hv, align 8, !tbaa !24, !alias.scope !27
  %wide.load622 = load <4 x double>, ptr %i.hw, align 8, !tbaa !24, !alias.scope !27
  %i.hx = fneg <4 x double> %wide.load621
  %i.hy = fneg <4 x double> %wide.load622
  %i.hz = getelementptr [8 x i8], ptr %invariant.gep589, i64 %i.hq ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -24
  %i.ib = getelementptr i8, ptr %i.hz, i64 -56
  %wide.load625 = load <4 x double>, ptr %i.ia, align 8, !tbaa !24, !alias.scope !28
  %wide.load626 = load <4 x double>, ptr %i.ib, align 8, !tbaa !24, !alias.scope !28
  %i.ic = fneg <4 x double> %wide.load625
  %i.id = fneg <4 x double> %wide.load626
  %i.ie = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hx, <4 x double> %i.hn, <4 x double> %wide.load)
  %reverse629 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ic, <4 x double> %i.hm, <4 x double> %i.ie)
  %i.if = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %i.hp, <4 x double> %wide.load619)
  %reverse630 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.id, <4 x double> %i.ho, <4 x double> %i.if)
  store <4 x double> %reverse629, ptr %i.hs, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  store <4 x double> %reverse630, ptr %i.ht, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hg, %n.vec
  br i1 %cmp.n, label %.loopexit669, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv560.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph ], [ %i.hl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %scalar.ph ], [ %indvars.iv560.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv560 ; 2 uses
  %i.ih = load double, ptr %gep, align 8, !tbaa !24
  %gep588 = getelementptr [8 x i8], ptr %invariant.gep587, i64 %indvars.iv560
  %i.ii = load double, ptr %gep588, align 8, !tbaa !24
  %i.ij = fneg double %i.ii
  %i.ik = call double @llvm.fmuladd.f64(double %i.ij, double %i.hd, double %i.ih)
  %gep590 = getelementptr [8 x i8], ptr %invariant.gep589, i64 %indvars.iv560
  %i.il = load double, ptr %gep590, align 8, !tbaa !24
  %i.im = fneg double %i.il
  %i.in = call double @llvm.fmuladd.f64(double %i.im, double %i.ha, double %i.ik)
  store double %i.in, ptr %gep, align 8, !tbaa !24
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, -1
  %i.io = icmp samesign ugt i64 %indvars.iv560, 1
  br i1 %i.io, label %scalar.ph, label %.loopexit669, !llvm.loop !13

.loopexit669:                                     ; preds = %scalar.ph, %middle.block
  store double %i.hd, ptr %gep594, align 8, !tbaa !24
  store double %i.ha, ptr %gep592, align 8, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ip = icmp sgt i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ip, label %.lr.ph, label %.loopexit541, !llvm.loop !14

bb.y:                                             ; preds = %bb.w, %bb.m, %bb.l
  %.1486.ph = phi i32 [ %.0491546, %bb.l ], [ %.0491546, %bb.m ], [ %.0485, %bb.w ]
  %i.iq = zext nneg i32 %.0491546 to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.iq
  store i32 %.1486.ph, ptr %i.ir, align 4, !tbaa !22
  br label %bb.z

.loopexit541:                                     ; preds = %.loopexit669, %bb.x
  %i.is = sub nsw i32 0, %.0485                   ; 2 uses
  %i.it = zext nneg i32 %.0491546 to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.it ; 2 uses
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !22
  %i.iv = getelementptr i8, ptr %i.iu, i64 -4
  store i32 %i.is, ptr %i.iv, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %.loopexit541, %bb.y
  %.1488.neg529 = phi i32 [ -2, %.loopexit541 ], [ -1, %bb.y ]
  %i.iw = add nsw i32 %.1488.neg529, %.0491546    ; 2 uses
  %i.ix = icmp slt i32 %i.iw, 1
  br i1 %i.ix, label %.loopexit540, label %bb.h

bb.aa:                                            ; preds = %.lr.ph558, %bb.aw
  %i.iy = phi i32 [ %i.l, %.lr.ph558 ], [ %i.rl, %bb.aw ] ; 2 uses
  %.1492555 = phi i32 [ 1, %.lr.ph558 ], [ %i.rk, %bb.aw ] ; 27 uses
  %.2499554 = phi i32 [ undef, %.lr.ph558 ], [ %.3500, %bb.aw ]
  %i.iz = mul nsw i32 %.1492555, %i.f             ; 9 uses
  %i.ja = add nsw i32 %i.iz, %.1492555
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jb ; 3 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !24 ; 4 uses
  store double %i.jd, ptr %i.b, align 8, !tbaa !24
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf ; 2 uses
  store double %i.jg, ptr %i.e, align 8, !tbaa !24
  %i.jh = icmp slt i32 %.1492555, %i.iy
  br i1 %i.jh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ji = sub nuw nsw i32 %i.iy, %.1492555
  store i32 %i.ji, ptr %i.a, align 4, !tbaa !22
  %i.jj = add nuw nsw i32 %.1492555, 1
  %i.jk = add nsw i32 %i.jj, %i.iz
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jl
  %i.jn = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.jm, ptr noundef nonnull @c__1) #4
  %i.jo = add nsw i32 %i.jn, %.1492555            ; 2 uses
  %i.jp = add nsw i32 %i.jo, %i.iz
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24 ; 4 uses
  store double %i.js, ptr %i.b, align 8, !tbaa !24
  %i.jt = fcmp oge double %i.js, 0.000000e+00
  %i.ju = fneg double %i.js
  %i.jv = select i1 %i.jt, double %i.js, double %i.ju
  %.pre570 = load double, ptr %i.e, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.jw = phi double [ %.pre570, %bb.ab ], [ %i.jg, %bb.aa ] ; 2 uses
  %.3500 = phi i32 [ %i.jo, %bb.ab ], [ %.2499554, %bb.aa ] ; 11 uses
  %.1484 = phi double [ %i.jv, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %i.jx = fcmp oge double %i.jw, %.1484
  %i.jy = select i1 %i.jx, double %i.jw, double %.1484
  %i.jz = fcmp oeq double %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ka = call i32 @disnan_(ptr noundef nonnull %i.e) #4
  %.not512 = icmp eq i32 %i.ka, 0
  br i1 %.not512, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.kb = load i32, ptr %5, align 4, !tbaa !22
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.af, label %bb.av

bb.af:                                            ; preds = %bb.ae
  store i32 %.1492555, ptr %5, align 4, !tbaa !22
  br label %bb.av

bb.ag:                                            ; preds = %bb.ad
  %i.kd = load double, ptr %i.e, align 8, !tbaa !24
  %i.ke = fmul double %.1484, f0x3FE47E0F66AFED07 ; 2 uses
  %i.kf = fcmp ult double %i.kd, %i.ke
  br i1 %i.kf, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.kg = sub nsw i32 %.3500, %.1492555
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !22
  %i.kh = add nsw i32 %.1492555, -1
  %i.ki = add nsw i32 %.3500, %i.iz
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kj
  %i.kl = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kk, ptr noundef nonnull %3) #4
end_hunk_0
begin_hunk_1_@dsytf2_:bb.a
  %i.ky = add nsw i32 %.3500, 1
  %i.kz = mul nsw i32 %.3500, %i.f                ; 2 uses
  %i.la = add nsw i32 %i.ky, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lb
  %i.ld = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.lc, ptr noundef nonnull @c__1) #4
  %i.le = add i32 %i.kz, %.3500
  %i.lf = add i32 %i.le, %i.ld
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !24 ; 4 uses
  store double %i.li, ptr %i.b, align 8, !tbaa !24
  %i.lj = fcmp oge double %i.li, 0.000000e+00
  %i.lk = fneg double %i.li
  %i.ll = select i1 %i.lj, double %i.li, double %i.lk ; 2 uses
  %i.lm = fcmp oge double %i.ku, %i.ll
  %i.ln = select i1 %i.lm, double %i.ku, double %i.ll
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi double [ %i.ln, %bb.ai ], [ %i.ku, %bb.ah ] ; 2 uses
  %i.lo = load double, ptr %i.e, align 8, !tbaa !24
  %i.lp = fdiv double %.1484, %.1
  %i.lq = fmul double %i.ke, %i.lp
  %i.lr = fcmp ult double %i.lo, %i.lq
  br i1 %i.lr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ls = mul i32 %.3500, %i.t
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !24 ; 2 uses
  store double %i.lv, ptr %i.b, align 8, !tbaa !24
  %i.lw = call double @llvm.fabs.f64(double %i.lv)
  %i.lx = fmul double %.1, f0x3FE47E0F66AFED07
  %i.ly = fcmp ult double %i.lw, %i.lx            ; 3 uses
  %not.539 = xor i1 %i.ly, true
  %.523 = select i1 %i.ly, i32 2, i32 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.lz = phi i1 [ false, %bb.aj ], [ false, %bb.ag ], [ %i.ly, %bb.ak ]
  %i.ma = phi i1 [ true, %bb.aj ], [ true, %bb.ag ], [ %not.539, %bb.ak ]
  %.2489 = phi i32 [ 1, %bb.aj ], [ 1, %bb.ag ], [ %.523, %bb.ak ]
  %.2 = phi i32 [ %.1492555, %bb.aj ], [ %.1492555, %bb.ag ], [ %.3500, %bb.ak ] ; 12 uses
  %i.mb = add nuw nsw i32 %.2489, %.1492555       ; 4 uses
  %i.mc = add nsw i32 %i.mb, -1                   ; 4 uses
  %.not513 = icmp eq i32 %.2, %i.mc
  br i1 %.not513, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.md = load i32, ptr %1, align 4, !tbaa !22    ; 2 uses
  %i.me = icmp slt i32 %.2, %i.md
  br i1 %i.me, label %bb.an, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %.pre571 = mul nsw i32 %i.mc, %i.f
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mf = sub nsw i32 %i.md, %.2
  store i32 %i.mf, ptr %i.a, align 4, !tbaa !22
  %i.mg = add nsw i32 %.2, 1                      ; 2 uses
  %i.mh = mul nsw i32 %i.mc, %i.f                 ; 2 uses
  %i.mi = add nsw i32 %i.mh, %i.mg
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mj
  %i.ml = mul nsw i32 %.2, %i.f
  %i.mm = add nsw i32 %i.mg, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mn
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.mk, ptr noundef nonnull @c__1, ptr noundef %i.mo, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.an
  %.pre-phi = phi i32 [ %.pre571, %._crit_edge ], [ %i.mh, %bb.an ] ; 2 uses
  %i.mp = sub i32 %.2, %i.mb
  store i32 %i.mp, ptr %i.a, align 4, !tbaa !22
  %i.mq = add nsw i32 %.pre-phi, %i.mb
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mr
  %i.mt = mul nsw i32 %i.mb, %i.f
  %i.mu = add nsw i32 %i.mt, %.2
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mv
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.ms, ptr noundef nonnull @c__1, ptr noundef %i.mw, ptr noundef nonnull %3) #4
  %i.mx = add nsw i32 %.pre-phi, %i.mc
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.my ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !24
  %i.nb = mul i32 %.2, %i.t
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !24
  store double %i.ne, ptr %i.mz, align 8, !tbaa !24
  store double %i.na, ptr %i.nd, align 8, !tbaa !24
  br i1 %i.lz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.nf = add nuw nsw i32 %.1492555, 1
  %i.ng = add nsw i32 %i.nf, %i.iz
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nh ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !24
  %i.nk = add nsw i32 %.2, %i.iz
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nl ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !24
  store double %i.nn, ptr %i.ni, align 8, !tbaa !24
  store double %i.nj, ptr %i.nm, align 8, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.al
  %i.no = load i32, ptr %1, align 4, !tbaa !22    ; 7 uses
  br i1 %i.ma, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.np = icmp slt i32 %.1492555, %i.no
  br i1 %i.np, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.nq = load double, ptr %i.jc, align 8, !tbaa !24
  %i.nr = fdiv double 1.000000e+00, %i.nq         ; 2 uses
  store double %i.nr, ptr %i.d, align 8, !tbaa !24
  %i.ns = sub nuw nsw i32 %i.no, %.1492555
  store i32 %i.ns, ptr %i.a, align 4, !tbaa !22
  %i.nt = fneg double %i.nr
  store double %i.nt, ptr %i.b, align 8, !tbaa !24
  %i.nu = add nuw nsw i32 %.1492555, 1            ; 2 uses
  %i.nv = add nsw i32 %i.nu, %i.iz
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nw ; 2 uses
  %i.ny = mul i32 %i.nu, %i.t
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nz
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.nx, ptr noundef nonnull @c__1, ptr noundef %i.oa, ptr noundef nonnull %3) #4
  %i.ob = load i32, ptr %1, align 4, !tbaa !22
  %i.oc = sub nsw i32 %i.ob, %.1492555
  store i32 %i.oc, ptr %i.a, align 4, !tbaa !22
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %i.nx, ptr noundef nonnull @c__1) #4
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.od = add nsw i32 %i.no, -1
  %i.oe = icmp slt i32 %.1492555, %i.od
  br i1 %i.oe, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.of = add nuw nsw i32 %.1492555, 1            ; 3 uses
  %i.og = add nsw i32 %i.of, %i.iz
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !24 ; 3 uses
  %i.ok = mul nsw i32 %i.of, %i.f                 ; 2 uses
  %i.ol = add nsw i32 %i.ok, %i.of
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !24
  %i.op = fdiv double %i.oo, %i.oj                ; 3 uses
  store double %i.op, ptr %i.d, align 8, !tbaa !24
  %i.oq = load double, ptr %i.jc, align 8, !tbaa !24
  %i.or = fdiv double %i.oq, %i.oj                ; 2 uses
  %i.os = call double @llvm.fmuladd.f64(double %i.op, double %i.or, double -1.000000e+00)
  %i.ot = fdiv double 1.000000e+00, %i.os
  %i.ou = fdiv double %i.ot, %i.oj                ; 2 uses
  store i32 %i.no, ptr %i.a, align 4, !tbaa !22
  %i.ov = add nuw nsw i32 %.1492555, 2            ; 2 uses
  %.not514551 = icmp sgt i32 %i.ov, %i.no
  br i1 %.not514551, label %.loopexit, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %bb.au
  %i.ow = zext nneg i32 %i.ov to i64              ; 2 uses
  %i.ox = sext i32 %i.iz to i64                   ; 3 uses
  %i.oy = sext i32 %i.ok to i64                   ; 3 uses
  %i.oz = sext i32 %i.no to i64                   ; 3 uses
  %i.pa = add i32 %i.no, 1
  %invariant.gep601 = getelementptr [8 x i8], ptr %i.h, i64 %i.ox
  %invariant.gep603 = getelementptr [8 x i8], ptr %i.h, i64 %i.oy
  %invariant.gep597 = getelementptr [8 x i8], ptr %i.h, i64 %i.ox ; 2 uses
  %invariant.gep599 = getelementptr [8 x i8], ptr %i.h, i64 %i.oy ; 2 uses
  %i.pb = mul i64 %i.w, %i.ow                     ; 2 uses
  %i.pc = zext nneg i32 %.1492555 to i64          ; 2 uses
  %i.pd = shl nuw nsw i64 %i.pc, 3                ; 4 uses
  %i.pe = shl nsw i64 %i.ox, 3
  %i.pf = shl nsw i64 %i.oy, 3
  %i.pg = xor i32 %.1492555, -1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr i8, ptr %i.aa, i64 %i.pf
  %i.pj = getelementptr i8, ptr %i.pi, i64 %i.pd
  %i.pk = getelementptr i8, ptr %i.ac, i64 %i.pe
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.pd
  %i.pm = getelementptr i8, ptr %i.ae, i64 %i.pb
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.pd
  %i.po = getelementptr i8, ptr %i.ag, i64 %i.pb
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.pd
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %.loopexit668
  %indvar632 = phi i64 [ 0, %.lr.ph553.preheader ], [ %indvar.next633, %.loopexit668 ] ; 5 uses
  %indvars.iv564 = phi i64 [ %i.ow, %.lr.ph553.preheader ], [ %indvars.iv.next565, %.loopexit668 ] ; 10 uses
  %7 = sub i64 %i.ph, %indvar632
  %gep602 = getelementptr [8 x i8], ptr %invariant.gep601, i64 %indvars.iv564 ; 3 uses
  %i.pq = load double, ptr %gep602, align 8, !tbaa !24 ; 2 uses
  %gep604 = getelementptr [8 x i8], ptr %invariant.gep603, i64 %indvars.iv564 ; 3 uses
  %i.pr = load double, ptr %gep604, align 8, !tbaa !24 ; 2 uses
  %i.ps = fneg double %i.pr
  %i.pt = call double @llvm.fmuladd.f64(double %i.op, double %i.pq, double %i.ps)
  %i.pu = fmul double %i.ou, %i.pt                ; 3 uses
  %i.pv = fneg double %i.pq
  %i.pw = call double @llvm.fmuladd.f64(double %i.or, double %i.pr, double %i.pv)
  %i.px = fmul double %i.ou, %i.pw                ; 3 uses
  %i.py = mul nsw i64 %indvars.iv564, %i.u
  %invariant.gep595 = getelementptr [8 x i8], ptr %i.h, i64 %i.py ; 2 uses
  %i.pz = call i64 @llvm.smax.i64(i64 %indvars.iv564, i64 %i.oz)
  %i.qa = add i64 %i.pz, %7                       ; 3 uses
  %min.iters.check649 = icmp ult i64 %i.qa, 8
  br i1 %min.iters.check649, label %scalar.ph648.preheader, label %vector.memcheck631

vector.memcheck631:                               ; preds = %.lr.ph553
  %i.qb = shl nuw nsw i64 %indvar632, 3           ; 2 uses
  %scevgep639 = getelementptr i8, ptr %i.pj, i64 %i.qb
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv564, i64 %i.oz)
  %i.qc = add i64 %indvar632, %i.pc
  %reass.sub = sub i64 %smax, %i.qc
  %i.qd = shl i64 %reass.sub, 3
  %i.qe = add i64 %i.qd, -16                      ; 3 uses
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %i.qe
  %scevgep637 = getelementptr i8, ptr %i.pl, i64 %i.qb
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.qe
  %i.qf = mul i64 %i.y, %indvar632                ; 2 uses
  %scevgep635 = getelementptr i8, ptr %i.pn, i64 %i.qf
  %scevgep636 = getelementptr i8, ptr %scevgep635, i64 %i.qe ; 2 uses
  %scevgep634 = getelementptr i8, ptr %i.pp, i64 %i.qf ; 2 uses
  %bound0641 = icmp ult ptr %scevgep634, %scevgep638
  %bound1642 = icmp ult ptr %gep602, %scevgep636
  %found.conflict643 = and i1 %bound0641, %bound1642
  %bound0644 = icmp ult ptr %scevgep634, %scevgep640
  %bound1645 = icmp ult ptr %gep604, %scevgep636
  %found.conflict646 = and i1 %bound0644, %bound1645
  %conflict.rdx647 = or i1 %found.conflict643, %found.conflict646
  br i1 %conflict.rdx647, label %scalar.ph648.preheader, label %vector.ph650

vector.ph650:                                     ; preds = %vector.memcheck631
  %n.vec651 = and i64 %i.qa, -8                   ; 3 uses
  %i.qg = add i64 %indvars.iv564, %n.vec651
  %broadcast.splatinsert652 = insertelement <4 x double> poison, double %i.pu, i64 0
  %broadcast.splat653 = shufflevector <4 x double> %broadcast.splatinsert652, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert654 = insertelement <4 x double> poison, double %i.px, i64 0
  %broadcast.splat655 = shufflevector <4 x double> %broadcast.splatinsert654, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph650
  %index657 = phi i64 [ 0, %vector.ph650 ], [ %index.next664, %vector.body656 ] ; 2 uses
  %i.qh = add nuw i64 %indvars.iv564, %index657   ; 3 uses
  %i.qi = getelementptr [8 x i8], ptr %invariant.gep595, i64 %i.qh ; 3 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 32     ; 2 uses
  %wide.load658 = load <4 x double>, ptr %i.qi, align 8, !tbaa !24, !alias.scope !32, !noalias !33
  %wide.load659 = load <4 x double>, ptr %i.qj, align 8, !tbaa !24, !alias.scope !32, !noalias !33
  %i.qk = getelementptr [8 x i8], ptr %invariant.gep597, i64 %i.qh ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 32
  %wide.load660 = load <4 x double>, ptr %i.qk, align 8, !tbaa !24, !alias.scope !34
  %wide.load661 = load <4 x double>, ptr %i.ql, align 8, !tbaa !24, !alias.scope !34
  %i.qm = fneg <4 x double> %wide.load660
  %i.qn = fneg <4 x double> %wide.load661
  %i.qo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qm, <4 x double> %broadcast.splat653, <4 x double> %wide.load658)
  %i.qp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qn, <4 x double> %broadcast.splat653, <4 x double> %wide.load659)
  %i.qq = getelementptr [8 x i8], ptr %invariant.gep599, i64 %i.qh ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qq, i64 32
  %wide.load662 = load <4 x double>, ptr %i.qq, align 8, !tbaa !24, !alias.scope !35
  %wide.load663 = load <4 x double>, ptr %i.qr, align 8, !tbaa !24, !alias.scope !35
  %i.qs = fneg <4 x double> %wide.load662
  %i.qt = fneg <4 x double> %wide.load663
  %i.qu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qs, <4 x double> %broadcast.splat655, <4 x double> %i.qo)
  %i.qv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qt, <4 x double> %broadcast.splat655, <4 x double> %i.qp)
  store <4 x double> %i.qu, ptr %i.qi, align 8, !tbaa !24, !alias.scope !32, !noalias !33
  store <4 x double> %i.qv, ptr %i.qj, align 8, !tbaa !24, !alias.scope !32, !noalias !33
  %index.next664 = add nuw i64 %index657, 8       ; 2 uses
  %i.qw = icmp eq i64 %index.next664, %n.vec651
  br i1 %i.qw, label %middle.block665, label %vector.body656, !llvm.loop !19

middle.block665:                                  ; preds = %vector.body656
  %cmp.n666 = icmp eq i64 %i.qa, %n.vec651
  br i1 %cmp.n666, label %.loopexit668, label %scalar.ph648.preheader

scalar.ph648.preheader:                           ; preds = %vector.memcheck631, %.lr.ph553, %middle.block665
  %indvars.iv566.ph = phi i64 [ %indvars.iv564, %vector.memcheck631 ], [ %indvars.iv564, %.lr.ph553 ], [ %i.qg, %middle.block665 ]
  br label %scalar.ph648

scalar.ph648:                                     ; preds = %scalar.ph648.preheader, %scalar.ph648
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %scalar.ph648 ], [ %indvars.iv566.ph, %scalar.ph648.preheader ] ; 5 uses
  %gep596 = getelementptr [8 x i8], ptr %invariant.gep595, i64 %indvars.iv566 ; 2 uses
  %i.qx = load double, ptr %gep596, align 8, !tbaa !24
  %gep598 = getelementptr [8 x i8], ptr %invariant.gep597, i64 %indvars.iv566
  %i.qy = load double, ptr %gep598, align 8, !tbaa !24
  %i.qz = fneg double %i.qy
  %i.ra = call double @llvm.fmuladd.f64(double %i.qz, double %i.pu, double %i.qx)
  %gep600 = getelementptr [8 x i8], ptr %invariant.gep599, i64 %indvars.iv566
  %i.rb = load double, ptr %gep600, align 8, !tbaa !24
  %i.rc = fneg double %i.rb
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.px, double %i.ra)
  store double %i.rd, ptr %gep596, align 8, !tbaa !24
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1
  %.not515.not = icmp slt i64 %indvars.iv566, %i.oz
  br i1 %.not515.not, label %scalar.ph648, label %.loopexit668, !llvm.loop !20

.loopexit668:                                     ; preds = %scalar.ph648, %middle.block665
  store double %i.pu, ptr %gep602, align 8, !tbaa !24
  store double %i.px, ptr %gep604, align 8, !tbaa !24
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next565 to i32
  %exitcond.not = icmp eq i32 %i.pa, %lftr.wideiv
  %indvar.next633 = add i64 %indvar632, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph553, !llvm.loop !21

bb.av:                                            ; preds = %bb.as, %bb.ar, %bb.af, %bb.ae
  %.3.ph = phi i32 [ %.1492555, %bb.ae ], [ %.1492555, %bb.af ], [ %.2, %bb.ar ], [ %.2, %bb.as ]
  %i.re = zext nneg i32 %.1492555 to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.re
  store i32 %.3.ph, ptr %i.rf, align 4, !tbaa !22
  br label %bb.aw

.loopexit:                                        ; preds = %.loopexit668, %bb.au, %bb.at
  %i.rg = sub nsw i32 0, %.2                      ; 2 uses
  %i.rh = zext nneg i32 %.1492555 to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.rh ; 2 uses
  store i32 %i.rg, ptr %i.ri, align 4, !tbaa !22
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store i32 %i.rg, ptr %i.rj, align 4, !tbaa !22
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.av
  %.3490536 = phi i32 [ 2, %.loopexit ], [ 1, %bb.av ]
  %i.rk = add nuw nsw i32 %.3490536, %.1492555    ; 2 uses
  %i.rl = load i32, ptr %1, align 4, !tbaa !22    ; 2 uses
  %i.rm = icmp sgt i32 %i.rk, %i.rl
  br i1 %i.rm, label %.loopexit540, label %bb.aa

.loopexit540:                                     ; preds = %bb.z, %bb.aw, %bb.g, %.preheader, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dsyr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !29, !30, !31}
!13 = distinct !{!13, !29, !30}
!14 = distinct !{!14, !29}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !29, !30, !31}
!20 = distinct !{!20, !29, !30}
!21 = distinct !{!21, !29}
!22 = !{!5, !5, i64 0}
end_hunk_1
