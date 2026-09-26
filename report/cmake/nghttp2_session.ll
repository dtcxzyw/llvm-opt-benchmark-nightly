Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/nghttp2_session?download=true
inline.NumInlined: 522
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@nghttp2_session_update_recv_stream_window_size:bb.a

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2724 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !42
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2604
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 15, ptr %i.o, align 8, !tbaa !44
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !42
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !42
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !56
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %nghttp2_session_terminate_session.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  %i.v = and i32 %i.u, 1
  %.not18 = icmp eq i32 %i.v, 0
  br i1 %.not18, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 119
  %i.x = load i8, ptr %i.w, align 1, !tbaa !94
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %nghttp2_session_terminate_session.exit

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #18
  %.not19 = icmp eq i32 %i.z, 0
  br i1 %.not19, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !107
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !155
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.ae = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ad, i64 noundef 160) #18 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %nghttp2_session_terminate_session.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ae) #18
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ae, i8 noundef zeroext 0, i32 noundef %i.ab, i32 noundef %i.ac) #18
  %i.ag = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ae) #18
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #18
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.i
  store i32 0, ptr %i.a, align 8, !tbaa !155
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.j, %bb.h, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %bb.g, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ag, %bb.j ], [ -901, %bb.h ]
  ret i32 %.0
}

declare i32 @nghttp2_should_send_window_update(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_add_window_update(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.b = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.a, i64 noundef 160) #18 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.b) #18
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #18
  %i.d = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.b) #18
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55   ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !56   ; 3 uses
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  %i.h = sub nsw i32 2147483647, %i.e
  %i.i = icmp sgt i32 %i.d, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2724 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !42
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2604
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 15, ptr %i.o, align 8, !tbaa !44
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !42
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !42
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  %i.v = and i32 %i.u, 1
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2725
  %i.x = load i8, ptr %i.w, align 1, !tbaa !95
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #18
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %nghttp2_session_terminate_session.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !156
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.ac = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ab, i64 noundef 160) #18 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ac) #18
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ac, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %i.aa) #18
  %i.ae = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ac) #18
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #18
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
  %4 = alloca %struct.nghttp2_hd_nv, align 8      ; 17 uses
  %5 = alloca %struct.nghttp2_frame_hd, align 8   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.d = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.d, ptr @static_in, ptr %1 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2724 ; 16 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.b, label %nghttp2_session_want_read.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.n = load i64, ptr %i.m, align 8, !tbaa !99
  %i.o = add i64 %i.n, %i.l
  %.not4.i = icmp eq i64 %i.j, %i.o
  br i1 %.not4.i, label %nghttp2_session_want_read.exit, label %.critedge.preheader

nghttp2_session_want_read.exit:                   ; preds = %bb.b
  %i.p = load i8, ptr %i.g, align 4, !tbaa !42
  %i.q = and i8 %i.p, 12
  %.not1600 = icmp eq i8 %i.q, 0
  br i1 %.not1600, label %.critedge.preheader, label %nghttp2_session_want_read.exit.thread

.critedge.preheader:                              ; preds = %nghttp2_session_want_read.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 102 uses
  %i.s = getelementptr i8, ptr %0, i64 720        ; 51 uses
  %i.t = ptrtoint ptr %i.e to i64                 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 14 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2320 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 7 uses
  %i.ad = getelementptr i8, ptr %0, i64 2708      ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2628 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2725 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2636 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 14 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 525 ; 30 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 44 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2288 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 18 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1948
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2723 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2692
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2726
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2716 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.thread1168
  %.0818 = phi ptr [ %.8826, %.thread1168 ], [ %spec.store.select, %.critedge.preheader ] ; 50 uses
  %i.bx = load i32, ptr %i.r, align 8, !tbaa !71
  switch i32 %i.bx, label %.thread1168 [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.n
    i32 3, label %bb.en
    i32 4, label %bb.gx
    i32 5, label %bb.gx
    i32 6, label %bb.ko
    i32 7, label %bb.ks
    i32 8, label %bb.kt
    i32 9, label %bb.lk
    i32 10, label %bb.lr
    i32 11, label %bb.lr
    i32 12, label %bb.mc
    i32 13, label %bb.nd
    i32 14, label %bb.of
    i32 15, label %nghttp2_session_want_read.exit.thread
    i32 18, label %bb.op
    i32 16, label %bb.ox
    i32 17, label %bb.pd
  ]

bb.c:                                             ; preds = %.critedge
  %i.by = load i64, ptr %i.s, align 8, !tbaa !72  ; 4 uses
  %i.bz = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.by) ; 3 uses
  %i.ca = sub i64 24, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.ca
  %bcmp = call i32 @bcmp(ptr nonnull %i.cb, ptr %.0818, i64 %i.bz)
  %.not995 = icmp eq i32 %bcmp, 0
  br i1 %.not995, label %bb.d, label %nghttp2_session_want_read.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.cc = sub nuw i64 %i.by, %i.bz
  store i64 %i.cc, ptr %i.s, align 8, !tbaa !72
  %i.cd = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.bz ; 2 uses
  %.not1287 = icmp ugt i64 %i.by, %2
  br i1 %.not1287, label %.thread1168, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i32 1, ptr %i.r, align 8, !tbaa !71
  br label %.thread1168

bb.f:                                             ; preds = %.critedge
  %i.ce = ptrtoint ptr %.0818 to i64
  %i.cf = sub i64 %i.t, %i.ce
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ch = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ck) ; 2 uses
  %i.cm = call ptr @nghttp2_cpymem(ptr noundef %i.ch, ptr noundef %.0818, i64 noundef %i.cl) #18 ; 2 uses
  store ptr %i.cm, ptr %i.an, align 8, !tbaa !256
  %i.cn = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.cl ; 2 uses
  %i.co = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not944 = icmp eq ptr %i.co, %i.cm
  br i1 %.not944, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %spec.store.select to i64
  %i.cr = sub i64 %i.cp, %i.cq
  br label %nghttp2_session_want_read.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !157 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !83
  %.not945 = icmp eq i8 %i.cu, 4
  br i1 %.not945, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !83
  %i.cx = and i8 %i.cw, 1
  %.not946 = icmp eq i8 %i.cx, 0
  br i1 %.not946, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cy = call i32 (ptr, i32, ptr, ...) @session_call_error_callback(ptr noundef nonnull %0, i32 noundef -536, ptr noundef nonnull @.str.37) ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, -901
  br i1 %i.cz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = sext i32 %i.cy to i64
  br label %nghttp2_session_want_read.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.db = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.38) ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -901
  %i.dd = sext i32 %i.db to i64
  %spec.select = select i1 %i.dc, i64 %2, i64 %i.dd
  br label %nghttp2_session_want_read.exit.thread

bb.m:                                             ; preds = %bb.i
  store i32 2, ptr %i.r, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge
  %.1819 = phi ptr [ %i.cn, %bb.m ], [ %.0818, %.critedge ] ; 3 uses
  %i.de = ptrtoint ptr %.1819 to i64
  %i.df = sub i64 %i.t, %i.de
  %i.dg = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.dh = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = call noundef i64 @llvm.umin.i64(i64 %i.df, i64 %i.dk) ; 2 uses
  %i.dm = call ptr @nghttp2_cpymem(ptr noundef %i.dh, ptr noundef %.1819, i64 noundef %i.dl) #18 ; 2 uses
  store ptr %i.dm, ptr %i.an, align 8, !tbaa !256
  %i.dn = getelementptr inbounds nuw i8, ptr %.1819, i64 %i.dl ; 29 uses
  %i.do = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not947 = icmp eq ptr %i.do, %i.dm
  br i1 %.not947, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %spec.store.select to i64
  %i.dr = sub i64 %i.dp, %i.dq
  br label %nghttp2_session_want_read.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %i.c, ptr noundef %i.ds) #18
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !83  ; 16 uses
  store i64 %i.dt, ptr %i.s, align 8, !tbaa !72
  %i.du = load i32, ptr %i.bq, align 4, !tbaa !145
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp ugt i64 %i.dt, %i.dv
  br i1 %i.dw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dx = load i8, ptr %i.g, align 4, !tbaa !42
  %i.dy = and i8 %i.dx, 1
  %.not.i.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i, label %bb.r, label %nghttp2_session_terminate_session_with_reason.exit1072.thread

bb.r:                                             ; preds = %bb.q
  %i.dz = load i32, ptr %i.ap, align 4, !tbaa !43
  store i32 15, ptr %i.r, align 8, !tbaa !44
  %i.ea = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.dz, i32 noundef 6, ptr noundef nonnull readonly @.str.39, i64 noundef 20, i8 noundef zeroext 1)
  %.fr2177 = freeze i32 %i.ea                     ; 3 uses
  %.not17.i.i = icmp eq i32 %.fr2177, 0
  br i1 %.not17.i.i, label %nghttp2_session_terminate_session_with_reason.exit1072.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit

nghttp2_session_terminate_session_with_reason.exit: ; preds = %bb.r
  %i.eb = icmp sgt i32 %.fr2177, -901
  %i.ec = sext i32 %.fr2177 to i64
  br i1 %i.eb, label %nghttp2_session_terminate_session_with_reason.exit1072.thread, label %nghttp2_session_want_read.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.ed = load i8, ptr %i.bb, align 4, !tbaa !83  ; 3 uses
  switch i8 %i.ed, label %bb.cj [
    i8 0, label %bb.t
    i8 1, label %bb.ai
    i8 2, label %bb.bc
    i8 3, label %bb.bi
    i8 8, label %bb.bi
    i8 4, label %bb.bl
    i8 5, label %bb.bw
    i8 6, label %bb.cc
    i8 7, label %bb.cf
    i8 9, label %bb.ci
  ]

bb.t:                                             ; preds = %bb.s
  %i.ee = load i8, ptr %i.aj, align 1, !tbaa !83
  %i.ef = and i8 %i.ee, 9
  store i8 %i.ef, ptr %i.aj, align 1, !tbaa !83
end_hunk_0
begin_hunk_1_@nghttp2_session_mem_recv2:bb.a
  %i.aao = load i32, ptr %i.be, align 8, !tbaa !83
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.kc, label %session_update_stream_priority.exit.thread.i.i

bb.kc:                                            ; preds = %bb.kb
  %i.aaq = load i8, ptr %i.za, align 4, !tbaa !49
  %i.aar = and i8 %i.aaq, 32
  %.not18.i.i = icmp eq i8 %i.aar, 0
  br i1 %.not18.i.i, label %bb.kd, label %session_update_stream_priority.exit.thread.i.i

bb.kd:                                            ; preds = %bb.kc
  %i.aas = getelementptr inbounds nuw i8, ptr %i.yy, i64 112
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !158
  %i.aau = and i32 %i.aat, 65536
  %.not19.i.i = icmp eq i32 %i.aau, 0
  br i1 %.not19.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aav = getelementptr inbounds nuw i8, ptr %i.yy, i64 121
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !275 ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.yy, i64 120 ; 3 uses
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !87 ; 2 uses
  %i.aaz = icmp eq i8 %i.aay, %i.aaw
  br i1 %i.aaz, label %session_update_stream_priority.exit.thread.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.aba = getelementptr inbounds nuw i8, ptr %i.yy, i64 118 ; 3 uses
  %i.abb = load i8, ptr %i.aba, align 2, !tbaa !90
  %.not.i.i51.i = icmp eq i8 %i.abb, 0
  br i1 %.not.i.i51.i, label %bb.kl, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.abc = and i8 %i.aay, 127
  %i.abd = zext nneg i8 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 2 uses
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.abe, ptr noundef nonnull %i.abf) #18
  store i8 0, ptr %i.aba, align 2, !tbaa !90
  store i8 %i.aaw, ptr %i.aax, align 8, !tbaa !87
  %i.abg = and i8 %i.aaw, 127
  %.not.i.i.i.i = icmp sgt i8 %i.aaw, -1
  %i.abh = zext nneg i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.abh ; 3 uses
  %i.abj = call i32 @nghttp2_pq_empty(ptr noundef nonnull %i.abi) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.abj, 0
  br i1 %.not.i.i.i.i.i, label %bb.kh, label %pq_get_first_cycle.exit.i.i.i.i

bb.kh:                                            ; preds = %bb.kg
  %i.abk = call ptr @nghttp2_pq_top(ptr noundef nonnull %i.abi) #18
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 24
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !88
  br label %pq_get_first_cycle.exit.i.i.i.i

pq_get_first_cycle.exit.i.i.i.i:                  ; preds = %bb.kh, %bb.kg
  %.0.i.i.i.i.i = phi i64 [ %i.abm, %bb.kh ], [ 0, %bb.kg ] ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.yy, i64 32 ; 2 uses
  store i64 %.0.i.i.i.i.i, ptr %i.abn, align 8, !tbaa !88
  br i1 %.not.i.i.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %pq_get_first_cycle.exit.i.i.i.i
  %i.abo = getelementptr inbounds nuw i8, ptr %i.yy, i64 72
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !89
  %i.abq = add i64 %i.abp, %.0.i.i.i.i.i
  store i64 %i.abq, ptr %i.abn, align 8, !tbaa !88
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %pq_get_first_cycle.exit.i.i.i.i
  %i.abr = call i32 @nghttp2_pq_push(ptr noundef nonnull %i.abi, ptr noundef nonnull %i.abf) #18 ; 2 uses
  %.not15.i.i.i.i = icmp eq i32 %i.abr, 0
  br i1 %.not15.i.i.i.i, label %bb.kk, label %session_after_header_block_received.exit

bb.kk:                                            ; preds = %bb.kj
  store i8 1, ptr %i.aba, align 2, !tbaa !90
  br label %session_update_stream_priority.exit.thread.i.i

bb.kl:                                            ; preds = %bb.kf
  store i8 %i.aaw, ptr %i.aax, align 8, !tbaa !87
  br label %session_update_stream_priority.exit.thread.i.i

session_update_stream_priority.exit.thread.i.i:   ; preds = %bb.kl, %bb.kk, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %i.abs = load i8, ptr %i.aj, align 1, !tbaa !83
  %i.abt = and i8 %i.abs, 1
  %i.abu = icmp eq i8 %i.abt, 0
  br i1 %i.abu, label %session_after_header_block_received.exit.thread, label %bb.km

bb.km:                                            ; preds = %session_update_stream_priority.exit.thread.i.i
  call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.yy, i32 noundef 1) #18
  %i.abv = getelementptr inbounds nuw i8, ptr %i.yy, i64 117
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !108
  %i.abx = and i8 %i.abw, 3
  %i.aby = icmp eq i8 %i.abx, 3
  br i1 %i.aby, label %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, label %session_after_header_block_received.exit.thread

nghttp2_session_close_stream_if_shut_rdwr.exit.i.i: ; preds = %bb.km
  %i.abz = getelementptr inbounds nuw i8, ptr %i.yy, i64 80
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !107
  %i.acb = call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %i.aca, i32 noundef 0)
  %.fr.i.i = freeze i32 %i.acb                    ; 2 uses
  %i.acc = icmp sgt i32 %.fr.i.i, -901
  br i1 %i.acc, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1206

session_after_header_block_received.exit:         ; preds = %bb.jv, %bb.kj
  %.033.i = phi i32 [ %i.aaf, %bb.jv ], [ %i.abr, %bb.kj ] ; 2 uses
  %i.acd = icmp sgt i32 %.033.i, -901
  br i1 %i.acd, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1206

session_after_header_block_received.exit.thread1206: ; preds = %bb.jx, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %session_after_header_block_received.exit
  %.033.i1209 = phi i32 [ %.033.i, %session_after_header_block_received.exit ], [ -902, %bb.jx ], [ %.fr.i.i, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i ]
  %i.ace = sext i32 %.033.i1209 to i64
  br label %nghttp2_session_want_read.exit.thread

session_after_header_block_received.exit.thread:  ; preds = %bb.km, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %bb.jf, %bb.je, %session_update_stream_priority.exit.thread.i.i, %.thread62.i, %bb.jw, %bb.jg, %bb.jg, %bb.jy, %session_after_header_block_received.exit
  %i.acf = load i32, ptr %i.r, align 8, !tbaa !71
  %i.acg = icmp eq i32 %i.acf, 15
  br i1 %i.acg, label %nghttp2_session_want_read.exit.thread, label %bb.kn

bb.kn:                                            ; preds = %session_after_header_block_received.exit.thread, %bb.jd
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i64 0, ptr %i.aq, align 8, !tbaa !276
  br label %.thread1168

bb.ko:                                            ; preds = %.critedge
  %.val1020 = load i64, ptr %i.s, align 8, !tbaa !72 ; 3 uses
  %i.ach = ptrtoint ptr %.0818 to i64
  %i.aci = sub i64 %i.t, %i.ach                   ; 2 uses
  %i.acj = call noundef i64 @llvm.umin.i64(i64 %i.aci, i64 %.val1020) ; 2 uses
  %i.ack = sub nuw i64 %.val1020, %i.acj
  store i64 %i.ack, ptr %i.s, align 8, !tbaa !72
  %i.acl = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.acj ; 2 uses
  %.not922.not = icmp ugt i64 %.val1020, %i.aci
  br i1 %.not922.not, label %.thread1168, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.acm = load i8, ptr %i.bb, align 4, !tbaa !83
  switch i8 %i.acm, label %bb.kr [
    i8 1, label %bb.kq
    i8 5, label %bb.kq
    i8 9, label %bb.kq
  ]

bb.kq:                                            ; preds = %bb.kp, %bb.kp, %bb.kp
  store i8 1, ptr %i.bc, align 4, !tbaa !277
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kp, %bb.kq
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1168

bb.ks:                                            ; preds = %.critedge
  %i.acn = call fastcc i32 @session_handle_frame_size_error(ptr noundef nonnull %0) ; 2 uses
  %i.aco = icmp sgt i32 %i.acn, -901
  %i.acp = sext i32 %i.acn to i64
  %spec.select1010 = select i1 %i.aco, i64 %2, i64 %i.acp
  br label %nghttp2_session_want_read.exit.thread

bb.kt:                                            ; preds = %.critedge
  %i.acq = ptrtoint ptr %.0818 to i64
  %i.acr = sub i64 %i.t, %i.acq
  %i.acs = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.act = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %i.acu = ptrtoint ptr %i.acs to i64
  %i.acv = ptrtoint ptr %i.act to i64
  %i.acw = sub i64 %i.acu, %i.acv
  %i.acx = call noundef i64 @llvm.umin.i64(i64 %i.acr, i64 %i.acw) ; 4 uses
  %i.acy = call ptr @nghttp2_cpymem(ptr noundef %i.act, ptr noundef %.0818, i64 noundef %i.acx) #18 ; 2 uses
  store ptr %i.acy, ptr %i.an, align 8, !tbaa !256
  %i.acz = load i64, ptr %i.s, align 8, !tbaa !72
  %i.ada = sub i64 %i.acz, %i.acx                 ; 2 uses
  store i64 %i.ada, ptr %i.s, align 8, !tbaa !72
  %i.adb = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.acx ; 3 uses
  %i.adc = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not917 = icmp eq ptr %i.adc, %i.acy
  br i1 %.not917, label %bb.ku, label %.thread1168

bb.ku:                                            ; preds = %bb.kt
  %.not918 = icmp eq i64 %i.acx, 0
  br i1 %.not918, label %bb.lb, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.add = load ptr, ptr %i.y, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_settings_entry(ptr noundef nonnull %3, ptr noundef %i.add) #18
  %i.ade = load i32, ptr %3, align 8, !tbaa !138  ; 2 uses
  switch i32 %i.ade, label %bb.kw [
    i32 1, label %bb.kx
    i32 2, label %bb.kx
    i32 3, label %bb.kx
    i32 4, label %bb.kx
    i32 5, label %bb.kx
    i32 6, label %bb.kx
    i32 8, label %bb.kx
    i32 9, label %bb.kx
  ]

bb.kw:                                            ; preds = %bb.kv
  %i.adf = load ptr, ptr %i.ax, align 8, !tbaa !84
  %i.adg = load i64, ptr %i.aw, align 8, !tbaa !278 ; 2 uses
  %i.adh = add i64 %i.adg, 1
  store i64 %i.adh, ptr %i.aw, align 8, !tbaa !278
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.adg
  %i.adj = load i64, ptr %3, align 8, !tbaa !56
  store i64 %i.adj, ptr %i.adi, align 4, !tbaa !56
  br label %inbound_frame_set_settings_entry.exit

bb.kx:                                            ; preds = %bb.kv, %bb.kv, %bb.kv, %bb.kv, %bb.kv, %bb.kv, %bb.kv, %bb.kv
  %i.adk = load i64, ptr %i.aw, align 8, !tbaa !278 ; 4 uses
  %.not.i1061 = icmp eq i64 %i.adk, 0
  %.pre1830 = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 3 uses
  br i1 %.not.i1061, label %.loopexit.i.a, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.kx, %bb.ky
  %.025.i = phi i64 [ %i.ado, %bb.ky ], [ 0, %bb.kx ] ; 3 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %.pre1830, i64 %.025.i
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !138
  %i.adn = icmp eq i32 %i.adm, %i.ade
  br i1 %i.adn, label %.loopexit.thread.i, label %bb.ky

bb.ky:                                            ; preds = %.lr.ph.i
  %i.ado = add nuw i64 %.025.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ado, %i.adk
  br i1 %exitcond.not.i, label %.loopexit.i.a, label %.lr.ph.i, !llvm.loop !250

.loopexit.i.a:                                    ; preds = %bb.ky, %bb.kx
  %6 = add i64 %i.adk, 1
  store i64 %6, ptr %i.aw, align 8, !tbaa !278
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %.loopexit.i.a
  %.027.i.lcssa.sink = phi i64 [ %i.adk, %.loopexit.i.a ], [ %.025.i, %.lr.ph.i ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.pre1830, i64 %.027.i.lcssa.sink
  %8 = load i64, ptr %3, align 8, !tbaa !56
  store i64 %8, ptr %7, align 4, !tbaa !56
  %9 = load i32, ptr %3, align 8, !tbaa !138
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %bb.kz, label %inbound_frame_set_settings_entry.exit

bb.kz:                                            ; preds = %.loopexit.thread.i
  %i.adp = load i64, ptr %i.ay, align 8, !tbaa !261
  %i.adq = getelementptr [8 x i8], ptr %.pre1830, i64 %i.adp
  %i.adr = load i32, ptr %i.az, align 4, !tbaa !139 ; 2 uses
  %i.ads = getelementptr i8, ptr %i.adq, i64 -4   ; 2 uses
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !139
  %i.adu = icmp ult i32 %i.adr, %i.adt
  br i1 %i.adu, label %bb.la, label %inbound_frame_set_settings_entry.exit

bb.la:                                            ; preds = %bb.kz
  store i32 %i.adr, ptr %i.ads, align 4, !tbaa !139
  br label %inbound_frame_set_settings_entry.exit

inbound_frame_set_settings_entry.exit:            ; preds = %bb.kw, %.loopexit.thread.i, %bb.kz, %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre1831 = load i64, ptr %i.s, align 8, !tbaa !72
  br label %bb.lb

bb.lb:                                            ; preds = %inbound_frame_set_settings_entry.exit, %bb.ku
  %i.adv = phi i64 [ %.pre1831, %inbound_frame_set_settings_entry.exit ], [ %i.ada, %bb.ku ]
  %.not919 = icmp eq i64 %i.adv, 0
  br i1 %.not919, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.ba) #18
  %i.adw = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 6
  store ptr %i.adx, ptr %i.am, align 8, !tbaa !85
  br label %.thread1168

bb.ld:                                            ; preds = %bb.lb
  %i.ady = load i64, ptr %i.ay, align 8, !tbaa !261 ; 2 uses
  %.not.i1062 = icmp eq i64 %i.ady, 0
  %.pre.i1063 = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i1062, label %.session_process_settings_frame.exit_crit_edge, label %bb.le

.session_process_settings_frame.exit_crit_edge:   ; preds = %bb.ld
  %.pre1828 = load i64, ptr %i.aw, align 8, !tbaa !278
  br label %session_process_settings_frame.exit

bb.le:                                            ; preds = %bb.ld
  %i.adz = getelementptr [8 x i8], ptr %.pre.i1063, i64 %i.ady ; 2 uses
  %i.aea = getelementptr i8, ptr %i.adz, i64 -8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.adz, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !56 ; 2 uses
  %i.aeb = load <2 x i32>, ptr %i.aea, align 4, !tbaa !56
  %.not30.i = icmp eq i32 %.sroa.4.0.copyload.i, -1
  %.pre1829 = load i64, ptr %i.aw, align 8, !tbaa !278 ; 7 uses
  br i1 %.not30.i, label %session_process_settings_frame.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.le
  %.not38.i1064 = icmp eq i64 %.pre1829, 0
  br i1 %.not38.i1064, label %._crit_edge.i, label %.lr.ph.i1065

.lr.ph.i1065:                                     ; preds = %.preheader.i, %bb.lf
  %.033.i1066 = phi i64 [ %i.aef, %bb.lf ], [ 0, %.preheader.i ] ; 3 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.033.i1066
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !138
  %i.aee = icmp eq i32 %i.aed, 1
  br i1 %i.aee, label %._crit_edge.i, label %bb.lf

bb.lf:                                            ; preds = %.lr.ph.i1065
  %i.aef = add nuw i64 %.033.i1066, 1             ; 2 uses
  %exitcond.not.i1067 = icmp eq i64 %i.aef, %.pre1829
  br i1 %exitcond.not.i1067, label %._crit_edge.i, label %.lr.ph.i1065, !llvm.loop !251

._crit_edge.i:                                    ; preds = %bb.lf, %.lr.ph.i1065, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.pre1829, %bb.lf ], [ %.033.i1066, %.lr.ph.i1065 ]
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.0.lcssa.i ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !139
  %.not31.i = icmp eq i32 %.sroa.4.0.copyload.i, %i.aei
  br i1 %.not31.i, label %session_process_settings_frame.exit, label %bb.lg

bb.lg:                                            ; preds = %._crit_edge.i
  %i.aej = add i64 %.pre1829, 1                   ; 2 uses
  store i64 %i.aej, ptr %i.aw, align 8, !tbaa !278
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1063, i64 %.pre1829
  %i.ael = load i64, ptr %i.aeg, align 4, !tbaa !56
  store i64 %i.ael, ptr %i.aek, align 4, !tbaa !56
  store <2 x i32> %i.aeb, ptr %i.aeg, align 4, !tbaa !56
  br label %session_process_settings_frame.exit

session_process_settings_frame.exit:              ; preds = %.session_process_settings_frame.exit_crit_edge, %bb.le, %._crit_edge.i, %bb.lg
  %11 = phi i64 [ %.pre1828, %.session_process_settings_frame.exit_crit_edge ], [ %.pre1829, %bb.le ], [ %.pre1829, %._crit_edge.i ], [ %i.aej, %bb.lg ]
  call void @nghttp2_frame_unpack_settings_payload(ptr noundef nonnull %i.c, ptr noundef %.pre.i1063, i64 noundef %11) #18
  store ptr null, ptr %i.ax, align 8, !tbaa !84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.aem = call i32 @nghttp2_session_on_settings_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.aen = icmp sgt i32 %i.aem, -901
  br i1 %i.aen, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %session_process_settings_frame.exit
  %i.aeo = sext i32 %i.aem to i64
  br label %nghttp2_session_want_read.exit.thread

bb.li:                                            ; preds = %session_process_settings_frame.exit
  %i.aep = load i32, ptr %i.r, align 8, !tbaa !71
  %i.aeq = icmp eq i32 %i.aep, 15
  br i1 %i.aeq, label %nghttp2_session_want_read.exit.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1168

bb.lk:                                            ; preds = %.critedge
  %.val1019 = load i64, ptr %i.s, align 8, !tbaa !72 ; 2 uses
  %i.aer = ptrtoint ptr %.0818 to i64
  %i.aes = sub i64 %i.t, %i.aer
  %i.aet = call noundef i64 @llvm.umin.i64(i64 %i.aes, i64 %.val1019) ; 4 uses
  %.not914 = icmp eq i64 %i.aet, 0
  br i1 %.not914, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.aeu = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.aev = call ptr @nghttp2_cpymem(ptr noundef %i.aeu, ptr noundef %.0818, i64 noundef %i.aet) #18
  store ptr %i.aev, ptr %i.u, align 8, !tbaa !279
  %i.aew = load i64, ptr %i.s, align 8, !tbaa !72
  %i.aex = sub i64 %i.aew, %i.aet                 ; 2 uses
  store i64 %i.aex, ptr %i.s, align 8, !tbaa !72
  %i.aey = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.aet
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lk, %bb.ll
  %i.aez = phi i64 [ %i.aex, %bb.ll ], [ %.val1019, %bb.lk ]
  %.5823 = phi ptr [ %i.aey, %bb.ll ], [ %.0818, %bb.lk ] ; 2 uses
  %.not915 = icmp eq i64 %i.aez, 0
  br i1 %.not915, label %bb.ln, label %.thread1168

bb.ln:                                            ; preds = %bb.lm
  %i.afa = load ptr, ptr %i.y, align 8, !tbaa !157
  %i.afb = load ptr, ptr %i.v, align 8, !tbaa !280 ; 2 uses
  %i.afc = load ptr, ptr %i.u, align 8, !tbaa !279
  %i.afd = ptrtoint ptr %i.afc to i64
  %i.afe = ptrtoint ptr %i.afb to i64
  %i.aff = sub i64 %i.afd, %i.afe
  call void @nghttp2_frame_unpack_goaway_payload(ptr noundef nonnull %i.c, ptr noundef %i.afa, ptr noundef %i.afb, i64 noundef %i.aff) #18
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.z, ptr noundef null, i64 noundef 0) #18
  %i.afg = call i32 @nghttp2_session_on_goaway_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, -901
  br i1 %i.afh, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.afi = sext i32 %i.afg to i64
  br label %nghttp2_session_want_read.exit.thread

bb.lp:                                            ; preds = %bb.ln
  %i.afj = load i32, ptr %i.r, align 8, !tbaa !71
  %i.afk = icmp eq i32 %i.afj, 15
  br i1 %i.afk, label %nghttp2_session_want_read.exit.thread, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1168

bb.lr:                                            ; preds = %.critedge, %.critedge
  %i.afl = load i64, ptr %i.aq, align 8, !tbaa !276
  %i.afm = add i64 %i.afl, 1                      ; 2 uses
  store i64 %i.afm, ptr %i.aq, align 8, !tbaa !276
  %i.afn = load i64, ptr %i.ar, align 8, !tbaa !64
  %i.afo = icmp ugt i64 %i.afm, %i.afn
  br i1 %i.afo, label %nghttp2_session_want_read.exit.thread, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.afp = ptrtoint ptr %.0818 to i64
  %i.afq = sub i64 %i.t, %i.afp
  %i.afr = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.afs = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = sub i64 %i.aft, %i.afu
  %i.afw = call noundef i64 @llvm.umin.i64(i64 %i.afq, i64 %i.afv) ; 2 uses
  %i.afx = call ptr @nghttp2_cpymem(ptr noundef %i.afs, ptr noundef %.0818, i64 noundef %i.afw) #18 ; 2 uses
  store ptr %i.afx, ptr %i.an, align 8, !tbaa !256
  %i.afy = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.afw ; 4 uses
  %i.afz = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not909 = icmp eq ptr %i.afz, %i.afx
  br i1 %.not909, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = ptrtoint ptr %spec.store.select to i64
  %i.agc = sub i64 %i.aga, %i.agb
  br label %nghttp2_session_want_read.exit.thread

bb.lu:                                            ; preds = %bb.ls
  %i.agd = load ptr, ptr %i.y, align 8, !tbaa !157
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %5, ptr noundef %i.agd) #18
  %i.age = load i64, ptr %5, align 8, !tbaa !259  ; 2 uses
  store i64 %i.age, ptr %i.s, align 8, !tbaa !72
  %i.agf = load i8, ptr %i.as, align 4, !tbaa !281
  %.not910 = icmp eq i8 %i.agf, 9
  br i1 %.not910, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.agg = load i32, ptr %i.at, align 8, !tbaa !282
  %i.agh = load i32, ptr %i.ai, align 8, !tbaa !83
  %.not911 = icmp eq i32 %i.agg, %i.agh
  br i1 %.not911, label %bb.ly, label %bb.lw

bb.lw:                                            ; preds = %bb.lu, %bb.lv
  %i.agi = load i8, ptr %i.g, align 4, !tbaa !42
  %i.agj = and i8 %i.agi, 1
  %.not.i.i1068 = icmp eq i8 %i.agj, 0
  br i1 %.not.i.i1068, label %bb.lx, label %nghttp2_session_terminate_session_with_reason.exit1072.thread

bb.lx:                                            ; preds = %bb.lw
  %i.agk = load i32, ptr %i.ap, align 4, !tbaa !43
  store i32 15, ptr %i.r, align 8, !tbaa !44
  %i.agl = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.agk, i32 noundef 1, ptr noundef nonnull readonly @.str.48, i64 noundef 57, i8 noundef zeroext 1)
  %.fr = freeze i32 %i.agl                        ; 3 uses
  %.not17.i.i1071 = icmp eq i32 %.fr, 0
  br i1 %.not17.i.i1071, label %nghttp2_session_terminate_session_with_reason.exit1072.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit1072

nghttp2_session_terminate_session_with_reason.exit1072: ; preds = %bb.lx
  %i.agm = icmp sgt i32 %.fr, -901
  %i.agn = sext i32 %.fr to i64
  br i1 %i.agm, label %nghttp2_session_terminate_session_with_reason.exit1072.thread, label %nghttp2_session_want_read.exit.thread

nghttp2_session_terminate_session_with_reason.exit1072.thread.sink.split: ; preds = %bb.lx, %bb.r
  %i.ago = load i8, ptr %i.g, align 4, !tbaa !42
  %i.agp = or i8 %i.ago, 1
  store i8 %i.agp, ptr %i.g, align 4, !tbaa !42
  br label %nghttp2_session_terminate_session_with_reason.exit1072.thread

nghttp2_session_terminate_session_with_reason.exit1072.thread: ; preds = %nghttp2_session_terminate_session_with_reason.exit1072.thread.sink.split, %nghttp2_session_terminate_session_with_reason.exit, %bb.q, %bb.lw, %nghttp2_session_terminate_session_with_reason.exit1072
  br label %nghttp2_session_want_read.exit.thread

bb.ly:                                            ; preds = %bb.lv
  %i.agq = load i8, ptr %i.aj, align 1, !tbaa !83
  %i.agr = load i8, ptr %i.au, align 1, !tbaa !258
  %i.ags = and i8 %i.agr, 4
  %i.agt = or i8 %i.ags, %i.agq
  store i8 %i.agt, ptr %i.aj, align 1, !tbaa !83
  %i.agu = load i64, ptr %i.c, align 8, !tbaa !83
  %i.agv = add i64 %i.agu, %i.age
  store i64 %i.agv, ptr %i.c, align 8, !tbaa !83
  %i.agw = load i32, ptr %i.r, align 8, !tbaa !71
  %i.agx = icmp eq i32 %i.agw, 10
  br i1 %i.agx, label %bb.lz, label %bb.mb

bb.lz:                                            ; preds = %bb.ly
  store i32 4, ptr %i.r, align 8, !tbaa !71
  %i.agy = load ptr, ptr %i.av, align 8, !tbaa !260 ; 2 uses
  %.not.i1073 = icmp eq ptr %i.agy, null
  br i1 %.not.i1073, label %.thread1168, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.agz = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.aha = call i32 %i.agy(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.agz) #18, !inline_history !245
  %.not7.i1074 = icmp eq i32 %i.aha, 0
  br i1 %.not7.i1074, label %.thread1168, label %nghttp2_session_want_read.exit.thread

bb.mb:                                            ; preds = %bb.ly
  store i32 5, ptr %i.r, align 8, !tbaa !71
  br label %.thread1168

bb.mc:                                            ; preds = %.critedge
  %i.ahb = ptrtoint ptr %.0818 to i64
  %i.ahc = sub i64 %i.t, %i.ahb
  %i.ahd = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ahe = load ptr, ptr %i.an, align 8, !tbaa !256 ; 2 uses
  %i.ahf = ptrtoint ptr %i.ahd to i64
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  %i.ahi = call noundef i64 @llvm.umin.i64(i64 %i.ahc, i64 %i.ahh) ; 7 uses
  %i.ahj = call ptr @nghttp2_cpymem(ptr noundef %i.ahe, ptr noundef %.0818, i64 noundef %i.ahi) #18 ; 2 uses
  store ptr %i.ahj, ptr %i.an, align 8, !tbaa !256
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0818, i64 %i.ahi ; 2 uses
  %i.ahl = load i64, ptr %i.s, align 8, !tbaa !72
  %i.ahm = sub i64 %i.ahl, %i.ahi
  store i64 %i.ahm, ptr %i.s, align 8, !tbaa !72
  %i.ahn = load ptr, ptr %i.am, align 8, !tbaa !85
  %.not901 = icmp eq ptr %i.ahn, %i.ahj
  br i1 %.not901, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.aho = ptrtoint ptr %i.ahk to i64
  %i.ahp = ptrtoint ptr %spec.store.select to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  br label %nghttp2_session_want_read.exit.thread

bb.me:                                            ; preds = %bb.mc
  %i.ahr = call i32 @nghttp2_session_update_recv_connection_window_size(ptr noundef nonnull %0, i64 noundef %i.ahi) ; 2 uses
  %i.ahs = icmp sgt i32 %i.ahr, -901
  br i1 %i.ahs, label %bb.mg, label %bb.mf
end_hunk_1
begin_hunk_2_@nghttp2_session_consume_connection
define dso_local i32 @nghttp2_session_consume_connection(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2628
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2725
  %i.g = load i8, ptr %i.f, align 1, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2636
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %nghttp2_session_get_stream.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %1) #18 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %nghttp2_session_get_stream.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.h = load i8, ptr %i.g, align 4, !tbaa !49
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_get_stream.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8, !tbaa !50
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %nghttp2_session_get_stream.exit.thread, label %nghttp2_session_get_stream.exit

nghttp2_session_get_stream.exit:                  ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 119
  %i.o = load i8, ptr %i.n, align 1, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !107
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
define dso_local range(i32 -501, 1) i32 @nghttp2_session_set_next_stream_id(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp ugt i32 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %.not = icmp eq i8 %i.f, 0
  %i.g = and i32 %1, 1
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %1, ptr %i.b, align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ -501, %bb.d ], [ -501, %bb.a ], [ 0, %bb.f ], [ -501, %bb.b ], [ -501, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @nghttp2_session_get_next_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @nghttp2_session_get_last_proc_stream_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2604
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nghttp2_session_find_stream(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @nghttp2_map_find(ptr noundef %0, i32 noundef %1) #18
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
  %i.b = load i8, ptr %i.a, align 1, !tbaa !45
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
  %i.b = tail call i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #18
  ret i64 %i.b
}

declare i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @nghttp2_session_get_hd_deflate_dynamic_table_size(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.b = tail call i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef nonnull %i.a) #18
  ret i64 %i.b
}

declare i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nghttp2_session_set_user_data(ptr nofree noundef writeonly captures(none) initializes((2400, 2408)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nghttp2_session_change_extpri_stream_priority(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.nghttp2_extpri, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load i64, ptr %2, align 4, !tbaa !56     ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.c = load i8, ptr %i.b, align 1, !tbaa !45
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %session_update_stream_priority.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2722
  %i.e = load i8, ptr %i.d, align 2, !tbaa !59
  %.not13 = icmp eq i8 %i.e, 1
  br i1 %.not13, label %bb.c, label %session_update_stream_priority.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %session_update_stream_priority.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %1) #18 ; 7 uses
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
  %i.j = load i8, ptr %i.i, align 4, !tbaa !49
  %i.k = or i8 %i.j, 32
  store i8 %i.k, ptr %i.i, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = call zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef nonnull %4) #18 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !87    ; 2 uses
  %i.o = icmp eq i8 %i.n, %i.l
  br i1 %i.o, label %session_update_stream_priority.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 118 ; 3 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !90
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = and i8 %i.n, 127
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = zext nneg i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #18
  store i8 0, ptr %i.p, align 2, !tbaa !90
  store i8 %i.l, ptr %i.m, align 8, !tbaa !87
  %i.w = and i8 %i.l, 127
  %.not.i.i = icmp sgt i8 %i.l, -1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.x ; 3 uses
  %i.z = call i32 @nghttp2_pq_empty(ptr noundef nonnull %i.y) #18
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.l, label %pq_get_first_cycle.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @nghttp2_pq_top(ptr noundef nonnull %i.y) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !88
  br label %pq_get_first_cycle.exit.i.i

pq_get_first_cycle.exit.i.i:                      ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i64 %.0.i.i.i, ptr %i.ad, align 8, !tbaa !88
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pq_get_first_cycle.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !89
  %i.ag = add i64 %i.af, %.0.i.i.i
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !88
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %pq_get_first_cycle.exit.i.i
  %i.ah = call i32 @nghttp2_pq_push(ptr noundef nonnull %i.y, ptr noundef nonnull %i.v) #18 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not15.i.i, label %bb.o, label %session_update_stream_priority.exit

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.p, align 2, !tbaa !90
  br label %session_update_stream_priority.exit

bb.p:                                             ; preds = %bb.j
  store i8 %i.l, ptr %i.m, align 8, !tbaa !87
  br label %session_update_stream_priority.exit

session_update_stream_priority.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -519, %bb.a ], [ 0, %bb.b ], [ -501, %bb.d ], [ -501, %bb.c ], [ 0, %bb.p ], [ 0, %bb.i ], [ %i.ah, %bb.n ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -519, 1) i32 @nghttp2_session_get_extpri_stream_priority(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2723
  %i.b = load i8, ptr %i.a, align 1, !tbaa !45
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2722
  %i.d = load i8, ptr %i.c, align 2, !tbaa !59
  %.not10 = icmp eq i8 %i.d, 1
  br i1 %.not10, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %2) #18 ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load i8, ptr %i.g, align 8, !tbaa !87
  tail call void @nghttp2_extpri_from_uint8(ptr noundef %1, i8 noundef zeroext %i.h) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -519, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ -501, %bb.c ], [ -501, %bb.d ]
  ret i32 %.0
}

declare void @nghttp2_extpri_from_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
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

end_hunk_2
