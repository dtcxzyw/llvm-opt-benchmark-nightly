Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_session?download=true
inline.NumInlined: 534
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_session_on_data_received:bb.a
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %session_update_glitch_ratelim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.f = load i8, ptr %i.e, align 4, !tbaa !48
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %bb.c, label %session_update_glitch_ratelim.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 8, !tbaa !49
  switch i32 %i.h, label %bb.d [
    i32 5, label %session_update_glitch_ratelim.exit
    i32 3, label %session_update_glitch_ratelim.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 2724
  %.val = load i32, ptr %i.i, align 4, !tbaa !64
  %i.j = and i32 %.val, 4
  %.not30.not = icmp eq i32 %i.j, 0
  br i1 %.not30.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83
  %i.m = and i8 %i.l, 1
  %.not31 = icmp eq i8 %i.m, 0
  br i1 %.not31, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @nghttp2_http_on_remote_end_stream(ptr noundef nonnull %i.c) #15
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.p = load i32, ptr %i.o, align 8, !tbaa !104
  %i.q = tail call i32 @nghttp2_session_add_rst_stream_continue(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef 1, i32 noundef 1) ; 3 uses
  %.not.i38 = icmp eq i32 %i.q, 0
  br i1 %.not.i38, label %bb.h, label %session_handle_invalid_stream2.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !130  ; 2 uses
  %.not16.i = icmp eq ptr %i.s, null
  br i1 %.not16.i, label %session_handle_invalid_stream2.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.v = tail call i32 %i.s(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -532, ptr noundef %i.u) #15, !inline_history !240
  %.not17.i = icmp eq i32 %i.v, 0
  br i1 %.not17.i, label %session_handle_invalid_stream2.exit.thread, label %session_update_glitch_ratelim.exit

session_handle_invalid_stream2.exit:              ; preds = %bb.g
  %i.w = icmp sgt i32 %i.q, -901
  br i1 %i.w, label %session_handle_invalid_stream2.exit.thread, label %session_update_glitch_ratelim.exit

session_handle_invalid_stream2.exit.thread:       ; preds = %bb.i, %bb.h, %session_handle_invalid_stream2.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 4 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !41
  %i.z = and i8 %i.y, 1
  %.not.i40 = icmp eq i8 %i.z, 0
  br i1 %.not.i40, label %bb.j, label %bb.n

bb.j:                                             ; preds = %session_handle_invalid_stream2.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 2 uses
  %i.ab = tail call i64 @nghttp2_time_now_sec() #15
  tail call void @nghttp2_ratelim_update(ptr noundef nonnull %i.aa, i64 noundef %i.ab) #15
  %i.ac = tail call i32 @nghttp2_ratelim_drain(ptr noundef nonnull %i.aa, i64 noundef 1) #15
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %i.x, align 4, !tbaa !41
  %i.af = and i8 %i.ae, 1
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.ai, align 8, !tbaa !43
  %i.aj = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 11, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not17.i.i.i, label %bb.m, label %session_update_glitch_ratelim.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %i.x, align 4, !tbaa !41
  %i.al = or i8 %i.ak, 1
  store i8 %i.al, ptr %i.x, align 4, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %session_handle_invalid_stream2.exit.thread, %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.an = load i32, ptr %i.am, align 8, !tbaa !71
  %i.ao = icmp eq i32 %i.an, 15
  br i1 %i.ao, label %session_update_glitch_ratelim.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.c, i8 noundef zeroext 1) #15
  br label %session_update_glitch_ratelim.exit

bb.p:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134 ; 2 uses
  %.not.i42 = icmp eq ptr %i.aq, null
  br i1 %.not.i42, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = tail call i32 %i.aq(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.as) #15, !inline_history !1
  %.not7.i = icmp eq i32 %i.at, 0
  br i1 %.not7.i, label %bb.r, label %session_update_glitch_ratelim.exit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.av = load i8, ptr %i.au, align 1, !tbaa !83
  %i.aw = and i8 %i.av, 1
  %.not34 = icmp eq i8 %i.aw, 0
  br i1 %.not34, label %nghttp2_session_close_stream_if_shut_rdwr.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.c, i8 noundef zeroext 1) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 117
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !105
  %i.az = and i8 %i.ay, 3
  %i.ba = icmp eq i8 %i.az, 3
  br i1 %i.ba, label %nghttp2_session_close_stream_if_shut_rdwr.exit, label %nghttp2_session_close_stream_if_shut_rdwr.exit.thread

nghttp2_session_close_stream_if_shut_rdwr.exit:   ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !104
  %i.bd = tail call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef 0) ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -901
  br i1 %i.be, label %nghttp2_session_close_stream_if_shut_rdwr.exit.thread, label %session_update_glitch_ratelim.exit

nghttp2_session_close_stream_if_shut_rdwr.exit.thread: ; preds = %bb.s, %nghttp2_session_close_stream_if_shut_rdwr.exit, %bb.r
  br label %session_update_glitch_ratelim.exit

session_update_glitch_ratelim.exit:               ; preds = %bb.c, %bb.c, %bb.q, %bb.i, %bb.b, %bb.a, %bb.l, %nghttp2_session_close_stream_if_shut_rdwr.exit, %bb.n, %session_handle_invalid_stream2.exit, %nghttp2_session_close_stream_if_shut_rdwr.exit.thread, %bb.o
  %.0 = phi i32 [ 0, %nghttp2_session_close_stream_if_shut_rdwr.exit.thread ], [ %i.aj, %bb.l ], [ %i.q, %session_handle_invalid_stream2.exit ], [ 0, %bb.c ], [ 0, %bb.o ], [ 0, %bb.n ], [ -902, %bb.i ], [ 0, %bb.c ], [ %i.bd, %nghttp2_session_close_stream_if_shut_rdwr.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ -902, %bb.q ]
  ret i32 %.0
}

declare i32 @nghttp2_http_on_remote_end_stream(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @session_update_glitch_ratelim(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 2 uses
  %i.e = tail call i64 @nghttp2_time_now_sec() #15
  tail call void @nghttp2_ratelim_update(ptr noundef nonnull %i.d, i64 noundef %i.e) #15
  %i.f = tail call i32 @nghttp2_ratelim_drain(ptr noundef nonnull %i.d, i64 noundef 1) #15
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %nghttp2_session_terminate_session.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.a, align 4, !tbaa !41
  %i.i = and i8 %i.h, 1
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.l, align 8, !tbaa !43
  %i.m = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef 11, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i.i, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.a, align 4, !tbaa !41
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.a, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.c ], [ %i.m, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_session_update_recv_stream_window_size(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %i.e = trunc i64 %2 to i32                      ; 2 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !41
  %i.j = and i8 %i.i, 1
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.m, align 8, !tbaa !43
  %i.n = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.h, align 4, !tbaa !41
  %i.p = or i8 %i.o, 1
  store i8 %i.p, ptr %i.h, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.q = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !55
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %nghttp2_session_terminate_session.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %i.s, 1
  %.not18 = icmp eq i32 %i.t, 0
  br i1 %.not18, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 119
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %nghttp2_session_terminate_session.exit

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.q) #15
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !104
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.ac = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ab, i64 noundef 160) #15 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %nghttp2_session_terminate_session.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ac, i8 noundef zeroext 0, i32 noundef %i.z, i32 noundef %i.aa) #15
  %i.ae = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #15
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.i
  store i32 0, ptr %i.a, align 8, !tbaa !153
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.j, %bb.h, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %bb.g, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.n, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ae, %bb.j ], [ -901, %bb.h ]
  ret i32 %.0
}

declare i32 @nghttp2_should_send_window_update(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_session_add_window_update(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.b = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.a, i64 noundef 160) #15 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.b) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #15
  %i.d = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.b) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -901, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_session_update_recv_connection_window_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2652
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54   ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %i.e = trunc i64 %1 to i32                      ; 2 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !41
  %i.j = and i8 %i.i, 1
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.m, align 8, !tbaa !43
  %i.n = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.h, align 4, !tbaa !41
  %i.p = or i8 %i.o, 1
  store i8 %i.p, ptr %i.h, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.q = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = and i32 %i.s, 1
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2741
  %i.v = load i8, ptr %i.u, align 1, !tbaa !91
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.q) #15
  %.not16 = icmp eq i32 %i.x, 0
  br i1 %.not16, label %nghttp2_session_terminate_session.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.a, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.aa = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.z, i64 noundef 160) #15 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.aa) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.aa, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %i.y) #15
  %i.ac = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.aa) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #15
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.h
  store i32 0, ptr %i.a, align 8, !tbaa !154
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.i, %bb.g, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.n, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ac, %bb.i ], [ -901, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_mem_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.nghttp2_settings_entry, align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %4 = alloca %struct.nghttp2_hd_nv, align 8      ; 17 uses
  %5 = alloca %struct.nghttp2_frame_hd, align 8   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 5440, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0853 = phi ptr [ %1, %bb.a ], [ @static_in, %bb.b ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0853, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 17 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !41
  %i.j = and i8 %i.i, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_want_read.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.m = load i64, ptr %i.l, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.o = load i64, ptr %i.n, align 8, !tbaa !95
  %i.p = add i64 %i.o, %i.m
  %.not4.i = icmp eq i64 %i.k, %i.p
  br i1 %.not4.i, label %nghttp2_session_want_read.exit, label %.critedge.preheader

nghttp2_session_want_read.exit:                   ; preds = %bb.e
  %i.q = load i8, ptr %i.h, align 4, !tbaa !41
  %i.r = and i8 %i.q, 12
  %.not1687 = icmp eq i8 %i.r, 0
  br i1 %.not1687, label %.critedge.preheader, label %nghttp2_session_want_read.exit.thread

.critedge.preheader:                              ; preds = %nghttp2_session_want_read.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 115 uses
  %i.t = getelementptr i8, ptr %0, i64 736        ; 51 uses
  %i.u = ptrtoint ptr %i.f to i64                 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 7 uses
  %i.af = getelementptr i8, ptr %0, i64 2724      ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2644 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2741 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2652 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 541 ; 31 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 44 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2620 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1964
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2739 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2742
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2732 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.thread1189
  %.1854 = phi ptr [ %.9862, %.thread1189 ], [ %.0853, %.critedge.preheader ] ; 50 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !71
  switch i32 %i.bz, label %.thread1189 [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.q
    i32 3, label %bb.ep
    i32 4, label %bb.ha
    i32 5, label %bb.ha
    i32 6, label %bb.lg
    i32 7, label %bb.lk
    i32 8, label %bb.lo
end_hunk_0
