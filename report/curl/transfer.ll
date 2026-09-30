Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/transfer?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@Curl_sendrecv:bb.a
  %.289.i.ph = phi i32 [ %i.s, %bb.e ], [ 2, %xfer_recv_resp.exit.thread.i ], [ %.031.i.i, %Curl_xfer_write_resp.exit.i ], [ %i.bp, %bb.t ], [ %.1.i.i, %xfer_recv_resp.exit.i ]
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !83
  call void @Curl_multi_xfer_buf_release(ptr noundef nonnull %0, ptr noundef %i.ee) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.bo

.loopexit:                                        ; preds = %bb.af, %bb.ay, %bb.at, %.thread145.thread.i
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !83
  call void @Curl_multi_xfer_buf_release(ptr noundef nonnull %0, ptr noundef %i.ef) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.eg = load i32, ptr %i.u, align 1
  %i.eh = and i32 %i.eg, 2
  %.not42 = icmp eq i32 %i.eh, 0
  br i1 %.not42, label %bb.az, label %bb.bo

bb.az:                                            ; preds = %.loopexit, %Curl_xfer_is_blocked.exit.thread
  %i.ei = call zeroext i1 @Curl_req_want_send(ptr noundef nonnull %0) #7
  br i1 %i.ei, label %bb.ba, label %sendrecv_ul.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.ej = call zeroext i1 @Curl_req_done_sending(ptr noundef nonnull %0) #7
  br i1 %i.ej, label %sendrecv_ul.exit.thread, label %sendrecv_ul.exit

sendrecv_ul.exit:                                 ; preds = %bb.ba
  %i.ek = call i32 @Curl_req_send_more(ptr noundef nonnull %0) #7 ; 2 uses
  %.not43 = icmp eq i32 %i.ek, 0
  br i1 %.not43, label %sendrecv_ul.exit.thread, label %bb.bo

sendrecv_ul.exit.thread:                          ; preds = %bb.ba, %sendrecv_ul.exit, %bb.az
  %i.el = call i32 @Curl_pgrsCheck(ptr noundef nonnull %0) #7 ; 2 uses
  %.not44 = icmp eq i32 %i.el, 0
  br i1 %.not44, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %sendrecv_ul.exit.thread
  %i.em = load i8, ptr %i.f, align 8, !tbaa !82   ; 5 uses
  %i.en = and i8 %i.em, 3
  %.not45 = icmp eq i8 %i.en, 0
  br i1 %.not45, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = call i64 @Curl_timeleft_ms(ptr noundef nonnull %0) #7
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.bd, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bc
  %.pre = load i8, ptr %i.f, align 8, !tbaa !82
  br label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !95
  %.not51 = icmp eq i64 %i.eq, -1
  %i.er = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.et = call i64 @curlx_ptimediff_ms(ptr noundef %i.er, ptr noundef nonnull %i.es) #7 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !112 ; 2 uses
  br i1 %.not51, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ew = load i64, ptr %i.e, align 8, !tbaa !95
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i64 noundef %i.et, i64 noundef %i.ev, i64 noundef %i.ew) #7
  br label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %i.et, i64 noundef %i.ev) #7
  br label %bb.bo

bb.bg:                                            ; preds = %bb.bb
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.ey = load i32, ptr %i.ex, align 1
  %i.ez = and i32 %i.ey, 65536
  %.not46 = icmp eq i32 %i.ez, 0
  br i1 %.not46, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.fa = load i64, ptr %i.e, align 8, !tbaa !95  ; 3 uses
  %.not47 = icmp eq i64 %i.fa, -1
  br i1 %.not47, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !112 ; 2 uses
  %.not48 = icmp eq i64 %i.fc, %i.fa
  br i1 %.not48, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !113
  %.not49 = icmp eq ptr %i.fe, null
  br i1 %.not49, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ff = sub nsw i64 %i.fa, %i.fc
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef %i.ff) #7
  br label %bb.bo

bb.bl:                                            ; preds = %._crit_edge, %bb.bg, %bb.bh, %bb.bi, %bb.bj
  %i.fg = phi i8 [ %.pre, %._crit_edge ], [ %i.em, %bb.bg ], [ %i.em, %bb.bh ], [ %i.em, %bb.bi ], [ %i.em, %bb.bj ]
  %i.fh = and i8 %i.fg, 3
  %.not50 = icmp eq i8 %i.fh, 0
  br i1 %.not50, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 1
  %i.fk = or i32 %i.fj, 2
  store i32 %i.fk, ptr %i.fi, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fl = call i32 @Curl_pgrsUpdate(ptr noundef nonnull %0) #7
  br label %bb.bo

bb.bo:                                            ; preds = %sendrecv_dl.exit.thread, %bb.be, %bb.bf, %Curl_xfer_is_blocked.exit, %sendrecv_ul.exit.thread, %sendrecv_ul.exit, %.loopexit, %bb.bn, %bb.bk
  %.0 = phi i32 [ 18, %bb.bk ], [ %.289.i.ph, %sendrecv_dl.exit.thread ], [ 0, %.loopexit ], [ %i.ek, %sendrecv_ul.exit ], [ %i.el, %sendrecv_ul.exit.thread ], [ 0, %Curl_xfer_is_blocked.exit ], [ %i.fl, %bb.bn ], [ 28, %bb.bf ], [ 28, %bb.be ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_is_blocked(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load i8, ptr %i.a, align 8, !tbaa !82
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  %i.e = and i32 %i.c, 1
  %.not11 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not11, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %.not11, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.g = tail call zeroext i1 @Curl_rlimit_is_blocked(ptr noundef nonnull %i.f) #7
  br i1 %i.g, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink12 = phi i64 [ 2272, %bb.c ], [ 2376, %bb.b ], [ 2272, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %i.i = tail call zeroext i1 @Curl_rlimit_is_blocked(ptr noundef nonnull %i.h) #7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ %i.i, %.sink.split ]
  ret i1 %.0
}

declare zeroext i1 @Curl_req_want_send(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pgrsCheck(ptr noundef) local_unnamed_addr #2

declare i64 @Curl_timeleft_ms(ptr noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_pgrsUpdate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Curl_init_CONNECT(ptr nofree noundef captures(none) initializes((4160, 4176)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4160
  store ptr %i.b, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4168
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4627
  %i.h = load i8, ptr %i.g, align 1, !tbaa !96
  %i.i = icmp eq i8 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.i, i32 32768, i32 0
  %i.m = and i32 %i.k, -32769
  %i.n = or disjoint i32 %i.m, %i.l
  store i32 %i.n, ptr %i.j, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_pretransfer(ptr noundef initializes((4626, 4627)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4626
  store i8 0, ptr %i.a, align 2, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118
  %.not114 = icmp eq ptr %i.e, null
  br i1 %.not114, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #7
  br label %bb.ab

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !98
  tail call void %i.g(ptr noundef %i.c) #7
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.i = tail call i32 @curl_url_get(ptr noundef %i.h, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 0) #7
  %.not116 = icmp eq i32 %i.i, 0
  br i1 %.not116, label %..critedge_crit_edge, label %bb.d

..critedge_crit_edge:                             ; preds = %.thread
  %.pre153 = load ptr, ptr %i.b, align 8, !tbaa !83
  br label %.critedge

bb.d:                                             ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4248
  tail call void @Curl_bufref_set(ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0, ptr noundef null) #7
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #7
  br label %bb.ab

.critedge:                                        ; preds = %bb.b, %..critedge_crit_edge
  %i.k = phi ptr [ %.pre153, %..critedge_crit_edge ], [ %i.c, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4248
  tail call void @Curl_bufref_set(ptr noundef nonnull %i.l, ptr noundef %i.k, i64 noundef 0, ptr noundef null) #7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %.not117 = icmp eq ptr %i.n, null
  br i1 %.not117, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.p = load i64, ptr %i.o, align 8, !tbaa !120
  %.not118 = icmp eq i64 %i.p, 0
  br i1 %.not118, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #7
  br label %bb.ab

bb.g:                                             ; preds = %bb.e, %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 3 uses
  %i.r = load i64, ptr %i.q, align 1
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = and i32 %i.s, 4096
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4628 ; 10 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -12289
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = lshr i32 %i.s, 1
  %i.z = and i32 %i.y, 8192
  %i.aa = or disjoint i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.u, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2182
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4627 ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2864
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.ae) #7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2872
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.af) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2884
  store i32 0, ptr %i.ag, align 4, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i16 0, ptr %i.ah, align 8, !tbaa !123
  %i.ai = load i32, ptr %i.u, align 4
  %i.aj = and i32 %i.ai, -131083
  store i32 %i.aj, ptr %i.u, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4616
  tail call void @Curl_http_neg_init(ptr noundef nonnull %0, ptr noundef nonnull %i.ak) #7
  %i.al = load i32, ptr %i.u, align 4
  %i.am = and i32 %i.al, -33
  store i32 %i.am, ptr %i.u, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !124
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !125
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !127
  %i.at = load ptr, ptr @Curl_cfree, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4704 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128
  tail call void %i.at(ptr noundef %i.av) #7
  store ptr null, ptr %i.au, align 8, !tbaa !128
  %i.aw = load i64, ptr %i.q, align 1
  %i.ax = and i64 %i.aw, 134217728
  %.not119 = icmp eq i64 %i.ax, 0
  br i1 %.not119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4272
  tail call void @Curl_bufref_free(ptr noundef nonnull %i.ay) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %.not120 = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  br i1 %.not120, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @Curl_bufref_set(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ba, i64 noundef 0, ptr noundef null) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @Curl_bufref_free(ptr noundef nonnull %i.bb) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = load i8, ptr %i.ad, align 1, !tbaa !96
  switch i8 %i.bc, label %bb.n [
    i8 4, label %bb.m
    i8 0, label %bb.p
    i8 5, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !129
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4152
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !130
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !131 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !130
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !119 ; 2 uses
  %.not123 = icmp ne ptr %i.bj, null
  %i.bk = icmp eq i64 %i.bh, -1
  %or.cond = select i1 %.not123, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #8
  store i64 %i.bl, ptr %i.bi, align 8, !tbaa !130
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4152
  store i64 0, ptr %i.bm, align 8, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bn = tail call i32 @Curl_cookie_loadfiles(ptr noundef nonnull %0) #7 ; 2 uses
  %.not124 = icmp eq i32 %i.bn, 0
  br i1 %.not124, label %bb.r, label %.thread149

bb.r:                                             ; preds = %bb.q
  tail call void @Curl_cookie_run(ptr noundef nonnull %0) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !132
  %.not125 = icmp eq ptr %i.bp, null
  br i1 %.not125, label %.critedge136.thread, label %.critedge136

.critedge136:                                     ; preds = %bb.r
  %i.bq = tail call i32 @Curl_loadhostpairs(ptr noundef nonnull %0) #7 ; 2 uses
  %.not126 = icmp eq i32 %i.bq, 0
  br i1 %.not126, label %.critedge136.thread, label %.thread149

.critedge136.thread:                              ; preds = %bb.r, %.critedge136
  %i.br = tail call i32 @Curl_hsts_loadfiles(ptr noundef nonnull %0) #7 ; 2 uses
  %.not127 = icmp eq i32 %i.br, 0
  br i1 %.not127, label %bb.s, label %.thread149

bb.s:                                             ; preds = %.critedge136.thread
  %i.bs = load i32, ptr %i.u, align 4
  %i.bt = or i32 %i.bs, 16
  store i32 %i.bt, ptr %i.u, align 4
  tail call void @Curl_initinfo(ptr noundef nonnull %0) #7
  tail call void @Curl_pgrsResetTransferSizes(ptr noundef nonnull %0) #7
  tail call void @Curl_pgrsStartNow(ptr noundef nonnull %0) #7
  %i.bu = load i32, ptr %i.ap, align 8, !tbaa !125
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3052 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !133
  %i.bx = and i32 %i.bw, %i.bu
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !133
  %i.by = load i32, ptr %i.as, align 8, !tbaa !127
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3068 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !134
  %i.cb = and i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !134
  %i.cc = load i64, ptr %i.q, align 1
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = load i32, ptr %i.u, align 4
  %i.cf = lshr i32 %i.cd, 14
  %i.cg = and i32 %i.cf, 64
  %i.ch = and i32 %i.ce, -65
  %i.ci = or disjoint i32 %i.cg, %i.ch
  store i32 %i.ci, ptr %i.u, align 4
  %i.cj = and i32 %i.cd, 1048576
  %.not128 = icmp eq i32 %i.cj, 0
  br i1 %.not128, label %.thread145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4632 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !135 ; 2 uses
  %.not129 = icmp eq ptr %i.cl, null
  br i1 %.not129, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !98
  %i.cn = tail call ptr %i.cm(i64 noundef 1, i64 noundef 72) #7 ; 3 uses
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !135
  %.not130 = icmp eq ptr %i.cn, null
  br i1 %.not130, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.co = phi ptr [ %i.cn, %bb.u ], [ %i.cl, %bb.t ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !138
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.w, label %.thread145

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !139 ; 2 uses
  %.not131 = icmp eq ptr %i.ct, null
  br i1 %.not131, label %bb.y, label %bb.x
end_hunk_0
