Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/decomposition?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @initDecomposition(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
.preheader:
  %i.a = tail call noalias noundef dereferenceable_or_null(168) ptr @malloc(i64 noundef 168) #7 ; 16 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !7
  %i.d = tail call i32 @getMyRank() #8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = sdiv i32 %i.d, %0                        ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = sdiv i32 %i.f, %1                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.n = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %1, i64 1
  %i.p = sitofp <2 x i32> %i.o to <2 x double>
  %5 = srem i32 %i.f, %1                          ; 3 uses
  %6 = srem i32 %i.d, %0                          ; 3 uses
  store i32 %6, ptr %i.e, align 4, !tbaa !7
  store i32 %5, ptr %4, align 8, !tbaa !7
  %i.q = load <2 x double>, ptr %i.k, align 8, !tbaa !9
  %i.r = fdiv <2 x double> %i.q, %i.p             ; 3 uses
  %i.s = add nsw i32 %6, 1
  store <2 x double> %i.r, ptr %i.l, align 8, !tbaa !9
  %7 = insertelement <2 x i32> poison, i32 %6, i64 0
  %8 = insertelement <2 x i32> %7, i32 %5, i64 1
  %i.t = sitofp <2 x i32> %8 to <2 x double>
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.r, <2 x double> zeroinitializer)
  store <2 x double> %i.u, ptr %i.m, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = load double, ptr %i.w, align 8, !tbaa !9
  %i.y = sitofp i32 %2 to double
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ab = fdiv double %i.x, %i.y                  ; 3 uses
  store double %i.ab, ptr %i.z, align 8, !tbaa !9
  %i.ac = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.s, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  %i.af = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = insertelement <2 x double> %i.af, double %i.ab, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> zeroinitializer)
  store <2 x double> %i.ah, ptr %i.aa, align 8, !tbaa !9
  %9 = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.ai = insertelement <2 x i32> %9, i32 %i.g, i64 1
  %i.aj = add nsw <2 x i32> %i.ai, splat (i32 1)
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = insertelement <2 x double> %i.af, double %i.ab, i64 1
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.al, <2 x double> zeroinitializer)
  store <2 x double> %i.am, ptr %i.v, align 8, !tbaa !9
  ret ptr %i.a
}

declare i32 @getMyRank() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @processorNum(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7
  %i.c = add nsw i32 %i.b, %1
  %i.d = load i32, ptr %0, align 4, !tbaa !7      ; 3 uses
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = srem i32 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i32, ptr %i.g, align 4, !tbaa !7
  %5 = add nsw i32 %4, %2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %i.h, align 4, !tbaa !7      ; 3 uses
  %7 = add nsw i32 %5, %6
  %8 = srem i32 %7, %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %9, align 4, !tbaa !7
  %10 = add nsw i32 %i.i, %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 4, !tbaa !7      ; 2 uses
  %13 = add nsw i32 %10, %12
  %14 = srem i32 %13, %12
  %15 = mul nsw i32 %14, %6
  %i.j = add nsw i32 %15, %8
  %i.k = mul nsw i32 %i.j, %i.d
  %i.l = add nsw i32 %i.k, %i.f
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
end_hunk_0
