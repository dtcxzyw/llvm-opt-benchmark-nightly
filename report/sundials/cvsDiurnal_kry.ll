Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsDiurnal_kry?download=true
inline.NumInlined: 31
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.dr, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ca, i64 1168
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 1200
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.dt, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1232
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %i.du, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 1248
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.dv, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 1280
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.dw, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 1312
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.dx, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ca, i64 1328
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.dy, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 1360
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ca, i64 1392
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.ea, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1408
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 1440
  store <4 x double> <double 2.500000e+05, double 2.500000e+11, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.ec, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 1472
  store <2 x double> <double f0x41168D57EB160BA1, double f0x425581E3AC6E122F>, ptr %i.ed, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ca, i64 1488
  store <4 x double> <double f0x411B50AB74F03291, double f0x425A0CBAC39161F9, double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B>, ptr %i.ee, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ca, i64 1520
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %i.ef, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1552
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.eg, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.eh, align 8, !tbaa !18
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.ej = call ptr @CVodeCreate(i32 noundef 2, ptr noundef %i.ei) #9 ; 11 uses
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !32
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %check_retval.exit43, label %bb.d

check_retval.exit43:                              ; preds = %check_retval.exit38
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %check_retval.exit38
  %i.en = call i32 @CVodeSetUserData(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %check_retval.exit45, label %bb.e

check_retval.exit45:                              ; preds = %bb.d
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4, i32 noundef %i.en) #10 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.er = call i32 @CVodeInit(ptr noundef nonnull %i.ej, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %check_retval.exit47, label %bb.f

check_retval.exit47:                              ; preds = %bb.e
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5, i32 noundef %i.er) #10 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ev = call i32 @CVodeSStolerances(ptr noundef nonnull %i.ej, double noundef 1.000000e-05, double noundef 1.000000e-03) #9 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %check_retval.exit49, label %bb.g

check_retval.exit49:                              ; preds = %bb.f
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef %i.ev) #10 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.fa = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.i, i32 noundef 1, i32 noundef 0, ptr noundef %i.ez) #9 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %check_retval.exit51, label %bb.h

check_retval.exit51:                              ; preds = %bb.g
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.fe = call i32 @CVodeSetLinearSolver(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.fa, ptr noundef null) #9 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %check_retval.exit53, label %bb.i

check_retval.exit53:                              ; preds = %bb.h
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef %i.fe) #10 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.fi = call i32 @CVodeSetJacTimes(ptr noundef nonnull %i.ej, ptr noundef null, ptr noundef nonnull @jtv) #9 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %check_retval.exit55, label %bb.j

check_retval.exit55:                              ; preds = %bb.i
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9, i32 noundef %i.fi) #10 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fm = call i32 @CVodeSetPreconditioner(ptr noundef nonnull %i.ej, ptr noundef nonnull @Precond, ptr noundef nonnull @PSolve) #9 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %check_retval.exit57, label %bb.k

check_retval.exit57:                              ; preds = %bb.j
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.10, i32 noundef %i.fm) #10 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %.090 = phi i32 [ 1, %bb.k ], [ %i.fv, %bb.m ]
  %.02289 = phi double [ 7.200000e+03, %bb.k ], [ %i.fw, %bb.m ] ; 2 uses
  %i.fq = call i32 @CVode(ptr noundef nonnull %i.ej, double noundef %.02289, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 1) #9 ; 2 uses
  %i.fr = load double, ptr %i.b, align 8, !tbaa !18
  call fastcc void @PrintOutput(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.i, double noundef %i.fr)
  %i.fs = icmp slt i32 %i.fq, 0
  br i1 %i.fs, label %check_retval.exit59, label %bb.m

check_retval.exit59:                              ; preds = %bb.l
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !11
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
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
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
  store double %.sink, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2424
  %i.r = load double, ptr %i.q, align 8, !tbaa !22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.t = load double, ptr %i.s, align 8, !tbaa !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2432
  %i.v = load double, ptr %i.u, align 8, !tbaa !24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.x = load double, ptr %i.w, align 8, !tbaa !25 ; 6 uses
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
  %i.ah = fmul double %i.ae, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #9
  %i.aj = icmp eq i64 %indvars.iv128, 0
  %i.ak = select i1 %i.aj, i64 1, i64 4294967295
  %i.al = icmp eq i64 %indvars.iv128, 9
  %i.am = select i1 %i.al, i64 4294967295, i64 1
  %i.an = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.ao = add nuw i64 %i.ak, %indvars.iv128
  %i.ap = add nuw i64 %i.am, %indvars.iv128
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %sext = mul i64 %i.ap, 85899345920
  %i.ar = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.ao, 85899345920
  %i.as = ashr exact i64 %sext132, 32             ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.av = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  %4 = fmul double %i.t, %i.ag                    ; 5 uses
  %5 = fmul double %i.t, %i.ai                    ; 2 uses
  %i.aw = load <2 x double>, ptr %i.at, align 8, !tbaa !18 ; 5 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0 ; 2 uses
  %i.ay = fmul double %i.ax, 1.630000e-16
  %i.az = fmul double %i.ay, 3.700000e+16         ; 2 uses
  %i.ba = fmul double %i.ax, 4.660000e-16
  %i.bb = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.bc = fmul double %i.ba, %i.bb                ; 2 uses
  %i.bd = fmul double %.sink, %i.bb               ; 2 uses
  %i.be = fneg double %i.az
  %i.bf = fsub double %i.be, %i.bc
  %i.bg = tail call double @llvm.fmuladd.f64(double %.0122, double 2.000000e+00, double %i.bf)
  %i.bh = fadd double %i.bd, %i.bg
  %i.bi = fsub double %i.az, %i.bc
  %i.bj = fsub double %i.bi, %i.bd
  %i.bk = load <2 x double>, ptr %i.au, align 8, !tbaa !18
  %i.bl = load <2 x double>, ptr %i.av, align 8, !tbaa !18
  %i.bm = fsub <2 x double> %i.bl, %i.aw
  %i.bn = fsub <2 x double> %i.aw, %i.bk
  %i.bo = fneg <2 x double> %i.bn
  %6 = insertelement <2 x double> poison, double %4, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %7, %i.bo
  %8 = insertelement <2 x double> poison, double %5, i64 0 ; 3 uses
  %i.bq = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bm, <2 x double> %i.bp) ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !18 ; 4 uses
  %i.bv = trunc nuw nsw i64 %i.aq to i32
  %i.bw = mul i64 %indvars.iv128, 85899345920
  %i.bx = ashr exact i64 %i.bw, 29
  %i.by = getelementptr i8, ptr %i.a, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 24
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18 ; 4 uses
  %i.cb = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fadd double %i.bu, %i.ce
  %i.cg = fmul double %i.v, %i.cf
  %i.ch = extractelement <2 x double> %i.cd, i64 1
  %i.ci = fadd double %i.ca, %i.ch
  %i.cj = fmul double %i.v, %i.ci
  %i.ck = fsub double %i.bu, %i.bu
  %i.cl = fmul double %i.x, %i.ck
  %i.cm = fsub double %i.ca, %i.ca
  %i.cn = fmul double %i.x, %i.cm
  %i.co = extractelement <2 x double> %i.br, i64 0
  %i.cp = fadd double %i.co, %i.cg
  %i.cq = fadd double %i.cl, %i.cp
  %i.cr = fadd double %i.bh, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  store double %i.cr, ptr %i.cs, align 8, !tbaa !18
  %i.ct = extractelement <2 x double> %i.br, i64 1
  %i.cu = fadd double %i.ct, %i.cj
  %i.cv = fadd double %i.cn, %i.cu
  %i.cw = fadd double %i.bj, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store double %i.cw, ptr %i.cy, align 8, !tbaa !18
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %9 = insertelement <2 x double> %i.y, double %5, i64 1 ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.dc = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.dd = add nuw nsw i64 %i.dc, %i.an            ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dd
  %i.df = or disjoint i64 %i.dc, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dc
  %i.dg = load double, ptr %gep, align 8, !tbaa !18
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.df
  %i.dh = load double, ptr %gep135, align 8, !tbaa !18
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.dc
  %i.di = load <2 x double>, ptr %i.de, align 8, !tbaa !18 ; 4 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1 ; 4 uses
  %i.dk = fmul double %.sink, %i.dj               ; 2 uses
  %i.dl = load <2 x double>, ptr %gep137, align 8, !tbaa !18
  %i.dm = extractelement <2 x double> %i.di, i64 0 ; 3 uses
  %i.dn = fmul double %i.dm, 1.630000e-16
  %i.do = fmul double %i.dm, 4.660000e-16
  %i.dp = fmul double %i.do, %i.dj                ; 2 uses
  %i.dq = fsub double %i.dm, %i.dg
  %i.dr = fmul double %i.dn, 3.700000e+16         ; 2 uses
  %i.ds = fneg double %i.dq
  %i.dt = fneg double %i.dr
  %i.du = fmul double %4, %i.ds
  %i.dv = fsub double %i.dt, %i.dp
  %i.dw = fsub <2 x double> %i.dl, %i.di          ; 2 uses
  %i.dx = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.du, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.dx, <2 x double> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fadd double %i.dk, %i.eb
  %i.ed = fsub double %i.dr, %i.dp
  %i.ee = fsub double %i.ed, %i.dk
  %i.ef = fsub double %i.dj, %i.dh
  %i.eg = fneg double %i.ef
  %i.eh = fmul double %4, %i.eg
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = add nsw i32 %i.ej, -2
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.cz, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !18 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.da, i64 %i.el
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18 ; 2 uses
  %i.eq = shl i32 %i.ei, 1
  %i.er = add i32 %i.eq, 2                        ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [8 x i8], ptr %i.db, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !18 ; 2 uses
  %i.ev = add nuw nsw i32 %i.er, %i.bv
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !18 ; 2 uses
  %i.ez = shufflevector <2 x double> %8, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.dw, <2 x i32> <i32 3, i32 1>
  %i.fb = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.eu, i64 1
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fa, <2 x double> %i.fc) ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 1
  %i.ff = fadd double %i.en, %i.fe
  %i.fg = fmul double %i.v, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.dj, double -2.000000e+00, double %i.ey)
  %i.fi = fadd double %i.ep, %i.fh
  %i.fj = fmul double %i.v, %i.fi
  %i.fk = fsub double %i.eu, %i.en
  %i.fl = fmul double %i.x, %i.fk
  %i.fm = fsub double %i.ey, %i.ep
  %i.fn = fmul double %i.x, %i.fm
  %i.fo = extractelement <2 x double> %i.ea, i64 1
  %i.fp = fadd double %i.fo, %i.fg
  %i.fq = fadd double %i.fl, %i.fp
  %i.fr = fadd double %i.ec, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dd
  store double %i.fr, ptr %i.fs, align 8, !tbaa !18
  %i.ft = extractelement <2 x double> %i.fd, i64 0
  %i.fu = fadd double %i.ft, %i.fj
  %i.fv = fadd double %i.fn, %i.fu
  %i.fw = fadd double %i.ee, %i.fv
  %gep143 = getelementptr inbounds [8 x i8], ptr %invariant.gep142, i64 %i.df
  store double %i.fw, ptr %gep143, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !33

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fx = add nuw nsw i64 %i.an, 18               ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fx
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %i.fz = load double, ptr %gep.peel, align 8, !tbaa !18
  %gep135.peel = getelementptr i8, ptr %invariant.gep134, i64 152
  %i.ga = load double, ptr %gep135.peel, align 8, !tbaa !18
  %gep137.peel = getelementptr i8, ptr %invariant.gep136, i64 144
  %i.gb = load <2 x double>, ptr %i.fy, align 8, !tbaa !18 ; 4 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 1 ; 4 uses
  %i.gd = fmul double %.sink, %i.gc               ; 2 uses
  %i.ge = load <2 x double>, ptr %gep137.peel, align 8, !tbaa !18
  %i.gf = extractelement <2 x double> %i.gb, i64 0 ; 3 uses
  %i.gg = fmul double %i.gf, 1.630000e-16
  %i.gh = fmul double %i.gf, 4.660000e-16
  %i.gi = fmul double %i.gh, %i.gc                ; 2 uses
  %i.gj = fsub double %i.gf, %i.fz
  %i.gk = fmul double %i.gg, 3.700000e+16         ; 2 uses
  %i.gl = fneg double %i.gj
  %i.gm = fneg double %i.gk
  %i.gn = fmul double %4, %i.gl
  %i.go = fsub double %i.gm, %i.gi
  %i.gp = fsub <2 x double> %i.ge, %i.gb          ; 2 uses
  %i.gq = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.gr = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gn, i64 1
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.gq, <2 x double> %i.gs) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  %i.gv = fadd double %i.gd, %i.gu
  %i.gw = fsub double %i.gk, %i.gi
  %i.gx = fsub double %i.gw, %i.gd
  %i.gy = fsub double %i.gc, %i.ga
  %i.gz = fneg double %i.gy
  %i.ha = fmul double %4, %i.gz
  %i.hb = getelementptr i8, ptr %i.cz, i64 128
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !18 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.da, i64 128
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.db, i64 128
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !18 ; 2 uses
  %i.hh = mul i64 %indvars.iv128, 85899345920
  %sext141 = add i64 %i.hh, 73014444032
  %i.hi = ashr exact i64 %sext141, 29
  %i.hj = getelementptr inbounds i8, ptr %i.a, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !18 ; 2 uses
  %i.hl = shufflevector <2 x double> %8, <2 x double> %i.gb, <2 x i32> <i32 0, i32 2>
  %i.hm = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gp, <2 x i32> <i32 3, i32 1>
  %i.hn = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hg, i64 1
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hm, <2 x double> %i.ho) ; 2 uses
  %i.hq = extractelement <2 x double> %i.hp, i64 1
  %i.hr = fadd double %i.hc, %i.hq
  %i.hs = fmul double %i.v, %i.hr
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.gc, double -2.000000e+00, double %i.hk)
  %i.hu = fadd double %i.he, %i.ht
  %i.hv = fmul double %i.v, %i.hu
  %i.hw = fsub double %i.hg, %i.hc
  %i.hx = fmul double %i.x, %i.hw
  %i.hy = fsub double %i.hk, %i.he
  %i.hz = fmul double %i.x, %i.hy
  %i.ia = extractelement <2 x double> %i.gt, i64 1
  %i.ib = fadd double %i.ia, %i.hs
  %i.ic = fadd double %i.hx, %i.ib
  %i.id = fadd double %i.gv, %i.ic
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fx
  store double %i.id, ptr %i.ie, align 8, !tbaa !18
  %i.if = extractelement <2 x double> %i.hp, i64 0
  %i.ig = fadd double %i.if, %i.hv
  %i.ih = fadd double %i.hz, %i.ig
  %i.ii = fadd double %i.gx, %i.ih
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.an
  store double %i.ii, ptr %i.ij, align 8, !tbaa !18
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
  %i.e = load double, ptr %i.d, align 8, !tbaa !20
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
  store double %.sink, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2424
  %i.m = load double, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 2448
  %i.o = load double, ptr %i.n, align 8, !tbaa !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2432
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 2440
  %i.r = load double, ptr %i.p, align 8, !tbaa !24
  %i.s = load double, ptr %i.q, align 8, !tbaa !25
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.r, i64 0
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
  %i.ag = fmul double %i.ad, 2.000000e-01
  %i.ah = tail call double @exp(double noundef %i.ag) #9
  %i.ai = icmp eq i64 %indvars.iv134, 0
  %i.aj = select i1 %i.ai, i64 1, i64 4294967295
  %i.ak = icmp eq i64 %indvars.iv134, 9
  %i.al = select i1 %i.ak, i64 4294967295, i64 1
  %i.am = mul nuw nsw i64 %indvars.iv134, 20      ; 12 uses
  %i.an = add nuw i64 %i.aj, %indvars.iv134
  %i.ao = add nuw i64 %i.al, %indvars.iv134
  %sext = mul i64 %i.ao, 85899345920
  %i.ap = ashr exact i64 %sext, 32                ; 2 uses
  %sext138 = mul i64 %i.an, 85899345920
  %i.aq = ashr exact i64 %sext138, 32             ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = or disjoint i64 %i.am, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aq
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bd = trunc i64 %i.am to i32
  %i.be = or disjoint i32 %i.bd, 1
  %i.bf = mul i64 %indvars.iv134, 85899345920
  %i.bg = ashr exact i64 %i.bf, 29
  %i.bh = getelementptr i8, ptr %i.b, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.av, double 4.660000e-16, double f0x40181FBE76C8B43A)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.am
  %7 = fmul double %i.o, %i.ah                    ; 2 uses
  %8 = fmul double %i.o, %i.af                    ; 2 uses
  %9 = fadd double %8, %7
  %10 = fneg double %9
  %i.bm = load double, ptr %i.ax, align 8, !tbaa !18
  %i.bn = load <2 x double>, ptr %i.aw, align 8, !tbaa !18 ; 4 uses
  %i.bo = load <2 x double>, ptr %i.ay, align 8, !tbaa !18
  %i.bp = load <2 x double>, ptr %i.az, align 8, !tbaa !18
  %i.bq = fneg double %i.bk
  %i.br = tail call double @llvm.fmuladd.f64(double %i.av, double -4.660000e-16, double f0x40181FBE76C8B43A)
  %i.bs = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.bv = fneg double %i.bm
  %i.bw = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = fmul <2 x double> %i.bu, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.br, i64 1
  %i.cb = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.by)
  %i.cd = fadd <2 x double> %i.cc, zeroinitializer
  %11 = insertelement <2 x double> poison, double %7, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ce = fmul <2 x double> %12, %i.bp
  %i.cf = insertelement <2 x double> poison, double %10, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bn, <2 x double> %i.ce)
  %13 = insertelement <2 x double> poison, double %8, i64 0
  %i.ci = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.bo, <2 x double> %i.ch)
  %i.ck = fadd <2 x double> %i.cd, %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.bj, i64 1 ; 4 uses
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cm)
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.co, <2 x double> %i.ck)
  %i.cq = fsub <2 x double> %i.cm, %i.cm
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.cq, <2 x double> %i.cp)
  store <2 x double> %i.cr, ptr %i.bl, align 8, !tbaa !18
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.aq ; 2 uses
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.b, i64 %i.am ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.b, i64 %i.am ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.cu = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.cv = add nuw nsw i64 %i.cu, %i.am            ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = or disjoint i64 %i.cu, 1
  %i.cz = add nuw nsw i64 %i.cy, %i.am            ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cv
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cz
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cu
  %gep143 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.cu
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  %i.df = shl nuw i64 %indvars.iv, 1
  %i.dg = and i64 %i.df, 4294967294
  %i.dh = getelementptr [8 x i8], ptr %i.cs, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -16
  %i.dj = shl i32 %i.de, 1
  %i.dk = add i32 %i.dj, 2                        ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %i.ct, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18
  %i.do = add nuw nsw i32 %i.dk, %i.be
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cv
  %i.dt = load double, ptr %i.dd, align 8, !tbaa !18
  %i.du = load <2 x double>, ptr %i.dc, align 8, !tbaa !18 ; 4 uses
  %i.dv = load <2 x double>, ptr %gep, align 8, !tbaa !18
  %i.dw = load <2 x double>, ptr %gep143, align 8, !tbaa !18
  %i.dx = load <2 x double>, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %i.dy = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0
  %i.ec = fneg double %i.eb
  %i.ed = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.eg = fneg double %i.dt
  %i.eh = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = insertelement <2 x double> %i.eh, double %i.eg, i64 1
  %i.ej = fmul <2 x double> %i.ef, %i.ei
  %i.ek = insertelement <2 x double> %i.ea, double %i.ec, i64 0
  %i.el = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.el, <2 x double> %i.ej)
  %i.en = fadd <2 x double> %i.em, zeroinitializer
  %i.eo = fmul <2 x double> %12, %i.dw
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.du, <2 x double> %i.eo)
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.dv, <2 x double> %i.ep)
  %i.er = fadd <2 x double> %i.en, %i.eq
  %i.es = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.dr, i64 1 ; 2 uses
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> splat (double -2.000000e+00), <2 x double> %i.et)
  %i.ev = fadd <2 x double> %i.dx, %i.eu
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.ev, <2 x double> %i.er)
  %i.ex = fsub <2 x double> %i.et, %i.dx
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.ex, <2 x double> %i.ew)
  store <2 x double> %i.ey, ptr %i.ds, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !34

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.ez = add nuw nsw i64 %i.am, 18               ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = add nuw nsw i64 %i.am, 19               ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ez
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fc
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %gep143.peel = getelementptr i8, ptr %invariant.gep142, i64 144
  %i.fh = getelementptr i8, ptr %i.cs, i64 128
  %i.fi = getelementptr i8, ptr %i.ct, i64 128
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fk = mul i64 %indvars.iv134, 85899345920
  %sext147 = add i64 %i.fk, 73014444032
  %i.fl = ashr exact i64 %sext147, 29
  %i.fm = getelementptr inbounds i8, ptr %i.b, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ez
  %i.fp = load double, ptr %i.fg, align 8, !tbaa !18
  %i.fq = load <2 x double>, ptr %i.ff, align 8, !tbaa !18 ; 4 uses
  %i.fr = load <2 x double>, ptr %gep.peel, align 8, !tbaa !18
  %i.fs = load <2 x double>, ptr %gep143.peel, align 8, !tbaa !18
  %i.ft = load <2 x double>, ptr %i.fh, align 8, !tbaa !18 ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 0
  %i.fy = fneg double %i.fx
  %i.fz = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.y)
  %i.gc = fneg double %i.fp
  %i.gd = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ge = insertelement <2 x double> %i.gd, double %i.gc, i64 1
  %i.gf = fmul <2 x double> %i.gb, %i.ge
  %i.gg = insertelement <2 x double> %i.fw, double %i.fy, i64 0
  %i.gh = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gh, <2 x double> %i.gf)
  %i.gj = fadd <2 x double> %i.gi, zeroinitializer
  %i.gk = fmul <2 x double> %12, %i.fs
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.fq, <2 x double> %i.gk)
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.fr, <2 x double> %i.gl)
  %i.gn = fadd <2 x double> %i.gj, %i.gm
  %i.go = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.fn, i64 1 ; 2 uses
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> splat (double -2.000000e+00), <2 x double> %i.gp)
  %i.gr = fadd <2 x double> %i.ft, %i.gq
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.gr, <2 x double> %i.gn)
  %i.gt = fsub <2 x double> %i.gp, %i.ft
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.gt, <2 x double> %i.gs)
  store <2 x double> %i.gu, ptr %i.fo, align 8, !tbaa !18
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
  %i.y = load double, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 2424
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2448
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
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
  %invariant.gep143.idx = mul nuw nsw i64 %indvars.iv122, 160
  %invariant.gep143 = getelementptr inbounds nuw i8, ptr %i.c, i64 %invariant.gep143.idx ; 10 uses
  %invariant.gep104 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv122 ; 10 uses
  %invariant.gep102 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122 ; 10 uses
  %i.ax = load ptr, ptr %invariant.gep102, align 8, !tbaa !14 ; 3 uses
  %i.ay = load ptr, ptr %invariant.gep104, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %i.ba = load <2 x double>, ptr %invariant.gep143, align 8, !tbaa !18 ; 2 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = extractelement <2 x double> %i.bb, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 1
  %i.bi = shufflevector <2 x double> %i.bb, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bj = fsub <2 x double> %i.bi, %i.aw          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %i.az, align 8, !tbaa !18
  store double %i.be, ptr %i.bd, align 8, !tbaa !18
  store double %i.bh, ptr %i.bf, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  store double %i.bm, ptr %i.bl, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i64 noundef 2, i64 noundef 2) #9
  %gep.1146 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 16
  %gep103.1 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 80
  %i.bn = load ptr, ptr %gep103.1, align 8, !tbaa !14 ; 3 uses
  %gep105.1 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 80
  %i.bo = load ptr, ptr %gep105.1, align 8, !tbaa !14
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bq = load <2 x double>, ptr %gep.1146, align 8, !tbaa !18 ; 2 uses
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !36 ; 2 uses
  %i.bu = extractelement <2 x double> %i.br, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = shufflevector <2 x double> %i.br, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.bz = fsub <2 x double> %i.by, %i.aw          ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  store double %i.ca, ptr %i.bp, align 8, !tbaa !18
  store double %i.bu, ptr %i.bt, align 8, !tbaa !18
  store double %i.bx, ptr %i.bv, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cc = extractelement <2 x double> %i.bz, i64 1
  store double %i.cc, ptr %i.cb, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.bn, ptr noundef %i.bo, i64 noundef 2, i64 noundef 2) #9
  %gep.2147 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 32
  %gep103.2 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 160
  %i.cd = load ptr, ptr %gep103.2, align 8, !tbaa !14 ; 3 uses
  %gep105.2 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 160
  %i.ce = load ptr, ptr %gep105.2, align 8, !tbaa !14
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %i.cg = load <2 x double>, ptr %gep.2147, align 8, !tbaa !18 ; 2 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36 ; 2 uses
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = shufflevector <2 x double> %i.ch, <2 x double> %i.cm, <2 x i32> <i32 1, i32 2>
  %i.cp = fsub <2 x double> %i.co, %i.aw          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  store double %i.cq, ptr %i.cf, align 8, !tbaa !18
  store double %i.ck, ptr %i.cj, align 8, !tbaa !18
  store double %i.cn, ptr %i.cl, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cs = extractelement <2 x double> %i.cp, i64 1
  store double %i.cs, ptr %i.cr, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.cd, ptr noundef %i.ce, i64 noundef 2, i64 noundef 2) #9
  %gep.3148 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 48
  %gep103.3 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 240
  %i.ct = load ptr, ptr %gep103.3, align 8, !tbaa !14 ; 3 uses
  %gep105.3 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 240
  %i.cu = load ptr, ptr %gep105.3, align 8, !tbaa !14
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %i.cw = load <2 x double>, ptr %gep.3148, align 8, !tbaa !18 ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 2 uses
end_hunk_0
begin_hunk_1_@PrintFinalStats:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @FreeUserData(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %indvars.iv ; 10 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %indvars.iv ; 10 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.f) #9
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.g) #9
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.r) #9
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.t) #9
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.v) #9
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.x) #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.z) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ab) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ad) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.af) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ah) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.aj) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.al) #9
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.an) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ap) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ar) #9
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.at) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.av) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ax) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.az) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bb) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bd) #9
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bf) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bh) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bj) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %0) #9
  ret void
}

declare void @CVodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newIndexArray(i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @CVodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLastOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLinWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumPrecEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumPrecSolves(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

declare void @SUNDlsMat_denseCopy(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseScale(double noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseAddIdentity(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SUNDlsMat_denseGETRF(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseGETRS(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 double", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 long", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 800, !5, i64 1600, !17, i64 2400, !17, i64 2408, !17, i64 2416, !17, i64 2424, !17, i64 2432, !17, i64 2440, !17, i64 2448}
!20 = !{!19, !17, i64 2408}
!21 = !{!19, !17, i64 2400}
!22 = !{!19, !17, i64 2424}
!23 = !{!19, !17, i64 2448}
!24 = !{!19, !17, i64 2432}
!25 = !{!19, !17, i64 2440}
!26 = !{!"llvm.loop.peeled.count", i32 2}
!27 = !{!6, !6, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!9, !9, i64 0}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = !{!"p1 double", !9, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_1
