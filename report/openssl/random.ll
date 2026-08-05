inline.NumInlined: 1
loop-unroll.NumUnrolled: 1
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
  store i32 %0, ptr @test_random_state, align 16, !tbaa !8
  %2 = sext i32 %0 to i64
  br label %.preheader.a

.preheader:                                       ; preds = %.preheader.a
  %test_random.pos.promoted = load i32, ptr @test_random.pos, align 4, !tbaa !8
  br label %bb.a

.preheader.a:                                     ; preds = %.preheader.a, %1
  %store_forwarded = phi i64 [ %2, %1 ], [ %i.e, %.preheader.a ]
  %indvars.iv = phi i64 [ 1, %1 ], [ %indvars.iv.next.1, %.preheader.a ] ; 3 uses
  %3 = getelementptr [4 x i8], ptr @test_random_state, i64 %indvars.iv
  %i.a = mul nsw i64 %store_forwarded, 16807
  %i.b = srem i64 %i.a, 2147483647                ; 2 uses
  %i.c = trunc nsw i64 %i.b to i32
  store i32 %i.c, ptr %3, align 4, !tbaa !8
  %4 = getelementptr [4 x i8], ptr @test_random_state, i64 %indvars.iv
  %5 = getelementptr i8, ptr %4, i64 4
  %i.d = mul nsw i64 %i.b, 16807
  %i.e = srem i64 %i.d, 2147483647                ; 2 uses
  %i.f = trunc nsw i64 %i.e to i32
  store i32 %i.f, ptr %5, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 31
  br i1 %exitcond.not.1, label %.preheader, label %.preheader.a, !llvm.loop !9

bb.a:                                             ; preds = %.preheader, %bb.a
  %.19 = phi i32 [ 34, %.preheader ], [ %i.s, %bb.a ]
  %i.g = phi i32 [ %test_random.pos.promoted, %.preheader ], [ %i.r, %bb.a ] ; 2 uses
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
  br i1 %exitcond.not, label %bb.b, label %bb.a, !llvm.loop !11

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
!11 = distinct !{!11, !10}
end_hunk_0
