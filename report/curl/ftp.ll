Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/ftp?download=true
inline.NumInlined: 120
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ftp_state_prepare_transfer:bb.a
bb.w:                                             ; preds = %bb.u
  %.old.i43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old1.i44 = icmp sgt i32 %.old.i43, 0
  br i1 %.old1.i44, label %bb.x, label %ftp_state_low.exit45

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.az = zext i8 %i.ap to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.bb, ptr noundef nonnull @.str.36) #10
  br label %ftp_state_low.exit45

ftp_state_low.exit45:                             ; preds = %bb.s, %bb.t, %bb.v, %bb.w, %bb.x
  store i8 31, ptr %i.ao, align 8, !tbaa !94
  br label %bb.z

bb.y:                                             ; preds = %bb.j
  %i.bc = tail call fastcc i32 @ftp_state_use_pasv(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %bb.r, %ftp_state_low.exit45, %bb.y, %ftp_state_low.exit
  %.1 = phi i32 [ %i.t, %ftp_state_low.exit ], [ %i.x, %bb.i ], [ %.0, %bb.r ], [ 0, %ftp_state_low.exit45 ], [ %i.bc, %bb.y ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftp_state_use_port(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 3, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [47 x i8], align 16               ; 7 uses
  %i.b = alloca [67 x i8], align 16               ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 8 uses
  %i.e = alloca [256 x i8], align 16              ; 4 uses
  %i.f = alloca [256 x i8], align 16              ; 3 uses
  %i.g = alloca [50 x i8], align 16               ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 10 uses
  %3 = alloca %struct.Curl_sockaddr_storage, align 8 ; 15 uses
  %i.l = alloca i32, align 4                      ; 14 uses
  %i.m = alloca [1025 x i8], align 16             ; 8 uses
  %i.n = alloca ptr, align 8                      ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  store i32 -1, ptr %i.k, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store ptr null, ptr %i.n, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %ftp_port_parse_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #9 ; 2 uses
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %ftp_port_parse_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %i.r, align 1, !tbaa !11
  switch i8 %i.u, label %bb.d [
    i8 91, label %bb.g
    i8 58, label %.thread98.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 58) #9 ; 3 uses
  %.not81.i = icmp eq ptr %i.v, null
  br i1 %.not81.i, label %.thread.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull %i.r, ptr noundef nonnull %i.z) #10
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %.thread98.i

bb.f:                                             ; preds = %bb.e
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #9
  br label %.thread.i

bb.g:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.ae = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 93) #9 ; 3 uses
  %.not82.i = icmp eq ptr %i.ae, null
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  br i1 %.not82.i, label %ftp_port_parse_string.exit, label %.thread98.i

.thread98.i:                                      ; preds = %bb.g, %bb.e, %bb.c
  %.266105.i = phi i64 [ %i.ah, %bb.g ], [ 0, %bb.c ], [ %i.y, %bb.e ]
  %.168104.i = phi ptr [ %i.ad, %bb.g ], [ null, %bb.c ], [ %i.r, %bb.e ]
  %.170103.i = phi ptr [ %i.ae, %bb.g ], [ %i.r, %bb.c ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.ai = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.170103.i, i32 noundef 58) #9 ; 2 uses
  %.not84.i = icmp eq ptr %i.ai, null
  br i1 %.not84.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.thread98.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !27
  %i.ak = call i32 @curlx_str_number(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef 65535) #10
  %.not85.i = icmp eq i32 %i.ak, 0
  br i1 %.not85.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.i, align 8, !tbaa !115
  %i.am = trunc i64 %i.al to i16                  ; 5 uses
  %i.an = call i32 @curlx_str_single(ptr noundef nonnull %i.h, i8 noundef signext 45) #10
  %.not86.i = icmp eq i32 %i.an, 0
  br i1 %.not86.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @curlx_str_number(ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, i64 noundef 65535) #10
  %.not87.i = icmp eq i32 %i.ao, 0
  br i1 %.not87.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !115
  %i.aq = trunc i64 %i.ap to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.059.i = phi i16 [ 0, %bb.h ], [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %i.am, %bb.i ]
  %.058.i = phi i16 [ 0, %bb.h ], [ %i.aq, %bb.k ], [ %i.am, %bb.j ], [ %i.am, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread98.i
  %.160.i = phi i16 [ %.059.i, %bb.l ], [ 0, %.thread98.i ]
  %.1.i = phi i16 [ %.058.i, %bb.l ], [ 0, %.thread98.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.f
  %.26695.i = phi i64 [ %.266105.i, %bb.m ], [ %i.ac, %bb.f ] ; 2 uses
  %.16894.i = phi ptr [ %.168104.i, %bb.m ], [ %i.r, %bb.f ]
  %.261.i = phi i16 [ %.160.i, %bb.m ], [ 0, %bb.f ] ; 2 uses
  %.2.i = phi i16 [ %.1.i, %bb.m ], [ 0, %bb.f ]  ; 2 uses
  %i.ar = icmp ugt i16 %.261.i, %.2.i             ; 2 uses
  %spec.select.i = select i1 %i.ar, i16 0, i16 %.261.i ; 2 uses
  %spec.select89.i = select i1 %i.ar, i16 0, i16 %.2.i ; 2 uses
  %.not88.i = icmp eq i64 %.26695.i, 0
  br i1 %.not88.i, label %ftp_port_parse_string.exit, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %bb.d
  %spec.select89116.i = phi i16 [ %spec.select89.i, %.thread.i ], [ 0, %bb.d ] ; 2 uses
  %spec.select115.i = phi i16 [ %spec.select.i, %.thread.i ], [ 0, %bb.d ] ; 2 uses
  %.16894114.i = phi ptr [ %.16894.i, %.thread.i ], [ %i.r, %bb.d ] ; 2 uses
  %.26695113.i = phi i64 [ %.26695.i, %.thread.i ], [ %i.s, %bb.d ] ; 5 uses
  %i.as = call ptr @Curl_conn_get_remote_addr(ptr noundef nonnull %0, i32 noundef 0) #10 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = icmp ugt i64 %.26695113.i, 49
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %ftp_port_parse_string.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 1 %.16894114.i, i64 %.26695113.i, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %.26695113.i
  store i8 0, ptr %i.av, align 1, !tbaa !11
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !216
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = call i32 @Curl_ipv6_scope(ptr noundef nonnull %i.ax) #10
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 780
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !217
  %i.bb = call i32 @Curl_if2ip(i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, ptr noundef nonnull %i.g, ptr noundef nonnull %i.m, i64 noundef 1025) #10
  switch i32 %i.bb, label %ftp_port_parse_string.exit [
    i32 0, label %bb.o
    i32 1, label %ftp_port_parse_string.exit.thread
    i32 2, label %.sink.split.i
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr align 1 %.16894114.i, i64 %.26695113.i, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %.26695113.i
  store i8 0, ptr %i.bc, align 1, !tbaa !11
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  br label %ftp_port_parse_string.exit.thread

ftp_port_parse_string.exit.thread:                ; preds = %.thread.thread.i, %bb.n, %.sink.split.i
  %.2106.ph = phi ptr [ %i.m, %.sink.split.i ], [ null, %.thread.thread.i ], [ null, %bb.n ]
  %.099.ph = phi i16 [ %spec.select115.i, %.sink.split.i ], [ 0, %.thread.thread.i ], [ 0, %bb.n ]
  %.098.ph = phi i16 [ %spec.select89116.i, %.sink.split.i ], [ 0, %.thread.thread.i ], [ 0, %bb.n ]
  %.172.i.ph = phi i32 [ 0, %.sink.split.i ], [ 30, %.thread.thread.i ], [ 30, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.s

ftp_port_parse_string.exit:                       ; preds = %bb.n, %bb.a, %bb.b, %bb.g, %.thread.i
  %.099 = phi i16 [ 0, %bb.g ], [ %spec.select.i, %.thread.i ], [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select115.i, %bb.n ]
  %.098 = phi i16 [ 0, %bb.g ], [ %spec.select89.i, %.thread.i ], [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select89116.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 128, ptr %i.l, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !12
  %i.bf = call i32 @getsockname(i32 noundef %i.be, ptr nonnull %3, ptr noundef nonnull %i.l) #10
  %.not.i73 = icmp eq i32 %i.bf, 0
  br i1 %.not.i73, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ftp_port_parse_string.exit
  %i.bg = tail call ptr @__errno_location() #11
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = call ptr @curlx_strerror(i32 noundef %i.bh, ptr noundef nonnull %i.f, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, ptr noundef %i.bi) #10
  br label %ftp_port_default_host.exit

bb.q:                                             ; preds = %ftp_port_parse_string.exit
  %i.bj = load i16, ptr %3, align 8, !tbaa !219   ; 2 uses
  %cond.i = icmp eq i16 %i.bj, 10
  %i.bk = zext i16 %i.bj to i32
  %.sink26.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %cond.i, i64 8, i64 4
  %.sink26.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.sink26.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.bl = call ptr @inet_ntop(i32 noundef %i.bk, ptr noundef nonnull %.sink26.i.sroa.sel.v.sroa.sel.v.sroa.sel, ptr noundef nonnull %i.m, i32 noundef 1025) #10
  %.not23.i = icmp eq ptr %i.bl, null
  br i1 %.not23.i, label %ftp_port_default_host.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %ftp_port_default_host.exit

ftp_port_default_host.exit:                       ; preds = %bb.p, %bb.q, %bb.r
  %.3107 = phi ptr [ null, %bb.q ], [ %i.m, %bb.r ], [ null, %bb.p ]
  %.197 = phi i1 [ true, %bb.q ], [ false, %bb.r ], [ true, %bb.p ]
  %.0.i = phi i32 [ 30, %bb.q ], [ 0, %bb.r ], [ 30, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.s

bb.s:                                             ; preds = %ftp_port_parse_string.exit.thread, %ftp_port_default_host.exit
  %.098121 = phi i16 [ %.098.ph, %ftp_port_parse_string.exit.thread ], [ %.098, %ftp_port_default_host.exit ] ; 7 uses
  %.099120 = phi i16 [ %.099.ph, %ftp_port_parse_string.exit.thread ], [ %.099, %ftp_port_default_host.exit ] ; 5 uses
  %.0104 = phi ptr [ %.2106.ph, %ftp_port_parse_string.exit.thread ], [ %.3107, %ftp_port_default_host.exit ] ; 2 uses
  %.096 = phi i1 [ true, %ftp_port_parse_string.exit.thread ], [ %.197, %ftp_port_default_host.exit ] ; 2 uses
  %.0 = phi i32 [ %.172.i.ph, %ftp_port_parse_string.exit.thread ], [ %.0.i, %ftp_port_default_host.exit ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.thread, label %.thread184

.thread:                                          ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 789
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !220
  %i.bo = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef nonnull %0, i8 noundef zeroext %i.bn) #10
  %i.bp = call zeroext i8 @Curl_conn_get_transport(ptr noundef nonnull %0, ptr noundef %i.p) #10
  %i.bq = call i32 @Curl_resolv_blocking(ptr noundef nonnull %0, i8 noundef zeroext %i.bo, ptr noundef %.0104, i16 noundef zeroext 0, i8 noundef zeroext %i.bp, ptr noundef nonnull %i.n) #10 ; 2 uses
  %.not.i74 = icmp eq i32 %i.bq, 0
  br i1 %.not.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.72, ptr noundef %.0104) #10
  br label %.thread184

bb.u:                                             ; preds = %.thread
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !214
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !223 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %.not27.i = icmp eq ptr %i.bs, null
  br i1 %.not27.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.v
  %.01728.i = phi ptr [ %i.bw, %bb.v ], [ %i.bs, %bb.u ] ; 5 uses
  %i.bt = call zeroext i8 @Curl_conn_get_transport(ptr noundef %0, ptr noundef %i.p) #10
  %i.bu = call i32 @Curl_socket_open(ptr noundef %0, ptr noundef nonnull %.01728.i, ptr noundef null, i8 noundef zeroext %i.bt, ptr noundef nonnull %i.k) #10 ; 2 uses
  switch i32 %i.bu, label %bb.v [
    i32 0, label %bb.w
    i32 27, label %.thread152
  ]

bb.v:                                             ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.01728.i, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !226 ; 2 uses
  %.not.i75 = icmp eq ptr %i.bw, null
  br i1 %.not.i75, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !209

._crit_edge.loopexit.i:                           ; preds = %bb.v
  %i.bx = tail call ptr @__errno_location() #11
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.u
  %.018.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.by, %._crit_edge.loopexit.i ]
  %i.bz = call ptr @curlx_strerror(i32 noundef %.018.lcssa.i, ptr noundef nonnull %i.e, i64 noundef 256) #10
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %i.bz) #10
  br label %.thread152

.thread152:                                       ; preds = %.lr.ph.i, %._crit_edge.i
  %.019.i.ph = phi i32 [ 30, %._crit_edge.i ], [ %i.bu, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %.thread184

bb.w:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %.not62 = icmp ne ptr %0, null                  ; 4 uses
  br i1 %.not62, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cb = load i64, ptr %i.ca, align 1
  %i.cc = and i64 %i.cb, 536870912
  %.not63 = icmp eq i64 %i.cc, 0
  br i1 %.not63, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !91 ; 2 uses
  %.not64 = icmp eq ptr %i.ce, null
  br i1 %.not64, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !93
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8
  %i.cj = icmp sgt i32 %i.ci, 0
  %or.cond3 = select i1 %i.ch, i1 %i.cj, i1 false
  br i1 %or.cond3, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_ftp, i64 8), align 8, !tbaa !93
  %.old2 = icmp sgt i32 %.old, 0
  br i1 %.old2, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !94
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @ftp_state_names, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27
  call void (ptr, ptr, ...) @Curl_trc_ftp(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef %i.co) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  %i.cp = load i32, ptr %i.k, align 4, !tbaa !12  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %.01728.i, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !227
  %i.cs = getelementptr inbounds nuw i8, ptr %.01728.i, i64 16 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !228
  %i.cu = zext i32 %i.ct to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr align 2 %i.cr, i64 %i.cu, i1 false)
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !228
  store i32 %i.cv, ptr %i.l, align 4, !tbaa !12
  %.not91.i = icmp ugt i16 %.099120, %.098121
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  br i1 %.not91.i, label %.outer._crit_edge.i, label %.split112.i

.split112.i:                                      ; preds = %bb.ac
  br i1 %.not62, label %.outer.i, label %.outer.us.i

.outer.us.i:                                      ; preds = %.split112.i
  br i1 %.096, label %.lr.ph.split.us113.i, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us113.i:                             ; preds = %.outer.us.i, %bb.af
  %.06292.us114.i = phi i16 [ %i.df, %bb.af ], [ %.099120, %.outer.us.i ] ; 5 uses
  %rev.i.us116.i = call noundef i16 @llvm.bswap.i16(i16 %.06292.us114.i)
  store i16 %rev.i.us116.i, ptr %i.cw, align 2, !tbaa !229
  %i.da = load i32, ptr %i.l, align 4, !tbaa !12
  %i.db = call i32 @bind(i32 noundef %i.cp, ptr nonnull %3, i32 noundef %i.da) #10
  %.not70.us117.i = icmp eq i32 %i.db, 0
  br i1 %.not70.us117.i, label %.outer._crit_edge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us113.i
  %i.dc = tail call ptr @__errno_location() #11   ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !12 ; 2 uses
  switch i32 %i.dd, label %.split.us.i [
    i32 99, label %bb.ag
    i32 98, label %bb.ae
    i32 13, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.de = icmp eq i16 %.06292.us114.i, %.098121
  br i1 %i.de, label %.split99.us.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = add i16 %.06292.us114.i, 1              ; 3 uses
  %.not.us118.i = icmp ugt i16 %i.df, %.098121
  br i1 %.not.us118.i, label %.outer._crit_edge.i, label %.lr.ph.split.us113.i, !llvm.loop !210

bb.ag:                                            ; preds = %bb.ad
  store i32 128, ptr %i.l, align 4, !tbaa !12
  %i.dg = load i32, ptr %i.cz, align 8, !tbaa !12
  %i.dh = call i32 @getsockname(i32 noundef %i.dg, ptr nonnull %3, ptr noundef nonnull %i.l) #10
  %.not78.us.i = icmp eq i32 %i.dh, 0
  br i1 %.not78.us.i, label %.lr.ph.split.us.i.preheader, label %.split130.us.i, !llvm.loop !210

.outer.i:                                         ; preds = %.split112.i
  br i1 %.096, label %.lr.ph.split.i, label %.lr.ph.split.us.i.preheader

end_hunk_0
