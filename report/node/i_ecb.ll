Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/i_ecb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"idea(int)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @IDEA_options() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define dso_local void @IDEA_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1, !tbaa !10
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %8 = load i8, ptr %3, align 1, !tbaa !10
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 16
  %11 = or disjoint i64 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %13 = load i8, ptr %7, align 1, !tbaa !10
  %i.b = zext i8 %13 to i64
  %14 = shl nuw nsw i64 %i.b, 8
  %15 = or disjoint i64 %11, %14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %16 = load i8, ptr %12, align 1, !tbaa !10
  %17 = zext i8 %16 to i64
  %18 = or disjoint i64 %15, %17
  store i64 %18, ptr %i.a, align 16, !tbaa !12
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %20 = load i8, ptr %i.c, align 1, !tbaa !10
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %24 = load i8, ptr %19, align 1, !tbaa !10
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 16
  %27 = or disjoint i64 %26, %22
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %29 = load i8, ptr %23, align 1, !tbaa !10
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 8
  %32 = or disjoint i64 %27, %31
  %33 = load i8, ptr %28, align 1, !tbaa !10
  %i.d = zext i8 %33 to i64
  %34 = or disjoint i64 %32, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %34, ptr %i.e, align 8, !tbaa !12
  call void @IDEA_encrypt(ptr noundef nonnull %i.a, ptr noundef %2) #4
  %i.f = load i64, ptr %i.a, align 16, !tbaa !12  ; 4 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = trunc i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %1, align 1, !tbaa !10
  %i.j = lshr i64 %i.f, 16
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.k, ptr %i.i, align 1, !tbaa !10
  %i.m = lshr i64 %i.f, 8
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.n, ptr %i.l, align 1, !tbaa !10
  %i.p = trunc i64 %i.f to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.p, ptr %i.o, align 1, !tbaa !10
  %i.r = load i64, ptr %i.e, align 8, !tbaa !12   ; 4 uses
  %i.s = lshr i64 %i.r, 24
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.t, ptr %i.q, align 1, !tbaa !10
  %i.v = lshr i64 %i.r, 16
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.w, ptr %i.u, align 1, !tbaa !10
  %i.y = lshr i64 %i.r, 8
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.z, ptr %i.x, align 1, !tbaa !10
  %i.ab = trunc i64 %i.r to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @IDEA_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!11, !11, i64 0}
end_hunk_0
