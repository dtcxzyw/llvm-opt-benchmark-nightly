Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bf_ecb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"blowfish(ptr)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @BF_options() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define void @BF_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1, !tbaa !8
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 %6, 24
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %9 = load i8, ptr %4, align 1, !tbaa !8
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %14 = load i8, ptr %8, align 1, !tbaa !8
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %12, %16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load i8, ptr %13, align 1, !tbaa !8
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %17, %19
  store i32 %20, ptr %i.a, align 4, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %22 = load i8, ptr %i.b, align 1, !tbaa !8
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %26 = load i8, ptr %21, align 1, !tbaa !8
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or disjoint i32 %28, %24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %31 = load i8, ptr %25, align 1, !tbaa !8
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or disjoint i32 %29, %33
  %35 = load i8, ptr %30, align 1, !tbaa !8
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %34, %36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %37, ptr %i.c, align 4, !tbaa !9
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @BF_encrypt(ptr noundef nonnull %i.a, ptr noundef %2) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @BF_decrypt(ptr noundef nonnull %i.a, ptr noundef %2) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !9    ; 4 uses
  %i.e = lshr i32 %i.d, 24
  %i.f = trunc nuw i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !8
  %i.h = lshr i32 %i.d, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !8
  %i.k = lshr i32 %i.d, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !8
  %i.n = trunc i32 %i.d to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.n, ptr %i.m, align 1, !tbaa !8
  %i.p = load i32, ptr %i.c, align 4, !tbaa !9    ; 4 uses
  %i.q = lshr i32 %i.p, 24
  %i.r = trunc nuw i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.r, ptr %i.o, align 1, !tbaa !8
  %i.t = lshr i32 %i.p, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.u, ptr %i.s, align 1, !tbaa !8
  %i.w = lshr i32 %i.p, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.x, ptr %i.v, align 1, !tbaa !8
  %i.z = trunc i32 %i.p to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @BF_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BF_decrypt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
