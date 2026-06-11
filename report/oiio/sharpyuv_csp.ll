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
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !7 ; 4 uses
  %3 = fsub <2 x float> splat (float 1.000000e+00), %2 ; 4 uses
  %4 = fdiv <2 x float> splat (float 5.000000e-01), %3 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.c = add nsw i32 %i.b, -8                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
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
  %i.n = fdiv float %i.m, %i.h
  %5 = insertelement <2 x float> poison, float %i.n, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %4, %6
  %i.o = shl i32 16, %i.c
  %i.p = sitofp i32 %i.o to float
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 6.553600e+04, float 5.000000e-01)
  %i.r = tail call float @llvm.floor.f32(float %i.q)
  %i.s = fptosi float %i.r to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %.054 = phi float [ %i.k, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %8 = phi <2 x float> [ %7, %bb.b ], [ %4, %bb.a ] ; 3 uses
  %i.t = shl i32 128, %i.c
  %9 = extractelement <2 x float> %3, i64 0
  %10 = extractelement <2 x float> %2, i64 1      ; 3 uses
  %11 = fsub float %9, %10                        ; 2 uses
  %12 = insertelement <2 x float> %2, float %11, i64 1
  %13 = insertelement <2 x float> poison, float %.054, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %12, %14
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> splat (float 6.553600e+04), <2 x float> splat (float 5.000000e-01))
  %17 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %16)
  %i.u = fptosi <2 x float> %17 to <2 x i32>
  store <2 x i32> %i.u, ptr %1, align 4, !tbaa !3
  %i.v = fmul float %10, %.054
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 6.553600e+04, float 5.000000e-01)
  %i.x = tail call float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.y, ptr %i.z, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.056, ptr %i.aa, align 4, !tbaa !3
  %18 = extractelement <2 x float> %2, i64 0
  %19 = fneg float %18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = fneg float %11                          ; 2 uses
  %20 = sitofp i32 %i.t to float
  %21 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %22 = insertelement <4 x float> %21, float %19, i64 0
  %i.ad = insertelement <4 x float> %22, float %i.ac, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %20, i64 3
  %23 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %23, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %25 = fmul <4 x float> %i.ae, %24
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> splat (float 6.553600e+04), <4 x float> splat (float 5.000000e-01))
  %27 = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %26)
  %28 = fptosi <4 x float> %27 to <4 x i32>       ; 2 uses
  store <4 x i32> %28, ptr %i.ab, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %29 = insertelement <2 x float> %3, float %i.ac, i64 1
  %30 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x float> %29, %30
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> splat (float 6.553600e+04), <2 x float> splat (float 5.000000e-01))
  %33 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %32)
  %i.ag = fptosi <2 x float> %33 to <2 x i32>
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !3
  %i.ah = fneg float %10
  %34 = extractelement <2 x float> %8, i64 0
  %i.ai = fmul float %34, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 6.553600e+04, float 5.000000e-01)
  %i.ak = tail call float @llvm.floor.f32(float %i.aj)
  %i.al = fptosi float %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ao = extractelement <4 x i32> %28, i64 3
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #2

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
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !4, i64 8}
!10 = !{!"", !8, i64 0, !8, i64 4, !4, i64 8, !4, i64 12}
!11 = !{!10, !4, i64 12}
end_hunk_0
