Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvDiurnal_kry?download=true
inline.NumInlined: 31
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.dd, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 800
  store <4 x double> <double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.de, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 832
  store <2 x double> <double f0x41264681EF7A8A42, double f0x42653E55C2867902>, ptr %i.df, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 848
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412DC5F732040A80, double f0x426C64DF726EE294>, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 880
  store <4 x double> <double f0x412DC5F732040A80, double f0x426C64DF726EE294, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.dh, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 912
  store <2 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867901>, ptr %i.di, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 928
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.dj, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 960
  store <4 x double> <double f0x411B50AB74F03290, double f0x425A0CBAC39161F9, double f0x411F940AC5A86537, double f0x425E1D8B15E84C27>, ptr %i.dk, align 8, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 992
  store <2 x double> <double f0x41242F7FAE1226DA, double f0x4263401C5FDDC795>, ptr %i.dl, align 8, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1008
  store <4 x double> <double f0x412872DEFECA5981, double f0x426750ECB234B1C3, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.dm, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 1040
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412872DEFECA5981, double f0x426750ECB234B1C3>, ptr %i.dn, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 1072
  store <2 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.do, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ca, i64 1088
  store <4 x double> <double f0x411F940AC5A86537, double f0x425E1D8B15E84C27, double f0x411B50AB74F03290, double f0x425A0CBAC39161F9>, ptr %i.dp, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ca, i64 1120
  store <4 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E, double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.dq, align 8, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1152
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.dr, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ca, i64 1168
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.ds, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 1200
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.dt, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1232
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %i.du, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 1248
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.dv, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 1280
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.dw, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 1312
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.dx, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ca, i64 1328
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.dy, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 1360
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %i.dz, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ca, i64 1392
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.ea, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1408
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.eb, align 8, !tbaa !19
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 1440
  store <4 x double> <double 2.500000e+05, double 2.500000e+11, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.ec, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 1472
  store <2 x double> <double f0x41168D57EB160BA1, double f0x425581E3AC6E122F>, ptr %i.ed, align 8, !tbaa !19
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ca, i64 1488
  store <4 x double> <double f0x411B50AB74F03291, double f0x425A0CBAC39161F9, double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B>, ptr %i.ee, align 8, !tbaa !19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ca, i64 1520
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %i.ef, align 8, !tbaa !19
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1552
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.eg, align 8, !tbaa !19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.eh, align 8, !tbaa !19
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ej = call ptr @CVodeCreate(i32 noundef 2, ptr noundef %i.ei) #9 ; 11 uses
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !21
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %check_retval.exit43, label %bb.d

check_retval.exit43:                              ; preds = %check_retval.exit38
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %check_retval.exit38
  %i.en = call i32 @CVodeSetUserData(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %check_retval.exit45, label %bb.e

check_retval.exit45:                              ; preds = %bb.d
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4, i32 noundef %i.en) #10 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.er = call i32 @CVodeInit(ptr noundef nonnull %i.ej, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %check_retval.exit47, label %bb.f

check_retval.exit47:                              ; preds = %bb.e
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5, i32 noundef %i.er) #10 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ev = call i32 @CVodeSStolerances(ptr noundef nonnull %i.ej, double noundef 1.000000e-05, double noundef 1.000000e-03) #9 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %check_retval.exit49, label %bb.g

check_retval.exit49:                              ; preds = %bb.f
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef %i.ev) #10 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.fa = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.i, i32 noundef 1, i32 noundef 0, ptr noundef %i.ez) #9 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %check_retval.exit51, label %bb.h

check_retval.exit51:                              ; preds = %bb.g
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.fe = call i32 @CVodeSetLinearSolver(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.fa, ptr noundef null) #9 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %check_retval.exit53, label %bb.i

check_retval.exit53:                              ; preds = %bb.h
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef %i.fe) #10 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.fi = call i32 @CVodeSetJacTimes(ptr noundef nonnull %i.ej, ptr noundef null, ptr noundef nonnull @jtv) #9 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %check_retval.exit55, label %bb.j

check_retval.exit55:                              ; preds = %bb.i
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9, i32 noundef %i.fi) #10 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fm = call i32 @CVodeSetPreconditioner(ptr noundef nonnull %i.ej, ptr noundef nonnull @Precond, ptr noundef nonnull @PSolve) #9 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %check_retval.exit57, label %bb.k

check_retval.exit57:                              ; preds = %bb.j
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.10, i32 noundef %i.fm) #10 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %.090 = phi i32 [ 1, %bb.k ], [ %i.fv, %bb.m ]
  %.02289 = phi double [ 7.200000e+03, %bb.k ], [ %i.fw, %bb.m ] ; 2 uses
  %i.fq = call i32 @CVode(ptr noundef nonnull %i.ej, double noundef %.02289, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 1) #9 ; 2 uses
  %i.fr = load double, ptr %i.b, align 8, !tbaa !19
  call fastcc void @PrintOutput(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.i, double noundef %i.fr)
  %i.fs = icmp slt i32 %i.fq, 0
  br i1 %i.fs, label %check_retval.exit59, label %bb.m

check_retval.exit59:                              ; preds = %bb.l
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ft, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.12, i32 noundef %i.fq) #10 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.fv = add nuw nsw i32 %.090, 1                ; 2 uses
  %i.fw = fadd double %.02289, 7.200000e+03
  %exitcond.not = icmp eq i32 %i.fv, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.m, %check_retval.exit59
  call fastcc void @PrintFinalStats(ptr noundef nonnull %i.ej)
  call void @N_VDestroy(ptr noundef nonnull %i.i) #9
  call fastcc void @FreeUserData(ptr noundef nonnull %i.m)
  call void @CVodeFree(ptr noundef nonnull %i.c) #9
  %i.fx = call i32 @SUNLinSolFree(ptr noundef nonnull %i.fa) #9 ; 0 uses
  %i.fy = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %check_retval.exit57, %check_retval.exit55, %check_retval.exit53, %check_retval.exit51, %check_retval.exit49, %check_retval.exit47, %check_retval.exit45, %check_retval.exit43, %check_retval.exit36, %check_retval.exit, %.loopexit
  %.023 = phi i32 [ 0, %.loopexit ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit36 ], [ 1, %check_retval.exit57 ], [ 1, %check_retval.exit43 ], [ 1, %check_retval.exit45 ], [ 1, %check_retval.exit47 ], [ 1, %check_retval.exit49 ], [ 1, %check_retval.exit51 ], [ 1, %check_retval.exit53 ], [ 1, %check_retval.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((2400, 2408)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 15 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2408
  %i.d = load double, ptr %i.c, align 8, !tbaa !22
  %i.e = fmul double %0, %i.d
  %i.f = tail call double @sin(double noundef %i.e) #9 ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = insertelement <2 x double> poison, double %i.f, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> <double -2.262000e+01, double f0xC01E676C8B439581>, %i.i ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call double @exp(double noundef %i.k) #9
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @exp(double noundef %i.m) #9
  %i.o = fmul double %i.l, 3.700000e+16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.0122 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2400
  store double %.sink, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2424
  %i.r = load double, ptr %i.q, align 8, !tbaa !25 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.t = load double, ptr %i.s, align 8, !tbaa !26 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2432
  %i.v = load double, ptr %i.u, align 8, !tbaa !27 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.x = load double, ptr %i.w, align 8, !tbaa !28 ; 6 uses
  %i.y = insertelement <2 x double> poison, double %.0122, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv128 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next129, %.loopexit.peel.begin ] ; 9 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, -5.000000e-01
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.r, double 3.000000e+01) ; 2 uses
  %i.ae = fadd double %i.r, %i.ad
  %i.af = fmul double %i.ad, 2.000000e-01
  %i.ag = tail call double @exp(double noundef %i.af) #9
  %i.ah = fmul double %i.t, %i.ag                 ; 5 uses
  %i.ai = fmul double %i.ae, 2.000000e-01
  %i.aj = tail call double @exp(double noundef %i.ai) #9
  %i.ak = fmul double %i.t, %i.aj                 ; 2 uses
  %i.al = icmp eq i64 %indvars.iv128, 0
  %i.am = select i1 %i.al, i64 1, i64 4294967295
  %i.an = icmp eq i64 %indvars.iv128, 9
  %i.ao = select i1 %i.an, i64 4294967295, i64 1
  %i.ap = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.aq = add nuw i64 %i.am, %indvars.iv128
  %i.ar = add nuw i64 %i.ao, %indvars.iv128
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %sext = mul i64 %i.ar, 85899345920
  %i.at = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.aq, 85899345920
  %i.au = ashr exact i64 %sext132, 32             ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.ay = load <2 x double>, ptr %i.av, align 8, !tbaa !19 ; 5 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.ba = fmul double %i.az, 1.630000e-16
  %i.bb = fmul double %i.ba, 3.700000e+16         ; 2 uses
  %i.bc = fmul double %i.az, 4.660000e-16
  %i.bd = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.be = fmul double %i.bc, %i.bd                ; 2 uses
  %i.bf = fmul double %.sink, %i.bd               ; 2 uses
  %i.bg = fneg double %i.bb
  %i.bh = fsub double %i.bg, %i.be
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0122, double 2.000000e+00, double %i.bh)
  %i.bj = fadd double %i.bf, %i.bi
  %i.bk = fsub double %i.bb, %i.be
  %i.bl = fsub double %i.bk, %i.bf
  %i.bm = load <2 x double>, ptr %i.aw, align 8, !tbaa !19
  %i.bn = load <2 x double>, ptr %i.ax, align 8, !tbaa !19
  %i.bo = fsub <2 x double> %i.bn, %i.ay
  %i.bp = fsub <2 x double> %i.ay, %i.bm
  %i.bq = fneg <2 x double> %i.bp
  %i.br = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bs, %i.bq
  %i.bu = insertelement <2 x double> poison, double %i.ak, i64 0 ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bo, <2 x double> %i.bt) ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %4 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !19    ; 4 uses
  %6 = trunc nuw nsw i64 %i.as to i32
  %7 = mul i64 %indvars.iv128, 85899345920
  %8 = ashr exact i64 %7, 29
  %9 = getelementptr i8, ptr %i.a, i64 %8
  %i.by = getelementptr i8, ptr %9, i64 24
  %10 = load double, ptr %i.by, align 8, !tbaa !19 ; 4 uses
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %12 = insertelement <2 x double> %11, double %10, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> splat (double -2.000000e+00), <2 x double> %12) ; 2 uses
  %i.bz = extractelement <2 x double> %13, i64 0
  %14 = fadd double %5, %i.bz
  %15 = fmul double %i.v, %14
  %i.ca = extractelement <2 x double> %13, i64 1
  %16 = fadd double %10, %i.ca
  %17 = fmul double %i.v, %16
  %18 = fsub double %5, %5
  %i.cb = fmul double %i.x, %18
  %19 = fsub double %10, %10
  %i.cc = fmul double %i.x, %19
  %i.cd = extractelement <2 x double> %i.bw, i64 0
  %i.ce = fadd double %i.cd, %15
  %i.cf = fadd double %i.cb, %i.ce
  %i.cg = fadd double %i.bj, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  store double %i.cg, ptr %i.ch, align 8, !tbaa !19
  %i.ci = extractelement <2 x double> %i.bw, i64 1
  %i.cj = fadd double %i.ci, %17
  %i.ck = fadd double %i.cc, %i.cj
  %i.cl = fadd double %i.bl, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store double %i.cl, ptr %i.cn, align 8, !tbaa !19
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.cr = insertelement <2 x double> %i.y, double %i.ak, i64 1 ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.cs = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.ct = add nuw nsw i64 %i.cs, %i.ap            ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ct
  %i.cv = or disjoint i64 %i.cs, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cs
  %i.cw = load double, ptr %gep, align 8, !tbaa !19
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.cv
  %i.cx = load double, ptr %gep135, align 8, !tbaa !19
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.cs
  %i.cy = load <2 x double>, ptr %i.cu, align 8, !tbaa !19 ; 4 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 1 ; 4 uses
  %i.da = fmul double %.sink, %i.cz               ; 2 uses
  %i.db = load <2 x double>, ptr %gep137, align 8, !tbaa !19
  %i.dc = extractelement <2 x double> %i.cy, i64 0 ; 3 uses
  %i.dd = fmul double %i.dc, 1.630000e-16
  %i.de = fmul double %i.dc, 4.660000e-16
  %i.df = fmul double %i.de, %i.cz                ; 2 uses
  %i.dg = fsub double %i.dc, %i.cw
  %i.dh = fmul double %i.dd, 3.700000e+16         ; 2 uses
  %i.di = fneg double %i.dg
  %i.dj = fneg double %i.dh
  %i.dk = fmul double %i.ah, %i.di
  %i.dl = fsub double %i.dj, %i.df
  %i.dm = fsub <2 x double> %i.db, %i.cy          ; 2 uses
  %i.dn = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.do = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dk, i64 1
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.dn, <2 x double> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = fadd double %i.da, %i.dr
  %i.dt = fsub double %i.dh, %i.df
  %i.du = fsub double %i.dt, %i.da
  %i.dv = fsub double %i.cz, %i.cx
  %i.dw = fneg double %i.dv
  %i.dx = fmul double %i.ah, %i.dw
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = add nsw i32 %i.dz, -2
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.co, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !19 ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.cp, i64 %i.eb
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !19 ; 2 uses
  %i.eg = shl i32 %i.dy, 1
  %i.eh = add i32 %i.eg, 2                        ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr [8 x i8], ptr %i.cq, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !19 ; 2 uses
  %i.el = add nuw nsw i32 %i.eh, %6
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !19 ; 2 uses
  %i.ep = shufflevector <2 x double> %i.bu, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.eq = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.dm, <2 x i32> <i32 3, i32 1>
  %i.er = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ek, i64 1
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.eq, <2 x double> %i.es) ; 2 uses
  %i.eu = extractelement <2 x double> %i.et, i64 1
  %i.ev = fadd double %i.ed, %i.eu
  %i.ew = fmul double %i.v, %i.ev
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.cz, double -2.000000e+00, double %i.eo)
  %i.ey = fadd double %i.ef, %i.ex
  %i.ez = fmul double %i.v, %i.ey
  %i.fa = fsub double %i.ek, %i.ed
  %i.fb = fmul double %i.x, %i.fa
  %i.fc = fsub double %i.eo, %i.ef
  %i.fd = fmul double %i.x, %i.fc
  %i.fe = extractelement <2 x double> %i.dq, i64 1
  %i.ff = fadd double %i.fe, %i.ew
  %i.fg = fadd double %i.fb, %i.ff
  %i.fh = fadd double %i.ds, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ct
  store double %i.fh, ptr %i.fi, align 8, !tbaa !19
  %i.fj = extractelement <2 x double> %i.et, i64 0
  %i.fk = fadd double %i.fj, %i.ez
  %i.fl = fadd double %i.fd, %i.fk
  %i.fm = fadd double %i.du, %i.fl
  %gep143 = getelementptr inbounds [8 x i8], ptr %invariant.gep142, i64 %i.cv
  store double %i.fm, ptr %gep143, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !29

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fn = add nuw nsw i64 %i.ap, 18               ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fn
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %i.fp = load double, ptr %gep.peel, align 8, !tbaa !19
  %gep135.peel = getelementptr i8, ptr %invariant.gep134, i64 152
  %i.fq = load double, ptr %gep135.peel, align 8, !tbaa !19
  %gep137.peel = getelementptr i8, ptr %invariant.gep136, i64 144
  %i.fr = load <2 x double>, ptr %i.fo, align 8, !tbaa !19 ; 4 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1 ; 4 uses
  %i.ft = fmul double %.sink, %i.fs               ; 2 uses
  %i.fu = load <2 x double>, ptr %gep137.peel, align 8, !tbaa !19
  %i.fv = extractelement <2 x double> %i.fr, i64 0 ; 3 uses
  %i.fw = fmul double %i.fv, 1.630000e-16
  %i.fx = fmul double %i.fv, 4.660000e-16
  %i.fy = fmul double %i.fx, %i.fs                ; 2 uses
  %i.fz = fsub double %i.fv, %i.fp
  %i.ga = fmul double %i.fw, 3.700000e+16         ; 2 uses
  %i.gb = fneg double %i.fz
  %i.gc = fneg double %i.ga
  %i.gd = fmul double %i.ah, %i.gb
  %i.ge = fsub double %i.gc, %i.fy
  %i.gf = fsub <2 x double> %i.fu, %i.fr          ; 2 uses
  %i.gg = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gh = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gd, i64 1
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.gg, <2 x double> %i.gi) ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0
  %i.gl = fadd double %i.ft, %i.gk
  %i.gm = fsub double %i.ga, %i.fy
  %i.gn = fsub double %i.gm, %i.ft
  %i.go = fsub double %i.fs, %i.fq
  %i.gp = fneg double %i.go
  %i.gq = fmul double %i.ah, %i.gp
  %i.gr = getelementptr i8, ptr %i.co, i64 128
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !19 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.cp, i64 128
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !19 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.cq, i64 128
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !19 ; 2 uses
  %i.gx = mul i64 %indvars.iv128, 85899345920
  %sext141 = add i64 %i.gx, 73014444032
  %i.gy = ashr exact i64 %sext141, 29
  %i.gz = getelementptr inbounds i8, ptr %i.a, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !19 ; 2 uses
  %i.hb = shufflevector <2 x double> %i.bu, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.hc = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gf, <2 x i32> <i32 3, i32 1>
  %i.hd = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.gw, i64 1
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hc, <2 x double> %i.he) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 1
  %i.hh = fadd double %i.gs, %i.hg
  %i.hi = fmul double %i.v, %i.hh
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.fs, double -2.000000e+00, double %i.ha)
  %i.hk = fadd double %i.gu, %i.hj
  %i.hl = fmul double %i.v, %i.hk
  %i.hm = fsub double %i.gw, %i.gs
  %i.hn = fmul double %i.x, %i.hm
  %i.ho = fsub double %i.ha, %i.gu
  %i.hp = fmul double %i.x, %i.ho
  %i.hq = extractelement <2 x double> %i.gj, i64 1
  %i.hr = fadd double %i.hq, %i.hi
  %i.hs = fadd double %i.hn, %i.hr
  %i.ht = fadd double %i.gl, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fn
  store double %i.ht, ptr %i.hu, align 8, !tbaa !19
  %i.hv = extractelement <2 x double> %i.hf, i64 0
  %i.hw = fadd double %i.hv, %i.hl
  %i.hx = fadd double %i.hp, %i.hw
  %i.hy = fadd double %i.gn, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ap
  store double %i.hy, ptr %i.hz, align 8, !tbaa !19
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 10
  br i1 %exitcond131.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetJacTimes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @jtv(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef captures(none) initializes((2400, 2408)) %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 6 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #9 ; 16 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2408
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  %i.f = fmul double %2, %i.e
  %i.g = tail call double @sin(double noundef %i.f) #9 ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fdiv double f0xC01E676C8B439581, %i.g
  %i.j = tail call double @exp(double noundef %i.i) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2400
  store double %.sink, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2424
  %i.m = load double, ptr %i.l, align 8, !tbaa !25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 2448
  %i.o = load double, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2432
  %i.q = load double, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 2440
  %i.s = load double, ptr %i.r, align 8, !tbaa !28
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.q, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.x = insertelement <2 x double> poison, double %.sink, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv134 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next135, %.loopexit.peel.begin ] ; 9 uses
  %i.z = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.aa = uitofp nneg i32 %i.z to double
  %i.ab = fadd double %i.aa, -5.000000e-01
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.m, double 3.000000e+01) ; 2 uses
  %i.ad = fadd double %i.m, %i.ac
  %i.ae = fmul double %i.ac, 2.000000e-01
  %i.af = tail call double @exp(double noundef %i.ae) #9
  %i.ag = fmul double %i.o, %i.af                 ; 2 uses
  %i.ah = fmul double %i.ad, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #9
  %i.aj = fmul double %i.o, %i.ai                 ; 2 uses
  %i.ak = icmp eq i64 %indvars.iv134, 0
  %i.al = select i1 %i.ak, i64 1, i64 4294967295
  %i.am = icmp eq i64 %indvars.iv134, 9
  %i.an = select i1 %i.am, i64 4294967295, i64 1
  %i.ao = mul nuw nsw i64 %indvars.iv134, 20      ; 12 uses
  %i.ap = add nuw i64 %i.al, %indvars.iv134
  %i.aq = add nuw i64 %i.an, %indvars.iv134
  %i.ar = fadd double %i.ag, %i.aj
  %i.as = fneg double %i.ar
  %sext = mul i64 %i.aq, 85899345920
  %i.at = ashr exact i64 %sext, 32                ; 2 uses
  %sext138 = mul i64 %i.ap, 85899345920
  %i.au = ashr exact i64 %sext138, 32             ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aw = load double, ptr %i.av, align 8, !tbaa !19
  %i.ax = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !19 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.au
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.at
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %7 = load double, ptr %i.bf, align 8, !tbaa !19
  %8 = trunc i64 %i.ao to i32
  %9 = or disjoint i32 %8, 1
  %10 = mul i64 %indvars.iv134, 85899345920
  %11 = ashr exact i64 %10, 29
  %12 = getelementptr i8, ptr %i.b, i64 %11
  %13 = getelementptr i8, ptr %12, i64 24
  %i.bg = load double, ptr %13, align 8, !tbaa !19
  %14 = tail call double @llvm.fmuladd.f64(double %i.az, double 4.660000e-16, double f0x40181FBE76C8B43A)
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ao
  %16 = load double, ptr %i.bb, align 8, !tbaa !19
  %i.bh = load <2 x double>, ptr %i.ba, align 8, !tbaa !19 ; 4 uses
  %i.bi = load <2 x double>, ptr %i.bc, align 8, !tbaa !19
  %i.bj = load <2 x double>, ptr %i.bd, align 8, !tbaa !19
  %i.bk = fneg double %14
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.az, double -4.660000e-16, double f0x40181FBE76C8B43A)
  %i.bm = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.bp = fneg double %16
  %i.bq = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bs = fmul <2 x double> %i.bo, %i.br
  %i.bt = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bl, i64 1
  %i.bv = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %i.bs)
  %i.bx = fadd <2 x double> %i.bw, zeroinitializer
  %i.by = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bj
  %i.cb = insertelement <2 x double> poison, double %i.as, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.bh, <2 x double> %i.ca)
  %i.ce = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.bi, <2 x double> %i.cd)
  %i.ch = fadd <2 x double> %i.bx, %i.cg
  %17 = insertelement <2 x double> poison, double %7, i64 0
  %18 = insertelement <2 x double> %17, double %i.bg, i64 1 ; 4 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double -2.000000e+00), <2 x double> %18)
  %i.cj = fadd <2 x double> %18, %i.ci
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.cj, <2 x double> %i.ch)
  %i.cl = fsub <2 x double> %18, %18
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.cl, <2 x double> %i.ck)
  store <2 x double> %i.cm, ptr %15, align 8, !tbaa !19
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.au ; 2 uses
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.b, i64 %i.at ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.cp = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.cq = add nuw nsw i64 %i.cp, %i.ao            ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !19
  %i.ct = or disjoint i64 %i.cp, 1
  %i.cu = add nuw nsw i64 %i.ct, %i.ao            ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cq
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cu
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cp
  %gep143 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.cp
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  %i.da = shl nuw i64 %indvars.iv, 1
  %i.db = and i64 %i.da, 4294967294
  %i.dc = getelementptr [8 x i8], ptr %i.cn, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -16
  %i.de = shl i32 %i.cz, 1
  %i.df = add i32 %i.de, 2                        ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.co, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !19
  %i.dj = add nuw nsw i32 %i.df, %9
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %i.do = load double, ptr %i.cy, align 8, !tbaa !19
  %i.dp = load <2 x double>, ptr %i.cx, align 8, !tbaa !19 ; 4 uses
  %i.dq = load <2 x double>, ptr %gep, align 8, !tbaa !19
  %i.dr = load <2 x double>, ptr %gep143, align 8, !tbaa !19
  %i.ds = load <2 x double>, ptr %i.dd, align 8, !tbaa !19 ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fneg double %i.dw
  %i.dy = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.eb = fneg double %i.do
  %i.ec = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ed = insertelement <2 x double> %i.ec, double %i.eb, i64 1
  %i.ee = fmul <2 x double> %i.ea, %i.ed
  %i.ef = insertelement <2 x double> %i.dv, double %i.dx, i64 0
  %i.eg = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> %i.ee)
  %i.ei = fadd <2 x double> %i.eh, zeroinitializer
  %i.ej = fmul <2 x double> %i.bz, %i.dr
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.dp, <2 x double> %i.ej)
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.dq, <2 x double> %i.ek)
  %i.em = fadd <2 x double> %i.ei, %i.el
  %i.en = insertelement <2 x double> poison, double %i.di, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.dm, i64 1 ; 2 uses
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> splat (double -2.000000e+00), <2 x double> %i.eo)
  %i.eq = fadd <2 x double> %i.ds, %i.ep
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.eq, <2 x double> %i.em)
  %i.es = fsub <2 x double> %i.eo, %i.ds
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.es, <2 x double> %i.er)
  store <2 x double> %i.et, ptr %i.dn, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !31

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.eu = add nuw nsw i64 %i.ao, 18               ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !19
  %i.ex = add nuw nsw i64 %i.ao, 19               ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !19
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eu
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ex
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %gep143.peel = getelementptr i8, ptr %invariant.gep142, i64 144
  %i.fc = getelementptr i8, ptr %i.cn, i64 128
  %i.fd = getelementptr i8, ptr %i.co, i64 128
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !19
  %i.ff = mul i64 %indvars.iv134, 85899345920
  %sext147 = add i64 %i.ff, 73014444032
  %i.fg = ashr exact i64 %sext147, 29
  %i.fh = getelementptr inbounds i8, ptr %i.b, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eu
  %i.fk = load double, ptr %i.fb, align 8, !tbaa !19
  %i.fl = load <2 x double>, ptr %i.fa, align 8, !tbaa !19 ; 4 uses
  %i.fm = load <2 x double>, ptr %gep.peel, align 8, !tbaa !19
  %i.fn = load <2 x double>, ptr %gep143.peel, align 8, !tbaa !19
  %i.fo = load <2 x double>, ptr %i.fc, align 8, !tbaa !19 ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  %i.ft = fneg double %i.fs
  %i.fu = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.fx = fneg double %i.fk
  %i.fy = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fz = insertelement <2 x double> %i.fy, double %i.fx, i64 1
  %i.ga = fmul <2 x double> %i.fw, %i.fz
  %i.gb = insertelement <2 x double> %i.fr, double %i.ft, i64 0
  %i.gc = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gc, <2 x double> %i.ga)
  %i.ge = fadd <2 x double> %i.gd, zeroinitializer
  %i.gf = fmul <2 x double> %i.bz, %i.fn
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.fl, <2 x double> %i.gf)
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.fm, <2 x double> %i.gg)
  %i.gi = fadd <2 x double> %i.ge, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.fi, i64 1 ; 2 uses
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> splat (double -2.000000e+00), <2 x double> %i.gk)
  %i.gm = fadd <2 x double> %i.fo, %i.gl
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.gm, <2 x double> %i.gi)
  %i.go = fsub <2 x double> %i.gk, %i.fo
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.go, <2 x double> %i.gn)
  store <2 x double> %i.gp, ptr %i.fj, align 8, !tbaa !19
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 10
  br i1 %exitcond137.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 800 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 1600
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %.preheader95

.preheader95:                                     ; preds = %bb.a, %.preheader95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader95 ], [ 0, %bb.a ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %invariant.gep98 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 10 uses
  %i.d = load ptr, ptr %invariant.gep, align 8, !tbaa !14
  %i.e = load ptr, ptr %invariant.gep98, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.d, ptr noundef %i.e, i64 noundef 2, i64 noundef 2) #9
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.f = load ptr, ptr %gep.1, align 8, !tbaa !14
  %gep99.1 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 80
  %i.g = load ptr, ptr %gep99.1, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.f, ptr noundef %i.g, i64 noundef 2, i64 noundef 2) #9
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.h = load ptr, ptr %gep.2, align 8, !tbaa !14
  %gep99.2 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 160
  %i.i = load ptr, ptr %gep99.2, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.h, ptr noundef %i.i, i64 noundef 2, i64 noundef 2) #9
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.j = load ptr, ptr %gep.3, align 8, !tbaa !14
  %gep99.3 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 240
  %i.k = load ptr, ptr %gep99.3, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.j, ptr noundef %i.k, i64 noundef 2, i64 noundef 2) #9
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 320
  %i.l = load ptr, ptr %gep.4, align 8, !tbaa !14
  %gep99.4 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 320
  %i.m = load ptr, ptr %gep99.4, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 2, i64 noundef 2) #9
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 400
  %i.n = load ptr, ptr %gep.5, align 8, !tbaa !14
  %gep99.5 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 400
  %i.o = load ptr, ptr %gep99.5, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 2, i64 noundef 2) #9
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.p = load ptr, ptr %gep.6, align 8, !tbaa !14
  %gep99.6 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 480
  %i.q = load ptr, ptr %gep99.6, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.p, ptr noundef %i.q, i64 noundef 2, i64 noundef 2) #9
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 560
  %i.r = load ptr, ptr %gep.7, align 8, !tbaa !14
  %gep99.7 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 560
  %i.s = load ptr, ptr %gep99.7, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.r, ptr noundef %i.s, i64 noundef 2, i64 noundef 2) #9
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 640
  %i.t = load ptr, ptr %gep.8, align 8, !tbaa !14
  %gep99.8 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 640
  %i.u = load ptr, ptr %gep99.8, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.t, ptr noundef %i.u, i64 noundef 2, i64 noundef 2) #9
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %i.v = load ptr, ptr %gep.9, align 8, !tbaa !14
  %gep99.9 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 720
  %i.w = load ptr, ptr %gep99.9, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.v, ptr noundef %i.w, i64 noundef 2, i64 noundef 2) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %.loopexit94, label %.preheader95

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 2400
  %i.y = load double, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 2424
  %i.aa = load double, ptr %i.z, align 8, !tbaa !25 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2448
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !27
  %i.af = fneg double %i.y
  %i.ag = insertelement <2 x double> <double poison, double f0x40181FBE76C8B43A>, double %i.af, i64 0 ; 10 uses
  %i.ah = insertelement <2 x double> <double poison, double f0xC0181FBE76C8B43A>, double %i.y, i64 0 ; 10 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv122 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next123, %bb.c ] ; 5 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv122 to i32
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fadd double %i.aj, -5.000000e-01
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aa, double 3.000000e+01) ; 2 uses
  %i.am = fadd double %i.aa, %i.al
  %i.an = fmul double %i.al, 2.000000e-01
  %i.ao = tail call double @exp(double noundef %i.an) #9
  %i.ap = fmul double %i.am, 2.000000e-01
  %i.aq = tail call double @exp(double noundef %i.ap) #9
  %i.ar = fmul double %i.ac, %i.ao
  %i.as = fmul double %i.ac, %i.aq
  %i.at = fadd double %i.ar, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ae, double 2.000000e+00, double %i.at)
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
end_hunk_0
