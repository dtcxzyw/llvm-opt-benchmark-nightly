inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Bug\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"EnumeratorKw\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"m\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_enumerator_kw() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #4
  %i.b = tail call i64 @rb_define_module_under(i64 noundef %i.a, ptr noundef nonnull @.str.1) #4
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @enumerator_kw, i32 noundef -1) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #2

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @enumerator_kw(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 4, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 4, ptr %i.b, align 8, !tbaa !10
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i32 @rb_keyword_given_p() #4
  %.not4 = icmp eq i32 %i.h, 0
  br i1 %.not4, label %.preheader.thread26, label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %0, 0
  br i1 %i.i, label %bb.e, label %.preheader.thread

.preheader:                                       ; preds = %bb.b
  %i.j = tail call i64 @rb_hash_dup(i64 noundef %i.g) #4 ; 2 uses
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  %.not7 = icmp eq i32 %i.k, 0
  br i1 %.not7, label %.preheader.thread, label %.preheader.thread26

.preheader.thread26:                              ; preds = %bb.b, %.preheader
  %.1.i.ph31 = phi i32 [ %i.k, %.preheader ], [ %0, %bb.b ]
  %.188.i.ph30 = phi i64 [ %i.j, %.preheader ], [ 4, %bb.b ]
  %i.l = load i64, ptr %1, align 8, !tbaa !10
  br label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader, %bb.c, %.preheader.thread26
  %.sink = phi i64 [ %i.l, %.preheader.thread26 ], [ 4, %bb.c ], [ 4, %.preheader ]
  %.188.i1624 = phi i64 [ %.188.i.ph30, %.preheader.thread26 ], [ 4, %bb.c ], [ %i.j, %.preheader ]
  %.1.i1722 = phi i32 [ %.1.i.ph31, %.preheader.thread26 ], [ 0, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %.185.i.lcssa = phi i32 [ 1, %.preheader.thread26 ], [ 0, %bb.c ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.a, align 16, !tbaa !10
  %i.m = sub nsw i32 %.1.i1722, %.185.i.lcssa     ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.thread32, label %bb.d

.thread32:                                        ; preds = %.preheader.thread
  %i.o = zext nneg i32 %i.m to i64
  %i.p = zext nneg i32 %.185.i.lcssa to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %i.r = tail call i64 @rb_ary_new_from_values(i64 noundef %i.o, ptr noundef %i.q) #4
  store i64 %i.r, ptr %i.b, align 8, !tbaa !10
  br label %rb_scan_args_set.exit

bb.d:                                             ; preds = %.preheader.thread
  %i.s = tail call i64 @rb_ary_new() #4
  %i.t = icmp eq i32 %.185.i.lcssa, %.1.i1722
  store i64 %i.s, ptr %i.b, align 8, !tbaa !10
  br i1 %i.t, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i18 = phi i32 [ %.1.i1722, %bb.d ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i18, i32 noundef 0, i32 noundef -1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread32, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.188.i1624, ptr %i.v, align 16, !tbaa !10
  %i.w = tail call i32 @rb_block_given_p() #4
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.x = tail call i64 @rb_frame_this_func() #4
  %i.y = tail call i64 @rb_id2sym(i64 noundef %i.x) #4
  %i.z = call i64 @rb_enumeratorize_with_size_kw(i64 noundef %2, i64 noundef %i.y, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0) #4
  br label %bb.h

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.aa = call i64 @rb_yield_values_kw(i32 noundef 4, ptr noundef nonnull %i.a, i32 noundef 0) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @rb_block_given_p() local_unnamed_addr #2

declare i64 @rb_enumeratorize_with_size_kw(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

declare i64 @rb_frame_this_func() local_unnamed_addr #2

declare i64 @rb_yield_values_kw(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
end_hunk_0
