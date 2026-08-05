begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@test_random.pos = internal unnamed_addr global i32 3, align 4
@test_random_state = internal unnamed_addr global [31 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @test_random() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @test_random.pos, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 31
  %spec.select = select i1 %i.b, i32 0, i32 %i.a  ; 3 uses
  %i.c = add i32 %spec.select, 28
  %i.d = urem i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @test_random_state, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = zext i32 %spec.select to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @test_random_state, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %i.l = add i32 %spec.select, 1
  store i32 %i.l, ptr @test_random.pos, align 4, !tbaa !8
  %i.m = lshr i32 %i.k, 1
  ret i32 %i.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @test_random_seed(i32 noundef %0) local_unnamed_addr #1 {
.preheader.a:
  store i32 %0, ptr @test_random_state, align 16, !tbaa !8
  %1 = sext i32 %0 to i64
  %2 = mul nsw i64 %1, 16807
  %3 = srem i64 %2, 2147483647                    ; 2 uses
  %4 = trunc nsw i64 %3 to i32
  store i32 %4, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 4), align 4, !tbaa !8
  %5 = mul nsw i64 %3, 16807
  %6 = srem i64 %5, 2147483647                    ; 2 uses
  %7 = trunc nsw i64 %6 to i32
  store i32 %7, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 8), align 8, !tbaa !8
  %8 = mul nsw i64 %6, 16807
  %9 = srem i64 %8, 2147483647                    ; 2 uses
  %10 = trunc nsw i64 %9 to i32
  store i32 %10, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 12), align 4, !tbaa !8
  %11 = mul nsw i64 %9, 16807
  %12 = srem i64 %11, 2147483647                  ; 2 uses
  %13 = trunc nsw i64 %12 to i32
  store i32 %13, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 16), align 16, !tbaa !8
  %14 = mul nsw i64 %12, 16807
  %15 = srem i64 %14, 2147483647                  ; 2 uses
  %16 = trunc nsw i64 %15 to i32
  store i32 %16, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 20), align 4, !tbaa !8
  %17 = mul nsw i64 %15, 16807
  %18 = srem i64 %17, 2147483647                  ; 2 uses
  %19 = trunc nsw i64 %18 to i32
  store i32 %19, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 24), align 8, !tbaa !8
  %20 = mul nsw i64 %18, 16807
  %21 = srem i64 %20, 2147483647                  ; 2 uses
  %22 = trunc nsw i64 %21 to i32
  store i32 %22, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 28), align 4, !tbaa !8
  %23 = mul nsw i64 %21, 16807
  %24 = srem i64 %23, 2147483647                  ; 2 uses
  %25 = trunc nsw i64 %24 to i32
  store i32 %25, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 32), align 16, !tbaa !8
  %26 = mul nsw i64 %24, 16807
  %27 = srem i64 %26, 2147483647                  ; 2 uses
  %28 = trunc nsw i64 %27 to i32
  store i32 %28, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 36), align 4, !tbaa !8
  %29 = mul nsw i64 %27, 16807
  %30 = srem i64 %29, 2147483647                  ; 2 uses
  %31 = trunc nsw i64 %30 to i32
  store i32 %31, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 40), align 8, !tbaa !8
  %32 = mul nsw i64 %30, 16807
  %33 = srem i64 %32, 2147483647                  ; 2 uses
  %34 = trunc nsw i64 %33 to i32
  store i32 %34, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 44), align 4, !tbaa !8
  %35 = mul nsw i64 %33, 16807
  %36 = srem i64 %35, 2147483647                  ; 2 uses
  %37 = trunc nsw i64 %36 to i32
  store i32 %37, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 48), align 16, !tbaa !8
  %38 = mul nsw i64 %36, 16807
  %39 = srem i64 %38, 2147483647                  ; 2 uses
  %40 = trunc nsw i64 %39 to i32
  store i32 %40, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 52), align 4, !tbaa !8
  %41 = mul nsw i64 %39, 16807
  %42 = srem i64 %41, 2147483647                  ; 2 uses
  %43 = trunc nsw i64 %42 to i32
  store i32 %43, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 56), align 8, !tbaa !8
  %44 = mul nsw i64 %42, 16807
  %45 = srem i64 %44, 2147483647                  ; 2 uses
  %46 = trunc nsw i64 %45 to i32
  store i32 %46, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 60), align 4, !tbaa !8
  %47 = mul nsw i64 %45, 16807
  %48 = srem i64 %47, 2147483647                  ; 2 uses
  %49 = trunc nsw i64 %48 to i32
  store i32 %49, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 64), align 16, !tbaa !8
  %50 = mul nsw i64 %48, 16807
  %51 = srem i64 %50, 2147483647                  ; 2 uses
  %52 = trunc nsw i64 %51 to i32
  store i32 %52, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 68), align 4, !tbaa !8
  %53 = mul nsw i64 %51, 16807
  %54 = srem i64 %53, 2147483647                  ; 2 uses
  %55 = trunc nsw i64 %54 to i32
  store i32 %55, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 72), align 8, !tbaa !8
  %56 = mul nsw i64 %54, 16807
  %57 = srem i64 %56, 2147483647                  ; 2 uses
  %58 = trunc nsw i64 %57 to i32
  store i32 %58, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 76), align 4, !tbaa !8
  %59 = mul nsw i64 %57, 16807
  %60 = srem i64 %59, 2147483647                  ; 2 uses
  %61 = trunc nsw i64 %60 to i32
  store i32 %61, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 80), align 16, !tbaa !8
  %62 = mul nsw i64 %60, 16807
  %63 = srem i64 %62, 2147483647                  ; 2 uses
  %64 = trunc nsw i64 %63 to i32
  store i32 %64, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 84), align 4, !tbaa !8
  %65 = mul nsw i64 %63, 16807
  %66 = srem i64 %65, 2147483647                  ; 2 uses
  %67 = trunc nsw i64 %66 to i32
  store i32 %67, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 88), align 8, !tbaa !8
  %68 = mul nsw i64 %66, 16807
  %69 = srem i64 %68, 2147483647                  ; 2 uses
  %70 = trunc nsw i64 %69 to i32
  store i32 %70, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 92), align 4, !tbaa !8
  %71 = mul nsw i64 %69, 16807
  %72 = srem i64 %71, 2147483647                  ; 2 uses
  %73 = trunc nsw i64 %72 to i32
  store i32 %73, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 96), align 16, !tbaa !8
  %74 = mul nsw i64 %72, 16807
  %75 = srem i64 %74, 2147483647                  ; 2 uses
  %76 = trunc nsw i64 %75 to i32
  store i32 %76, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 100), align 4, !tbaa !8
  %77 = mul nsw i64 %75, 16807
  %78 = srem i64 %77, 2147483647                  ; 2 uses
  %79 = trunc nsw i64 %78 to i32
  store i32 %79, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 104), align 8, !tbaa !8
  %i.a = mul nsw i64 %78, 16807
  %i.b = srem i64 %i.a, 2147483647                ; 2 uses
  %i.c = trunc nsw i64 %i.b to i32
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 108), align 4, !tbaa !8
  %80 = mul nsw i64 %i.b, 16807
  %81 = srem i64 %80, 2147483647                  ; 2 uses
  %82 = trunc nsw i64 %81 to i32
  store i32 %82, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 112), align 16, !tbaa !8
  %i.d = mul nsw i64 %81, 16807
  %i.e = srem i64 %i.d, 2147483647                ; 2 uses
  %i.f = trunc nsw i64 %i.e to i32
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 116), align 4, !tbaa !8
  %83 = mul nsw i64 %i.e, 16807
  %84 = srem i64 %83, 2147483647
  %85 = trunc nsw i64 %84 to i32
  store i32 %85, ptr getelementptr inbounds nuw (i8, ptr @test_random_state, i64 120), align 8, !tbaa !8
  %test_random.pos.promoted = load i32, ptr @test_random.pos, align 4, !tbaa !8
  br label %bb.a

bb.a:                                             ; preds = %.preheader.a, %bb.a
  %.19 = phi i32 [ 34, %.preheader.a ], [ %i.s, %bb.a ]
  %i.g = phi i32 [ %test_random.pos.promoted, %.preheader.a ], [ %i.r, %bb.a ] ; 2 uses
  %i.h = icmp eq i32 %i.g, 31
  %spec.select.i = select i1 %i.h, i32 0, i32 %i.g ; 3 uses
  %i.i = add i32 %spec.select.i, 28
  %i.j = urem i32 %i.i, 31
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @test_random_state, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = zext i32 %spec.select.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @test_random_state, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = add i32 %i.p, %i.m
  store i32 %i.q, ptr %i.o, align 4, !tbaa !8
  %i.r = add i32 %spec.select.i, 1                ; 2 uses
  %i.s = add nuw nsw i32 %.19, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 344
  br i1 %exitcond.not, label %bb.b, label %bb.a, !llvm.loop !9

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr @test_random.pos, align 4, !tbaa !8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
