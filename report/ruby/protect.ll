Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/protect?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Bug\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"load_protect\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_protect() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #4
  tail call void @rb_define_singleton_method(i64 noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @load_protect, i32 noundef -1) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i64 @load_protect(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !11
  %.not6 = icmp eq i32 %0, 1
  br i1 %.not6, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = and i64 %i.e, -5
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %bb.b
  %3 = phi i32 [ %i.h, %bb.b ], [ 0, %.preheader ]
  call void @rb_load_protect(i64 noundef %i.c, i32 noundef %3, ptr noundef nonnull %i.a) #4
  %i.j = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  call void @rb_jump_tag(i32 noundef %i.j) #5
  unreachable

bb.e:                                             ; preds = %rb_scan_args_set.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @rb_load_protect(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
