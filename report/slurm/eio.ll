Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/eio?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@eio_signal_shutdown:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #10
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.eio_signal_shutdown) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %.not11 = icmp eq i64 %i.k, 1
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.eio_signal_shutdown) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.l, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @eio_signal_wakeup(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = call i64 @write(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1) #9
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.eio_signal_wakeup) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare void @fd_set_nonblocking(i32 noundef) local_unnamed_addr #2

declare ptr @list_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #3

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @slurm_accept_msg_conn(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @run_in_daemon(i32 noundef) local_unnamed_addr #2

declare i32 @conn_g_get_fd(ptr noundef) local_unnamed_addr #2

declare void @net_set_keep_alive(i32 noundef) local_unnamed_addr #2

declare void @fd_set_blocking(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

declare void @slurm_msg_t_init(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_receive_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @conn_g_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @slurm_free_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @list_count(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_close_eio_socket(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call double @difftime(i64 noundef %i.a, i64 noundef %i.c) #10
  %i.e = fcmp olt double %i.d, 6.000000e+01
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @get_log_level() #9
  %i.g = icmp sgt i32 %i.f, 7
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 8, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._close_eio_socket, i32 noundef %i.h) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load i32, ptr %0, align 8
  %i.j = tail call i32 @close(i32 noundef %i.i) #9 ; 0 uses
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @list_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @list_delete_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @_mark_shutdown_true(ptr nofree noundef writeonly captures(none) initializes((40, 41)) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.a, align 8
  ret i32 0
}

declare i32 @list_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @conn_g_peek(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_helper_setup_pollfds(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_is_writable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 %i.j(ptr noundef nonnull %0) #9, !inline_history !18 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8
  %2 = select i1 %i.k, i16 8213, i16 8193
  br label %_is_writable.exit

_is_writable.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ]
  %.mux = phi i16 [ 8193, %bb.a ], [ %2, %bb.b ]
  %i.m = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i40 = icmp eq ptr %i.n, null
  br i1 %.not.i40, label %.thread, label %_is_readable.exit

_is_readable.exit:                                ; preds = %_is_writable.exit
  %i.o = tail call zeroext i1 %i.n(ptr noundef nonnull %0) #9, !inline_history !19 ; 2 uses
  %brmerge53 = or i1 %i.o, %i.m
  %.mux.mux = select i1 %i.o, i16 %.mux, i16 20
  br i1 %brmerge53, label %.thread42, label %bb.c

.thread:                                          ; preds = %_is_writable.exit
  br i1 %i.m, label %.thread42, label %bb.c

.thread42:                                        ; preds = %_is_readable.exit, %.thread
  %.sink = phi i16 [ 20, %.thread ], [ %.mux.mux, %_is_readable.exit ]
  %i.p = load i32, ptr %0, align 8
  %i.q = zext i32 %i.f to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.q ; 2 uses
  store i32 %i.p, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i16 %.sink, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.q
  store ptr %0, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4
  br label %bb.c

bb.c:                                             ; preds = %_is_readable.exit, %.thread, %.thread42
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !14, !15}
!9 = distinct !{!9, !14, !15}
!10 = distinct !{!10, !14, !15}
!11 = distinct !{null, null}
!12 = distinct !{!12, !14, !15}
!13 = distinct !{!13, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = distinct !{null}
!19 = distinct !{null}
end_hunk_0
