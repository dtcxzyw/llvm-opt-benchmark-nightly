Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/mpl_msg?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"Error in system call %s: %s\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define noundef i32 @MPL_usage_printf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10, !noalias !17
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #9, !inline_history !13
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = call i32 @fflush(ptr noundef %i.c)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree nounwind uwtable
define noundef i32 @MPL_internal_error_printf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #4 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #10
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.d = call i32 @fflush(ptr noundef %i.c)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define noundef i32 @MPL_internal_sys_error_printf(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #5 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.b = tail call ptr @strerror(i32 noundef %1) #9
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %i.b) #10 ; 0 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.e = call i32 @vfprintf(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  call void @llvm.va_end.p0(ptr nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define noundef i32 @MPL_msg_printf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #9
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = call i32 @fflush(ptr noundef %i.c)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %i.b
}

; Function Attrs: nofree noreturn nounwind uwtable
define void @MPL_exit(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef %0) #11
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!13 = distinct !{null}
!15 = distinct !{!15, i1 false, !"vprintf"}
!16 = distinct !{!16, !15, !"vprintf: argument 0"}
!17 = !{!16}
end_hunk_0
