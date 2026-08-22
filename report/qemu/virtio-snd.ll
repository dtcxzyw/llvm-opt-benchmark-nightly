Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-snd?download=true
inline.NumInlined: 203
inline.NumDeleted: 59
begin_hunk_0_@virtio_snd_realize:bb.a

print_code.exit:                                  ; preds = %.lr.ph
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.14, i32 noundef 1108, ptr noundef nonnull @__func__.virtio_snd_realize, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.61) #10
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.bf = call fastcc i32 @virtio_snd_pcm_prepare(ptr noundef nonnull %i.d, i32 noundef %.096)
  %.not90 = icmp eq i32 %i.bf, 32768
  br i1 %.not90, label %bb.l, label %print_code.exit94

print_code.exit94:                                ; preds = %bb.m
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.14, i32 noundef 1115, ptr noundef nonnull @__func__.virtio_snd_realize, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.61) #10
  br label %bb.n

bb.n:                                             ; preds = %print_code.exit, %print_code.exit94
  call void @virtio_snd_unrealize(ptr noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.n, %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.val = load ptr, ptr %2, align 8
  %.val92 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val92, ptr noundef %.val) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_snd_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE) #10
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 1339, ptr noundef nonnull @__func__.virtio_snd_unrealize) #10 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 616
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @qemu_del_vm_change_state_handler(ptr noundef %i.d) #10
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_virtio_snd_unrealize.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_VIRTIO_SND_UNREALIZE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_virtio_snd_unrealize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_virtio_snd_unrealize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef nonnull %i.b) #10
  br label %trace_virtio_snd_unrealize.exit

trace_virtio_snd_unrealize.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %trace_virtio_snd_unrealize.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 628 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre27 = load ptr, ptr %i.i, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.m = phi ptr [ %.pre27, %._crit_edge.loopexit ], [ %i.j, %.preheader ]
  tail call void @g_free(ptr noundef %i.m) #10
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.n = phi i32 [ %i.ao, %bb.h ], [ %i.l, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8              ; 9 uses
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  tail call fastcc void @virtio_snd_process_cmdq(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = icmp eq i8 %i.u, 0
  %i.w = select i1 %i.v, ptr @return_tx_buffer, ptr @return_rx_buffer
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 3 uses
  %i.y = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.y(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.25, i32 noundef 56) #10, !inline_history !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not710.us.i.i = icmp eq ptr %i.aa, null
  br i1 %.not710.us.i.i, label %virtio_snd_pcm_flush.exit.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.e, %.lr.ph.us.i.i
  %i.ab = phi ptr [ %i.ac, %.lr.ph.us.i.i ], [ %i.aa, %bb.e ]
  tail call void %i.w(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ab) #10, !callees !11, !inline_history !12
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not7.us.i.i = icmp eq ptr %i.ac, null
  br i1 %.not7.us.i.i, label %virtio_snd_pcm_flush.exit.i, label %.lr.ph.us.i.i, !llvm.loop !13

virtio_snd_pcm_flush.exit.i:                      ; preds = %.lr.ph.us.i.i, %bb.e
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.25, i32 noundef 56) #10
  %i.ad = load i8, ptr %i.t, align 8
  switch i8 %i.ad, label %virtio_snd_pcm_close.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %virtio_snd_pcm_flush.exit.i
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @audio_be_close_out(ptr noundef %i.ag, ptr noundef %i.ai) #10
  store ptr null, ptr %i.ah, align 8
  br label %virtio_snd_pcm_close.exit

bb.g:                                             ; preds = %virtio_snd_pcm_flush.exit.i
  %i.aj = load ptr, ptr %i.r, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 608
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  tail call void @audio_be_close_in(ptr noundef %i.al, ptr noundef %i.an) #10
  store ptr null, ptr %i.am, align 8
  br label %virtio_snd_pcm_close.exit

virtio_snd_pcm_close.exit:                        ; preds = %virtio_snd_pcm_flush.exit.i, %bb.f, %bb.g
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.x) #10
  tail call void @g_free(ptr noundef nonnull %i.q) #10
  %.pre = load i32, ptr %i.k, align 4
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %virtio_snd_pcm_close.exit
  %i.ao = phi i32 [ %i.n, %.lr.ph ], [ %.pre, %virtio_snd_pcm_close.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !14

bb.i:                                             ; preds = %._crit_edge, %trace_virtio_snd_unrealize.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void @g_free(ptr noundef %i.as) #10
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.at) #10
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.av = load ptr, ptr %i.au, align 8
  tail call void @virtio_delete_queue(ptr noundef %i.av) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void @virtio_delete_queue(ptr noundef %i.ax) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @virtio_delete_queue(ptr noundef %i.az) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @virtio_delete_queue(ptr noundef %i.bb) #10
  tail call void @virtio_cleanup(ptr noundef %i.a) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_snd_get_config(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 93, ptr noundef nonnull @__func__.virtio_snd_get_config) #10 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 624 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.g = load i32, ptr %i.f, align 8
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_virtio_snd_get_config.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_VIRTIO_SND_GET_CONFIG_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.i, 0
  br i1 %.not3.i, label %trace_virtio_snd_get_config.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %trace_virtio_snd_get_config.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.66, ptr noundef %0, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g) #10
  br label %trace_virtio_snd_get_config.exit

trace_virtio_snd_get_config.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 16, i1 noundef false) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @get_features(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 1019, ptr noundef nonnull @__func__.get_features) #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, %1                          ; 2 uses
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_virtio_snd_get_features.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_VIRTIO_SND_GET_FEATURES_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_virtio_snd_get_features.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_virtio_snd_get_features.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.67, ptr noundef %0, i64 noundef %i.d) #10
  br label %trace_virtio_snd_get_features.exit

trace_virtio_snd_get_features.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_snd_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 1369, ptr noundef nonnull @__func__.virtio_snd_reset) #10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.preheader.us, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 1377, ptr noundef nonnull @__func__.virtio_snd_reset, ptr noundef nonnull @.str.68) #12
  unreachable

.preheader.us:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  %i.e = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.e(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.25, i32 noundef 56) #10, !inline_history !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 688 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not1923.us = icmp eq ptr %i.h, null
  br i1 %.not1923.us, label %qemu_lockable_auto_unlock.exit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us, %bb.e
  %i.i = phi ptr [ %i.q, %bb.e ], [ %i.h, %.preheader.us ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not20.us = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  br i1 %.not20.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.us
  store ptr %i.m, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.j, align 8
  store ptr %i.o, ptr %i.m, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.i, align 8
  tail call void @g_free(ptr noundef %i.p) #10
  tail call void @g_free(ptr noundef nonnull %i.i) #10
  %i.q = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not19.us = icmp eq ptr %i.q, null
  br i1 %.not19.us, label %qemu_lockable_auto_unlock.exit.us, label %.lr.ph.us, !llvm.loop !16

qemu_lockable_auto_unlock.exit.us:                ; preds = %bb.e, %.preheader.us
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.25, i32 noundef 56) #10
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @audio_be_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_add_vm_change_state_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_snd_vm_state_change(ptr nofree readnone captures(none) %0, i1 noundef zeroext %1, i32 %2) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %trace_virtio_snd_vm_state_running.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.b = load i16, ptr @_TRACE_VIRTIO_SND_VM_STATE_RUNNING_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.b, 0
  br i1 %.not1.i, label %trace_virtio_snd_vm_state_running.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_virtio_snd_vm_state_running.exit, label %trace_virtio_snd_vm_state_running.exit.sink.split

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %trace_virtio_snd_vm_state_running.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.e = load i16, ptr @_TRACE_VIRTIO_SND_VM_STATE_STOPPED_DSTATE, align 2
  %.not1.i2 = icmp eq i16 %i.e, 0
  br i1 %.not1.i2, label %trace_virtio_snd_vm_state_running.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i3 = icmp eq i32 %i.g, 0
  br i1 %.not2.i3, label %trace_virtio_snd_vm_state_running.exit, label %trace_virtio_snd_vm_state_running.exit.sink.split

trace_virtio_snd_vm_state_running.exit.sink.split: ; preds = %bb.g, %bb.d
  %.str.22.sink = phi ptr [ @.str.21, %bb.d ], [ @.str.22, %bb.g ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.22.sink) #10
  br label %trace_virtio_snd_vm_state_running.exit

trace_virtio_snd_vm_state_running.exit:           ; preds = %trace_virtio_snd_vm_state_running.exit.sink.split, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @virtio_init(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #1

declare ptr @virtio_add_queue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_snd_handle_ctrl(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 772, ptr noundef nonnull @__func__.virtio_snd_handle_ctrl) #10 ; 2 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_virtio_snd_handle_ctrl.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_VIRTIO_SND_HANDLE_CTRL_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.c, 0
  br i1 %.not2.i, label %trace_virtio_snd_handle_ctrl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %trace_virtio_snd_handle_ctrl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1) #10
  br label %trace_virtio_snd_handle_ctrl.exit

trace_virtio_snd_handle_ctrl.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = tail call i32 @virtio_queue_ready(ptr noundef %1) #10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %trace_virtio_snd_handle_ctrl.exit
  %i.g = tail call ptr @virtqueue_pop(ptr noundef %1, i64 noundef 56) #10 ; 2 uses
  %.not3233 = icmp eq ptr %i.g, null
  br i1 %.not3233, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 696 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.03134 = phi ptr [ %i.g, %.lr.ph ], [ %i.o, %bb.f ]
  %i.i = tail call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #13 ; 6 uses
  store ptr %.03134, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.j, align 8
end_hunk_0
