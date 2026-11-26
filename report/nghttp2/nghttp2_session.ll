Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_session?download=true
inline.NumInlined: 534
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_session_update_recv_stream_window_size:bb.a
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
  %.not1682 = icmp eq i8 %i.r, 0
  br i1 %.not1682, label %.critedge.preheader, label %nghttp2_session_want_read.exit.thread

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

.critedge:                                        ; preds = %.critedge.preheader, %.thread1188
  %.1854 = phi ptr [ %.9862, %.thread1188 ], [ %.0853, %.critedge.preheader ] ; 50 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !71
  switch i32 %i.bz, label %.thread1188 [
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
  %.not1330 = icmp ugt i64 %i.ca, %2
  br i1 %.not1330, label %.thread1188, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i32 1, ptr %i.s, align 8, !tbaa !71
  br label %.thread1188

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
end_hunk_0
begin_hunk_1_@nghttp2_session_mem_recv2:bb.a
    i32 0, label %bb.qa
  ]

bb.qa:                                            ; preds = %session_call_on_extension_chunk_recv_callback.exit, %session_call_on_extension_chunk_recv_callback.exit
  %i.aqc = load i32, ptr %i.s, align 8, !tbaa !71
  %i.aqd = icmp eq i32 %i.aqc, 15
  br i1 %i.aqd, label %nghttp2_session_want_read.exit.thread, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  br i1 %switch.selectcmp.i, label %.thread-pre-split1303_crit_edge, label %bb.qc

.thread-pre-split1303_crit_edge:                  ; preds = %bb.qb
  %.pr1304.pre = load i64, ptr %i.t, align 8, !tbaa !72
  br label %thread-pre-split1303

bb.qc:                                            ; preds = %bb.qb
  store i32 6, ptr %i.s, align 8, !tbaa !71
  br label %.thread1188

thread-pre-split1303:                             ; preds = %.thread-pre-split1303_crit_edge, %bb.pz, %bb.py
  %i.aqe = phi i64 [ %i.apx, %bb.py ], [ %.pr1304.pre, %.thread-pre-split1303_crit_edge ], [ %i.apx, %bb.pz ]
  %.not918 = icmp eq i64 %i.aqe, 0
  br i1 %.not918, label %bb.qd, label %.thread1188

bb.qd:                                            ; preds = %thread-pre-split1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !53
  %i.aqf = load ptr, ptr %i.ad, align 8, !tbaa !259
  %i.aqg = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.aqh = call i32 %i.aqf(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.aqg) #15, !inline_history !250
  switch i32 %i.aqh, label %session_call_unpack_extension_callback.exit.i [
    i32 -535, label %bb.qe
    i32 0, label %bb.qf
  ]

session_call_unpack_extension_callback.exit.i:    ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %nghttp2_session_want_read.exit.thread

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.qh

bb.qf:                                            ; preds = %bb.qd
  %i.aqi = load ptr, ptr %i.a, align 8, !tbaa !53
  store ptr %i.aqi, ptr %i.ae, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aqj = load ptr, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %.not.i.i1134 = icmp eq ptr %i.aqj, null
  br i1 %.not.i.i1134, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.aqk = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.aql = call i32 %i.aqj(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %i.aqk) #15, !inline_history !251
  %.not7.i.i1135 = icmp eq i32 %i.aql, 0
  br i1 %.not7.i.i1135, label %bb.qh, label %nghttp2_session_want_read.exit.thread

bb.qh:                                            ; preds = %bb.qf, %bb.qg, %bb.qe
  %i.aqm = load i32, ptr %i.s, align 8, !tbaa !71
  %i.aqn = icmp eq i32 %i.aqm, 15
  br i1 %i.aqn, label %nghttp2_session_want_read.exit.thread, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1188

bb.qj:                                            ; preds = %.critedge
  %.val1051 = load i64, ptr %i.t, align 8, !tbaa !72 ; 2 uses
  %i.aqo = ptrtoint ptr %.1854 to i64
  %i.aqp = sub i64 %i.u, %i.aqo
  %i.aqq = call noundef i64 @llvm.umin.i64(i64 %i.aqp, i64 %.val1051) ; 4 uses
  %.not911 = icmp eq i64 %i.aqq, 0
  br i1 %.not911, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.aqr = load ptr, ptr %i.v, align 8, !tbaa !276
  %i.aqs = call ptr @nghttp2_cpymem(ptr noundef %i.aqr, ptr noundef %.1854, i64 noundef %i.aqq) #15
  store ptr %i.aqs, ptr %i.v, align 8, !tbaa !276
  %i.aqt = load i64, ptr %i.t, align 8, !tbaa !72
  %i.aqu = sub i64 %i.aqt, %i.aqq                 ; 2 uses
  store i64 %i.aqu, ptr %i.t, align 8, !tbaa !72
  %i.aqv = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.aqq
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qj, %bb.qk
  %i.aqw = phi i64 [ %i.aqu, %bb.qk ], [ %.val1051, %bb.qj ]
  %.7860 = phi ptr [ %i.aqv, %bb.qk ], [ %.1854, %bb.qj ] ; 2 uses
  %.not912 = icmp eq i64 %i.aqw, 0
  br i1 %.not912, label %bb.qo, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.aqx = load ptr, ptr %i.w, align 8, !tbaa !277
  %i.aqy = load ptr, ptr %i.v, align 8, !tbaa !276
  %.not914 = icmp eq ptr %i.aqx, %i.aqy
  br i1 %.not914, label %bb.qn, label %.thread1188

bb.qn:                                            ; preds = %bb.qm
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 7032, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.qo:                                            ; preds = %bb.ql
  %i.aqz = load ptr, ptr %i.aa, align 8, !tbaa !155
  %i.ara = call zeroext i16 @nghttp2_get_uint16(ptr noundef %i.aqz) #15
  %i.arb = zext i16 %i.ara to i64
  %i.arc = load ptr, ptr %i.x, align 8, !tbaa !278 ; 2 uses
  %i.ard = load ptr, ptr %i.v, align 8, !tbaa !276
  %i.are = ptrtoint ptr %i.ard to i64
  %i.arf = ptrtoint ptr %i.arc to i64
  %i.arg = sub i64 %i.are, %i.arf
  call void @nghttp2_frame_unpack_altsvc_payload(ptr noundef nonnull %i.c, i64 noundef %i.arb, ptr noundef %i.arc, i64 noundef %i.arg) #15
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #15
  %i.arh = call range(i32 -902, 1) i32 @nghttp2_session_on_altsvc_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ari = icmp sgt i32 %i.arh, -901
  br i1 %i.ari, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.arj = sext i32 %i.arh to i64
  br label %nghttp2_session_want_read.exit.thread

bb.qq:                                            ; preds = %bb.qo
  %i.ark = load i32, ptr %i.s, align 8, !tbaa !71
  %i.arl = icmp eq i32 %i.ark, 15
  br i1 %i.arl, label %nghttp2_session_want_read.exit.thread, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1188

bb.qs:                                            ; preds = %.critedge
  %.val1050 = load i64, ptr %i.t, align 8, !tbaa !72 ; 2 uses
  %i.arm = ptrtoint ptr %.1854 to i64
  %i.arn = sub i64 %i.u, %i.arm
  %i.aro = call noundef i64 @llvm.umin.i64(i64 %i.arn, i64 %.val1050) ; 4 uses
  %.not907 = icmp eq i64 %i.aro, 0
  br i1 %.not907, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.arp = load ptr, ptr %i.v, align 8, !tbaa !276
  %i.arq = call ptr @nghttp2_cpymem(ptr noundef %i.arp, ptr noundef %.1854, i64 noundef %i.aro) #15
  store ptr %i.arq, ptr %i.v, align 8, !tbaa !276
  %i.arr = load i64, ptr %i.t, align 8, !tbaa !72
  %i.ars = sub i64 %i.arr, %i.aro                 ; 2 uses
  store i64 %i.ars, ptr %i.t, align 8, !tbaa !72
  %i.art = getelementptr inbounds nuw i8, ptr %.1854, i64 %i.aro
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.aru = phi i64 [ %i.ars, %bb.qt ], [ %.val1050, %bb.qs ]
  %.8861 = phi ptr [ %i.art, %bb.qt ], [ %.1854, %bb.qs ] ; 2 uses
  %.not908 = icmp eq i64 %i.aru, 0
  %i.arv = load ptr, ptr %i.v, align 8, !tbaa !276 ; 2 uses
  br i1 %.not908, label %bb.qx, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.arw = load ptr, ptr %i.w, align 8, !tbaa !277
  %.not910 = icmp eq ptr %i.arw, %i.arv
  br i1 %.not910, label %bb.qw, label %.thread1188

bb.qw:                                            ; preds = %bb.qv
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 7065, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.qx:                                            ; preds = %bb.qu
  %i.arx = load ptr, ptr %i.x, align 8, !tbaa !278 ; 2 uses
  %i.ary = ptrtoint ptr %i.arv to i64
  %i.arz = ptrtoint ptr %i.arx to i64
  %i.asa = sub i64 %i.ary, %i.arz
  %i.asb = call i32 @nghttp2_frame_unpack_origin_payload(ptr noundef nonnull %i.c, ptr noundef %i.arx, i64 noundef %i.asa, ptr noundef nonnull %i.g) #15 ; 3 uses
  %.not.i1137 = icmp eq i32 %i.asb, 0
  br i1 %.not.i1137, label %bb.qy, label %session_process_origin_frame.exit

bb.qy:                                            ; preds = %bb.qx
  %i.asc = load ptr, ptr %i.y, align 8, !tbaa !134 ; 2 uses
  %.not.i.i.i1140 = icmp eq ptr %i.asc, null
  br i1 %.not.i.i.i1140, label %session_process_origin_frame.exit.thread, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.asd = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ase = call i32 %i.asc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %i.asd) #15, !inline_history !252
  %.not7.i.i.i = icmp eq i32 %i.ase, 0
  br i1 %.not7.i.i.i, label %session_process_origin_frame.exit.thread, label %nghttp2_session_want_read.exit.thread

session_process_origin_frame.exit:                ; preds = %bb.qx
  %i.asf = icmp sgt i32 %i.asb, -901
  br i1 %i.asf, label %session_process_origin_frame.exit.thread, label %session_process_origin_frame.exit.thread1309.split.loop.exit1678

session_process_origin_frame.exit.thread1309.split.loop.exit1678: ; preds = %session_process_origin_frame.exit
  %i.asg = sext i32 %i.asb to i64
  br label %nghttp2_session_want_read.exit.thread

session_process_origin_frame.exit.thread:         ; preds = %bb.qz, %bb.qy, %session_process_origin_frame.exit
  %i.ash = load i32, ptr %i.s, align 8, !tbaa !71
  %i.asi = icmp eq i32 %i.ash, 15
  br i1 %i.asi, label %nghttp2_session_want_read.exit.thread, label %bb.ra

bb.ra:                                            ; preds = %session_process_origin_frame.exit.thread
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1188

.thread1188:                                      ; preds = %bb.mx, %session_after_header_block_received.exit.thread.thread1327, %bb.ji, %bb.jh, %bb.je, %bb.eo, %bb.ch, %bb.ce, %bb.cb, %bb.bp, %bb.bk, %bb.be, %bb.an, %bb.aa, %bb.eg, %bb.eb, %bb.dx, %bb.di, %bb.dp, %bb.dc, %bb.da, %bb.cv, %bb.el, %bb.cp, %bb.pi, %bb.jc, %session_handle_invalid_stream2.exit1089.thread, %bb.jb, %.thread1208, %session_handle_invalid_stream2.exit.thread, %bb.bb, %bb.bc, %bb.em, %bb.em, %bb.em, %bb.em, %bb.em, %bb.qv, %bb.qm, %thread-pre-split1303, %bb.pw, %bb.pj, %bb.na, %bb.mz, %bb.mj, %bb.lo, %bb.lg, %bb.ey, %bb.ez, %session_handle_invalid_stream2.exit1077.thread, %bb.fk, %bb.fl, %bb.fm, %bb.fq, %bb.fv, %session_handle_invalid_stream2.exit1082.thread, %bb.gc, %bb.gd, %bb.gh, %bb.go, %bb.gq, %bb.gu, %bb.gy, %bb.gz, %bb.g, %bb.h, %bb.ra, %bb.qr, %bb.qi, %bb.qc, %bb.px, %bb.pn, %select.unfold1278, %bb.ob, %bb.mo, %bb.mf, %bb.lx, %bb.lj, %.critedge
  %.9862 = phi ptr [ %.1854, %.critedge ], [ %i.cf, %bb.h ], [ %i.cf, %bb.g ], [ %.8861, %bb.ra ], [ %i.lp, %bb.gz ], [ %i.lp, %bb.ey ], [ %i.lp, %bb.ez ], [ %i.lp, %session_handle_invalid_stream2.exit1077.thread ], [ %i.lp, %bb.fk ], [ %i.lp, %bb.fl ], [ %i.lp, %bb.fm ], [ %i.lp, %bb.fq ], [ %i.dp, %bb.ch ], [ %i.lp, %bb.fv ], [ %i.lp, %session_handle_invalid_stream2.exit1082.thread ], [ %i.lp, %bb.gc ], [ %i.lp, %bb.gd ], [ %i.lp, %bb.gh ], [ %i.lp, %.thread1208 ], [ %i.lp, %bb.go ], [ %i.lp, %bb.gq ], [ %i.lp, %bb.gu ], [ %i.lp, %bb.gy ], [ %i.dp, %bb.eo ], [ %i.ade, %bb.lg ], [ %i.ade, %bb.lj ], [ %i.adw, %bb.lo ], [ %i.adw, %bb.lx ], [ %i.adw, %bb.mf ], [ %.6859, %bb.mj ], [ %.6859, %bb.mo ], [ %i.agx, %bb.mz ], [ %i.agx, %bb.na ], [ %i.aio, %bb.ob ], [ %i.amh, %bb.pj ], [ %i.amh, %bb.pn ], [ %i.amh, %bb.pi ], [ %.1854, %select.unfold1278 ], [ %i.ape, %bb.pw ], [ %i.ape, %bb.px ], [ %i.apy, %bb.qc ], [ %i.apy, %thread-pre-split1303 ], [ %i.apy, %bb.qi ], [ %.7860, %bb.qm ], [ %.7860, %bb.qr ], [ %.8861, %bb.qv ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.bc ], [ %i.dp, %bb.bb ], [ %i.dp, %session_handle_invalid_stream2.exit.thread ], [ %.4857, %session_after_header_block_received.exit.thread.thread1327 ], [ %i.yq, %bb.jc ], [ %i.yq, %bb.jb ], [ %i.yp, %session_handle_invalid_stream2.exit1089.thread ], [ %i.dp, %bb.cp ], [ %i.dp, %bb.el ], [ %i.dp, %bb.cv ], [ %i.dp, %bb.da ], [ %i.dp, %bb.dc ], [ %i.dp, %bb.dp ], [ %i.dp, %bb.di ], [ %i.dp, %bb.dx ], [ %i.dp, %bb.eb ], [ %i.dp, %bb.eg ], [ %i.dp, %bb.aa ], [ %i.dp, %bb.an ], [ %i.dp, %bb.be ], [ %i.dp, %bb.bk ], [ %i.dp, %bb.bp ], [ %i.dp, %bb.cb ], [ %i.dp, %bb.ce ], [ %.4857, %bb.je ], [ %.4857, %bb.jh ], [ %.4857, %bb.ji ], [ %i.agx, %bb.mx ] ; 2 uses
  %.11852 = phi i32 [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.ra ], [ 0, %bb.gz ], [ 1, %bb.ey ], [ 0, %bb.ez ], [ 1, %session_handle_invalid_stream2.exit1077.thread ], [ 1, %bb.fk ], [ 1, %bb.fl ], [ 0, %bb.fm ], [ 0, %bb.fq ], [ 1, %bb.ch ], [ 0, %bb.fv ], [ 1, %session_handle_invalid_stream2.exit1082.thread ], [ 1, %bb.gc ], [ 1, %bb.gd ], [ 0, %bb.gh ], [ 1, %.thread1208 ], [ 0, %bb.go ], [ 1, %bb.gq ], [ 1, %bb.gu ], [ 0, %bb.gy ], [ %.2843.ph1194, %bb.eo ], [ 0, %bb.lg ], [ 0, %bb.lj ], [ 0, %bb.lo ], [ 0, %bb.lx ], [ 0, %bb.mf ], [ 0, %bb.mj ], [ 0, %bb.mo ], [ 1, %bb.mz ], [ 1, %bb.na ], [ 1, %bb.ob ], [ 0, %bb.pj ], [ 0, %bb.pn ], [ 1, %bb.pi ], [ 1, %select.unfold1278 ], [ 0, %bb.pw ], [ 0, %bb.px ], [ 1, %bb.qc ], [ 0, %thread-pre-split1303 ], [ 0, %bb.qi ], [ 0, %bb.qm ], [ 0, %bb.qr ], [ 0, %bb.qv ], [ %.2843.ph.ph, %bb.em ], [ %.2843.ph.ph, %bb.em ], [ %.2843.ph.ph, %bb.em ], [ %.2843.ph.ph, %bb.em ], [ %.2843.ph.ph, %bb.em ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 1, %session_handle_invalid_stream2.exit.thread ], [ 0, %session_after_header_block_received.exit.thread.thread1327 ], [ 1, %bb.jc ], [ 0, %bb.jb ], [ 1, %session_handle_invalid_stream2.exit1089.thread ], [ 1, %bb.cp ], [ 1, %bb.el ], [ 1, %bb.cv ], [ 1, %bb.da ], [ 1, %bb.dc ], [ 1, %bb.dp ], [ 1, %bb.di ], [ 1, %bb.dx ], [ 1, %bb.eb ], [ 1, %bb.eg ], [ 1, %bb.aa ], [ 1, %bb.an ], [ 1, %bb.be ], [ 1, %bb.bk ], [ 1, %bb.bp ], [ 1, %bb.cb ], [ 1, %bb.ce ], [ 0, %bb.je ], [ 0, %bb.jh ], [ 0, %bb.ji ], [ 1, %bb.mx ]
  %.not1036 = icmp eq i32 %.11852, 0
  %i.asj = icmp eq ptr %.9862, %i.f
  %or.cond1038 = select i1 %.not1036, i1 %i.asj, i1 false
  br i1 %or.cond1038, label %nghttp2_session_want_read.exit.thread, label %.critedge

nghttp2_session_want_read.exit.thread:            ; preds = %bb.qg, %session_call_on_extension_chunk_recv_callback.exit, %bb.my, %bb.en, %bb.aq, %bb.km, %bb.pe, %bb.pc, %bb.ox, %bb.oq, %bb.om, %bb.oh, %bb.pf, %bb.iu, %session_after_header_block_received.exit.thread, %bb.bu, %bb.au, %bb.ar, %bb.ba, %bb.ah, %bb.y, %bb.dw, %bb.dr, %bb.cz, %bb.do, %bb.dh, %bb.cu, %bb.co, %bb.ee, %bb.bh, %bb.ek, %bb.bq, %bb.eo, %bb.gj, %session_process_origin_frame.exit.thread, %bb.qq, %bb.qh, %bb.qa, %.critedge, %bb.pv, %bb.pr, %bb.pm, %bb.oa, %bb.nr, %nghttp2_session_consume.exit.thread, %bb.nf, %bb.mz, %bb.mv, %bb.mn, %bb.me, %bb.gx, %bb.gs, %bb.gn, %bb.gg, %bb.fy, %bb.fp, %bb.fj, %bb.fd, %bb.f, %.thread1188, %bb.qz, %session_process_origin_frame.exit.thread1309.split.loop.exit1678, %nghttp2_session_terminate_session_with_reason.exit1107.thread, %nghttp2_session_terminate_session_with_reason.exit1107, %nghttp2_session_terminate_session_with_reason.exit, %session_call_unpack_extension_callback.exit.i, %bb.ph, %bb.pb, %bb.oz, %bb.ow, %bb.op, %bb.ol, %bb.og, %.loopexit, %bb.iw, %bb.iy, %session_after_header_block_received.exit.thread1236, %bb.bt, %bb.bg, %bb.az, %bb.ax, %bb.at, %inbound_frame_handle_pad.exit, %inbound_frame_handle_pad.exit1069, %bb.ag, %bb.dz, %bb.x, %bb.cj, %bb.ed, %bb.dv, %bb.dg, %bb.dn, %bb.cy, %bb.ct, %bb.ej, %bb.cn, %inbound_frame_handle_pad.exit1062, %bb.r, %bb.d, %bb.ns, %inbound_frame_compute_pad.exit1079.thread, %inbound_frame_compute_pad.exit.thread, %bb.o, %bb.lm, %nghttp2_session_want_read.exit, %bb.qp, %bb.pu, %bb.pq, %bb.pl, %session_update_glitch_ratelim.exit, %bb.nq, %nghttp2_session_consume.exit.thread1269, %bb.ne, %bb.nc, %bb.mq, %bb.mm, %bb.md, %bb.ll, %bb.gw, %bb.gm, %bb.gf, %bb.gb, %bb.fx, %bb.fo, %bb.fi, %bb.fg, %bb.fc, %bb.eq, %bb.n, %bb.j
  %.11 = phi i64 [ %2, %nghttp2_session_terminate_session_with_reason.exit1107.thread ], [ %2, %nghttp2_session_want_read.exit ], [ %i.ct, %bb.j ], [ %i.dc, %bb.n ], [ %i.anx, %bb.ow ], [ %i.gi, %bb.az ], [ %2, %bb.d ], [ %i.lv, %bb.eq ], [ %i.arj, %bb.qp ], [ %spec.select, %bb.o ], [ %i.mt, %bb.fc ], [ %i.gg, %bb.ax ], [ %i.mz, %bb.fg ], [ %i.nb, %bb.fi ], [ %i.iu, %bb.cn ], [ %i.nh, %bb.fo ], [ %i.ga, %bb.at ], [ %spec.select1046, %inbound_frame_compute_pad.exit.thread ], [ %i.amv, %bb.ol ], [ %i.oe, %bb.fx ], [ %i.ahm, %nghttp2_session_terminate_session_with_reason.exit1107 ], [ %i.ok, %bb.gb ], [ %i.oo, %bb.gf ], [ %i.anl, %bb.op ], [ %i.aof, %bb.pb ], [ %i.oy, %bb.gm ], [ %spec.select1040, %inbound_frame_handle_pad.exit ], [ %spec.select1043, %inbound_frame_handle_pad.exit1069 ], [ %i.ps, %bb.gw ], [ %i.fc, %bb.ag ], [ %i.amk, %bb.og ], [ %i.adi, %bb.ll ], [ %spec.select1041, %inbound_frame_handle_pad.exit1062 ], [ %i.afp, %bb.md ], [ %2, %bb.lm ], [ %i.agl, %bb.mm ], [ %i.asg, %session_process_origin_frame.exit.thread1309.split.loop.exit1678 ], [ %i.ahb, %bb.mq ], [ %spec.select1047, %inbound_frame_compute_pad.exit1079.thread ], [ %spec.select1045, %bb.dz ], [ %i.ek, %bb.x ], [ %i.aod, %bb.oz ], [ %spec.select1044, %bb.cj ], [ %i.aiu, %bb.nc ], [ %i.aix, %bb.ne ], [ %i.dt, %bb.r ], [ %i.ajz, %nghttp2_session_consume.exit.thread1269 ], [ %i.kp, %bb.ed ], [ %i.akr, %bb.nq ], [ %spec.select1042, %bb.bt ], [ %i.ee, %nghttp2_session_terminate_session_with_reason.exit ], [ %i.kg, %bb.dv ], [ %i.als, %session_update_glitch_ratelim.exit ], [ %spec.select1049, %bb.ns ], [ %i.acy, %session_after_header_block_received.exit.thread1236 ], [ %i.aox, %bb.pl ], [ %i.jp, %bb.dg ], [ %i.aph, %bb.pq ], [ -902, %session_call_unpack_extension_callback.exit.i ], [ %i.apq, %bb.pu ], [ %i.xy, %.loopexit ], [ %i.jw, %bb.dn ], [ %i.yg, %bb.iw ], [ %i.jg, %bb.cy ], [ %i.yo, %bb.iy ], [ %i.jb, %bb.ct ], [ %i.aot, %bb.ph ], [ %i.kx, %bb.ej ], [ %i.gm, %bb.bg ], [ -902, %bb.qz ], [ %2, %session_process_origin_frame.exit.thread ], [ -903, %bb.f ], [ %2, %bb.qq ], [ %2, %bb.fd ], [ %2, %bb.fj ], [ %2, %bb.fp ], [ %2, %bb.fy ], [ %2, %bb.gg ], [ %2, %bb.gn ], [ -901, %bb.gs ], [ %2, %bb.gx ], [ %2, %bb.me ], [ %2, %bb.mn ], [ %2, %bb.qh ], [ -902, %bb.en ], [ -905, %bb.mv ], [ %2, %bb.mz ], [ %2, %bb.nf ], [ %2, %nghttp2_session_consume.exit.thread ], [ %2, %bb.nr ], [ %2, %bb.iu ], [ %2, %bb.oa ], [ %2, %bb.pm ], [ %2, %bb.pr ], [ %2, %bb.pv ], [ -902, %bb.my ], [ %2, %.critedge ], [ -902, %session_call_on_extension_chunk_recv_callback.exit ], [ %2, %bb.qa ], [ -901, %bb.gj ], [ -901, %bb.bu ], [ %2, %bb.au ], [ %2, %bb.ar ], [ %2, %bb.ba ], [ %2, %bb.km ], [ %2, %bb.ah ], [ %2, %bb.y ], [ %2, %bb.dw ], [ -901, %bb.dr ], [ %2, %bb.cz ], [ %2, %bb.do ], [ %2, %bb.dh ], [ %2, %bb.cu ], [ %2, %bb.co ], [ %2, %bb.ee ], [ %2, %bb.bh ], [ %2, %bb.ek ], [ -902, %bb.aq ], [ -904, %bb.bq ], [ %2, %bb.eo ], [ %2, %session_after_header_block_received.exit.thread ], [ -902, %bb.pe ], [ %2, %bb.pc ], [ %2, %bb.ox ], [ %2, %bb.oq ], [ %2, %bb.om ], [ %2, %bb.oh ], [ %2, %bb.pf ], [ -902, %bb.qg ], [ %2, %.thread1188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.11
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @nghttp2_session_want_read(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.f = load i64, ptr %i.e, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.h = load i64, ptr %i.g, align 8, !tbaa !95
  %i.i = add i64 %i.h, %i.f
  %.not4 = icmp eq i64 %i.d, %i.i
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 4, !tbaa !41
  %i.k = and i8 %i.j, 12
  %i.l = icmp eq i8 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -902, 1) i32 @session_call_error_callback(ptr noundef %0, i32 noundef range(i32 -536, -530) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 3 uses
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.f = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.e, i64 noundef %i.i) #15 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.l = call i32 @vsnprintf(ptr noundef nonnull %i.j, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %3) #15 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @nghttp2_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !284  ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = call i32 %i.o(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.j, i64 noundef %i.p, ptr noundef %i.r) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.u = zext nneg i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.x = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.u, ptr noundef %i.w) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.s, %bb.h ], [ %i.x, %bb.i ]
  call void @nghttp2_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #15
  %.not37 = icmp eq i32 %.0, 0
  %. = select i1 %.not37, i32 0, i32 -902
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d, %bb.c, %bb.b, %bb.f
  %.030 = phi i32 [ 0, %bb.b ], [ -901, %bb.c ], [ 0, %bb.f ], [ %., %bb.j ], [ -901, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.030
}

declare void @nghttp2_frame_unpack_frame_hd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @session_on_data_received_fail_fast(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 6 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %session_detect_idle_stream.exit.thread45, label %nghttp2_session_is_my_stream_id.exit.i

nghttp2_session_is_my_stream_id.exit.i:           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2739 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !44
  %i.f = trunc i32 %i.b to i1                     ; 2 uses
  %i.g = icmp eq i8 %i.e, 0
  %.not.i = xor i1 %i.g, %i.f
  br i1 %.not.i, label %session_is_new_peer_stream_id.exit.i, label %session_detect_idle_stream.exit

session_is_new_peer_stream_id.exit.i:             ; preds = %nghttp2_session_is_my_stream_id.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.i = load i32, ptr %i.h, align 8, !tbaa !100
  %.fr.i = freeze i32 %i.i
  %.not13.i = icmp slt i32 %.fr.i, %i.b
  br i1 %.not13.i, label %session_detect_idle_stream.exit.thread45, label %session_detect_idle_stream.exit.thread

session_detect_idle_stream.exit:                  ; preds = %nghttp2_session_is_my_stream_id.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113
  %.not = icmp slt i32 %i.k, %i.b
  br i1 %.not, label %session_detect_idle_stream.exit.thread45, label %session_detect_idle_stream.exit.thread

session_detect_idle_stream.exit.thread:           ; preds = %session_is_new_peer_stream_id.exit.i, %session_detect_idle_stream.exit
  %i.l = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.b) #15 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %session_detect_idle_stream.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.o = load i8, ptr %i.n, align 4, !tbaa !48
  %i.p = and i8 %i.o, 2
  %.not.i38 = icmp eq i8 %i.p, 0
  br i1 %.not.i38, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.l, align 8, !tbaa !49   ; 3 uses
  %i.r = icmp eq i32 %i.q, 5
  br i1 %i.r, label %select.unfold, label %nghttp2_session_get_stream.exit

select.unfold:                                    ; preds = %bb.c, %session_detect_idle_stream.exit.thread, %bb.b
  %i.s = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.b) #15 ; 2 uses
  %.not32 = icmp eq ptr %i.s, null
  br i1 %.not32, label %bb.j, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 117
  %i.u = load i8, ptr %i.t, align 1, !tbaa !105
  %i.v = and i8 %i.u, 1
  %.not33 = icmp eq i8 %i.v, 0
  br i1 %.not33, label %bb.j, label %session_detect_idle_stream.exit.thread45

nghttp2_session_get_stream.exit:                  ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 117
  %i.x = load i8, ptr %i.w, align 1, !tbaa !105
  %i.y = and i8 %i.x, 1
  %.not34 = icmp eq i8 %i.y, 0
  br i1 %.not34, label %nghttp2_session_is_my_stream_id.exit, label %session_detect_idle_stream.exit.thread45

nghttp2_session_is_my_stream_id.exit:             ; preds = %nghttp2_session_get_stream.exit
  %i.z = load i8, ptr %i.d, align 1, !tbaa !44
  %i.aa = icmp eq i8 %i.z, 0
  %.not35 = xor i1 %i.aa, %i.f
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nghttp2_session_is_my_stream_id.exit
  switch i32 %i.q, label %session_detect_idle_stream.exit.thread45 [
    i32 3, label %bb.j
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %nghttp2_session_is_my_stream_id.exit
  switch i32 %i.q, label %bb.g [
    i32 4, label %session_detect_idle_stream.exit.thread45
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.e, %bb.f
  br label %bb.j

session_detect_idle_stream.exit.thread45:         ; preds = %session_is_new_peer_stream_id.exit.i, %bb.f, %bb.e, %nghttp2_session_get_stream.exit, %bb.d, %session_detect_idle_stream.exit, %bb.a
end_hunk_1
