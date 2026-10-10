Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_kepler?download=true
inline.NumInlined: 38
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.n:                                             ; preds = %bb.l
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(5) @.str.21) #16
  %.not87.i = icmp eq i32 %i.bq, 0
  br i1 %.not87.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.096.i, 1                  ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = call double @strtod(ptr noundef nonnull captures(none) %i.bu, ptr noundef null) #14, !inline_history !27
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(7) @.str.22) #16
  %.not88.i = icmp eq i32 %i.bw, 0
  br i1 %.not88.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = add nsw i32 %.096.i, 1                  ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cb = call i64 @strtol(ptr noundef nonnull captures(none) %i.ca, ptr noundef null, i32 noundef 10) #14, !inline_history !28
  %i.cc = trunc i64 %i.cb to i32
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.cd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(15) @.str.23) #16
  %.not89.i = icmp eq i32 %i.cd, 0
  br i1 %.not89.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(16) @.str.24) #16
  %.not90.i = icmp eq i32 %i.ce, 0
  br i1 %.not90.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(23) @.str.25) #16
  %.not91.i = icmp eq i32 %i.cf, 0
  br i1 %.not91.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(14) @.str.26) #16
  %.not92.i = icmp eq i32 %i.cg, 0
  br i1 %.not92.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(7) @.str.27) #16
  %.not93.i = icmp eq i32 %i.ch, 0
  br i1 %.not93.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call fastcc void @PrintHelp()
  br label %ParseArgs.exit

bb.x:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ao) #15 ; 0 uses
  call fastcc void @PrintHelp()
  br label %ParseArgs.exit

bb.y:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.h, %bb.g, %bb.d, %bb.c, %bb.q, %bb.o, %bb.m, %bb.k
  %i.ck = phi i32 [ %i.y, %bb.t ], [ %i.y, %bb.s ], [ %i.y, %bb.r ], [ %i.y, %bb.h ], [ %i.y, %bb.q ], [ %i.y, %bb.o ], [ %i.y, %bb.m ], [ %i.y, %bb.k ], [ %i.y, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ %i.y, %bb.u ] ; 2 uses
  %i.cl = phi i32 [ %i.z, %bb.t ], [ %i.z, %bb.s ], [ %i.z, %bb.r ], [ 1, %bb.h ], [ %i.z, %bb.q ], [ %i.z, %bb.o ], [ %i.z, %bb.m ], [ %i.z, %bb.k ], [ 0, %bb.g ], [ %i.z, %bb.d ], [ %i.z, %bb.c ], [ %i.z, %bb.u ] ; 2 uses
  %i.cm = phi ptr [ %i.aa, %bb.t ], [ %i.aa, %bb.s ], [ %i.aa, %bb.r ], [ %i.aa, %bb.h ], [ %i.aa, %bb.q ], [ %i.aa, %bb.o ], [ %i.aa, %bb.m ], [ %i.bj, %bb.k ], [ %i.aa, %bb.g ], [ %i.aa, %bb.d ], [ %i.aa, %bb.c ], [ %i.aa, %bb.u ] ; 2 uses
  %i.cn = phi double [ %i.ab, %bb.t ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ], [ %i.ab, %bb.h ], [ %i.ab, %bb.q ], [ %i.ab, %bb.o ], [ %i.bp, %bb.m ], [ %i.ab, %bb.k ], [ %i.ab, %bb.g ], [ %i.ab, %bb.d ], [ %i.ab, %bb.c ], [ %i.ab, %bb.u ] ; 2 uses
  %i.co = phi double [ %i.ac, %bb.t ], [ %i.ac, %bb.s ], [ %i.ac, %bb.r ], [ %i.ac, %bb.h ], [ %i.ac, %bb.q ], [ %i.bv, %bb.o ], [ %i.ac, %bb.m ], [ %i.ac, %bb.k ], [ %i.ac, %bb.g ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ], [ %i.ac, %bb.u ] ; 2 uses
  %i.cp = phi i32 [ %i.ad, %bb.t ], [ %i.ad, %bb.s ], [ %i.ad, %bb.r ], [ %i.ad, %bb.h ], [ %i.cc, %bb.q ], [ %i.ad, %bb.o ], [ %i.ad, %bb.m ], [ %i.ad, %bb.k ], [ %i.ad, %bb.g ], [ %i.ad, %bb.d ], [ %i.ad, %bb.c ], [ %i.ad, %bb.u ] ; 2 uses
  %i.cq = phi i32 [ %i.ae, %bb.t ], [ %i.ae, %bb.s ], [ 1, %bb.r ], [ %i.ae, %bb.h ], [ %i.ae, %bb.q ], [ %i.ae, %bb.o ], [ %i.ae, %bb.m ], [ %i.ae, %bb.k ], [ %i.ae, %bb.g ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ], [ %i.ae, %bb.u ] ; 2 uses
  %i.cr = phi i32 [ %i.af, %bb.t ], [ 0, %bb.s ], [ %i.af, %bb.r ], [ %i.af, %bb.h ], [ %i.af, %bb.q ], [ %i.af, %bb.o ], [ %i.af, %bb.m ], [ %i.af, %bb.k ], [ %i.af, %bb.g ], [ %i.af, %bb.d ], [ %i.af, %bb.c ], [ %i.af, %bb.u ] ; 2 uses
  %i.cs = phi i32 [ 1, %bb.t ], [ %i.ag, %bb.s ], [ %i.ag, %bb.r ], [ %i.ag, %bb.h ], [ %i.ag, %bb.q ], [ %i.ag, %bb.o ], [ %i.ag, %bb.m ], [ %i.ag, %bb.k ], [ %i.ag, %bb.g ], [ %i.ag, %bb.d ], [ %i.ag, %bb.c ], [ %i.ag, %bb.u ] ; 2 uses
  %i.ct = phi i32 [ %i.ah, %bb.t ], [ %i.ah, %bb.s ], [ %i.ah, %bb.r ], [ %i.ah, %bb.h ], [ %i.ah, %bb.q ], [ %i.ah, %bb.o ], [ %i.ah, %bb.m ], [ %i.ah, %bb.k ], [ %i.ah, %bb.g ], [ %i.ah, %bb.d ], [ %i.ah, %bb.c ], [ 1, %bb.u ] ; 2 uses
  %i.cu = phi ptr [ %i.ai, %bb.t ], [ %i.ai, %bb.s ], [ %i.ai, %bb.r ], [ %i.ai, %bb.h ], [ %i.ai, %bb.q ], [ %i.ai, %bb.o ], [ %i.ai, %bb.m ], [ %i.bj, %bb.k ], [ %i.ai, %bb.g ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ], [ %i.ai, %bb.u ] ; 3 uses
  %i.cv = phi i32 [ %i.aj, %bb.t ], [ %i.aj, %bb.s ], [ %i.aj, %bb.r ], [ %i.aj, %bb.h ], [ %i.aj, %bb.q ], [ %i.aj, %bb.o ], [ %i.aj, %bb.m ], [ %i.aj, %bb.k ], [ %i.aj, %bb.g ], [ %i.aj, %bb.d ], [ %i.aj, %bb.c ], [ 1, %bb.u ] ; 3 uses
  %i.cw = phi i32 [ %i.ak, %bb.t ], [ %i.ak, %bb.s ], [ %i.ak, %bb.r ], [ 1, %bb.h ], [ %i.ak, %bb.q ], [ %i.ak, %bb.o ], [ %i.ak, %bb.m ], [ %i.ak, %bb.k ], [ 0, %bb.g ], [ %i.ak, %bb.d ], [ %i.ak, %bb.c ], [ %i.ak, %bb.u ] ; 4 uses
  %i.cx = phi i32 [ %i.al, %bb.t ], [ %i.al, %bb.s ], [ %i.al, %bb.r ], [ %i.al, %bb.h ], [ %i.al, %bb.q ], [ %i.al, %bb.o ], [ %i.al, %bb.m ], [ %i.al, %bb.k ], [ %i.al, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ %i.al, %bb.u ] ; 3 uses
  %.1.i = phi i32 [ %.096.i, %bb.t ], [ %.096.i, %bb.s ], [ %.096.i, %bb.r ], [ %i.ay, %bb.h ], [ %i.bx, %bb.q ], [ %i.br, %bb.o ], [ %i.bl, %bb.m ], [ %i.bg, %bb.k ], [ %i.ay, %bb.g ], [ %i.aq, %bb.d ], [ %i.aq, %bb.c ], [ %.096.i, %bb.u ]
  %i.cy = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %0
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.y
  store i32 %i.ct, ptr %i.v, align 8
  store i32 %i.cs, ptr %i.r, align 4
  store i32 %i.cr, ptr %i.s, align 16
  store i32 %i.cq, ptr %i.q, align 4
  store i32 %i.cp, ptr %i.w, align 8
  store double %i.co, ptr %i.u, align 8
  store double %i.cn, ptr %i.t, align 16
  store ptr %i.cm, ptr %i.p, align 16
  store i32 %i.cl, ptr %i.o, align 4
  store i32 %i.ck, ptr %2, align 16
  %i.da = icmp eq ptr %i.cu, null
  br i1 %i.da, label %._crit_edge.thread.i, label %bb.z

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.not = icmp eq i32 %i.cw, 0
  %spec.select = select i1 %.not, ptr @.str.29, ptr @.str.30
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.thread.i, %bb.b
  %.str.29.sink = phi ptr [ @.str.29, %bb.b ], [ %spec.select, %._crit_edge.thread.i ] ; 2 uses
  %.ph111.ph = phi i32 [ 0, %bb.b ], [ %i.cv, %._crit_edge.thread.i ]
  %.ph112.ph = phi i32 [ 0, %bb.b ], [ %i.cw, %._crit_edge.thread.i ]
  %.ph113.ph = phi i32 [ 0, %bb.b ], [ %i.cx, %._crit_edge.thread.i ]
  store ptr %.str.29.sink, ptr %i.p, align 16, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %._crit_edge.i
  %.ph = phi ptr [ %i.cu, %._crit_edge.i ], [ %.str.29.sink, %.sink.split ] ; 2 uses
  %.ph111 = phi i32 [ %i.cv, %._crit_edge.i ], [ %.ph111.ph, %.sink.split ]
  %.ph112 = phi i32 [ %i.cw, %._crit_edge.i ], [ %.ph112.ph, %.sink.split ]
  %.ph113 = phi i32 [ %i.cx, %._crit_edge.i ], [ %.ph113.ph, %.sink.split ]
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.dc = call ptr @N_VNew_Serial(i64 noundef 4, ptr noundef %i.db) #14
  store ptr %i.dc, ptr %3, align 8, !tbaa !22
  %.not92 = icmp eq i32 %.ph111, 0
  br i1 %.not92, label %check_retval.exit101, label %.preheader

check_retval.exit101:                             ; preds = %bb.z
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !31
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.dd)
  %.pre = load ptr, ptr %3, align 8, !tbaa !22
  br label %bb.ag

.preheader:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.de = call ptr @ARKodeSPRKTable_LoadByName(ptr noundef nonnull %.ph) #14 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !36 ; 5 uses
  %i.dg = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dh = call ptr @N_VClone(ptr noundef %i.dg) #14 ; 4 uses
  %i.di = call ptr @N_VClone(ptr noundef %i.dg) #14 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !17
  %i.dj = icmp sgt i32 %i.df, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store double 1.000000e-03, ptr %i.t, align 16, !tbaa !23
  store i32 0, ptr %2, align 16, !tbaa !24
  store i32 1, ptr %i.o, align 4, !tbaa !25
  store ptr @.str.2, ptr %i.p, align 16, !tbaa !19
  call void @ARKodeSPRKTable_Free(ptr noundef nonnull %i.de) #14
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !31
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.dk)
  %i.dl = load ptr, ptr %3, align 8, !tbaa !22
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dl, ptr noundef %i.dh) #14
  store i32 %.ph113, ptr %2, align 16, !tbaa !24
  store i32 %.ph112, ptr %i.o, align 4, !tbaa !25
  store ptr %.ph, ptr %i.p, align 16, !tbaa !19
  %exp2 = call double @exp2(double -0.000000e+00) #14 ; 0 uses
  %exp2.1 = call double @exp2(double -1.000000e+00) #14 ; 0 uses
  %exp2.2 = call double @exp2(double -2.000000e+00) #14 ; 0 uses
  %exp2.3 = call double @exp2(double -3.000000e+00) #14 ; 0 uses
  %i.dm = select i1 %i.dj, double 1.000000e-01, double 1.000000e-03 ; 5 uses
  %i.dn = insertelement <4 x double> poison, double %i.dm, i64 0
  %i.do = shufflevector <4 x double> %i.dn, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dp = fmul nnan <4 x double> %i.do, <double 1.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.250000e-01>
  store <4 x double> %i.dp, ptr %i.j, align 16, !tbaa !17
  %exp2.4 = call double @exp2(double -4.000000e+00) #14 ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %exp2.5 = call double @exp2(double -5.000000e+00) #14 ; 0 uses
  %exp2.6 = call double @exp2(double -6.000000e+00) #14 ; 0 uses
  %exp2.7 = call double @exp2(double -7.000000e+00) #14 ; 0 uses
  %i.dr = fmul nnan <4 x double> %i.do, <double 6.250000e-02, double 3.125000e-02, double 1.562500e-02, double 7.812500e-03>
  store <4 x double> %i.dr, ptr %i.dq, align 16, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store double %i.dm, ptr %i.t, align 16, !tbaa !23
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !31
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.dt)
  %putchar.peel = call i32 @putchar(i32 10)       ; 0 uses
  %i.du = load ptr, ptr %3, align 8, !tbaa !22
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.du, double noundef -1.000000e+00, ptr noundef %i.dh, ptr noundef %i.di) #14
  %i.dv = call double @N_VDotProd(ptr noundef %i.di, ptr noundef %i.di) #14
  %i.dw = fcmp ugt double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.aa, label %.peel.next

bb.aa:                                            ; preds = %.preheader
  %i.dx = call double @N_VDotProd(ptr noundef %i.di, ptr noundef %i.di) #14
  %i.dy = call double @sqrt(double noundef %i.dx) #14
  br label %.peel.next

.peel.next:                                       ; preds = %bb.aa, %.preheader
  %i.dz = phi double [ %i.dy, %bb.aa ], [ 0.000000e+00, %.preheader ]
  %i.ea = call i64 @N_VGetLength(ptr noundef %i.di) #14
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = fdiv double %i.dz, %i.eb                ; 2 uses
  store double %i.ec, ptr %i.d, align 16, !tbaa !17
  %i.ed = load double, ptr %i.ds, align 8, !tbaa !26
  %i.ee = call double @llvm.fabs.f64(double %i.ed) ; 2 uses
  store double %i.ee, ptr %i.e, align 16, !tbaa !17
  %i.ef = call double @llvm.log.f64(double %i.dm) ; 3 uses
  %i.eg = call double @log(double noundef %i.ec) #14 ; 2 uses
  %i.eh = fadd double %i.eg, 0.000000e+00
  %i.ei = call double @llvm.log.f64(double %i.dm)
  %i.ej = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.eg, i64 1 ; 2 uses
  %i.el = insertelement <2 x double> %i.ek, double %i.ei, i64 1
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.el, <2 x double> zeroinitializer)
  %i.en = call double @log(double noundef %i.ee) #14 ; 2 uses
  %i.eo = fadd double %i.en, 0.000000e+00
  %i.ep = call double @llvm.log.f64(double %i.dm)
  %i.eq = call double @llvm.fmuladd.f64(double %i.en, double %i.ep, double 0.000000e+00)
  br label %bb.ab

bb.ab:                                            ; preds = %.peel.next, %bb.ad
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %.0183 = phi double [ %i.eq, %.peel.next ], [ %i.ft, %bb.ad ]
  %.079182.a = phi double [ %i.eo, %.peel.next ], [ %i.fr, %bb.ad ]
  %.081180.a = phi double [ %i.eh, %.peel.next ], [ %i.fl, %bb.ad ]
  %.083178 = phi double [ %i.ef, %.peel.next ], [ %5, %bb.ad ]
  %.084177 = phi double [ %i.ef, %.peel.next ], [ %4, %bb.ad ]
  %.085176 = phi double [ 1.000000e+00, %.peel.next ], [ %i.fi, %bb.ad ]
  %i.er = phi <2 x double> [ %i.em, %.peel.next ], [ %i.fp, %bb.ad ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.et = load double, ptr %i.es, align 8, !tbaa !17 ; 5 uses
  store double %i.et, ptr %i.t, align 16, !tbaa !23
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !31
  call fastcc void @SolveProblem(ptr noundef %2, ptr noundef %3, ptr noundef %i.eu)
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ev, double noundef -1.000000e+00, ptr noundef %i.dh, ptr noundef %i.di) #14
  %i.ew = call double @N_VDotProd(ptr noundef %i.di, ptr noundef %i.di) #14
  %i.ex = fcmp ugt double %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ey = call double @N_VDotProd(ptr noundef %i.di, ptr noundef %i.di) #14
  %i.ez = call double @sqrt(double noundef %i.ey) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fa = phi double [ %i.ez, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.fb = call i64 @N_VGetLength(ptr noundef %i.di) #14
  %i.fc = sitofp i64 %i.fb to double
  %i.fd = fdiv double %i.fa, %i.fc                ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.fd, ptr %i.fe, align 8, !tbaa !17
  %i.ff = load double, ptr %i.ds, align 8, !tbaa !26
  %i.fg = call double @llvm.fabs.f64(double %i.ff) ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.fg, ptr %i.fh, align 8, !tbaa !17
  %i.fi = fadd double %.085176, 1.000000e+00      ; 3 uses
  %i.fj = call double @log(double noundef %i.et) #14 ; 3 uses
  %4 = fadd double %.084177, %i.fj                ; 3 uses
  %5 = fadd double %.083178, %i.fj                ; 3 uses
  %i.fk = call double @log(double noundef %i.fd) #14 ; 2 uses
  %i.fl = fadd double %.081180.a, %i.fk           ; 2 uses
  %i.fm = call double @log(double noundef %i.et) #14
  %6 = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fn = insertelement <2 x double> %6, double %i.fk, i64 1 ; 2 uses
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fo, <2 x double> %i.er) ; 3 uses
  %i.fq = call double @log(double noundef %i.fg) #14 ; 2 uses
  %i.fr = fadd double %.079182.a, %i.fq           ; 2 uses
  %i.fs = call double @log(double noundef %i.et) #14
  %i.ft = call double @llvm.fmuladd.f64(double %i.fq, double %i.fs, double %.0183) ; 2 uses
  %i.fu = add nsw i64 %indvars.iv, -1             ; 5 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !17
  %i.fx = fdiv double %i.fd, %i.fw
  %i.fy = call double @log(double noundef %i.fx) #14
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.fu
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !17
  %i.gb = fdiv double %i.et, %i.ga                ; 2 uses
  %i.gc = call double @log(double noundef %i.gb) #14
  %i.gd = fdiv double %i.fy, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fu
  store double %i.gd, ptr %i.ge, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fu
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !17
  %i.gh = fdiv double %i.fg, %i.gg
  %i.gi = call double @log(double noundef %i.gh) #14
  %i.gj = call double @log(double noundef %i.gb) #14
  %i.gk = fdiv double %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fu
  store double %i.gk, ptr %i.gl, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.ab, !llvm.loop !29

.loopexit:                                        ; preds = %bb.ad
  %i.gm = sitofp i32 %i.df to double
  %i.gn = extractelement <2 x double> %i.fp, i64 0 ; 2 uses
  %i.go = extractelement <2 x double> %i.fp, i64 1
  call fastcc void @ComputeConvergence(ptr noundef %i.b, double noundef %i.fi, double noundef %4, double noundef %5, double noundef %i.gn, double noundef %i.fl, double noundef %i.go, ptr noundef %i.h, ptr noundef %i.f, ptr noundef %i.i)
  %i.gp = load double, ptr %i.f, align 8, !tbaa !17 ; 2 uses
  %i.gq = fpext double %i.gp to x86_fp80
  %i.gr = load double, ptr %i.h, align 8, !tbaa !17
  %i.gs = fpext double %i.gr to x86_fp80
  %i.gt = load double, ptr %i.i, align 8, !tbaa !17
  %i.gu = fpext double %i.gt to x86_fp80
  %i.gv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.df, x86_fp80 noundef %i.gq, x86_fp80 noundef %i.gs, x86_fp80 noundef %i.gu) ; 0 uses
  call fastcc void @ComputeConvergence(ptr noundef %i.c, double noundef %i.fi, double noundef %4, double noundef %5, double noundef %i.gn, double noundef %i.fr, double noundef %i.ft, ptr noundef %i.h, ptr noundef %i.g, ptr noundef %i.i)
  %i.gw = load double, ptr %i.g, align 8, !tbaa !17 ; 2 uses
  %i.gx = fpext double %i.gw to x86_fp80
  %i.gy = load double, ptr %i.h, align 8, !tbaa !17
  %i.gz = fpext double %i.gy to x86_fp80
  %i.ha = load double, ptr %i.i, align 8, !tbaa !17
  %i.hb = fpext double %i.ha to x86_fp80
  %i.hc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.df, x86_fp80 noundef %i.gx, x86_fp80 noundef %i.gz, x86_fp80 noundef %i.hb) ; 0 uses
  %i.hd = fadd double %i.gm, -5.000000e-01        ; 2 uses
  %i.he = fcmp olt double %i.gp, %i.hd
  br i1 %i.he, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.hf = fcmp olt double %i.gw, %i.hd
  br i1 %i.hf, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae, %.loopexit
  %.str.7.sink = phi ptr [ @.str.6, %.loopexit ], [ @.str.7, %bb.ae ]
  %i.hg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.7.sink, i32 noundef %i.df) ; 0 uses
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
  call void @N_VDestroy(ptr noundef %i.dh) #14
  call void @N_VDestroy(ptr noundef %i.di) #14
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
  %i.hh = phi ptr [ %i.ev, %bb.af ], [ %.pre, %check_retval.exit101 ]
  call void @N_VDestroy(ptr noundef %i.hh) #14
  %i.hi = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #14 ; 0 uses
  br label %ParseArgs.exit

ParseArgs.exit:                                   ; preds = %.thread, %bb.x, %bb.w, %bb.i, %bb.e, %check_retval.exit, %bb.ag
  %.189 = phi i32 [ 1, %bb.x ], [ 1, %check_retval.exit ], [ 0, %bb.ag ], [ 1, %.thread ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %.189
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
  store i32 0, ptr %i.b, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !23 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !41 ; 7 uses
  %i.u = sitofp i32 %i.n to double
  %i.v = fdiv double %i.t, %i.u                   ; 3 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.64, i64 19, i64 1, ptr %i.w) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.y = load i32, ptr %i.i, align 4, !tbaa !25
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.65, i32 noundef %i.y) #14 ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ab = load i32, ptr %0, align 8, !tbaa !24
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.66, i32 noundef %i.ab) #14 ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.67, i32 noundef %i.af) #14 ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !39
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.68, i32 noundef %i.ai) #14 ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.al = load double, ptr %i.q, align 8, !tbaa !23
  %i.am = fpext double %i.al to x86_fp80
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.69, x86_fp80 noundef %i.am) #14 ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ap = load double, ptr %i.s, align 8, !tbaa !41
  %i.aq = fpext double %i.ap to x86_fp80
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.70, x86_fp80 noundef %i.aq) #14 ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.at = load i32, ptr %i.m, align 8, !tbaa !40
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.71, i32 noundef %i.at) #14 ; 0 uses
  %i.av = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #18 ; 4 uses
  store double 6.000000e-01, ptr %i.av, align 8, !tbaa !43
  %i.aw = tail call ptr @N_VNew_Serial(i64 noundef 4, ptr noundef %2) #14 ; 26 uses
  %i.ax = tail call ptr @N_VGetArrayPointer(ptr noundef %i.aw) #14 ; 4 uses
  %i.ay = tail call ptr @N_VGetArrayPointer(ptr noundef %i.aw) #14 ; 3 uses
  store double 4.000000e-01, ptr %i.ay, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store double 2.000000e+00, ptr %i.ba, align 8, !tbaa !17
  %i.bb = icmp eq i32 %i.j, 0                     ; 2 uses
  br i1 %i.bb, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.bc = tail call ptr @SPRKStepCreate(ptr noundef nonnull @force, ptr noundef nonnull @velocity, double noundef 0.000000e+00, ptr noundef %i.aw, ptr noundef %2) #14 ; 8 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !38
  %.not163 = icmp eq i32 %i.g, 0
  br i1 %.not163, label %bb.c, label %check_retval.exit

check_retval.exit:                                ; preds = %bb.b
  %i.bd = tail call i32 @ARKodeRootInit(ptr noundef %i.bc, i32 noundef 1, ptr noundef nonnull @rootfn) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %check_retval.exit, %bb.b
  %i.be = tail call i32 @SPRKStepSetMethodName(ptr noundef %i.bc, ptr noundef %i.p) #14 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %check_retval.exit187, label %bb.d

check_retval.exit187:                             ; preds = %bb.c
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.44, i32 noundef %i.be) #15 ; 0 uses
  br label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.bi = tail call i32 @ARKodeSetUseCompensatedSums(ptr noundef %i.bc, i32 noundef %i.l) #14 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %check_retval.exit189, label %bb.e

check_retval.exit189:                             ; preds = %bb.d
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.45, i32 noundef %i.bi) #15 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp eq i32 %i.h, 0
  br i1 %i.bm, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bn = tail call i32 @ARKodeSetFixedStep(ptr noundef %i.bc, double noundef %i.r) #14 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %check_retval.exit191, label %bb.g

check_retval.exit191:                             ; preds = %bb.f
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.46, i32 noundef %i.bn) #15 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.f
  %i.br = fdiv double %i.t, %i.r
  %i.bs = tail call double @llvm.ceil.f64(double %i.br)
  %i.bt = fptosi double %i.bs to i64
  %i.bu = add nsw i64 %i.bt, 1
  %i.bv = tail call i32 @ARKodeSetMaxNumSteps(ptr noundef %i.bc, i64 noundef %i.bu) #14 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %check_retval.exit193, label %bb.i

check_retval.exit193:                             ; preds = %bb.g
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.47, i32 noundef %i.bv) #15 ; 0 uses
  br label %bb.ah

bb.h:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.48, i64 59, i64 1, ptr %i.bz) #17 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.ca = tail call i32 @ARKodeSetUserData(ptr noundef %i.bc, ptr noundef nonnull %i.av) #14 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %check_retval.exit195, label %bb.r
end_hunk_0
