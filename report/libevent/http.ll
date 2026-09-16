Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/http?download=true
inline.NumInlined: 140
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@evhttp_check_transfer_encoding_:bb.a
  %i.d = icmp ult ptr %.039, %i.b
  br i1 %i.d, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.e = sub i64 %.02239.i, %i.c
  %scevgep.i = getelementptr i8, ptr %.039, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.02327.i = phi ptr [ %i.g, %.critedge2.i ], [ %.039, %.lr.ph.preheader.i ] ; 3 uses
  %i.f = load i8, ptr %.02327.i, align 1
  switch i8 %i.f, label %.critedge.loopexit.i [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02327.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.g, %i.b
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.critedge.loopexit.i:                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.lcssa.ph.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.02327.i, %.lr.ph.i ] ; 2 uses
  %.pre.i = ptrtoaddr ptr %.023.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph
  %.023.lcssa40.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %i.c, %.lr.ph ]
  %.023.lcssa.i = phi ptr [ %.023.lcssa.ph.i, %.critedge.loopexit.i ], [ %.039, %.lr.ph ] ; 6 uses
  %i.h = icmp ult ptr %.023.lcssa.i, %i.b
  br i1 %i.h, label %.lr.ph31.preheader.i, label %.critedge4.i

.lr.ph31.preheader.i:                             ; preds = %.critedge.i
  %i.i = sub i64 %.02239.i, %.023.lcssa40.pre-phi.i
  %scevgep41.i = getelementptr i8, ptr %.023.lcssa.i, i64 %i.i ; 2 uses
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.b, %.lr.ph31.preheader.i
  %.030.i = phi ptr [ %i.k, %bb.b ], [ %.023.lcssa.i, %.lr.ph31.preheader.i ] ; 5 uses
  %i.j = load i8, ptr %.030.i, align 1
  switch i8 %i.j, label %bb.b [
    i8 32, label %.critedge4.i
    i8 9, label %.critedge4.i
    i8 59, label %.critedge4.i
  ]

bb.b:                                             ; preds = %.lr.ph31.i
  %i.k = getelementptr inbounds nuw i8, ptr %.030.i, i64 1 ; 2 uses
  %exitcond42.not.i = icmp eq ptr %i.k, %scevgep41.i
  br i1 %exitcond42.not.i, label %.critedge4.i, label %.lr.ph31.i, !llvm.loop !6

.critedge4.i:                                     ; preds = %bb.b, %.lr.ph31.i, %.lr.ph31.i, %.lr.ph31.i, %.critedge.i
  %.0.lcssa.i = phi ptr [ %.023.lcssa.i, %.critedge.i ], [ %scevgep41.i, %bb.b ], [ %.030.i, %.lr.ph31.i ], [ %.030.i, %.lr.ph31.i ], [ %.030.i, %.lr.ph31.i ]
  %i.l = ptrtoint ptr %.0.lcssa.i to i64
  %i.m = ptrtoint ptr %.023.lcssa.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.n, 7
  br i1 %i.o, label %evhttp_str_is_chunked_.exit, label %evhttp_str_is_chunked_.exit.thread

evhttp_str_is_chunked_.exit:                      ; preds = %.critedge4.i
  %i.p = tail call i32 @evutil_ascii_strncasecmp(ptr noundef %.023.lcssa.i, ptr noundef nonnull @.str.6, i64 noundef 7) #15
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %.loopexit, label %evhttp_str_is_chunked_.exit.thread

evhttp_str_is_chunked_.exit.thread:               ; preds = %.critedge4.i, %evhttp_str_is_chunked_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.r = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.q, i32 noundef 44) #14 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %evhttp_str_is_chunked_.exit.thread, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %evhttp_str_is_chunked_.exit.thread ] ; 4 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa) #14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.s ; 6 uses
  %.02239.i10 = ptrtoaddr ptr %i.t to i64
  %.not35 = icmp eq i64 %i.s, 0
  br i1 %.not35, label %.critedge.i11, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %._crit_edge, %.critedge2.i25
  %.02327.i24 = phi ptr [ %i.v, %.critedge2.i25 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.u = load i8, ptr %.02327.i24, align 1
  switch i8 %i.u, label %.critedge.i11 [
    i8 32, label %.critedge2.i25
    i8 9, label %.critedge2.i25
  ]

.critedge2.i25:                                   ; preds = %.lr.ph.i23, %.lr.ph.i23
  %i.v = getelementptr inbounds nuw i8, ptr %.02327.i24, i64 1 ; 2 uses
  %exitcond.not.i26 = icmp eq ptr %i.v, %i.t
  br i1 %exitcond.not.i26, label %.critedge4.i14, label %.lr.ph.i23, !llvm.loop !5

.critedge.i11:                                    ; preds = %.lr.ph.i23, %._crit_edge
  %.023.lcssa.i13 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.02327.i24, %.lr.ph.i23 ] ; 10 uses
  %i.w = icmp ult ptr %.023.lcssa.i13, %i.t
  br i1 %i.w, label %.lr.ph31.preheader.i16, label %.critedge4.i14

.lr.ph31.preheader.i16:                           ; preds = %.critedge.i11
  %.023.lcssa40.pre-phi.i12 = ptrtoaddr ptr %.023.lcssa.i13 to i64
  %i.x = sub i64 %.02239.i10, %.023.lcssa40.pre-phi.i12
  %scevgep41.i17 = getelementptr i8, ptr %.023.lcssa.i13, i64 %i.x
  br label %.lr.ph31.i18

.lr.ph31.i18:                                     ; preds = %bb.c, %.lr.ph31.preheader.i16
  %.030.i19 = phi ptr [ %i.z, %bb.c ], [ %.023.lcssa.i13, %.lr.ph31.preheader.i16 ] ; 5 uses
  %i.y = load i8, ptr %.030.i19, align 1
  switch i8 %i.y, label %bb.c [
    i8 32, label %.critedge4.i14
    i8 9, label %.critedge4.i14
    i8 59, label %.critedge4.i14
  ]

bb.c:                                             ; preds = %.lr.ph31.i18
  %i.z = getelementptr inbounds nuw i8, ptr %.030.i19, i64 1 ; 2 uses
  %exitcond42.not.i20 = icmp eq ptr %i.z, %i.t
  br i1 %exitcond42.not.i20, label %.critedge4.i14, label %.lr.ph31.i18, !llvm.loop !6

.critedge4.i14:                                   ; preds = %.critedge2.i25, %bb.c, %.lr.ph31.i18, %.lr.ph31.i18, %.lr.ph31.i18, %.critedge.i11
  %.023.lcssa.i1348 = phi ptr [ %.023.lcssa.i13, %.critedge.i11 ], [ %.023.lcssa.i13, %bb.c ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %i.t, %.critedge2.i25 ] ; 2 uses
  %.0.lcssa.i15 = phi ptr [ %.023.lcssa.i13, %.critedge.i11 ], [ %scevgep41.i17, %bb.c ], [ %.030.i19, %.lr.ph31.i18 ], [ %.030.i19, %.lr.ph31.i18 ], [ %.030.i19, %.lr.ph31.i18 ], [ %i.t, %.critedge2.i25 ]
  %i.aa = ptrtoint ptr %.0.lcssa.i15 to i64
  %i.ab = ptrtoint ptr %.023.lcssa.i1348 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.ac, 7
  br i1 %i.ad, label %evhttp_str_is_chunked_.exit30, label %evhttp_str_is_chunked_.exit30.thread

evhttp_str_is_chunked_.exit30:                    ; preds = %.critedge4.i14
  %i.ae = tail call i32 @evutil_ascii_strncasecmp(ptr noundef %.023.lcssa.i1348, ptr noundef nonnull @.str.6, i64 noundef 7) #15
  %.fr = freeze i32 %i.ae
  %.not36 = icmp eq i32 %.fr, 0
  br i1 %.not36, label %.loopexit, label %evhttp_str_is_chunked_.exit30.thread

evhttp_str_is_chunked_.exit30.thread:             ; preds = %.critedge4.i14, %evhttp_str_is_chunked_.exit30
  br label %.loopexit

.loopexit:                                        ; preds = %evhttp_str_is_chunked_.exit, %evhttp_str_is_chunked_.exit30.thread, %evhttp_str_is_chunked_.exit30
  %.05 = phi i32 [ 1, %evhttp_str_is_chunked_.exit30 ], [ 2, %evhttp_str_is_chunked_.exit30.thread ], [ 0, %evhttp_str_is_chunked_.exit ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define range(i32 -3, 2) i32 @evhttp_parse_headers_(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call fastcc i32 @evhttp_parse_headers_impl_(ptr noundef %0, ptr noundef %1, ptr noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 2) i32 @evhttp_parse_headers_impl_(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = call ptr @evbuffer_readln(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #15 ; 2 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.ak, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.h = load i64, ptr %i.a, align 8
  %i.i = load i64, ptr %i.d, align 8
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  store i64 %i.j, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %evhttp_append_to_last_header.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load i8, ptr %i.g, align 1               ; 2 uses
  switch i8 %i.o, label %bb.i [
    i8 0, label %.thread44
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

.thread44:                                        ; preds = %bb.d
  call void @event_mm_free_(ptr noundef nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.d
  %.val = load ptr, ptr %i.f, align 8
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.p, align 8
  %.val.val.val = load ptr, ptr %.val.val, align 8 ; 2 uses
  %i.q = icmp eq ptr %.val.val.val, null
  br i1 %i.q, label %evhttp_append_to_last_header.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %i.r = phi i8 [ %.pre, %.critedge.i ], [ %i.o, %bb.e ]
  %.0.i = phi ptr [ %i.s, %.critedge.i ], [ %i.g, %bb.e ] ; 4 uses
  switch i8 %i.r, label %bb.g [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.f, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.s, align 1
  br label %bb.f, !llvm.loop !28

bb.g:                                             ; preds = %bb.f
  %3 = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 24 ; 3 uses
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14 ; 2 uses
  call void @evutil_rtrim_lws_(ptr noundef nonnull %.0.i) #15
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #14 ; 2 uses
  %i.u = load ptr, ptr %3, align 8
  %i.v = add i64 %5, 2
  %i.w = add i64 %i.v, %i.t
  %i.x = call ptr @event_mm_realloc_(ptr noundef %i.u, i64 noundef %i.w) #15 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %evhttp_append_to_last_header.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %5 ; 2 uses
  store i8 32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = add i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %.0.i, i64 %i.ab, i1 false)
  store ptr %i.x, ptr %3, align 8
  br label %bb.k, !llvm.loop !29

bb.i:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.b, align 8
  %i.ac = call ptr @strsep(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.35) #15
  %i.ad = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %evhttp_append_to_last_header.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call i64 @strspn(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.48) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  call void @evutil_rtrim_lws_(ptr noundef nonnull %i.ag) #15
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = call i32 @evhttp_add_header(ptr noundef %2, ptr noundef %i.ac, ptr noundef %i.ah)
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %evhttp_append_to_last_header.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @event_mm_free_(ptr noundef nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ak = call ptr @evbuffer_readln(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1) #15 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not34 = icmp eq ptr %i.am, null
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call i64 @evbuffer_get_length(ptr noundef %1) #15
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp ugt i64 %i.aq, %i.at
  %spec.select = select i1 %i.au, i32 -3, i32 0
  br label %bb.m

evhttp_append_to_last_header.exit.thread:         ; preds = %bb.g, %bb.e, %bb.c, %bb.i, %bb.j
  %.127.ph = phi i32 [ -1, %bb.j ], [ -1, %bb.i ], [ -3, %bb.c ], [ -1, %bb.e ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @event_mm_free_(ptr noundef nonnull %i.g) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge, %.thread44, %evhttp_append_to_last_header.exit.thread
  %.028 = phi i32 [ %.127.ph, %evhttp_append_to_last_header.exit.thread ], [ %spec.select, %bb.l ], [ 1, %.thread44 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define ptr @evhttp_connection_new(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evhttp_connection_base_bufferevent_new(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %0, i16 noundef zeroext %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @evhttp_connection_base_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evhttp_connection_base_bufferevent_new(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i16 noundef zeroext %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @evhttp_connection_base_bufferevent_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @event_debug_logging_mask_, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %4 to i32
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 384) #15 ; 20 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i16 %4, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = tail call ptr @event_mm_strdup_(ptr noundef %3) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %i.i, ptr %i.j, align 8
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %2, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @bufferevent_socket_new(ptr noundef %0, i32 noundef -1, i32 noundef 0) #15 ; 2 uses
  %.not46 = icmp eq ptr %i.m, null
  br i1 %.not46, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.041 = phi ptr [ %i.m, %bb.f ], [ %2, %bb.e ]  ; 4 uses
  tail call void @bufferevent_setcb(ptr noundef nonnull %.041, ptr noundef nonnull @evhttp_read_cb, ptr noundef nonnull @evhttp_write_cb, ptr noundef nonnull @evhttp_error_cb, ptr noundef nonnull %i.c) #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %.041, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i64 2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 0, ptr %i.s, align 8
  %.not47 = icmp eq ptr %0, null
  br i1 %.not47, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store ptr %0, ptr %i.t, align 8
  %i.u = tail call ptr @bufferevent_get_base(ptr noundef nonnull %.041) #15
  %.not48 = icmp eq ptr %i.u, %0
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = tail call i32 @bufferevent_base_set(ptr noundef nonnull %0, ptr noundef %i.v) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.y = tail call i32 @bufferevent_get_priority(ptr noundef nonnull %.041) #15
  %i.z = trunc i32 %i.y to i8
  tail call void @event_deferred_cb_init_(ptr noundef nonnull %i.x, i8 noundef zeroext %i.z, ptr noundef nonnull @evhttp_deferred_read_cb, ptr noundef nonnull %i.c) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store ptr %1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i32 0, ptr %i.ab, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.evhttp_connection_base_bufferevent_new) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  %.str.10.sink = phi ptr [ @.str.9, %bb.d ], [ @.str.10, %bb.f ]
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull %.str.10.sink, ptr noundef nonnull @__func__.evhttp_connection_base_bufferevent_new) #15
  tail call void @evhttp_connection_free(ptr noundef nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.0 = phi ptr [ %i.c, %bb.j ], [ null, %bb.l ], [ null, %bb.k ]
  ret ptr %.0
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @bufferevent_socket_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @evhttp_read_cb(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @event_deferred_cb_cancel_(ptr noundef %i.d, ptr noundef nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  switch i32 %i.g, label %bb.l [
    i32 3, label %bb.b
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 2, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @bufferevent_get_input(ptr noundef %i.i) #15, !inline_history !30
  %i.k = tail call i32 @evhttp_parse_firstline_(ptr noundef %i.b, ptr noundef %i.j), !inline_history !30 ; 2 uses
  %i.l = and i32 %i.k, -3
  %or.cond.i = icmp eq i32 %i.l, -3
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
end_hunk_0
