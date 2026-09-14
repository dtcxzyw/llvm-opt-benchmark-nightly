Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/alsaaudio?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
begin_hunk_0_@alsa_to_audfmt:bb.a

bb.g:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4
  store i32 2, ptr %1, align 4
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  store i32 5, ptr %1, align 4
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  store i32 4, ptr %1, align 4
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4
  store i32 5, ptr %1, align 4
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4
  store i32 4, ptr %1, align 4
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4
  store i32 6, ptr %1, align 4
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4
  store i32 6, ptr %1, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.30, i32 noundef %0) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0 = phi i32 [ -1, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare i32 @snd_pcm_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @alsa_set_threshold(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @snd_pcm_sw_params_sizeof() #11 ; 2 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.a, i1 false), !annotation !10
  %i.c = tail call i64 @snd_pcm_sw_params_sizeof() #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 %i.b, i8 noundef 0, i64 noundef %i.c, i1 noundef false) #11
  %i.d = call i32 @snd_pcm_sw_params_current(ptr noundef %0, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.31) #11
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.d, ptr noundef nonnull @.str.32)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 @snd_pcm_sw_params_set_start_threshold(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %1) #11 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.31) #11
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.f, ptr noundef nonnull @.str.33, i64 noundef %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = call i32 @snd_pcm_sw_params(ptr noundef %0, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.31) #11
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.h, ptr noundef nonnull @.str.34)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  ret void
}

declare i32 @audio_buffer_frames(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_alsa_info_params(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_ALSA_INFO_PARAMS_DSTATE, align 2
  %.not6 = icmp eq i16 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_alsa_info_samples(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_ALSA_INFO_SAMPLES_DSTATE, align 2
  %.not3 = icmp eq i16 %i.b, 0
  br i1 %.not3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, i32 noundef %0, i32 noundef %1, i64 noundef %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare i32 @error_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

declare i32 @error_vprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare ptr @snd_strerror(i32 noundef) local_unnamed_addr #1

declare i64 @snd_pcm_sw_params_sizeof() local_unnamed_addr #1

declare i32 @snd_pcm_sw_params_current(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @alsa_logerr(i32 noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !10
  %i.a = tail call i32 (ptr, ...) @error_printf(ptr noundef nonnull @.str.35) #11 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call i32 @error_vprintf(ptr noundef %1, ptr noundef nonnull %2) #11 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call ptr @snd_strerror(i32 noundef %0) #11
  %i.d = call i32 (ptr, ...) @error_printf(ptr noundef nonnull @.str.28, ptr noundef %i.c) #11 ; 0 uses
  %i.e = call i32 (ptr, ...) @error_printf(ptr noundef nonnull @.str.29) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

declare i32 @snd_pcm_sw_params_set_start_threshold(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @snd_pcm_sw_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare i32 @snd_pcm_close(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare i64 @snd_pcm_writei(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @snd_pcm_resume(ptr noundef) local_unnamed_addr #1

declare i64 @snd_pcm_avail_update(ptr noundef) local_unnamed_addr #1

declare i64 @audio_generic_buffer_get_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @alsa_poll_helper(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @snd_pcm_poll_descriptors_count(ptr noundef %0) #11 ; 6 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.50, i32 noundef %i.a) #11
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = tail call noalias ptr @g_malloc0_n(i64 noundef %i.c, i64 noundef 8) #13 ; 4 uses
  %i.e = tail call i32 @snd_pcm_poll_descriptors(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.a) #11 ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.e, ptr noundef nonnull @.str.51)
  tail call void @g_free(ptr noundef %i.d) #11
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %trace_alsa_set_handler.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %trace_alsa_set_handler.exit ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i16, ptr %i.h, align 4              ; 2 uses
  %i.j = and i16 %i.i, 1
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.g, align 4
  tail call void @qemu_set_fd_handler(i32 noundef %i.k, ptr noundef nonnull @alsa_poll_handler, ptr noundef null, ptr noundef %1) #11
  %.pre = load i16, ptr %i.h, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.l = phi i16 [ %.pre, %bb.e ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.m = and i16 %i.l, 4
  %.not57 = icmp eq i16 %i.m, 0
  %.pre64 = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  br i1 %.not57, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.g, align 4              ; 4 uses
  %.not.i = icmp eq i32 %.pre64, 0
  br i1 %.not.i, label %trace_alsa_pollout.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.o = load i16, ptr @_TRACE_ALSA_POLLOUT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.o, 0
  br i1 %.not2.i, label %trace_alsa_pollout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not3.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i, label %trace_alsa_pollout.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.58, i32 noundef range(i32 -2147483648, 2147483647) %i.r, i32 noundef %i.n) #11
  %.pre61 = load i32, ptr %i.g, align 4
  br label %trace_alsa_pollout.exit

trace_alsa_pollout.exit:                          ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.s = phi i32 [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.n, %bb.i ], [ %.pre61, %bb.j ]
  tail call void @qemu_set_fd_handler(i32 noundef %i.s, ptr noundef null, ptr noundef nonnull @alsa_poll_handler, ptr noundef %1) #11
  %.pre62 = load i16, ptr %i.h, align 4
  %.pre63 = load i32, ptr @trace_events_enabled_count, align 4
  br label %bb.k

bb.k:                                             ; preds = %trace_alsa_pollout.exit, %bb.f
  %i.t = phi i32 [ %.pre63, %trace_alsa_pollout.exit ], [ %.pre64, %bb.f ]
  %i.u = phi i16 [ %.pre62, %trace_alsa_pollout.exit ], [ %i.l, %bb.f ]
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.g, align 4
  %.not.i58 = icmp eq i32 %i.t, 0
  br i1 %.not.i58, label %trace_alsa_set_handler.exit, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.x = load i16, ptr @_TRACE_ALSA_SET_HANDLER_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.x, 0
  br i1 %.not4.i, label %trace_alsa_set_handler.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 32768
  %.not5.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i, label %trace_alsa_set_handler.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, i32 noundef range(i32 -32768, 32768) %i.v, i32 noundef range(i32 -2147483648, 2147483647) %i.aa, i32 noundef %i.w, i32 noundef range(i32 0, -2147483648) %i.e) #11
  br label %trace_alsa_set_handler.exit

trace_alsa_set_handler.exit:                      ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %trace_alsa_set_handler.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.a, ptr %i.ac, align 8
  store ptr %0, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %2, ptr %i.ad, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %._crit_edge ]
  ret i32 %.0
}

declare i32 @snd_pcm_poll_descriptors_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @snd_pcm_poll_descriptors(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @alsa_poll_handler(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i32 @poll(ptr noundef %i.c, i64 noundef %i.f, i32 noundef 0) #11 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #14
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call ptr @strerror(i32 noundef %i.j) #11
  tail call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.52, ptr noundef %i.k) #11
  br label %trace_alsa_revents.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %trace_alsa_revents.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr %i.a, align 2, !annotation !10
  %i.l = load ptr, ptr %0, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load i32, ptr %i.d, align 8
  %i.o = call i32 @snd_pcm_poll_descriptors_revents(ptr noundef %i.l, ptr noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.o, ptr noundef nonnull @.str.53)
  br label %trace_alsa_revents.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i16, ptr %i.a, align 2
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, %i.r
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %trace_alsa_revents.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.w = load i16, ptr @_TRACE_ALSA_REVENTS_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.w, 0
  br i1 %.not1.i, label %trace_alsa_revents.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not2.i = icmp eq i32 %i.y, 0
  br i1 %.not2.i, label %trace_alsa_revents.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef range(i32 0, 65536) %i.r) #11
  br label %trace_alsa_revents.exit

bb.k:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8
  %i.aa = call i32 @snd_pcm_state(ptr noundef %i.z) #11 ; 2 uses
  switch i32 %i.aa, label %bb.t [
    i32 1, label %bb.l
    i32 4, label %bb.n
    i32 7, label %bb.p
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %i.ac = call i32 @snd_pcm_prepare(ptr noundef %i.ab) #11 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %trace_alsa_revents.exit

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.ac, ptr noundef nonnull @.str.43, ptr noundef %i.ab)
  br label %trace_alsa_revents.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = call i32 @snd_pcm_prepare(ptr noundef %i.ae) #11 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.o, label %trace_alsa_revents.exit

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.af, ptr noundef nonnull @.str.43, ptr noundef %i.ae)
  br label %trace_alsa_revents.exit

bb.p:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = call i32 @snd_pcm_resume(ptr noundef %i.ah) #11 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %trace_alsa_revents.exit

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @alsa_logerr(i32 noundef %i.ai, ptr noundef nonnull @.str.45, ptr noundef %i.ah)
  br label %trace_alsa_revents.exit

bb.r:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void @audio_run(ptr noundef %i.al, ptr noundef nonnull @.str.54) #11
  br label %trace_alsa_revents.exit

bb.s:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void @audio_run(ptr noundef %i.an, ptr noundef nonnull @.str.55) #11
  br label %trace_alsa_revents.exit

bb.t:                                             ; preds = %bb.k
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.56, i32 noundef %i.aa) #11
  br label %trace_alsa_revents.exit

trace_alsa_revents.exit:                          ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.r, %bb.s, %bb.t, %bb.c, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare i32 @snd_pcm_poll_descriptors_revents(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @snd_pcm_state(ptr noundef) local_unnamed_addr #1

declare void @audio_run(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @snd_pcm_drop(ptr noundef) local_unnamed_addr #1

declare i32 @snd_pcm_start(ptr noundef) local_unnamed_addr #1

declare i64 @snd_pcm_readi(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !12}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
end_hunk_0
