Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytf2?download=true
begin_hunk_0_@dsytf2_:bb.a
bb.n:                                             ; preds = %bb.k
  %i.bx = load double, ptr %i.e, align 8, !tbaa !9
  %i.by = fmul double %.0483, f0x3FE47E0F66AFED07 ; 2 uses
  %i.bz = fcmp ult double %i.bx, %i.by
  br i1 %i.bz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ca = sub nsw i32 %.0491546, %.1498
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !8
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
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9 ; 4 uses
  store double %i.cm, ptr %i.b, align 8, !tbaa !9
  %i.cn = fcmp oge double %i.cm, 0.000000e+00
  %i.co = fneg double %i.cm
  %i.cp = select i1 %i.cn, double %i.cm, double %i.co ; 3 uses
  %i.cq = icmp sgt i32 %.1498, 1
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = add nsw i32 %.1498, -1
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !8
  %i.cs = mul nsw i32 %.1498, %i.f                ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.h, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.cv, ptr noundef nonnull @c__1) #4
  %i.cx = add nsw i32 %i.cw, %i.cs
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !9 ; 4 uses
  store double %i.da, ptr %i.b, align 8, !tbaa !9
  %i.db = fcmp oge double %i.da, 0.000000e+00
  %i.dc = fneg double %i.da
  %i.dd = select i1 %i.db, double %i.da, double %i.dc ; 2 uses
  %i.de = fcmp oge double %i.cp, %i.dd
  %i.df = select i1 %i.de, double %i.cp, double %i.dd
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.df, %bb.p ], [ %i.cp, %bb.o ] ; 2 uses
  %i.dg = load double, ptr %i.e, align 8, !tbaa !9
  %i.dh = fdiv double %.0483, %.0
  %i.di = fmul double %i.by, %i.dh
  %i.dj = fcmp ult double %i.dg, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = mul i32 %.1498, %i.ah
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !9 ; 2 uses
  store double %i.dn, ptr %i.b, align 8, !tbaa !9
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
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !8
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
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !8
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
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9
  %i.er = add nsw i32 %i.ea, %.0485
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  store double %i.eu, ptr %i.ep, align 8, !tbaa !9
  store double %i.eq, ptr %i.et, align 8, !tbaa !9
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = add nsw i32 %.0491546, -1
  %i.ew = add nsw i32 %i.ev, %i.aw
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !9
  %i.fa = add nsw i32 %.0485, %i.aw
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fb ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !9
  store double %i.fd, ptr %i.ey, align 8, !tbaa !9
  store double %i.ez, ptr %i.fc, align 8, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = load double, ptr %i.az, align 8, !tbaa !9
  %i.ff = fdiv double 1.000000e+00, %i.fe         ; 2 uses
  store double %i.ff, ptr %i.c, align 8, !tbaa !9
  %i.fg = add nsw i32 %.0491546, -1               ; 2 uses
  store i32 %i.fg, ptr %i.a, align 4, !tbaa !8
  %i.fh = fneg double %i.ff
  store double %i.fh, ptr %i.b, align 8, !tbaa !9
  %i.fi = sext i32 %i.aw to i64
  %i.fj = getelementptr [8 x i8], ptr %i.h, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 8      ; 2 uses
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.fk, ptr noundef nonnull @c__1, ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  store i32 %i.fg, ptr %i.a, align 4, !tbaa !8
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
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !9 ; 3 uses
  %i.fr = mul nsw i32 %i.fm, %i.f                 ; 2 uses
  %i.fs = add nsw i32 %i.fr, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !9
  %i.fw = fdiv double %i.fv, %i.fq                ; 2 uses
  %i.fx = load double, ptr %i.az, align 8, !tbaa !9
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

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit671
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit671 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.gd, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit671 ] ; 11 uses
  %i.gw = sub i64 %i.gp, %indvar
  %gep592 = getelementptr [8 x i8], ptr %invariant.gep591, i64 %indvars.iv ; 2 uses
  %i.gx = load double, ptr %gep592, align 8, !tbaa !9 ; 2 uses
  %gep594 = getelementptr [8 x i8], ptr %invariant.gep593, i64 %indvars.iv ; 2 uses
  %i.gy = load double, ptr %gep594, align 8, !tbaa !9 ; 2 uses
  %i.gz = fneg double %i.gy
  %i.ha = call double @llvm.fmuladd.f64(double %i.fy, double %i.gx, double %i.gz)
  %i.hb = fmul double %i.gb, %i.ha                ; 3 uses
  %i.hc = fneg double %i.gx
  %i.hd = call double @llvm.fmuladd.f64(double %i.fw, double %i.gy, double %i.hc)
  %i.he = fmul double %i.gb, %i.hd                ; 3 uses
  %i.hf = mul nsw i64 %indvars.iv, %i.ai
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.hf ; 2 uses
  %6 = icmp ne i64 %indvars.iv, 0
  %.neg = sext i1 %6 to i64
  %7 = add i64 %i.gw, %.neg                       ; 3 uses
  %min.iters.check = icmp ult i64 %7, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hg = mul nsw i64 %indvar, -8                 ; 2 uses
  %scevgep613 = getelementptr i8, ptr %i.gr, i64 %i.hg
  %.not672 = icmp eq i64 %indvars.iv, 0
  %i.hh = select i1 %.not672, i64 0, i64 8        ; 3 uses
  %scevgep612 = getelementptr i8, ptr %scevgep611, i64 %i.hh
  %scevgep610 = getelementptr i8, ptr %i.gt, i64 %i.hg
  %scevgep609 = getelementptr i8, ptr %scevgep608, i64 %i.hh
  %i.hi = mul i64 %i.ao, %indvar
  %scevgep607 = getelementptr i8, ptr %i.gu, i64 %i.hi ; 2 uses
  %i.hj = mul i64 %i.al, %indvar
  %scevgep = getelementptr i8, ptr %i.gv, i64 %i.hj
  %scevgep606 = getelementptr i8, ptr %scevgep, i64 %i.hh ; 2 uses
  %bound0 = icmp ult ptr %scevgep606, %scevgep610
  %bound1 = icmp ult ptr %scevgep609, %scevgep607
  %found.conflict = and i1 %bound0, %bound1
  %bound0614 = icmp ult ptr %scevgep606, %scevgep613
  %bound1615 = icmp ult ptr %scevgep612, %scevgep607
  %found.conflict616 = and i1 %bound0614, %bound1615
  %conflict.rdx = or i1 %found.conflict, %found.conflict616
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -8                         ; 3 uses
  %i.hk = sub i64 %indvars.iv, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hb, i64 0 ; 2 uses
  %broadcast.splatinsert618 = insertelement <4 x double> poison, double %i.he, i64 0 ; 2 uses
  %i.hl = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.hm = shufflevector <4 x double> %broadcast.splatinsert618, <4 x double> poison, <4 x i32> zeroinitializer
  %i.hn = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ho = shufflevector <4 x double> %broadcast.splatinsert618, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = sub i64 %indvars.iv, %index             ; 3 uses
  %i.hq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hp ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -24    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hq, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.hr, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %wide.load620 = load <4 x double>, ptr %i.hs, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %i.ht = getelementptr [8 x i8], ptr %invariant.gep587, i64 %i.hp ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 -24
  %i.hv = getelementptr i8, ptr %i.ht, i64 -56
  %wide.load622.a = load <4 x double>, ptr %i.hu, align 8, !tbaa !9, !alias.scope !17
  %wide.load623 = load <4 x double>, ptr %i.hv, align 8, !tbaa !9, !alias.scope !17
  %i.hw = fneg <4 x double> %wide.load622.a
  %i.hx = fneg <4 x double> %wide.load623
  %i.hy = getelementptr [8 x i8], ptr %invariant.gep589, i64 %i.hp ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -24
  %i.ia = getelementptr i8, ptr %i.hy, i64 -56
  %wide.load626.a = load <4 x double>, ptr %i.hz, align 8, !tbaa !9, !alias.scope !18
  %wide.load627 = load <4 x double>, ptr %i.ia, align 8, !tbaa !9, !alias.scope !18
  %i.ib = fneg <4 x double> %wide.load626.a
  %i.ic = fneg <4 x double> %wide.load627
  %i.id = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hw, <4 x double> %i.hm, <4 x double> %wide.load)
  %reverse630.a = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ib, <4 x double> %i.hl, <4 x double> %i.id)
  %i.ie = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hx, <4 x double> %i.ho, <4 x double> %wide.load620)
  %reverse631 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ic, <4 x double> %i.hn, <4 x double> %i.ie)
  store <4 x double> %reverse630.a, ptr %i.hr, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  store <4 x double> %reverse631, ptr %i.hs, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit671, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv560.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph ], [ %i.hk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %scalar.ph ], [ %indvars.iv560.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv560 ; 2 uses
  %i.ig = load double, ptr %gep, align 8, !tbaa !9
  %gep588 = getelementptr [8 x i8], ptr %invariant.gep587, i64 %indvars.iv560
  %i.ih = load double, ptr %gep588, align 8, !tbaa !9
  %i.ii = fneg double %i.ih
  %i.ij = call double @llvm.fmuladd.f64(double %i.ii, double %i.he, double %i.ig)
  %gep590 = getelementptr [8 x i8], ptr %invariant.gep589, i64 %indvars.iv560
  %i.ik = load double, ptr %gep590, align 8, !tbaa !9
  %i.il = fneg double %i.ik
  %i.im = call double @llvm.fmuladd.f64(double %i.il, double %i.hb, double %i.ij)
  store double %i.im, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, -1
  %i.in = icmp samesign ugt i64 %indvars.iv560, 1
  br i1 %i.in, label %scalar.ph, label %.loopexit671, !llvm.loop !23

.loopexit671:                                     ; preds = %scalar.ph, %middle.block
  store double %i.he, ptr %gep594, align 8, !tbaa !9
  store double %i.hb, ptr %gep592, align 8, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.io = icmp sgt i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.io, label %.lr.ph, label %.loopexit541, !llvm.loop !24

bb.y:                                             ; preds = %bb.w, %bb.m, %bb.l
  %.1486.ph = phi i32 [ %.0491546, %bb.l ], [ %.0491546, %bb.m ], [ %.0485, %bb.w ]
  %i.ip = zext nneg i32 %.0491546 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ip
  store i32 %.1486.ph, ptr %i.iq, align 4, !tbaa !8
  br label %bb.z

.loopexit541:                                     ; preds = %.loopexit671, %bb.x
  %i.ir = sub nsw i32 0, %.0485                   ; 2 uses
  %i.is = zext nneg i32 %.0491546 to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.is ; 2 uses
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !8
  %i.iu = getelementptr i8, ptr %i.it, i64 -4
  store i32 %i.ir, ptr %i.iu, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit541, %bb.y
  %.1488.neg529 = phi i32 [ -2, %.loopexit541 ], [ -1, %bb.y ]
  %i.iv = add nsw i32 %.1488.neg529, %.0491546    ; 2 uses
  %i.iw = icmp slt i32 %i.iv, 1
  br i1 %i.iw, label %.loopexit540, label %bb.h

bb.aa:                                            ; preds = %.lr.ph558, %bb.aw
  %i.ix = phi i32 [ %i.l, %.lr.ph558 ], [ %i.rj, %bb.aw ] ; 2 uses
  %.1492555 = phi i32 [ 1, %.lr.ph558 ], [ %i.ri, %bb.aw ] ; 27 uses
  %.2499554 = phi i32 [ undef, %.lr.ph558 ], [ %.3500, %bb.aw ]
  %i.iy = mul nsw i32 %.1492555, %i.f             ; 9 uses
  %i.iz = add nsw i32 %i.iy, %.1492555
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ja ; 3 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !9 ; 4 uses
  store double %i.jc, ptr %i.b, align 8, !tbaa !9
  %i.jd = fcmp oge double %i.jc, 0.000000e+00
  %i.je = fneg double %i.jc
  %i.jf = select i1 %i.jd, double %i.jc, double %i.je ; 2 uses
  store double %i.jf, ptr %i.e, align 8, !tbaa !9
  %i.jg = icmp slt i32 %.1492555, %i.ix
  br i1 %i.jg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jh = sub nsw i32 %i.ix, %.1492555
  store i32 %i.jh, ptr %i.a, align 4, !tbaa !8
  %i.ji = add nuw nsw i32 %.1492555, 1
  %i.jj = add nsw i32 %i.ji, %i.iy
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jk
  %i.jm = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.jl, ptr noundef nonnull @c__1) #4
  %i.jn = add nsw i32 %i.jm, %.1492555            ; 2 uses
  %i.jo = add nsw i32 %i.jn, %i.iy
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !9 ; 4 uses
  store double %i.jr, ptr %i.b, align 8, !tbaa !9
  %i.js = fcmp oge double %i.jr, 0.000000e+00
  %i.jt = fneg double %i.jr
  %i.ju = select i1 %i.js, double %i.jr, double %i.jt
  %.pre570 = load double, ptr %i.e, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.jv = phi double [ %.pre570, %bb.ab ], [ %i.jf, %bb.aa ] ; 2 uses
  %.3500 = phi i32 [ %i.jn, %bb.ab ], [ %.2499554, %bb.aa ] ; 11 uses
  %.1484 = phi double [ %i.ju, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 4 uses
  %i.jw = fcmp oge double %i.jv, %.1484
  %i.jx = select i1 %i.jw, double %i.jv, double %.1484
  %i.jy = fcmp oeq double %i.jx, 0.000000e+00
  br i1 %i.jy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jz = call i32 @disnan_(ptr noundef nonnull %i.e) #4
  %.not512 = icmp eq i32 %i.jz, 0
  br i1 %.not512, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ka = load i32, ptr %5, align 4, !tbaa !8
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.af, label %bb.av

bb.af:                                            ; preds = %bb.ae
  store i32 %.1492555, ptr %5, align 4, !tbaa !8
  br label %bb.av

bb.ag:                                            ; preds = %bb.ad
  %i.kc = load double, ptr %i.e, align 8, !tbaa !9
  %i.kd = fmul double %.1484, f0x3FE47E0F66AFED07 ; 2 uses
  %i.ke = fcmp ult double %i.kc, %i.kd
  br i1 %i.ke, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.kf = sub nsw i32 %.3500, %.1492555
  store i32 %i.kf, ptr %i.a, align 4, !tbaa !8
  %i.kg = add nsw i32 %.1492555, -1
  %i.kh = add nsw i32 %.3500, %i.iy
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ki
  %i.kk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kj, ptr noundef nonnull %3) #4
  %i.kl = add nsw i32 %i.kg, %i.kk
  %i.km = mul nsw i32 %i.kl, %i.f
  %i.kn = add nsw i32 %i.km, %.3500
end_hunk_0
begin_hunk_1_@dsytf2_:bb.a
  %i.kx = add nsw i32 %.3500, 1
  %i.ky = mul nsw i32 %.3500, %i.f                ; 2 uses
  %i.kz = add nsw i32 %i.kx, %i.ky
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.la
  %i.lc = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.lb, ptr noundef nonnull @c__1) #4
  %i.ld = add i32 %i.ky, %.3500
  %i.le = add i32 %i.ld, %i.lc
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !9 ; 4 uses
  store double %i.lh, ptr %i.b, align 8, !tbaa !9
  %i.li = fcmp oge double %i.lh, 0.000000e+00
  %i.lj = fneg double %i.lh
  %i.lk = select i1 %i.li, double %i.lh, double %i.lj ; 2 uses
  %i.ll = fcmp oge double %i.kt, %i.lk
  %i.lm = select i1 %i.ll, double %i.kt, double %i.lk
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1 = phi double [ %i.lm, %bb.ai ], [ %i.kt, %bb.ah ] ; 2 uses
  %i.ln = load double, ptr %i.e, align 8, !tbaa !9
  %i.lo = fdiv double %.1484, %.1
  %i.lp = fmul double %i.kd, %i.lo
  %i.lq = fcmp ult double %i.ln, %i.lp
  br i1 %i.lq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lr = mul i32 %.3500, %i.t
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !9 ; 2 uses
  store double %i.lu, ptr %i.b, align 8, !tbaa !9
  %i.lv = call double @llvm.fabs.f64(double %i.lu)
  %i.lw = fmul double %.1, f0x3FE47E0F66AFED07
  %i.lx = fcmp ult double %i.lv, %i.lw            ; 3 uses
  %not.539 = xor i1 %i.lx, true
  %.523 = select i1 %i.lx, i32 2, i32 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.ly = phi i1 [ false, %bb.aj ], [ false, %bb.ag ], [ %i.lx, %bb.ak ]
  %i.lz = phi i1 [ true, %bb.aj ], [ true, %bb.ag ], [ %not.539, %bb.ak ]
  %.2489 = phi i32 [ 1, %bb.aj ], [ 1, %bb.ag ], [ %.523, %bb.ak ]
  %.2 = phi i32 [ %.1492555, %bb.aj ], [ %.1492555, %bb.ag ], [ %.3500, %bb.ak ] ; 12 uses
  %i.ma = add nuw nsw i32 %.2489, %.1492555       ; 4 uses
  %i.mb = add nsw i32 %i.ma, -1                   ; 4 uses
  %.not513 = icmp eq i32 %.2, %i.mb
  br i1 %.not513, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mc = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.md = icmp slt i32 %.2, %i.mc
  br i1 %i.md, label %bb.an, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %.pre571 = mul nsw i32 %i.mb, %i.f
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.me = sub nsw i32 %i.mc, %.2
  store i32 %i.me, ptr %i.a, align 4, !tbaa !8
  %i.mf = add nsw i32 %.2, 1                      ; 2 uses
  %i.mg = mul nsw i32 %i.mb, %i.f                 ; 2 uses
  %i.mh = add nsw i32 %i.mg, %i.mf
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mi
  %i.mk = mul nsw i32 %.2, %i.f
  %i.ml = add nsw i32 %i.mf, %i.mk
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mm
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.mj, ptr noundef nonnull @c__1, ptr noundef %i.mn, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.an
  %.pre-phi = phi i32 [ %.pre571, %._crit_edge ], [ %i.mg, %bb.an ] ; 2 uses
  %i.mo = sub i32 %.2, %i.ma
  store i32 %i.mo, ptr %i.a, align 4, !tbaa !8
  %i.mp = add nsw i32 %.pre-phi, %i.ma
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mq
  %i.ms = mul nsw i32 %i.ma, %i.f
  %i.mt = add nsw i32 %i.ms, %.2
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mu
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.mr, ptr noundef nonnull @c__1, ptr noundef %i.mv, ptr noundef nonnull %3) #4
  %i.mw = add nsw i32 %.pre-phi, %i.mb
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mx ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !9
  %i.na = mul i32 %.2, %i.t
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nb ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !9
  store double %i.nd, ptr %i.my, align 8, !tbaa !9
  store double %i.mz, ptr %i.nc, align 8, !tbaa !9
  br i1 %i.ly, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ne = add nuw nsw i32 %.1492555, 1
  %i.nf = add nsw i32 %i.ne, %i.iy
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  %i.nj = add nsw i32 %.2, %i.iy
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nk ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9
  store double %i.nm, ptr %i.nh, align 8, !tbaa !9
  store double %i.ni, ptr %i.nl, align 8, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.al
  %i.nn = load i32, ptr %1, align 4, !tbaa !8     ; 7 uses
  br i1 %i.lz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.no = icmp slt i32 %.1492555, %i.nn
  br i1 %i.no, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.np = load double, ptr %i.jb, align 8, !tbaa !9
  %i.nq = fdiv double 1.000000e+00, %i.np         ; 2 uses
  store double %i.nq, ptr %i.d, align 8, !tbaa !9
  %i.nr = sub nsw i32 %i.nn, %.1492555
  store i32 %i.nr, ptr %i.a, align 4, !tbaa !8
  %i.ns = fneg double %i.nq
  store double %i.ns, ptr %i.b, align 8, !tbaa !9
  %i.nt = add nuw nsw i32 %.1492555, 1            ; 2 uses
  %i.nu = add nsw i32 %i.nt, %i.iy
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.nv ; 2 uses
  %i.nx = mul i32 %i.nt, %i.t
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ny
  call void @dsyr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.nw, ptr noundef nonnull @c__1, ptr noundef %i.nz, ptr noundef nonnull %3) #4
  %i.oa = load i32, ptr %1, align 4, !tbaa !8
  %i.ob = sub nsw i32 %i.oa, %.1492555
  store i32 %i.ob, ptr %i.a, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %i.nw, ptr noundef nonnull @c__1) #4
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.oc = add nsw i32 %i.nn, -1
  %i.od = icmp slt i32 %.1492555, %i.oc
  br i1 %i.od, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.oe = add nuw nsw i32 %.1492555, 1            ; 3 uses
  %i.of = add nsw i32 %i.oe, %i.iy
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.og
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !9 ; 3 uses
  %i.oj = mul nsw i32 %i.oe, %i.f                 ; 2 uses
  %i.ok = add nsw i32 %i.oj, %i.oe
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !9
  %i.oo = fdiv double %i.on, %i.oi                ; 3 uses
  store double %i.oo, ptr %i.d, align 8, !tbaa !9
  %i.op = load double, ptr %i.jb, align 8, !tbaa !9
  %i.oq = fdiv double %i.op, %i.oi                ; 2 uses
  %i.or = call double @llvm.fmuladd.f64(double %i.oo, double %i.oq, double -1.000000e+00)
  %i.os = fdiv double 1.000000e+00, %i.or
  %i.ot = fdiv double %i.os, %i.oi                ; 2 uses
  store i32 %i.nn, ptr %i.a, align 4, !tbaa !8
  %i.ou = add nuw nsw i32 %.1492555, 2            ; 2 uses
  %.not514551 = icmp sgt i32 %i.ou, %i.nn
  br i1 %.not514551, label %.loopexit, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %bb.au
  %i.ov = zext nneg i32 %i.ou to i64              ; 2 uses
  %i.ow = sext i32 %i.iy to i64                   ; 3 uses
  %i.ox = sext i32 %i.oj to i64                   ; 3 uses
  %i.oy = sext i32 %i.nn to i64                   ; 3 uses
  %i.oz = add i32 %i.nn, 1
  %invariant.gep601 = getelementptr [8 x i8], ptr %i.h, i64 %i.ow
  %invariant.gep603 = getelementptr [8 x i8], ptr %i.h, i64 %i.ox
  %invariant.gep597 = getelementptr [8 x i8], ptr %i.h, i64 %i.ow ; 2 uses
  %invariant.gep599 = getelementptr [8 x i8], ptr %i.h, i64 %i.ox ; 2 uses
  %i.pa = mul i64 %i.w, %i.ov                     ; 2 uses
  %i.pb = zext nneg i32 %.1492555 to i64          ; 2 uses
  %i.pc = shl nuw nsw i64 %i.pb, 3                ; 4 uses
  %i.pd = shl nsw i64 %i.ow, 3
  %i.pe = shl nsw i64 %i.ox, 3
  %i.pf = xor i32 %.1492555, -1
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr i8, ptr %i.aa, i64 %i.pe
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.pc
  %i.pj = getelementptr i8, ptr %i.ac, i64 %i.pd
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.pc
  %i.pl = getelementptr i8, ptr %i.ae, i64 %i.pa
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.pc
  %i.pn = getelementptr i8, ptr %i.ag, i64 %i.pa
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.pc
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %.loopexit670
  %indvar633 = phi i64 [ 0, %.lr.ph553.preheader ], [ %indvar.next634, %.loopexit670 ] ; 5 uses
  %indvars.iv564 = phi i64 [ %i.ov, %.lr.ph553.preheader ], [ %indvars.iv.next565, %.loopexit670 ] ; 10 uses
  %i.pp = sub i64 %i.pg, %indvar633
  %gep602 = getelementptr [8 x i8], ptr %invariant.gep601, i64 %indvars.iv564 ; 3 uses
  %i.pq = load double, ptr %gep602, align 8, !tbaa !9 ; 2 uses
  %gep604 = getelementptr [8 x i8], ptr %invariant.gep603, i64 %indvars.iv564 ; 3 uses
  %i.pr = load double, ptr %gep604, align 8, !tbaa !9 ; 2 uses
  %i.ps = fneg double %i.pr
  %i.pt = call double @llvm.fmuladd.f64(double %i.oo, double %i.pq, double %i.ps)
  %i.pu = fmul double %i.ot, %i.pt                ; 3 uses
  %i.pv = fneg double %i.pq
  %i.pw = call double @llvm.fmuladd.f64(double %i.oq, double %i.pr, double %i.pv)
  %i.px = fmul double %i.ot, %i.pw                ; 3 uses
  %i.py = mul nsw i64 %indvars.iv564, %i.u
  %invariant.gep595 = getelementptr [8 x i8], ptr %i.h, i64 %i.py ; 2 uses
  %8 = call i64 @llvm.smax.i64(i64 %indvars.iv564, i64 %i.oy)
  %9 = add i64 %8, %i.pp                          ; 3 uses
  %min.iters.check651 = icmp ult i64 %9, 8
  br i1 %min.iters.check651, label %scalar.ph650.preheader, label %vector.memcheck632

vector.memcheck632:                               ; preds = %.lr.ph553
  %i.pz = shl nuw nsw i64 %indvar633, 3           ; 2 uses
  %scevgep640.a = getelementptr i8, ptr %i.pi, i64 %i.pz
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv564, i64 %i.oy)
  %i.qa = add i64 %indvar633, %i.pb
  %reass.sub = sub i64 %smax, %i.qa
  %i.qb = shl i64 %reass.sub, 3
  %i.qc = add i64 %i.qb, -16                      ; 3 uses
  %scevgep641 = getelementptr i8, ptr %scevgep640.a, i64 %i.qc
  %scevgep638.a = getelementptr i8, ptr %i.pk, i64 %i.pz
  %scevgep639 = getelementptr i8, ptr %scevgep638.a, i64 %i.qc
  %i.qd = mul i64 %i.y, %indvar633                ; 2 uses
  %scevgep636.a = getelementptr i8, ptr %i.pm, i64 %i.qd
  %scevgep637 = getelementptr i8, ptr %scevgep636.a, i64 %i.qc ; 2 uses
  %scevgep635 = getelementptr i8, ptr %i.po, i64 %i.qd ; 2 uses
  %bound0642 = icmp ult ptr %scevgep635, %scevgep639
  %bound1643 = icmp ult ptr %gep602, %scevgep637
  %found.conflict644 = and i1 %bound0642, %bound1643
  %bound0645 = icmp ult ptr %scevgep635, %scevgep641
  %bound1646 = icmp ult ptr %gep604, %scevgep637
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %found.conflict644, %found.conflict647
  br i1 %conflict.rdx648, label %scalar.ph650.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %vector.memcheck632
  %n.vec653 = and i64 %9, -8                      ; 3 uses
  %i.qe = add i64 %indvars.iv564, %n.vec653
  %broadcast.splatinsert654.a = insertelement <4 x double> poison, double %i.pu, i64 0
  %broadcast.splat655.a = shufflevector <4 x double> %broadcast.splatinsert654.a, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert656 = insertelement <4 x double> poison, double %i.px, i64 0
  %broadcast.splat657 = shufflevector <4 x double> %broadcast.splatinsert656, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph652
  %index659 = phi i64 [ 0, %vector.ph652 ], [ %index.next666, %vector.body658 ] ; 2 uses
  %i.qf = add nuw i64 %indvars.iv564, %index659   ; 3 uses
  %i.qg = getelementptr [8 x i8], ptr %invariant.gep595, i64 %i.qf ; 3 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 32     ; 2 uses
  %wide.load660.a = load <4 x double>, ptr %i.qg, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  %wide.load661.a = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  %i.qi = getelementptr [8 x i8], ptr %invariant.gep597, i64 %i.qf ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 32
  %wide.load662.a = load <4 x double>, ptr %i.qi, align 8, !tbaa !9, !alias.scope !31
  %wide.load663.a = load <4 x double>, ptr %i.qj, align 8, !tbaa !9, !alias.scope !31
  %i.qk = fneg <4 x double> %wide.load662.a
  %i.ql = fneg <4 x double> %wide.load663.a
  %i.qm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qk, <4 x double> %broadcast.splat655.a, <4 x double> %wide.load660.a)
  %i.qn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ql, <4 x double> %broadcast.splat655.a, <4 x double> %wide.load661.a)
  %i.qo = getelementptr [8 x i8], ptr %invariant.gep599, i64 %i.qf ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 32
  %wide.load664 = load <4 x double>, ptr %i.qo, align 8, !tbaa !9, !alias.scope !32
  %wide.load665 = load <4 x double>, ptr %i.qp, align 8, !tbaa !9, !alias.scope !32
  %i.qq = fneg <4 x double> %wide.load664
  %i.qr = fneg <4 x double> %wide.load665
  %i.qs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qq, <4 x double> %broadcast.splat657, <4 x double> %i.qm)
  %i.qt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qr, <4 x double> %broadcast.splat657, <4 x double> %i.qn)
  store <4 x double> %i.qs, ptr %i.qg, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  store <4 x double> %i.qt, ptr %i.qh, align 8, !tbaa !9, !alias.scope !25, !noalias !28
  %index.next666 = add nuw i64 %index659, 8       ; 2 uses
  %i.qu = icmp eq i64 %index.next666, %n.vec653
  br i1 %i.qu, label %middle.block667, label %vector.body658, !llvm.loop !33

middle.block667:                                  ; preds = %vector.body658
  %cmp.n668 = icmp eq i64 %9, %n.vec653
  br i1 %cmp.n668, label %.loopexit670, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %vector.memcheck632, %.lr.ph553, %middle.block667
  %indvars.iv566.ph = phi i64 [ %indvars.iv564, %vector.memcheck632 ], [ %indvars.iv564, %.lr.ph553 ], [ %i.qe, %middle.block667 ]
  br label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %scalar.ph650 ], [ %indvars.iv566.ph, %scalar.ph650.preheader ] ; 5 uses
  %gep596 = getelementptr [8 x i8], ptr %invariant.gep595, i64 %indvars.iv566 ; 2 uses
  %i.qv = load double, ptr %gep596, align 8, !tbaa !9
  %gep598 = getelementptr [8 x i8], ptr %invariant.gep597, i64 %indvars.iv566
  %i.qw = load double, ptr %gep598, align 8, !tbaa !9
  %i.qx = fneg double %i.qw
  %i.qy = call double @llvm.fmuladd.f64(double %i.qx, double %i.pu, double %i.qv)
  %gep600 = getelementptr [8 x i8], ptr %invariant.gep599, i64 %indvars.iv566
  %i.qz = load double, ptr %gep600, align 8, !tbaa !9
  %i.ra = fneg double %i.qz
  %i.rb = call double @llvm.fmuladd.f64(double %i.ra, double %i.px, double %i.qy)
  store double %i.rb, ptr %gep596, align 8, !tbaa !9
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1
  %.not515.not = icmp slt i64 %indvars.iv566, %i.oy
  br i1 %.not515.not, label %scalar.ph650, label %.loopexit670, !llvm.loop !34

.loopexit670:                                     ; preds = %scalar.ph650, %middle.block667
  store double %i.pu, ptr %gep602, align 8, !tbaa !9
  store double %i.px, ptr %gep604, align 8, !tbaa !9
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next565 to i32
  %exitcond.not = icmp eq i32 %i.oz, %lftr.wideiv
  %indvar.next634 = add i64 %indvar633, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph553, !llvm.loop !35

bb.av:                                            ; preds = %bb.as, %bb.ar, %bb.af, %bb.ae
  %.3.ph = phi i32 [ %.1492555, %bb.ae ], [ %.1492555, %bb.af ], [ %.2, %bb.ar ], [ %.2, %bb.as ]
  %i.rc = zext nneg i32 %.1492555 to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.rc
  store i32 %.3.ph, ptr %i.rd, align 4, !tbaa !8
  br label %bb.aw

.loopexit:                                        ; preds = %.loopexit670, %bb.au, %bb.at
  %i.re = sub nsw i32 0, %.2                      ; 2 uses
  %i.rf = zext nneg i32 %.1492555 to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.rf ; 2 uses
  store i32 %i.re, ptr %i.rg, align 4, !tbaa !8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  store i32 %i.re, ptr %i.rh, align 4, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.av
  %.3490536 = phi i32 [ 2, %.loopexit ], [ 1, %bb.av ]
  %i.ri = add nuw nsw i32 %.3490536, %.1492555    ; 2 uses
  %i.rj = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.rk = icmp sgt i32 %i.ri, %i.rj
  br i1 %i.rk, label %.loopexit540, label %bb.aa

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15, !16}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!15}
!18 = !{!16}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20}
!25 = !{!26}
!26 = distinct !{!26, !27}
!27 = distinct !{!27, !"LVerDomain"}
!28 = !{!29, !30}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = !{!29}
!32 = !{!30}
!33 = distinct !{!33, !20, !21, !22}
!34 = distinct !{!34, !20, !21}
!35 = distinct !{!35, !20}
end_hunk_1
