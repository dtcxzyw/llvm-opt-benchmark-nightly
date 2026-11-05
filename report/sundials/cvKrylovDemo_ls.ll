Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvKrylovDemo_ls?download=true
inline.NumInlined: 40
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@main:bb.a
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %.loopexit, label %.split.6

.split.6:                                         ; preds = %.split.5
  %i.fw = call i32 @CVode(ptr noundef %i.ds, double noundef 5.040000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %.loopexit, label %.split.7

.split.7:                                         ; preds = %.split.6
  %i.fy = call i32 @CVode(ptr noundef %i.ds, double noundef 5.760000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit, label %.split.8

.split.8:                                         ; preds = %.split.7
  %i.ga = call i32 @CVode(ptr noundef %i.ds, double noundef 6.480000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %.loopexit, label %.split.9

.split.9:                                         ; preds = %.split.8
  %i.gc = call i32 @CVode(ptr noundef %i.ds, double noundef 7.200000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %.loopexit, label %.split.10

.split.10:                                        ; preds = %.split.9
  %i.ge = call i32 @CVode(ptr noundef %i.ds, double noundef 7.920000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %.loopexit, label %.split.11

.split.11:                                        ; preds = %.split.10
  %i.gg = call i32 @CVode(ptr noundef %i.ds, double noundef 8.640000e+04, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %.loopexit, label %.loopexit.thread315

.loopexit.thread316:                              ; preds = %.split.us.11, %.split.us.10, %.split.us.9, %.split.us.8, %.split.us.7, %.split.us.6, %.split.us.5, %.split.us.4, %.split.us.3, %.split.us.2, %.split.us.1, %.split.us.preheader
  %.us-phi.ph = phi i32 [ %i.fg, %.split.us.10 ], [ %i.fd, %.split.us.9 ], [ %i.fa, %.split.us.8 ], [ %i.ex, %.split.us.7 ], [ %i.eu, %.split.us.6 ], [ %i.er, %.split.us.5 ], [ %i.eo, %.split.us.4 ], [ %i.el, %.split.us.3 ], [ %i.ei, %.split.us.2 ], [ %i.ef, %.split.us.1 ], [ %i.eb, %.split.us.preheader ], [ %i.fj, %.split.us.11 ]
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.30, i32 noundef %.us-phi.ph) #11 ; 0 uses
  br label %check_retval.exit122

.loopexit:                                        ; preds = %.split.11, %.split.10, %.split.9, %.split.8, %.split.7, %.split.6, %.split.5, %.split.4, %.split.3, %.split.2, %.split.1, %.split.preheader
  %.us-phi = phi i32 [ %i.eb, %.split.preheader ], [ %i.fm, %.split.1 ], [ %i.fo, %.split.2 ], [ %i.fq, %.split.3 ], [ %i.fs, %.split.4 ], [ %i.fu, %.split.5 ], [ %i.fw, %.split.6 ], [ %i.fy, %.split.7 ], [ %i.ga, %.split.8 ], [ %i.gc, %.split.9 ], [ %i.ge, %.split.10 ], [ %i.gg, %.split.11 ]
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.30, i32 noundef %.us-phi) #11 ; 0 uses
  br label %.loopexit.thread315

.loopexit.thread315:                              ; preds = %.split.11, %.loopexit
  %i.gm = load double, ptr %i.a, align 8, !tbaa !15
  call fastcc void @PrintOutput(ptr noundef %i.ds, ptr noundef nonnull %i.aj, double noundef %i.gm)
  br label %check_retval.exit122

check_retval.exit122:                             ; preds = %.split.us.11, %.loopexit.thread316, %.loopexit.thread315
  call fastcc void @PrintStats(ptr noundef %i.ds, i32 noundef %.063241)
  %i.gn = add nuw nsw i32 %.063241, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gn, 4
  br i1 %exitcond.not, label %bb.z, label %bb.n

bb.z:                                             ; preds = %check_retval.exit122
  call void @N_VDestroy(ptr noundef nonnull %i.aj) #10
  call fastcc void @FreeUserData(ptr noundef nonnull %i.an)
  call void @CVodeFree(ptr noundef nonnull %i.b) #10
  %i.go = call i32 @SUNLinSolFree(ptr noundef nonnull %.1) #10 ; 0 uses
  %i.gp = call i32 @SUNNonlinSolFree(ptr noundef %i.bn) #10 ; 0 uses
  %i.gq = call i32 @SUNLogger_Destroy(ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.gr = call i32 @SUNContext_Free(ptr noundef nonnull %i.c) #10 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %check_retval.exit144, %check_retval.exit142, %check_retval.exit140, %check_retval.exit138, %check_retval.exit136, %check_retval.exit134, %check_retval.exit132, %check_retval.exit130, %check_retval.exit128, %check_retval.exit126, %check_retval.exit124, %check_retval.exit122.thread, %check_retval.exit119, %check_retval.exit117, %check_retval.exit115, %check_retval.exit113, %check_retval.exit111, %check_retval.exit109, %check_retval.exit107, %check_retval.exit105, %check_retval.exit103, %check_retval.exit, %bb.z
  %.066 = phi i32 [ 0, %bb.z ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit103 ], [ 1, %check_retval.exit105 ], [ 1, %check_retval.exit107 ], [ 1, %check_retval.exit109 ], [ 1, %check_retval.exit111 ], [ 1, %check_retval.exit113 ], [ 1, %check_retval.exit115 ], [ 1, %check_retval.exit117 ], [ 1, %check_retval.exit119 ], [ 1, %check_retval.exit144 ], [ 1, %check_retval.exit122.thread ], [ 1, %check_retval.exit140 ], [ 1, %check_retval.exit142 ], [ 1, %check_retval.exit124 ], [ 1, %check_retval.exit126 ], [ 1, %check_retval.exit128 ], [ 1, %check_retval.exit130 ], [ 1, %check_retval.exit132 ], [ 1, %check_retval.exit134 ], [ 1, %check_retval.exit136 ], [ 1, %check_retval.exit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.066
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLogger_Create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLogger_SetInfoFilename(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_SetLogger(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @AllocUserData() unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2472) ptr @malloc(i64 noundef 2472) #12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %indvars.iv ; 10 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %indvars.iv ; 10 uses
  %i.g = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  store ptr %i.g, ptr %i.d, align 8, !tbaa !18
  %i.h = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  store ptr %i.h, ptr %i.e, align 8, !tbaa !18
  %i.i = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  store ptr %i.i, ptr %i.f, align 8, !tbaa !20
  %i.j = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !20
  %i.v = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !18
  %i.x = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !20
  %i.ah = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !18
  %i.aj = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !18
  %i.al = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.al, ptr %i.am, align 8, !tbaa !20
  %i.an = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !18
  %i.ar = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !20
  %i.at = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.at, ptr %i.au, align 8, !tbaa !18
  %i.av = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !18
  %i.ax = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !20
  %i.az = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !18
  %i.bd = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !20
  %i.bf = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !18
  %i.bh = tail call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !18
  %i.bj = tail call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialProfiles(ptr noundef %0, double noundef nofpclass(nan inf zero sub nnorm) %1, double noundef nofpclass(nan inf zero sub nnorm) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #10 ; 100 uses
  %i.b = fmul nnan double %1, 9.000000e+00
  %i.c = fadd nnan double %i.b, -1.000000e+01
  %i.d = fmul nnan double %i.c, 1.000000e-01      ; 2 uses
  %i.e = fmul double %i.d, %i.d                   ; 3 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = fsub double 1.000000e+00, %i.e
  %3 = tail call double @llvm.fmuladd.f64(double %i.f, double 5.000000e-01, double %i.g)
  %i.h = insertelement <2 x double> poison, double %3, i64 0
  %4 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fmul <2 x double> %4, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %i.i = insertelement <2 x double> poison, double %1, i64 0
  %6 = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %7 = fmul nnan <2 x double> %6, <double 7.000000e+00, double 8.000000e+00>
  %8 = fadd nnan <2 x double> %7, splat (double -1.000000e+01)
  %9 = fmul nnan <2 x double> %8, splat (double 1.000000e-01) ; 2 uses
  %10 = fmul <2 x double> %9, %9                  ; 3 uses
  %11 = fmul <2 x double> %10, %10
  %12 = fsub <2 x double> splat (double 1.000000e+00), %10
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> splat (double 5.000000e-01), <2 x double> %12) ; 2 uses
  %13 = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %14 = fmul <2 x double> %13, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %15 = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fmul <2 x double> %15, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %17 = fmul nnan <2 x double> %6, <double 5.000000e+00, double 6.000000e+00>
  %18 = fadd nnan <2 x double> %17, splat (double -1.000000e+01)
  %19 = fmul nnan <2 x double> %18, splat (double 1.000000e-01) ; 2 uses
  %20 = fmul <2 x double> %19, %19                ; 3 uses
  %21 = fmul <2 x double> %20, %20
  %22 = fsub <2 x double> splat (double 1.000000e+00), %20
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> splat (double 5.000000e-01), <2 x double> %22) ; 2 uses
  %23 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x double> %23, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %25 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x double> %25, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %27 = fmul nnan <2 x double> %6, <double 3.000000e+00, double 4.000000e+00>
  %28 = fadd nnan <2 x double> %27, splat (double -1.000000e+01)
  %29 = fmul nnan <2 x double> %28, splat (double 1.000000e-01) ; 2 uses
  %30 = fmul <2 x double> %29, %29                ; 3 uses
  %31 = fmul <2 x double> %30, %30
  %32 = fsub <2 x double> splat (double 1.000000e+00), %30
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> splat (double 5.000000e-01), <2 x double> %32) ; 2 uses
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x double> %34, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %i.m = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.m, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %i.o = fmul nnan <2 x double> %6, <double 1.000000e+00, double 2.000000e+00>
  %35 = fadd nnan <2 x double> %i.o, splat (double -1.000000e+01)
  %i.p = fmul nnan <2 x double> %35, splat (double 1.000000e-01) ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p             ; 3 uses
  %i.r = fmul <2 x double> %i.q, %i.q
  %36 = fsub <2 x double> splat (double 1.000000e+00), %i.q
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> splat (double 5.000000e-01), <2 x double> %36) ; 2 uses
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x double> %38, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  %i.t = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.t, <double 1.000000e+06, double 1.000000e+12> ; 10 uses
  store <2 x double> <double 2.500000e+05, double 2.500000e+11>, ptr %i.a, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = fmul <2 x double> %i.u, splat (double 5.000000e-01)
  store <2 x double> %i.w, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = fmul <2 x double> %i.s, splat (double 5.000000e-01)
  store <2 x double> %i.y, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aa = fmul <2 x double> %i.n, splat (double 5.000000e-01)
  store <2 x double> %i.aa, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ac = fmul <2 x double> %i.l, splat (double 5.000000e-01)
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ae = fmul <2 x double> %26, splat (double 5.000000e-01)
  store <2 x double> %i.ae, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ag = fmul <2 x double> %24, splat (double 5.000000e-01)
  store <2 x double> %i.ag, ptr %i.af, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ai = fmul <2 x double> %16, splat (double 5.000000e-01)
  store <2 x double> %i.ai, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ak = fmul <2 x double> %14, splat (double 5.000000e-01)
  store <2 x double> %i.ak, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.am = fmul <2 x double> %5, splat (double 5.000000e-01)
  store <2 x double> %i.am, ptr %i.al, align 8, !tbaa !15
  %i.an = fadd nnan double %2, 3.000000e+01
  %i.ao = fadd nnan double %i.an, -4.000000e+01
  %i.ap = fmul nnan double %i.ao, 1.000000e-01    ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap                ; 3 uses
  %i.ar = fsub double 1.000000e+00, %i.aq
  %i.as = fmul double %i.aq, %i.aq
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double 5.000000e-01, double %i.ar)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ax = fmul <2 x double> %i.aw, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.ax, ptr %i.au, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.az = fmul <2 x double> %i.aw, %i.u
  store <2 x double> %i.az, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bb = fmul <2 x double> %i.aw, %i.s
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bd = fmul <2 x double> %i.aw, %i.n
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bf = fmul <2 x double> %i.aw, %i.l
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bh = fmul <2 x double> %i.aw, %26
  store <2 x double> %i.bh, ptr %i.bg, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bj = fmul <2 x double> %i.aw, %24
  store <2 x double> %i.bj, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.bl = fmul <2 x double> %i.aw, %16
  store <2 x double> %i.bl, ptr %i.bk, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bn = fmul <2 x double> %i.aw, %14
  store <2 x double> %i.bn, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bp = fmul <2 x double> %i.aw, %5
  store <2 x double> %i.bp, ptr %i.bo, align 8, !tbaa !15
  %i.bq = tail call nnan double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 3.000000e+01)
  %i.br = fadd nnan double %i.bq, -4.000000e+01
  %i.bs = fmul nnan double %i.br, 1.000000e-01    ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs                ; 3 uses
  %i.bu = fsub double 1.000000e+00, %i.bt
  %i.bv = fmul double %i.bt, %i.bt
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double 5.000000e-01, double %i.bu)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ca = fmul <2 x double> %i.bz, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.ca, ptr %i.bx, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.cc = fmul <2 x double> %i.bz, %i.u
  store <2 x double> %i.cc, ptr %i.cb, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ce = fmul <2 x double> %i.bz, %i.s
  store <2 x double> %i.ce, ptr %i.cd, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.cg = fmul <2 x double> %i.bz, %i.n
  store <2 x double> %i.cg, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ci = fmul <2 x double> %i.bz, %i.l
  store <2 x double> %i.ci, ptr %i.ch, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.ck = fmul <2 x double> %i.bz, %26
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.cm = fmul <2 x double> %i.bz, %24
  store <2 x double> %i.cm, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.co = fmul <2 x double> %i.bz, %16
  store <2 x double> %i.co, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.cq = fmul <2 x double> %i.bz, %14
  store <2 x double> %i.cq, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.cs = fmul <2 x double> %i.bz, %5
  store <2 x double> %i.cs, ptr %i.cr, align 8, !tbaa !15
  %i.ct = tail call nnan double @llvm.fmuladd.f64(double %2, double 3.000000e+00, double 3.000000e+01)
  %i.cu = fadd nnan double %i.ct, -4.000000e+01
  %i.cv = fmul nnan double %i.cu, 1.000000e-01    ; 2 uses
  %i.cw = fmul double %i.cv, %i.cv                ; 3 uses
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fmul double %i.cw, %i.cw
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double 5.000000e-01, double %i.cx)
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.dd = fmul <2 x double> %i.dc, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.dd, ptr %i.da, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.df = fmul <2 x double> %i.dc, %i.u
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.dh = fmul <2 x double> %i.dc, %i.s
  store <2 x double> %i.dh, ptr %i.dg, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.dj = fmul <2 x double> %i.dc, %i.n
  store <2 x double> %i.dj, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.dl = fmul <2 x double> %i.dc, %i.l
  store <2 x double> %i.dl, ptr %i.dk, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.dn = fmul <2 x double> %i.dc, %26
  store <2 x double> %i.dn, ptr %i.dm, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.dp = fmul <2 x double> %i.dc, %24
  store <2 x double> %i.dp, ptr %i.do, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.dr = fmul <2 x double> %i.dc, %16
  store <2 x double> %i.dr, ptr %i.dq, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.dt = fmul <2 x double> %i.dc, %14
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.dv = fmul <2 x double> %i.dc, %5
  store <2 x double> %i.dv, ptr %i.du, align 8, !tbaa !15
  %i.dw = tail call nnan double @llvm.fmuladd.f64(double %2, double 4.000000e+00, double 3.000000e+01)
  %i.dx = fadd nnan double %i.dw, -4.000000e+01
  %i.dy = fmul nnan double %i.dx, 1.000000e-01    ; 2 uses
  %i.dz = fmul double %i.dy, %i.dy                ; 3 uses
  %i.ea = fsub double 1.000000e+00, %i.dz
  %i.eb = fmul double %i.dz, %i.dz
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double 5.000000e-01, double %i.ea)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.eg = fmul <2 x double> %i.ef, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.eg, ptr %i.ed, align 8, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ei = fmul <2 x double> %i.ef, %i.u
  store <2 x double> %i.ei, ptr %i.eh, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.ek = fmul <2 x double> %i.ef, %i.s
  store <2 x double> %i.ek, ptr %i.ej, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.em = fmul <2 x double> %i.ef, %i.n
  store <2 x double> %i.em, ptr %i.el, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.eo = fmul <2 x double> %i.ef, %i.l
  store <2 x double> %i.eo, ptr %i.en, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.eq = fmul <2 x double> %i.ef, %26
  store <2 x double> %i.eq, ptr %i.ep, align 8, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.es = fmul <2 x double> %i.ef, %24
  store <2 x double> %i.es, ptr %i.er, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.eu = fmul <2 x double> %i.ef, %16
  store <2 x double> %i.eu, ptr %i.et, align 8, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.ew = fmul <2 x double> %i.ef, %14
  store <2 x double> %i.ew, ptr %i.ev, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.ey = fmul <2 x double> %i.ef, %5
  store <2 x double> %i.ey, ptr %i.ex, align 8, !tbaa !15
  %i.ez = tail call nnan double @llvm.fmuladd.f64(double %2, double 5.000000e+00, double 3.000000e+01)
  %i.fa = fadd nnan double %i.ez, -4.000000e+01
  %i.fb = fmul nnan double %i.fa, 1.000000e-01    ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb                ; 3 uses
  %i.fd = fsub double 1.000000e+00, %i.fc
  %i.fe = fmul double %i.fc, %i.fc
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double 5.000000e-01, double %i.fd)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.fh = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.fj = fmul <2 x double> %i.fi, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.fj, ptr %i.fg, align 8, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.fl = fmul <2 x double> %i.fi, %i.u
  store <2 x double> %i.fl, ptr %i.fk, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.fn = fmul <2 x double> %i.fi, %i.s
  store <2 x double> %i.fn, ptr %i.fm, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.fp = fmul <2 x double> %i.fi, %i.n
  store <2 x double> %i.fp, ptr %i.fo, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.fr = fmul <2 x double> %i.fi, %i.l
  store <2 x double> %i.fr, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.ft = fmul <2 x double> %i.fi, %26
  store <2 x double> %i.ft, ptr %i.fs, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.fv = fmul <2 x double> %i.fi, %24
  store <2 x double> %i.fv, ptr %i.fu, align 8, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.fx = fmul <2 x double> %i.fi, %16
  store <2 x double> %i.fx, ptr %i.fw, align 8, !tbaa !15
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.fz = fmul <2 x double> %i.fi, %14
  store <2 x double> %i.fz, ptr %i.fy, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.gb = fmul <2 x double> %i.fi, %5
  store <2 x double> %i.gb, ptr %i.ga, align 8, !tbaa !15
  %i.gc = tail call nnan double @llvm.fmuladd.f64(double %2, double 6.000000e+00, double 3.000000e+01)
  %i.gd = fadd nnan double %i.gc, -4.000000e+01
  %i.ge = fmul nnan double %i.gd, 1.000000e-01    ; 2 uses
  %i.gf = fmul double %i.ge, %i.ge                ; 3 uses
  %i.gg = fsub double 1.000000e+00, %i.gf
  %i.gh = fmul double %i.gf, %i.gf
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double 5.000000e-01, double %i.gg)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.gk = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.gm = fmul <2 x double> %i.gl, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.gm, ptr %i.gj, align 8, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.go = fmul <2 x double> %i.gl, %i.u
  store <2 x double> %i.go, ptr %i.gn, align 8, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.gq = fmul <2 x double> %i.gl, %i.s
  store <2 x double> %i.gq, ptr %i.gp, align 8, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.gs = fmul <2 x double> %i.gl, %i.n
  store <2 x double> %i.gs, ptr %i.gr, align 8, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.gu = fmul <2 x double> %i.gl, %i.l
  store <2 x double> %i.gu, ptr %i.gt, align 8, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.gw = fmul <2 x double> %i.gl, %26
  store <2 x double> %i.gw, ptr %i.gv, align 8, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.gy = fmul <2 x double> %i.gl, %24
  store <2 x double> %i.gy, ptr %i.gx, align 8, !tbaa !15
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.ha = fmul <2 x double> %i.gl, %16
  store <2 x double> %i.ha, ptr %i.gz, align 8, !tbaa !15
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.hc = fmul <2 x double> %i.gl, %14
  store <2 x double> %i.hc, ptr %i.hb, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.he = fmul <2 x double> %i.gl, %5
  store <2 x double> %i.he, ptr %i.hd, align 8, !tbaa !15
  %i.hf = tail call nnan double @llvm.fmuladd.f64(double %2, double 7.000000e+00, double 3.000000e+01)
  %i.hg = fadd nnan double %i.hf, -4.000000e+01
  %i.hh = fmul nnan double %i.hg, 1.000000e-01    ; 2 uses
  %i.hi = fmul double %i.hh, %i.hh                ; 3 uses
  %i.hj = fsub double 1.000000e+00, %i.hi
  %i.hk = fmul double %i.hi, %i.hi
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hk, double 5.000000e-01, double %i.hj)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.hn = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.hp = fmul <2 x double> %i.ho, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.hp, ptr %i.hm, align 8, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.hr = fmul <2 x double> %i.ho, %i.u
  store <2 x double> %i.hr, ptr %i.hq, align 8, !tbaa !15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.ht = fmul <2 x double> %i.ho, %i.s
  store <2 x double> %i.ht, ptr %i.hs, align 8, !tbaa !15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  %i.hv = fmul <2 x double> %i.ho, %i.n
  store <2 x double> %i.hv, ptr %i.hu, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.hx = fmul <2 x double> %i.ho, %i.l
  store <2 x double> %i.hx, ptr %i.hw, align 8, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.hz = fmul <2 x double> %i.ho, %26
  store <2 x double> %i.hz, ptr %i.hy, align 8, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.ib = fmul <2 x double> %i.ho, %24
  store <2 x double> %i.ib, ptr %i.ia, align 8, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.id = fmul <2 x double> %i.ho, %16
  store <2 x double> %i.id, ptr %i.ic, align 8, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %i.if = fmul <2 x double> %i.ho, %14
  store <2 x double> %i.if, ptr %i.ie, align 8, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.ih = fmul <2 x double> %i.ho, %5
  store <2 x double> %i.ih, ptr %i.ig, align 8, !tbaa !15
  %i.ii = tail call nnan double @llvm.fmuladd.f64(double %2, double 8.000000e+00, double 3.000000e+01)
  %i.ij = fadd nnan double %i.ii, -4.000000e+01
  %i.ik = fmul nnan double %i.ij, 1.000000e-01    ; 2 uses
  %i.il = fmul double %i.ik, %i.ik                ; 3 uses
  %i.im = fsub double 1.000000e+00, %i.il
  %i.in = fmul double %i.il, %i.il
  %i.io = tail call double @llvm.fmuladd.f64(double %i.in, double 5.000000e-01, double %i.im)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.iq = insertelement <2 x double> poison, double %i.io, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.is = fmul <2 x double> %i.ir, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.is, ptr %i.ip, align 8, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  %i.iu = fmul <2 x double> %i.ir, %i.u
  store <2 x double> %i.iu, ptr %i.it, align 8, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.iw = fmul <2 x double> %i.ir, %i.s
  store <2 x double> %i.iw, ptr %i.iv, align 8, !tbaa !15
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  %i.iy = fmul <2 x double> %i.ir, %i.n
  store <2 x double> %i.iy, ptr %i.ix, align 8, !tbaa !15
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.ja = fmul <2 x double> %i.ir, %i.l
  store <2 x double> %i.ja, ptr %i.iz, align 8, !tbaa !15
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %i.jc = fmul <2 x double> %i.ir, %26
  store <2 x double> %i.jc, ptr %i.jb, align 8, !tbaa !15
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %i.je = fmul <2 x double> %i.ir, %24
  store <2 x double> %i.je, ptr %i.jd, align 8, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  %i.jg = fmul <2 x double> %i.ir, %16
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !15
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.ji = fmul <2 x double> %i.ir, %14
  store <2 x double> %i.ji, ptr %i.jh, align 8, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 1424
  %i.jk = fmul <2 x double> %i.ir, %5
  store <2 x double> %i.jk, ptr %i.jj, align 8, !tbaa !15
  %i.jl = tail call nnan double @llvm.fmuladd.f64(double %2, double 9.000000e+00, double 3.000000e+01)
  %i.jm = fadd nnan double %i.jl, -4.000000e+01
  %i.jn = fmul nnan double %i.jm, 1.000000e-01    ; 2 uses
  %i.jo = fmul double %i.jn, %i.jn                ; 3 uses
  %i.jp = fsub double 1.000000e+00, %i.jo
  %i.jq = fmul double %i.jo, %i.jo
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jq, double 5.000000e-01, double %i.jp)
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.jv = fmul <2 x double> %i.ju, <double 5.000000e+05, double 5.000000e+11>
  store <2 x double> %i.jv, ptr %i.js, align 8, !tbaa !15
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %i.jx = fmul <2 x double> %i.ju, %i.u
  store <2 x double> %i.jx, ptr %i.jw, align 8, !tbaa !15
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.jz = fmul <2 x double> %i.ju, %i.s
  store <2 x double> %i.jz, ptr %i.jy, align 8, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  %i.kb = fmul <2 x double> %i.ju, %i.n
  store <2 x double> %i.kb, ptr %i.ka, align 8, !tbaa !15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %i.kd = fmul <2 x double> %i.ju, %i.l
  store <2 x double> %i.kd, ptr %i.kc, align 8, !tbaa !15
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  %i.kf = fmul <2 x double> %i.ju, %26
  store <2 x double> %i.kf, ptr %i.ke, align 8, !tbaa !15
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  %i.kh = fmul <2 x double> %i.ju, %24
  store <2 x double> %i.kh, ptr %i.kg, align 8, !tbaa !15
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.kj = fmul <2 x double> %i.ju, %16
  store <2 x double> %i.kj, ptr %i.ki, align 8, !tbaa !15
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %i.kl = fmul <2 x double> %i.ju, %14
  store <2 x double> %i.kl, ptr %i.kk, align 8, !tbaa !15
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  %i.kn = fmul <2 x double> %i.ju, %5
  store <2 x double> %i.kn, ptr %i.km, align 8, !tbaa !15
  ret void
}

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((2400, 2408)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 15 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2408
  %i.d = load double, ptr %i.c, align 8, !tbaa !39
  %i.e = fmul double %0, %i.d
  %i.f = tail call double @sin(double noundef %i.e) #10 ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = insertelement <2 x double> poison, double %i.f, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> <double -2.262000e+01, double f0xC01E676C8B439581>, %i.i ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call double @exp(double noundef %i.k) #10
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @exp(double noundef %i.m) #10
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
  %i.x = load double, ptr %i.w, align 8, !tbaa !40 ; 6 uses
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
  %i.ag = tail call double @exp(double noundef %i.af) #10
  %i.ah = fmul double %i.ae, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #10
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
  %i.aw = fmul double %i.t, %i.ag                 ; 5 uses
  %i.ax = fmul double %i.t, %i.ai                 ; 2 uses
  %i.ay = load <2 x double>, ptr %i.at, align 8, !tbaa !15 ; 5 uses
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
  %i.bm = load <2 x double>, ptr %i.au, align 8, !tbaa !15
  %i.bn = load <2 x double>, ptr %i.av, align 8, !tbaa !15
  %i.bo = fsub <2 x double> %i.bn, %i.ay
  %i.bp = fsub <2 x double> %i.ay, %i.bm
  %i.bq = fneg <2 x double> %i.bp
  %i.br = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bs, %i.bq
  %i.bu = insertelement <2 x double> poison, double %i.ax, i64 0 ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bo, <2 x double> %i.bt) ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !15 ; 4 uses
  %i.ca = trunc nuw nsw i64 %i.aq to i32
  %i.cb = mul i64 %indvars.iv128, 85899345920
  %i.cc = ashr exact i64 %i.cb, 29
  %i.cd = getelementptr i8, ptr %i.a, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !15 ; 4 uses
  %i.cg = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ch) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = fadd double %i.bz, %i.cj
  %i.cl = fmul double %i.v, %i.ck
  %i.cm = extractelement <2 x double> %i.ci, i64 1
  %i.cn = fadd double %i.cf, %i.cm
  %i.co = fmul double %i.v, %i.cn
  %i.cp = fsub double %i.bz, %i.bz
  %i.cq = fmul double %i.x, %i.cp
  %i.cr = fsub double %i.cf, %i.cf
  %i.cs = fmul double %i.x, %i.cr
  %i.ct = extractelement <2 x double> %i.bw, i64 0
  %i.cu = fadd double %i.ct, %i.cl
  %i.cv = fadd double %i.cq, %i.cu
  %i.cw = fadd double %i.bj, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  store double %i.cw, ptr %i.cx, align 8, !tbaa !15
  %i.cy = extractelement <2 x double> %i.bw, i64 1
  %i.cz = fadd double %i.cy, %i.co
  %i.da = fadd double %i.cs, %i.cz
  %i.db = fadd double %i.bl, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store double %i.db, ptr %i.dd, align 8, !tbaa !15
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.dh = insertelement <2 x double> %i.y, double %i.ax, i64 1 ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.di = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.dj = add nuw nsw i64 %i.di, %i.an            ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dj
  %i.dl = or disjoint i64 %i.di, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.di
  %i.dm = load double, ptr %gep, align 8, !tbaa !15
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.dl
  %i.dn = load double, ptr %gep135, align 8, !tbaa !15
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.di
  %i.do = load <2 x double>, ptr %i.dk, align 8, !tbaa !15 ; 4 uses
  %i.dp = extractelement <2 x double> %i.do, i64 1 ; 4 uses
  %i.dq = fmul double %.sink, %i.dp               ; 2 uses
  %i.dr = load <2 x double>, ptr %gep137, align 8, !tbaa !15
  %i.ds = extractelement <2 x double> %i.do, i64 0 ; 3 uses
  %i.dt = fmul double %i.ds, 1.630000e-16
  %i.du = fmul double %i.dt, 3.700000e+16         ; 2 uses
  %i.dv = fmul double %i.ds, 4.660000e-16
  %i.dw = fmul double %i.dv, %i.dp                ; 2 uses
  %i.dx = fneg double %i.du
  %i.dy = fsub double %i.dx, %i.dw
  %i.dz = fsub double %i.ds, %i.dm
  %i.ea = fneg double %i.dz
  %i.eb = fmul double %i.aw, %i.ea
  %i.ec = fsub <2 x double> %i.dr, %i.do          ; 2 uses
  %i.ed = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ee = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.eb, i64 1
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.ed, <2 x double> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = fadd double %i.dq, %i.eh
  %i.ej = fsub double %i.du, %i.dw
  %i.ek = fsub double %i.ej, %i.dq
  %i.el = fsub double %i.dp, %i.dn
  %i.em = fneg double %i.el
  %i.en = fmul double %i.aw, %i.em
  %i.eo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = add nsw i32 %i.ep, -2
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.de, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !15 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.df, i64 %i.er
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !15 ; 2 uses
  %i.ew = shl i32 %i.eo, 1
  %i.ex = add i32 %i.ew, 2                        ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [8 x i8], ptr %i.dg, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !15 ; 2 uses
  %i.fb = add nuw nsw i32 %i.ex, %i.ca
  %i.fc = sext i32 %i.fb to i64
end_hunk_0
