Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinFerTron_dns?download=true
inline.NumInlined: 23
inline.NumDeleted: 2
begin_hunk_0_@main:bb.a
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.s

bb.h:                                             ; preds = %bb.g
  call fastcc void @SetInitialGuess1(ptr noundef nonnull %i.k, ptr noundef %i.g)
  call fastcc void @SetInitialGuess2(ptr noundef nonnull %i.p, ptr noundef %i.g)
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef nonnull %i.z) #11
  %i.ai = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.ae) #11 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.aj, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.ak, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.am = call ptr @KINCreate(ptr noundef %i.al) #11 ; 16 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !16
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %check_retval.exit122, label %bb.i

check_retval.exit122:                             ; preds = %bb.h
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.aq = call i32 @KINSetUserData(ptr noundef nonnull %i.am, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %check_retval.exit124, label %bb.j

check_retval.exit124:                             ; preds = %bb.i
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i32 noundef %i.aq) #12 ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.au = call i32 @KINSetConstraints(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ae) #11 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %check_retval.exit126, label %bb.k

check_retval.exit126:                             ; preds = %bb.j
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, i32 noundef %i.au) #12 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ay = call i32 @KINSetFuncNormTol(ptr noundef nonnull %i.am, double noundef 1.000000e-05) #11 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %check_retval.exit128, label %bb.l

check_retval.exit128:                             ; preds = %bb.k
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.5, i32 noundef %i.ay) #12 ; 0 uses
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bc = call i32 @KINSetScaledStepTol(ptr noundef nonnull %i.am, double noundef 1.000000e-05) #11 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %check_retval.exit130, label %bb.m

check_retval.exit130:                             ; preds = %bb.l
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.6, i32 noundef %i.bc) #12 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bg = call i32 @KINInit(ptr noundef nonnull %i.am, ptr noundef nonnull @func, ptr noundef nonnull %i.u) #11 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %check_retval.exit132, label %bb.n

check_retval.exit132:                             ; preds = %bb.m
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.7, i32 noundef %i.bg) #12 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bl = call ptr @SUNDenseMatrix(i64 noundef 6, i64 noundef 6, ptr noundef %i.bk) #11 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %check_retval.exit134, label %bb.o

check_retval.exit134:                             ; preds = %bb.n
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.bq = call ptr @SUNLinSol_Dense(ptr noundef nonnull %i.u, ptr noundef nonnull %i.bl, ptr noundef %i.bp) #11 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %check_retval.exit136, label %bb.p

check_retval.exit136:                             ; preds = %bb.o
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.9) #12 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bu = call i32 @KINSetLinearSolver(ptr noundef nonnull %i.am, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bl) #11 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %check_retval.exit138, label %bb.q

check_retval.exit138:                             ; preds = %bb.p
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.10, i32 noundef %i.bu) #12 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @PrintHeader()
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts108 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  call fastcc void @PrintOutput(ptr noundef nonnull %i.k)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.k, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef 1)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.k, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 1)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.k, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef 0)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.k, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 0)
  %puts109 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts110 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  call fastcc void @PrintOutput(ptr noundef nonnull %i.p)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef 1)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 1)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef 0)
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef nonnull %i.p, ptr noundef nonnull %i.u) #11
  call fastcc void @SolveIt(ptr noundef nonnull %i.am, ptr noundef nonnull %i.u, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 0)
  call void @N_VDestroy(ptr noundef nonnull %i.k) #11
  call void @N_VDestroy(ptr noundef nonnull %i.p) #11
  call void @N_VDestroy(ptr noundef nonnull %i.u) #11
  call void @N_VDestroy(ptr noundef nonnull %i.z) #11
  call void @N_VDestroy(ptr noundef nonnull %i.ae) #11
  call void @KINFree(ptr noundef nonnull %i.b) #11
  %i.ca = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bq) #11 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bl) #11
  call void @free(ptr noundef nonnull %i.g) #11
  %i.cb = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %check_retval.exit138, %check_retval.exit136, %check_retval.exit134, %check_retval.exit132, %check_retval.exit130, %check_retval.exit128, %check_retval.exit126, %check_retval.exit124, %check_retval.exit122, %bb.q
  %.2 = phi i32 [ 1, %check_retval.exit132 ], [ 1, %check_retval.exit122 ], [ 1, %check_retval.exit124 ], [ 1, %check_retval.exit126 ], [ 1, %check_retval.exit128 ], [ 1, %check_retval.exit130 ], [ 1, %check_retval.exit134 ], [ 0, %bb.q ], [ 1, %check_retval.exit136 ], [ 1, %check_retval.exit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.s

bb.s:                                             ; preds = %check_retval.exit120, %check_retval.exit118, %check_retval.exit116, %check_retval.exit114, %check_retval.exit112, %check_retval.exit, %bb.b, %bb.r
  %.9 = phi i32 [ 1, %check_retval.exit ], [ 1, %bb.b ], [ 1, %check_retval.exit112 ], [ 1, %check_retval.exit114 ], [ 1, %check_retval.exit116 ], [ 1, %check_retval.exit118 ], [ %.2, %bb.r ], [ 1, %check_retval.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialGuess1(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !12 ; 3 uses
  store <2 x double> %i.d, ptr %i.a, align 8, !tbaa !12
  %i.e = load double, ptr %1, align 8, !tbaa !12
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.g = fsub double %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.g, ptr %i.h, align 8, !tbaa !12
  %i.i = load double, ptr %i.b, align 8, !tbaa !12
  %i.j = fsub double %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.j, ptr %i.k, align 8, !tbaa !12
  %i.l = load double, ptr %i.c, align 8, !tbaa !12
  %i.m = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.n = fsub double %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.n, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !12
  %i.r = fsub double %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.r, ptr %i.s, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialGuess2(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %2 = load double, ptr %1, align 8, !tbaa !12
  %3 = load double, ptr %i.b, align 8, !tbaa !12
  %4 = fadd double %2, %3
  %5 = fmul double %4, 5.000000e-01               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %6 = load double, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %7 = load double, ptr %i.d, align 8, !tbaa !12
  %8 = fadd double %6, %7
  %9 = fmul double %8, 5.000000e-01               ; 3 uses
  store double %5, ptr %i.a, align 8, !tbaa !12
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %9, ptr %10, align 8, !tbaa !12
  %i.e = load double, ptr %1, align 8, !tbaa !12
  %i.f = fsub double %5, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.f, ptr %i.g, align 8, !tbaa !12
  %i.h = load double, ptr %i.b, align 8, !tbaa !12
  %i.i = fsub double %5, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.i, ptr %i.j, align 8, !tbaa !12
  %i.k = load double, ptr %i.c, align 8, !tbaa !12
  %i.l = fsub double %9, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.l, ptr %i.m, align 8, !tbaa !12
  %i.n = load double, ptr %i.d, align 8, !tbaa !12
  %i.o = fsub double %9, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.o, ptr %i.p, align 8, !tbaa !12
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare ptr @KINCreate(ptr noundef) local_unnamed_addr #2

declare i32 @KINSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetFuncNormTol(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @KINSetScaledStepTol(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @KINInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @func(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #11 ; 6 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 5 uses
  %i.d = load double, ptr %i.b, align 8, !tbaa !12 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = fmul double %i.d, %i.f
  %i.p = tail call double @sin(double noundef %i.o) #11
  %i.q = fmul double %i.d, 2.000000e+00
  %i.r = tail call double @exp(double noundef %i.q) #11
  %i.s = fadd double %i.r, f0xC005BF0A87427F01
  %i.t = insertelement <2 x double> poison, double %i.f, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.u, <double 2.500000e-01, double f0x4005BF0A87427F01>
  %i.w = fdiv <2 x double> %i.v, <double f0xC00921FB4D12D84A, double f0x400921FB4D12D84A>
  %i.x = insertelement <2 x double> poison, double %i.p, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.s, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> <double 5.000000e-01, double f0x3FED7419F18C3613>, <2 x double> %i.w)
  %i.aa = insertelement <2 x double> poison, double %i.d, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double -5.000000e-01, double f0xC015BF0A87427F01>, <2 x double> %i.z)
  store <2 x double> %i.ac, ptr %i.c, align 8, !tbaa !12
  %i.ad = fsub double %i.h, %i.d
  %i.ae = load double, ptr %2, align 8, !tbaa !12
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %i.af, ptr %i.ag, align 8, !tbaa !12
  %i.ah = fsub double %i.j, %i.d
  %i.ai = load double, ptr %i.a, align 8, !tbaa !12
  %i.aj = fadd double %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %i.aj, ptr %i.ak, align 8, !tbaa !12
  %i.al = fsub double %i.l, %i.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !12
  %i.ao = fadd double %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.ao, ptr %i.ap, align 8, !tbaa !12
  %i.aq = fsub double %i.n, %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !12
  %i.at = fadd double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.at, ptr %i.au, align 8, !tbaa !12
  ret i32 0
}

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, double noundef 1.000000e-05, double noundef 1.000000e-05) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #11 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.b, double noundef %i.d) ; 0 uses
  ret void
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SolveIt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not = icmp eq i32 %4, 0
  %.str.17..str.16 = select i1 %.not, ptr @.str.17, ptr @.str.16
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.17..str.16) ; 0 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar11 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = zext nneg i32 %4 to i64
  %i.h = tail call i32 @KINSetMaxSetupCalls(ptr noundef %0, i64 noundef %i.g) #11 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %check_retval.exit, label %bb.e

check_retval.exit:                                ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.19, i32 noundef %i.h) #12 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @KINSol(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %2, ptr noundef %2) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %check_retval.exit15, label %bb.f

check_retval.exit15:                              ; preds = %bb.e
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.20, i32 noundef %i.l) #12 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21) ; 0 uses
  %i.q = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !12
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, double noundef %i.r, double noundef %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.v = call i32 @KINGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %check_retval.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.y = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.22, i32 noundef %i.v) #12 ; 0 uses
  br label %check_retval.exit.i

check_retval.exit.i:                              ; preds = %bb.g, %bb.f
  %i.z = call i32 @KINGetNumFuncEvals(ptr noundef %0, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %check_retval.exit5.i

bb.h:                                             ; preds = %check_retval.exit.i
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, i32 noundef %i.z) #12 ; 0 uses
  br label %check_retval.exit5.i

check_retval.exit5.i:                             ; preds = %bb.h, %check_retval.exit.i
  %i.ad = call i32 @KINGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %check_retval.exit7.i

bb.i:                                             ; preds = %check_retval.exit5.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.24, i32 noundef %i.ad) #12 ; 0 uses
  br label %check_retval.exit7.i

check_retval.exit7.i:                             ; preds = %bb.i, %check_retval.exit5.i
  %i.ah = call i32 @KINGetNumLinFuncEvals(ptr noundef %0, ptr noundef nonnull %i.d) #11 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %PrintFinalStats.exit

bb.j:                                             ; preds = %check_retval.exit7.i
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !9
end_hunk_0
