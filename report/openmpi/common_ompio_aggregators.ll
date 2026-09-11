Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_aggregators?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mca_common_ompio_simple_grouping:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 10 uses
  %i.m = icmp slt i32 %i.l, 16
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.l, 128
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i32 %i.l, 4096
  %. = select i1 %i.o, i32 16, i32 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.050 = phi i32 [ 4, %bb.b ], [ 2, %bb.a ], [ %., %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !92
  %i.r = sext i32 %i.q to i64                     ; 6 uses
  %i.s = sext i32 %i.l to i64                     ; 3 uses
  %i.t = uitofp i64 %i.r to double                ; 8 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.g, %i.r
  %.pre.i = uitofp i64 %i.g to double             ; 4 uses
  br i1 %i.u, label %cost_calc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fdiv double %i.t, %.pre.i
  br label %cost_calc.exit

bb.g:                                             ; preds = %bb.d
  %i.w = sitofp i32 %i.l to double
  %i.x = tail call double @sqrt(double noundef %i.w) #10
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double                ; 4 uses
  %i.aa = fdiv double 1.000000e+00, %i.z          ; 2 uses
  %i.ab = udiv i64 %i.r, %i.s
  %i.ac = icmp ugt i64 %i.g, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fdiv nsz double %i.t, %i.z
  %i.ae = uitofp i64 %i.g to double               ; 2 uses
  %i.af = tail call nsz double @llvm.minnum.f64(double %i.ad, double %i.ae)
  br label %cost_calc.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.y to i64
  %i.ah = mul i64 %i.g, %i.ag
  %i.ai = uitofp nsz i64 %i.ah to double
  %i.aj = uitofp i64 %i.g to double               ; 2 uses
  %i.ak = tail call nsz double @llvm.minnum.f64(double %i.ai, double %i.aj)
  br label %cost_calc.exit

cost_calc.exit:                                   ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.pre-phi.i = phi double [ %.pre.i, %bb.f ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ], [ %.pre.i, %bb.e ]
  %.053.i = phi double [ 1.000000e+00, %bb.f ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ 1.000000e+00, %bb.e ] ; 3 uses
  %.1.i = phi double [ %.pre.i, %bb.f ], [ %i.af, %bb.h ], [ %i.ak, %bb.i ], [ %i.t, %bb.e ] ; 3 uses
  %.051.i = phi double [ %i.v, %bb.f ], [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.al = fcmp olt double %.1.i, f0x4180000000000000
  %.0.i = select i1 %i.al, double 1.080000e-06, double 1.190000e-05 ; 2 uses
  %i.am = fmul double %.053.i, %.1.i
  %i.an = fdiv double %.pre-phi.i, %i.am
  %i.ao = mul i64 %i.g, %i.s                      ; 3 uses
  %i.ap = sitofp i64 %i.ao to double
  %i.aq = fdiv double %i.ap, %i.t
  %i.ar = fadd double %.053.i, -1.000000e+00
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %.0.i, double 4.820000e-06)
  %i.at = fadd double %.1.i, -1.000000e+00        ; 2 uses
  %i.au = fmul double %.053.i, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double 6.700000e-10, double %i.as)
  %i.aw = fmul double %i.an, %i.av
  %i.ax = fadd double %.051.i, -1.000000e+00
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %.0.i, double 4.820000e-06)
  %i.az = fmul double %i.at, %.051.i
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double 6.700000e-10, double %i.ay)
  %i.bb = fmul double %i.aq, %i.ba
  %i.bc = fadd double %i.aw, %i.bb                ; 2 uses
  %.not64 = icmp sgt i32 %.050, %i.l
  br i1 %.not64, label %cost_calc.exit62._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %cost_calc.exit
  %i.bd = uitofp i64 %i.g to double               ; 5 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.be = fdiv double %i.t, %i.bd
  %i.bf = icmp ugt i64 %i.g, %i.r
  %i.bg = zext nneg i32 %.050 to i64              ; 3 uses
  %.1.i58.us71 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.r) ; 2 uses
  %.1.i58.us = uitofp i64 %.1.i58.us71 to double  ; 2 uses
  %.051.i59.us = select i1 %i.bf, double 1.000000e+00, double %i.be ; 2 uses
  %i.bh = icmp ult i64 %.1.i58.us71, 33554432
  %.0.i60.us = select i1 %i.bh, double 1.080000e-06, double 1.190000e-05
  %i.bi = fdiv double %i.bd, %.1.i58.us
  %i.bj = insertelement <2 x double> poison, double %.1.i58.us, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %.051.i59.us, i64 1
  %i.bl = fadd <2 x double> %i.bk, splat (double -1.000000e+00) ; 2 uses
  %i.bm = insertelement <2 x double> <double 6.700000e-10, double poison>, double %.0.i60.us, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bm, <2 x double> splat (double 4.820000e-06)) ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fmul double %i.bi, %i.bo
  %i.bq = extractelement <2 x double> %i.bl, i64 0
  %i.br = fmul double %i.bq, %.051.i59.us
  %i.bs = extractelement <2 x double> %i.bn, i64 1
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.br, double 6.700000e-10, double %i.bs)
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.j
  %indvars.iv76 = phi i64 [ %i.bg, %.lr.ph.split.us.preheader ], [ %indvars.iv.next77, %bb.j ] ; 4 uses
  %.068.us = phi i32 [ 1, %.lr.ph.split.us.preheader ], [ %i.ch, %bb.j ]
  %.05166.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.ca, %bb.j ]
  %.05265.us = phi double [ %i.bc, %.lr.ph.split.us.preheader ], [ %i.by, %bb.j ] ; 2 uses
  %i.bu = udiv i64 %i.ao, %indvars.iv76
  %i.bv = uitofp nneg i64 %i.bu to double
  %i.bw = fdiv double %i.bv, %i.t
  %i.bx = fmul double %i.bw, %i.bt
  %i.by = fadd double %i.bp, %i.bx                ; 2 uses
  %i.bz = fsub double %.05265.us, %i.by           ; 2 uses
  %i.ca = fdiv double %i.bz, %.05265.us           ; 3 uses
  %i.cb = icmp eq i64 %indvars.iv76, %i.bg
  %i.cc = fsub double %.05166.us, %i.ca
  %i.cd = select i1 %i.cb, double %i.ca, double %i.cc
  %i.ce = fcmp olt double %i.cd, %i.e
  %i.cf = fcmp olt double %i.bz, 1.000000e-03
  %or.cond.us = or i1 %i.cf, %i.ce
  br i1 %or.cond.us, label %cost_calc.exit62._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, %i.bg ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next77 to i32
  %.not.us = icmp slt i32 %i.l, %i.cg
  %i.ch = trunc nuw nsw i64 %indvars.iv76 to i32  ; 2 uses
  br i1 %.not.us, label %cost_calc.exit62._crit_edge, label %.lr.ph.split.us, !llvm.loop !89

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ci = uitofp nneg i32 %i.l to double
  %i.cj = tail call double @sqrt(double noundef %i.ci) #10
  %i.ck = fptosi double %i.cj to i32              ; 2 uses
  %i.cl = sitofp i32 %i.ck to double              ; 4 uses
  %i.cm = fadd nnan double %i.cl, -1.000000e+00
  %i.cn = sext i32 %i.ck to i64
  %i.co = mul i64 %i.g, %i.cn
  %i.cp = uitofp nsz i64 %i.co to double
  %i.cq = fdiv nsz double %i.t, %i.cl
  %i.cr = tail call nsz double @llvm.minnum.f64(double %i.cq, double %i.bd)
  %i.cs = zext nneg i32 %.050 to i64              ; 3 uses
  %i.ct = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cu = insertelement <2 x double> poison, double %i.t, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.cm, i64 1
  %i.cw = insertelement <2 x double> poison, double %i.cl, i64 1
  br label %bb.l

bb.k:                                             ; preds = %cost_calc.exit62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.cs ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %i.l, %i.cx
  br i1 %.not, label %cost_calc.exit62._crit_edge, label %bb.l, !llvm.loop !89

bb.l:                                             ; preds = %.lr.ph.split, %bb.k
  %indvars.iv = phi i64 [ %i.cs, %.lr.ph.split ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.068 = phi i32 [ 1, %.lr.ph.split ], [ %i.cy, %bb.k ]
  %.05166 = phi double [ 0.000000e+00, %.lr.ph.split ], [ %i.ea, %bb.k ]
  %.05265 = phi double [ %i.bc, %.lr.ph.split ], [ %3, %bb.k ] ; 2 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cz = uitofp nneg i32 %i.cy to double         ; 2 uses
  %i.da = fdiv double %i.cz, %i.cl                ; 3 uses
  %i.db = mul nsw i64 %indvars.iv, %i.r
  %i.dc = udiv i64 %i.db, %i.s
  %i.dd = icmp ugt i64 %i.g, %i.dc
  br i1 %i.dd, label %cost_calc.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = fdiv nsz double %i.cp, %i.cz
  %i.df = tail call nsz double @llvm.minnum.f64(double %i.de, double %i.bd)
  br label %cost_calc.exit62

cost_calc.exit62:                                 ; preds = %bb.l, %bb.m
  %.1.i58 = phi double [ %i.df, %bb.m ], [ %i.cr, %bb.l ] ; 3 uses
  %i.dg = fcmp olt double %.1.i58, f0x4180000000000000
  %.0.i60 = select i1 %i.dg, double 1.080000e-06, double 1.190000e-05
  %i.dh = fmul double %i.da, %.1.i58
  %i.di = udiv i64 %i.ao, %indvars.iv
  %i.dj = uitofp nneg i64 %i.di to double
  %i.dk = fadd double %i.da, -1.000000e+00
  %i.dl = fadd double %.1.i58, -1.000000e+00
  %i.dm = insertelement <2 x double> %i.ct, double %i.dj, i64 1
  %i.dn = insertelement <2 x double> %i.cu, double %i.dh, i64 0
  %i.do = fdiv <2 x double> %i.dm, %i.dn
  %i.dp = insertelement <2 x double> %i.cv, double %i.dk, i64 0
  %i.dq = insertelement <2 x double> poison, double %.0.i60, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> splat (double 4.820000e-06))
  %i.dt = insertelement <2 x double> %i.cw, double %i.da, i64 0
  %i.du = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.dt, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> splat (double 6.700000e-10), <2 x double> %i.ds)
  %i.dy = fmul <2 x double> %i.do, %i.dx
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.dy) ; 2 uses
  %i.dz = fsub double %.05265, %3                 ; 2 uses
  %i.ea = fdiv double %i.dz, %.05265              ; 3 uses
  %i.eb = icmp eq i64 %indvars.iv, %i.cs
  %i.ec = fsub double %.05166, %i.ea
  %i.ed = select i1 %i.eb, double %i.ea, double %i.ec
  %i.ee = fcmp olt double %i.ed, %i.e
  %i.ef = fcmp olt double %i.dz, 1.000000e-03
  %or.cond = or i1 %i.ef, %i.ee
  br i1 %or.cond, label %cost_calc.exit62._crit_edge, label %bb.k

cost_calc.exit62._crit_edge:                      ; preds = %bb.k, %cost_calc.exit62, %bb.j, %.lr.ph.split.us, %cost_calc.exit
  %.0.lcssa = phi i32 [ 1, %cost_calc.exit ], [ %.068.us, %.lr.ph.split.us ], [ %i.ch, %bb.j ], [ %.068, %cost_calc.exit62 ], [ %i.cy, %bb.k ] ; 2 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.eh = tail call i32 %i.eg(ptr noundef nonnull @.str.1, i32 noundef 22) #10
  %i.ei = sdiv i32 %i.l, %i.eh
  %i.ej = icmp sgt i32 %.0.lcssa, %i.ei
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %cost_calc.exit62._crit_edge
  %i.ek = load i32, ptr %i.k, align 4, !tbaa !33
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.em = tail call i32 %i.el(ptr noundef nonnull @.str.1, i32 noundef 22) #10
  %i.en = sdiv i32 %i.ek, %i.em
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %cost_calc.exit62._crit_edge
  %.053 = phi i32 [ %i.eo, %bb.n ], [ %.0.lcssa, %cost_calc.exit62._crit_edge ] ; 5 uses
  store i32 %.053, ptr %1, align 4, !tbaa !35
  %i.ep = load i32, ptr %i.k, align 4, !tbaa !33  ; 2 uses
  %i.eq = sdiv i32 %i.ep, %.053                   ; 3 uses
  %i.er = srem i32 %i.ep, %.053                   ; 2 uses
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 224), align 8, !tbaa !58
  %i.et = and i32 %i.es, 32768
  %i.eu = add nsw i32 %i.eq, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %.lr.ph49.split.us.preheader.i, label %.lr.ph49.split.preheader.i

.lr.ph49.split.preheader.i:                       ; preds = %bb.o
  %i.ev = zext nneg i32 %.053 to i64              ; 2 uses
  %i.ew = sext i32 %i.er to i64
  br label %.lr.ph49.split.i

.lr.ph49.split.us.preheader.i:                    ; preds = %bb.o
  %i.ex = sext i32 %i.er to i64
  %wide.trip.count61.i = zext nneg i32 %.053 to i64
  br label %.lr.ph49.split.us.i

.lr.ph49.split.us.i:                              ; preds = %.loopexit.us.i, %.lr.ph49.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph49.split.us.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.us.i ] ; 3 uses
  %.03646.us.i = phi i32 [ 0, %.lr.ph49.split.us.preheader.i ], [ %.2.lcssa.us.i, %.loopexit.us.i ] ; 2 uses
  %i.ey = icmp slt i64 %indvars.iv58.i, %i.ex
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv58.i ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %..i = select i1 %i.ey, i32 %i.eu, i32 %i.eq    ; 2 uses
  store i32 %..i, ptr %i.fa, align 8, !tbaa !60
  %i.fb = icmp sgt i32 %..i, 0
  br i1 %i.fb, label %.lr.ph44.us.i, label %.loopexit.us.i

bb.p:                                             ; preds = %.lr.ph44.us.i, %bb.p
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph44.us.i ], [ %indvars.iv.next56.i, %bb.p ] ; 2 uses
  %.242.us.i = phi i32 [ %.03646.us.i, %.lr.ph44.us.i ], [ %i.fd, %bb.p ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv55.i
  store i32 %.242.us.i, ptr %i.fc, align 4, !tbaa !35
  %i.fd = add nsw i32 %.242.us.i, 1               ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.fe = load i32, ptr %i.fa, align 8, !tbaa !60
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next56.i, %i.ff
  br i1 %i.fg, label %bb.p, label %.loopexit.us.i, !llvm.loop !0

.loopexit.us.i:                                   ; preds = %bb.p, %.lr.ph49.split.us.i
  %.2.lcssa.us.i = phi i32 [ %.03646.us.i, %.lr.ph49.split.us.i ], [ %i.fd, %bb.p ]
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %mca_common_ompio_forced_grouping.exit, label %.lr.ph49.split.us.i, !llvm.loop !1

.lr.ph44.us.i:                                    ; preds = %.lr.ph49.split.us.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !61
  br label %bb.p

.lr.ph49.split.i:                                 ; preds = %.loopexit40.i, %.lr.ph49.split.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph49.split.preheader.i ], [ %indvars.iv.next53.i, %.loopexit40.i ] ; 4 uses
  %i.fj = icmp slt i64 %indvars.iv52.i, %i.ew
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv52.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %.65.i = select i1 %i.fj, i32 %i.eu, i32 %i.eq  ; 2 uses
  store i32 %.65.i, ptr %i.fl, align 8, !tbaa !60
  %i.fm = icmp sgt i32 %.65.i, 0
  br i1 %i.fm, label %.lr.ph.i, label %.loopexit40.i

.lr.ph.i:                                         ; preds = %.lr.ph49.split.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.fp = mul nuw nsw i64 %indvars.iv.i, %i.ev
  %i.fq = add nuw nsw i64 %i.fp, %indvars.iv52.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i
  %i.fs = trunc nuw i64 %i.fq to i32
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ft = load i32, ptr %i.fl, align 8, !tbaa !60
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next.i, %i.fu
  br i1 %i.fv, label %bb.q, label %.loopexit40.i, !llvm.loop !2

.loopexit40.i:                                    ; preds = %bb.q, %.lr.ph49.split.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %i.ev
  br i1 %exitcond.not.i, label %mca_common_ompio_forced_grouping.exit, label %.lr.ph49.split.i, !llvm.loop !1

mca_common_ompio_forced_grouping.exit:            ; preds = %.loopexit40.i, %.loopexit.us.i
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @mca_common_ompio_forced_grouping(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = sdiv i32 %i.b, %1                        ; 3 uses
  %i.d = srem i32 %i.b, %1                        ; 2 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 224), align 8, !tbaa !58
  %i.g = and i32 %i.f, 32768
  %i.h = add nsw i32 %i.c, 1                      ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph49.split.us.preheader, label %.lr.ph49.split.preheader

.lr.ph49.split.preheader:                         ; preds = %.lr.ph49
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = sext i32 %i.d to i64
  br label %.lr.ph49.split

.lr.ph49.split.us.preheader:                      ; preds = %.lr.ph49
  %i.k = sext i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %1 to i64
  br label %.lr.ph49.split.us

.lr.ph49.split.us:                                ; preds = %.lr.ph49.split.us.preheader, %.loopexit.us
  %indvars.iv58 = phi i64 [ 0, %.lr.ph49.split.us.preheader ], [ %indvars.iv.next59, %.loopexit.us ] ; 4 uses
  %.03646.us = phi i32 [ 0, %.lr.ph49.split.us.preheader ], [ %.2.lcssa.us, %.loopexit.us ] ; 2 uses
  %i.l = icmp slt i64 %indvars.iv58, %i.k
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv58
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %. = select i1 %i.l, i32 %i.h, i32 %i.c         ; 2 uses
  store i32 %., ptr %i.n, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv58 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = icmp sgt i32 %., 0
  br i1 %i.q, label %.lr.ph44.us, label %.loopexit.us

bb.b:                                             ; preds = %.lr.ph44.us, %bb.b
  %indvars.iv55 = phi i64 [ 0, %.lr.ph44.us ], [ %indvars.iv.next56, %bb.b ] ; 2 uses
  %.242.us = phi i32 [ %.03646.us, %.lr.ph44.us ], [ %i.s, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv55
  store i32 %.242.us, ptr %i.r, align 4, !tbaa !35
  %i.s = add nsw i32 %.242.us, 1                  ; 2 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.t = load i32, ptr %i.p, align 8, !tbaa !60
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next56, %i.u
  br i1 %i.v, label %bb.b, label %.loopexit.us, !llvm.loop !0

.loopexit.us:                                     ; preds = %bb.b, %.lr.ph49.split.us
  %.2.lcssa.us = phi i32 [ %.03646.us, %.lr.ph49.split.us ], [ %i.s, %bb.b ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge, label %.lr.ph49.split.us, !llvm.loop !1

.lr.ph44.us:                                      ; preds = %.lr.ph49.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  br label %bb.b

.lr.ph49.split:                                   ; preds = %.lr.ph49.split.preheader, %.loopexit40
  %indvars.iv52 = phi i64 [ 0, %.lr.ph49.split.preheader ], [ %indvars.iv.next53, %.loopexit40 ] ; 5 uses
  %i.y = icmp slt i64 %indvars.iv52, %i.j
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.65 = select i1 %i.y, i32 %i.h, i32 %i.c       ; 2 uses
  store i32 %.65, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv52 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = icmp sgt i32 %.65, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit40

.lr.ph:                                           ; preds = %.lr.ph49.split
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@mca_common_ompio_finalize_split:bb.a
  %wide.load143 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !35
  %wide.load144 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !35
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index142 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load143, ptr %i.cl, align 4, !tbaa !35
  store <4 x i32> %wide.load144, ptr %i.cm, align 4, !tbaa !35
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.cn, label %middle.block146, label %vector.body141, !llvm.loop !160

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %.loopexit61, label %.lr.ph68.preheader151

.lr.ph68.preheader151:                            ; preds = %.lr.ph68.preheader, %middle.block146
  %indvars.iv78.ph = phi i64 [ %n.vec140, %middle.block146 ], [ 0, %.lr.ph68.preheader ] ; 3 uses
  br i1 %lcmp.mod154.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader151, %.lr.ph68.prol
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %.lr.ph68.prol ], [ %indvars.iv78.ph, %.lr.ph68.preheader151 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader151 ]
  %i.co = trunc nuw nsw i64 %indvars.iv78.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.co
  %i.cp = sext i32 %.reass.prol to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv78.prol
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !35
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv78.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter153
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !161

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader151
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %.lr.ph68.preheader151 ], [ %indvars.iv.next79.prol, %.lr.ph68.prol ]
  %i.ct = sub nsw i64 %indvars.iv78.ph, %wide.trip.count81
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %.loopexit61, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.3, %.lr.ph68 ], [ %indvars.iv78.unr, %.lr.ph68.prol.loopexit ] ; 6 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv78 to i32
  %.reass = add i32 %invariant.op, %i.cv
  %i.cw = sext i32 %.reass to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !35
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv78
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !35
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next79 to i32
  %.reass.1 = add i32 %invariant.op, %i.da
  %i.db = sext i32 %.reass.1 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next79
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !35
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next79.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.df
  %i.dg = sext i32 %.reass.2 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next79.1
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !35
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78, 3 ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next79.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.dk
  %i.dl = sext i32 %.reass.3 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next79.2
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !35
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78, 4 ; 2 uses
  %exitcond82.not.3 = icmp eq i64 %indvars.iv.next79.3, %wide.trip.count81
  br i1 %exitcond82.not.3, label %.loopexit61, label %.lr.ph68, !llvm.loop !162

.lr.ph72:                                         ; preds = %bb.e, %.loopexit
  %indvar = phi i64 [ %indvar.next, %.loopexit ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.loopexit ], [ 0, %bb.e ] ; 3 uses
  %.not57 = icmp slt i64 %indvars.iv91, %indvars.iv88
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, %i.bn ; 3 uses
  %i.dp = icmp sge i64 %indvars.iv91, %indvars.iv.next89
  %or.cond.not104 = select i1 %.not57, i1 true, i1 %i.dp
  %brmerge = or i1 %or.cond.not104, %i.br
  br i1 %brmerge, label %.loopexit, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.lr.ph72
  %i.dq = mul i64 %i.bt, %indvar
  %invariant.gep = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv88 ; 6 uses
  %.reass166 = add i64 %i.dq, %invariant.op165
  %diff.check = icmp ult i64 %.reass166, 31
  %or.cond149 = select i1 %min.iters.check124, i1 true, i1 %diff.check
  br i1 %or.cond149, label %.lr.ph70.preheader150, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph70.preheader, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph70.preheader ] ; 3 uses
  %i.dr = getelementptr [4 x i8], ptr %invariant.gep, i64 %index128 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %wide.load129 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !35
  %wide.load130 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !35
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index128 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %wide.load129, ptr %i.dt, align 4, !tbaa !35
  store <4 x i32> %wide.load130, ptr %i.du, align 4, !tbaa !35
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.dv, label %middle.block132, label %vector.body127, !llvm.loop !163

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit, label %.lr.ph70.preheader150

.lr.ph70.preheader150:                            ; preds = %.lr.ph70.preheader, %middle.block132
  %indvars.iv83.ph = phi i64 [ 0, %.lr.ph70.preheader ], [ %n.vec126, %middle.block132 ] ; 3 uses
  br i1 %lcmp.mod156.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol

.lr.ph70.prol:                                    ; preds = %.lr.ph70.preheader150, %.lr.ph70.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %.lr.ph70.prol ], [ %indvars.iv83.ph, %.lr.ph70.preheader150 ] ; 3 uses
  %prol.iter157 = phi i64 [ %prol.iter157.next, %.lr.ph70.prol ], [ 0, %.lr.ph70.preheader150 ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv83.prol
  %i.dw = load i32, ptr %gep.prol, align 4, !tbaa !35
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv83.prol
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !35
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter157.next = add i64 %prol.iter157, 1   ; 2 uses
  %prol.iter157.cmp.not = icmp eq i64 %prol.iter157.next, %xtraiter155
  br i1 %prol.iter157.cmp.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol, !llvm.loop !164

.lr.ph70.prol.loopexit:                           ; preds = %.lr.ph70.prol, %.lr.ph70.preheader150
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %.lr.ph70.preheader150 ], [ %indvars.iv.next84.prol, %.lr.ph70.prol ]
  %i.dy = sub nsw i64 %indvars.iv83.ph, %wide.trip.count81
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %.lr.ph70 ], [ %indvars.iv83.unr, %.lr.ph70.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv83
  %i.ea = load i32, ptr %gep, align 4, !tbaa !35
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv83
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !35
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84
  %i.ec = load i32, ptr %gep.1, align 4, !tbaa !35
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next84
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !35
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84.1
  %i.ee = load i32, ptr %gep.2, align 4, !tbaa !35
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next84.1
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !35
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84.2
  %i.eg = load i32, ptr %gep.3, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next84.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !35
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %.loopexit, label %.lr.ph70, !llvm.loop !165

.loopexit:                                        ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %middle.block132, %.lr.ph72
  %i.ei = icmp slt i64 %indvars.iv.next89, %i.bq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ei, label %.lr.ph72, label %.loopexit61, !llvm.loop !166

.loopexit61:                                      ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68, %.loopexit, %middle.block146, %.preheader62, %bb.d
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.loopexit65, label %bb.d, !llvm.loop !167

.loopexit65:                                      ; preds = %.loopexit61, %.preheader64, %bb.c
  %.054 = phi i32 [ -2, %bb.c ], [ 0, %.preheader64 ], [ 0, %.loopexit61 ]
  ret i32 %.054
}

declare i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11ompi_file_t", !11, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS16opal_convertor_t", !11, i64 0}
!17 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"p1 _ZTS5iovec", !11, i64 0}
!22 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!23 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !11, i64 0}
!24 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !11, i64 0}
!25 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !11, i64 0}
!26 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !11, i64 0}
!27 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !11, i64 0}
!28 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !11, i64 0}
!29 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !11, i64 0}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"ompio_file_t", !8, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !14, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 88, !17, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !8, i64 124, !18, i64 128, !8, i64 136, !18, i64 144, !18, i64 152, !8, i64 160, !8, i64 164, !19, i64 168, !20, i64 176, !11, i64 184, !21, i64 192, !8, i64 200, !22, i64 208, !18, i64 216, !18, i64 224, !8, i64 232, !18, i64 240, !18, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !18, i64 280, !23, i64 288, !8, i64 296, !24, i64 304, !24, i64 312, !24, i64 320, !24, i64 328, !25, i64 336, !26, i64 344, !27, i64 352, !28, i64 360, !29, i64 368, !29, i64 376, !30, i64 384, !8, i64 392, !8, i64 396, !30, i64 400, !30, i64 408, !8, i64 416, !30, i64 424, !8, i64 432, !11, i64 440, !11, i64 448}
!32 = !{!31, !11, i64 448}
!33 = !{!31, !8, i64 36}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!37 = !{!"opal_object_t", !36, i64 0, !8, i64 8}
!38 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!39 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!40 = !{!"opal_hash_table_t", !37, i64 0, !38, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !39, i64 64}
!41 = !{!"opal_infosubscriber_t", !37, i64 0, !40, i64 16, !17, i64 88}
!42 = !{!"opal_mutex_t", !37, i64 0, !7, i64 16, !8, i64 56}
!43 = !{!"ompi_comm_extended_cid_t", !18, i64 0, !7, i64 8}
!44 = !{!"ompi_comm_extended_cid_block_t", !43, i64 0, !18, i64 16, !7, i64 24, !7, i64 25}
!45 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!46 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!47 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!48 = !{!"any p2 pointer", !11, i64 0}
!49 = !{!"p2 _ZTS20ompi_peruse_handle_t", !48, i64 0}
!50 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!51 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!52 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!53 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!54 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!55 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!56 = !{!"ompi_communicator_t", !41, i64 0, !42, i64 96, !15, i64 160, !43, i64 168, !44, i64 184, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !30, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !45, i64 264, !45, i64 272, !14, i64 280, !46, i64 288, !47, i64 296, !49, i64 304, !50, i64 312, !8, i64 320, !51, i64 328, !52, i64 336, !53, i64 344, !54, i64 352, !55, i64 360, !8, i64 368, !8, i64 372, !20, i64 376, !20, i64 377, !20, i64 378}
!57 = !{!"ompi_predefined_communicator_t", !56, i64 0, !7, i64 384}
!58 = !{!57, !8, i64 224}
!59 = !{!"", !13, i64 0, !30, i64 8, !8, i64 16}
!60 = !{!59, !8, i64 16}
!61 = !{!59, !30, i64 8}
!62 = !{!31, !21, i64 192}
!63 = !{!"iovec", !11, i64 0, !18, i64 8}
!64 = !{!63, !11, i64 0}
!65 = !{!63, !18, i64 8}
!66 = !{!13, !13, i64 0}
!67 = !{!31, !8, i64 32}
!68 = !{!31, !14, i64 48}
!69 = !{!56, !53, i64 344}
!70 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !11, i64 0}
!71 = !{!"p1 _ZTS11opal_list_t", !11, i64 0}
!72 = !{!"mca_coll_base_comm_coll_t", !11, i64 0, !70, i64 8, !11, i64 16, !70, i64 24, !11, i64 32, !70, i64 40, !11, i64 48, !70, i64 56, !11, i64 64, !70, i64 72, !11, i64 80, !70, i64 88, !11, i64 96, !70, i64 104, !11, i64 112, !70, i64 120, !11, i64 128, !70, i64 136, !11, i64 144, !70, i64 152, !11, i64 160, !70, i64 168, !11, i64 176, !70, i64 184, !11, i64 192, !70, i64 200, !11, i64 208, !70, i64 216, !11, i64 224, !70, i64 232, !11, i64 240, !70, i64 248, !11, i64 256, !70, i64 264, !11, i64 272, !70, i64 280, !11, i64 288, !70, i64 296, !11, i64 304, !70, i64 312, !11, i64 320, !70, i64 328, !11, i64 336, !70, i64 344, !11, i64 352, !70, i64 360, !11, i64 368, !70, i64 376, !11, i64 384, !70, i64 392, !11, i64 400, !70, i64 408, !11, i64 416, !70, i64 424, !11, i64 432, !70, i64 440, !11, i64 448, !70, i64 456, !11, i64 464, !70, i64 472, !11, i64 480, !70, i64 488, !11, i64 496, !70, i64 504, !11, i64 512, !70, i64 520, !11, i64 528, !70, i64 536, !11, i64 544, !70, i64 552, !11, i64 560, !70, i64 568, !11, i64 576, !70, i64 584, !11, i64 592, !70, i64 600, !11, i64 608, !70, i64 616, !11, i64 624, !70, i64 632, !11, i64 640, !70, i64 648, !11, i64 656, !70, i64 664, !11, i64 672, !70, i64 680, !11, i64 688, !70, i64 696, !11, i64 704, !70, i64 712, !11, i64 720, !70, i64 728, !11, i64 736, !70, i64 744, !11, i64 752, !70, i64 760, !11, i64 768, !70, i64 776, !11, i64 784, !70, i64 792, !11, i64 800, !70, i64 808, !11, i64 816, !70, i64 824, !11, i64 832, !70, i64 840, !11, i64 848, !70, i64 856, !11, i64 864, !70, i64 872, !11, i64 880, !70, i64 888, !11, i64 896, !70, i64 904, !11, i64 912, !70, i64 920, !11, i64 928, !70, i64 936, !11, i64 944, !70, i64 952, !11, i64 960, !70, i64 968, !11, i64 976, !70, i64 984, !11, i64 992, !70, i64 1000, !11, i64 1008, !70, i64 1016, !11, i64 1024, !70, i64 1032, !11, i64 1040, !70, i64 1048, !11, i64 1056, !70, i64 1064, !11, i64 1072, !70, i64 1080, !11, i64 1088, !70, i64 1096, !11, i64 1104, !71, i64 1112}
!73 = !{!72, !11, i64 0}
!74 = !{!72, !70, i64 8}
!75 = !{!31, !8, i64 392}
!76 = !{!31, !30, i64 384}
!77 = !{!31, !8, i64 396}
!78 = !{!31, !30, i64 400}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!31, !8, i64 432}
!81 = !{!31, !30, i64 424}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!31, !8, i64 416}
!85 = !{!31, !30, i64 408}
!86 = !{!30, !30, i64 0}
!87 = !{!"p1 long long", !11, i64 0}
!88 = !{!87, !87, i64 0}
!89 = distinct !{!89, !34}
!90 = !{!31, !18, i64 144}
!91 = !{!31, !18, i64 152}
!92 = !{!31, !8, i64 160}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = !{!59, !13, i64 0}
!96 = distinct !{!96, !34}
!97 = distinct !{!97, !34}
!98 = !{!56, !47, i64 296}
!99 = !{!7, !7, i64 0}
!100 = !{!"", !8, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !8, i64 32}
!101 = !{!100, !8, i64 0}
!102 = !{!100, !30, i64 8}
!103 = !{!100, !30, i64 16}
!104 = !{!100, !30, i64 24}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !79}
!109 = distinct !{!109, !34, !82, !83}
!110 = distinct !{!110, !79}
!111 = distinct !{!111, !34, !82}
!112 = distinct !{!112, !34, !82, !83}
!113 = distinct !{!113, !79}
!114 = distinct !{!114, !34, !82}
!115 = !{!31, !8, i64 104}
!116 = distinct !{!116, !34, !82, !83}
!117 = distinct !{!117, !79}
!118 = distinct !{!118, !34, !82}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = !{!72, !11, i64 32}
!122 = !{!72, !70, i64 40}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !79}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34, !130}
!129 = distinct !{!129, !34}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !34, !82, !83}
!134 = distinct !{!134, !79}
!135 = distinct !{!135, !34, !82}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !34}
!139 = !{!"mca_pml_base_module_2_1_0_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184}
!140 = !{!139, !11, i64 88}
!141 = !{!139, !11, i64 72}
!142 = !{!"ompi_request_fns_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!143 = !{!142, !11, i64 48}
!144 = distinct !{!144, !34, !82, !83}
!145 = distinct !{!145, !79}
!146 = distinct !{!146, !34, !82}
!147 = distinct !{!147, !34, !82, !83}
!148 = distinct !{!148, !34, !83, !82}
!149 = distinct !{!149, !34}
!150 = distinct !{!150, !79}
!151 = distinct !{!151, !34}
!152 = distinct !{!152, !34}
!153 = distinct !{!153, !79}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !34, !82, !83}
!159 = distinct !{!159, !34, !82}
!160 = distinct !{!160, !34, !82, !83}
!161 = distinct !{!161, !79}
!162 = distinct !{!162, !34, !82}
!163 = distinct !{!163, !34, !82, !83}
!164 = distinct !{!164, !79}
!165 = distinct !{!165, !34, !82}
!166 = distinct !{!166, !34}
!167 = distinct !{!167, !34}
!168 = !{!156}
!169 = !{!157}
end_hunk_1
