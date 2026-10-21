Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_resource_manager_inline_notification_init:bb.a
  store ptr @ma_async_notification_poll__on_signal, ptr %1, align 8, !tbaa !149
  store i32 0, ptr %i.d, align 8, !tbaa !150
  br label %ma_async_notification_event_init.exit

ma_async_notification_event_init.exit:            ; preds = %bb.b, %bb.e, %bb.d, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @ma_resource_manager_post_job(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.c = tail call i32 @ma_job_queue_post(ptr noundef nonnull %i.b, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_inline_notification_uninit(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val = load i32, ptr %i.c, align 4, !tbaa !876
  %i.d = and i32 %.val, 2
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_inline_notification_wait_and_uninit(ptr noundef nonnull %0) unnamed_addr #8 {
bb.a:
  tail call fastcc void @ma_resource_manager_inline_notification_wait(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917
  %i.c = getelementptr i8, ptr %i.b, i64 68
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !876
  %i.d = and i32 %.val.i, 2
  %.not.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.not.i, label %bb.b, label %ma_resource_manager_inline_notification_uninit.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = tail call i32 @pthread_cond_destroy(ptr noundef nonnull %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  br label %ma_resource_manager_inline_notification_uninit.exit

ma_resource_manager_inline_notification_uninit.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_read_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !164
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load atomic i32, ptr %i.d seq_cst, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !912
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !912
  %i.i = load atomic i32, ptr %i.d seq_cst, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !906
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !913
  %.off = add i32 %i.n, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !904  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %ma_resource_manager_get_log.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !874
  br label %ma_resource_manager_get_log.exit.i

ma_resource_manager_get_log.exit.i:               ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.s, %bb.i ], [ null, %bb.h ]
  %i.t = tail call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i.i, i32 noundef 1, ptr noundef nonnull @.str.503) ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.j:                                             ; preds = %bb.g
  %.0.i.ph = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i64, ptr %i.u, align 8, !tbaa !911  ; 2 uses
  %i.w = load ptr, ptr %.0.i.ph, align 8, !tbaa !358
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !589  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !359
  %i.ac = icmp ugt i64 %i.v, %i.ab
  br i1 %i.ac, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %ma_data_source_seek_to_pcm_frame.exit

ma_data_source_seek_to_pcm_frame.exit:            ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !590
  %i.af = add i64 %i.ae, %i.v
  %i.ag = tail call i32 %i.y(ptr noundef nonnull %.0.i.ph, i64 noundef %i.af) #55, !inline_history !591 ; 2 uses
  switch i32 %i.ag, label %ma_data_source_seek_to_pcm_frame.exit.thread [
    i32 0, label %bb.n
    i32 -25, label %bb.l
  ]

bb.l:                                             ; preds = %ma_data_source_seek_to_pcm_frame.exit
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !906
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load atomic i32, ptr %i.ai seq_cst, align 8
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.m, label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.g, align 8, !tbaa !912
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.n:                                             ; preds = %ma_data_source_seek_to_pcm_frame.exit, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load atomic i32, ptr %i.an seq_cst, align 8
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load atomic i32, ptr %i.ar seq_cst, align 8
  %i.at = icmp eq i32 %i.as, -19                  ; 2 uses
  %i.au = call i32 @ma_resource_manager_data_buffer_get_available_frames(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.av = icmp eq i32 %i.au, 0
  %or.cond3 = select i1 %i.av, i1 %i.at, i1 false
  br i1 %or.cond3, label %bb.p, label %.thread66

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !164 ; 3 uses
  %i.ax = icmp ugt i64 %2, %i.aw
  br i1 %i.ax, label %bb.q, label %.thread66

.thread66:                                        ; preds = %bb.o, %bb.p
  %.0.shrunk.ph = phi i1 [ false, %bb.p ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.ay = xor i1 %.0.shrunk.ph, true
  br label %.thread

bb.q:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br i1 %i.az, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.n, %.thread66, %bb.q
  %.164 = phi i1 [ %i.ay, %.thread66 ], [ false, %bb.q ], [ true, %bb.n ]
  %.13763 = phi i64 [ %2, %.thread66 ], [ %i.aw, %bb.q ], [ %2, %bb.n ]
  %i.ba = load atomic i32, ptr %i.d seq_cst, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %ma_resource_manager_data_buffer_get_connector.exit55, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !913
  switch i32 %i.be, label %bb.v [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %ma_resource_manager_data_buffer_get_connector.exit55

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %ma_resource_manager_data_buffer_get_connector.exit55

bb.u:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %ma_resource_manager_data_buffer_get_connector.exit55

bb.v:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !904 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %ma_resource_manager_get_log.exit.i53, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !874
  br label %ma_resource_manager_get_log.exit.i53

ma_resource_manager_get_log.exit.i53:             ; preds = %bb.w, %bb.v
  %.0.i.i54 = phi ptr [ %i.bm, %bb.w ], [ null, %bb.v ]
  %i.bn = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i.i54, i32 noundef 1, ptr noundef nonnull @.str.503) ; 0 uses
  br label %ma_resource_manager_data_buffer_get_connector.exit55

ma_resource_manager_data_buffer_get_connector.exit55: ; preds = %.thread, %bb.s, %bb.t, %bb.u, %ma_resource_manager_get_log.exit.i53
  %.0.i52 = phi ptr [ %i.bh, %bb.u ], [ null, %ma_resource_manager_get_log.exit.i53 ], [ %i.bf, %bb.s ], [ %i.bg, %bb.t ], [ null, %.thread ]
  %4 = call i32 @ma_data_source_read_pcm_frames(ptr noundef %.0.i52, ptr noundef %1, i64 noundef %.13763, ptr noundef nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %ma_resource_manager_data_buffer_get_connector.exit55, %bb.q
  %.165 = phi i1 [ %.164, %ma_resource_manager_data_buffer_get_connector.exit55 ], [ false, %bb.q ]
  %.3 = phi i32 [ %4, %ma_resource_manager_data_buffer_get_connector.exit55 ], [ -17, %bb.q ] ; 2 uses
  %i.bo = icmp eq i32 %.3, -17
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !906
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load atomic i32, ptr %i.bq seq_cst, align 8
  %i.bs = icmp eq i32 %i.br, -19
  %spec.select49 = select i1 %i.bs, i32 -19, i32 -17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4 = phi i32 [ %.3, %bb.x ], [ %spec.select49, %bb.y ]
  %spec.select50 = select i1 %.165, i32 %.4, i32 -19 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 %.pre, ptr %3, align 8, !tbaa !164
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bt = icmp eq i32 %spec.select50, 0
  %i.bu = icmp eq i64 %.pre, 0
  %or.cond = select i1 %i.bt, i1 %i.bu, i1 false
  %spec.store.select = select i1 %or.cond, i32 -17, i32 %spec.select50
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

ma_data_source_seek_to_pcm_frame.exit.thread:     ; preds = %ma_resource_manager_get_log.exit.i, %bb.f, %bb.k, %bb.j, %bb.l, %ma_data_source_seek_to_pcm_frame.exit, %bb.d, %bb.c, %bb.ab, %bb.m
  %.035 = phi i32 [ %spec.store.select, %bb.ab ], [ -2, %bb.c ], [ -19, %bb.m ], [ -19, %bb.d ], [ %i.ag, %ma_data_source_seek_to_pcm_frame.exit ], [ -25, %bb.l ], [ -3, %bb.k ], [ -29, %bb.j ], [ -2, %bb.f ], [ -2, %ma_resource_manager_get_log.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_get_available_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %ma_decoder_get_available_frames.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %ma_decoder_get_available_frames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !906
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load atomic i32, ptr %i.i seq_cst, align 8
  %i.k = icmp eq i32 %i.j, 0
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !906  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic i32, ptr %i.m seq_cst, align 8
  %i.o = icmp eq i32 %i.n, -19
  %. = select i1 %i.o, i32 -19, i32 -3
  br label %ma_decoder_get_available_frames.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load atomic i32, ptr %i.p seq_cst, align 8
  switch i32 %i.q, label %ma_decoder_get_available_frames.exit [
    i32 1, label %bb.f
    i32 2, label %ma_audio_buffer_get_available_frames.exit
    i32 3, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !803  ; 6 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %ma_decoder_get_available_frames.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i64 0, ptr %i.d, align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !359  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !590
  %i.x = sub i64 %i.u, %i.w
  store i64 %i.x, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !358
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !595 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i, label %ma_data_source_get_length_in_pcm_frames.exit.i.i

ma_data_source_get_length_in_pcm_frames.exit.i.i: ; preds = %bb.h
  %i.ac = call i32 %i.aa(ptr noundef nonnull %i.s, ptr noundef nonnull %i.d) #55, !inline_history !2658 ; 2 uses
  %.not20.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not20.i.i, label %bb.i, label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i

bb.i:                                             ; preds = %ma_data_source_get_length_in_pcm_frames.exit.i.i
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !803 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %ma_data_source_get_data_format.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i.i
  %i.ae = phi ptr [ %i.s, %.thread.i.i ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !358
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !585 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %ma_data_source_get_data_format.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = call i32 %i.ah(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !2659 ; 2 uses
  %.not36.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not36.i.i.i, label %bb.l, label %ma_data_source_get_data_format.exit.thread.i.i

ma_data_source_get_data_format.exit.thread.i.i:   ; preds = %bb.k, %bb.j, %bb.i
  %.0.i22.ph.i.i = phi i32 [ -29, %bb.j ], [ -2, %bb.i ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_decoder_get_length_in_pcm_frames.exit.thread20.i

bb.l:                                             ; preds = %bb.k
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.am = load i32, ptr %i.al, align 8, !tbaa !812 ; 2 uses
  %i.an = icmp eq i32 %i.ak, %i.am
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i64 @ma_calculate_frame_count_after_resampling(i32 noundef %i.am, i32 noundef %i.ak, i64 noundef %i.ao)
  br label %bb.n

ma_decoder_get_length_in_pcm_frames.exit.thread20.i: ; preds = %ma_data_source_get_data_format.exit.thread.i.i, %ma_data_source_get_length_in_pcm_frames.exit.i.i, %bb.h
  %.0.i.ph.i = phi i32 [ %.0.i22.ph.i.i, %ma_data_source_get_data_format.exit.thread.i.i ], [ %i.ac, %ma_data_source_get_length_in_pcm_frames.exit.i.i ], [ -29, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_decoder_get_available_frames.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.016.i = phi i64 [ %i.ao, %bb.l ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !821
  %storemerge.i = call i64 @llvm.usub.sat.i64(i64 %.016.i, i64 %i.ar)
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

ma_audio_buffer_get_available_frames.exit:        ; preds = %bb.e
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = load i64, ptr %i.as, align 8, !tbaa !602
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load i64, ptr %i.au, align 8, !tbaa !601
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.at, i64 %i.av)
  store i64 %storemerge.i.i, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

bb.o:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !627
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !906
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !119
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.ax)
  store i64 %storemerge, ptr %1, align 8, !tbaa !164
  br label %ma_decoder_get_available_frames.exit

ma_decoder_get_available_frames.exit:             ; preds = %bb.n, %ma_decoder_get_length_in_pcm_frames.exit.thread20.i, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.o, %ma_audio_buffer_get_available_frames.exit
  %.0 = phi i32 [ 0, %bb.o ], [ -2, %bb.a ], [ %., %bb.d ], [ -2, %bb.b ], [ 0, %ma_audio_buffer_get_available_frames.exit ], [ -2, %bb.e ], [ 0, %bb.n ], [ %.0.i.ph.i, %ma_decoder_get_length_in_pcm_frames.exit.thread20.i ], [ -203, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_buffer_seek_to_pcm_frame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.d, align 8, !tbaa !911
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.e, align 8, !tbaa !912
  br label %ma_data_source_seek_to_pcm_frame.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i32, ptr %i.a seq_cst, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_data_source_seek_to_pcm_frame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
