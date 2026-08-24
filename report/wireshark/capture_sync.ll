Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/capture_sync?download=true
inline.NumInlined: 124
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sync_pipe_wait_for_child:bb.a
bb.h:                                             ; preds = %bb.g
  %trunc.i14 = trunc nuw nsw i32 %i.e to i8
  switch i8 %trunc.i14, label %bb.v [
    i8 1, label %sync_pipe_signame.exit16
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 7, label %bb.p
    i8 11, label %bb.q
    i8 31, label %bb.r
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 15, label %bb.u
  ]

bb.i:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.j:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.k:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.l:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.m:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.n:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.o:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.p:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.q:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.r:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.s:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.t:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.u:                                             ; preds = %bb.h
  br label %sync_pipe_signame.exit16

bb.v:                                             ; preds = %bb.h
  %i.r = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @sync_pipe_signame.sigmsg_buf) ; 2 uses
  %i.s = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.r, i64 noundef 19, i32 noundef 2, i64 noundef 19, ptr noundef nonnull @.str.99, i32 noundef range(i32 0, 256) %i.e) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %sync_pipe_signame.exit16

sync_pipe_signame.exit16:                         ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %i.t = phi i32 [ %.pre, %bb.v ], [ %i.d, %bb.u ], [ %i.d, %bb.i ], [ %i.d, %bb.j ], [ %i.d, %bb.k ], [ %i.d, %bb.l ], [ %i.d, %bb.m ], [ %i.d, %bb.n ], [ %i.d, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ], [ %i.d, %bb.r ], [ %i.d, %bb.s ], [ %i.d, %bb.t ], [ %i.d, %bb.h ]
  %.0.i15 = phi ptr [ %i.r, %bb.v ], [ @.str.98, %bb.u ], [ @.str.86, %bb.i ], [ @.str.87, %bb.j ], [ @.str.88, %bb.k ], [ @.str.89, %bb.l ], [ @.str.90, %bb.m ], [ @.str.91, %bb.n ], [ @.str.92, %bb.o ], [ @.str.93, %bb.p ], [ @.str.94, %bb.q ], [ @.str.95, %bb.r ], [ @.str.96, %bb.s ], [ @.str.97, %bb.t ], [ @.str.85, %bb.h ]
  %i.u = and i32 %i.t, 128
  %.not13 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not13, ptr @.str.44, ptr @.str.81
  %i.w = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull %.0.i15, ptr noundef nonnull %i.v)
  store ptr %i.w, ptr %1, align 8
  br label %.loopexit

bb.w:                                             ; preds = %bb.g
  %i.x = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef %i.d)
  store ptr %i.x, ptr %1, align 8
  br label %.loopexit

bb.x:                                             ; preds = %bb.a
  %i.y = tail call ptr @__errno_location() #15    ; 3 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  switch i32 %i.z, label %bb.ad [
    i32 4, label %bb.y
    i32 10, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.54, i64 noundef 2297, ptr noundef nonnull @__func__.sync_pipe_wait_for_child, ptr noundef nonnull @.str.83)
  %i.aa = call i32 @waitpid(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 0)
  %.not.1 = icmp eq i32 %i.aa, -1
  br i1 %.not.1, label %bb.z, label %bb.b

bb.z:                                             ; preds = %bb.y
  %i.ab = load i32, ptr %i.y, align 4             ; 2 uses
  switch i32 %i.ab, label %bb.ad [
    i32 4, label %bb.aa
    i32 10, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.54, i64 noundef 2297, ptr noundef nonnull @__func__.sync_pipe_wait_for_child, ptr noundef nonnull @.str.83)
  %i.ac = call i32 @waitpid(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 0)
  %.not.2 = icmp eq i32 %i.ac, -1
  br i1 %.not.2, label %bb.ab, label %bb.b

bb.ab:                                            ; preds = %bb.aa
  %i.ad = load i32, ptr %i.y, align 4             ; 2 uses
  switch i32 %i.ad, label %bb.ad [
    i32 4, label %.loopexit.loopexit
    i32 10, label %bb.ac
  ]

.loopexit.loopexit:                               ; preds = %bb.ab
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.54, i64 noundef 2297, ptr noundef nonnull @__func__.sync_pipe_wait_for_child, ptr noundef nonnull @.str.83)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.x
  %i.ae = load ptr, ptr @fetch_dumpcap_pid, align 8
  %.not12 = icmp eq ptr %i.ae, null
  %i.af = sext i1 %.not12 to i32
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.x
  %.lcssa = phi i32 [ %i.z, %bb.x ], [ %i.ab, %bb.z ], [ %i.ad, %bb.ab ]
  %i.ag = call ptr @g_strerror(i32 noundef %.lcssa) #15
  %i.ah = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef %i.ag)
  store ptr %i.ah, ptr %1, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %sync_pipe_signame.exit, %bb.w, %sync_pipe_signame.exit16, %bb.c, %bb.ac, %bb.ad
  %.0 = phi i32 [ %i.h, %bb.c ], [ -1, %sync_pipe_signame.exit ], [ -1, %sync_pipe_signame.exit16 ], [ -1, %bb.w ], [ %i.af, %bb.ac ], [ -1, %bb.ad ], [ -1, %.loopexit.loopexit ]
  %i.ai = call i64 @g_get_monotonic_time()        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 -1, 256) i32 @sync_interface_stats_close(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %sync_pipe_kill.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @kill(i32 noundef %i.a, i32 noundef 15) #14
  %.not3.i = icmp eq i32 %i.b, 0
  br i1 %.not3.i, label %sync_pipe_kill.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #15
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call ptr @g_strerror(i32 noundef %i.d) #15
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.54, i64 noundef 2505, ptr noundef nonnull @__func__.sync_pipe_kill, ptr noundef nonnull @.str.59, ptr noundef %i.e)
  br label %sync_pipe_kill.exit

sync_pipe_kill.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %.val = load i32, ptr %0, align 4
  %i.f = tail call i32 @close(i32 noundef %.val)  ; 0 uses
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call fastcc range(i32 -1, 256) i32 @sync_pipe_wait_for_child(i32 noundef %i.g, ptr noundef %2)
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @sync_pipe_kill(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @kill(i32 noundef %0, i32 noundef 15) #14
  %.not3 = icmp eq i32 %i.a, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #15
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call ptr @g_strerror(i32 noundef %i.c) #15
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.2, i32 noundef 5, ptr noundef nonnull @.str.54, i64 noundef 2505, ptr noundef nonnull @__func__.sync_pipe_kill, ptr noundef nonnull @.str.59, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @sync_pipe_gets_nonblock(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 -1) ; 3 uses
  %exitcond.not31 = icmp slt i32 %i.a, 0
  br i1 %exitcond.not31, label %.split.loop.exit22, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %exitcond.not = icmp eq i32 %3, %smax
  br i1 %exitcond.not, label %.split.loop.exit22, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.018 = phi i32 [ %3, %bb.b ], [ -1, %bb.a ]
  %3 = add i32 %.018, 1                           ; 6 uses
  %i.b = tail call zeroext i1 @ws_pipe_data_available(i32 noundef %0)
  br i1 %i.b, label %bb.c, label %.split.loop.exit22

bb.c:                                             ; preds = %.lr.ph
  %4 = zext nneg i32 %3 to i64
  %i.c = getelementptr i8, ptr %1, i64 %4         ; 2 uses
  %i.d = tail call i64 @read(i32 noundef %0, ptr noundef %i.c, i64 noundef 1)
  switch i64 %i.d, label %bb.d [
    i64 0, label %.split.loop.exit22
    i64 -1, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.c, align 1
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %.split.loop.exit20, label %bb.b, !llvm.loop !21

.split.loop.exit20:                               ; preds = %bb.d
  br label %.split.loop.exit22, !llvm.loop !21

.split.loop.exit22:                               ; preds = %bb.b, %.lr.ph, %bb.c, %.split.loop.exit20, %bb.a
  %.1 = phi i32 [ %smax, %bb.a ], [ %3, %.split.loop.exit20 ], [ %smax, %bb.b ], [ %3, %.lr.ph ], [ %3, %bb.c ] ; 4 uses
  %i.g = icmp sgt i32 %.1, -1
  br i1 %i.g, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.split.loop.exit22
  %i.h = zext nneg i32 %.1 to i64
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.split.loop.exit22, %bb.e
  %.015 = phi i32 [ %.1, %.split.loop.exit22 ], [ %.1, %bb.e ], [ -1, %bb.c ]
  ret i32 %.015
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_pipe_data_available(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @capture_sync_set_fetch_dumpcap_pid_cb(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @fetch_dumpcap_pid, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_append_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_len(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_executable_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_log_msg_is_active(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @ws_log_level_to_string(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @application_flavor_name_lower() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @pipe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare i32 @fork() local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_strv_length(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare void @sync_pipe_write_int_msg(i32 noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn null_pointer_is_valid
declare void @_exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare ptr @g_io_channel_unix_new(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_io_channel_set_encoding(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_io_channel_set_buffered(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_io_channel_set_close_on_unref(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @extcap_request_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @g_get_monotonic_time() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free_and_steal(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_io_channel_read_chars(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_clear_error(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"branch_weights", !"expected", i32 1073204, i32 2146410444}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{null}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
end_hunk_0
