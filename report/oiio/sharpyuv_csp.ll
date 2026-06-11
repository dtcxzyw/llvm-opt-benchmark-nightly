inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SharpYuvConversionMatrix = type { [4 x i32], [4 x i32], [4 x i32] }

@kWebpMatrix = internal constant %struct.SharpYuvConversionMatrix { [4 x i32] [i32 16839, i32 33059, i32 6420, i32 1048576], [4 x i32] [i32 -9719, i32 -19081, i32 28800, i32 8388608], [4 x i32] [i32 28800, i32 -24116, i32 -4684, i32 8388608] }, align 4
@kRec601LimitedMatrix = internal constant %struct.SharpYuvConversionMatrix { [4 x i32] [i32 16829, i32 33039, i32 6416, i32 1048576], [4 x i32] [i32 -9714, i32 -19071, i32 28784, i32 8388608], [4 x i32] [i32 28784, i32 -24103, i32 -4681, i32 8388608] }, align 4
@kRec601FullMatrix = internal constant %struct.SharpYuvConversionMatrix { [4 x i32] [i32 19595, i32 38470, i32 7471, i32 0], [4 x i32] [i32 -11058, i32 -21710, i32 32768, i32 8388608], [4 x i32] [i32 32768, i32 -27439, i32 -5329, i32 8388608] }, align 4
@kRec709LimitedMatrix = internal constant %struct.SharpYuvConversionMatrix { [4 x i32] [i32 11966, i32 40254, i32 4064, i32 1048576], [4 x i32] [i32 -6596, i32 -22189, i32 28784, i32 8388608], [4 x i32] [i32 28784, i32 -26145, i32 -2639, i32 8388608] }, align 4
@kRec709FullMatrix = internal constant %struct.SharpYuvConversionMatrix { [4 x i32] [i32 13933, i32 46871, i32 4732, i32 0], [4 x i32] [i32 -7509, i32 -25259, i32 32768, i32 8388608], [4 x i32] [i32 32768, i32 -29763, i32 -3005, i32 8388608] }, align 4
@switch.table.SharpYuvGetConversionMatrix = private unnamed_addr constant [5 x ptr] [ptr @kWebpMatrix, ptr @kRec601LimitedMatrix, ptr @kRec601FullMatrix, ptr @kRec709LimitedMatrix, ptr @kRec709FullMatrix], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @SharpYuvComputeConversionMatrix(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 48)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = load float, ptr %0, align 4, !tbaa !7      ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = load float, ptr %3, align 4, !tbaa !10     ; 4 uses
  %5 = fsub float 1.000000e+00, %2                ; 3 uses
  %6 = fsub float 1.000000e+00, %4                ; 2 uses
  %7 = fdiv float 5.000000e-01, %6                ; 2 uses
  %8 = fdiv float 5.000000e-01, %5                ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.c = add nsw i32 %i.b, -8                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i32 -1, %i.b
  %i.g = xor i32 %notmask, -1
  %i.h = uitofp nneg i32 %i.g to float            ; 2 uses
  %i.i = shl i32 219, %i.c
  %i.j = sitofp i32 %i.i to float
  %i.k = fdiv float %i.j, %i.h
  %i.l = shl i32 224, %i.c
  %i.m = sitofp i32 %i.l to float
  %i.n = fdiv float %i.m, %i.h                    ; 2 uses
  %9 = fmul float %7, %i.n
  %10 = fmul float %8, %i.n
  %i.o = shl i32 16, %i.c
  %i.p = sitofp i32 %i.o to float
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.553600e+04, float 5.000000e-01)
  %i.r = tail call float @llvm.floor.f32(float %i.q)
  %i.s = fptosi float %i.r to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %.055 = phi float [ %9, %bb.b ], [ %7, %bb.a ]  ; 3 uses
  %.054 = phi float [ %10, %bb.b ], [ %8, %bb.a ] ; 3 uses
  %.0 = phi float [ %i.k, %bb.b ], [ 1.000000e+00, %bb.a ] ; 3 uses
  %i.t = shl i32 128, %i.c
  %11 = sitofp i32 %i.t to float
  %12 = fsub float %5, %4                         ; 2 uses
  %13 = fmul float %2, %.0
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 6.553600e+04, float 5.000000e-01)
  %15 = tail call float @llvm.floor.f32(float %14)
  %16 = fmul float %12, %.0
  %17 = tail call float @llvm.fmuladd.f32(float %16, float 6.553600e+04, float 5.000000e-01)
  %18 = tail call float @llvm.floor.f32(float %17)
  %19 = insertelement <2 x float> poison, float %15, i64 0
  %20 = insertelement <2 x float> %19, float %18, i64 1
  %i.u = fptosi <2 x float> %20 to <2 x i32>
  store <2 x i32> %i.u, ptr %1, align 4, !tbaa !3
  %i.v = fmul float %4, %.0
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 6.553600e+04, float 5.000000e-01)
  %i.x = tail call float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.056, ptr %i.aa, align 4, !tbaa !3
  %21 = fneg float %2
  %22 = fmul float %.055, %21
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 6.553600e+04, float 5.000000e-01)
  %24 = tail call float @llvm.floor.f32(float %23)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = fneg float %12                          ; 2 uses
  %25 = fmul float %.055, %i.ac
  %26 = tail call float @llvm.fmuladd.f32(float %25, float 6.553600e+04, float 5.000000e-01)
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fmul float %6, %.055
  %29 = tail call float @llvm.fmuladd.f32(float %28, float 6.553600e+04, float 5.000000e-01)
  %30 = tail call float @llvm.floor.f32(float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %11, float 6.553600e+04, float 5.000000e-01)
  %32 = tail call float @llvm.floor.f32(float %31)
  %i.ad = insertelement <4 x float> poison, float %24, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %27, i64 1
  %33 = insertelement <4 x float> %i.ae, float %30, i64 2
  %34 = insertelement <4 x float> %33, float %32, i64 3
  %35 = fptosi <4 x float> %34 to <4 x i32>       ; 2 uses
  store <4 x i32> %35, ptr %i.ab, align 4, !tbaa !3
  %36 = fmul float %5, %.054
  %37 = tail call float @llvm.fmuladd.f32(float %36, float 6.553600e+04, float 5.000000e-01)
  %38 = tail call float @llvm.floor.f32(float %37)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %39 = fmul float %.054, %i.ac
  %40 = tail call float @llvm.fmuladd.f32(float %39, float 6.553600e+04, float 5.000000e-01)
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = insertelement <2 x float> poison, float %38, i64 0
  %43 = insertelement <2 x float> %42, float %41, i64 1
  %i.ag = fptosi <2 x float> %43 to <2 x i32>
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !3
  %i.ah = fneg float %4
  %i.ai = fmul float %.054, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 6.553600e+04, float 5.000000e-01)
  %i.ak = tail call float @llvm.floor.f32(float %i.aj)
  %i.al = fptosi float %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ao = extractelement <4 x i32> %35, i64 3
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @SharpYuvGetConversionMatrix(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.SharpYuvGetConversionMatrix, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 4, !4, i64 8, !4, i64 12}
!9 = !{!"float", !5, i64 0}
!10 = !{!8, !9, i64 4}
!11 = !{!8, !4, i64 8}
!12 = !{!8, !4, i64 12}
end_hunk_0
