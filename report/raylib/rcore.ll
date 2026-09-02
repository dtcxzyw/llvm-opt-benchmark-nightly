Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@WaitTime:bb.a
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @glfwGetTime() #56
  %i.c = fneg double %0
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double 5.000000e-02, double %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.e = fptosi double %i.d to i64                ; 2 uses
  %i.f = sitofp i64 %i.e to double
  %i.g = fsub double %i.d, %i.f
  %i.h = fmul double %i.g, 1.000000e+09
  %i.i = fptosi double %i.h to i64
  store i64 %i.e, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1) #56
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.m = fadd double %0, %i.b
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.n = call double @glfwGetTime() #56
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %.preheader, label %bb.d

bb.d:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @TakeScreenshot(ptr noundef %0) local_unnamed_addr #25 {
bb.a:
  %1 = alloca %struct.Vector2, align 8            ; 6 uses
  %2 = alloca %struct.Image, align 8              ; 7 uses
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 39) #57
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.189)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.d = and i32 %i.c, 8192
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 4575657222473777152, ptr %1, align 8
  %i.e = and i32 %i.c, 8194
  %or.cond.i = icmp eq i32 %i.e, 8192
  br i1 %or.cond.i, label %bb.e, label %GetWindowScaleDPI.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @platform.0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.g) #56
  %.pre.i = load <2 x float>, ptr %1, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.d, %bb.e
  %i.h = phi <2 x float> [ %.pre.i, %bb.e ], [ splat (float 1.000000e+00), %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %GetWindowScaleDPI.exit, %bb.c
  %.sroa.02.0 = phi <2 x float> [ %i.h, %GetWindowScaleDPI.exit ], [ splat (float 1.000000e+00), %bb.c ] ; 2 uses
  %i.i = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.j = uitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %.sroa.02.0, %i.j       ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fptosi float %i.l to i32
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fptosi float %i.n to i32
  %i.p = call ptr @rlReadScreenPixels(i32 noundef %i.m, i32 noundef %i.o) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  store ptr %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %.sroa.02.0, %i.s
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  store <2 x i32> %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 7, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 184), align 8
  %i.z = call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.190, ptr noundef %i.y, ptr noundef nonnull %0) #56
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 4095) #56 ; 0 uses
  %i.ab = call zeroext i1 @ExportImage(ptr noundef nonnull byval(%struct.Image) align 8 %2, ptr noundef nonnull %i.a) #56 ; 0 uses
  call void @free(ptr noundef %i.p) #56
  %i.ac = call i32 @access(ptr noundef nonnull readonly %i.a, i32 noundef 0) #56
  %.not.i.not = icmp eq i32 %i.ac, -1
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.192, ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @BeginMode2D(ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 10 uses
  %2 = alloca %struct.Matrix, align 8             ; 8 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @GetCameraMatrix2D(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %2, ptr noundef nonnull byval(%struct.Camera2D) align 8 %0)
  %.sroa.0.0.copyload = load float, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  store float %.sroa.0.0.copyload, ptr %1, align 4, !alias.scope !240
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load <12 x float>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.e = shufflevector <12 x float> %i.d, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.e, ptr %i.c, align 4, !alias.scope !240
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load <12 x float>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = shufflevector <12 x float> %i.g, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.h, ptr %i.f, align 4, !alias.scope !240
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load <12 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.k = shufflevector <12 x float> %i.j, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.k, ptr %i.i, align 4, !alias.scope !240
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %.sroa.10.0.copyload, ptr %i.l, align 4, !alias.scope !240
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %.sroa.14.0.copyload, ptr %i.m, align 4, !alias.scope !240
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sroa.18.0.copyload, ptr %i.n, align 4, !alias.scope !240
  call void @rlMultMatrixf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @GetCameraMatrix2D(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 8
  %i.c = fneg float %i.b                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4
  %i.f = fneg float %i.e                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fmul float %i.h, f0x3C8EFA35             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.c, i64 3
  %i.j = tail call float @sinf(float noundef %i.i) #56, !noalias !243 ; 2 uses
  %5 = tail call float @cosf(float noundef %i.i) #56, !noalias !243 ; 3 uses
  %6 = fneg float %i.j
  %i.k = load float, ptr %2, align 4              ; 8 uses
  %i.l = load <4 x float>, ptr %1, align 8
  %i.m = load <4 x float>, ptr %3, align 4
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float 0.000000e+00)
  %i.o = fmul float %i.k, 0.000000e+00
  %i.p = fadd float %i.o, 0.000000e+00            ; 3 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fmul float %i.p, %i.f
  %7 = fsub float 1.000000e+00, %5                ; 5 uses
  %8 = insertelement <2 x float> poison, float %i.j, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %9, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %11 = extractelement <2 x float> %10, i64 1
  %12 = fneg float %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %6) ; 2 uses
  %i.s = insertelement <2 x float> poison, float %7, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> zeroinitializer, <2 x float> %10) ; 5 uses
  %15 = fadd float %5, %7                         ; 4 uses
  %16 = fmul float %13, 0.000000e+00              ; 2 uses
  %17 = extractelement <2 x float> %14, i64 1     ; 3 uses
  %18 = fmul float %i.k, %13
  %19 = fadd float %i.n, 0.000000e+00             ; 3 uses
  %20 = fmul float %i.k, %17
  %21 = tail call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %12) ; 6 uses
  %22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %21, i64 0
  %23 = fmul ninf float %17, 0.000000e+00         ; 2 uses
  %24 = tail call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %20)
  %25 = tail call float @llvm.fmuladd.f32(float %i.k, float %21, float %23)
  %i.u = tail call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %24)
  %i.v = fadd float %i.u, 0.000000e+00            ; 3 uses
  %26 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.f, i64 1 ; 2 uses
  %i.w = insertelement <2 x float> poison, float %15, i64 0
  %i.x = insertelement <2 x float> %i.w, float %21, i64 1
  %27 = insertelement <2 x float> poison, float %25, i64 0
  %i.y = insertelement <2 x float> %27, float %23, i64 1
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> zeroinitializer, <2 x float> %i.y) ; 2 uses
  %i.z = insertelement <2 x float> <float 0.000000e+00, float poison>, float %15, i64 1
  %29 = fadd <2 x float> %i.z, %28                ; 4 uses
  %30 = insertelement <2 x float> poison, float %21, i64 0
  %i.aa = insertelement <2 x float> %14, float %21, i64 0
  %i.ab = extractelement <2 x float> %28, i64 1
  %31 = tail call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.ab)
  %32 = fadd float %31, 0.000000e+00              ; 2 uses
  %33 = fmul float %i.v, 0.000000e+00             ; 2 uses
  %34 = extractelement <2 x float> %29, i64 0     ; 3 uses
  %35 = fadd float %34, %33
  %i.ac = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.k, i64 1
  %36 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = tail call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %i.v)
  %39 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %40 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = insertelement <2 x float> poison, float %35, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %38, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> zeroinitializer, <2 x float> %i.ae)
  %41 = tail call float @llvm.fmuladd.f32(float %7, float 0.000000e+00, float %5) ; 5 uses
  %42 = tail call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %18)
  %43 = insertelement <2 x float> poison, float %41, i64 0
  %i.ag = insertelement <2 x float> %43, float %42, i64 1
  %i.ah = fmul <2 x float> %i.ag, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %16) ; 2 uses
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> zeroinitializer, <2 x float> %i.ah) ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %17, float 0.000000e+00, float %i.ai) ; 2 uses
  %.scalar = fadd float %i.aj, 0.000000e+00
  %i.ak = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.scalar, i64 3 ; 2 uses
  %i.al = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aj, i64 0
  %i.am = fadd <4 x float> %i.al, <float 0.000000e+00, float poison, float poison, float -0.000000e+00>
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ao = insertelement <2 x float> %44, float %i.ai, i64 1
  %i.ap = fadd <2 x float> %44, %22               ; 3 uses
  %45 = extractelement <2 x float> %i.ap, i64 1   ; 2 uses
  %46 = fmul float %45, 0.000000e+00              ; 2 uses
  %47 = fmul float %i.k, %41
  %48 = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aq = insertelement <2 x float> %48, float %47, i64 0
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %36, <2 x float> %i.aq)
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> zeroinitializer, <2 x float> %i.ar)
  %50 = fadd <2 x float> %49, zeroinitializer     ; 5 uses
  %51 = fmul <2 x float> %50, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %52 = tail call float @llvm.fmuladd.f32(float %i.k, float %41, float %16)
  %53 = extractelement <2 x float> %50, i64 1
  %54 = shufflevector <2 x float> %50, <2 x float> %14, <2 x i32> <i32 1, i32 3>
  %i.as = insertelement <2 x float> %51, float %52, i64 1
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> zeroinitializer, <2 x float> %i.as)
  %i.au = fadd <2 x float> %i.at, <float -0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %55 = fadd float %i.av, %46
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %45)
  %56 = insertelement <4 x float> poison, float %55, i64 0
  %57 = insertelement <4 x float> %56, float %i.aw, i64 1
  %i.ax = fadd <2 x float> %i.ap, %26             ; 3 uses
  %i.ay = fmul <2 x float> %i.ap, %26
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.ao)
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %60 = fadd <4 x float> %59, zeroinitializer     ; 3 uses
  %61 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %61)
  %63 = extractelement <2 x float> %50, i64 0
  %64 = fmul float %63, %i.f
  %65 = tail call float @llvm.fmuladd.f32(float %i.c, float %53, float %64)
  %66 = shufflevector <2 x float> %i.au, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %67 = insertelement <2 x float> poison, float %46, i64 0
  %68 = insertelement <2 x float> %67, float %65, i64 1
  %69 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> zeroinitializer, <2 x float> %68)
  %70 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %71 = fadd <2 x float> %70, %69                 ; 2 uses
  %72 = fmul <2 x float> %71, <float 1.000000e+00, float 0.000000e+00>
  %73 = shufflevector <4 x float> %60, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 6, i32 7>
  %74 = shufflevector <2 x float> %72, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %75 = shufflevector <4 x float> %57, <4 x float> %74, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> zeroinitializer, <4 x float> %75)
  %77 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> zeroinitializer, <4 x float> %76) ; 2 uses
  %78 = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %79 = shufflevector <2 x float> %i.ax, <2 x float> %i.au, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %80 = shufflevector <2 x float> %62, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %81 = shufflevector <4 x float> %80, <4 x float> %78, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %79, <4 x float> %81)
  %83 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %60, <4 x float> zeroinitializer, <4 x float> %82) ; 3 uses
  %i.az = fmul float %i.v, %i.f
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.c, float %34, float %i.az)
  %84 = insertelement <2 x float> poison, float %33, i64 0
  %i.bb = insertelement <2 x float> %84, float %i.ba, i64 1
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> zeroinitializer, <2 x float> %i.bb)
  %85 = insertelement <2 x float> %39, float %32, i64 1
  %i.bd = fadd <2 x float> %85, %i.bc             ; 2 uses
  %86 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %32, i64 0
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %88 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %89 = shufflevector <2 x float> %i.af, <2 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> zeroinitializer, <4 x float> %89) ; 2 uses
  %90 = tail call float @llvm.fmuladd.f32(float %i.c, float %19, float %i.r)
  %91 = fadd float %90, 0.000000e+00
  %92 = insertelement <2 x float> poison, float %19, i64 0
  %93 = shufflevector <2 x float> %92, <2 x float> poison, <2 x i32> zeroinitializer
  %94 = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bf = insertelement <2 x float> %94, float %i.q, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %93, <2 x float> zeroinitializer, <2 x float> %i.bf)
  %95 = insertelement <4 x float> poison, float %19, i64 0
  %96 = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %97 = shufflevector <4 x float> %95, <4 x float> %96, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %98 = insertelement <4 x float> %97, float %91, i64 3
  %99 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, float %i.q, i64 0
  %100 = fadd <4 x float> %98, %99                ; 4 uses
  %i.bh = fmul <4 x float> %i.ak, %83
  %i.bi = fadd <4 x float> %i.ak, %83             ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bk = fadd <4 x float> %i.bj, %77
  %101 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> zeroinitializer, <4 x float> %i.bk)
  %102 = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %100, <4 x float> %102, <4 x float> %101)
  store <4 x float> %i.bl, ptr %0, align 4
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = shufflevector <4 x float> %77, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bn = shufflevector <2 x float> %71, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %83, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> zeroinitializer, <4 x float> %i.bo)
  %103 = shufflevector <4 x float> %i.be, <4 x float> %88, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %103, <4 x float> zeroinitializer, <4 x float> %i.bp)
  %i.br = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %100, <4 x float> %i.br, <4 x float> %i.bq)
  store <4 x float> %i.bs, ptr %.sroa.723.0..sroa_idx, align 4
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = shufflevector <4 x float> %i.bj, <4 x float> %74, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> zeroinitializer, <4 x float> %i.bt) ; 2 uses
  %i.bv = fadd <4 x float> %103, %i.bu
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %100, <4 x float> zeroinitializer, <4 x float> %i.bv)
  store <4 x float> %i.bw, ptr %.sroa.1127.0..sroa_idx, align 4
  %.sroa.1531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %103, <4 x float> zeroinitializer, <4 x float> %i.bu)
  %i.by = fadd <4 x float> %100, %i.bx
  store <4 x float> %i.by, ptr %.sroa.1531.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndMode2D() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %struct.float16, align 4            ; 10 uses
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.d = load ptr, ptr @glad_glGetIntegerv, align 8
  call void %i.d(i32 noundef 36006, ptr noundef nonnull %i.a) #56, !inline_history !246
  %i.e = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  %.sroa.01.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  %.sroa.108.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 128), align 8
  %.sroa.1412.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 144), align 8
  %.sroa.1816.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  store float %.sroa.01.0.copyload, ptr %0, align 4, !alias.scope !247
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 104), align 8
  %i.i = shufflevector <12 x float> %i.h, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.i, ptr %i.g, align 4, !alias.scope !247
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 108), align 4
  %i.l = shufflevector <12 x float> %i.k, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.l, ptr %i.j, align 4, !alias.scope !247
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 112), align 8
  %i.o = shufflevector <12 x float> %i.n, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.o, ptr %i.m, align 4, !alias.scope !247
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %.sroa.108.0.copyload, ptr %i.p, align 4, !alias.scope !247
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %.sroa.1412.0.copyload, ptr %i.q, align 4, !alias.scope !247
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %.sroa.1816.0.copyload, ptr %i.r, align 4, !alias.scope !247
  call void @rlMultMatrixf(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginMode3D(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 18 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.c = icmp sgt i32 %i.b, 31
  br i1 %i.c, label %bb.b, label %rlPushMatrix.exit

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 5, ptr noundef nonnull @.str.1)
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.d = icmp eq i32 %.pr, 5888
  br i1 %i.d, label %bb.c, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.b
  %.pre.i.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

rlPushMatrix.exit:                                ; preds = %bb.a, %.._crit_edge.i_crit_edge, %bb.c
  %i.e = phi ptr [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), %bb.c ], [ %.pre.i.pre, %.._crit_edge.i_crit_edge ], [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), %bb.a ]
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.k, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  %i.m = uitofp i32 %i.l to float
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.o = uitofp i32 %i.n to float
  %i.p = fdiv float %i.m, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %rlPushMatrix.exit
  %i.s = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load float, ptr %i.t, align 4
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = fmul double %i.w, f0x3F91DF46A0000000
  %i.y = tail call double @tan(double noundef %i.x) #56
  %i.z = fmul double %i.s, %i.y                   ; 3 uses
  %i.aa = fpext float %i.p to double
  %i.ab = fmul double %i.z, %i.aa                 ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = fneg double %i.z
  %i.ae = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlFrustum(double noundef %i.ac, double noundef %i.ab, double noundef %i.ad, double noundef %i.z, double noundef %i.s, double noundef %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %rlPushMatrix.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 3 uses
  %i.aj = fpext float %i.p to double
  %i.ak = fmul double %i.ai, %i.aj                ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fneg double %i.ai
  %i.an = load double, ptr @rlCullDistanceNear, align 8
  %i.ao = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlOrtho(double noundef %i.al, double noundef %i.ak, double noundef %i.am, double noundef %i.ai, double noundef %i.an, double noundef %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %rlPushMatrix.exit, %bb.e, %bb.d
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 8 ; 6 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ap, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aq, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.070.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %foldExtExtBinop = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %.sroa.070.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %foldExtExtBinop34 = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.as = extractelement <2 x float> %foldExtExtBinop34, i64 1 ; 3 uses
  %i.at = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %i.au = fmul float %i.as, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av) ; 2 uses
  %sqrt86.i = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fcmp oeq float %i.aw, 0.000000e+00
  %i.ay = fdiv float 1.000000e+00, %sqrt86.i
  %i.az = select i1 %i.ax, float 1.000000e+00, float %i.ay ; 3 uses
  %i.ba = fmul float %i.ar, %i.az                 ; 6 uses
  %i.bb = fmul float %i.as, %i.az                 ; 6 uses
  %i.bc = fmul float %i.at, %i.az                 ; 6 uses
  %.sroa.058.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.bd = fneg float %i.bb
end_hunk_0
