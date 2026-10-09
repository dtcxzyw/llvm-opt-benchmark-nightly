Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr0?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr0_:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @dlahqr_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %15) #4
  br label %.loopexit545

bb.e:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %0, align 4, !tbaa !14
  %.not = icmp eq i32 %i.ac, 0
  %. = select i1 %.not, i8 69, i8 83
  store i8 %., ptr %i.p, align 1, !tbaa !15
  %i.ad = load i32, ptr %1, align 4, !tbaa !14
  %.not503 = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %.not503, i8 78, i8 86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %spec.select, ptr %i.ae, align 1, !tbaa !15
  %i.af = call i32 @ilaenv_(ptr noundef nonnull @c__13, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %14, i32 noundef 6, i32 noundef 2) #4
  %i.ag = call i32 @llvm.smax.i32(i32 %i.af, i32 2)
  %i.ah = load i32, ptr %4, align 4, !tbaa !14
  %i.ai = load i32, ptr %3, align 4, !tbaa !14
  %i.aj = sub nsw i32 %i.ah, %i.ai
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = load i32, ptr %2, align 4, !tbaa !14
  %i.am = add nsw i32 %i.al, -1
  %i.an = sdiv i32 %i.am, 3
  %i.ao = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.an)
  %i.ap = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.ag) ; 2 uses
  %i.aq = call i32 @ilaenv_(ptr noundef nonnull @c__15, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %14, i32 noundef 6, i32 noundef 2) #4
  %i.ar = load i32, ptr %2, align 4, !tbaa !14
  %i.as = add nsw i32 %i.ar, -3
  %i.at = sdiv i32 %i.as, 6
  %i.au = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.at)
  %i.av = load i32, ptr %4, align 4, !tbaa !14
  %i.aw = load i32, ptr %3, align 4, !tbaa !14
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ax) ; 2 uses
  %i.az = srem i32 %i.ay, 2
  %i.ba = sub nsw i32 %i.ay, %i.az
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 2) ; 3 uses
  %i.bc = add nsw i32 %i.ap, 1
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !14
  call void @dlaqr3_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef %7, ptr noundef %8, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %13, ptr noundef nonnull @c_n1) #4
  %i.bd = lshr i32 %i.bb, 1
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 2 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !14
  %i.bf = load double, ptr %13, align 8, !tbaa !17
  %i.bg = fptosi double %i.bf to i32
  %i.bh = call i32 @llvm.smax.i32(i32 %i.be, i32 %i.bg) ; 3 uses
  %i.bi = load i32, ptr %14, align 4, !tbaa !14
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = uitofp nneg i32 %i.bh to double
  br label %bb.aq

bb.g:                                             ; preds = %bb.e
  %i.bl = call i32 @ilaenv_(ptr noundef nonnull @c__12, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %14, i32 noundef 6, i32 noundef 2) #4
  %i.bm = call i32 @llvm.smax.i32(i32 %i.bl, i32 15) ; 2 uses
  %i.bn = call i32 @ilaenv_(ptr noundef nonnull @c__14, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %14, i32 noundef 6, i32 noundef 2) #4
  %i.bo = call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %i.bp = call i32 @ilaenv_(ptr noundef nonnull @c__16, ptr noundef nonnull @.str, ptr noundef nonnull %i.p, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %14, i32 noundef 6, i32 noundef 2) #4
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.br = call i32 @llvm.umin.i32(i32 %i.bq, i32 2)
  store i32 %i.br, ptr %i.e, align 4, !tbaa !14
  %i.bs = load i32, ptr %2, align 4, !tbaa !14    ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = sdiv i32 %i.bt, 3
  %i.bv = load i32, ptr %14, align 4, !tbaa !14   ; 2 uses
  %i.bw = sdiv i32 %i.bv, 2
  %i.bx = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bw) ; 4 uses
  store i32 %i.bx, ptr %i.o, align 4, !tbaa !14
  %i.by = load i32, ptr %4, align 4, !tbaa !14    ; 4 uses
  %i.bz = load i32, ptr %3, align 4, !tbaa !14
  %i.ca = sub nsw i32 %i.by, %i.bz
  %i.cb = call i32 @llvm.smax.i32(i32 %i.ca, i32 9)
  %i.cc = mul i32 %i.cb, 30
  %i.cd = add i32 %i.cc, 30                       ; 2 uses
  store i32 %i.by, ptr %i.b, align 4, !tbaa !14
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !14
  %.not511554 = icmp slt i32 %i.cd, 1
  br i1 %.not511554, label %._crit_edge560, label %.lr.ph559

.lr.ph559:                                        ; preds = %bb.g
  %i.ce = add nsw i32 %i.bs, -3
  %i.cf = sdiv i32 %i.ce, 6
  %i.cg = shl i32 %i.bv, 1
  %i.ch = sdiv i32 %i.cg, 3
  %i.ci = call i32 @llvm.smin.i32(i32 %i.cf, i32 %i.ch) ; 2 uses
  %i.cj = srem i32 %i.ci, 2
  %i.ck = sub nsw i32 %i.ci, %i.cj
  %i.cl = call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bx)
  %i.cm = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bb)
  %i.cn = add i32 %i.t, 1                         ; 7 uses
  %i.co = sext i32 %i.t to i64                    ; 2 uses
  %invariant.op = add i32 %i.t, 2
  %invariant.op601 = add i32 %i.t, 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph559, %bb.ap
  %i.cp = phi i32 [ %i.by, %.lr.ph559 ], [ %i.ok, %bb.ap ] ; 5 uses
  %.0483557 = phi i32 [ 1, %.lr.ph559 ], [ %i.om, %bb.ap ] ; 2 uses
  %.0490556 = phi i32 [ 1, %.lr.ph559 ], [ %.1491, %bb.ap ] ; 3 uses
  %.0492555 = phi i32 [ undef, %.lr.ph559 ], [ %.1493, %bb.ap ] ; 3 uses
  %i.cq = load i32, ptr %3, align 4, !tbaa !14    ; 5 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.loopexit545, label %.preheader544.preheader

.preheader544.preheader:                          ; preds = %bb.h
  %i.cs = sext i32 %i.cq to i64
  %.not512.not606 = icmp sgt i32 %i.cp, %i.cq
  br i1 %.not512.not606, label %.lr.ph608, label %.split.loop.exit

.lr.ph608:                                        ; preds = %.preheader544.preheader
  %i.ct = sext i32 %i.cp to i64
  br label %bb.i

.preheader544:                                    ; preds = %bb.i
  %.not512.not = icmp sgt i64 %indvars.iv.next, %i.cs
  br i1 %.not512.not, label %bb.i, label %.split.loop.exit, !llvm.loop !8

bb.i:                                             ; preds = %.lr.ph608, %.preheader544
  %indvars.iv607 = phi i64 [ %i.ct, %.lr.ph608 ], [ %indvars.iv.next, %.preheader544 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv607, -1 ; 3 uses
  %i.cu = mul nsw i64 %indvars.iv.next, %i.co
  %i.cv = getelementptr [8 x i8], ptr %i.v, i64 %i.cu
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv607
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !17
  %i.cy = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cy, label %.split.loop.exit599, label %.preheader544, !llvm.loop !8

.split.loop.exit599:                              ; preds = %bb.i
  %i.cz = trunc nsw i64 %indvars.iv607 to i32
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %.preheader544, %.preheader544.preheader, %.split.loop.exit599
  %.1485 = phi i32 [ %i.cz, %.split.loop.exit599 ], [ %i.cq, %.preheader544.preheader ], [ %i.cq, %.preheader544 ] ; 2 uses
  store i32 %.1485, ptr %i.c, align 4, !tbaa !14
  %i.da = sub nsw i32 %i.cp, %.1485               ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 2 uses
  %i.dc = call i32 @llvm.smin.i32(i32 %i.db, i32 %i.bx) ; 2 uses
  %i.dd = icmp slt i32 %.0490556, 5               ; 2 uses
  %i.de = load i32, ptr %i.o, align 4
  %i.df = shl i32 %i.de, 1
  %.sink = select i1 %i.dd, i32 %i.ap, i32 %i.df
  %i.dg = call i32 @llvm.smin.i32(i32 %i.dc, i32 %.sink) ; 7 uses
  store i32 %i.dg, ptr %i.o, align 4, !tbaa !14
  %i.dh = icmp slt i32 %i.dg, %i.bx
  br i1 %i.dh, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.split.loop.exit
  %.not517 = icmp slt i32 %i.dg, %i.da
  br i1 %.not517, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.di = sub nsw i32 %i.cp, %i.dg                ; 4 uses
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = mul nsw i32 %i.di, %i.t
  %i.dl = add nsw i32 %i.dj, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !17
  %i.dp = call double @llvm.fabs.f64(double %i.do)
  %i.dq = add nsw i32 %i.di, -1
  %i.dr = mul nsw i32 %i.dq, %i.t
  %i.ds = add nsw i32 %i.dr, %i.di
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !17
  %i.dw = call double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ogt double %i.dp, %i.dw
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = add nsw i32 %i.dg, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.l
  %.sink603 = phi i32 [ %i.dy, %bb.l ], [ %i.db, %bb.j ] ; 2 uses
  store i32 %.sink603, ptr %i.o, align 4, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %.split.loop.exit
  %i.dz = phi i32 [ %i.dg, %bb.k ], [ %i.dg, %.split.loop.exit ], [ %.sink603, %.sink.split ] ; 5 uses
  br i1 %i.dd, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = icmp slt i32 %.0492555, 0
  %.not518 = icmp slt i32 %i.dz, %i.dc
  %or.cond533 = select i1 %i.ea, i1 %.not518, i1 false
  br i1 %or.cond533, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = add nsw i32 %.0492555, 1                ; 2 uses
  %i.ec = sub nsw i32 %i.dz, %i.eb
  %i.ed = icmp slt i32 %i.ec, 2
  %spec.store.select = select i1 %i.ed, i32 0, i32 %i.eb ; 2 uses
  %i.ee = sub nsw i32 %i.dz, %spec.store.select   ; 2 uses
  store i32 %i.ee, ptr %i.o, align 4, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.o
  %i.ef = phi i32 [ %i.dz, %bb.n ], [ %i.ee, %bb.o ], [ %i.dz, %bb.m ] ; 4 uses
  %.1493 = phi i32 [ %.0492555, %bb.n ], [ %spec.store.select, %bb.o ], [ -1, %bb.m ]
  %i.eg = load i32, ptr %2, align 4, !tbaa !14
  %i.eh = sub nsw i32 %i.eg, %i.ef                ; 2 uses
  %i.ei = add nsw i32 %i.eh, 1                    ; 2 uses
  %i.ej = add nsw i32 %i.ef, 1
  %i.ek = xor i32 %i.ef, -1
  %i.el = add i32 %i.eh, %i.ek                    ; 2 uses
  store i32 %i.el, ptr %i.r, align 4, !tbaa !14
  store i32 %i.el, ptr %i.s, align 4, !tbaa !14
  %i.em = add nsw i32 %i.ei, %i.t
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.en
  %i.ep = mul nsw i32 %i.ej, %i.t
  %i.eq = add nsw i32 %i.ei, %i.ep
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.er
  %.reass = add i32 %i.ef, %invariant.op
  %i.et = sext i32 %.reass to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.et
  call void @dlaqr3_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef %7, ptr noundef %8, ptr noundef %i.eo, ptr noundef nonnull %6, ptr noundef nonnull %i.r, ptr noundef %i.es, ptr noundef nonnull %6, ptr noundef nonnull %i.s, ptr noundef %i.eu, ptr noundef nonnull %6, ptr noundef nonnull %13, ptr noundef nonnull %14) #4
  %i.ev = load i32, ptr %i.j, align 4, !tbaa !14  ; 5 uses
  %i.ew = load i32, ptr %i.b, align 4, !tbaa !14
  %i.ex = sub i32 %i.ew, %i.ev                    ; 12 uses
  store i32 %i.ex, ptr %i.b, align 4, !tbaa !14
  %i.ey = load i32, ptr %i.m, align 4, !tbaa !14
  %i.ez = sub nsw i32 %i.ex, %i.ey
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = icmp eq i32 %i.ev, 0
  br i1 %i.fb, label %._crit_edge577, label %bb.q

._crit_edge577:                                   ; preds = %bb.p
  %.pre578.a = load i32, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  %.pre582 = sub nsw i32 %i.ex, %.pre578.a
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fc = mul nsw i32 %i.ev, 100
  %i.fd = load i32, ptr %i.o, align 4, !tbaa !14
  %i.fe = mul nsw i32 %i.fd, %i.bo
  %.not519 = icmp sgt i32 %i.fc, %i.fe
  br i1 %.not519, label %bb.ap, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ff = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  %i.fg = sub nsw i32 %i.ex, %i.ff                ; 2 uses
  %.not521 = icmp slt i32 %i.fg, %i.cl
  br i1 %.not521, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %._crit_edge577, %bb.r
  %.pre-phi = phi i32 [ %.pre582, %._crit_edge577 ], [ %i.fg, %bb.r ]
  %i.fh = phi i32 [ %.pre578.a, %._crit_edge577 ], [ %i.ff, %bb.r ] ; 2 uses
  %i.fi = call i32 @llvm.smax.i32(i32 %.pre-phi, i32 2)
  %i.fj = call i32 @llvm.smin.i32(i32 %i.cm, i32 %i.fi) ; 3 uses
  %i.fk = srem i32 %i.fj, 2
  %i.fl = sdiv i32 %i.fj, 2
  %i.fm = sub nsw i32 %i.fj, %i.fk                ; 4 uses
  store i32 %i.fm, ptr %i.n, align 4, !tbaa !14
  %i.fn = srem i32 %.0490556, 6
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fp = sub nsw i32 %i.ex, %i.fm                ; 2 uses
  %i.fq = add nsw i32 %i.fp, 1                    ; 4 uses
  %i.fr = add nsw i32 %i.fp, 2                    ; 3 uses
  %i.fs = add nsw i32 %i.fh, 2
  %i.ft = call i32 @llvm.smax.i32(i32 %i.fr, i32 %i.fs) ; 2 uses
  %.not530551 = icmp slt i32 %i.ex, %i.ft
  br i1 %.not530551, label %._crit_edge, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %bb.t
  %i.fu = sext i32 %i.ex to i64
  %i.fv = sext i32 %i.ft to i64
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %.lr.ph553
  %indvars.iv573 = phi i64 [ %i.fu, %.lr.ph553.preheader ], [ %indvars.iv.next574, %.lr.ph553 ] ; 6 uses
  %indvars575 = trunc i64 %indvars.iv573 to i32   ; 2 uses
  %i.fw = add nsw i64 %indvars.iv573, -1          ; 3 uses
  %i.fx = add nsw i32 %indvars575, -1
  %i.fy = mul nsw i32 %i.fx, %i.t
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv573
  %i.gb = getelementptr [8 x i8], ptr %i.ga, i64 %i.fz
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !17 ; 3 uses
  %i.gd = fcmp oge double %i.gc, 0.000000e+00
  %i.ge = fneg double %i.gc
  %i.gf = select i1 %i.gd, double %i.gc, double %i.ge
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, -2 ; 3 uses
  %i.gg = mul nsw i64 %indvars.iv.next574, %i.co
  %i.gh = getelementptr [8 x i8], ptr %i.v, i64 %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.fw
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !17 ; 3 uses
  %i.gk = fcmp oge double %i.gj, 0.000000e+00
  %i.gl = fneg double %i.gj
  %i.gm = select i1 %i.gk, double %i.gj, double %i.gl
  %i.gn = fadd double %i.gf, %i.gm                ; 3 uses
  %i.go = mul i32 %i.cn, %indvars575
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.gp
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !17
  %i.gs = call double @llvm.fmuladd.f64(double %i.gn, double 7.500000e-01, double %i.gr) ; 2 uses
  store double %i.gs, ptr %i.f, align 8, !tbaa !17
  store double %i.gn, ptr %i.g, align 8, !tbaa !17
  %i.gt = fmul double %i.gn, -4.375000e-01
  store double %i.gt, ptr %i.h, align 8, !tbaa !17
  store double %i.gs, ptr %i.i, align 8, !tbaa !17
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.fw
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.fw
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv573
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv573
  call void @dlanv2_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #4
  %.not530 = icmp slt i64 %indvars.iv.next574, %i.fv
  br i1 %.not530, label %._crit_edge.loopexit, label %.lr.ph553, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph553
  %.pre580 = load i32, ptr %i.c, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %i.gy = phi i32 [ %.pre580, %._crit_edge.loopexit ], [ %i.fh, %bb.t ]
  %i.gz = icmp eq i32 %i.fq, %i.gy
  br i1 %i.gz, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge
  %i.ha = mul i32 %i.fr, %i.cn
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !17
  %i.he = sext i32 %i.fr to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.he ; 2 uses
  store double %i.hd, ptr %i.hf, align 8, !tbaa !17
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.he ; 2 uses
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !17
  %i.hh = load double, ptr %i.hf, align 8, !tbaa !17
  %i.hi = sext i32 %i.fq to i64                   ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.hi
  store double %i.hh, ptr %i.hj, align 8, !tbaa !17
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !17
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hi
  store double %i.hk, ptr %i.hl, align 8, !tbaa !17
  br label %.loopexit

bb.v:                                             ; preds = %bb.s
  %i.hm = sub nsw i32 %i.ex, %i.fa
  %.not524.not = icmp slt i32 %i.hm, %i.fl
  br i1 %.not524.not, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hn = sub nsw i32 %i.ex, %i.fm
  %i.ho = add nsw i32 %i.hn, 1                    ; 3 uses
  %i.hp = load i32, ptr %2, align 4, !tbaa !14
  %i.hq = mul i32 %i.ho, %i.cn
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hr
  %i.ht = sub i32 %i.cn, %i.fm
  %i.hu = add i32 %i.ht, %i.hp
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.hv ; 3 uses
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.n, ptr noundef %i.hs, ptr noundef nonnull %6, ptr noundef %i.hw, ptr noundef nonnull %6) #4
  %i.hx = load i32, ptr %i.n, align 4, !tbaa !14
  %i.hy = icmp sgt i32 %i.hx, %i.bm
  %i.hz = sext i32 %i.ho to i64                   ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.hz ; 2 uses
  br i1 %i.hy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @dlaqr4_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %i.n, ptr noundef nonnull @c__1, ptr noundef nonnull %i.n, ptr noundef %i.hw, ptr noundef nonnull %6, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ib, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull @c__1, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %i.q) #4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @dlahqr_(ptr noundef nonnull @c_false, ptr noundef nonnull @c_false, ptr noundef nonnull %i.n, ptr noundef nonnull @c__1, ptr noundef nonnull %i.n, ptr noundef %i.hw, ptr noundef nonnull %6, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ib, ptr noundef nonnull @c__1, ptr noundef nonnull @c__1, ptr noundef nonnull %i.d, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ic = load i32, ptr %i.q, align 4, !tbaa !14
  %i.id = add nsw i32 %i.ic, %i.ho                ; 2 uses
  %i.ie = load i32, ptr %i.b, align 4, !tbaa !14  ; 7 uses
  %.not525 = icmp slt i32 %i.id, %i.ie
  br i1 %.not525, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = add nsw i32 %i.ie, -1                   ; 4 uses
  %i.ig = mul i32 %i.if, %i.cn
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !17
  store double %i.ij, ptr %i.f, align 8, !tbaa !17
  %i.ik = mul nsw i32 %i.if, %i.t
  %i.il = add nsw i32 %i.ik, %i.ie
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !17
  store double %i.io, ptr %i.h, align 8, !tbaa !17
  %i.ip = mul nsw i32 %i.ie, %i.t
  %i.iq = add nsw i32 %i.if, %i.ip
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !17
  store double %i.it, ptr %i.g, align 8, !tbaa !17
  %i.iu = mul i32 %i.ie, %i.cn
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !17
  store double %i.ix, ptr %i.i, align 8, !tbaa !17
  %i.iy = sext i32 %i.if to i64                   ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.iy
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.iy
end_hunk_0
begin_hunk_1_@dlaqr0_:bb.a
  %i.jq = load <2 x double>, ptr %i.jn, align 8, !tbaa !17 ; 3 uses
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.js = fcmp oge <2 x double> %i.jr, zeroinitializer
  %i.jt = fneg <2 x double> %i.jr
  %i.ju = select <2 x i1> %i.js, <2 x double> %i.jr, <2 x double> %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %i.jm, i64 1 ; 3 uses
  %i.jx = fcmp oge <2 x double> %i.jw, zeroinitializer
  %i.jy = fneg <2 x double> %i.jw
  %i.jz = select <2 x i1> %i.jx, <2 x double> %i.jw, <2 x double> %i.jy
  %i.ka = fadd <2 x double> %i.ju, %i.jz          ; 2 uses
  %shift = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kb = fcmp olt <2 x double> %shift, %i.ka
  %i.kc = extractelement <2 x i1> %i.kb, i64 0
  br i1 %i.kc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kd = getelementptr [8 x i8], ptr %7, i64 %indvars.iv564
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv564 ; 2 uses
  %i.kf = extractelement <2 x double> %i.jq, i64 1
  store double %i.kf, ptr %i.jn, align 8, !tbaa !17
  %i.kg = extractelement <2 x double> %i.jq, i64 0
  store double %i.kg, ptr %i.kd, align 8, !tbaa !17
  %i.kh = load <2 x double>, ptr %i.ke, align 8, !tbaa !17 ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ki, ptr %i.ke, align 8, !tbaa !17
  %i.kj = extractelement <2 x double> %i.kh, i64 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.kk = phi double [ %i.kj, %bb.ad ], [ %i.jp, %bb.ac ]
  %.2 = phi i32 [ 0, %bb.ad ], [ %.1547, %bb.ac ] ; 2 uses
  %.not527.not = icmp slt i64 %indvars.iv.next565, %indvars.iv567
  br i1 %.not527.not, label %bb.ac, label %bb.af, !llvm.loop !10

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, -1 ; 2 uses
  %i.kl = icmp sle i64 %indvars.iv.next568, %i.jk
  %i.km = icmp ne i32 %.2, 0
  %or.cond = select i1 %i.kl, i1 true, i1 %i.km
  br i1 %or.cond, label %.loopexit543, label %.preheader, !llvm.loop !11

.loopexit543:                                     ; preds = %bb.af, %bb.ab
  %i.kn = add nsw i32 %.0481, 2                   ; 2 uses
  %.not528549 = icmp slt i32 %i.jg, %i.kn
  br i1 %.not528549, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit543
  %i.ko = sext i32 %i.jg to i64                   ; 7 uses
  %i.kp = sext i32 %i.kn to i64                   ; 2 uses
  %i.kq = sub nsw i64 %i.ko, %i.kp                ; 2 uses
  %i.kr = and i64 %i.kq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.kr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ko ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !17
  %i.ku = add nsw i64 %i.ko, -1                   ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ku ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !17
  %i.kx = fneg double %i.kw
  %i.ky = fcmp une double %i.kt, %i.kx
  br i1 %i.ky, label %bb.ag, label %.lr.ph._crit_edge.prol

.lr.ph._crit_edge.prol:                           ; preds = %.lr.ph.prol
  %.pre583.prol = add nsw i64 %i.ko, -2
  br label %.lr.ph.prol.loopexit

bb.ag:                                            ; preds = %.lr.ph.prol
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ko
  %i.la = load double, ptr %i.kz, align 8, !tbaa !17
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ku
  %i.lc = add nsw i64 %i.ko, -2                   ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lc ; 2 uses
  %i.le = load <2 x double>, ptr %i.ld, align 8, !tbaa !17
  store <2 x double> %i.le, ptr %i.lb, align 8, !tbaa !17
  store double %i.la, ptr %i.ld, align 8, !tbaa !17
  %i.lf = load double, ptr %i.ks, align 8, !tbaa !17
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.lc ; 2 uses
  %i.lh = load <2 x double>, ptr %i.lg, align 8, !tbaa !17
  store <2 x double> %i.lh, ptr %i.kv, align 8, !tbaa !17
  store double %i.lf, ptr %i.lg, align 8, !tbaa !17
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph._crit_edge.prol, %bb.ag, %.lr.ph.preheader
  %indvars.iv570.unr = phi i64 [ %i.ko, %.lr.ph.preheader ], [ %.pre583.prol, %.lr.ph._crit_edge.prol ], [ %i.lc, %bb.ag ]
  %i.li = icmp ult i64 %i.kq, 2
  br i1 %i.li, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.aj
  %indvars.iv570 = phi i64 [ %indvars.iv.next571.pre-phi.1, %bb.aj ], [ %indvars.iv570.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv570 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !17
  %i.ll = add nsw i64 %indvars.iv570, -1          ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ll ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !17
  %i.lo = fneg double %i.ln
  %i.lp = fcmp une double %i.lk, %i.lo
  br i1 %i.lp, label %bb.ah, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre583 = add nsw i64 %indvars.iv570, -2
  br label %.lr.ph.1

bb.ah:                                            ; preds = %.lr.ph
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv570
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !17
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ll
  %i.lt = add nsw i64 %indvars.iv570, -2          ; 3 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lt ; 2 uses
  %i.lv = load <2 x double>, ptr %i.lu, align 8, !tbaa !17
  store <2 x double> %i.lv, ptr %i.ls, align 8, !tbaa !17
  store double %i.lr, ptr %i.lu, align 8, !tbaa !17
  %i.lw = load double, ptr %i.lj, align 8, !tbaa !17
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.lt ; 2 uses
  %i.ly = load <2 x double>, ptr %i.lx, align 8, !tbaa !17
  store <2 x double> %i.ly, ptr %i.lm, align 8, !tbaa !17
  store double %i.lw, ptr %i.lx, align 8, !tbaa !17
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph._crit_edge, %bb.ah
  %indvars.iv.next571.pre-phi = phi i64 [ %.pre583, %.lr.ph._crit_edge ], [ %i.lt, %bb.ah ] ; 5 uses
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv.next571.pre-phi ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !17
  %i.mb = add nsw i64 %indvars.iv.next571.pre-phi, -1 ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.mb ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !17
  %i.me = fneg double %i.md
  %i.mf = fcmp une double %i.ma, %i.me
  br i1 %i.mf, label %bb.ai, label %.lr.ph._crit_edge.1

.lr.ph._crit_edge.1:                              ; preds = %.lr.ph.1
  %.pre583.1 = add nsw i64 %indvars.iv.next571.pre-phi, -2
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.1
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next571.pre-phi
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !17
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.mb
  %i.mj = add nsw i64 %indvars.iv.next571.pre-phi, -2 ; 3 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.mj ; 2 uses
  %i.ml = load <2 x double>, ptr %i.mk, align 8, !tbaa !17
  store <2 x double> %i.ml, ptr %i.mi, align 8, !tbaa !17
  store double %i.mh, ptr %i.mk, align 8, !tbaa !17
  %i.mm = load double, ptr %i.lz, align 8, !tbaa !17
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.mj ; 2 uses
  %i.mo = load <2 x double>, ptr %i.mn, align 8, !tbaa !17
  store <2 x double> %i.mo, ptr %i.mc, align 8, !tbaa !17
  store double %i.mm, ptr %i.mn, align 8, !tbaa !17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph._crit_edge.1
  %indvars.iv.next571.pre-phi.1 = phi i64 [ %.pre583.1, %.lr.ph._crit_edge.1 ], [ %i.mj, %bb.ai ] ; 2 uses
  %.not528.1 = icmp slt i64 %indvars.iv.next571.pre-phi.1, %i.kp
  br i1 %.not528.1, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %bb.aj, %.loopexit543, %._crit_edge, %bb.u
  %.1482 = phi i32 [ %i.fq, %bb.u ], [ %i.fq, %._crit_edge ], [ %.0481, %.loopexit543 ], [ %.0481, %bb.aj ], [ %.0481, %.lr.ph.prol.loopexit ]
  %i.mp = load i32, ptr %i.b, align 4, !tbaa !14  ; 4 uses
  %i.mq = sub nsw i32 %i.mp, %.1482               ; 2 uses
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.loopexit
  %i.ms = sext i32 %i.mp to i64                   ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ms
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !17
  %i.mv = fcmp oeq double %i.mu, 0.000000e+00
  br i1 %i.mv, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ms ; 3 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !17 ; 2 uses
  %i.my = mul i32 %i.mp, %i.cn
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.mz
  %i.nb = load double, ptr %i.na, align 8, !tbaa !17 ; 2 uses
  %i.nc = fsub double %i.mx, %i.nb
  %i.nd = call double @llvm.fabs.f64(double %i.nc)
  %i.ne = getelementptr i8, ptr %i.mw, i64 -8     ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !17 ; 2 uses
  %i.ng = fsub double %i.nf, %i.nb
  %i.nh = call double @llvm.fabs.f64(double %i.ng)
  %i.ni = fcmp olt double %i.nd, %i.nh
  br i1 %i.ni, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.mx, ptr %i.ne, align 8, !tbaa !17
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  store double %i.nf, ptr %i.mw, align 8, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %.loopexit
  %i.nj = load i32, ptr %i.n, align 4, !tbaa !14
  %i.nk = add nsw i32 %i.mq, 1
  %i.nl = call i32 @llvm.smin.i32(i32 %i.nj, i32 %i.nk) ; 2 uses
  %i.nm = srem i32 %i.nl, 2
  %i.nn = sub nsw i32 %i.nl, %i.nm                ; 3 uses
  store i32 %i.nn, ptr %i.n, align 4, !tbaa !14
  %i.no = add i32 %i.mp, 1
  %i.np = sub i32 %i.no, %i.nn
  %i.nq = shl i32 %i.nn, 1                        ; 4 uses
  %i.nr = load i32, ptr %2, align 4, !tbaa !14
  %i.ns = sub nsw i32 %i.nr, %i.nq                ; 2 uses
  %i.nt = add nsw i32 %i.ns, 1                    ; 2 uses
  %i.nu = or disjoint i32 %i.nq, 1
  %i.nv = sub i32 %i.ns, %i.nq
  %i.nw = add i32 %i.nv, -3                       ; 2 uses
  store i32 %i.nw, ptr %i.r, align 4, !tbaa !14
  store i32 %i.nw, ptr %i.s, align 4, !tbaa !14
  %i.nx = sext i32 %i.np to i64                   ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.nx
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.nx
  %i.oa = add nsw i32 %i.nt, %i.t
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ob
  %.reass602 = add i32 %i.nq, %invariant.op601
  %i.od = sext i32 %.reass602 to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.od
  %i.of = mul nsw i32 %i.nu, %i.t
  %i.og = add nsw i32 %i.nt, %i.of
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.oh
  call void @dlaqr5_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ny, ptr noundef nonnull %i.nz, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull @c__3, ptr noundef %i.oc, ptr noundef nonnull %6, ptr noundef nonnull %i.s, ptr noundef %i.oe, ptr noundef nonnull %6, ptr noundef nonnull %i.r, ptr noundef %i.oi, ptr noundef nonnull %6) #4
  %.pre = load i32, ptr %i.b, align 4, !tbaa !14
  %.pre581 = load i32, ptr %i.j, align 4, !tbaa !14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.r, %bb.q
  %i.oj = phi i32 [ %.pre581, %bb.ao ], [ %i.ev, %bb.r ], [ %i.ev, %bb.q ]
  %i.ok = phi i32 [ %.pre, %bb.ao ], [ %i.ex, %bb.r ], [ %i.ex, %bb.q ] ; 2 uses
  %i.ol = add nsw i32 %.0490556, 1
  %.inv = icmp slt i32 %i.oj, 1
  %.1491 = select i1 %.inv, i32 %i.ol, i32 1
  %i.om = add nuw nsw i32 %.0483557, 1
  %i.on = load i32, ptr %i.a, align 4, !tbaa !14
  %.not511.not = icmp slt i32 %.0483557, %i.on
  br i1 %.not511.not, label %bb.h, label %._crit_edge560, !llvm.loop !13

._crit_edge560:                                   ; preds = %bb.ap, %bb.g
  %i.oo = phi i32 [ %i.by, %bb.g ], [ %i.ok, %bb.ap ]
  store i32 %i.oo, ptr %15, align 4, !tbaa !14
  br label %.loopexit545

.loopexit545:                                     ; preds = %bb.h, %._crit_edge560, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ %i.bh, %._crit_edge560 ], [ %i.bh, %bb.h ]
  %i.op = uitofp nneg i32 %.0 to double
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %.loopexit545, %bb.f
  %.sink604 = phi double [ %i.op, %.loopexit545 ], [ %i.bk, %bb.f ], [ 1.000000e+00, %bb.a ]
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
end_hunk_1
