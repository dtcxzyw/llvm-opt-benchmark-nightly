inline.NumInlined: 38
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(15) @.str.23) #16
  %.not88.i = icmp eq i32 %i.cf, 0
  br i1 %.not88.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(16) @.str.24) #16
  %.not89.i = icmp eq i32 %i.cg, 0
  br i1 %.not89.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(23) @.str.25) #16
  %.not90.i = icmp eq i32 %i.ch, 0
  br i1 %.not90.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(14) @.str.26) #16
  %.not91.i = icmp eq i32 %i.ci, 0
  br i1 %.not91.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(7) @.str.27) #16
  %.not92.i = icmp eq i32 %i.cj, 0
  br i1 %.not92.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @PrintHelp()
  br label %ParseArgs.exit

bb.x:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ao) #15 ; 0 uses
  call fastcc void @PrintHelp()
  br label %ParseArgs.exit

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.h, %bb.g, %bb.d, %bb.c, %bb.q, %bb.o, %bb.m, %bb.k
  %i.cm = phi i32 [ %i.y, %bb.t ], [ %i.y, %bb.s ], [ %i.y, %bb.r ], [ %i.y, %bb.h ], [ %i.y, %bb.q ], [ %i.y, %bb.o ], [ %i.y, %bb.m ], [ %i.y, %bb.k ], [ %i.y, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ %i.y, %bb.u ] ; 2 uses
  %i.cn = phi i32 [ %i.z, %bb.t ], [ %i.z, %bb.s ], [ %i.z, %bb.r ], [ 1, %bb.h ], [ %i.z, %bb.q ], [ %i.z, %bb.o ], [ %i.z, %bb.m ], [ %i.z, %bb.k ], [ 0, %bb.g ], [ %i.z, %bb.d ], [ %i.z, %bb.c ], [ %i.z, %bb.u ] ; 2 uses
  %i.co = phi ptr [ %i.aa, %bb.t ], [ %i.aa, %bb.s ], [ %i.aa, %bb.r ], [ %i.aa, %bb.h ], [ %i.aa, %bb.q ], [ %i.aa, %bb.o ], [ %i.aa, %bb.m ], [ %i.bl, %bb.k ], [ %i.aa, %bb.g ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.u ] ; 2 uses
  %i.cp = phi double [ %i.ab, %bb.t ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ], [ %i.ab, %bb.h ], [ %i.ab, %bb.q ], [ %i.ab, %bb.o ], [ %i.br, %bb.m ], [ %i.ab, %bb.k ], [ %i.ab, %bb.g ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ], [ %i.ab, %bb.u ] ; 2 uses
  %i.cq = phi double [ %i.ac, %bb.t ], [ %i.ac, %bb.s ], [ %i.ac, %bb.r ], [ %i.ac, %bb.h ], [ %i.ac, %bb.q ], [ %i.bx, %bb.o ], [ %i.ac, %bb.m ], [ %i.ac, %bb.k ], [ %i.ac, %bb.g ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ], [ %i.ac, %bb.u ] ; 2 uses
  %i.cr = phi i32 [ %i.ad, %bb.t ], [ %i.ad, %bb.s ], [ %i.ad, %bb.r ], [ %i.ad, %bb.h ], [ %i.ce, %bb.q ], [ %i.ad, %bb.o ], [ %i.ad, %bb.m ], [ %i.ad, %bb.k ], [ %i.ad, %bb.g ], [ %i.ad, %bb.d ], [ %i.ad, %bb.c ], [ %i.ad, %bb.u ] ; 2 uses
  %i.cs = phi i32 [ %i.ae, %bb.t ], [ %i.ae, %bb.s ], [ 1, %bb.r ], [ %i.ae, %bb.h ], [ %i.ae, %bb.q ], [ %i.ae, %bb.o ], [ %i.ae, %bb.m ], [ %i.ae, %bb.k ], [ %i.ae, %bb.g ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ], [ %i.ae, %bb.u ] ; 2 uses
  %i.ct = phi i32 [ %i.af, %bb.t ], [ 0, %bb.s ], [ %i.af, %bb.r ], [ %i.af, %bb.h ], [ %i.af, %bb.q ], [ %i.af, %bb.o ], [ %i.af, %bb.m ], [ %i.af, %bb.k ], [ %i.af, %bb.g ], [ %i.af, %bb.d ], [ %i.af, %bb.c ], [ %i.af, %bb.u ] ; 2 uses
  %i.cu = phi i32 [ 1, %bb.t ], [ %i.ag, %bb.s ], [ %i.ag, %bb.r ], [ %i.ag, %bb.h ], [ %i.ag, %bb.q ], [ %i.ag, %bb.o ], [ %i.ag, %bb.m ], [ %i.ag, %bb.k ], [ %i.ag, %bb.g ], [ %i.ag, %bb.d ], [ %i.ag, %bb.c ], [ %i.ag, %bb.u ] ; 2 uses
  %i.cv = phi i32 [ %i.ah, %bb.t ], [ %i.ah, %bb.s ], [ %i.ah, %bb.r ], [ %i.ah, %bb.h ], [ %i.ah, %bb.q ], [ %i.ah, %bb.o ], [ %i.ah, %bb.m ], [ %i.ah, %bb.k ], [ %i.ah, %bb.g ], [ %i.ah, %bb.d ], [ %i.ah, %bb.c ], [ 1, %bb.u ] ; 2 uses
  %i.cw = phi ptr [ %i.ai, %bb.t ], [ %i.ai, %bb.s ], [ %i.ai, %bb.r ], [ %i.ai, %bb.h ], [ %i.ai, %bb.q ], [ %i.ai, %bb.o ], [ %i.ai, %bb.m ], [ %i.bl, %bb.k ], [ %i.ai, %bb.g ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ], [ %i.ai, %bb.u ] ; 3 uses
  %i.cx = phi i32 [ %i.aj, %bb.t ], [ %i.aj, %bb.s ], [ %i.aj, %bb.r ], [ %i.aj, %bb.h ], [ %i.aj, %bb.q ], [ %i.aj, %bb.o ], [ %i.aj, %bb.m ], [ %i.aj, %bb.k ], [ %i.aj, %bb.g ], [ %i.aj, %bb.d ], [ %i.aj, %bb.c ], [ 1, %bb.u ] ; 3 uses
  %i.cy = phi i32 [ %i.ak, %bb.t ], [ %i.ak, %bb.s ], [ %i.ak, %bb.r ], [ 1, %bb.h ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.m ], [ %i.ak, %bb.k ], [ 0, %bb.g ], [ %i.ak, %bb.d ], [ %i.ak, %bb.c ], [ %i.ak, %bb.u ] ; 4 uses
  %i.cz = phi i32 [ %i.al, %bb.t ], [ %i.al, %bb.s ], [ %i.al, %bb.r ], [ %i.al, %bb.h ], [ %i.al, %bb.q ], [ %i.al, %bb.o ], [ %i.al, %bb.m ], [ %i.al, %bb.k ], [ %i.al, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ %i.al, %bb.u ] ; 3 uses
  %.1.i = phi i32 [ %.095.i, %bb.t ], [ %.095.i, %bb.s ], [ %.095.i, %bb.r ], [ %i.az, %bb.h ], [ %i.bz, %bb.q ], [ %i.bt, %bb.o ], [ %i.bn, %bb.m ], [ %i.bi, %bb.k ], [ %i.az, %bb.g ], [ %i.aq, %bb.d ], [ %i.aq, %bb.c ], [ %.095.i, %bb.u ]
  %i.da = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.db = icmp slt i32 %i.da, %0
  br i1 %i.db, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.y
  store i32 %i.cv, ptr %i.v, align 8
  store i32 %i.cu, ptr %i.r, align 4
  store i32 %i.ct, ptr %i.s, align 16
  store i32 %i.cs, ptr %i.q, align 4
  store i32 %i.cr, ptr %i.w, align 8
  store double %i.cq, ptr %i.u, align 8
  store double %i.cp, ptr %i.t, align 16
  store ptr %i.co, ptr %i.p, align 16
  store i32 %i.cn, ptr %i.o, align 4
  store i32 %i.cm, ptr %2, align 16
  %i.dc = icmp eq ptr %i.cw, null
  br i1 %i.dc, label %._crit_edge.thread.i, label %bb.z

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.not = icmp eq i32 %i.cy, 0
  %spec.select = select i1 %.not, ptr @.str.29, ptr @.str.30
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.thread.i, %bb.b
  %.str.29.sink = phi ptr [ @.str.29, %bb.b ], [ %spec.select, %._crit_edge.thread.i ] ; 2 uses
  %.ph111.ph = phi i32 [ 0, %bb.b ], [ %i.cx, %._crit_edge.thread.i ]
  %.ph112.ph = phi i32 [ 0, %bb.b ], [ %i.cy, %._crit_edge.thread.i ]
  %.ph113.ph = phi i32 [ 0, %bb.b ], [ %i.cz, %._crit_edge.thread.i ]
  store ptr %.str.29.sink, ptr %i.p, align 16, !tbaa !25
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %._crit_edge.i
  %.ph = phi ptr [ %i.cw, %._crit_edge.i ], [ %.str.29.sink, %.sink.split ] ; 2 uses
  %.ph111 = phi i32 [ %i.cx, %._crit_edge.i ], [ %.ph111.ph, %.sink.split ]
  %.ph112 = phi i32 [ %i.cy, %._crit_edge.i ], [ %.ph112.ph, %.sink.split ]
  %.ph113 = phi i32 [ %i.cz, %._crit_edge.i ], [ %.ph113.ph, %.sink.split ]
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.de = call ptr @N_VNew_Serial(i64 noundef 4, ptr noundef %i.dd) #14
  store ptr %i.de, ptr %3, align 8, !tbaa !26
  %.not92 = icmp eq i32 %.ph111, 0
  br i1 %.not92, label %check_retval.exit101, label %.preheader

check_retval.exit101:                             ; preds = %bb.z
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !9
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.df)
  %.pre = load ptr, ptr %3, align 8, !tbaa !26
  br label %bb.ag

.preheader:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.dg = call ptr @ARKodeSPRKTable_LoadByName(ptr noundef nonnull %.ph) #14 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !29 ; 5 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dj = call ptr @N_VClone(ptr noundef %i.di) #14 ; 4 uses
  %i.dk = call ptr @N_VClone(ptr noundef %i.di) #14 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !19
  %i.dl = icmp sgt i32 %i.dh, 2
  %i.dm = select i1 %i.dl, double 1.000000e-01, double 1.000000e-03 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store double 1.000000e-03, ptr %i.t, align 16, !tbaa !32
  store i32 0, ptr %2, align 16, !tbaa !33
  store i32 1, ptr %i.o, align 4, !tbaa !34
  store ptr @.str.2, ptr %i.p, align 16, !tbaa !25
  call void @ARKodeSPRKTable_Free(ptr noundef nonnull %i.dg) #14
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !9
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.dn)
  %i.do = load ptr, ptr %3, align 8, !tbaa !26
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.do, ptr noundef %i.dj) #14
  store i32 %.ph113, ptr %2, align 16, !tbaa !33
  store i32 %.ph112, ptr %i.o, align 4, !tbaa !34
  store ptr %.ph, ptr %i.p, align 16, !tbaa !25
  %exp2 = call double @exp2(double -0.000000e+00) #14 ; 0 uses
  store double %i.dm, ptr %i.j, align 16, !tbaa !19
  %exp2.1 = call double @exp2(double -1.000000e+00) #14 ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %exp2.2 = call double @exp2(double -2.000000e+00) #14 ; 0 uses
  %i.dq = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ds = fmul nnan <2 x double> %i.dr, <double 5.000000e-01, double 2.500000e-01>
  store <2 x double> %i.ds, ptr %i.dp, align 8, !tbaa !19
  %exp2.3 = call double @exp2(double -3.000000e+00) #14 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %exp2.4 = call double @exp2(double -4.000000e+00) #14 ; 0 uses
  %i.du = fmul nnan <2 x double> %i.dr, <double 1.250000e-01, double 6.250000e-02>
  store <2 x double> %i.du, ptr %i.dt, align 8, !tbaa !19
  %exp2.5 = call double @exp2(double -5.000000e+00) #14 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %exp2.6 = call double @exp2(double -6.000000e+00) #14 ; 0 uses
  %i.dw = fmul nnan <2 x double> %i.dr, <double 3.125000e-02, double 1.562500e-02>
  store <2 x double> %i.dw, ptr %i.dv, align 8, !tbaa !19
  %exp2.7 = call double @exp2(double -7.000000e+00) #14 ; 0 uses
  %i.dx = fmul nnan double %i.dm, 7.812500e-03
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store double %i.dx, ptr %i.dy, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store double %i.dm, ptr %i.t, align 16, !tbaa !32
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !9
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.ea)
  %putchar.peel = call i32 @putchar(i32 10)       ; 0 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !26
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.eb, double noundef -1.000000e+00, ptr noundef %i.dj, ptr noundef %i.dk) #14
  %i.ec = call double @N_VDotProd(ptr noundef %i.dk, ptr noundef %i.dk) #14
  %i.ed = fcmp ugt double %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.aa, label %.peel.next

bb.aa:                                            ; preds = %.preheader
  %i.ee = call double @N_VDotProd(ptr noundef %i.dk, ptr noundef %i.dk) #14
  %i.ef = call double @sqrt(double noundef %i.ee) #14
  br label %.peel.next

.peel.next:                                       ; preds = %bb.aa, %.preheader
  %i.eg = phi double [ %i.ef, %bb.aa ], [ 0.000000e+00, %.preheader ]
  %i.eh = call i64 @N_VGetLength(ptr noundef %i.dk) #14
  %i.ei = sitofp i64 %i.eh to double
  %i.ej = fdiv double %i.eg, %i.ei                ; 2 uses
  store double %i.ej, ptr %i.d, align 16, !tbaa !19
  %i.ek = load double, ptr %i.dz, align 8, !tbaa !35
  %i.el = call double @llvm.fabs.f64(double %i.ek) ; 2 uses
  store double %i.el, ptr %i.e, align 16, !tbaa !19
  %i.em = call double @llvm.log.f64(double %i.dm) ; 2 uses
  %i.en = call double @log(double noundef %i.ej) #14 ; 2 uses
  %i.eo = call double @llvm.log.f64(double %i.dm)
  %i.ep = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.en, i64 1 ; 2 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.eo, i64 1
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.er, <2 x double> zeroinitializer)
  %i.et = call double @log(double noundef %i.el) #14 ; 2 uses
  %i.eu = insertelement <4 x double> poison, double %i.em, i64 0
  %i.ev = insertelement <4 x double> %i.eu, double %i.et, i64 1
  %i.ew = insertelement <4 x double> %i.ev, double %i.en, i64 2
  %i.ex = fadd <4 x double> %i.ew, <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison>
  %i.ey = shufflevector <4 x double> %i.ex, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ez = call double @llvm.log.f64(double %i.dm)
  %i.fa = call double @llvm.fmuladd.f64(double %i.et, double %i.ez, double 0.000000e+00)
  br label %bb.ab

bb.ab:                                            ; preds = %.peel.next, %bb.ad
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %.082182 = phi double [ 1.000000e+00, %.peel.next ], [ %i.ft, %bb.ad ]
  %.084180 = phi double [ %i.fa, %.peel.next ], [ %i.gi, %bb.ad ]
  %i.fb = phi <2 x double> [ %i.es, %.peel.next ], [ %i.ga, %bb.ad ]
  %i.fc = phi <4 x double> [ %i.ey, %.peel.next ], [ %i.gg, %bb.ad ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19 ; 5 uses
  store double %i.fe, ptr %i.t, align 16, !tbaa !32
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !9
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.ff)
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.fg = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fg, double noundef -1.000000e+00, ptr noundef %i.dj, ptr noundef %i.dk) #14
  %i.fh = call double @N_VDotProd(ptr noundef %i.dk, ptr noundef %i.dk) #14
  %i.fi = fcmp ugt double %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = call double @N_VDotProd(ptr noundef %i.dk, ptr noundef %i.dk) #14
  %i.fk = call double @sqrt(double noundef %i.fj) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fl = phi double [ %i.fk, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.fm = call i64 @N_VGetLength(ptr noundef %i.dk) #14
  %i.fn = sitofp i64 %i.fm to double
  %i.fo = fdiv double %i.fl, %i.fn                ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.fo, ptr %i.fp, align 8, !tbaa !19
  %i.fq = load double, ptr %i.dz, align 8, !tbaa !35
  %i.fr = call double @llvm.fabs.f64(double %i.fq) ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.fr, ptr %i.fs, align 8, !tbaa !19
  %i.ft = fadd double %.082182, 1.000000e+00      ; 3 uses
  %i.fu = call double @log(double noundef %i.fe) #14 ; 2 uses
  %i.fv = call double @log(double noundef %i.fo) #14 ; 2 uses
  %i.fw = call double @log(double noundef %i.fe) #14
  %i.fx = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fv, i64 1 ; 2 uses
  %i.fz = insertelement <2 x double> %i.fy, double %i.fw, i64 1
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.fz, <2 x double> %i.fb) ; 3 uses
  %i.gb = call double @log(double noundef %i.fr) #14 ; 2 uses
  %i.gc = insertelement <4 x double> poison, double %i.fu, i64 0
  %i.gd = insertelement <4 x double> %i.gc, double %i.gb, i64 1
  %i.ge = insertelement <4 x double> %i.gd, double %i.fv, i64 2
  %i.gf = shufflevector <4 x double> %i.ge, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gg = fadd <4 x double> %i.fc, %i.gf          ; 5 uses
  %i.gh = call double @log(double noundef %i.fe) #14
  %i.gi = call double @llvm.fmuladd.f64(double %i.gb, double %i.gh, double %.084180) ; 2 uses
  %4 = add nsw i64 %indvars.iv, -1                ; 5 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %4
  %i.gj = load double, ptr %5, align 8, !tbaa !19
  %i.gk = fdiv double %i.fo, %i.gj
  %i.gl = call double @log(double noundef %i.gk) #14
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %4
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !19
  %i.go = fdiv double %i.fe, %i.gn                ; 2 uses
  %i.gp = call double @log(double noundef %i.go) #14
  %i.gq = fdiv double %i.gl, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4
  store double %i.gq, ptr %i.gr, align 8, !tbaa !19
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %4
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !19
  %i.gu = fdiv double %i.fr, %i.gt
  %i.gv = call double @log(double noundef %i.gu) #14
  %i.gw = call double @log(double noundef %i.go) #14
  %i.gx = fdiv double %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %4
  store double %i.gx, ptr %i.gy, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.ab, !llvm.loop !36

.loopexit:                                        ; preds = %bb.ad
  %i.gz = sitofp i32 %i.dh to double
  %i.ha = extractelement <2 x double> %i.ga, i64 0 ; 2 uses
  %i.hb = extractelement <2 x double> %i.ga, i64 1
  %i.hc = extractelement <4 x double> %i.gg, i64 0 ; 2 uses
  %i.hd = extractelement <4 x double> %i.gg, i64 2
  %i.he = extractelement <4 x double> %i.gg, i64 3 ; 2 uses
  call fastcc void @ComputeConvergence(ptr noundef %i.b, double noundef %i.ft, double noundef %i.hc, double noundef %i.he, double noundef %i.ha, double noundef %i.hd, double noundef %i.hb, ptr noundef %i.h, ptr noundef %i.f, ptr noundef %i.i)
  %i.hf = load double, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.hg = fpext double %i.hf to x86_fp80
  %i.hh = load double, ptr %i.h, align 8, !tbaa !19
  %i.hi = fpext double %i.hh to x86_fp80
  %i.hj = load double, ptr %i.i, align 8, !tbaa !19
  %i.hk = fpext double %i.hj to x86_fp80
  %i.hl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.dh, x86_fp80 noundef %i.hg, x86_fp80 noundef %i.hi, x86_fp80 noundef %i.hk) ; 0 uses
  %i.hm = extractelement <4 x double> %i.gg, i64 1
  call fastcc void @ComputeConvergence(ptr noundef %i.c, double noundef %i.ft, double noundef %i.hc, double noundef %i.he, double noundef %i.ha, double noundef %i.hm, double noundef %i.gi, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.i)
  %i.hn = load double, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.ho = fpext double %i.hn to x86_fp80
  %i.hp = load double, ptr %i.h, align 8, !tbaa !19
  %i.hq = fpext double %i.hp to x86_fp80
  %i.hr = load double, ptr %i.i, align 8, !tbaa !19
  %i.hs = fpext double %i.hr to x86_fp80
  %i.ht = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.dh, x86_fp80 noundef %i.ho, x86_fp80 noundef %i.hq, x86_fp80 noundef %i.hs) ; 0 uses
  %i.hu = fadd double %i.gz, -5.000000e-01        ; 2 uses
  %i.hv = fcmp olt double %i.hf, %i.hu
  br i1 %i.hv, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.hw = fcmp olt double %i.hn, %i.hu
  br i1 %i.hw, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae, %.loopexit
  %.str.7.sink = phi ptr [ @.str.6, %.loopexit ], [ @.str.7, %bb.ae ]
  %i.hx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.7.sink, i32 noundef %i.dh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %ParseArgs.exit

bb.af:                                            ; preds = %bb.ae
  call void @N_VDestroy(ptr noundef %i.dj) #14
  call void @N_VDestroy(ptr noundef %i.dk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %check_retval.exit101
  %i.hy = phi ptr [ %i.fg, %bb.af ], [ %.pre, %check_retval.exit101 ]
  call void @N_VDestroy(ptr noundef %i.hy) #14
  %i.hz = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #14 ; 0 uses
  br label %ParseArgs.exit

ParseArgs.exit:                                   ; preds = %.thread, %bb.x, %bb.w, %bb.i, %bb.e, %check_retval.exit, %bb.ag
  %.1 = phi i32 [ 1, %bb.x ], [ 1, %check_retval.exit ], [ 0, %bb.ag ], [ 1, %.thread ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SolveProblem(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [256 x i8], align 16              ; 8 uses
  %i.d = alloca [256 x i8], align 16              ; 8 uses
  %i.e = alloca double, align 8                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !32 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !41 ; 7 uses
  %i.u = sitofp i32 %i.n to double
  %i.v = fdiv double %i.t, %i.u                   ; 3 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.x = tail call i64 @fwrite(ptr nonnull @.str.64, i64 19, i64 1, ptr %i.w) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.z = load i32, ptr %i.i, align 4, !tbaa !34
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.65, i32 noundef %i.z) #14 ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ac = load i32, ptr %0, align 8, !tbaa !33
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.66, i32 noundef %i.ac) #14 ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !18
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.67, i32 noundef %i.ag) #14 ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !39
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.68, i32 noundef %i.aj) #14 ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.am = load double, ptr %i.q, align 8, !tbaa !32
  %i.an = fpext double %i.am to x86_fp80
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.69, x86_fp80 noundef %i.an) #14 ; 0 uses
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.aq = load double, ptr %i.s, align 8, !tbaa !41
  %i.ar = fpext double %i.aq to x86_fp80
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.70, x86_fp80 noundef %i.ar) #14 ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.au = load i32, ptr %i.m, align 8, !tbaa !40
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.71, i32 noundef %i.au) #14 ; 0 uses
  %i.aw = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #18 ; 4 uses
  store double 6.000000e-01, ptr %i.aw, align 8, !tbaa !42
  %i.ax = tail call ptr @N_VNew_Serial(i64 noundef 4, ptr noundef %2) #14 ; 26 uses
  %i.ay = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ax) #14 ; 4 uses
  %i.az = tail call ptr @N_VGetArrayPointer(ptr noundef %i.ax) #14 ; 3 uses
  store double 4.000000e-01, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store double 2.000000e+00, ptr %i.bb, align 8, !tbaa !19
  %i.bc = icmp eq i32 %i.j, 0                     ; 2 uses
  br i1 %i.bc, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.bd = tail call ptr @SPRKStepCreate(ptr noundef nonnull @force, ptr noundef nonnull @velocity, double noundef 0.000000e+00, ptr noundef %i.ax, ptr noundef %2) #14 ; 8 uses
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !38
  %.not163 = icmp eq i32 %i.g, 0
  br i1 %.not163, label %bb.c, label %check_retval.exit

check_retval.exit:                                ; preds = %bb.b
  %i.be = tail call i32 @ARKodeRootInit(ptr noundef %i.bd, i32 noundef 1, ptr noundef nonnull @rootfn) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %check_retval.exit, %bb.b
  %i.bf = tail call i32 @SPRKStepSetMethodName(ptr noundef %i.bd, ptr noundef %i.p) #14 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %check_retval.exit183, label %bb.d

check_retval.exit183:                             ; preds = %bb.c
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.44, i32 noundef %i.bf) #15 ; 0 uses
  br label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.bj = tail call i32 @ARKodeSetUseCompensatedSums(ptr noundef %i.bd, i32 noundef %i.l) #14 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %check_retval.exit185, label %bb.e

check_retval.exit185:                             ; preds = %bb.d
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.45, i32 noundef %i.bj) #15 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.bn = icmp eq i32 %i.h, 0
  br i1 %i.bn, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bo = tail call i32 @ARKodeSetFixedStep(ptr noundef %i.bd, double noundef %i.r) #14 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %check_retval.exit187, label %bb.g

check_retval.exit187:                             ; preds = %bb.f
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, i32 noundef %i.bo) #15 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.f
  %i.bs = fdiv double %i.t, %i.r
end_hunk_0
