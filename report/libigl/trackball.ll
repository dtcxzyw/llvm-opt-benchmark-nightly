Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/trackball?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZN3igl9trackballIdEEvddT_PKS1_ddddPS1_ = comdat any

$_ZN3igl9trackballIdEEvddT_ddddPS1_ = comdat any

$_ZN3igl9trackballIfEEvddT_PKS1_ddddPS1_ = comdat any

$_ZN3igl9trackballIffEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE = comdat any

$_ZN3igl9trackballIddEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9trackballIdEEvddT_PKS1_ddddPS1_(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef %8) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 6 uses
  %i.b = alloca [4 x double], align 16            ; 5 uses
  %i.c = alloca [4 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @_ZN3igl9trackballIdEEvddT_ddddPS1_(double noundef %0, double noundef %1, double noundef %2, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull %i.a)
  %i.d = load <2 x double>, ptr %3, align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %i.e = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.g = call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !10 ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.g)
  %i.l = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.m = call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = call double @llvm.sqrt.f64(double %i.m)  ; 2 uses
  %i.o = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ogt double %i.o, 1.000000e-28
  %.sink39.sroa.gep41 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sink39.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fdiv <2 x double> %i.d, %i.r
  store <2 x double> %i.s, ptr %i.c, align 16, !tbaa !10
  %i.t = fdiv <2 x double> %i.i, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> %i.t, ptr %i.u, align 16, !tbaa !10
  call void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink39.sroa.phi = phi ptr [ %.sink39.sroa.gep, %bb.b ], [ %.sink39.sroa.gep41, %bb.a ]
  %.sink39 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.v = load <2 x double>, ptr %.sink39, align 16, !tbaa !10
  store <2 x double> %i.v, ptr %8, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = load <2 x double>, ptr %.sink39.sroa.phi, align 16, !tbaa !10
  store <2 x double> %i.x, ptr %i.w, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9trackballIdEEvddT_ddddPS1_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  %i.c = alloca [3 x double], align 16            ; 6 uses
  %i.d = alloca [4 x double], align 16            ; 5 uses
  %i.e = insertelement <2 x double> poison, double %0, i64 0
  %i.f = insertelement <2 x double> %i.e, double %1, i64 1 ; 2 uses
  %i.g = fmul <2 x double> %i.f, splat (double 5.000000e-01) ; 4 uses
  %i.h = fneg double %0                           ; 2 uses
  %i.i = tail call noundef double @llvm.fabs.f64(double %0) ; 2 uses
  %i.j = tail call noundef double @llvm.fabs.f64(double %1) ; 2 uses
  %i.k = fcmp olt double %i.i, %i.j
  %i.l = select i1 %i.k, double %i.i, double %i.j
  %i.m = fadd double %i.l, -4.000000e+00
  %i.n = insertelement <2 x double> poison, double %3, i64 0
  %i.o = insertelement <2 x double> %i.n, double %4, i64 1
  %i.p = fsub <2 x double> %i.o, %i.g
  %i.q = insertelement <2 x double> poison, double %2, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.p, <2 x double> %i.g)
  %i.t = insertelement <2 x double> %i.f, double %i.h, i64 0
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> %i.t)
  %i.v = fadd <2 x double> %i.u, splat (double -1.000000e+00)
  %i.w = insertelement <2 x double> poison, double %i.m, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fdiv <2 x double> %i.v, %i.x             ; 3 uses
  %i.z = insertelement <2 x double> poison, double %5, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %6, i64 1
  %i.ab = fsub <2 x double> %i.aa, %i.g
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.ab, <2 x double> %i.g)
  %i.ad = insertelement <2 x double> poison, double %i.h, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %1, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> %i.ae)
  %i.ag = fadd <2 x double> %i.af, splat (double -1.000000e+00)
  %i.ah = fdiv <2 x double> %i.ag, %i.x           ; 3 uses
  %i.ai = shufflevector <2 x double> %i.y, <2 x double> %i.ah, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aj = fmul <2 x double> %i.ai, %i.ai
  %i.ak = shufflevector <2 x double> %i.y, <2 x double> %i.ah, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ak, <2 x double> %i.aj) ; 2 uses
  %i.am = fadd <2 x double> %i.al, splat (double 1.000000e+00)
  %8 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.am) ; 5 uses
  %i.an = extractelement <2 x double> %8, i64 0
  %9 = fcmp ogt double %i.an, f0x3D06849B86A12B9B
  %10 = extractelement <2 x double> %8, i64 1
  %i.ao = fcmp ogt double %10, f0x3D06849B86A12B9B
  %or.cond = select i1 %9, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ap = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x double> %i.y, %i.ap
  store <2 x double> %i.aq, ptr %i.a, align 16, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.as = fdiv <2 x double> splat (double 1.000000e+00), %8 ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  store double %i.at, ptr %i.ar, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %11 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fdiv <2 x double> %i.ah, %11
  store <2 x double> %i.au, ptr %i.b, align 16, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = extractelement <2 x double> %i.as, i64 1
  store double %i.aw, ptr %i.av, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @_ZN3igl5crossEPKdS1_Pd(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.ax = call noundef double @_ZN3igl3dotEPKdS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  %i.ay = call double @sqrt(double noundef %i.ax) #5
  %i.az = call noundef double @_ZN3igl3dotEPKdS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ba = call double @atan2(double noundef %i.ay, double noundef %i.az) #5 ; 2 uses
  %i.bb = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.bc = fcmp ogt double %i.bb, 1.000000e+00
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bd = call nnan double @llvm.sqrt.f64(double %i.bb)
  %i.be = fadd nnan double %i.bd, -1.000000e+00
  %i.bf = call nnan double @llvm.fmuladd.f64(double %i.be, double f0x3FC99999A0000000, double 1.000000e+00)
  %i.bg = fmul double %i.bf, %i.ba
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.bg, %bb.c ], [ %i.ba, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @_ZN3igl18axis_angle_to_quatIdEEvPKT_S1_PS1_(ptr noundef nonnull %i.c, double noundef %.0, ptr noundef nonnull %i.d)
  %i.bh = load <2 x double>, ptr %i.d, align 16, !tbaa !10
  store <2 x double> %i.bh, ptr %7, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bk = load <2 x double>, ptr %i.bi, align 16, !tbaa !10
  store <2 x double> %i.bk, ptr %i.bj, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9trackballIfEEvddT_PKS1_ddddPS1_(double noundef %0, double noundef %1, float noundef %2, ptr noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef %8) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 5 uses
  %i.b = alloca [4 x double], align 16            ; 4 uses
  %i.c = alloca [4 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = fpext float %2 to double
  call void @_ZN3igl9trackballIdEEvddT_ddddPS1_(double noundef %0, double noundef %1, double noundef %i.d, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull %i.a)
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !12 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.l = call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.h)
  %i.m = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.n = call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.l)
  %i.o = fpext float %i.n to double
  %i.p = call double @llvm.sqrt.f64(double %i.o)  ; 2 uses
  %i.q = call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ogt double %i.q, 1.000000e-28
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fpext <2 x float> %i.e to <2 x double>
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = fdiv <2 x double> %i.s, %i.u
  store <2 x double> %i.v, ptr %i.c, align 16, !tbaa !10
  %i.w = fpext <2 x float> %i.j to <2 x double>
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = fdiv <2 x double> %i.w, %i.u
  store <2 x double> %i.y, ptr %i.x, align 16, !tbaa !10
  call void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink40 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.z = load <4 x double>, ptr %.sink40, align 16, !tbaa !10
  %i.aa = fptrunc <4 x double> %i.z to <4 x float>
  store <4 x float> %i.aa, ptr %8, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9trackballIffEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull align 16 dereferenceable(16) %8) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 7 uses
  %i.c = alloca [4 x double], align 16            ; 5 uses
  %i.d = fptrunc double %2 to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.e = fpext float %i.d to double
  call void @_ZN3igl9trackballIdEEvddT_ddddPS1_(double noundef %0, double noundef %1, double noundef %i.e, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull %i.a)
  %i.f = load <2 x float>, ptr %3, align 16, !tbaa !12 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.f, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.i = call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load <2 x float>, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.m = call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.i)
  %i.n = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %i.o = call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.m)
  %i.p = fpext float %i.o to double
  %i.q = call double @llvm.sqrt.f64(double %i.p)  ; 2 uses
  %i.r = call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ogt double %i.r, 1.000000e-28
  %.sink40.i.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink40.i.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink40.i.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.s, label %bb.b, label %_ZN3igl9trackballIfEEvddT_PKS1_ddddPS1_.exit

bb.b:                                             ; preds = %bb.a
  %.sink40.i.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink40.i.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink40.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = fpext <2 x float> %i.f to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fdiv <2 x double> %i.t, %i.v
  store <2 x double> %i.w, ptr %i.c, align 16, !tbaa !10
  %i.x = fpext <2 x float> %i.k to <2 x double>
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = fdiv <2 x double> %i.x, %i.v
  store <2 x double> %i.z, ptr %i.y, align 16, !tbaa !10
  call void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  br label %_ZN3igl9trackballIfEEvddT_PKS1_ddddPS1_.exit

_ZN3igl9trackballIfEEvddT_PKS1_ddddPS1_.exit:     ; preds = %bb.a, %bb.b
  %.sink40.i.sroa.phi = phi ptr [ %.sink40.i.sroa.gep, %bb.b ], [ %.sink40.i.sroa.gep9, %bb.a ]
  %.sink40.i.sroa.phi10 = phi ptr [ %.sink40.i.sroa.gep11, %bb.b ], [ %.sink40.i.sroa.gep12, %bb.a ]
  %.sink40.i.sroa.phi13 = phi ptr [ %.sink40.i.sroa.gep14, %bb.b ], [ %.sink40.i.sroa.gep15, %bb.a ]
  %.sink40.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.aa = load double, ptr %.sink40.i.sroa.phi, align 8, !tbaa !10
  %i.ab = load double, ptr %.sink40.i.sroa.phi10, align 16, !tbaa !10
  %i.ac = load double, ptr %.sink40.i.sroa.phi13, align 8, !tbaa !10
  %.sink34.in.i = load double, ptr %.sink40.i, align 16, !tbaa !10
  %i.ad = insertelement <4 x double> poison, double %.sink34.in.i, i64 0
  %i.ae = insertelement <4 x double> %i.ad, double %i.aa, i64 1
  %i.af = insertelement <4 x double> %i.ae, double %i.ab, i64 2
  %i.ag = insertelement <4 x double> %i.af, double %i.ac, i64 3
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ah, ptr %8, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9trackballIddEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE(double noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull align 16 dereferenceable(32) %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull align 16 dereferenceable(32) %8) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [4 x double], align 16            ; 7 uses
  %i.c = alloca [4 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @_ZN3igl9trackballIdEEvddT_ddddPS1_(double noundef %0, double noundef %1, double noundef %2, double noundef %4, double noundef %5, double noundef %6, double noundef %7, ptr noundef nonnull %i.a)
  %i.d = load <2 x double>, ptr %3, align 16, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %i.e = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.g = call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !10 ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 2 uses
  %i.k = call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.g)
  %i.l = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.m = call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k)
  %i.n = call double @llvm.sqrt.f64(double %i.m)  ; 2 uses
  %i.o = call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ogt double %i.o, 1.000000e-28
  %.sink39.i.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink39.i.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink39.i.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br i1 %i.p, label %bb.b, label %_ZN3igl9trackballIdEEvddT_PKS1_ddddPS1_.exit

bb.b:                                             ; preds = %bb.a
  %.sink39.i.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink39.i.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink39.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fdiv <2 x double> %i.d, %i.r
  store <2 x double> %i.s, ptr %i.c, align 16, !tbaa !10
  %i.t = fdiv <2 x double> %i.i, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> %i.t, ptr %i.u, align 16, !tbaa !10
  call void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  br label %_ZN3igl9trackballIdEEvddT_PKS1_ddddPS1_.exit

_ZN3igl9trackballIdEEvddT_PKS1_ddddPS1_.exit:     ; preds = %bb.a, %bb.b
  %.sink39.i.sroa.phi = phi ptr [ %.sink39.i.sroa.gep, %bb.b ], [ %.sink39.i.sroa.gep9, %bb.a ]
  %.sink39.i.sroa.phi10 = phi ptr [ %.sink39.i.sroa.gep11, %bb.b ], [ %.sink39.i.sroa.gep12, %bb.a ]
  %.sink39.i.sroa.phi13 = phi ptr [ %.sink39.i.sroa.gep14, %bb.b ], [ %.sink39.i.sroa.gep15, %bb.a ]
  %.sink39.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.v = load double, ptr %.sink39.i.sroa.phi, align 8, !tbaa !10
  %i.w = load double, ptr %.sink39.i.sroa.phi10, align 16, !tbaa !10
  %i.x = load double, ptr %.sink39.i.sroa.phi13, align 8, !tbaa !10
  %.sink34.i = load double, ptr %.sink39.i, align 16, !tbaa !10
  store double %.sink34.i, ptr %8, align 16, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.v, ptr %i.y, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.w, ptr %i.z, align 16, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %i.x, ptr %i.aa, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @_ZN3igl5crossEPKdS1_Pd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef double @_ZN3igl3dotEPKdS1_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN3igl18axis_angle_to_quatIdEEvPKT_S1_PS1_(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
end_hunk_0
