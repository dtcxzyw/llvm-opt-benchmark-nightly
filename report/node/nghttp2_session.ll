Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/nghttp2_session?download=true
inline.NumInlined: 531
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_http_on_remote_end_stream
declare i32 @nghttp2_http_on_remote_end_stream(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_update_recv_stream_window_size(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !130  ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !57   ; 3 uses
  %i.e = trunc i64 %2 to i32                      ; 3 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  %i.h = sub nsw i32 2147483647, %i.e
  %i.i = icmp sgt i32 %i.d, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %adjust_recv_window_size.exit, label %bb.b

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106
  %i.l = tail call i32 @nghttp2_session_add_rst_stream_continue(ptr noundef %0, i32 noundef %i.k, i32 noundef 3, i32 noundef 1)
  br label %nghttp2_session_add_window_update.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !57
  %.not18 = icmp eq i32 %3, 0
  br i1 %.not18, label %nghttp2_session_add_window_update.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66
  %i.p = and i32 %i.o, 1
  %.not19 = icmp eq i32 %i.p, 0
  br i1 %.not19, label %bb.d, label %nghttp2_session_add_window_update.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 119
  %i.r = load i8, ptr %i.q, align 1, !tbaa !91
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %nghttp2_session_add_window_update.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.m) #15
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %nghttp2_session_add_window_update.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !106
  %i.w = load i32, ptr %i.a, align 8, !tbaa !155
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.y = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.x, i64 noundef 160) #15 ; 6 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %nghttp2_session_add_window_update.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.y) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.y, i8 noundef zeroext 0, i32 noundef %i.v, i32 noundef %i.w) #15
  %i.aa = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.y) ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.y) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #15
  br label %nghttp2_session_add_window_update.exit.thread

nghttp2_session_add_window_update.exit:           ; preds = %bb.g
  store i32 0, ptr %i.a, align 8, !tbaa !155
  br label %nghttp2_session_add_window_update.exit.thread

nghttp2_session_add_window_update.exit.thread:    ; preds = %bb.h, %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %nghttp2_session_add_window_update.exit, %adjust_recv_window_size.exit
  %.0 = phi i32 [ %i.l, %adjust_recv_window_size.exit ], [ 0, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.aa, %bb.h ], [ -901, %bb.f ]
  ret i32 %.0
}

declare i32 @nghttp2_should_send_window_update(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_add_window_update(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
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
define dso_local i32 @nghttp2_session_update_recv_connection_window_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2636
  %i.c = load i32, ptr %i.b, align 4, !tbaa !56   ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !57   ; 3 uses
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  %i.h = sub nsw i32 2147483647, %i.e
  %i.i = icmp sgt i32 %i.d, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2724 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !43
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2604
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 15, ptr %i.o, align 8, !tbaa !45
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !43
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !43
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.u = load i32, ptr %i.t, align 4, !tbaa !66
  %i.v = and i32 %i.u, 1
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2725
  %i.x = load i8, ptr %i.w, align 1, !tbaa !92
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #15
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %nghttp2_session_terminate_session.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.ac = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ab, i64 noundef 160) #15 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ac, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %i.aa) #15
  %i.ae = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #15
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.h
  store i32 0, ptr %i.a, align 8, !tbaa !156
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.i, %bb.g, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ae, %bb.i ], [ -901, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @nghttp2_session_mem_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.nghttp2_settings_entry, align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %4 = alloca %struct.nghttp2_hd_nv, align 8      ; 16 uses
  %5 = alloca %struct.nghttp2_frame_hd, align 8   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 5357, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0828 = phi ptr [ %1, %bb.a ], [ @static_in, %bb.b ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0828, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2724 ; 13 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !43
  %i.j = and i8 %i.i, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_want_read.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = add i64 %i.o, %i.m
  %.not4.i = icmp eq i64 %i.k, %i.p
  br i1 %.not4.i, label %nghttp2_session_want_read.exit, label %.critedge.preheader

nghttp2_session_want_read.exit:                   ; preds = %bb.e
  %i.q = load i8, ptr %i.h, align 4, !tbaa !43
  %i.r = and i8 %i.q, 12
  %.not1622 = icmp eq i8 %i.r, 0
  br i1 %.not1622, label %.critedge.preheader, label %nghttp2_session_want_read.exit.thread

.critedge.preheader:                              ; preds = %nghttp2_session_want_read.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 100 uses
  %i.t = getelementptr i8, ptr %0, i64 720        ; 51 uses
  %i.u = ptrtoint ptr %i.f to i64                 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2320 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 7 uses
  %i.af = getelementptr i8, ptr %0, i64 2708      ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2628 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2725 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2636 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 525 ; 31 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 44 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2723 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2692
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2726
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2716 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.thread1164
  %.1829 = phi ptr [ %.9837, %.thread1164 ], [ %.0828, %.critedge.preheader ] ; 50 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !72
  switch i32 %i.bz, label %.thread1164 [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.q
    i32 3, label %bb.er
    i32 4, label %bb.hd
    i32 5, label %bb.hd
    i32 6, label %bb.kw
    i32 7, label %bb.la
    i32 8, label %bb.le
    i32 9, label %bb.lw
    i32 10, label %bb.mf
    i32 11, label %bb.mf
    i32 12, label %bb.mq
    i32 13, label %bb.nq
    i32 14, label %bb.ow
    i32 15, label %nghttp2_session_want_read.exit.thread
    i32 18, label %bb.pg
    i32 16, label %bb.po
    i32 17, label %bb.pw
  ]

bb.f:                                             ; preds = %.critedge
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !73  ; 4 uses
  %i.cb = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.ca) ; 3 uses
  %i.cc = sub i64 24, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.45, i64 %i.cc
  %bcmp = call i32 @bcmp(ptr nonnull %i.cd, ptr %.1829, i64 %i.cb)
  %.not1012 = icmp eq i32 %bcmp, 0
  br i1 %.not1012, label %bb.g, label %nghttp2_session_want_read.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ce = sub nuw i64 %i.ca, %i.cb
  store i64 %i.ce, ptr %i.t, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.cb ; 2 uses
  %.not1275 = icmp ugt i64 %i.ca, %2
  br i1 %.not1275, label %.thread1164, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i32 1, ptr %i.s, align 8, !tbaa !72
  br label %.thread1164

bb.i:                                             ; preds = %.critedge
  %i.cg = ptrtoint ptr %.1829 to i64
  %i.ch = sub i64 %i.u, %i.cg
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !258 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cm) ; 2 uses
  %i.co = call ptr @nghttp2_cpymem(ptr noundef %i.cj, ptr noundef %.1829, i64 noundef %i.cn) #15 ; 2 uses
  store ptr %i.co, ptr %i.ap, align 8, !tbaa !258
  %i.cp = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.cn ; 2 uses
  %i.cq = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not961 = icmp eq ptr %i.cq, %i.co
  br i1 %.not961, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %.0828 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  br label %nghttp2_session_want_read.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !84
  %.not962 = icmp eq i8 %i.cw, 4
  br i1 %.not962, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !84
  %i.cz = and i8 %i.cy, 1
  %.not963 = icmp eq i8 %i.cz, 0
  br i1 %.not963, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = call i32 (ptr, i32, ptr, ...) @session_call_error_callback(ptr noundef nonnull %0, i32 noundef -536, ptr noundef nonnull @.str.46) ; 2 uses
  %i.db = icmp sgt i32 %i.da, -901
  br i1 %i.db, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = sext i32 %i.da to i64
  br label %nghttp2_session_want_read.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.dd = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.47) ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -901
  %i.df = sext i32 %i.dd to i64
  %spec.select = select i1 %i.de, i64 %2, i64 %i.df
  br label %nghttp2_session_want_read.exit.thread

bb.p:                                             ; preds = %bb.l
  store i32 2, ptr %i.s, align 8, !tbaa !72
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %.2830 = phi ptr [ %i.cp, %bb.p ], [ %.1829, %.critedge ] ; 3 uses
  %i.dg = ptrtoint ptr %.2830 to i64
  %i.dh = sub i64 %i.u, %i.dg
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !258 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 %i.dm) ; 2 uses
  %i.do = call ptr @nghttp2_cpymem(ptr noundef %i.dj, ptr noundef %.2830, i64 noundef %i.dn) #15 ; 2 uses
  store ptr %i.do, ptr %i.ap, align 8, !tbaa !258
  %i.dp = getelementptr inbounds nuw i8, ptr %.2830, i64 %i.dn ; 29 uses
  %i.dq = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not964 = icmp eq ptr %i.dq, %i.do
  br i1 %.not964, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %.0828 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  br label %nghttp2_session_want_read.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %i.c, ptr noundef %i.du) #15
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !84  ; 16 uses
  store i64 %i.dv, ptr %i.t, align 8, !tbaa !73
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !145
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dz = load i8, ptr %i.h, align 4, !tbaa !43
  %i.ea = and i8 %i.dz, 1
  %.not.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i, label %bb.u, label %nghttp2_session_terminate_session_with_reason.exit1070.thread

bb.u:                                             ; preds = %bb.t
  %i.eb = load i32, ptr %i.ar, align 4, !tbaa !44
  store i32 15, ptr %i.s, align 8, !tbaa !45
  %i.ec = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef 6, ptr noundef nonnull readonly @.str.48, i64 noundef 20, i8 noundef zeroext 1)
  %.fr2239 = freeze i32 %i.ec                     ; 3 uses
  %.not17.i.i = icmp eq i32 %.fr2239, 0
  br i1 %.not17.i.i, label %nghttp2_session_terminate_session_with_reason.exit1070.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit

nghttp2_session_terminate_session_with_reason.exit: ; preds = %bb.u
  %i.ed = icmp sgt i32 %.fr2239, -901
  %i.ee = sext i32 %.fr2239 to i64
  br i1 %i.ed, label %nghttp2_session_terminate_session_with_reason.exit1070.thread, label %nghttp2_session_want_read.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ef = load i8, ptr %i.bd, align 4, !tbaa !84  ; 3 uses
  switch i8 %i.ef, label %bb.cn [
    i8 0, label %bb.w
    i8 1, label %bb.al
    i8 2, label %bb.bg
    i8 3, label %bb.bm
    i8 8, label %bb.bm
    i8 4, label %bb.bp
    i8 5, label %bb.ca
    i8 6, label %bb.cg
    i8 7, label %bb.cj
    i8 9, label %bb.cm
  ]

bb.w:                                             ; preds = %bb.v
  %i.eg = load i8, ptr %i.al, align 1, !tbaa !84
  %i.eh = and i8 %i.eg, 9
  store i8 %i.eh, ptr %i.al, align 1, !tbaa !84
end_hunk_0
begin_hunk_1_@nghttp2_session_mem_recv2:bb.a
  br i1 %.not.i69.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %.val.i.i = load i32, ptr %i.af, align 4, !tbaa !66
  %i.zy = and i32 %.val.i.i, 4
  %.not19.not.i.i = icmp eq i32 %i.zy, 0
  br i1 %.not19.not.i.i, label %bb.kk, label %session_update_stream_priority.exit.thread.i.i

bb.kk:                                            ; preds = %bb.kj
  %i.zz = load i32, ptr %i.bg, align 8, !tbaa !84
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.kl, label %session_update_stream_priority.exit.thread.i.i

bb.kl:                                            ; preds = %bb.kk
  %i.aab = load i8, ptr %i.yg, align 4, !tbaa !50
  %i.aac = and i8 %i.aab, 32
  %.not20.i.i = icmp eq i8 %i.aac, 0
  br i1 %.not20.i.i, label %bb.km, label %session_update_stream_priority.exit.thread.i.i

bb.km:                                            ; preds = %bb.kl
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ye, i64 112
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !158
  %i.aaf = and i32 %i.aae, 65536
  %.not21.i.i = icmp eq i32 %i.aaf, 0
  br i1 %.not21.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aag = getelementptr inbounds nuw i8, ptr %i.ye, i64 121
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !277 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.ye, i64 120 ; 3 uses
  %i.aaj = load i8, ptr %i.aai, align 8, !tbaa !104 ; 2 uses
  %i.aak = icmp eq i8 %i.aaj, %i.aah
  br i1 %i.aak, label %session_update_stream_priority.exit.thread.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ye, i64 118 ; 2 uses
  %i.aam = load i8, ptr %i.aal, align 2, !tbaa !103
  switch i8 %i.aam, label %bb.kp [
    i8 0, label %bb.ks
    i8 1, label %bb.kq
  ]

bb.kp:                                            ; preds = %bb.ko
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 874, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.kq:                                            ; preds = %bb.ko
  %i.aan = and i8 %i.aaj, 127                     ; 2 uses
  %i.aao = icmp samesign ult i8 %i.aan, 8
  br i1 %i.aao, label %session_update_stream_priority.exit.i.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 878, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.ks:                                            ; preds = %bb.ko
  store i8 %i.aah, ptr %i.aai, align 8, !tbaa !104
  br label %session_update_stream_priority.exit.thread.i.i

session_update_stream_priority.exit.i.i:          ; preds = %bb.kq
  %i.aap = zext nneg i8 %i.aan to i64
  %i.aaq = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.aaq, ptr noundef nonnull %i.aar) #15
  store i8 0, ptr %i.aal, align 2, !tbaa !103
  store i8 %i.aah, ptr %i.aai, align 8, !tbaa !104
  %i.aas = call fastcc i32 @session_ob_data_push(ptr noundef nonnull %0, ptr noundef nonnull %i.ye) ; 3 uses
  %.not22.i.i = icmp eq i32 %i.aas, 0
  br i1 %.not22.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kt

bb.kt:                                            ; preds = %session_update_stream_priority.exit.i.i
  %i.aat = icmp sgt i32 %i.aas, -901
  br i1 %i.aat, label %bb.ku, label %.thread1202

bb.ku:                                            ; preds = %bb.kt
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 3660, ptr noundef nonnull @__PRETTY_FUNCTION__.session_end_stream_headers_received) #16
  unreachable

session_update_stream_priority.exit.thread.i.i:   ; preds = %session_update_stream_priority.exit.i.i, %bb.ks, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki
  %i.aau = load i8, ptr %i.al, align 1, !tbaa !84
  %i.aav = and i8 %i.aau, 1
  %i.aaw = icmp eq i8 %i.aav, 0
  br i1 %i.aaw, label %session_after_header_block_received.exit.thread, label %bb.kv

bb.kv:                                            ; preds = %session_update_stream_priority.exit.thread.i.i
  call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.ye, i32 noundef 1) #15
  %i.aax = getelementptr inbounds nuw i8, ptr %i.ye, i64 117
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !107
  %i.aaz = and i8 %i.aay, 3
  %i.aba = icmp eq i8 %i.aaz, 3
  br i1 %i.aba, label %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, label %session_after_header_block_received.exit.thread

nghttp2_session_close_stream_if_shut_rdwr.exit.i.i: ; preds = %bb.kv
  %i.abb = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !106
  %i.abd = call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %i.abc, i32 noundef 0)
  %.fr.i.i = freeze i32 %i.abd                    ; 2 uses
  %i.abe = icmp sgt i32 %.fr.i.i, -901
  br i1 %i.abe, label %session_after_header_block_received.exit.thread, label %.thread1202

.thread1202:                                      ; preds = %bb.kd, %session_handle_invalid_stream2.exit.i, %bb.kg, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %bb.kt
  %.147.i = phi i32 [ %i.aas, %bb.kt ], [ -902, %bb.kd ], [ -902, %bb.kg ], [ %.fr.i.i, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i ], [ %i.zk, %session_handle_invalid_stream2.exit.i ]
  %i.abf = sext i32 %.147.i to i64
  br label %nghttp2_session_want_read.exit.thread

session_after_header_block_received.exit.thread:  ; preds = %bb.kv, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %bb.jh, %bb.jg, %session_update_stream_priority.exit.thread.i.i, %bb.kh, %bb.ke, %bb.kf, %session_handle_invalid_stream2.exit.thread.i, %bb.ji, %bb.ji, %bb.jf
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i64 0, ptr %i.as, align 8, !tbaa !278
  br label %.thread1164

bb.kw:                                            ; preds = %.critedge
  %.val1035 = load i64, ptr %i.t, align 8, !tbaa !73 ; 3 uses
  %i.abg = ptrtoint ptr %.1829 to i64
  %i.abh = sub i64 %i.u, %i.abg                   ; 2 uses
  %i.abi = call noundef i64 @llvm.umin.i64(i64 %i.abh, i64 %.val1035) ; 2 uses
  %i.abj = sub nuw i64 %.val1035, %i.abi
  store i64 %i.abj, ptr %i.t, align 8, !tbaa !73
  %i.abk = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.abi ; 2 uses
  %.not939.not = icmp ugt i64 %.val1035, %i.abh
  br i1 %.not939.not, label %.thread1164, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.abl = load i8, ptr %i.bd, align 4, !tbaa !84
  switch i8 %i.abl, label %bb.kz [
    i8 1, label %bb.ky
    i8 5, label %bb.ky
    i8 9, label %bb.ky
  ]

bb.ky:                                            ; preds = %bb.kx, %bb.kx, %bb.kx
  store i8 1, ptr %i.be, align 4, !tbaa !279
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %bb.ky
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1164

bb.la:                                            ; preds = %.critedge
  %i.abm = call fastcc i32 @session_handle_frame_size_error(ptr noundef nonnull %0) ; 2 uses
  %i.abn = icmp sgt i32 %i.abm, -901
  br i1 %i.abn, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.abo = sext i32 %i.abm to i64
  br label %nghttp2_session_want_read.exit.thread

bb.lc:                                            ; preds = %bb.la
  %i.abp = load i32, ptr %i.s, align 8, !tbaa !72
  %i.abq = icmp eq i32 %i.abp, 15
  br i1 %i.abq, label %nghttp2_session_want_read.exit.thread, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 6469, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.le:                                            ; preds = %.critedge
  %i.abr = ptrtoint ptr %.1829 to i64
  %i.abs = sub i64 %i.u, %i.abr
  %i.abt = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.abu = load ptr, ptr %i.ap, align 8, !tbaa !258 ; 2 uses
  %i.abv = ptrtoint ptr %i.abt to i64
  %i.abw = ptrtoint ptr %i.abu to i64
  %i.abx = sub i64 %i.abv, %i.abw
  %i.aby = call noundef i64 @llvm.umin.i64(i64 %i.abs, i64 %i.abx) ; 4 uses
  %i.abz = call ptr @nghttp2_cpymem(ptr noundef %i.abu, ptr noundef %.1829, i64 noundef %i.aby) #15 ; 2 uses
  store ptr %i.abz, ptr %i.ap, align 8, !tbaa !258
  %i.aca = load i64, ptr %i.t, align 8, !tbaa !73
  %i.acb = sub i64 %i.aca, %i.aby                 ; 2 uses
  store i64 %i.acb, ptr %i.t, align 8, !tbaa !73
  %i.acc = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.aby ; 3 uses
  %i.acd = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not934 = icmp eq ptr %i.acd, %i.abz
  br i1 %.not934, label %bb.lf, label %.thread1164

bb.lf:                                            ; preds = %bb.le
  %.not935 = icmp eq i64 %i.aby, 0
  br i1 %.not935, label %bb.lm, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ace = load ptr, ptr %i.aa, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_settings_entry(ptr noundef nonnull %3, ptr noundef %i.ace) #15
  %i.acf = load i32, ptr %3, align 8, !tbaa !138  ; 2 uses
  switch i32 %i.acf, label %bb.lh [
    i32 1, label %bb.li
    i32 2, label %bb.li
    i32 3, label %bb.li
    i32 4, label %bb.li
    i32 5, label %bb.li
    i32 6, label %bb.li
    i32 8, label %bb.li
    i32 9, label %bb.li
  ]

bb.lh:                                            ; preds = %bb.lg
  %i.acg = load ptr, ptr %i.az, align 8, !tbaa !85
  %i.ach = load i64, ptr %i.ay, align 8, !tbaa !280 ; 2 uses
  %i.aci = add i64 %i.ach, 1
  store i64 %i.aci, ptr %i.ay, align 8, !tbaa !280
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.ach
  %i.ack = load i64, ptr %3, align 8, !tbaa !57
  store i64 %i.ack, ptr %i.acj, align 4, !tbaa !57
  br label %inbound_frame_set_settings_entry.exit

bb.li:                                            ; preds = %bb.lg, %bb.lg, %bb.lg, %bb.lg, %bb.lg, %bb.lg, %bb.lg, %bb.lg
  %i.acl = load i64, ptr %i.ay, align 8, !tbaa !280 ; 4 uses
  %.not.i1061 = icmp eq i64 %i.acl, 0
  %.pre1869 = load ptr, ptr %i.az, align 8, !tbaa !85 ; 3 uses
  br i1 %.not.i1061, label %.loopexit.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.li, %bb.lj
  %.025.i = phi i64 [ %i.acp, %bb.lj ], [ 0, %bb.li ] ; 3 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %.pre1869, i64 %.025.i
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !138
  %i.aco = icmp eq i32 %i.acn, %i.acf
  br i1 %i.aco, label %.loopexit.thread.i, label %bb.lj

bb.lj:                                            ; preds = %.lr.ph.i
  %i.acp = add nuw i64 %.025.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.acp, %i.acl
  br i1 %exitcond.not.i, label %.loopexit.i.a, label %.lr.ph.i, !llvm.loop !252

.loopexit.i.a:                                    ; preds = %bb.lj, %bb.li
  %6 = add i64 %i.acl, 1
  store i64 %6, ptr %i.ay, align 8, !tbaa !280
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %.loopexit.i.a
  %.027.i.lcssa.sink = phi i64 [ %i.acl, %.loopexit.i.a ], [ %.025.i, %.lr.ph.i ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.pre1869, i64 %.027.i.lcssa.sink
  %8 = load i64, ptr %3, align 8, !tbaa !57
  store i64 %8, ptr %7, align 4, !tbaa !57
  %9 = load i32, ptr %3, align 8, !tbaa !138
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %bb.lk, label %inbound_frame_set_settings_entry.exit

bb.lk:                                            ; preds = %.loopexit.thread.i
  %i.acq = load i64, ptr %i.ba, align 8, !tbaa !263
  %i.acr = getelementptr [8 x i8], ptr %.pre1869, i64 %i.acq
  %i.acs = load i32, ptr %i.bb, align 4, !tbaa !139 ; 2 uses
  %i.act = getelementptr i8, ptr %i.acr, i64 -4   ; 2 uses
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !139
  %i.acv = icmp ult i32 %i.acs, %i.acu
  br i1 %i.acv, label %bb.ll, label %inbound_frame_set_settings_entry.exit

bb.ll:                                            ; preds = %bb.lk
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !139
  br label %inbound_frame_set_settings_entry.exit

inbound_frame_set_settings_entry.exit:            ; preds = %bb.lh, %.loopexit.thread.i, %bb.lk, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre1870 = load i64, ptr %i.t, align 8, !tbaa !73
  br label %bb.lm

bb.lm:                                            ; preds = %inbound_frame_set_settings_entry.exit, %bb.lf
  %i.acw = phi i64 [ %.pre1870, %inbound_frame_set_settings_entry.exit ], [ %i.acb, %bb.lf ]
  %.not936 = icmp eq i64 %i.acw, 0
  br i1 %.not936, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.bc) #15
  %i.acx = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 6
  store ptr %i.acy, ptr %i.ao, align 8, !tbaa !86
  br label %.thread1164

bb.lo:                                            ; preds = %bb.lm
  %i.acz = load i64, ptr %i.ba, align 8, !tbaa !263 ; 2 uses
  %.not.i1062 = icmp eq i64 %i.acz, 0
  %.pre.i1063 = load ptr, ptr %i.az, align 8, !tbaa !85 ; 5 uses
  br i1 %.not.i1062, label %.session_process_settings_frame.exit_crit_edge, label %bb.lp

.session_process_settings_frame.exit_crit_edge:   ; preds = %bb.lo
  %.pre1865 = load i64, ptr %i.ay, align 8, !tbaa !280
  br label %session_process_settings_frame.exit

bb.lp:                                            ; preds = %bb.lo
  %i.ada = getelementptr [8 x i8], ptr %.pre.i1063, i64 %i.acz ; 2 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ada, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !57 ; 2 uses
  %i.adc = load <2 x i32>, ptr %i.adb, align 4, !tbaa !57
  %.not33.i = icmp eq i32 %.sroa.4.0.copyload.i, -1
  %.pre1866 = load i64, ptr %i.ay, align 8, !tbaa !280 ; 6 uses
  br i1 %.not33.i, label %session_process_settings_frame.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.lp
  %.not40.i = icmp eq i64 %.pre1866, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i1064

.lr.ph.i1064:                                     ; preds = %.preheader.i, %bb.lq
  %.039.i = phi i64 [ %i.adg, %bb.lq ], [ 0, %.preheader.i ] ; 3 uses
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.039.i
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !138
  %i.adf = icmp eq i32 %i.ade, 1
  br i1 %i.adf, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %.lr.ph.i1064
  %i.adg = add nuw i64 %.039.i, 1                 ; 2 uses
  %exitcond.not.i1065 = icmp eq i64 %i.adg, %.pre1866
  br i1 %exitcond.not.i1065, label %._crit_edge.i, label %.lr.ph.i1064, !llvm.loop !253

._crit_edge.i:                                    ; preds = %.preheader.i, %bb.lq
  call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1, i32 noundef 4485, ptr noundef nonnull @__PRETTY_FUNCTION__.session_process_settings_frame) #16
  unreachable

bb.lr:                                            ; preds = %.lr.ph.i1064
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.039.i ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 4
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !139
  %.not34.i = icmp eq i32 %.sroa.4.0.copyload.i, %i.adj
  br i1 %.not34.i, label %session_process_settings_frame.exit, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.adk = add i64 %.pre1866, 1                   ; 2 uses
  store i64 %i.adk, ptr %i.ay, align 8, !tbaa !280
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.pre1866
  %i.adm = load i64, ptr %i.adh, align 4, !tbaa !57
  store i64 %i.adm, ptr %i.adl, align 4, !tbaa !57
  store <2 x i32> %i.adc, ptr %i.adh, align 4, !tbaa !57
  br label %session_process_settings_frame.exit

session_process_settings_frame.exit:              ; preds = %.session_process_settings_frame.exit_crit_edge, %bb.lp, %bb.lr, %bb.ls
  %11 = phi i64 [ %.pre1865, %.session_process_settings_frame.exit_crit_edge ], [ %.pre1866, %bb.lp ], [ %.pre1866, %bb.lr ], [ %i.adk, %bb.ls ]
  call void @nghttp2_frame_unpack_settings_payload(ptr noundef nonnull %i.c, ptr noundef %.pre.i1063, i64 noundef %11) #15
  store ptr null, ptr %i.az, align 8, !tbaa !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.adn = call i32 @nghttp2_session_on_settings_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.ado = icmp sgt i32 %i.adn, -901
  br i1 %i.ado, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %session_process_settings_frame.exit
  %i.adp = sext i32 %i.adn to i64
  br label %nghttp2_session_want_read.exit.thread

bb.lu:                                            ; preds = %session_process_settings_frame.exit
  %i.adq = load i32, ptr %i.s, align 8, !tbaa !72
  %i.adr = icmp eq i32 %i.adq, 15
  br i1 %i.adr, label %nghttp2_session_want_read.exit.thread, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1164

bb.lw:                                            ; preds = %.critedge
  %.val1034 = load i64, ptr %i.t, align 8, !tbaa !73 ; 2 uses
  %i.ads = ptrtoint ptr %.1829 to i64
  %i.adt = sub i64 %i.u, %i.ads
  %i.adu = call noundef i64 @llvm.umin.i64(i64 %i.adt, i64 %.val1034) ; 4 uses
  %.not930 = icmp eq i64 %i.adu, 0
  br i1 %.not930, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.adv = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.adw = call ptr @nghttp2_cpymem(ptr noundef %i.adv, ptr noundef %.1829, i64 noundef %i.adu) #15
  store ptr %i.adw, ptr %i.v, align 8, !tbaa !281
  %i.adx = load i64, ptr %i.t, align 8, !tbaa !73
  %i.ady = sub i64 %i.adx, %i.adu                 ; 2 uses
  store i64 %i.ady, ptr %i.t, align 8, !tbaa !73
  %i.adz = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.adu
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lw, %bb.lx
  %i.aea = phi i64 [ %i.ady, %bb.lx ], [ %.val1034, %bb.lw ]
  %.6834 = phi ptr [ %i.adz, %bb.lx ], [ %.1829, %bb.lw ] ; 2 uses
  %.not931 = icmp eq i64 %i.aea, 0
  br i1 %.not931, label %bb.mb, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.aeb = load ptr, ptr %i.w, align 8, !tbaa !282
  %i.aec = load ptr, ptr %i.v, align 8, !tbaa !281
  %.not933 = icmp eq ptr %i.aeb, %i.aec
  br i1 %.not933, label %bb.ma, label %.thread1164

bb.ma:                                            ; preds = %bb.lz
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 6523, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.mb:                                            ; preds = %bb.ly
  %i.aed = load ptr, ptr %i.aa, align 8, !tbaa !157
  %i.aee = load ptr, ptr %i.x, align 8, !tbaa !283 ; 2 uses
  %i.aef = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %i.aee to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  call void @nghttp2_frame_unpack_goaway_payload(ptr noundef nonnull %i.c, ptr noundef %i.aed, ptr noundef %i.aee, i64 noundef %i.aei) #15
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #15
  %i.aej = call i32 @nghttp2_session_on_goaway_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.aek = icmp sgt i32 %i.aej, -901
  br i1 %i.aek, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.ael = sext i32 %i.aej to i64
  br label %nghttp2_session_want_read.exit.thread

bb.md:                                            ; preds = %bb.mb
  %i.aem = load i32, ptr %i.s, align 8, !tbaa !72
  %i.aen = icmp eq i32 %i.aem, 15
  br i1 %i.aen, label %nghttp2_session_want_read.exit.thread, label %bb.me

bb.me:                                            ; preds = %bb.md
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1164

bb.mf:                                            ; preds = %.critedge, %.critedge
  %i.aeo = load i64, ptr %i.as, align 8, !tbaa !278
  %i.aep = add i64 %i.aeo, 1                      ; 2 uses
  store i64 %i.aep, ptr %i.as, align 8, !tbaa !278
  %i.aeq = load i64, ptr %i.at, align 8, !tbaa !65
  %i.aer = icmp ugt i64 %i.aep, %i.aeq
  br i1 %i.aer, label %nghttp2_session_want_read.exit.thread, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.aes = ptrtoint ptr %.1829 to i64
  %i.aet = sub i64 %i.u, %i.aes
  %i.aeu = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.aev = load ptr, ptr %i.ap, align 8, !tbaa !258 ; 2 uses
  %i.aew = ptrtoint ptr %i.aeu to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = call noundef i64 @llvm.umin.i64(i64 %i.aet, i64 %i.aey) ; 2 uses
  %i.afa = call ptr @nghttp2_cpymem(ptr noundef %i.aev, ptr noundef %.1829, i64 noundef %i.aez) #15 ; 2 uses
  store ptr %i.afa, ptr %i.ap, align 8, !tbaa !258
  %i.afb = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.aez ; 4 uses
  %i.afc = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not925 = icmp eq ptr %i.afc, %i.afa
  br i1 %.not925, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = ptrtoint ptr %.0828 to i64
  %i.aff = sub i64 %i.afd, %i.afe
  br label %nghttp2_session_want_read.exit.thread

bb.mi:                                            ; preds = %bb.mg
  %i.afg = load ptr, ptr %i.aa, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %5, ptr noundef %i.afg) #15
  %i.afh = load i64, ptr %5, align 8, !tbaa !261  ; 2 uses
  store i64 %i.afh, ptr %i.t, align 8, !tbaa !73
  %i.afi = load i8, ptr %i.au, align 4, !tbaa !284
  %.not926 = icmp eq i8 %i.afi, 9
  br i1 %.not926, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.afj = load i32, ptr %i.av, align 8, !tbaa !285
  %i.afk = load i32, ptr %i.ak, align 8, !tbaa !84
  %.not927 = icmp eq i32 %i.afj, %i.afk
  br i1 %.not927, label %bb.mm, label %bb.mk

bb.mk:                                            ; preds = %bb.mi, %bb.mj
  %i.afl = load i8, ptr %i.h, align 4, !tbaa !43
  %i.afm = and i8 %i.afl, 1
  %.not.i.i1066 = icmp eq i8 %i.afm, 0
  br i1 %.not.i.i1066, label %bb.ml, label %nghttp2_session_terminate_session_with_reason.exit1070.thread

bb.ml:                                            ; preds = %bb.mk
  %i.afn = load i32, ptr %i.ar, align 4, !tbaa !44
  store i32 15, ptr %i.s, align 8, !tbaa !45
  %i.afo = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.afn, i32 noundef 1, ptr noundef nonnull readonly @.str.59, i64 noundef 57, i8 noundef zeroext 1)
  %.fr = freeze i32 %i.afo                        ; 3 uses
  %.not17.i.i1069 = icmp eq i32 %.fr, 0
  br i1 %.not17.i.i1069, label %nghttp2_session_terminate_session_with_reason.exit1070.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit1070

nghttp2_session_terminate_session_with_reason.exit1070: ; preds = %bb.ml
  %i.afp = icmp sgt i32 %.fr, -901
  %i.afq = sext i32 %.fr to i64
  br i1 %i.afp, label %nghttp2_session_terminate_session_with_reason.exit1070.thread, label %nghttp2_session_want_read.exit.thread

nghttp2_session_terminate_session_with_reason.exit1070.thread.sink.split: ; preds = %bb.ml, %bb.u
  %i.afr = load i8, ptr %i.h, align 4, !tbaa !43
  %i.afs = or i8 %i.afr, 1
  store i8 %i.afs, ptr %i.h, align 4, !tbaa !43
  br label %nghttp2_session_terminate_session_with_reason.exit1070.thread

nghttp2_session_terminate_session_with_reason.exit1070.thread: ; preds = %nghttp2_session_terminate_session_with_reason.exit1070.thread.sink.split, %nghttp2_session_terminate_session_with_reason.exit, %bb.t, %bb.mk, %nghttp2_session_terminate_session_with_reason.exit1070
  br label %nghttp2_session_want_read.exit.thread

bb.mm:                                            ; preds = %bb.mj
  %i.aft = load i8, ptr %i.al, align 1, !tbaa !84
  %i.afu = load i8, ptr %i.aw, align 1, !tbaa !260
  %i.afv = and i8 %i.afu, 4
  %i.afw = or i8 %i.afv, %i.aft
  store i8 %i.afw, ptr %i.al, align 1, !tbaa !84
  %i.afx = load i64, ptr %i.c, align 8, !tbaa !84
  %i.afy = add i64 %i.afx, %i.afh
  store i64 %i.afy, ptr %i.c, align 8, !tbaa !84
  %i.afz = load i32, ptr %i.s, align 8, !tbaa !72
  %i.aga = icmp eq i32 %i.afz, 10
  br i1 %i.aga, label %bb.mn, label %bb.mp

bb.mn:                                            ; preds = %bb.mm
  store i32 4, ptr %i.s, align 8, !tbaa !72
  %i.agb = load ptr, ptr %i.ax, align 8, !tbaa !262 ; 2 uses
  %.not.i1071 = icmp eq ptr %i.agb, null
  br i1 %.not.i1071, label %.thread1164, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.agc = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.agd = call i32 %i.agb(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.agc) #15, !inline_history !247
  %.not7.i1072 = icmp eq i32 %i.agd, 0
  br i1 %.not7.i1072, label %.thread1164, label %nghttp2_session_want_read.exit.thread

bb.mp:                                            ; preds = %bb.mm
  store i32 5, ptr %i.s, align 8, !tbaa !72
  br label %.thread1164

bb.mq:                                            ; preds = %.critedge
  %i.age = ptrtoint ptr %.1829 to i64
  %i.agf = sub i64 %i.u, %i.age
  %i.agg = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.agh = load ptr, ptr %i.ap, align 8, !tbaa !258 ; 2 uses
  %i.agi = ptrtoint ptr %i.agg to i64
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = sub i64 %i.agi, %i.agj
  %i.agl = call noundef i64 @llvm.umin.i64(i64 %i.agf, i64 %i.agk) ; 7 uses
  %i.agm = call ptr @nghttp2_cpymem(ptr noundef %i.agh, ptr noundef %.1829, i64 noundef %i.agl) #15 ; 2 uses
  store ptr %i.agm, ptr %i.ap, align 8, !tbaa !258
  %i.agn = getelementptr inbounds nuw i8, ptr %.1829, i64 %i.agl ; 2 uses
  %i.ago = load i64, ptr %i.t, align 8, !tbaa !73
  %i.agp = sub i64 %i.ago, %i.agl
  store i64 %i.agp, ptr %i.t, align 8, !tbaa !73
  %i.agq = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not917 = icmp eq ptr %i.agq, %i.agm
  br i1 %.not917, label %bb.ms, label %bb.mr

end_hunk_1
begin_hunk_2_@nghttp2_session_consume_connection
define dso_local i32 @nghttp2_session_consume_connection(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2628
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2725
  %i.g = load i8, ptr %i.f, align 1, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2636
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = tail call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i8 noundef zeroext %i.g, i32 noundef 0, i64 noundef %1, i32 noundef %i.i) ; 2 uses
  %i.k = icmp sgt i32 %i.j, -901
  %. = select i1 %i.k, i32 0, i32 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -519, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_consume_stream(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %nghttp2_session_get_stream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %nghttp2_session_get_stream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %1) #15 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %nghttp2_session_get_stream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.h = load i8, ptr %i.g, align 4, !tbaa !50
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_get_stream.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8, !tbaa !51
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %nghttp2_session_get_stream.exit.thread, label %nghttp2_session_get_stream.exit

nghttp2_session_get_stream.exit:                  ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 119
  %i.o = load i8, ptr %i.n, align 1, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !130
  %i.t = tail call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i8 noundef zeroext %i.o, i32 noundef %i.q, i64 noundef %2, i32 noundef %i.s) ; 2 uses
  %i.u = icmp sgt i32 %i.t, -901
  %. = select i1 %i.u, i32 0, i32 %i.t
  br label %nghttp2_session_get_stream.exit.thread

nghttp2_session_get_stream.exit.thread:           ; preds = %bb.e, %bb.d, %bb.c, %nghttp2_session_get_stream.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -501, %bb.a ], [ %., %nghttp2_session_get_stream.exit ], [ -519, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -501, 1) i32 @nghttp2_session_set_next_stream_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = icmp ugt i32 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.f = load i8, ptr %i.e, align 1, !tbaa !46
  %.not = icmp eq i8 %i.f, 0
  %i.g = and i32 %1, 1
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr %i.b, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ -501, %bb.d ], [ -501, %bb.a ], [ 0, %bb.f ], [ -501, %bb.b ], [ -501, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @nghttp2_session_get_next_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @nghttp2_session_get_last_proc_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2604
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nghttp2_session_find_stream(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @nghttp2_map_find(ptr noundef %0, i32 noundef %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ @nghttp2_stream_root, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @nghttp2_session_get_root_stream(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @nghttp2_stream_root
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @nghttp2_session_check_server_session(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.b = load i8, ptr %i.a, align 1, !tbaa !46
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @nghttp2_session_change_stream_priority(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @nghttp2_session_create_idle_stream(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @nghttp2_session_get_hd_inflate_dynamic_table_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.b = tail call i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #15
  ret i64 %i.b
}

declare i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @nghttp2_session_get_hd_deflate_dynamic_table_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = tail call i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #15
  ret i64 %i.b
}

declare i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nghttp2_session_set_user_data(ptr nofree noundef writeonly captures(none) initializes((2400, 2408)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store ptr %1, ptr %i.a, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_change_extpri_stream_priority(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.nghttp2_extpri, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = load i64, ptr %2, align 4, !tbaa !57     ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.c = load i8, ptr %i.b, align 1, !tbaa !46
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %session_update_stream_priority.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2722
  %i.e = load i8, ptr %i.d, align 2, !tbaa !60
  %.not13 = icmp eq i8 %i.e, 1
  br i1 %.not13, label %bb.c, label %session_update_stream_priority.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %session_update_stream_priority.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %1) #15 ; 6 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %session_update_stream_priority.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i64 %i.a, 4294967288
  %.not21 = icmp eq i64 %i.h, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %4, align 8, !tbaa !154
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not15 = icmp eq i32 %3, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 116 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !50
  %i.k = or i8 %i.j, 32
  store i8 %i.k, ptr %i.i, align 4, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %4) #15 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !104   ; 2 uses
  %i.o = icmp eq i8 %i.n, %i.l
  br i1 %i.o, label %session_update_stream_priority.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 118 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !103
  switch i8 %i.q, label %bb.k [
    i8 0, label %bb.n
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 874, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = and i8 %i.n, 127                         ; 2 uses
  %i.s = icmp samesign ult i8 %i.r, 8
  br i1 %i.s, label %session_ob_data_remove.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 878, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

session_ob_data_remove.exit.i:                    ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #15
  store i8 0, ptr %i.p, align 2, !tbaa !103
  store i8 %i.l, ptr %i.m, align 8, !tbaa !104
  %i.x = call fastcc i32 @session_ob_data_push(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %session_update_stream_priority.exit

bb.n:                                             ; preds = %bb.j
  store i8 %i.l, ptr %i.m, align 8, !tbaa !104
  br label %session_update_stream_priority.exit

session_update_stream_priority.exit:              ; preds = %bb.n, %session_ob_data_remove.exit.i, %bb.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -519, %bb.a ], [ 0, %bb.b ], [ -501, %bb.d ], [ -501, %bb.c ], [ 0, %bb.n ], [ %i.x, %session_ob_data_remove.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -519, 1) i32 @nghttp2_session_get_extpri_stream_priority(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.b = load i8, ptr %i.a, align 1, !tbaa !46
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2722
  %i.d = load i8, ptr %i.c, align 2, !tbaa !60
  %.not10 = icmp eq i8 %i.d, 1
  br i1 %.not10, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %2) #15 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load i8, ptr %i.g, align 8, !tbaa !104
  tail call void @nghttp2_extpri_from_uint8(ptr noundef %1, i8 noundef zeroext %i.h) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -519, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ -501, %bb.c ], [ -501, %bb.d ]
  ret i32 %.0
}

declare void @nghttp2_extpri_from_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @nghttp2_mem_default() local_unnamed_addr #4

declare ptr @nghttp2_mem_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @nghttp2_ratelim_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @nghttp2_hd_deflate_init2(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @nghttp2_hd_inflate_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @nghttp2_bufs_init3(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @nghttp2_map_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @nghttp2_bufs_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @nghttp2_pq_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @stream_less(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = icmp ult i64 %i.g, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = sub i64 %i.d, %i.b
  %i.l = icmp ult i64 %i.k, 16777216
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

declare void @nghttp2_bufs_reset(ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_headers_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_priority_free(ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_push_promise_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_extension_free(ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_altsvc_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @nghttp2_frame_origin_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @nghttp2_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @nghttp2_stream_attach_item(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @session_ob_data_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 118 ; 2 uses
end_hunk_2
