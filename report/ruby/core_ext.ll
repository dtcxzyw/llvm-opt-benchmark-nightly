inline.NumInlined: 14
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"bignum?\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fixnum?\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"to_bignum\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"positive_pow\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_core_ext(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @int_bignum_p, i32 noundef 1) #4
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @int_fixnum_p, i32 noundef 1) #4
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @rb_int_to_bignum, i32 noundef 1) #4
  tail call void @rb_define_singleton_method(i64 noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @positive_pow, i32 noundef 2) #4
  ret void
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @int_bignum_p(i64 %0, i64 noundef %1) #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %.fr3 = freeze i64 %i.f
  %i.g = and i64 %.fr3, 31
  %i.h = icmp eq i64 %i.g, 10
  %spec.select = select i1 %i.h, i64 20, i64 0
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  %i.i = phi i64 [ 0, %bb.a ], [ %spec.select, %rbimpl_RB_TYPE_P_fastpath.exit ]
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i64 0, 21) i64 @int_fixnum_p(i64 %0, i64 noundef %1) #3 {
bb.a:
  %i.a = trunc nuw i64 %1 to i1
  %i.b = select i1 %i.a, i64 20, i64 0
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @rb_int_to_bignum(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc nuw i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_int2big(i64 noundef 0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @positive_pow(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = trunc nuw i64 %1 to i1
  br i1 %i.a, label %rb_num2long_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_num2long(i64 noundef 0) #4
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = trunc nuw i64 %2 to i1
  br i1 %i.c, label %rb_num2ulong_inline.exit, label %bb.c

bb.c:                                             ; preds = %rb_num2long_inline.exit
  %i.d = tail call i64 @rb_num2ulong(i64 noundef 0) #4
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %rb_num2long_inline.exit, %bb.c
  %.0.i2 = phi i64 [ %i.d, %bb.c ], [ 0, %rb_num2long_inline.exit ]
  %i.e = tail call i64 @rb_int_positive_pow(i64 noundef %.0.i, i64 noundef %.0.i2) #4
  ret i64 %i.e
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_int_positive_pow(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
end_hunk_0
