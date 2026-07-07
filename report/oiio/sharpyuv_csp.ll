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
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !7 ; 6 uses
  %i.b = fsub <2 x float> splat (float 1.000000e+00), %i.a ; 4 uses
  %i.c = fdiv <2 x float> splat (float 5.000000e-01), %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = add nsw i32 %i.e, -8                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i32 -1, %i.e
  %i.j = xor i32 %notmask, -1
  %i.k = uitofp nneg i32 %i.j to float
  %2 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <2 x i32> zeroinitializer
  %4 = shl <2 x i32> <i32 219, i32 224>, %3
  %5 = sitofp <2 x i32> %4 to <2 x float>
  %6 = insertelement <2 x float> poison, float %i.k, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x float> %5, %7                    ; 2 uses
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x float> %i.c, %9
  %i.m = shl i32 16, %i.f
  %i.n = sitofp i32 %i.m to float
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 6.553600e+04, float 5.000000e-01)
  %i.p = tail call float @llvm.floor.f32(float %i.o)
  %i.q = fptosi float %i.p to i32
  %10 = extractelement <2 x float> %8, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %.0 = phi float [ %10, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.r = phi <2 x float> [ %i.l, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.s = shl i32 128, %i.f
  %i.t = extractelement <2 x float> %i.b, i64 0
  %i.u = extractelement <2 x float> %i.a, i64 1
  %i.v = fsub float %i.t, %i.u                    ; 2 uses
  %i.w = insertelement <2 x float> %i.a, float %i.v, i64 1
  %i.x = insertelement <2 x float> poison, float %.0, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.w, %i.y
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float 6.553600e+04), <2 x float> splat (float 5.000000e-01))
  %i.ab = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  store <2 x i32> %i.ac, ptr %1, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.056, ptr %i.ae, align 4, !tbaa !3
  %i.af = extractelement <2 x float> %i.a, i64 0
  %i.ag = fneg float %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = fneg float %i.v                         ; 2 uses
  %i.aj = sitofp i32 %i.s to float
  %i.ak = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float %i.ag, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float 6.553600e+04), <4 x float> splat (float 5.000000e-01))
  %i.as = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ar)
  %i.at = fptosi <4 x float> %i.as to <4 x i32>   ; 2 uses
  store <4 x i32> %i.at, ptr %i.ah, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = insertelement <2 x float> %i.b, float %i.ai, i64 1
  %i.aw = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> splat (float 6.553600e+04), <2 x float> splat (float 5.000000e-01))
  %i.az = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ay)
  %i.ba = fptosi <2 x float> %i.az to <2 x i32>
  store <2 x i32> %i.ba, ptr %i.au, align 4, !tbaa !3
  %11 = shufflevector <2 x float> %i.a, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %12 = fneg <2 x float> %i.a
  %13 = insertelement <2 x float> %12, float %.0, i64 0
  %14 = fmul <2 x float> %11, %13
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> splat (float 6.553600e+04), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bb = extractelement <2 x float> %15, i64 0
  %16 = tail call float @llvm.floor.f32(float %i.bb)
  %17 = fptosi float %16 to i32
  store i32 %17, ptr %i.ad, align 4, !tbaa !3
  %18 = extractelement <2 x float> %15, i64 1
  %i.bc = tail call float @llvm.floor.f32(float %18)
  %i.bd = fptosi float %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bg = extractelement <4 x i32> %i.at, i64 3
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !3
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
