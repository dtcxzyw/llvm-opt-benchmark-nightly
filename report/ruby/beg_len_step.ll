inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Enumerator::ArithmeticSequence\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"__beg_len_step__\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_beg_len_step() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_path2class(ptr noundef nonnull @.str) #3
  tail call void @rb_define_singleton_method(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @arith_seq_s_beg_len_step, i32 noundef 3) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_path2class(ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @arith_seq_s_beg_len_step(i64 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %4, label %bb.b

4:                                                ; preds = %bb.a
  %5 = ashr i64 %2, 1
  br label %rb_num2long_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_num2long(i64 noundef %2) #3
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %4, %bb.b
  %.0.i = phi i64 [ %5, %4 ], [ %i.e, %bb.b ]
  %i.f = trunc i64 %3 to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_num2long_inline.exit
  %i.g = tail call i64 @rb_fix2int(i64 noundef %3) #3
  br label %rb_num2int_inline.exit

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.h = tail call i64 @rb_num2int(i64 noundef %3) #3
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.c, %bb.d
  %.0.i4 = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = trunc i64 %.0.i4 to i32
  %i.j = call i64 @rb_arithmetic_sequence_beg_len_step(i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %.0.i, i32 noundef %i.i) #3
  %i.k = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.l = add i64 %i.k, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.l, -1
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.m = shl nsw i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, 1
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %rb_num2int_inline.exit
  %i.o = call i64 @rb_int2big(i64 noundef %i.k) #3
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.e, %bb.f
  %.0.i5 = phi i64 [ %i.n, %bb.e ], [ %i.o, %bb.f ]
  %i.p = load i64, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.q = add i64 %i.p, 4611686018427387904
  %or.cond.i6 = icmp sgt i64 %i.q, -1
  br i1 %or.cond.i6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_long2num_inline.exit
  %i.r = shl nsw i64 %i.p, 1
  %i.s = or disjoint i64 %i.r, 1
  br label %rb_long2num_inline.exit8

bb.h:                                             ; preds = %rb_long2num_inline.exit
  %i.t = call i64 @rb_int2big(i64 noundef %i.p) #3
  br label %rb_long2num_inline.exit8

rb_long2num_inline.exit8:                         ; preds = %bb.g, %bb.h
  %.0.i7 = phi i64 [ %i.s, %bb.g ], [ %i.t, %bb.h ]
  %i.u = load i64, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.v = add i64 %i.u, 4611686018427387904
  %or.cond.i9 = icmp sgt i64 %i.v, -1
  br i1 %or.cond.i9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_long2num_inline.exit8
  %i.w = shl nsw i64 %i.u, 1
  %i.x = or disjoint i64 %i.w, 1
  br label %rb_long2num_inline.exit11

bb.j:                                             ; preds = %rb_long2num_inline.exit8
  %i.y = call i64 @rb_int2big(i64 noundef %i.u) #3
  br label %rb_long2num_inline.exit11

rb_long2num_inline.exit11:                        ; preds = %bb.i, %bb.j
  %.0.i10 = phi i64 [ %i.x, %bb.i ], [ %i.y, %bb.j ]
  %i.z = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 4, i64 noundef %i.j, i64 noundef %.0.i5, i64 noundef %.0.i7, i64 noundef %.0.i10) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i64 %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @rb_arithmetic_sequence_beg_len_step(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
end_hunk_0
