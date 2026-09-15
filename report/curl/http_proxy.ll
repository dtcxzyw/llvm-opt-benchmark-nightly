Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/http_proxy?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@Curl_http_proxy_create_tunnel_request:bb.a
  br i1 %.not120.i, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.y = load i8, ptr %i.x, align 2
  %i.z = and i8 %i.y, 4
  %.not121.i = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 3 uses
  br i1 %.not121.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #6
  %i.ad = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !33
  %i.ae = mul i64 %i.ac, 3
  %i.af = add i64 %i.ae, 1
  %i.ag = tail call ptr %i.ad(i64 noundef %i.af) #5, !inline_history !98 ; 4 uses
  %.not122.i = icmp eq ptr %i.ag, null
  br i1 %.not122.i, label %bb.ae, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.h
  %.090.i = phi ptr [ %i.am, %bb.h ], [ %i.ab, %bb.e ] ; 2 uses
  %.089.i = phi ptr [ %.1.i, %bb.h ], [ %i.ag, %bb.e ] ; 7 uses
  %i.ah = load i8, ptr %.090.i, align 1, !tbaa !34 ; 2 uses
  switch i8 %i.ah, label %bb.g [
    i8 0, label %.thread.i
    i8 58, label %bb.f
  ]

bb.f:                                             ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  store i8 37, ptr %.089.i, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %.089.i, i64 2
  store i8 51, ptr %i.ai, align 1, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.089.i, i64 3
  store i8 65, ptr %i.aj, align 1, !tbaa !34
  br label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.al = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  store i8 %i.ah, ptr %.089.i, align 1, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi ptr [ %i.ak, %bb.f ], [ %i.al, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.090.i, i64 1
  br label %.preheader.i, !llvm.loop !99

.thread.i:                                        ; preds = %.preheader.i
  store i8 0, ptr %.089.i, align 1, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.d
  %.sink.i = phi ptr [ %i.ag, %.thread.i ], [ %i.ab, %bb.d ]
  %.093.i = phi ptr [ %i.ag, %.thread.i ], [ null, %bb.d ] ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !32
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.27, ptr noundef %.sink.i, i32 noundef %i.ap) #5 ; 19 uses
  %.not124.i = icmp eq ptr %i.aq, null
  br i1 %.not124.i, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i32 %4, 1                       ; 3 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.097.i) #6
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #6
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #6
  %i.av = call i32 @Curl_http_req_make(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.28, i64 noundef 3, ptr noundef nonnull %.097.i, i64 noundef %i.as, ptr noundef nonnull %i.w, i64 noundef %i.at, ptr noundef nonnull %i.aq, i64 noundef %i.au) #5 ; 2 uses
  %.not126.i = icmp eq i32 %i.av, 0
  br i1 %.not126.i, label %bb.n, label %bb.ae

bb.l:                                             ; preds = %bb.j
  %i.aw = and i32 %4, -2
  %or.cond.i = icmp eq i32 %i.aw, 2
  br i1 %or.cond.i, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.097.i) #6
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #6
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #6
  %i.ba = call i32 @Curl_http_req_make(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.29, i64 noundef 7, ptr noundef nonnull %.097.i, i64 noundef %i.ax, ptr noundef nonnull %i.w, i64 noundef %i.ay, ptr noundef nonnull %i.aq, i64 noundef %i.az) #5 ; 2 uses
  %.not125.i = icmp eq i32 %i.ba, 0
  br i1 %.not125.i, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !111
  %i.bg = call i32 @Curl_http_output_auth(ptr noundef %2, ptr noundef %i.bb, ptr noundef nonnull %i.bd, i32 noundef 0, ptr noundef %i.bf, ptr noundef null, i1 noundef zeroext true) #5 ; 2 uses
  %.not127.i = icmp eq i32 %i.bg, 0
  br i1 %.not127.i, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bi = call ptr @Curl_checkProxyheaders(ptr noundef %2, ptr noundef %i.bh, ptr noundef nonnull @.str.30, i64 noundef 4) #5
  %.not128.i = icmp eq ptr %i.bi, null
  br i1 %.not128.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.bk = call i32 @Curl_dynhds_cadd(ptr noundef %i.bj, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.w) #5 ; 2 uses
  %.not129.i = icmp eq i32 %i.bk, 0
  br i1 %.not129.i, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !112 ; 2 uses
  %.not130.i = icmp eq ptr %i.bm, null
  br i1 %.not130.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.bo = call i32 @Curl_dynhds_h1_cadd_line(ptr noundef %i.bn, ptr noundef nonnull %i.bm) #5 ; 2 uses
  %.not131.i = icmp eq i32 %i.bo, 0
  br i1 %.not131.i, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.ar, label %bb.u, label %.critedge144.i

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bq = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.bp, ptr noundef nonnull @.str.31, i64 noundef 10) #5
  %.not132.i = icmp eq ptr %i.bq, null
  br i1 %.not132.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84 ; 3 uses
  %.not133.i = icmp eq ptr %i.bs, null
  br i1 %.not133.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !34
  %.not134.i = icmp eq i8 %i.bt, 0
  br i1 %.not134.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.bv = call i32 @Curl_dynhds_cadd(ptr noundef %i.bu, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.bs) #5 ; 2 uses
  %.not135.i = icmp eq i32 %i.bv, 0
  br i1 %.not135.i, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.bx = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.bw, ptr noundef nonnull @.str.32, i64 noundef 16) #5
  %.not136.i = icmp eq ptr %i.bx, null
  br i1 %.not136.i, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.bz = call i32 @Curl_dynhds_cadd(ptr noundef %i.by, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #5 ; 2 uses
  %.not137.i = icmp eq i32 %i.bz, 0
  br i1 %.not137.i, label %.critedge.i, label %bb.ae

.critedge.i:                                      ; preds = %bb.z, %bb.y
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.cb = call i32 @Curl_dynhds_cadd(ptr noundef %i.ca, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #5 ; 2 uses
  %.not141.i = icmp eq i32 %i.cb, 0
  br i1 %.not141.i, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.critedge.i
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.cd = call i32 @Curl_dynhds_cadd(ptr noundef %i.cc, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #5 ; 2 uses
  %.not142.i = icmp eq i32 %i.cd, 0
  br i1 %.not142.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.cf = call i32 @Curl_dynhds_cadd(ptr noundef %i.ce, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.15) #5 ; 2 uses
  %.not143.i = icmp eq i32 %i.cf, 0
  br i1 %.not143.i, label %bb.ad, label %bb.ae

.critedge144.i:                                   ; preds = %bb.t
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.ch = call i32 @Curl_dynhds_cadd(ptr noundef %i.cg, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #5 ; 2 uses
  %.not138.i = icmp eq i32 %i.ch, 0
  br i1 %.not138.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.critedge144.i
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.cj = call i32 @Curl_dynhds_cadd(ptr noundef %i.ci, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.15) #5 ; 2 uses
  %.not140.i = icmp eq i32 %i.cj, 0
  br i1 %.not140.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.cl = call fastcc i32 @dynhds_add_custom(ptr noundef nonnull %2, i32 noundef %.0.i.i, ptr noundef %i.ck)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.critedge144.i, %bb.ab, %bb.aa, %.critedge.i, %bb.z, %bb.x, %bb.s, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.e, %bb.c
  %.2.i = phi ptr [ %i.aq, %bb.k ], [ %i.aq, %bb.n ], [ %i.aq, %bb.s ], [ %i.aq, %.critedge.i ], [ %i.aq, %bb.aa ], [ %i.aq, %bb.ab ], [ %i.aq, %bb.ad ], [ %i.aq, %.critedge144.i ], [ %i.aq, %bb.ac ], [ %i.aq, %bb.z ], [ %i.aq, %bb.x ], [ %i.aq, %bb.q ], [ %i.aq, %bb.m ], [ null, %bb.i ], [ null, %bb.c ], [ %i.aq, %bb.l ], [ null, %bb.e ]
  %.194.i = phi ptr [ %.093.i, %bb.k ], [ %.093.i, %bb.n ], [ %.093.i, %bb.s ], [ %.093.i, %.critedge.i ], [ %.093.i, %bb.aa ], [ %.093.i, %bb.ab ], [ %.093.i, %bb.ad ], [ %.093.i, %.critedge144.i ], [ %.093.i, %bb.ac ], [ %.093.i, %bb.z ], [ %.093.i, %bb.x ], [ %.093.i, %bb.q ], [ %.093.i, %bb.m ], [ %.093.i, %bb.i ], [ null, %bb.c ], [ %.093.i, %bb.l ], [ null, %bb.e ]
  %.192.i = phi i32 [ %i.av, %bb.k ], [ %i.bg, %bb.n ], [ %i.bo, %bb.s ], [ %i.cb, %.critedge.i ], [ %i.cd, %bb.aa ], [ %i.cf, %bb.ab ], [ %i.cl, %bb.ad ], [ %i.ch, %.critedge144.i ], [ %i.cj, %bb.ac ], [ %i.bz, %bb.z ], [ %i.bv, %bb.x ], [ %i.bk, %bb.q ], [ %i.ba, %bb.m ], [ 27, %bb.i ], [ 27, %bb.c ], [ 2, %bb.l ], [ 27, %bb.e ] ; 2 uses
  %i.cm = icmp ne i32 %.192.i, 0                  ; 2 uses
  %i.cn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.co = icmp ne ptr %i.cn, null
  %or.cond3.i = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond3.i, label %bb.af, label %bb.ay

bb.af:                                            ; preds = %bb.ae
  call void @Curl_http_req_free(ptr noundef nonnull %i.cn) #5
  store ptr null, ptr %i.b, align 8, !tbaa !108
  br label %bb.ay

bb.ag:                                            ; preds = %bb.a
  %switch.tableidx83 = add i32 %4, -1             ; 2 uses
  %i.cp = icmp ult i32 %switch.tableidx83, 3
  br i1 %i.cp, label %switch.lookup84, label %proxy_http_ver_major.exit.i41

switch.lookup84:                                  ; preds = %bb.ag
  %i.cq = zext nneg i32 %switch.tableidx83 to i64
  %switch.gep85 = getelementptr inbounds nuw i8, ptr @switch.table.Curl_http_proxy_create_tunnel_request.2, i64 %i.cq
  %switch.load86 = load i8, ptr %switch.gep85, align 1
  %switch.ext87 = zext i8 %switch.load86 to i32
  br label %proxy_http_ver_major.exit.i41

proxy_http_ver_major.exit.i41:                    ; preds = %bb.ag, %switch.lookup84
  %.0.i.i42 = phi i32 [ %switch.ext87, %switch.lookup84 ], [ 0, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !108
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.cs = load i8, ptr %i.cr, align 2
  %i.ct = and i8 %i.cs, 4
  %.not.i43 = icmp eq i8 %i.ct, 0                 ; 2 uses
  %i.cu = select i1 %.not.i43, ptr @.str.13, ptr @.str.25
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.cx = select i1 %.not.i43, ptr @.str.13, ptr @.str.26
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !32
  %i.da = zext i16 %i.cz to i32
  %i.db = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.45, ptr noundef nonnull %i.cu, ptr noundef %i.cw, ptr noundef nonnull %i.cx, i32 noundef %i.da) #5 ; 5 uses
  %.not46.i = icmp eq ptr %i.db, null
  br i1 %.not46.i, label %bb.aw, label %bb.ah

bb.ah:                                            ; preds = %proxy_http_ver_major.exit.i41
  %i.dc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.db) #6
  %i.dd = call i32 @Curl_http_req_make(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.29, i64 noundef 7, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.db, i64 noundef %i.dc, ptr noundef null, i64 noundef 0) #5 ; 2 uses
  %.not47.i = icmp eq i32 %i.dd, 0
  br i1 %.not47.i, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !101
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 136
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !111
  %i.dk = call i32 @Curl_http_output_auth(ptr noundef %2, ptr noundef %i.df, ptr noundef nonnull %i.dh, i32 noundef 0, ptr noundef %i.dj, ptr noundef null, i1 noundef zeroext true) #5 ; 2 uses
  %.not48.i = icmp eq i32 %i.dk, 0
  br i1 %.not48.i, label %bb.aj, label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.dl = icmp eq i32 %4, 1                       ; 2 uses
  br i1 %i.dl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !101
  %i.dn = call ptr @Curl_checkProxyheaders(ptr noundef %2, ptr noundef %i.dm, ptr noundef nonnull @.str.30, i64 noundef 4) #5
  %.not49.i = icmp eq ptr %i.dn, null
  br i1 %.not49.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.dp = call i32 @Curl_dynhds_cadd(ptr noundef %i.do, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.db) #5 ; 2 uses
  %.not50.i = icmp eq i32 %i.dp, 0
  br i1 %.not50.i, label %bb.am, label %bb.aw

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !112 ; 2 uses
  %.not51.i = icmp eq ptr %i.dr, null
  br i1 %.not51.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.dt = call i32 @Curl_dynhds_h1_cadd_line(ptr noundef %i.ds, ptr noundef nonnull %i.dr) #5 ; 2 uses
  %.not52.i = icmp eq i32 %i.dt, 0
  br i1 %.not52.i, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.du = load ptr, ptr %i.de, align 8, !tbaa !101
  %i.dv = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.du, ptr noundef nonnull @.str.31, i64 noundef 10) #5
  %.not53.i = icmp eq ptr %i.dv, null
  br i1 %.not53.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !84 ; 3 uses
  %.not54.i = icmp eq ptr %i.dx, null
  br i1 %.not54.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !34
  %.not55.i = icmp eq i8 %i.dy, 0
  br i1 %.not55.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ea = call i32 @Curl_dynhds_cadd(ptr noundef %i.dz, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.dx) #5 ; 2 uses
  %.not56.i = icmp eq i32 %i.ea, 0
  br i1 %.not56.i, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  br i1 %i.dl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.eb = load ptr, ptr %i.de, align 8, !tbaa !101
  %i.ec = call ptr @Curl_checkProxyheaders(ptr noundef nonnull %2, ptr noundef %i.eb, ptr noundef nonnull @.str.32, i64 noundef 16) #5
  %.not57.i = icmp eq ptr %i.ec, null
  br i1 %.not57.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ee = call i32 @Curl_dynhds_cadd(ptr noundef %i.ed, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #5 ; 2 uses
  %.not58.i = icmp eq i32 %i.ee, 0
  br i1 %.not58.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.eg = call fastcc i32 @dynhds_add_custom(ptr noundef nonnull %2, i32 noundef %.0.i.i42, ptr noundef %i.ef)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ar, %bb.an, %bb.al, %bb.ai, %bb.ah, %proxy_http_ver_major.exit.i41
  %.0.i = phi i32 [ %i.dd, %bb.ah ], [ %i.dk, %bb.ai ], [ %i.dt, %bb.an ], [ %i.eg, %bb.av ], [ %i.ee, %bb.au ], [ %i.ea, %bb.ar ], [ %i.dp, %bb.al ], [ 27, %proxy_http_ver_major.exit.i41 ] ; 2 uses
  %i.eh = icmp ne i32 %.0.i, 0                    ; 2 uses
  %i.ei = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ej = icmp ne ptr %i.ei, null
  %or.cond.i44 = select i1 %i.eh, i1 %i.ej, i1 false
  br i1 %or.cond.i44, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  call void @Curl_http_req_free(ptr noundef nonnull %i.ei) #5
  store ptr null, ptr %i.a, align 8, !tbaa !108
  br label %.thread

bb.ay:                                            ; preds = %bb.af, %bb.ae
  %i.ek = load ptr, ptr @Curl_cfree, align 8, !tbaa !33
  call void %i.ek(ptr noundef %i.w) #5, !inline_history !98
  %i.el = load ptr, ptr @Curl_cfree, align 8, !tbaa !33
  call void %i.el(ptr noundef %.2.i) #5, !inline_history !98
  %i.em = load ptr, ptr @Curl_cfree, align 8, !tbaa !33
  call void %i.em(ptr noundef %.194.i) #5, !inline_history !98
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !108
  store ptr %i.en, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br i1 %i.cm, label %bb.bi, label %bb.az

.thread:                                          ; preds = %bb.ax, %bb.aw
  %i.eo = load ptr, ptr @Curl_cfree, align 8, !tbaa !33
  call void %i.eo(ptr noundef %i.db) #5, !inline_history !100
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  store ptr %i.ep, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.eh, label %bb.bi, label %.thread47

bb.az:                                            ; preds = %bb.ay
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 2187
  %i.er = load i64, ptr %i.eq, align 1
  %i.es = and i64 %i.er, 536870912
  %.not39 = icmp eq i64 %i.es, 0
  br i1 %.not39, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 4504
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !85 ; 2 uses
  %.not40 = icmp eq ptr %i.eu, null
  br i1 %.not40, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !87
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ey = icmp eq i32 %4, 2
  %i.ez = icmp eq i32 %4, 3
  %i.fa = select i1 %i.ez, ptr @.str.2, ptr @.str.3
  %i.fb = select i1 %i.ey, ptr @.str.1, ptr %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 4192
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !113
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 4200
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !114
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull %i.fb, ptr noundef %i.fd, ptr noundef %i.ff) #5
  br label %bb.bi

.thread47:                                        ; preds = %.thread
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.thread47
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 2187
  %i.fh = load i64, ptr %i.fg, align 1
  %i.fi = and i64 %i.fh, 536870912
  %.not36 = icmp eq i64 %i.fi, 0
  br i1 %.not36, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 4504
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !85 ; 2 uses
  %.not37 = icmp eq ptr %i.fk, null
  br i1 %.not37, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !87
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fo = icmp eq i32 %4, 2
  %i.fp = icmp eq i32 %4, 3
  %i.fq = select i1 %i.fp, ptr @.str.2, ptr @.str.3
  %i.fr = select i1 %i.fo, ptr @.str.1, ptr %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 120
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !111
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.fr, ptr noundef %i.ft) #5
  br label %bb.bi

bb.bi:                                            ; preds = %.thread, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.bh, %bb.bg, %bb.be, %.thread47, %bb.ay
  %.031 = phi i32 [ %.192.i, %bb.ay ], [ 0, %.thread47 ], [ 0, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ %.0.i, %.thread ]
  ret i32 %.031
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @Curl_http_proxy_inspect_tunnel_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = tail call i64 @Curl_dynhds_count(ptr noundef nonnull %i.a) #5 ; 4 uses
  %.not115 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not115, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.d = load i64, ptr %i.c, align 1
  %i.e = and i64 %i.d, 536870912
  %.not116 = icmp eq i64 %i.e, 0
  br i1 %.not116, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %.not117 = icmp eq ptr %i.g, null
  br i1 %.not117, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !87
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.sink.split, label %bb.j

bb.f:                                             ; preds = %bb.a
  br i1 %.not115, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.l = load i64, ptr %i.k, align 1
  %i.m = and i64 %i.l, 536870912
  %.not113 = icmp eq i64 %i.m, 0
  br i1 %.not113, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 2 uses
  %.not114 = icmp eq ptr %i.o, null
  br i1 %.not114, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !87
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %.str.5.sink = phi ptr [ @.str.5, %bb.d ], [ @.str.5, %bb.e ], [ @.str.6, %bb.i ], [ @.str.6, %bb.h ]
  %i.s = load i32, ptr %2, align 8, !tbaa !118
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull %.str.5.sink, i32 noundef %i.s) #5
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e, %bb.c, %bb.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.u = load i64, ptr %i.t, align 1
  %i.v = and i64 %i.u, 536870912
  %.not118 = icmp eq i64 %i.v, 0
  br i1 %.not118, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not119 = icmp eq ptr %i.x, null
  br i1 %.not119, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !87
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i64 noundef %i.b) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.b, %bb.m, %bb.l, %bb.j
  %i.ab = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.j ], [ false, %bb.b ], [ false, %bb.f ] ; 5 uses
  %.not141 = icmp eq i64 %i.b, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4504
  br i1 %i.ab, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0140.us = phi i64 [ %i.af, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.ae = tail call ptr @Curl_dynhds_getn(ptr noundef nonnull %i.a, i64 noundef %.0140.us) #5 ; 0 uses
  %i.af = add nuw i64 %.0140.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !115

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %.0140 = phi i64 [ %i.aq, %bb.s ], [ 0, %.lr.ph ] ; 2 uses
  %i.ag = tail call ptr @Curl_dynhds_getn(ptr noundef nonnull %i.a, i64 noundef %.0140) #5 ; 3 uses
  %.not142 = icmp eq ptr %i.ag, null
  br i1 %.not142, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split
  %i.ah = load i64, ptr %i.ac, align 1
  %i.ai = and i64 %i.ah, 536870912
  %.not135 = icmp eq i64 %i.ai, 0
  br i1 %.not135, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %.not136 = icmp eq ptr %i.aj, null
  br i1 %.not136, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !87
end_hunk_0
