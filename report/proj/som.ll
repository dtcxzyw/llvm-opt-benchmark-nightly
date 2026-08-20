inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
@.str.7 = private unnamed_addr constant [8 x i8] c"misrsom\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ipath\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Invalid value for path: path should be in [1, 233] range\00", align 1
@_ZL8des_lsat = internal constant [53 x i8] c"Space oblique for LANDSAT\0A\09Cyl, Sph&Ell\0A\09lsat= path=\00", align 16
@pj_s_lsat = hidden local_unnamed_addr constant ptr @_ZL8des_lsat, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"lsat\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ilsat\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Invalid value for lsat: lsat should be in [1, 5] range\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Invalid value for path: path should be in [1, %d] range\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_som(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z32pj_projection_specific_setup_somP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL7des_som, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z32pj_projection_specific_setup_somP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.1) ; 2 uses
  %i.i = bitcast i64 %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.h, ptr %i.j, align 8, !tbaa !45
  %i.k = tail call double @llvm.fabs.f64(double %i.i)
  %or.cond = fcmp ogt double %i.k, f0x401921FB54442D18
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  %i.l = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !43
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.o = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.m, ptr noundef %i.n, ptr noundef nonnull @.str.3) ; 2 uses
  %i.p = bitcast i64 %i.o to double               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.o, ptr %i.q, align 8, !tbaa !46
  %i.r = fcmp olt double %i.p, 0.000000e+00
  %i.s = fcmp ogt double %i.p, f0x400921FB54442D18
  %or.cond32 = or i1 %i.r, %i.s
  br i1 %or.cond32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.t = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !43
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.w = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.u, ptr noundef %i.v, ptr noundef nonnull @.str.5) ; 2 uses
  %i.x = bitcast i64 %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.w, ptr %i.y, align 8, !tbaa !48
  %i.z = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  %i.aa = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !49
  %i.ac = tail call fastcc noundef ptr @_ZL9som_setupP8PJconsts(ptr noundef nonnull %0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ %i.t, %bb.f ], [ %i.aa, %bb.h ], [ %0, %bb.i ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL9som_setupP8PJconsts(ptr nofree noundef returned captures(ret: address, provenance) initializes((104, 120)) %0) unnamed_addr #4 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load double, ptr %i.c, align 8, !tbaa !46 ; 2 uses
  %i.e = tail call double @sin(double noundef %i.d) #8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %i.e, ptr %i.f, align 8, !tbaa !50
  %i.g = tail call double @cos(double noundef %i.d) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = tail call double @llvm.fabs.f64(double %i.g)
  %i.j = fcmp olt double %i.i, 1.000000e-09
  %storemerge = select i1 %i.j, double 1.000000e-09, double %i.g ; 7 uses
  store double %storemerge, ptr %i.h, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load double, ptr %i.k, align 8, !tbaa !52 ; 3 uses
  %i.m = fmul double %i.l, %storemerge
  %i.n = fmul double %storemerge, %i.m            ; 2 uses
  %i.o = fmul double %i.e, %i.l
  %i.p = fsub double 1.000000e+00, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !53 ; 4 uses
  %i.s = fmul double %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = fsub double 2.000000e+00, %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = fmul double %i.r, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %i.x, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aa = load double, ptr %i.z, align 8, !tbaa !55 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !49
  %i.af = fadd double %i.ae, f0x401921FB54442D18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store double %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = fmul double %i.e, %i.ak                 ; 5 uses
  %i.am = fneg double %i.ak                       ; 4 uses
  %i.an = fmul double %i.al, f0x3FE9E3779B97F4A8
  %i.ao = fmul double %i.e, %i.o                  ; 2 uses
  %i.ap = fmul double %i.v, %i.ao
  %i.aq = fmul double %i.r, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.r, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 1
  %i.av = fmul <2 x double> %i.as, %i.au          ; 6 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 2 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0
  store double %i.ax, ptr %i.u, align 8, !tbaa !57
  store double %i.aw, ptr %i.w, align 8, !tbaa !58
  %i.ay = insertelement <2 x double> %i.av, double %i.s, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double 0.000000e+00, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  store double %i.bb, ptr %i.t, align 8, !tbaa !59
  %i.bc = fadd double %i.bb, 1.000000e+00         ; 3 uses
  %i.bd = shufflevector <2 x double> %i.av, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2> ; 10 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)) ; 7 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1
  %1 = shufflevector <2 x double> %i.ba, <2 x double> %i.be, <2 x i32> <i32 1, i32 2>
  %2 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3F990F1ECBBAB00A), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %3 = shufflevector <2 x double> %i.be, <2 x double> %2, <2 x i32> <i32 0, i32 3>
  %4 = shufflevector <2 x double> %i.be, <2 x double> %2, <2 x i32> <i32 1, i32 2>
  %5 = fmul <2 x double> %3, %4                   ; 2 uses
  %6 = shufflevector <2 x double> %5, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  %7 = fdiv <2 x double> %1, %6                   ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = tail call double @sqrt(double noundef %8) #8
  %i.bg = extractelement <2 x double> %7, i64 1
  %10 = tail call double @sqrt(double noundef %i.bg) #8
  %11 = shufflevector <2 x double> %2, <2 x double> %5, <2 x i32> <i32 3, i32 1>
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FCA61B9F7154B43), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %i.bh = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3F990F1ECBBAB00A, double f0x3FCA61B9F7154B43>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %13 = shufflevector <2 x double> %i.bi, <2 x double> %2, <2 x i32> <i32 0, i32 2>
  %14 = fdiv <2 x double> %13, %11                ; 2 uses
  %i.bj = extractelement <2 x double> %14, i64 0
  %15 = tail call double @sqrt(double noundef %i.bj) #8
  %16 = extractelement <2 x double> %14, i64 1
  %i.bk = tail call double @sqrt(double noundef %16) #8
  %17 = shufflevector <2 x double> %i.bi, <2 x double> %12, <2 x i32> <i32 1, i32 2>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FDFFFFFFFFFFFFE), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %18 = shufflevector <2 x double> %12, <2 x double> %i.bl, <2 x i32> <i32 1, i32 3>
  %19 = shufflevector <2 x double> %12, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %20 = fmul <2 x double> %18, %19                ; 2 uses
  %21 = shufflevector <2 x double> %20, <2 x double> %12, <2 x i32> <i32 0, i32 3>
  %22 = fdiv <2 x double> %17, %21                ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %i.bm = tail call double @sqrt(double noundef %23) #8
  %24 = extractelement <2 x double> %22, i64 1
  %i.bn = tail call double @sqrt(double noundef %24) #8
  %25 = shufflevector <2 x double> %i.bl, <2 x double> %20, <2 x i32> <i32 3, i32 1>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FE96791823AAD2E), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3FDFFFFFFFFFFFFE, double f0x3FE96791823AAD2E>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %27 = shufflevector <2 x double> %26, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %28 = fdiv <2 x double> %27, %25                ; 2 uses
  %29 = extractelement <2 x double> %28, i64 0
  %30 = tail call double @sqrt(double noundef %29) #8
  %i.bp = extractelement <2 x double> %28, i64 1
  %31 = tail call double @sqrt(double noundef %i.bp) #8
  %32 = shufflevector <2 x double> %26, <2 x double> %i.bo, <2 x i32> <i32 1, i32 2>
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FEF378709A22A80), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %34 = shufflevector <2 x double> %i.bo, <2 x double> %33, <2 x i32> <i32 1, i32 3>
  %35 = shufflevector <2 x double> %i.bo, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %36 = fmul <2 x double> %34, %35                ; 2 uses
  %37 = shufflevector <2 x double> %36, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %38 = fdiv <2 x double> %32, %37                ; 2 uses
  %39 = extractelement <2 x double> %38, i64 0
  %i.bq = tail call double @sqrt(double noundef %39) #8
  %40 = extractelement <2 x double> %38, i64 1
  %i.br = tail call double @sqrt(double noundef %40) #8
  %41 = shufflevector <2 x double> %33, <2 x double> %36, <2 x i32> <i32 3, i32 1>
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FB8722191A02D60), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3FEF378709A22A80, double f0x3FB8722191A02D60>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %43 = shufflevector <2 x double> %42, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %44 = fdiv <2 x double> %43, %41                ; 2 uses
  %45 = extractelement <2 x double> %44, i64 0
  %46 = tail call double @sqrt(double noundef %45) #8
  %i.bt = extractelement <2 x double> %44, i64 1
  %47 = tail call double @sqrt(double noundef %i.bt) #8
  %48 = shufflevector <2 x double> %42, <2 x double> %i.bs, <2 x i32> <i32 1, i32 2>
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FD61C8864680B58), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %50 = shufflevector <2 x double> %i.bs, <2 x double> %49, <2 x i32> <i32 1, i32 3>
  %51 = shufflevector <2 x double> %i.bs, <2 x double> %49, <2 x i32> <i32 0, i32 2>
  %52 = fmul <2 x double> %50, %51                ; 2 uses
  %53 = shufflevector <2 x double> %52, <2 x double> %i.bs, <2 x i32> <i32 0, i32 3>
  %54 = fdiv <2 x double> %48, %53                ; 2 uses
  %55 = extractelement <2 x double> %54, i64 0
  %i.bu = tail call double @sqrt(double noundef %55) #8
  %56 = extractelement <2 x double> %54, i64 1
  %i.bv = tail call double @sqrt(double noundef %56) #8
  %57 = shufflevector <2 x double> %49, <2 x double> %52, <2 x i32> <i32 3, i32 1>
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FE4F1BBCDCBFA54), <2 x double> splat (double 1.000000e+00)) ; 4 uses
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> <double f0x3FD61C8864680B58, double f0x3FE4F1BBCDCBFA54>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %60 = shufflevector <2 x double> %59, <2 x double> %49, <2 x i32> <i32 0, i32 2>
  %61 = fdiv <2 x double> %60, %57                ; 2 uses
  %62 = extractelement <2 x double> %61, i64 0
  %63 = tail call double @sqrt(double noundef %62) #8
  %64 = extractelement <2 x double> %61, i64 1
  %i.bw = tail call double @sqrt(double noundef %64) #8
  %65 = shufflevector <2 x double> %59, <2 x double> %58, <2 x i32> <i32 1, i32 2>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> splat (double f0x3FECF1BBCDCBFA53), <2 x double> splat (double 1.000000e+00)) ; 4 uses
  %66 = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3FECF1BBCDCBFA53, double 1.000000e+00)
  %67 = shufflevector <2 x double> %58, <2 x double> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %68 = shufflevector <2 x double> %58, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %69 = fmul <2 x double> %67, %68                ; 2 uses
  %70 = shufflevector <2 x double> %69, <2 x double> %58, <2 x i32> <i32 0, i32 3>
  %71 = fdiv <2 x double> %65, %70                ; 2 uses
  %72 = extractelement <2 x double> %71, i64 0
  %i.by = tail call double @sqrt(double noundef %72) #8
  %73 = extractelement <2 x double> %71, i64 1
  %74 = tail call double @sqrt(double noundef %73) #8
  %75 = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %76 = insertelement <2 x double> %75, double %66, i64 0
  %77 = shufflevector <2 x double> %i.bx, <2 x double> %69, <2 x i32> <i32 3, i32 1>
  %78 = fdiv <2 x double> %76, %77                ; 2 uses
  %79 = extractelement <2 x double> %78, i64 0
  %i.bz = tail call double @sqrt(double noundef %79) #8
  %80 = extractelement <2 x double> %78, i64 1
  %i.ca = tail call double @sqrt(double noundef %80) #8
  %i.cb = fadd <2 x double> %i.av, splat (double 1.000000e+00) ; 3 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fmul double %i.cc, %i.bc
  %i.ce = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cd, i64 1
  %i.cg = fdiv <2 x double> %i.cb, %i.cf          ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 1
  %i.ci = tail call double @sqrt(double noundef %i.ch) #8
  %i.cj = fmul double %i.al, f0x3C91A62633145C07
  %i.ck = fmul double %i.cj, %i.ci                ; 3 uses
  %i.cl = fmul double %i.an, %63                  ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.be, %i.be
  %i.cm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cn = shufflevector <2 x double> %i.cb, <2 x double> %49, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.co = fmul <2 x double> %i.cn, %i.cn
  %i.cp = insertelement <2 x double> %49, double %i.bc, i64 0
  %i.cq = fdiv <2 x double> %i.cp, %i.co          ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.am, double %storemerge, double %i.cr)
  %i.ct = fdiv double %i.bf, %i.cm
  %i.cu = fmul double %i.ck, %i.ck                ; 2 uses
  %i.cv = fneg double %i.cu
  %i.cw = insertelement <2 x double> poison, double %i.al, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = fmul <2 x double> %i.cx, <double f0x3FE2CF2304755A5E, double f0x3FD3C6EF372FE950>
  %i.cz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bz, i64 1
  %i.db = fmul <2 x double> %i.cy, %i.da          ; 4 uses
  %i.dc = fmul <2 x double> %68, %68
  %i.dd = fdiv <2 x double> %67, %i.dc
  %i.de = fmul <2 x double> %i.db, %i.db          ; 2 uses
  %i.df = fneg <2 x double> %i.de
  %i.dg = extractelement <2 x double> %i.cg, i64 0
  %i.dh = tail call double @sqrt(double noundef %i.dg) #8
  %i.di = insertelement <4 x double> <double poison, double poison, double 0.000000e+00, double -0.000000e+00>, double %i.am, i64 0
  %i.dj = shufflevector <4 x double> %i.di, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dk = insertelement <4 x double> <double poison, double poison, double -0.000000e+00, double 0.000000e+00>, double %storemerge, i64 0
  %i.dl = shufflevector <4 x double> %i.dk, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dm = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.dh, i64 2
  %i.dn = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <4 x double> %i.dn, <4 x double> %i.dm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dj, <4 x double> %i.dl, <4 x double> %i.do)
  %.scalar = fmul double %i.aa, %i.ab             ; 6 uses
  %i.dq = insertelement <2 x double> <double poison, double -0.000000e+00>, double %.scalar, i64 0 ; 3 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store double %.scalar, ptr %i.ac, align 8, !tbaa !60
  %i.ds = insertelement <4 x double> <double poison, double poison, double poison, double 0.000000e+00>, double %74, i64 0
  %i.dt = insertelement <4 x double> %i.ds, double %i.ca, i64 1
  %i.du = insertelement <4 x double> %i.dt, double %i.cs, i64 2
  %i.dv = fmul <4 x double> %i.du, %i.dp          ; 4 uses
  %i.dw = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dw, <2 x double> %i.de)
  %i.dy = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dx) ; 3 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.eb = insertelement <2 x double> %i.ea, double %i.al, i64 1
  %i.ec = insertelement <2 x double> <double 2.000000e+00, double poison>, double %9, i64 1
  %i.ed = fmul <2 x double> %i.eb, %i.ec          ; 2 uses
  %i.ee = shufflevector <4 x double> %i.dv, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ef = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.eh = fmul <2 x double> %i.cx, <double f0x3FC4060B67A85377, double f0x3FEE6F0E134454FF>
  %i.ei = insertelement <2 x double> poison, double %46, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.bu, i64 1
  %i.ek = fmul <2 x double> %i.eh, %i.ej          ; 4 uses
  %i.el = shufflevector <2 x double> %33, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.em = fmul <2 x double> %i.el, %i.el
  %i.en = shufflevector <2 x double> %33, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.eo = fdiv <2 x double> %i.en, %i.em
  %i.ep = insertelement <2 x double> poison, double %i.am, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = insertelement <2 x double> poison, double %storemerge, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.es, <2 x double> %i.eo)
  %i.eu = insertelement <2 x double> poison, double %47, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.bv, i64 1
  %i.ew = fmul <2 x double> %i.ev, %i.et          ; 3 uses
  %i.ex = fmul <2 x double> %i.ek, %i.ek          ; 3 uses
  %i.ey = fneg <2 x double> %i.ex
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.dw, <2 x double> %i.ey)
  %i.fa = fmul <2 x double> %i.ez, <double 4.000000e+00, double 2.000000e+00>
  %i.fb = insertelement <4 x double> poison, double %i.al, i64 0
  %i.fc = shufflevector <4 x double> %i.fb, <4 x double> poison, <4 x i32> zeroinitializer
  %i.fd = fmul <4 x double> %i.fc, <double f0x3FEF9B24942FE45C, double f0x3FEC83201D3D2C6D, double f0x3FE6A09E667F3BCD, double f0x3FDD0E2E2B44DE01>
  %i.fe = insertelement <4 x double> poison, double %15, i64 0
  %i.ff = insertelement <4 x double> %i.fe, double %i.bm, i64 1
  %i.fg = insertelement <4 x double> %i.ff, double %30, i64 2
  %i.fh = insertelement <4 x double> %i.fg, double %i.bq, i64 3
  %i.fi = fmul <4 x double> %i.fd, %i.fh          ; 5 uses
  %i.fj = shufflevector <2 x double> %2, <2 x double> %12, <2 x i32> <i32 0, i32 2>
  %i.fk = shufflevector <2 x double> %i.bl, <2 x double> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.fl = shufflevector <2 x double> %i.fj, <2 x double> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fm = fmul <4 x double> %i.fl, %i.fl
  %i.fn = shufflevector <2 x double> %2, <2 x double> %12, <2 x i32> <i32 1, i32 3>
  %i.fo = shufflevector <2 x double> %i.bl, <2 x double> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.fp = shufflevector <2 x double> %i.fn, <2 x double> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fq = fdiv <4 x double> %i.fp, %i.fm
  %i.fr = insertelement <4 x double> poison, double %i.am, i64 0
  %i.fs = shufflevector <4 x double> %i.fr, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ft = insertelement <4 x double> poison, double %storemerge, i64 0
  %i.fu = shufflevector <4 x double> %i.ft, <4 x double> poison, <4 x i32> zeroinitializer
  %i.fv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fs, <4 x double> %i.fu, <4 x double> %i.fq)
  %i.fw = insertelement <4 x double> poison, double %i.bk, i64 0
  %i.fx = insertelement <4 x double> %i.fw, double %i.bn, i64 1
  %i.fy = insertelement <4 x double> %i.fx, double %31, i64 2
  %i.fz = insertelement <4 x double> %i.fy, double %i.br, i64 3
  %i.ga = fmul <4 x double> %i.fz, %i.fv          ; 4 uses
  %i.gb = fmul <4 x double> %i.fi, %i.fi          ; 3 uses
  %i.gc = fneg <4 x double> %i.gb
  %i.gd = shufflevector <4 x double> %i.gb, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <4 x double> %i.gb, <4 x double> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.gd)
  %i.gh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gg) ; 2 uses
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.gf)
  %i.gj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gi) ; 2 uses
  %i.gk = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> zeroinitializer
  %i.gl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ga, <4 x double> %i.gk, <4 x double> %i.gc)
  %i.gm = fmul <4 x double> %i.gl, splat (double 4.000000e+00)
  %i.gn = shufflevector <4 x double> %i.gm, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <2 x double> %i.fa, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <2 x double> %i.gj, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <2 x double> %i.gh, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x double> %i.dv, <4 x double> %i.ga, <2 x i32> <i32 0, i32 4>
  %i.gs = fadd <2 x double> %i.dw, %i.gr
  %i.gt = shufflevector <2 x double> %i.db, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x double> %i.gt, <4 x double> %i.fi, <2 x i32> <i32 0, i32 4>
  %i.gv = fmul <2 x double> %i.gu, <double 2.000000e+00, double 4.000000e+00>
  %i.gw = fmul <2 x double> %i.gv, %i.gs          ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = fdiv double %i.gx, %i.dz                ; 2 uses
  %81 = insertelement <2 x double> %i.ed, double %i.cl, i64 0 ; 2 uses
  %82 = fmul <2 x double> %81, %81                ; 3 uses
  %83 = fneg <2 x double> %82
  %84 = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %85 = insertelement <2 x double> %84, double %i.ct, i64 1
  %86 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.es, <2 x double> %85)
  %i.gz = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %10, i64 1
  %i.hb = fmul <2 x double> %86, %i.ha            ; 3 uses
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.dw, <2 x double> %83) ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  %i.he = fmul double %i.hd, 2.000000e+00
  %i.hf = shufflevector <2 x double> %i.ex, <2 x double> %82, <2 x i32> <i32 1, i32 2>
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eg, <2 x double> %i.hf)
  %i.hh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hg) ; 2 uses
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <2 x double> %i.ee, <2 x double> %i.hb, <2 x i32> <i32 0, i32 3>
  %i.hk = fadd <2 x double> %i.dw, %i.hj
  %i.hl = fmul <2 x double> %i.ed, %i.hk
  %i.hm = shufflevector <2 x double> %i.ge, <2 x double> %82, <2 x i32> <i32 3, i32 1>
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dw, <2 x double> %i.hm)
  %i.ho = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hn) ; 3 uses
  %i.hp = shufflevector <2 x double> %i.dy, <2 x double> %i.ho, <2 x i32> <i32 1, i32 2>
  %i.hq = fdiv <2 x double> %i.hl, %i.hp          ; 3 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 1
  %i.hs = fadd double %i.hr, 0.000000e+00
  %i.ht = shufflevector <2 x double> %i.hc, <2 x double> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.hu = fdiv <2 x double> %i.ht, %i.ho          ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hw = shufflevector <8 x double> %i.hv, <8 x double> %i.gn, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.hx = shufflevector <8 x double> %i.hw, <8 x double> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.hy = insertelement <8 x double> %i.hx, double %i.he, i64 7 ; 2 uses
  %i.hz = shufflevector <2 x double> %i.ho, <2 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ia = insertelement <8 x double> %i.hz, double 0.000000e+00, i64 0
  %i.ib = shufflevector <8 x double> %i.ia, <8 x double> %i.hi, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9>
  %i.ic = shufflevector <8 x double> %i.ib, <8 x double> %i.gp, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 6, i32 7>
  %i.id = shufflevector <8 x double> %i.ic, <8 x double> %i.gq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ie = fadd <8 x double> %i.hy, %i.id          ; 2 uses
  %i.if = fdiv <8 x double> %i.hy, %i.id          ; 8 uses
  %i.ig = shufflevector <8 x double> %i.ie, <8 x double> %i.if, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ih = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ii = shufflevector <8 x double> %i.ie, <8 x double> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE9E3779B97F4A8>, <2 x double> %i.ii)
  %i.ik = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.il = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> <double f0x3FEF9B24942FE45C, double f0x3FEC83201D3D2C6D>, <2 x double> %i.im)
  %i.io = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ip = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> <double f0x3FE2CF2304755A5E, double f0xBFD3C6EF372FE94E>, <2 x double> %i.ij) ; 2 uses
  %i.iq = extractelement <8 x double> %i.if, i64 3
  %i.ir = extractelement <2 x double> %i.ip, i64 1
  %i.is = fsub double %i.ir, %i.iq
  %i.it = shufflevector <4 x double> %i.fi, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.iu = fmul <2 x double> %i.it, splat (double 4.000000e+00)
  %i.iv = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.iw = fadd <2 x double> %i.dw, %i.iv
  %i.ix = fmul <2 x double> %i.iu, %i.iw
  %i.iy = fdiv <2 x double> %i.ix, %i.gh          ; 3 uses
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> <double f0x3FEC83201D3D2C6D, double f0x3FC4060B67A85377>, <2 x double> %i.in) ; 2 uses
  %i.jb = shufflevector <2 x double> %i.iy, <2 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = shufflevector <8 x double> %i.ig, <8 x double> %i.jb, <2 x i32> <i32 3, i32 9>
  %i.jd = shufflevector <2 x double> %i.ip, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> <double f0x3C91A62633145C07, double f0x3FE6A09E667F3BCD>, <2 x double> %i.jd) ; 2 uses
  %i.jf = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jg = shufflevector <4 x double> %i.fi, <4 x double> %i.jf, <2 x i32> <i32 3, i32 4>
  %i.jh = fmul <2 x double> %i.jg, splat (double 4.000000e+00)
  %i.ji = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jj = shufflevector <4 x double> %i.ga, <4 x double> %i.ji, <2 x i32> <i32 3, i32 4>
  %i.jk = fadd <2 x double> %i.dw, %i.jj
  %i.jl = fmul <2 x double> %i.jh, %i.jk
  %i.jm = fdiv <2 x double> %i.jl, %i.gj          ; 3 uses
  %i.jn = shufflevector <2 x double> %i.iy, <2 x double> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.jo = shufflevector <2 x double> %i.ja, <2 x double> %i.je, <2 x i32> <i32 1, i32 3>
  %i.jp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> <double f0xBFE6A09E667F3BCC, double f0x3FDD0E2E2B44DE01>, <2 x double> %i.jo)
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> <double f0xBFEF9B24942FE45C, double f0x3FC4060B67A85377>, <2 x double> %i.jp)
  %i.jr = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.js = insertelement <2 x double> %i.jr, double %i.cl, i64 1
  %i.jt = fmul <2 x double> %i.js, splat (double 2.000000e+00)
  %i.ju = shufflevector <2 x double> %i.ew, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.jv = fadd <2 x double> %i.dw, %i.ju
  %i.jw = fmul <2 x double> %i.jt, %i.jv
  %i.jx = fdiv <2 x double> %i.jw, %i.hh          ; 3 uses
  %i.jy = shufflevector <2 x double> %i.jm, <2 x double> %i.jx, <2 x i32> <i32 1, i32 2>
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> <double f0xBFDD0E2E2B44DE03, double f0x3FEE6F0E134454FF>, <2 x double> %i.jq)
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FE9E3779B97F4A8>, <2 x double> %i.jz)
  %i.kb = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kc = insertelement <2 x double> %i.kb, double %i.gy, i64 1
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> <double f0xBFD3C6EF372FE94E, double f0x3FE2CF2304755A5E>, <2 x double> %i.ka)
  %i.ke = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kf = insertelement <2 x double> %i.ke, double %i.gy, i64 0
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FD3C6EF372FE950>, <2 x double> %i.kd)
  %i.kh = tail call double @llvm.fmuladd.f64(double %.scalar, double %.scalar, double %i.cu)
  %sqrt.i64 = tail call double @llvm.sqrt.f64(double %i.kh) ; 2 uses
  %i.ki = tail call double @llvm.vector.reduce.fadd.v8f64(double -0.000000e+00, <8 x double> %i.ig) ; 2 uses
  %i.kj = insertelement <4 x double> poison, double %i.cv, i64 2
  %i.kk = insertelement <4 x double> %i.kj, double %i.ki, i64 3
  %i.kl = shufflevector <2 x double> %i.df, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.km = shufflevector <4 x double> %i.kl, <4 x double> %i.kk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dv, <4 x double> %i.dr, <4 x double> %i.km)
  %i.ko = fmul <4 x double> %i.kn, <double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double poison>
  %i.kp = shufflevector <2 x double> %i.dy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kq = insertelement <4 x double> %i.kp, double %sqrt.i64, i64 2
  %i.kr = fdiv <4 x double> %i.ko, %i.kq          ; 6 uses
  %i.ks = extractelement <4 x double> %i.dv, i64 2
  %i.kt = fadd double %.scalar, %i.ks
  %i.ku = fmul double %i.ck, %i.kt
  %i.kv = fdiv double %i.ku, %sqrt.i64
  %i.kw = extractelement <4 x double> %i.kr, i64 0
  %op.rdx = fadd double %i.ki, %i.kw
  %i.kx = extractelement <4 x double> %i.kr, i64 1
  %op.rdx94 = fadd double %op.rdx, %i.kx
  %i.ky = extractelement <4 x double> %i.kr, i64 2
  %op.rdx95 = fadd double %op.rdx94, %i.ky
  %i.kz = insertelement <2 x double> %i.hq, double -0.000000e+00, i64 1
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> <double f0xBFE9E3779B97F4A9, double 0.000000e+00>, <2 x double> %i.kg)
  %i.lb = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> <double f0xBCAA79394C9E8A0A, double f0x3C91A62633145C07>, <2 x double> %i.la) ; 2 uses
  %i.le = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.lf = insertelement <2 x double> %i.je, double %i.is, i64 1
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> <double f0xBFE2CF2304755A5D, double f0xBFD3C6EF372FE952>, <2 x double> %i.lf)
  %i.lh = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FE9E3779B97F4A7>, <2 x double> %i.lg)
  %i.lj = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> <double f0x3FE9E3779B97F4A8, double f0x3FD3C6EF372FE950>, <2 x double> %i.li)
  %i.ll = shufflevector <8 x double> %i.if, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.lm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> <double f0x3FD3C6EF372FE950, double f0xBFE9E3779B97F4A7>, <2 x double> %i.lk)
  %i.ln = shufflevector <4 x double> %i.kr, <4 x double> poison, <2 x i32> zeroinitializer
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> <double f0xBFD3C6EF372FE94E, double f0xBFE9E3779B97F4A9>, <2 x double> %i.lm)
  %i.lp = shufflevector <4 x double> %i.kr, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> <double f0xBFE9E3779B97F4A7, double f0x3FD3C6EF372FE94C>, <2 x double> %i.lo) ; 2 uses
  %i.lr = shufflevector <4 x double> %i.kr, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ls = fsub <2 x double> %i.lq, %i.lr
  %i.lt = fadd <2 x double> %i.lq, %i.lr
  %i.lu = shufflevector <2 x double> %i.ls, <2 x double> %i.lt, <2 x i32> <i32 0, i32 3>
  %i.lv = fdiv <2 x double> %i.lu, <double 3.000000e+01, double 6.000000e+01>
  store <2 x double> %i.lv, ptr %i.b, align 8, !tbaa !61
  %i.lw = insertelement <2 x double> %i.ld, double %op.rdx95, i64 0
  %i.lx = fdiv <2 x double> %i.lw, <double 3.000000e+01, double 1.500000e+01>
  store <2 x double> %i.lx, ptr %i.ai, align 8, !tbaa !61
  %i.ly = extractelement <2 x double> %i.ld, i64 0
  %i.lz = fdiv double %i.ly, 4.500000e+01
  store double %i.lz, ptr %i.ah, align 8, !tbaa !62
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13som_e_inverse5PJ_XYP8PJconsts, ptr %i.ma, align 8, !tbaa !63
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13som_e_forward5PJ_LPP8PJconsts, ptr %i.mb, align 8, !tbaa !64
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_misrsom(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.7, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL11des_misrsom, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.8)
  %.sroa.0.0.extract.trunc = trunc i64 %i.h to i32 ; 2 uses
  %i.i = add i32 %.sroa.0.0.extract.trunc, -234
  %or.cond = icmp ult i32 %i.i, -233
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %i.j = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = uitofp nneg i32 %.sroa.0.0.extract.trunc to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0xBF9B9D1888886F13, double f0x40020DF19833D0B2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double f0x3FFB739C6655343E, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
end_hunk_0
