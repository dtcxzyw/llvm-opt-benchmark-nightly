Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/transfer?download=true
inline.NumInlined: 14
inline.NumDeleted: 6
begin_hunk_0_@Curl_sendrecv:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.s = call i32 @Curl_multi_xfer_buf_borrow(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not.i52 = icmp eq i32 %i.s, 0
  br i1 %.not.i52, label %.preheader.i, label %sendrecv_dl.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %.preheader.i
  %.086.i = phi i32 [ %i.cy, %bb.ak ], [ 10, %.preheader.i ] ; 2 uses
  %.084.i = phi i8 [ %.185.i, %bb.ak ], [ 0, %.preheader.i ]
  %.079.i = phi i1 [ %i.bt, %bb.ak ], [ false, %.preheader.i ]
  %i.z = trunc nuw i8 %.084.i to i1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call zeroext i1 @Curl_conn_is_multiplex(ptr noundef %i.r, i32 noundef 0) #7
  %i.ab = zext i1 %i.aa to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.185.i = phi i8 [ 1, %bb.f ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !83  ; 3 uses
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !84  ; 3 uses
  %.not104.i = icmp eq i64 %i.ad, 0
  br i1 %.not104.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call zeroext i1 @Curl_rlimit_active(ptr noundef nonnull %i.t) #7
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7
  %i.ag = call i64 @Curl_rlimit_avail(ptr noundef nonnull %i.t, ptr noundef %i.af) #7 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.ad)
  br i1 %i.ah, label %bb.k, label %.thread145.thread.i

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.2.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.ad, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ai = trunc nuw i8 %.185.i to i1              ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !84
  br i1 %i.ai, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.u, align 1
  %i.ak = and i32 %i.aj, 1
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.al = load i64, ptr %i.e, align 8, !tbaa !110 ; 2 uses
  %.not26.i.i = icmp eq i64 %i.al, -1
  br i1 %.not26.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.v, align 8, !tbaa !85
  %i.an = sub nsw i64 %i.al, %i.am
  %i.ao = call i64 @curlx_sotouz_range(i64 noundef %i.an, i64 noundef 0, i64 noundef %.2.i) #7
  br label %xfer_recv_shutdown_started.exit.thread.i.i

.thread.i.i:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not7.i.i.i, label %xfer_recv_shutdown_started.exit.thread.i.i, label %xfer_recv_shutdown_started.exit.i.i

xfer_recv_shutdown_started.exit.i.i:              ; preds = %.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 336
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %i.as = call zeroext i1 @Curl_shutdown_started(ptr noundef nonnull %0, i32 noundef %i.ar) #7
  %cond.fr.i.i = freeze i1 %i.as
  br i1 %cond.fr.i.i, label %.thread39.i.i, label %xfer_recv_shutdown_started.exit.thread.i.i

xfer_recv_shutdown_started.exit.thread.i.i:       ; preds = %xfer_recv_shutdown_started.exit.i.i, %.thread.i.i, %bb.n
  %.022.i.i = phi i64 [ %i.ao, %bb.n ], [ %.2.i, %xfer_recv_shutdown_started.exit.i.i ], [ %.2.i, %.thread.i.i ] ; 3 uses
  %.not27.i.i = icmp eq i64 %.022.i.i, 0
  br i1 %.not27.i.i, label %.thread39.i.i, label %bb.o

bb.o:                                             ; preds = %xfer_recv_shutdown_started.exit.thread.i.i
  %i.at = load i32, ptr %i.w, align 8, !tbaa !87
  %i.au = call i64 @curlx_uitouz(i32 noundef %i.at) #7
  %i.av = icmp ult i64 %i.au, %.022.i.i
  br i1 %i.av, label %bb.p, label %Curl_xfer_recv.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.w, align 8, !tbaa !87
  %i.ax = call i64 @curlx_uitouz(i32 noundef %i.aw) #7
  br label %Curl_xfer_recv.exit.i.i

Curl_xfer_recv.exit.i.i:                          ; preds = %bb.p, %bb.o
  %.0.i32.i.i = phi i64 [ %i.ax, %bb.p ], [ %.022.i.i, %bb.o ]
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 336
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !86
  %i.bb = call i32 @Curl_conn_recv(ptr noundef nonnull %0, i32 noundef %i.ba, ptr noundef %i.ac, i64 noundef %.0.i32.i.i, ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not28.i.i, label %.thread39.i.i, label %xfer_recv_resp.exit.i

.thread39.i.i:                                    ; preds = %Curl_xfer_recv.exit.i.i, %xfer_recv_shutdown_started.exit.thread.i.i, %xfer_recv_shutdown_started.exit.i.i
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %xfer_recv_resp.exit.thread133.thread.i

bb.q:                                             ; preds = %.thread39.i.i
  %i.be = load i32, ptr %i.u, align 1
  %i.bf = and i32 %i.be, 524288
  %.not29.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not29.i.i, label %xfer_recv_resp.exit.thread133.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %.not7.i34.i.i = icmp eq ptr %i.bg, null
  br i1 %.not7.i34.i.i, label %xfer_recv_resp.exit.thread.i, label %xfer_recv_shutdown.exit.i.i

xfer_recv_resp.exit.thread.i:                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %sendrecv_dl.exit.thread

xfer_recv_shutdown.exit.i.i:                      ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 336
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !86
  %i.bj = call i32 @Curl_conn_shutdown(ptr noundef nonnull %0, i32 noundef %i.bi, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.bj, 0              ; 2 uses
  %i.bk = load i8, ptr %i.a, align 1, !range !111
  %i.bl = trunc nuw i8 %i.bk to i1
  %.021.i.i = select i1 %.not30.i.i, i32 81, i32 %i.bj
  %cond.i.i = select i1 %.not30.i.i, i1 %i.bl, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %cond.i.i, label %xfer_recv_resp.exit.thread133.i, label %xfer_recv_resp.exit.i

xfer_recv_resp.exit.i:                            ; preds = %xfer_recv_shutdown.exit.i.i, %Curl_xfer_recv.exit.i.i
  %.1.i.i = phi i32 [ %.021.i.i, %xfer_recv_shutdown.exit.i.i ], [ %i.bb, %Curl_xfer_recv.exit.i.i ] ; 2 uses
  switch i32 %.1.i.i, label %sendrecv_dl.exit.thread [
    i32 0, label %xfer_recv_resp.exit.thread133.i
    i32 81, label %bb.s
  ]

bb.s:                                             ; preds = %xfer_recv_resp.exit.i
  %i.bm = load i32, ptr %i.u, align 1
  %i.bn = and i32 %i.bm, 73736
  %or.cond128.i = icmp eq i32 %i.bn, 65544
  br i1 %or.cond128.i, label %.thread.i, label %.thread145.i

.thread.i:                                        ; preds = %bb.s
  store i64 0, ptr %i.c, align 8, !tbaa !84
  br label %bb.t

xfer_recv_resp.exit.thread133.i:                  ; preds = %xfer_recv_resp.exit.i, %xfer_recv_shutdown.exit.i.i, %bb.q
  %.pr.pr.i = load i64, ptr %i.c, align 8, !tbaa !84 ; 2 uses
  %i.bo = icmp eq i64 %.pr.pr.i, 0
  br i1 %i.bo, label %bb.t, label %xfer_recv_resp.exit.thread133.thread.i

bb.t:                                             ; preds = %xfer_recv_resp.exit.thread133.i, %.thread.i
  %.182136.i = phi i1 [ true, %.thread.i ], [ false, %xfer_recv_resp.exit.thread133.i ]
  %i.bp = call i32 @Curl_req_stop_send_recv(ptr noundef nonnull %0) #7 ; 2 uses
  %.not111.i = icmp eq i32 %i.bp, 0
  br i1 %.not111.i, label %bb.u, label %sendrecv_dl.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bq = load i32, ptr %i.u, align 1
  %i.br = and i32 %i.bq, 16
  %.not112.i = icmp eq i32 %i.br, 0
  br i1 %.not112.i, label %.xfer_recv_resp.exit.thread133.thread_crit_edge.i, label %.thread145.thread.i

.xfer_recv_resp.exit.thread133.thread_crit_edge.i: ; preds = %bb.u
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !84
  br label %xfer_recv_resp.exit.thread133.thread.i

xfer_recv_resp.exit.thread133.thread.i:           ; preds = %.xfer_recv_resp.exit.thread133.thread_crit_edge.i, %xfer_recv_resp.exit.thread133.i, %.thread39.i.i
  %i.bs = phi i64 [ %.pre.i, %.xfer_recv_resp.exit.thread133.thread_crit_edge.i ], [ %.pr.pr.i, %xfer_recv_resp.exit.thread133.i ], [ %i.bc, %.thread39.i.i ] ; 4 uses
  %i.bt = phi i1 [ true, %.xfer_recv_resp.exit.thread133.thread_crit_edge.i ], [ false, %xfer_recv_resp.exit.thread133.i ], [ false, %.thread39.i.i ] ; 9 uses
  %.182137.i = phi i1 [ %.182136.i, %.xfer_recv_resp.exit.thread133.thread_crit_edge.i ], [ false, %xfer_recv_resp.exit.thread133.i ], [ false, %.thread39.i.i ]
  %i.bu = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 728
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.ca, null
  br i1 %.not.i130.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %xfer_recv_resp.exit.thread133.thread.i
  %i.cb = call i32 %i.ca(ptr noundef nonnull %0, ptr noundef %i.ac, i64 noundef %i.bs, i1 noundef zeroext %i.bt) #7, !inline_history !108
  br label %bb.y

bb.w:                                             ; preds = %xfer_recv_resp.exit.thread133.thread.i
  %i.cc = icmp ne i64 %i.bs, 0
  %or.cond.i.i = or i1 %i.bt, %i.cc
  br i1 %or.cond.i.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %spec.select.i.i = select i1 %i.bt, i32 129, i32 1
  %i.cd = call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef %spec.select.i.i, ptr noundef %i.ac, i64 noundef %i.bs) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.031.i.i = phi i32 [ %i.cb, %bb.v ], [ %i.cd, %bb.x ] ; 2 uses
  %i.ce = icmp eq i32 %.031.i.i, 0
  %or.cond3.i.i = and i1 %i.bt, %i.ce
  br i1 %or.cond3.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = load i32, ptr %i.u, align 1
  %i.cg = or i32 %i.cf, 24
  store i32 %i.cg, ptr %i.u, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.03140.i.i = phi i32 [ 0, %bb.z ], [ %.031.i.i, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %i.ch = load i64, ptr %i.x, align 1
  %i.ci = and i64 %i.ch, 536870912
  %.not36.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not36.i.i, label %Curl_xfer_write_resp.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !72  ; 2 uses
  %.not37.i.i = icmp eq ptr %i.cj, null
  br i1 %.not37.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !74
  %i.cm = icmp sgt i32 %i.cl, 0
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.co = icmp sgt i32 %i.cn, 0
  %or.cond5.i.i = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond5.i.i, label %bb.ae, label %Curl_xfer_write_resp.exit.i

bb.ad:                                            ; preds = %bb.ab
  %.old.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !74
  %.old4.i.i = icmp sgt i32 %.old.i.i, 0
  br i1 %.old4.i.i, label %bb.ae, label %Curl_xfer_write_resp.exit.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = zext i1 %i.bt to i32
  call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %i.bs, i32 noundef %i.cp, i32 noundef %.03140.i.i) #7
  br label %Curl_xfer_write_resp.exit.i

Curl_xfer_write_resp.exit.i:                      ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.not113.i = icmp eq i32 %.03140.i.i, 0
  br i1 %.not113.i, label %bb.af, label %sendrecv_dl.exit.thread

bb.af:                                            ; preds = %Curl_xfer_write_resp.exit.i
  %i.cq = load i32, ptr %i.u, align 1             ; 2 uses
  %i.cr = and i32 %i.cq, 2
  %.not114.i = icmp eq i32 %i.cr, 0
  br i1 %.not114.i, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ai, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = and i32 %i.cq, 8
  %i.ct = icmp ne i32 %i.cs, 0
  %or.cond.i = or i1 %i.bt, %i.ct
  br i1 %or.cond.i, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.bt, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cu = load i8, ptr %i.f, align 8, !tbaa !82
  %i.cv = and i8 %i.cu, -2
  store i8 %i.cv, ptr %i.f, align 8, !tbaa !82
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.cw = load i8, ptr %i.f, align 8, !tbaa !82
  %i.cx = and i8 %i.cw, 1
  %.not115.i = icmp eq i8 %i.cx, 0
  %i.cy = add nsw i32 %.086.i, -1
  %.not116.i = icmp eq i32 %.086.i, 0
  %or.cond172.i = select i1 %.not115.i, i1 true, i1 %.not116.i
  br i1 %or.cond172.i, label %.thread145.i, label %bb.f, !llvm.loop !109

.thread145.i:                                     ; preds = %bb.ak, %bb.s
  %.180153.i = phi i1 [ %i.bt, %bb.ak ], [ %.079.i, %bb.s ]
  %.283152.i = phi i1 [ %.182137.i, %bb.ak ], [ true, %bb.s ]
  br i1 %.180153.i, label %.thread145.thread.i, label %bb.al

bb.al:                                            ; preds = %.thread145.i
  %i.cz = load i8, ptr %i.f, align 8, !tbaa !82
  %i.da = and i8 %i.cz, 1
  %.not117.i = icmp eq i8 %i.da, 0
  br i1 %.not117.i, label %.thread145.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.283152.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 728
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !94
  %i.dg = and i64 %i.df, 12
  %.not.i131.i = icmp ne i64 %i.dg, 0
  %..i.i = zext i1 %.not.i131.i to i32
  %i.dh = call zeroext i1 @Curl_conn_data_pending(ptr noundef nonnull %0, i32 noundef %..i.i) #7
  br i1 %i.dh, label %bb.ao, label %.thread145.thread.i

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @Curl_multi_mark_dirty(ptr noundef nonnull %0) #7
  %i.di = load i64, ptr %i.x, align 1
  %i.dj = and i64 %i.di, 536870912
  %.not120.i = icmp eq i64 %i.dj, 0
  br i1 %.not120.i, label %.thread145.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !72  ; 2 uses
  %.not121.i = icmp eq ptr %i.dk, null
  br i1 %.not121.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !74
  %i.dn = icmp sgt i32 %i.dm, 0
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.dp = icmp sgt i32 %i.do, 0
  %or.cond7.i = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond7.i, label %bb.as, label %.thread145.thread.i

bb.ar:                                            ; preds = %bb.ap
  %.old5.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old6.i = icmp sgt i32 %.old5.i, 0
  br i1 %.old6.i, label %bb.as, label %.thread145.thread.i

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #7
  br label %.thread145.thread.i

.thread145.thread.i:                              ; preds = %bb.u, %bb.j, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %.thread145.i
  %i.dq = load i8, ptr %i.f, align 8, !tbaa !82
  %i.dr = and i8 %i.dq, 3
  %or.cond129.not.i = icmp eq i8 %i.dr, 2
  br i1 %or.cond129.not.i, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.thread145.thread.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = and i32 %i.dt, 4
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = trunc nuw i8 %.185.i to i1
  %or.cond10.i = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %or.cond10.i, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.dx = load i64, ptr %i.x, align 1
  %i.dy = and i64 %i.dx, 536870912
  %.not125.i = icmp eq i64 %i.dy, 0
  br i1 %.not125.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = load ptr, ptr %i.y, align 8, !tbaa !72  ; 2 uses
  %.not126.i = icmp eq ptr %i.dz, null
  br i1 %.not126.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !74
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #7
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %i.ed = call i32 @Curl_req_abort_sending(ptr noundef nonnull %0) #7 ; 0 uses
  br label %.loopexit

sendrecv_dl.exit.thread:                          ; preds = %Curl_xfer_write_resp.exit.i, %bb.t, %xfer_recv_resp.exit.i, %bb.e, %xfer_recv_resp.exit.thread.i
  %.289.i.ph = phi i32 [ %i.s, %bb.e ], [ 2, %xfer_recv_resp.exit.thread.i ], [ %.03140.i.i, %Curl_xfer_write_resp.exit.i ], [ %i.bp, %bb.t ], [ %.1.i.i, %xfer_recv_resp.exit.i ]
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
  %.not = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@Curl_retry_request:bb.a

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q
  %i.bj = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4248
  %i.bl = tail call ptr @Curl_bufref_ptr(ptr noundef nonnull %i.bk) #7
  %i.bm = tail call ptr %i.bj(ptr noundef %i.bl) #7 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !83
  %.not53 = icmp eq ptr %i.bm, null
  br i1 %.not53, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @Curl_conncontrol(ptr noundef nonnull %i.b, i32 noundef 1) #7
  %i.bn = load i32, ptr %i.k, align 8
  %i.bo = or i32 %i.bn, 256
  store i32 %i.bo, ptr %i.k, align 8
  tail call void @Curl_creader_set_rewind(ptr noundef nonnull %0, i1 noundef zeroext true) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.i, %bb.h, %bb.u, %bb.b, %bb.p
  %.036 = phi i32 [ 55, %bb.p ], [ 27, %bb.u ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.v ]
  ret i32 %.036
}

declare ptr @Curl_bufref_ptr(ptr noundef) local_unnamed_addr #2

declare void @Curl_conncontrol(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_creader_set_rewind(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_nop(ptr noundef initializes((184, 192)) %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef -1, i32 noundef -1, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @xfer_setup(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 340 ; 3 uses
  store i32 %1, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 3 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !86
  store i64 %3, ptr %i.a, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 728 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %i.m = zext i1 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 3 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = and i32 %i.o, -1572866
  %i.q = or disjoint i32 %i.p, %i.m
  store i32 %i.q, ptr %i.n, align 1
  %i.r = icmp slt i64 %3, 1
  %or.cond.not = or i1 %i.r, %i.l
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_pgrsSetDownloadSize(ptr noundef nonnull %0, i64 noundef %3) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.n, align 1
  %i.y = and i32 %i.x, 65536
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load i32, ptr %i.e, align 8, !tbaa !86
  %.not34 = icmp eq i32 %i.z, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !82
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !81
  %.not35 = icmp eq i32 %i.ad, -1
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !82
  %i.ag = or i8 %i.af, 2
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = and i64 %i.ai, 536870912
  %.not37 = icmp eq i64 %i.aj, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %.not38 = icmp eq ptr %i.al, null
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !74
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.aq = icmp sgt i32 %i.ap, 0
  %or.cond3 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !74
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !86
  %i.as = load i32, ptr %i.d, align 4, !tbaa !81
  tail call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %i.ar, i32 noundef %i.as) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_sendrecv(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef %1, i32 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_send(ptr noundef initializes((184, 192)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef %1, i32 noundef -1, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Curl_xfer_setup_recv(ptr noundef initializes((184, 192)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @xfer_setup(ptr noundef %0, i32 noundef -1, i32 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Curl_xfer_set_shutdown(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.b = load i32, ptr %i.a, align 1
  %i.c = select i1 %1, i32 524288, i32 0
  %i.d = and i32 %i.b, -1572865
  %i.e = select i1 %2, i32 1048576, i32 0
  %i.f = or disjoint i32 %i.e, %i.c
  %i.g = or disjoint i32 %i.f, %i.d
  store i32 %i.g, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_write_resp(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne i64 %2, 0
  %or.cond = or i1 %i.j, %3
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %spec.select = select i1 %3, i32 129, i32 1
  %i.k = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef %spec.select, ptr noundef %1, i64 noundef %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.031 = phi i32 [ %i.i, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq i32 %.031, 0
  %or.cond3 = and i1 %3, %i.l
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = or i32 %i.n, 24
  store i32 %i.o, ptr %i.m, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.03140 = phi i32 [ 0, %bb.f ], [ %.031, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.q = load i64, ptr %i.p, align 1
  %i.r = and i64 %i.q, 536870912
  %.not36 = icmp eq i64 %i.r, 0
  br i1 %.not36, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.not37 = icmp eq ptr %i.t, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !74
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.y = icmp sgt i32 %i.x, 0
  %or.cond5 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !74
  %.old4 = icmp sgt i32 %.old, 0
  br i1 %.old4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.z = zext i1 %3 to i32
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %2, i32 noundef %i.z, i32 noundef %.03140) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  ret i32 %.03140
}

declare i32 @Curl_client_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_trc_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_write_is_paused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef %0) #7
  ret i1 %i.a
}

declare zeroext i1 @Curl_cwriter_is_paused(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_write_resp_hd(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7
  br label %Curl_xfer_write_resp.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #7, !inline_history !146
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ne i64 %2, 0
  %or.cond.i = or i1 %i.m, %3
  br i1 %or.cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %spec.select.i = select i1 %3, i32 129, i32 1
  %i.n = tail call i32 @Curl_client_write(ptr noundef nonnull %0, i32 noundef %spec.select.i, ptr noundef %1, i64 noundef %2) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.031.i = phi i32 [ %i.l, %bb.d ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = icmp eq i32 %.031.i, 0
  %or.cond3.i = and i1 %3, %i.o
  br i1 %or.cond3.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = or i32 %i.q, 24
  store i32 %i.r, ptr %i.p, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.03140.i = phi i32 [ 0, %bb.h ], [ %.031.i, %bb.g ], [ 0, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.t = load i64, ptr %i.s, align 1
  %i.u = and i64 %i.t, 536870912
  %.not36.i = icmp eq i64 %i.u, 0
  br i1 %.not36.i, label %Curl_xfer_write_resp.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.not37.i = icmp eq ptr %i.w, null
  br i1 %.not37.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  %or.cond5.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond5.i, label %bb.m, label %Curl_xfer_write_resp.exit

bb.l:                                             ; preds = %bb.j
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_write, i64 8), align 8, !tbaa !74
  %.old4.i = icmp sgt i32 %.old.i, 0
  br i1 %.old4.i, label %bb.m, label %Curl_xfer_write_resp.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = zext i1 %3 to i32
  tail call void (ptr, ptr, ...) @Curl_trc_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %2, i32 noundef %i.ac, i32 noundef %.03140.i) #7
  br label %Curl_xfer_write_resp.exit

Curl_xfer_write_resp.exit:                        ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %.03140.i, %bb.i ], [ %.03140.i, %bb.k ], [ %.03140.i, %bb.l ], [ %.03140.i, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_write_done(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Curl_cw_out_done(ptr noundef %0) #7
  ret i32 %i.a
}

declare i32 @Curl_cw_out_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_needs_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81
  %i.e = tail call zeroext i1 @Curl_conn_needs_flush(ptr noundef %0, i32 noundef %i.d) #7
  ret i1 %i.e
}

declare zeroext i1 @Curl_conn_needs_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81
  %i.e = tail call i32 @Curl_conn_flush(ptr noundef %0, i32 noundef %i.d) #7
  ret i32 %i.e
}

declare i32 @Curl_conn_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 82, 81) i32 @Curl_xfer_send(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.d = load i32, ptr %i.c, align 4, !tbaa !81
  %i.e = tail call i32 @Curl_conn_send(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #7 ; 2 uses
  switch i32 %i.e, label %bb.e [
    i32 81, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !84
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8, !tbaa !84     ; 2 uses
  %.not14 = icmp eq i64 %i.f, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @Curl_conn_send(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87
  %i.c = tail call i64 @curlx_uitouz(i32 noundef %i.b) #7
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !87
  %i.f = tail call i64 @curlx_uitouz(i32 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = tail call i32 @Curl_conn_recv(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef %1, i64 noundef %.0, ptr noundef %3) #7
  ret i32 %i.k
}

declare i64 @curlx_uitouz(i32 noundef) local_unnamed_addr #2

declare i32 @Curl_conn_recv(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @Curl_xfer_send_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @Curl_conn_ev_data_done_send(ptr noundef %0) #7
  ret i32 0
}

declare void @Curl_conn_ev_data_done_send(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_recv_is_paused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.b = tail call zeroext i1 @Curl_rlimit_is_blocked(ptr noundef nonnull %i.a) #7
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i1 @Curl_xfer_send_is_paused(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.b = tail call zeroext i1 @Curl_rlimit_is_blocked(ptr noundef nonnull %i.a) #7
  ret i1 %i.b
}

declare zeroext i1 @Curl_rlimit_is_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_pause_send(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.b = tail call ptr @Curl_pgrs_now(ptr noundef %0) #7
  tail call void @Curl_rlimit_block(ptr noundef nonnull %i.a, i1 noundef zeroext %1, ptr noundef %i.b) #7
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @Curl_creader_is_paused(ptr noundef nonnull %0) #7
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @Curl_creader_unpause(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  tail call void @Curl_pgrsSendPause(ptr noundef nonnull %0, i1 noundef zeroext %1) #7
  ret i32 %.0
}

declare void @Curl_rlimit_block(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_creader_is_paused(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_creader_unpause(ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrsSendPause(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_xfer_pause_recv(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.b = tail call ptr @Curl_pgrs_now(ptr noundef %0) #7
  tail call void @Curl_rlimit_block(ptr noundef nonnull %i.a, i1 noundef zeroext %1, ptr noundef %i.b) #7
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @Curl_cwriter_is_paused(ptr noundef nonnull %0) #7
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @Curl_cwriter_unpause(ptr noundef nonnull %0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  %i.e = tail call i32 @Curl_conn_ev_data_pause(ptr noundef nonnull %0, i1 noundef zeroext %1) #7 ; 0 uses
  tail call void @Curl_pgrsRecvPause(ptr noundef nonnull %0, i1 noundef zeroext %1) #7
  ret i32 %.0
}

declare i32 @Curl_cwriter_unpause(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_conn_ev_data_pause(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Curl_pgrsRecvPause(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @Curl_xfer_is_secure(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
end_hunk_1
