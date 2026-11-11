Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/http?download=true
inline.NumInlined: 140
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@evhttp_parse_firstline_:bb.a
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %end_of_authority.exit.i.i
  %i.ez = call ptr @event_mm_strdup_(ptr noundef nonnull @.str.26) #15 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fb = icmp eq ptr %i.ez, null
  br i1 %i.fb, label %bb.bf, label %evhttp_uri_parse_authority.exit.i

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_uri_parse_authority) #15
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ba
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.evhttp_uri_parse_authority) #15
  br label %evhttp_uri_parse_authority.exit.thread.i

bb.bh:                                            ; preds = %bb.bf, %end_of_authority.exit.i.i
  call void @evhttp_uri_free(ptr noundef nonnull %i.es)
  br label %evhttp_uri_parse_authority.exit.thread.i

evhttp_uri_parse_authority.exit.thread.i:         ; preds = %bb.bh, %bb.bg
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.fc, align 8
  br label %bb.bo

evhttp_uri_parse_authority.exit.i:                ; preds = %bb.be
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.es, ptr %i.fd, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.az
  %i.fe = call ptr @evhttp_uri_parse_with_flags(ptr noundef nonnull %i.eo, i32 noundef 1) ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = icmp eq ptr %i.fe, null
  br i1 %i.fg, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %evhttp_uri_parse_authority.exit.i
  %i.fh = phi ptr [ %i.es, %evhttp_uri_parse_authority.exit.i ], [ %i.fe, %bb.bi ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8            ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8            ; 3 uses
  %.not95.i = icmp eq ptr %i.fj, null
  br i1 %.not95.i, label %evhttp_parse_request_line.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fm = call i32 @evutil_ascii_strcasecmp(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.51) #15
  %.not96.i = icmp eq i32 %i.fm, 0
  br i1 %.not96.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fn = call i32 @evutil_ascii_strcasecmp(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.52) #15
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = icmp ne ptr %i.fl, null
  %or.cond.i = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond.i, label %.split86.i, label %evhttp_parse_request_line.exit

bb.bm:                                            ; preds = %bb.bk
  %.old1.not.i = icmp eq ptr %i.fl, null
  br i1 %.old1.not.i, label %evhttp_parse_request_line.exit, label %.split86.i

.split86.i:                                       ; preds = %bb.bm, %bb.bl
  %i.fq = load ptr, ptr %i.l, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 264
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = call fastcc i32 @evhttp_find_vhost(ptr noundef %i.fs, ptr noundef null, ptr noundef %i.fl)
  %.not97.i = icmp eq i32 %i.ft, 0
  br i1 %.not97.i, label %bb.bn, label %evhttp_parse_request_line.exit

bb.bn:                                            ; preds = %.split86.i
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = or i32 %i.fv, 2
  store i32 %i.fw, ptr %i.fu, align 8
  br label %evhttp_parse_request_line.exit

evhttp_parse_request_line.exit:                   ; preds = %bb.bj, %bb.bl, %bb.bm, %.split86.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cb

bb.bo:                                            ; preds = %.critedge.i, %bb.j, %bb.k, %evhttp_parse_http_version.exit.thread.i, %bb.ax, %bb.bi, %evhttp_uri_parse_authority.exit.thread.i, %bb.ay, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cb

bb.bp:                                            ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %i.fx = call ptr @strsep(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.48) #15 ; 2 uses
  %i.fy = load ptr, ptr %i.d, align 8
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.ca, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ga = call ptr @strsep(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.48) #15 ; 2 uses
  %i.gb = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i21 = icmp eq ptr %i.gb, null
  %spec.select.i = select i1 %.not.i21, ptr @.str.26, ptr %i.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.gc = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.fx, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %i.gd = icmp ne i32 %i.gc, 2
  %i.ge = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  %or.cond.i.i22 = select i1 %i.gd, i1 true, i1 %i.gf
  br i1 %or.cond.i.i22, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.gg = load i32, ptr @event_debug_logging_mask_, align 4
  %.not.i.i23 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i23, label %evhttp_parse_http_version.exit.thread.i24, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.evhttp_parse_http_version, ptr noundef %i.fx, ptr noundef nonnull %0, ptr noundef %i.gi) #15
  br label %evhttp_parse_http_version.exit.thread.i24

evhttp_parse_http_version.exit.thread.i24:        ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bq
  %i.gj = trunc i32 %i.ge to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.gj, ptr %i.gk, align 8
  %i.gl = load i32, ptr %i.b, align 4
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.gm, ptr %i.gn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.go = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ga, ptr noundef null, i32 noundef 10) #15, !inline_history !4
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.gp, ptr %i.gq, align 4
  %.not17.i = icmp eq i32 %i.gp, 0
  br i1 %.not17.i, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.gr = load i32, ptr @event_debug_logging_mask_, align 4
  %.not14.i = icmp eq i32 %i.gr, 0
  br i1 %.not14.i, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.evhttp_parse_response_line, ptr noundef nonnull %i.ga) #15
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bt
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.gt, null
  br i1 %.not15.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @event_mm_free_(ptr noundef nonnull %i.gt) #15
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gu = call ptr @event_mm_strdup_(ptr noundef nonnull %spec.select.i) #15 ; 2 uses
  store ptr %i.gu, ptr %i.gs, align 8
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bz, label %evhttp_parse_response_line.exit

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_parse_response_line) #15
  br label %bb.ca

evhttp_parse_response_line.exit:                  ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cb

bb.ca:                                            ; preds = %evhttp_parse_http_version.exit.thread.i24, %bb.bp, %bb.bz, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %evhttp_parse_response_line.exit, %bb.bo, %evhttp_parse_request_line.exit, %thread-pre-split
  %.0 = phi i32 [ -1, %thread-pre-split ], [ 1, %evhttp_parse_request_line.exit ], [ -1, %bb.bo ], [ -1, %bb.ca ], [ 1, %evhttp_parse_response_line.exit ]
  call void @event_mm_free_(ptr noundef nonnull %i.j) #15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.c, %bb.cb, %bb.g, %bb.d
  %.016 = phi i32 [ %.0, %bb.cb ], [ 0, %bb.d ], [ -3, %bb.g ], [ -3, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  ret i32 %.016
}

declare ptr @evbuffer_readln(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @evbuffer_get_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @evhttp_str_is_chunked_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %.02239 = ptrtoaddr ptr %.022 to i64            ; 2 uses
  %i.e = icmp ult ptr %0, %.022
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.f = sub i64 %.02239, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.02327 = phi ptr [ %i.h, %.critedge2 ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i8, ptr %.02327, align 1
  switch i8 %i.g, label %.critedge.loopexit [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.02327, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %.022
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !5

.critedge.loopexit:                               ; preds = %.lr.ph, %.critedge2
  %.023.lcssa.ph = phi ptr [ %scevgep, %.critedge2 ], [ %.02327, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.023.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.c
  %.023.lcssa40.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.a, %bb.c ]
  %.023.lcssa = phi ptr [ %.023.lcssa.ph, %.critedge.loopexit ], [ %0, %bb.c ] ; 6 uses
  %i.i = icmp ult ptr %.023.lcssa, %.022
  br i1 %i.i, label %.lr.ph31.preheader, label %.critedge4

.lr.ph31.preheader:                               ; preds = %.critedge
  %i.j = sub i64 %.02239, %.023.lcssa40.pre-phi
  %scevgep41 = getelementptr i8, ptr %.023.lcssa, i64 %i.j ; 2 uses
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %bb.d
  %.030 = phi ptr [ %i.l, %bb.d ], [ %.023.lcssa, %.lr.ph31.preheader ] ; 5 uses
  %i.k = load i8, ptr %.030, align 1
  switch i8 %i.k, label %bb.d [
    i8 32, label %.critedge4
    i8 9, label %.critedge4
    i8 59, label %.critedge4
  ]

bb.d:                                             ; preds = %.lr.ph31
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 1 ; 2 uses
  %exitcond42.not = icmp eq ptr %i.l, %scevgep41
  br i1 %exitcond42.not, label %.critedge4, label %.lr.ph31, !llvm.loop !6

.critedge4:                                       ; preds = %bb.d, %.lr.ph31, %.lr.ph31, %.lr.ph31, %.critedge
  %.0.lcssa = phi ptr [ %.023.lcssa, %.critedge ], [ %.030, %.lr.ph31 ], [ %.030, %.lr.ph31 ], [ %.030, %.lr.ph31 ], [ %scevgep41, %bb.d ]
  %i.m = ptrtoint ptr %.0.lcssa to i64
  %i.n = ptrtoint ptr %.023.lcssa to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge4
  %i.q = tail call i32 @evutil_ascii_strncasecmp(ptr noundef %.023.lcssa, ptr noundef nonnull @.str.6, i64 noundef 7) #15
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge4
  %i.t = phi i32 [ 0, %.critedge4 ], [ %i.s, %bb.e ]
  ret i32 %i.t
}

declare i32 @evutil_ascii_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @evhttp_check_transfer_encoding_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #14 ; 2 uses
  %.not38 = icmp eq ptr %i.a, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %evhttp_str_is_chunked_.exit.thread
  %i.b = phi ptr [ %i.q, %evhttp_str_is_chunked_.exit.thread ], [ %i.a, %bb.a ] ; 5 uses
  %.039 = phi ptr [ %i.p, %evhttp_str_is_chunked_.exit.thread ], [ %0, %bb.a ] ; 5 uses
  %1 = ptrtoaddr ptr %.039 to i64                 ; 2 uses
  %.02239.i = ptrtoaddr ptr %i.b to i64           ; 2 uses
  %i.c = icmp ult ptr %.039, %i.b
  br i1 %i.c, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %i.d = sub i64 %.02239.i, %1
  %scevgep.i = getelementptr i8, ptr %.039, i64 %i.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.02327.i = phi ptr [ %i.f, %.critedge2.i ], [ %.039, %.lr.ph.preheader.i ] ; 3 uses
  %i.e = load i8, ptr %.02327.i, align 1
  switch i8 %i.e, label %.critedge.loopexit.i [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.02327.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.f, %i.b
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.critedge.loopexit.i:                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.lcssa.ph.i = phi ptr [ %scevgep.i, %.critedge2.i ], [ %.02327.i, %.lr.ph.i ] ; 2 uses
  %.pre.i = ptrtoaddr ptr %.023.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph
  %.023.lcssa40.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %1, %.lr.ph ]
  %.023.lcssa.i = phi ptr [ %.023.lcssa.ph.i, %.critedge.loopexit.i ], [ %.039, %.lr.ph ] ; 6 uses
  %i.g = icmp ult ptr %.023.lcssa.i, %i.b
  br i1 %i.g, label %.lr.ph31.preheader.i, label %.critedge4.i

.lr.ph31.preheader.i:                             ; preds = %.critedge.i
  %i.h = sub i64 %.02239.i, %.023.lcssa40.pre-phi.i
  %scevgep41.i = getelementptr i8, ptr %.023.lcssa.i, i64 %i.h ; 2 uses
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.b, %.lr.ph31.preheader.i
  %.030.i = phi ptr [ %i.j, %bb.b ], [ %.023.lcssa.i, %.lr.ph31.preheader.i ] ; 5 uses
  %i.i = load i8, ptr %.030.i, align 1
  switch i8 %i.i, label %bb.b [
    i8 32, label %.critedge4.i
    i8 9, label %.critedge4.i
    i8 59, label %.critedge4.i
  ]

bb.b:                                             ; preds = %.lr.ph31.i
  %i.j = getelementptr inbounds nuw i8, ptr %.030.i, i64 1 ; 2 uses
  %exitcond42.not.i = icmp eq ptr %i.j, %scevgep41.i
  br i1 %exitcond42.not.i, label %.critedge4.i, label %.lr.ph31.i, !llvm.loop !6

.critedge4.i:                                     ; preds = %bb.b, %.lr.ph31.i, %.lr.ph31.i, %.lr.ph31.i, %.critedge.i
  %.0.lcssa.i = phi ptr [ %.023.lcssa.i, %.critedge.i ], [ %scevgep41.i, %bb.b ], [ %.030.i, %.lr.ph31.i ], [ %.030.i, %.lr.ph31.i ], [ %.030.i, %.lr.ph31.i ]
  %i.k = ptrtoint ptr %.0.lcssa.i to i64
  %i.l = ptrtoint ptr %.023.lcssa.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq i64 %i.m, 7
  br i1 %i.n, label %evhttp_str_is_chunked_.exit, label %evhttp_str_is_chunked_.exit.thread

evhttp_str_is_chunked_.exit:                      ; preds = %.critedge4.i
  %i.o = tail call i32 @evutil_ascii_strncasecmp(ptr noundef %.023.lcssa.i, ptr noundef nonnull @.str.6, i64 noundef 7) #15
  %.not34.a = icmp eq i32 %i.o, 0
  br i1 %.not34.a, label %.loopexit, label %evhttp_str_is_chunked_.exit.thread

evhttp_str_is_chunked_.exit.thread:               ; preds = %.critedge4.i, %evhttp_str_is_chunked_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 44) #14 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %evhttp_str_is_chunked_.exit.thread, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %evhttp_str_is_chunked_.exit.thread ] ; 4 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa) #14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.r ; 6 uses
  %.02239.i10 = ptrtoaddr ptr %i.s to i64
  %.not35.a = icmp eq i64 %i.r, 0
  br i1 %.not35.a, label %.critedge.i11, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %._crit_edge, %.critedge2.i25
  %.02327.i24 = phi ptr [ %i.u, %.critedge2.i25 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.t = load i8, ptr %.02327.i24, align 1
  switch i8 %i.t, label %.critedge.i11 [
    i8 32, label %.critedge2.i25
    i8 9, label %.critedge2.i25
  ]

.critedge2.i25:                                   ; preds = %.lr.ph.i23, %.lr.ph.i23
  %i.u = getelementptr inbounds nuw i8, ptr %.02327.i24, i64 1 ; 2 uses
  %exitcond.not.i26 = icmp eq ptr %i.u, %i.s
  br i1 %exitcond.not.i26, label %.critedge4.i14, label %.lr.ph.i23, !llvm.loop !5

.critedge.i11:                                    ; preds = %.lr.ph.i23, %._crit_edge
  %.023.lcssa.i13 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.02327.i24, %.lr.ph.i23 ] ; 10 uses
  %i.v = icmp ult ptr %.023.lcssa.i13, %i.s
  br i1 %i.v, label %.lr.ph31.preheader.i16, label %.critedge4.i14

.lr.ph31.preheader.i16:                           ; preds = %.critedge.i11
  %.023.lcssa40.pre-phi.i12 = ptrtoaddr ptr %.023.lcssa.i13 to i64
  %i.w = sub i64 %.02239.i10, %.023.lcssa40.pre-phi.i12
  %scevgep41.i17 = getelementptr i8, ptr %.023.lcssa.i13, i64 %i.w
  br label %.lr.ph31.i18

.lr.ph31.i18:                                     ; preds = %bb.c, %.lr.ph31.preheader.i16
  %.030.i19 = phi ptr [ %i.y, %bb.c ], [ %.023.lcssa.i13, %.lr.ph31.preheader.i16 ] ; 5 uses
  %i.x = load i8, ptr %.030.i19, align 1
  switch i8 %i.x, label %bb.c [
    i8 32, label %.critedge4.i14
    i8 9, label %.critedge4.i14
    i8 59, label %.critedge4.i14
  ]

bb.c:                                             ; preds = %.lr.ph31.i18
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i19, i64 1 ; 2 uses
  %exitcond42.not.i20 = icmp eq ptr %i.y, %i.s
  br i1 %exitcond42.not.i20, label %.critedge4.i14, label %.lr.ph31.i18, !llvm.loop !6

.critedge4.i14:                                   ; preds = %.critedge2.i25, %bb.c, %.lr.ph31.i18, %.lr.ph31.i18, %.lr.ph31.i18, %.critedge.i11
  %.023.lcssa.i1348 = phi ptr [ %.023.lcssa.i13, %.critedge.i11 ], [ %.023.lcssa.i13, %bb.c ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %.023.lcssa.i13, %.lr.ph31.i18 ], [ %i.s, %.critedge2.i25 ] ; 2 uses
  %.0.lcssa.i15 = phi ptr [ %.023.lcssa.i13, %.critedge.i11 ], [ %scevgep41.i17, %bb.c ], [ %.030.i19, %.lr.ph31.i18 ], [ %.030.i19, %.lr.ph31.i18 ], [ %.030.i19, %.lr.ph31.i18 ], [ %i.s, %.critedge2.i25 ]
  %i.z = ptrtoint ptr %.0.lcssa.i15 to i64
  %i.aa = ptrtoint ptr %.023.lcssa.i1348 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.ab, 7
  br i1 %i.ac, label %evhttp_str_is_chunked_.exit30, label %evhttp_str_is_chunked_.exit30.thread

evhttp_str_is_chunked_.exit30:                    ; preds = %.critedge4.i14
  %i.ad = tail call i32 @evutil_ascii_strncasecmp(ptr noundef %.023.lcssa.i1348, ptr noundef nonnull @.str.6, i64 noundef 7) #15
  %.fr = freeze i32 %i.ad
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

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.an, %bb.l ] ; 6 uses
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
  switch i8 %i.o, label %bb.j [
    i8 0, label %.thread44
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

.thread44:                                        ; preds = %bb.d
  call void @event_mm_free_(ptr noundef nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.n

bb.e:                                             ; preds = %bb.d, %bb.d
  %.val = load ptr, ptr %i.f, align 8
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.p, align 8
  %.val.val.val = load ptr, ptr %.val.val, align 8 ; 2 uses
  %i.q = icmp eq ptr %.val.val.val, null
  br i1 %i.q, label %evhttp_append_to_last_header.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #14 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.u = phi i8 [ %i.o, %bb.f ], [ %.pre, %.critedge.i ]
  %.0.i = phi ptr [ %i.g, %bb.f ], [ %i.v, %.critedge.i ] ; 4 uses
  switch i8 %i.u, label %bb.h [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.v, align 1
  br label %bb.g, !llvm.loop !28

bb.h:                                             ; preds = %bb.g
  call void @evutil_rtrim_lws_(ptr noundef nonnull %.0.i) #15
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #14 ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = add i64 %i.t, 2
  %i.z = add i64 %i.y, %i.w
  %i.aa = call ptr @event_mm_realloc_(ptr noundef %i.x, i64 noundef %i.z) #15 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %evhttp_append_to_last_header.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.t ; 2 uses
  store i8 32, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = add i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %.0.i, i64 %i.ae, i1 false)
  store ptr %i.aa, ptr %i.r, align 8
  br label %bb.l, !llvm.loop !29

bb.j:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.b, align 8
  %i.af = call ptr @strsep(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.35) #15
  %i.ag = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %evhttp_append_to_last_header.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = call i64 @strspn(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.48) #14
end_hunk_0
