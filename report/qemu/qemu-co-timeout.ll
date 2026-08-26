Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-co-timeout?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"!s->sleep_state.to_wake\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"../util/qemu-co-timeout.c\00", align 1
@__PRETTY_FUNCTION__.qemu_co_timeout_entry = private unnamed_addr constant [35 x i8] c"void qemu_co_timeout_entry(void *)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [26 x i8] c"../util/qemu-co-timeout.c\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [3 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_timeout, ptr @.str.2, ptr @.str.3, i32 57, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_timeout_entry, ptr @.str.2, ptr @.str.3, i32 38, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_sleep_ns_wakeable, ptr @.str.2, ptr @.str.4, i32 235, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -110, 1) i32 @qemu_co_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %0(ptr noundef %1) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #6 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i8 0, i64 7, i1 false)
  store ptr %0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %3, ptr %.sroa.6.0..sroa_idx, align 8
  %i.c = tail call ptr @qemu_coroutine_create(ptr noundef nonnull @qemu_co_timeout_entry, ptr noundef nonnull %i.b) #5
  %i.d = tail call ptr @qemu_get_current_aio_context() #5
  tail call void @aio_co_enter(ptr noundef %i.d, ptr noundef %i.c) #5
  tail call void @qemu_co_sleep_ns_wakeable(ptr noundef nonnull %.sroa.3.0..sroa_idx, i32 noundef 0, i64 noundef %2) #5
  %i.e = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @g_free(ptr noundef nonnull %i.b) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ -110, %bb.e ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @qemu_coroutine_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @qemu_co_timeout_entry(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.a(ptr noundef %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_co_timeout_entry) #7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8
  tail call void %i.j(ptr noundef %i.k) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @g_free(ptr noundef nonnull %0) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @qemu_co_sleep_wake(ptr noundef nonnull %i.l) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @aio_co_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @qemu_get_current_aio_context() local_unnamed_addr #3

declare void @qemu_co_sleep_ns_wakeable(ptr noundef, i32 noundef, i64 noundef) #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @qemu_co_sleep_wake(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
end_hunk_0
