Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_session?download=true
inline.NumInlined: 534
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_session_update_recv_stream_window_size:bb.a

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !41
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.o, align 8, !tbaa !43
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !41
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !55
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %nghttp2_session_terminate_session.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64
  %i.v = and i32 %i.u, 1
  %.not18 = icmp eq i32 %i.v, 0
  br i1 %.not18, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 119
  %i.x = load i8, ptr %i.w, align 1, !tbaa !90
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %nghttp2_session_terminate_session.exit

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #15
  %.not19 = icmp eq i32 %i.z, 0
  br i1 %.not19, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !104
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.ae = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ad, i64 noundef 160) #15 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %nghttp2_session_terminate_session.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ae) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ae, i8 noundef zeroext 0, i32 noundef %i.ab, i32 noundef %i.ac) #15
  %i.ag = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ae) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #15
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.i
  store i32 0, ptr %i.a, align 8, !tbaa !153
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.j, %bb.h, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %bb.g, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ag, %bb.j ], [ -901, %bb.h ]
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
  %i.d = load i32, ptr %i.a, align 4, !tbaa !55   ; 3 uses
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  %i.h = sub nsw i32 2147483647, %i.e
  %i.i = icmp sgt i32 %i.d, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !41
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.o, align 8, !tbaa !43
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !41
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64
  %i.v = and i32 %i.u, 1
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2741
  %i.x = load i8, ptr %i.w, align 1, !tbaa !91
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #15
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %nghttp2_session_terminate_session.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
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
  store i32 0, ptr %i.a, align 8, !tbaa !154
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.i, %bb.g, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ae, %bb.i ], [ -901, %bb.g ]
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
  %3 = alloca %struct.nghttp2_settings_entry, align 8 ; 8 uses
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
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
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
    i32 9, label %bb.mg
    i32 10, label %bb.mp
    i32 11, label %bb.mp
    i32 12, label %bb.nb
    i32 13, label %bb.oc
    i32 14, label %bb.po
    i32 15, label %nghttp2_session_want_read.exit.thread
    i32 18, label %bb.py
    i32 16, label %bb.qj
    i32 17, label %bb.qs
  ]

bb.f:                                             ; preds = %.critedge
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !72  ; 4 uses
  %i.cb = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.ca) ; 3 uses
  %i.cc = sub i64 24, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.45, i64 %i.cc
  %bcmp = call i32 @bcmp(ptr nonnull %i.cd, ptr %.1854, i64 %i.cb)
  %.not1035 = icmp eq i32 %bcmp, 0
  br i1 %.not1035, label %bb.g, label %nghttp2_session_want_read.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ce = sub nuw i64 %i.ca, %i.cb
  store i64 %i.ce, ptr %i.t, align 8, !tbaa !72
  %i.cf = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.cb ; 2 uses
  %.not1331 = icmp ugt i64 %i.ca, %2
  br i1 %.not1331, label %.thread1189, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i32 1, ptr %i.s, align 8, !tbaa !71
  br label %.thread1189

bb.i:                                             ; preds = %.critedge
  %i.cg = ptrtoint ptr %.1854 to i64
  %i.ch = sub i64 %i.u, %i.cg
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !253 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cm) ; 2 uses
  %i.co = call ptr @nghttp2_cpymem(ptr noundef %i.cj, ptr noundef %.1854, i64 noundef %i.cn) #15 ; 2 uses
  store ptr %i.co, ptr %i.ap, align 8, !tbaa !253
  %i.cp = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.cn ; 2 uses
  %i.cq = load ptr, ptr %i.ao, align 8, !tbaa !85
  %.not985 = icmp eq ptr %i.cq, %i.co
  br i1 %.not985, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %.0853 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  br label %nghttp2_session_want_read.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !155 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !83
  %.not986 = icmp eq i8 %i.cw, 4
  br i1 %.not986, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !83
  %i.cz = and i8 %i.cy, 1
  %.not987 = icmp eq i8 %i.cz, 0
  br i1 %.not987, label %bb.p, label %bb.m

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
  store i32 2, ptr %i.s, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %.2855 = phi ptr [ %i.cp, %bb.p ], [ %.1854, %.critedge ] ; 3 uses
  %i.dg = ptrtoint ptr %.2855 to i64
  %i.dh = sub i64 %i.u, %i.dg
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !253 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 %i.dm) ; 2 uses
  %i.do = call ptr @nghttp2_cpymem(ptr noundef %i.dj, ptr noundef %.2855, i64 noundef %i.dn) #15 ; 2 uses
  store ptr %i.do, ptr %i.ap, align 8, !tbaa !253
  %i.dp = getelementptr inbounds nuw i8, ptr %.2855, i64 %i.dn ; 28 uses
  %i.dq = load ptr, ptr %i.ao, align 8, !tbaa !85
  %.not988 = icmp eq ptr %i.dq, %i.do
  br i1 %.not988, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %.0853 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  br label %nghttp2_session_want_read.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !155
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %i.c, ptr noundef %i.du) #15
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !83  ; 16 uses
  store i64 %i.dv, ptr %i.t, align 8, !tbaa !72
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !143
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dz = load i8, ptr %i.h, align 4, !tbaa !41
  %i.ea = and i8 %i.dz, 1
  %.not.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i, label %bb.u, label %nghttp2_session_terminate_session_with_reason.exit1108.thread

bb.u:                                             ; preds = %bb.t
  %i.eb = load i32, ptr %i.ar, align 4, !tbaa !42
  store i32 15, ptr %i.s, align 8, !tbaa !43
  %i.ec = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef 6, ptr noundef nonnull readonly @.str.48, i64 noundef 20, i8 noundef zeroext 1)
  %.fr2320 = freeze i32 %i.ec                     ; 3 uses
  %.not17.i.i = icmp eq i32 %.fr2320, 0
  br i1 %.not17.i.i, label %nghttp2_session_terminate_session_with_reason.exit1108.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit

nghttp2_session_terminate_session_with_reason.exit: ; preds = %bb.u
  %i.ed = icmp sgt i32 %.fr2320, -901
  %i.ee = sext i32 %.fr2320 to i64
  br i1 %i.ed, label %nghttp2_session_terminate_session_with_reason.exit1108.thread, label %nghttp2_session_want_read.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ef = load i8, ptr %i.bd, align 4, !tbaa !83  ; 3 uses
  switch i8 %i.ef, label %bb.ck [
    i8 0, label %bb.w
    i8 1, label %bb.ai
    i8 2, label %bb.bd
    i8 3, label %bb.bj
    i8 8, label %bb.bj
    i8 4, label %bb.bm
    i8 5, label %bb.bx
    i8 6, label %bb.cd
    i8 7, label %bb.cg
    i8 9, label %bb.cj
  ]

bb.w:                                             ; preds = %bb.v
  %i.eg = load i8, ptr %i.al, align 1, !tbaa !83
  %i.eh = and i8 %i.eg, 9
  store i8 %i.eh, ptr %i.al, align 1, !tbaa !83
end_hunk_0
begin_hunk_1_@nghttp2_session_mem_recv2:bb.a
  %i.abr = load i32, ptr %i.bg, align 8, !tbaa !83
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.kv, label %session_update_stream_priority.exit.thread.i.i

bb.kv:                                            ; preds = %bb.ku
  %i.abt = load i8, ptr %i.zl, align 4, !tbaa !48
  %i.abu = and i8 %i.abt, 32
  %.not20.i.i = icmp eq i8 %i.abu, 0
  br i1 %.not20.i.i, label %bb.kw, label %session_update_stream_priority.exit.thread.i.i

bb.kw:                                            ; preds = %bb.kv
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zj, i64 112
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !156
  %i.abx = and i32 %i.abw, 65536
  %.not21.i.i = icmp eq i32 %i.abx, 0
  br i1 %.not21.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zj, i64 121
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !272 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zj, i64 120 ; 3 uses
  %i.acb = load i8, ptr %i.aca, align 8, !tbaa !103 ; 2 uses
  %i.acc = icmp eq i8 %i.acb, %i.abz
  br i1 %i.acc, label %session_update_stream_priority.exit.thread.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.acd = getelementptr inbounds nuw i8, ptr %i.zj, i64 118 ; 2 uses
  %i.ace = load i8, ptr %i.acd, align 2, !tbaa !102
  switch i8 %i.ace, label %bb.kz [
    i8 0, label %bb.lc
    i8 1, label %bb.la
  ]

bb.kz:                                            ; preds = %bb.ky
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 876, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.la:                                            ; preds = %bb.ky
  %i.acf = and i8 %i.acb, 127                     ; 2 uses
  %i.acg = icmp samesign ult i8 %i.acf, 8
  br i1 %i.acg, label %session_update_stream_priority.exit.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.lc:                                            ; preds = %bb.ky
  store i8 %i.abz, ptr %i.aca, align 8, !tbaa !103
  br label %session_update_stream_priority.exit.thread.i.i

session_update_stream_priority.exit.i.i:          ; preds = %bb.la
  %i.ach = zext nneg i8 %i.acf to i64
  %i.aci = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.aci, ptr noundef nonnull %i.acj) #15
  store i8 0, ptr %i.acd, align 2, !tbaa !102
  store i8 %i.abz, ptr %i.aca, align 8, !tbaa !103
  %i.ack = call fastcc i32 @session_ob_data_push(ptr noundef nonnull %0, ptr noundef nonnull %i.zj) ; 3 uses
  %.not22.i.i = icmp eq i32 %i.ack, 0
  br i1 %.not22.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.ld

bb.ld:                                            ; preds = %session_update_stream_priority.exit.i.i
  %i.acl = icmp sgt i32 %i.ack, -901
  br i1 %i.acl, label %bb.le, label %session_after_header_block_received.exit.thread1237

bb.le:                                            ; preds = %bb.ld
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 3717, ptr noundef nonnull @__PRETTY_FUNCTION__.session_end_stream_headers_received) #16
  unreachable

session_update_stream_priority.exit.thread.i.i:   ; preds = %session_update_stream_priority.exit.i.i, %bb.lc, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks
  %i.acm = load i8, ptr %i.al, align 1, !tbaa !83
  %i.acn = and i8 %i.acm, 1
  %i.aco = icmp eq i8 %i.acn, 0
  br i1 %i.aco, label %session_after_header_block_received.exit.thread, label %bb.lf

bb.lf:                                            ; preds = %session_update_stream_priority.exit.thread.i.i
  call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.zj, i8 noundef zeroext 1) #15
  %i.acp = getelementptr inbounds nuw i8, ptr %i.zj, i64 117
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !105
  %i.acr = and i8 %i.acq, 3
  %i.acs = icmp eq i8 %i.acr, 3
  br i1 %i.acs, label %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, label %session_after_header_block_received.exit.thread

nghttp2_session_close_stream_if_shut_rdwr.exit.i.i: ; preds = %bb.lf
  %i.act = getelementptr inbounds nuw i8, ptr %i.zj, i64 80
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !104
  %i.acv = call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %i.acu, i32 noundef 0)
  %.fr.i.i = freeze i32 %i.acv                    ; 2 uses
  %i.acw = icmp sgt i32 %.fr.i.i, -901
  br i1 %i.acw, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1237

session_after_header_block_received.exit:         ; preds = %bb.kk
  %i.acx = icmp sgt i32 %i.abc, -901
  br i1 %i.acx, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1237

session_after_header_block_received.exit.thread1237: ; preds = %bb.kq, %bb.kh, %session_handle_invalid_stream2.exit.i1095, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %session_after_header_block_received.exit, %bb.ld
  %.152.i1240 = phi i32 [ %i.ack, %bb.ld ], [ %.fr.i.i, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i ], [ %i.aap, %session_handle_invalid_stream2.exit.i1095 ], [ -902, %bb.kh ], [ -902, %bb.kq ], [ %i.abc, %session_after_header_block_received.exit ]
  %i.acy = sext i32 %.152.i1240 to i64
  br label %nghttp2_session_want_read.exit.thread

session_after_header_block_received.exit.thread:  ; preds = %bb.lf, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %bb.jl, %bb.jk, %session_update_stream_priority.exit.thread.i.i, %bb.kr, %bb.ko, %bb.kp, %bb.jm, %bb.jm, %session_after_header_block_received.exit
  %.pr1327 = load i32, ptr %i.s, align 8, !tbaa !71
  %i.acz = icmp eq i32 %.pr1327, 15
  br i1 %i.acz, label %nghttp2_session_want_read.exit.thread, label %session_after_header_block_received.exit.thread.thread1328

session_after_header_block_received.exit.thread.thread1328: ; preds = %bb.kn, %session_after_header_block_received.exit.thread, %bb.jj
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i64 0, ptr %i.au, align 8, !tbaa !273
  br label %.thread1189

bb.lg:                                            ; preds = %.critedge
  %.val1056 = load i64, ptr %i.t, align 8, !tbaa !72 ; 3 uses
  %i.ada = ptrtoint ptr %.1854 to i64
  %i.adb = sub i64 %i.u, %i.ada                   ; 2 uses
  %i.adc = call noundef i64 @llvm.umin.i64(i64 %i.adb, i64 %.val1056) ; 2 uses
  %i.add = sub nuw i64 %.val1056, %i.adc
  store i64 %i.add, ptr %i.t, align 8, !tbaa !72
  %i.ade = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.adc ; 2 uses
  %.not963.not = icmp ugt i64 %.val1056, %i.adb
  br i1 %.not963.not, label %.thread1189, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.adf = load i8, ptr %i.bd, align 4, !tbaa !83
  switch i8 %i.adf, label %bb.lj [
    i8 1, label %bb.li
    i8 5, label %bb.li
    i8 9, label %bb.li
  ]

bb.li:                                            ; preds = %bb.lh, %bb.lh, %bb.lh
  store i8 1, ptr %i.be, align 4, !tbaa !274
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lh, %bb.li
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.lk:                                            ; preds = %.critedge
  %i.adg = call fastcc i32 @session_handle_frame_size_error(ptr noundef nonnull %0) ; 2 uses
  %i.adh = icmp sgt i32 %i.adg, -901
  br i1 %i.adh, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.adi = sext i32 %i.adg to i64
  br label %nghttp2_session_want_read.exit.thread

bb.lm:                                            ; preds = %bb.lk
  %i.adj = load i32, ptr %i.s, align 8, !tbaa !71
  %i.adk = icmp eq i32 %i.adj, 15
  br i1 %i.adk, label %nghttp2_session_want_read.exit.thread, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 6559, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.lo:                                            ; preds = %.critedge
  %i.adl = ptrtoint ptr %.1854 to i64
  %i.adm = sub i64 %i.u, %i.adl
  %i.adn = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.ado = load ptr, ptr %i.ap, align 8, !tbaa !253 ; 2 uses
  %i.adp = ptrtoint ptr %i.adn to i64
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = sub i64 %i.adp, %i.adq
  %i.ads = call noundef i64 @llvm.umin.i64(i64 %i.adm, i64 %i.adr) ; 4 uses
  %i.adt = call ptr @nghttp2_cpymem(ptr noundef %i.ado, ptr noundef %.1854, i64 noundef %i.ads) #15 ; 2 uses
  store ptr %i.adt, ptr %i.ap, align 8, !tbaa !253
  %i.adu = load i64, ptr %i.t, align 8, !tbaa !72
  %i.adv = sub i64 %i.adu, %i.ads                 ; 2 uses
  store i64 %i.adv, ptr %i.t, align 8, !tbaa !72
  %i.adw = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.ads ; 3 uses
  %i.adx = load ptr, ptr %i.ao, align 8, !tbaa !85
  %.not958 = icmp eq ptr %i.adx, %i.adt
  br i1 %.not958, label %bb.lp, label %.thread1189

bb.lp:                                            ; preds = %bb.lo
  %.not959 = icmp eq i64 %i.ads, 0
  br i1 %.not959, label %bb.lw, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ady = load ptr, ptr %i.aa, align 8, !tbaa !155
  call void @nghttp2_frame_unpack_settings_entry(ptr noundef nonnull %3, ptr noundef %i.ady) #15
  %i.adz = load i32, ptr %3, align 8, !tbaa !136  ; 2 uses
  switch i32 %i.adz, label %bb.lr [
    i32 1, label %bb.ls
    i32 2, label %bb.ls
    i32 3, label %bb.ls
    i32 4, label %bb.ls
    i32 5, label %bb.ls
    i32 6, label %bb.ls
    i32 8, label %bb.ls
    i32 9, label %bb.ls
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.aea = load ptr, ptr %i.az, align 8, !tbaa !84
  %i.aeb = load i64, ptr %i.ay, align 8, !tbaa !275 ; 2 uses
  %i.aec = add i64 %i.aeb, 1
  store i64 %i.aec, ptr %i.ay, align 8, !tbaa !275
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aeb
  %i.aee = load i64, ptr %3, align 8, !tbaa !55
  store i64 %i.aee, ptr %i.aed, align 4, !tbaa !55
  br label %inbound_frame_set_settings_entry.exit

bb.ls:                                            ; preds = %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq
  %i.aef = load i64, ptr %i.ay, align 8, !tbaa !275 ; 4 uses
  %.not.i1099 = icmp eq i64 %i.aef, 0
  %.pre1939 = load ptr, ptr %i.az, align 8, !tbaa !84 ; 3 uses
  br i1 %.not.i1099, label %.loopexit.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ls, %bb.lt
  %.025.i = phi i64 [ %i.aej, %bb.lt ], [ 0, %bb.ls ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.pre1939, i64 %.025.i
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !136
  %i.aei = icmp eq i32 %i.aeh, %i.adz
  br i1 %i.aei, label %.loopexit.thread.i, label %bb.lt

bb.lt:                                            ; preds = %.lr.ph.i
  %i.aej = add nuw i64 %.025.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aej, %i.aef
  br i1 %exitcond.not.i, label %.loopexit.i.a, label %.lr.ph.i, !llvm.loop !247

.loopexit.i.a:                                    ; preds = %bb.lt, %bb.ls
  %6 = add i64 %i.aef, 1
  store i64 %6, ptr %i.ay, align 8, !tbaa !275
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %.loopexit.i.a
  %.027.i.lcssa.sink = phi i64 [ %i.aef, %.loopexit.i.a ], [ %.025.i, %.lr.ph.i ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.pre1939, i64 %.027.i.lcssa.sink
  %8 = load i64, ptr %3, align 8, !tbaa !55
  store i64 %8, ptr %7, align 4, !tbaa !55
  %9 = load i32, ptr %3, align 8, !tbaa !136
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %bb.lu, label %inbound_frame_set_settings_entry.exit

bb.lu:                                            ; preds = %.loopexit.thread.i
  %i.aek = load i64, ptr %i.ba, align 8, !tbaa !258
  %i.ael = getelementptr [8 x i8], ptr %.pre1939, i64 %i.aek
  %i.aem = load i32, ptr %i.bb, align 4, !tbaa !137 ; 2 uses
  %i.aen = getelementptr i8, ptr %i.ael, i64 -4   ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !137
  %i.aep = icmp ult i32 %i.aem, %i.aeo
  br i1 %i.aep, label %bb.lv, label %inbound_frame_set_settings_entry.exit

bb.lv:                                            ; preds = %bb.lu
  store i32 %i.aem, ptr %i.aen, align 4, !tbaa !137
  br label %inbound_frame_set_settings_entry.exit

inbound_frame_set_settings_entry.exit:            ; preds = %bb.lr, %.loopexit.thread.i, %bb.lu, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre1940 = load i64, ptr %i.t, align 8, !tbaa !72
  br label %bb.lw

bb.lw:                                            ; preds = %inbound_frame_set_settings_entry.exit, %bb.lp
  %i.aeq = phi i64 [ %.pre1940, %inbound_frame_set_settings_entry.exit ], [ %i.adv, %bb.lp ]
  %.not960 = icmp eq i64 %i.aeq, 0
  br i1 %.not960, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.bc) #15
  %i.aer = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 6
  store ptr %i.aes, ptr %i.ao, align 8, !tbaa !85
  br label %.thread1189

bb.ly:                                            ; preds = %bb.lw
  %i.aet = load i64, ptr %i.ba, align 8, !tbaa !258 ; 2 uses
  %.not.i1100 = icmp eq i64 %i.aet, 0
  %.pre.i1101 = load ptr, ptr %i.az, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i1100, label %.session_process_settings_frame.exit_crit_edge, label %bb.lz

.session_process_settings_frame.exit_crit_edge:   ; preds = %bb.ly
  %.pre1935 = load i64, ptr %i.ay, align 8, !tbaa !275
  br label %session_process_settings_frame.exit

bb.lz:                                            ; preds = %bb.ly
  %i.aeu = getelementptr [8 x i8], ptr %.pre.i1101, i64 %i.aet ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.aeu, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !55 ; 2 uses
  %i.aew = load <2 x i32>, ptr %i.aev, align 4, !tbaa !55
  %.not33.i = icmp eq i32 %.sroa.4.0.copyload.i, -1
  %.pre1936 = load i64, ptr %i.ay, align 8, !tbaa !275 ; 6 uses
  br i1 %.not33.i, label %session_process_settings_frame.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.lz
  %.not40.i = icmp eq i64 %.pre1936, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i1102

.lr.ph.i1102:                                     ; preds = %.preheader.i, %bb.ma
  %.039.i = phi i64 [ %i.afa, %bb.ma ], [ 0, %.preheader.i ] ; 3 uses
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1101, i64 %.039.i
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !136
  %i.aez = icmp eq i32 %i.aey, 1
  br i1 %i.aez, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %.lr.ph.i1102
  %i.afa = add nuw i64 %.039.i, 1                 ; 2 uses
  %exitcond.not.i1103 = icmp eq i64 %i.afa, %.pre1936
  br i1 %exitcond.not.i1103, label %._crit_edge.i, label %.lr.ph.i1102, !llvm.loop !248

._crit_edge.i:                                    ; preds = %.preheader.i, %bb.ma
  call void @__assert_fail(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.1, i32 noundef 4555, ptr noundef nonnull @__PRETTY_FUNCTION__.session_process_settings_frame) #16
  unreachable

bb.mb:                                            ; preds = %.lr.ph.i1102
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1101, i64 %.039.i ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 4
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !137
  %.not34.i = icmp eq i32 %.sroa.4.0.copyload.i, %i.afd
  br i1 %.not34.i, label %session_process_settings_frame.exit, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.afe = add i64 %.pre1936, 1                   ; 2 uses
  store i64 %i.afe, ptr %i.ay, align 8, !tbaa !275
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1101, i64 %.pre1936
  %i.afg = load i64, ptr %i.afb, align 4, !tbaa !55
  store i64 %i.afg, ptr %i.aff, align 4, !tbaa !55
  store <2 x i32> %i.aew, ptr %i.afb, align 4, !tbaa !55
  br label %session_process_settings_frame.exit

session_process_settings_frame.exit:              ; preds = %.session_process_settings_frame.exit_crit_edge, %bb.lz, %bb.mb, %bb.mc
  %11 = phi i64 [ %.pre1935, %.session_process_settings_frame.exit_crit_edge ], [ %.pre1936, %bb.lz ], [ %.pre1936, %bb.mb ], [ %i.afe, %bb.mc ]
  call void @nghttp2_frame_unpack_settings_payload(ptr noundef nonnull %i.c, ptr noundef %.pre.i1101, i64 noundef %11) #15
  store ptr null, ptr %i.az, align 8, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.afh = call i32 @nghttp2_session_on_settings_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.afi = icmp sgt i32 %i.afh, -901
  br i1 %i.afi, label %bb.me, label %bb.md

bb.md:                                            ; preds = %session_process_settings_frame.exit
  %i.afj = sext i32 %i.afh to i64
  br label %nghttp2_session_want_read.exit.thread

bb.me:                                            ; preds = %session_process_settings_frame.exit
  %i.afk = load i32, ptr %i.s, align 8, !tbaa !71
  %i.afl = icmp eq i32 %i.afk, 15
  br i1 %i.afl, label %nghttp2_session_want_read.exit.thread, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.mg:                                            ; preds = %.critedge
  %.val1055 = load i64, ptr %i.t, align 8, !tbaa !72 ; 2 uses
  %i.afm = ptrtoint ptr %.1854 to i64
  %i.afn = sub i64 %i.u, %i.afm
  %i.afo = call noundef i64 @llvm.umin.i64(i64 %i.afn, i64 %.val1055) ; 4 uses
  %.not954 = icmp eq i64 %i.afo, 0
  br i1 %.not954, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.afp = load ptr, ptr %i.v, align 8, !tbaa !276
  %i.afq = call ptr @nghttp2_cpymem(ptr noundef %i.afp, ptr noundef %.1854, i64 noundef %i.afo) #15
  store ptr %i.afq, ptr %i.v, align 8, !tbaa !276
  %i.afr = load i64, ptr %i.t, align 8, !tbaa !72
  %i.afs = sub i64 %i.afr, %i.afo                 ; 2 uses
  store i64 %i.afs, ptr %i.t, align 8, !tbaa !72
  %i.aft = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.afo
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mg, %bb.mh
  %i.afu = phi i64 [ %i.afs, %bb.mh ], [ %.val1055, %bb.mg ]
  %.6859 = phi ptr [ %i.aft, %bb.mh ], [ %.1854, %bb.mg ] ; 2 uses
  %.not955 = icmp eq i64 %i.afu, 0
  br i1 %.not955, label %bb.ml, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.afv = load ptr, ptr %i.w, align 8, !tbaa !277
  %i.afw = load ptr, ptr %i.v, align 8, !tbaa !276
  %.not957 = icmp eq ptr %i.afv, %i.afw
  br i1 %.not957, label %bb.mk, label %.thread1189

bb.mk:                                            ; preds = %bb.mj
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 6613, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.ml:                                            ; preds = %bb.mi
  %i.afx = load ptr, ptr %i.aa, align 8, !tbaa !155
  %i.afy = load ptr, ptr %i.x, align 8, !tbaa !278 ; 2 uses
  %i.afz = load ptr, ptr %i.v, align 8, !tbaa !276
  %i.aga = ptrtoint ptr %i.afz to i64
  %i.agb = ptrtoint ptr %i.afy to i64
  %i.agc = sub i64 %i.aga, %i.agb
  call void @nghttp2_frame_unpack_goaway_payload(ptr noundef nonnull %i.c, ptr noundef %i.afx, ptr noundef %i.afy, i64 noundef %i.agc) #15
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #15
  %i.agd = call i32 @nghttp2_session_on_goaway_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.age = icmp sgt i32 %i.agd, -901
  br i1 %i.age, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.agf = sext i32 %i.agd to i64
  br label %nghttp2_session_want_read.exit.thread

bb.mn:                                            ; preds = %bb.ml
  %i.agg = load i32, ptr %i.s, align 8, !tbaa !71
  %i.agh = icmp eq i32 %i.agg, 15
  br i1 %i.agh, label %nghttp2_session_want_read.exit.thread, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.mp:                                            ; preds = %.critedge, %.critedge
  %i.agi = ptrtoint ptr %.1854 to i64
  %i.agj = sub i64 %i.u, %i.agi
  %i.agk = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.agl = load ptr, ptr %i.ap, align 8, !tbaa !253 ; 2 uses
  %i.agm = ptrtoint ptr %i.agk to i64
  %i.agn = ptrtoint ptr %i.agl to i64
  %i.ago = sub i64 %i.agm, %i.agn
  %i.agp = call noundef i64 @llvm.umin.i64(i64 %i.agj, i64 %i.ago) ; 2 uses
  %i.agq = call ptr @nghttp2_cpymem(ptr noundef %i.agl, ptr noundef %.1854, i64 noundef %i.agp) #15 ; 2 uses
  store ptr %i.agq, ptr %i.ap, align 8, !tbaa !253
  %i.agr = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.agp ; 4 uses
  %i.ags = load ptr, ptr %i.ao, align 8, !tbaa !85
  %.not949 = icmp eq ptr %i.ags, %i.agq
  br i1 %.not949, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.agt = ptrtoint ptr %i.agr to i64
  %i.agu = ptrtoint ptr %.0853 to i64
  %i.agv = sub i64 %i.agt, %i.agu
  br label %nghttp2_session_want_read.exit.thread

bb.mr:                                            ; preds = %bb.mp
  %i.agw = load ptr, ptr %i.aa, align 8, !tbaa !155
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %5, ptr noundef %i.agw) #15
  %i.agx = load i64, ptr %5, align 8, !tbaa !256  ; 2 uses
  store i64 %i.agx, ptr %i.t, align 8, !tbaa !72
  %i.agy = load i8, ptr %i.as, align 4, !tbaa !279
  %.not950 = icmp eq i8 %i.agy, 9
  br i1 %.not950, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.agz = load i32, ptr %i.at, align 8, !tbaa !280
  %i.aha = load i32, ptr %i.ak, align 8, !tbaa !83
  %.not951 = icmp eq i32 %i.agz, %i.aha
  br i1 %.not951, label %bb.mv, label %bb.mt

bb.mt:                                            ; preds = %bb.mr, %bb.ms
  %i.ahb = load i8, ptr %i.h, align 4, !tbaa !41
  %i.ahc = and i8 %i.ahb, 1
  %.not.i.i1104 = icmp eq i8 %i.ahc, 0
  br i1 %.not.i.i1104, label %bb.mu, label %nghttp2_session_terminate_session_with_reason.exit1108.thread

bb.mu:                                            ; preds = %bb.mt
  %i.ahd = load i32, ptr %i.ar, align 4, !tbaa !42
  store i32 15, ptr %i.s, align 8, !tbaa !43
  %i.ahe = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.ahd, i32 noundef 1, ptr noundef nonnull readonly @.str.59, i64 noundef 57, i8 noundef zeroext 1)
  %.fr = freeze i32 %i.ahe                        ; 3 uses
  %.not17.i.i1107 = icmp eq i32 %.fr, 0
  br i1 %.not17.i.i1107, label %nghttp2_session_terminate_session_with_reason.exit1108.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit1108

nghttp2_session_terminate_session_with_reason.exit1108: ; preds = %bb.mu
  %i.ahf = icmp sgt i32 %.fr, -901
  %i.ahg = sext i32 %.fr to i64
  br i1 %i.ahf, label %nghttp2_session_terminate_session_with_reason.exit1108.thread, label %nghttp2_session_want_read.exit.thread

nghttp2_session_terminate_session_with_reason.exit1108.thread.sink.split: ; preds = %bb.mu, %bb.u
  %i.ahh = load i8, ptr %i.h, align 4, !tbaa !41
  %i.ahi = or i8 %i.ahh, 1
  store i8 %i.ahi, ptr %i.h, align 4, !tbaa !41
  br label %nghttp2_session_terminate_session_with_reason.exit1108.thread

nghttp2_session_terminate_session_with_reason.exit1108.thread: ; preds = %nghttp2_session_terminate_session_with_reason.exit1108.thread.sink.split, %nghttp2_session_terminate_session_with_reason.exit, %bb.t, %bb.mt, %nghttp2_session_terminate_session_with_reason.exit1108
  br label %nghttp2_session_want_read.exit.thread

bb.mv:                                            ; preds = %bb.ms
  %i.ahj = load i64, ptr %i.au, align 8, !tbaa !273
  %i.ahk = add i64 %i.ahj, 1                      ; 2 uses
  store i64 %i.ahk, ptr %i.au, align 8, !tbaa !273
  %i.ahl = load i64, ptr %i.av, align 8, !tbaa !63
  %i.ahm = icmp ugt i64 %i.ahk, %i.ahl
  br i1 %i.ahm, label %nghttp2_session_want_read.exit.thread, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.ahn = load i8, ptr %i.al, align 1, !tbaa !83
  %i.aho = load i8, ptr %i.aw, align 1, !tbaa !255
  %i.ahp = and i8 %i.aho, 4
  %i.ahq = or i8 %i.ahp, %i.ahn
  store i8 %i.ahq, ptr %i.al, align 1, !tbaa !83
  %i.ahr = load i64, ptr %i.c, align 8, !tbaa !83
  %i.ahs = add i64 %i.ahr, %i.agx
  store i64 %i.ahs, ptr %i.c, align 8, !tbaa !83
  %i.aht = load i32, ptr %i.s, align 8, !tbaa !71
  %i.ahu = icmp eq i32 %i.aht, 10
  br i1 %i.ahu, label %bb.mx, label %bb.na

bb.mx:                                            ; preds = %bb.mw
  store i32 4, ptr %i.s, align 8, !tbaa !71
  %i.ahv = load ptr, ptr %i.ax, align 8, !tbaa !257 ; 2 uses
  %.not.i1109 = icmp eq ptr %i.ahv, null
  br i1 %.not.i1109, label %.thread1189, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ahw = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ahx = call i32 %i.ahv(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.ahw) #15, !inline_history !241
  %.not7.i1110 = icmp eq i32 %i.ahx, 0
  br i1 %.not7.i1110, label %bb.mz, label %nghttp2_session_want_read.exit.thread

bb.mz:                                            ; preds = %bb.my
  %.pr1266 = load i32, ptr %i.s, align 8, !tbaa !71
  %i.ahy = icmp eq i32 %.pr1266, 15
  br i1 %i.ahy, label %nghttp2_session_want_read.exit.thread, label %.thread1189

bb.na:                                            ; preds = %bb.mw
  store i32 5, ptr %i.s, align 8, !tbaa !71
  br label %.thread1189

bb.nb:                                            ; preds = %.critedge
  %i.ahz = ptrtoint ptr %.1854 to i64
  %i.aia = sub i64 %i.u, %i.ahz
  %i.aib = load ptr, ptr %i.ao, align 8, !tbaa !85
  %i.aic = load ptr, ptr %i.ap, align 8, !tbaa !253 ; 2 uses
  %i.aid = ptrtoint ptr %i.aib to i64
  %i.aie = ptrtoint ptr %i.aic to i64
  %i.aif = sub i64 %i.aid, %i.aie
  %i.aig = call noundef i64 @llvm.umin.i64(i64 %i.aia, i64 %i.aif) ; 7 uses
  %i.aih = call ptr @nghttp2_cpymem(ptr noundef %i.aic, ptr noundef %.1854, i64 noundef %i.aig) #15 ; 2 uses
  store ptr %i.aih, ptr %i.ap, align 8, !tbaa !253
  %i.aii = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.aig ; 2 uses
  %i.aij = load i64, ptr %i.t, align 8, !tbaa !72
  %i.aik = sub i64 %i.aij, %i.aig
end_hunk_1
begin_hunk_2_@nghttp2_session_consume_connection
define i32 @nghttp2_session_consume_connection(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2644
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2741
  %i.g = load i8, ptr %i.f, align 1, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2652
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54
  %i.j = tail call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i8 noundef zeroext %i.g, i32 noundef 0, i64 noundef %1, i32 noundef %i.i) ; 2 uses
  %i.k = icmp sgt i32 %i.j, -901
  %. = select i1 %i.k, i32 0, i32 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -519, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_session_consume_stream(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %nghttp2_session_get_stream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.c = load i32, ptr %i.b, align 4, !tbaa !64
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %nghttp2_session_get_stream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %1) #15 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %nghttp2_session_get_stream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.h = load i8, ptr %i.g, align 4, !tbaa !48
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_get_stream.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8, !tbaa !49
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %nghttp2_session_get_stream.exit.thread, label %nghttp2_session_get_stream.exit

nghttp2_session_get_stream.exit:                  ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 119
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !128
  %i.t = tail call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i8 noundef zeroext %i.o, i32 noundef %i.q, i64 noundef %2, i32 noundef %i.s) ; 2 uses
  %i.u = icmp sgt i32 %i.t, -901
  %. = select i1 %i.u, i32 0, i32 %i.t
  br label %nghttp2_session_get_stream.exit.thread

nghttp2_session_get_stream.exit.thread:           ; preds = %bb.e, %bb.d, %bb.c, %nghttp2_session_get_stream.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -501, %bb.a ], [ %., %nghttp2_session_get_stream.exit ], [ -519, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -501, 1) i32 @nghttp2_session_set_next_stream_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2608 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp ugt i32 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.f = load i8, ptr %i.e, align 1, !tbaa !44
  %.not = icmp eq i8 %i.f, 0
  %i.g = and i32 %1, 1
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr %i.b, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ -501, %bb.d ], [ -501, %bb.a ], [ 0, %bb.f ], [ -501, %bb.b ], [ -501, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nghttp2_session_get_next_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @nghttp2_session_get_last_proc_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @nghttp2_session_find_stream(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
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
define noundef nonnull ptr @nghttp2_session_get_root_stream(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @nghttp2_stream_root
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 256) i32 @nghttp2_session_check_server_session(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.b = load i8, ptr %i.a, align 1, !tbaa !44
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @nghttp2_session_change_stream_priority(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @nghttp2_session_create_idle_stream(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_get_hd_inflate_dynamic_table_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.b = tail call i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #15
  ret i64 %i.b
}

declare i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_get_hd_deflate_dynamic_table_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.b = tail call i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #15
  ret i64 %i.b
}

declare i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nghttp2_session_set_user_data(ptr nofree noundef writeonly captures(none) initializes((2416, 2424)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2416
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_session_change_extpri_stream_priority(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.nghttp2_extpri, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = load i64, ptr %2, align 4, !tbaa !55     ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !44
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %session_update_stream_priority.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2738
  %i.e = load i8, ptr %i.d, align 2, !tbaa !58
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
  store i32 7, ptr %4, align 8, !tbaa !152
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not15 = icmp eq i32 %3, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 116 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !48
  %i.k = or i8 %i.j, 32
  store i8 %i.k, ptr %i.i, align 4, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %4) #15 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !103   ; 2 uses
  %i.o = icmp eq i8 %i.n, %i.l
  br i1 %i.o, label %session_update_stream_priority.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 118 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !102
  switch i8 %i.q, label %bb.k [
    i8 0, label %bb.n
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 876, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = and i8 %i.n, 127                         ; 2 uses
  %i.s = icmp samesign ult i8 %i.r, 8
  br i1 %i.s, label %session_ob_data_remove.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

session_ob_data_remove.exit.i:                    ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = zext nneg i8 %i.r to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #15
  store i8 0, ptr %i.p, align 2, !tbaa !102
  store i8 %i.l, ptr %i.m, align 8, !tbaa !103
  %i.x = call fastcc i32 @session_ob_data_push(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %session_update_stream_priority.exit

bb.n:                                             ; preds = %bb.j
  store i8 %i.l, ptr %i.m, align 8, !tbaa !103
  br label %session_update_stream_priority.exit

session_update_stream_priority.exit:              ; preds = %bb.n, %session_ob_data_remove.exit.i, %bb.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -519, %bb.a ], [ 0, %bb.b ], [ -501, %bb.d ], [ -501, %bb.c ], [ 0, %bb.n ], [ %i.x, %session_ob_data_remove.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -519, 1) i32 @nghttp2_session_get_extpri_stream_priority(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.b = load i8, ptr %i.a, align 1, !tbaa !44
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2738
  %i.d = load i8, ptr %i.c, align 2, !tbaa !58
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
  %i.h = load i8, ptr %i.g, align 8, !tbaa !103
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

declare void @nghttp2_map_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @nghttp2_bufs_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @nghttp2_pq_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @stream_less(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !161  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
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
