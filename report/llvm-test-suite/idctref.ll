Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/idctref?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Initialize_Reference_IDCT() local_unnamed_addr #0 {
bb.a:
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr @c, align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB0, double f0x3FDA9B66290EA1A3>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C9, double f0x3FB8F8B83C69A60D>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16, !tbaa !9
  store <2 x double> <double f0xBFB8F8B83C69A608, double f0xBFD1C73B39AE68C6>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16, !tbaa !9
  store <2 x double> <double f0xBFDA9B66290EA1A4, double f0xBFDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16, !tbaa !9
  store <2 x double> <double f0x3FDD906BCF328D46, double f0x3FC87DE2A6AEA964>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16, !tbaa !9
  store <2 x double> <double f0xBFC87DE2A6AEA962, double f0xBFDD906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16, !tbaa !9
  store <2 x double> <double f0xBFDD906BCF328D47, double f0xBFC87DE2A6AEA96D>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16, !tbaa !9
  store <2 x double> <double f0x3FC87DE2A6AEA967, double f0x3FDD906BCF328D44>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16, !tbaa !9
  store <2 x double> <double f0x3FDA9B66290EA1A3, double f0xBFB8F8B83C69A608>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16, !tbaa !9
  store <2 x double> <double f0xBFDF6297CFF75CB0, double f0xBFD1C73B39AE68C8>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C5, double f0x3FDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A61D, double f0xBFDA9B66290EA1A2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16, !tbaa !9
  store <2 x double> <double f0x3FD6A09E667F3BCD, double f0xBFD6A09E667F3BCC>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16, !tbaa !9
  store <2 x double> <double f0xBFD6A09E667F3BCE, double f0x3FD6A09E667F3BCB>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16, !tbaa !9
  store <2 x double> <double f0x3FD6A09E667F3BCE, double f0xBFD6A09E667F3BC5>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16, !tbaa !9
  store <2 x double> <double f0xBFD6A09E667F3BC9, double f0x3FD6A09E667F3BC4>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C9, double f0xBFDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A60C, double f0x3FDA9B66290EA1A5>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16, !tbaa !9
  store <2 x double> <double f0xBFDA9B66290EA1A2, double f0xBFB8F8B83C69A602>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB2, double f0xBFD1C73B39AE68C2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16, !tbaa !9
  store <2 x double> <double f0x3FC87DE2A6AEA964, double f0xBFDD906BCF328D47>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16, !tbaa !9
  store <2 x double> <double f0x3FDD906BCF328D44, double f0xBFC87DE2A6AEA965>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16, !tbaa !9
  store <2 x double> <double f0xBFC87DE2A6AEA971, double f0x3FDD906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16, !tbaa !9
  store <2 x double> <double f0xBFDD906BCF328D43, double f0x3FC87DE2A6AEA95F>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A60D, double f0xBFD1C73B39AE68C8>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16, !tbaa !9
  store <2 x double> <double f0x3FDA9B66290EA1A5, double f0xBFDF6297CFF75CB2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB0, double f0xBFDA9B66290EA1A1>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C2, double f0xBFB8F8B83C69A616>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Reference_IDCT(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
vector.ph:
  %i.a = alloca [64 x double], align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @c, i64 504), align 8, !tbaa !9
  %1 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 440), align 8
  %2 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 376), align 8
  %3 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 312), align 8
  %4 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 248), align 8
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 184), align 8
  %6 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 120), align 8
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 56), align 8
  %8 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16
  %9 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16
  %10 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16
  %11 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16
  %12 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16
  %13 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16
  %14 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16
  %15 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16
  %16 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 488), align 8
  %17 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 424), align 8
  %18 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 360), align 8
  %19 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 296), align 8
  %20 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 232), align 8
  %21 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 168), align 8
  %22 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 104), align 8
  %23 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 40), align 8
  %24 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16
  %25 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16
  %26 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16
  %27 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16
  %28 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16
  %29 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16
  %30 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16
  %31 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16
  %i.c = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 472), align 8
  %32 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 408), align 8
  %33 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 344), align 8
  %34 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 280), align 8
  %35 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 216), align 8
  %36 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 152), align 8
  %37 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 88), align 8
  %38 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 24), align 8
  %39 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16
  %40 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16
  %41 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16
  %42 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16
  %43 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16
  %44 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16
  %45 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16
  %46 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16
  %47 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 456), align 8
  %48 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 392), align 8
  %49 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 328), align 8
  %50 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 264), align 8
  %51 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 200), align 8
  %52 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 136), align 8
  %53 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 72), align 8
  %54 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  %55 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16
  %56 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16
  %57 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16
  %58 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16
  %59 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16
  %60 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16
  %61 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16
  %62 = load <1 x double>, ptr @c, align 16
  %broadcast.splat177 = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat193 = shufflevector <2 x double> %broadcast.splatinsert192, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = shufflevector <1 x double> %55, <1 x double> %47, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %64 = shufflevector <1 x double> %56, <1 x double> %48, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %65 = shufflevector <1 x double> %57, <1 x double> %49, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %66 = shufflevector <1 x double> %58, <1 x double> %50, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %67 = shufflevector <1 x double> %59, <1 x double> %51, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %68 = shufflevector <1 x double> %60, <1 x double> %52, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %69 = shufflevector <1 x double> %61, <1 x double> %53, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %70 = shufflevector <1 x double> %62, <1 x double> %54, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %71 = shufflevector <1 x double> %39, <1 x double> %i.c, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %72 = shufflevector <1 x double> %40, <1 x double> %32, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %73 = shufflevector <1 x double> %41, <1 x double> %33, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %74 = shufflevector <1 x double> %42, <1 x double> %34, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %75 = shufflevector <1 x double> %43, <1 x double> %35, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %76 = shufflevector <1 x double> %44, <1 x double> %36, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %77 = shufflevector <1 x double> %45, <1 x double> %37, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %78 = shufflevector <1 x double> %46, <1 x double> %38, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %79 = shufflevector <1 x double> %24, <1 x double> %16, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %80 = shufflevector <1 x double> %25, <1 x double> %17, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %81 = shufflevector <1 x double> %26, <1 x double> %18, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %82 = shufflevector <1 x double> %27, <1 x double> %19, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %83 = shufflevector <1 x double> %28, <1 x double> %20, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %84 = shufflevector <1 x double> %29, <1 x double> %21, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %85 = shufflevector <1 x double> %30, <1 x double> %22, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.d = shufflevector <1 x double> %31, <1 x double> %23, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.e = shufflevector <2 x double> %broadcast.splat177, <2 x double> %broadcast.splat193, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %86 = shufflevector <1 x double> %9, <1 x double> %1, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %87 = shufflevector <1 x double> %10, <1 x double> %2, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %88 = shufflevector <1 x double> %11, <1 x double> %3, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %89 = shufflevector <1 x double> %12, <1 x double> %4, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %90 = shufflevector <1 x double> %13, <1 x double> %5, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %91 = shufflevector <1 x double> %14, <1 x double> %6, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %92 = shufflevector <1 x double> %15, <1 x double> %7, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %93 = shufflevector <4 x double> %63, <4 x double> %71, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %94 = shufflevector <4 x double> %64, <4 x double> %72, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %95 = shufflevector <4 x double> %65, <4 x double> %73, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %96 = shufflevector <4 x double> %66, <4 x double> %74, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %97 = shufflevector <4 x double> %67, <4 x double> %75, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %98 = shufflevector <4 x double> %68, <4 x double> %76, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %99 = shufflevector <4 x double> %69, <4 x double> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %100 = shufflevector <4 x double> %70, <4 x double> %78, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.f = shufflevector <4 x double> %79, <4 x double> %i.e, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %101 = shufflevector <4 x double> %80, <4 x double> %86, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %102 = shufflevector <4 x double> %81, <4 x double> %87, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %103 = shufflevector <4 x double> %82, <4 x double> %88, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %104 = shufflevector <4 x double> %83, <4 x double> %89, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %105 = shufflevector <4 x double> %84, <4 x double> %90, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %106 = shufflevector <4 x double> %85, <4 x double> %91, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %107 = shufflevector <4 x double> %i.d, <4 x double> %92, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl nuw nsw i64 %index, 3                ; 9 uses
  %i.h = shl i64 %index, 3                        ; 8 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i16, ptr %i.i, align 2, !tbaa !13
  %i.m = load i16, ptr %i.k, align 2, !tbaa !13
  %i.n = insertelement <2 x i16> poison, i16 %i.l, i64 0
  %i.o = insertelement <2 x i16> %i.n, i16 %i.m, i64 1
  %i.p = sitofp <2 x i16> %i.o to <2 x double>    ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.u = load i16, ptr %i.r, align 2, !tbaa !13
  %i.v = load i16, ptr %i.t, align 2, !tbaa !13
  %i.w = insertelement <2 x i16> poison, i16 %i.u, i64 0
  %i.x = insertelement <2 x i16> %i.w, i16 %i.v, i64 1
  %i.y = sitofp <2 x i16> %i.x to <2 x double>    ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i16, ptr %i.aa, align 2, !tbaa !13
  %i.ae = load i16, ptr %i.ac, align 2, !tbaa !13
  %i.af = insertelement <2 x i16> poison, i16 %i.ad, i64 0
  %i.ag = insertelement <2 x i16> %i.af, i16 %i.ae, i64 1
  %i.ah = sitofp <2 x i16> %i.ag to <2 x double>  ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 22
  %i.am = load i16, ptr %i.aj, align 2, !tbaa !13
  %i.an = load i16, ptr %i.al, align 2, !tbaa !13
  %i.ao = insertelement <2 x i16> poison, i16 %i.am, i64 0
  %i.ap = insertelement <2 x i16> %i.ao, i16 %i.an, i64 1
  %i.aq = sitofp <2 x i16> %i.ap to <2 x double>  ; 4 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i16, ptr %i.as, align 2, !tbaa !13
  %i.aw = load i16, ptr %i.au, align 2, !tbaa !13
  %i.ax = insertelement <2 x i16> poison, i16 %i.av, i64 0
  %i.ay = insertelement <2 x i16> %i.ax, i16 %i.aw, i64 1
  %i.az = sitofp <2 x i16> %i.ay to <2 x double>  ; 4 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 26
  %i.be = load i16, ptr %i.bb, align 2, !tbaa !13
  %i.bf = load i16, ptr %i.bd, align 2, !tbaa !13
  %i.bg = insertelement <2 x i16> poison, i16 %i.be, i64 0
  %i.bh = insertelement <2 x i16> %i.bg, i16 %i.bf, i64 1
  %i.bi = sitofp <2 x i16> %i.bh to <2 x double>  ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bn = load i16, ptr %i.bk, align 2, !tbaa !13
  %i.bo = load i16, ptr %i.bm, align 2, !tbaa !13
  %i.bp = insertelement <2 x i16> poison, i16 %i.bn, i64 0
  %i.bq = insertelement <2 x i16> %i.bp, i16 %i.bo, i64 1
  %i.br = sitofp <2 x i16> %i.bq to <2 x double>  ; 4 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 14
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 30
  %i.bw = load i16, ptr %i.bt, align 2, !tbaa !13
  %i.bx = load i16, ptr %i.bv, align 2, !tbaa !13
  %i.by = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %i.bz = insertelement <2 x i16> %i.by, i16 %i.bx, i64 1
  %i.ca = sitofp <2 x i16> %i.bz to <2 x double>  ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cd = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ce = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cg = shufflevector <2 x double> %i.aq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ch = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ci = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cj = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ck = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cl = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cm = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cn = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.co = shufflevector <2 x double> %i.aq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cp = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cr = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cs = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ct = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cu = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cv = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cw = shufflevector <2 x double> %i.aq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cx = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cy = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cz = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.da = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.db = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dc = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dd = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = shufflevector <2 x double> %i.aq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.df = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dg = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.di = shufflevector <4 x double> %i.cc, <4 x double> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <4 x double> %i.cd, <4 x double> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = shufflevector <4 x double> %i.ce, <4 x double> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x double> %i.cf, <4 x double> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x double> %i.cg, <4 x double> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <4 x double> %i.ch, <4 x double> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x double> %i.ci, <4 x double> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = shufflevector <4 x double> %i.cj, <4 x double> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %100, <8 x double> %i.dp, <8 x double> zeroinitializer)
  %i.dr = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %99, <8 x double> %i.do, <8 x double> %i.dq)
  %i.ds = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %98, <8 x double> %i.dn, <8 x double> %i.dr)
  %i.dt = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %97, <8 x double> %i.dm, <8 x double> %i.ds)
  %i.du = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %96, <8 x double> %i.dl, <8 x double> %i.dt)
  %i.dv = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %95, <8 x double> %i.dk, <8 x double> %i.du)
  %i.dw = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %94, <8 x double> %i.dj, <8 x double> %i.dv)
  %i.dx = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %93, <8 x double> %i.di, <8 x double> %i.dw)
  %i.dy = shufflevector <4 x double> %i.cs, <4 x double> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dz = shufflevector <4 x double> %i.ct, <4 x double> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <4 x double> %i.cu, <4 x double> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x double> %i.cv, <4 x double> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = shufflevector <4 x double> %i.cw, <4 x double> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ed = shufflevector <4 x double> %i.cx, <4 x double> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = shufflevector <4 x double> %i.cy, <4 x double> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ef = shufflevector <4 x double> %i.cz, <4 x double> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eg = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %107, <8 x double> %i.ef, <8 x double> zeroinitializer)
  %i.eh = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %106, <8 x double> %i.ee, <8 x double> %i.eg)
  %i.ei = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %105, <8 x double> %i.ed, <8 x double> %i.eh)
  %i.ej = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %104, <8 x double> %i.ec, <8 x double> %i.ei)
  %i.ek = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %103, <8 x double> %i.eb, <8 x double> %i.ej)
  %i.el = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %102, <8 x double> %i.ea, <8 x double> %i.ek)
  %i.em = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %101, <8 x double> %i.dz, <8 x double> %i.el)
  %i.en = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.f, <8 x double> %i.dy, <8 x double> %i.em)
  %interleaved.vec = shufflevector <8 x double> %i.dx, <8 x double> %i.en, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %i.cb, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.eo = icmp eq i64 %index.next, 8
  br i1 %i.eo, label %.preheader38.preheader, label %vector.body, !llvm.loop !10

.preheader38.preheader:                           ; preds = %vector.body
  %wide.load = load <2 x double>, ptr @c, align 16, !tbaa !9
  %wide.load213 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16, !tbaa !9
  %wide.load214 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16, !tbaa !9
  %wide.load215 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16, !tbaa !9
  %wide.load216 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16, !tbaa !9
  %wide.load217 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16, !tbaa !9
  %wide.load218 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16, !tbaa !9
  %wide.load219 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16, !tbaa !9
  %wide.load.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16, !tbaa !9
  %wide.load213.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16, !tbaa !9
  %wide.load214.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16, !tbaa !9
  %wide.load215.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16, !tbaa !9
  %wide.load216.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16, !tbaa !9
  %wide.load217.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16, !tbaa !9
  %wide.load218.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16, !tbaa !9
  %wide.load219.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16, !tbaa !9
  %wide.load.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16, !tbaa !9
  %wide.load213.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16, !tbaa !9
  %wide.load214.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16, !tbaa !9
  %wide.load215.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16, !tbaa !9
  %wide.load216.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16, !tbaa !9
  %wide.load217.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16, !tbaa !9
  %wide.load218.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16, !tbaa !9
  %wide.load219.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16, !tbaa !9
  %wide.load.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16, !tbaa !9
  %wide.load213.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16, !tbaa !9
  %wide.load214.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16, !tbaa !9
  %wide.load215.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16, !tbaa !9
  %wide.load216.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16, !tbaa !9
  %wide.load217.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16, !tbaa !9
  %wide.load218.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16, !tbaa !9
  %wide.load219.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16, !tbaa !9
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %.preheader38
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader38 ], [ 0, %.preheader38.preheader ] ; 10 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 448
  %i.er = load double, ptr %i.eq, align 8, !tbaa !9
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 384
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.eu, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 320
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !9
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 256
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !9
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 192
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !9
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !9
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64 ; 8 uses
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat198, <2 x double> %i.fk)
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat200, <2 x double> %i.fl)
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215, <2 x double> %broadcast.splat202, <2 x double> %i.fm)
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216, <2 x double> %broadcast.splat204, <2 x double> %i.fn)
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217, <2 x double> %broadcast.splat206, <2 x double> %i.fo)
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218, <2 x double> %broadcast.splat208, <2 x double> %i.fp)
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219, <2 x double> %broadcast.splat210, <2 x double> %i.fq)
  %i.fs = fadd <2 x double> %i.fr, splat (double 5.000000e-01)
  %i.ft = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.fs)
  %i.fu = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ft)
  %i.fv = sext <2 x i9> %i.fu to <2 x i16>        ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.fx = extractelement <2 x i16> %i.fv, i64 0
  store i16 %i.fx, ptr %invariant.gep, align 2, !tbaa !13
  %i.fy = extractelement <2 x i16> %i.fv, i64 1
  store i16 %i.fy, ptr %i.fw, align 2, !tbaa !13
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.1, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.1, <2 x double> %broadcast.splat198, <2 x double> %i.fz)
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.1, <2 x double> %broadcast.splat200, <2 x double> %i.ga)
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.1, <2 x double> %broadcast.splat202, <2 x double> %i.gb)
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.1, <2 x double> %broadcast.splat204, <2 x double> %i.gc)
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.1, <2 x double> %broadcast.splat206, <2 x double> %i.gd)
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.1, <2 x double> %broadcast.splat208, <2 x double> %i.ge)
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.1, <2 x double> %broadcast.splat210, <2 x double> %i.gf)
  %i.gh = fadd <2 x double> %i.gg, splat (double 5.000000e-01)
  %i.gi = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gh)
  %i.gj = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.gi)
  %i.gk = sext <2 x i9> %i.gj to <2 x i16>        ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.gn = extractelement <2 x i16> %i.gk, i64 0
  store i16 %i.gn, ptr %i.gl, align 2, !tbaa !13
  %i.go = extractelement <2 x i16> %i.gk, i64 1
  store i16 %i.go, ptr %i.gm, align 2, !tbaa !13
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.2, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.2, <2 x double> %broadcast.splat198, <2 x double> %i.gp)
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.2, <2 x double> %broadcast.splat200, <2 x double> %i.gq)
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.2, <2 x double> %broadcast.splat202, <2 x double> %i.gr)
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.2, <2 x double> %broadcast.splat204, <2 x double> %i.gs)
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.2, <2 x double> %broadcast.splat206, <2 x double> %i.gt)
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.2, <2 x double> %broadcast.splat208, <2 x double> %i.gu)
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.2, <2 x double> %broadcast.splat210, <2 x double> %i.gv)
  %i.gx = fadd <2 x double> %i.gw, splat (double 5.000000e-01)
  %i.gy = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.gx)
  %i.gz = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.gy)
  %i.ha = sext <2 x i9> %i.gz to <2 x i16>        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.hc = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.hd = extractelement <2 x i16> %i.ha, i64 0
  store i16 %i.hd, ptr %i.hb, align 2, !tbaa !13
  %i.he = extractelement <2 x i16> %i.ha, i64 1
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !13
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.3, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.3, <2 x double> %broadcast.splat198, <2 x double> %i.hf)
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.3, <2 x double> %broadcast.splat200, <2 x double> %i.hg)
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.3, <2 x double> %broadcast.splat202, <2 x double> %i.hh)
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.3, <2 x double> %broadcast.splat204, <2 x double> %i.hi)
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.3, <2 x double> %broadcast.splat206, <2 x double> %i.hj)
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.3, <2 x double> %broadcast.splat208, <2 x double> %i.hk)
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.3, <2 x double> %broadcast.splat210, <2 x double> %i.hl)
  %i.hn = fadd <2 x double> %i.hm, splat (double 5.000000e-01)
  %i.ho = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.hn)
  %i.hp = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ho)
  %i.hq = sext <2 x i9> %i.hp to <2 x i16>        ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.ht = extractelement <2 x i16> %i.hq, i64 0
  store i16 %i.ht, ptr %i.hr, align 2, !tbaa !13
  %i.hu = extractelement <2 x i16> %i.hq, i64 1
  store i16 %i.hu, ptr %i.hs, align 2, !tbaa !13
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 8
  br i1 %exitcond67.not, label %bb.a, label %.preheader38, !llvm.loop !11

bb.a:                                             ; preds = %.preheader38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{!10, !14, !15, !16}
!11 = distinct !{!11, !14}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
