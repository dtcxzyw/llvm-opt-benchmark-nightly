inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"negzero\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_bigzero(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @bug_big_zero, i32 noundef 1) #4
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @bug_big_negzero, i32 noundef 1) #4
  ret void
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @bug_big_zero(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = ashr i64 %1, 1
  br label %rb_num2ulong_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_num2ulong(i64 noundef %1) #4
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %2, %bb.b
  %.0.i = phi i64 [ %3, %2 ], [ %i.b, %bb.b ]     ; 4 uses
  %i.c = tail call i64 @rb_big_new(i64 noundef %.0.i, i32 noundef 1) #4 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = and i64 %i.e, 16384
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_num2ulong_inline.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %BIGNUM_DIGITS.exit

bb.d:                                             ; preds = %rb_num2ulong_inline.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.c, %bb.d
  %.0.i5 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.j = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.j, label %bb.e, label %rbimpl_size_mul_or_raise.exit, !prof !14

bb.e:                                             ; preds = %BIGNUM_DIGITS.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0.i) #5
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %BIGNUM_DIGITS.exit
  %i.k = shl nuw i64 %.0.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i5, i8 0, i64 %i.k, i1 false)
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @bug_big_negzero(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %2, label %bb.b

2:                                                ; preds = %bb.a
  %3 = ashr i64 %1, 1
  br label %rb_num2ulong_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_num2ulong(i64 noundef %1) #4
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %2, %bb.b
  %.0.i = phi i64 [ %3, %2 ], [ %i.b, %bb.b ]     ; 4 uses
  %i.c = tail call i64 @rb_big_new(i64 noundef %.0.i, i32 noundef 0) #4 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = and i64 %i.e, 16384
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_num2ulong_inline.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %BIGNUM_DIGITS.exit

bb.d:                                             ; preds = %rb_num2ulong_inline.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.c, %bb.d
  %.0.i5 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.j = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.j, label %bb.e, label %rbimpl_size_mul_or_raise.exit, !prof !14

bb.e:                                             ; preds = %BIGNUM_DIGITS.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0.i) #5
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %BIGNUM_DIGITS.exit
  %i.k = shl nuw i64 %.0.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i5, i8 0, i64 %i.k, i1 false)
  ret i64 %i.c
}

declare i64 @rb_big_new(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"RBasic", !12, i64 0, !12, i64 8}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
