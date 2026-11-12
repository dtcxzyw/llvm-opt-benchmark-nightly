Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/socks?download=true
inline.NumInlined: 67
inline.NumDeleted: 16
begin_hunk_0_@socks_proxy_cf_connect:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #5
  br label %bb.bq

bb.bq:                                            ; preds = %socksstate.exit210.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #5
  br label %bb.br

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.gc = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.ba) #5
  br i1 %i.gc, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gd = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.ge = call i32 @Curl_cf_send_bufq(ptr noundef %i.gd, ptr noundef %1, ptr noundef nonnull %i.ba, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.z) #5 ; 2 uses
  switch i32 %i.ge, label %bb.bt [
    i32 81, label %.loopexit289.i
    i32 0, label %bb.br
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.gf = call ptr @curl_easy_strerror(i32 noundef %i.ge) #5
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %i.gf) #5
  %i.gg = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gh = icmp eq i32 %i.gg, 17
  br i1 %i.gh, label %socks_failed.exit214.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit214.i

socks_failed.exit214.i:                           ; preds = %bb.bu, %bb.bt
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  store i32 29, ptr %i.gi, align 8, !tbaa !104
  br label %socks5_connect.exit

.loopexit289.i:                                   ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  br label %socks5_connect.exit

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  %i.gj = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gk = icmp eq i32 %i.gj, 11
  br i1 %i.gk, label %socksstate.exit215.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 11, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit215.i

socksstate.exit215.i:                             ; preds = %bb.bw, %bb.bv, %bb.f
  %i.gl = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull %0, ptr noundef %1, i64 noundef 2, ptr noundef %i.ah) ; 3 uses
  %.not181.i = icmp eq i32 %i.gl, 0
  br i1 %.not181.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %socksstate.exit215.i
  %i.gm = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.gn = icmp eq i32 %i.gm, 17
  br i1 %i.gn, label %socks_failed.exit216.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit216.i

socks_failed.exit216.i:                           ; preds = %bb.by, %bb.bx
  %i.go = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 %i.gl, ptr %i.go, align 8, !tbaa !104
  br label %socks5_connect.exit

bb.bz:                                            ; preds = %socksstate.exit215.i
  %i.gp = load i8, ptr %i.ah, align 1, !tbaa !17, !range !99, !noundef !100
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.ca, label %socks5_connect.exit

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #5
  %i.gr = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #5
  %i.gs = load i64, ptr %i.y, align 8
  %i.gt = icmp ugt i64 %i.gs, 1
  %or.cond.not.i217.i = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %or.cond.not.i217.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.22) #5
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.gu = load ptr, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !94  ; 2 uses
  %.not.i219.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i219.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gx = load i8, ptr %i.gu, align 1, !tbaa !94
  %i.gy = zext i8 %i.gx to i32
  %i.gz = zext i8 %i.gw to i32
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %i.gy, i32 noundef %i.gz) #5
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cb
  %.0.i218.ph.i = phi i32 [ 33, %bb.cd ], [ 15, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  %i.ha = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.hb = icmp eq i32 %i.ha, 17
  br i1 %i.hb, label %socks_failed.exit220.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit220.i

socks_failed.exit220.i:                           ; preds = %bb.cf, %bb.ce
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 %.0.i218.ph.i, ptr %i.hc, align 8, !tbaa !104
  br label %socks5_connect.exit

bb.cg:                                            ; preds = %bb.cc
  call void @Curl_bufq_skip(ptr noundef nonnull %i.ba, i64 noundef 2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  %i.hd = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.he = icmp eq i32 %i.hd, 12
  br i1 %i.he, label %socksstate.exit221.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 12, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit221.i

socksstate.exit221.i:                             ; preds = %bb.ch, %bb.cg, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #5
  store i8 5, ptr %i.u, align 1, !tbaa !94
  store i8 1, ptr %i.bb, align 1, !tbaa !94
  store i8 0, ptr %i.bc, align 1, !tbaa !94
  %i.hf = load i8, ptr %i.bd, align 1
  %i.hg = and i8 %i.hf, 1
  %.not.i222.i = icmp eq i8 %i.hg, 0
  br i1 %.not.i222.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %socksstate.exit221.i
  %i.hh = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.u, i64 noundef 3, ptr noundef nonnull %i.w) #5
  %i.hi = icmp ne i32 %i.hh, 0
  %i.hj = load i64, ptr %i.w, align 8
  %i.hk = icmp ne i64 %i.hj, 3
  %or.cond.i223.i = select i1 %i.hi, i1 true, i1 %i.hk
  br i1 %or.cond.i223.i, label %select.unfold265.i, label %bb.cx

bb.cj:                                            ; preds = %socksstate.exit221.i
  %i.hl = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !92 ; 3 uses
  %i.ho = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.hn, i32 noundef 58) #6
  %.not45.i.i = icmp eq ptr %i.ho, null
  br i1 %.not45.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.hp = call i32 @inet_pton(i32 noundef 10, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.v) #5
  %.not46.i.i = icmp eq i32 %i.hp, 1
  br i1 %.not46.i.i, label %bb.cn, label %select.unfold265.i

bb.cl:                                            ; preds = %bb.cj
  %i.hq = call i32 @inet_pton(i32 noundef 2, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.v) #5
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hs = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !92 ; 2 uses
  %i.hv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hu) #6
  %i.hw = trunc i64 %i.hv to i8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %.042.i.i = phi ptr [ %i.v, %bb.ck ], [ %i.hu, %bb.cm ], [ %i.v, %bb.cl ]
  %i.hx = phi i64 [ 4, %bb.ck ], [ 5, %bb.cm ], [ 4, %bb.cl ] ; 2 uses
  %.041.i.i = phi i8 [ 4, %bb.ck ], [ 3, %bb.cm ], [ 1, %bb.cl ]
  %.040.i.i = phi i8 [ 16, %bb.ck ], [ %i.hw, %bb.cm ], [ 4, %bb.cl ] ; 2 uses
  store i8 %.041.i.i, ptr %i.bf, align 1, !tbaa !94
  store i8 %.040.i.i, ptr %i.bg, align 1, !tbaa !94
  %i.hy = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.u, i64 noundef %i.hx, ptr noundef nonnull %i.w) #5
  %.not47.i.i = icmp eq i32 %i.hy, 0
  %i.hz = load i64, ptr %i.w, align 8
  %.not48.i.i = icmp eq i64 %i.hz, %i.hx
  %or.cond54.i.i = select i1 %.not47.i.i, i1 %.not48.i.i, i1 false
  br i1 %or.cond54.i.i, label %bb.co, label %select.unfold265.i

bb.co:                                            ; preds = %bb.cn
  %i.ia = zext i8 %.040.i.i to i64                ; 2 uses
  %i.ib = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %.042.i.i, i64 noundef %i.ia, ptr noundef nonnull %i.w) #5
  %.not49.i.i = icmp eq i32 %i.ib, 0
  %i.ic = load i64, ptr %i.w, align 8
  %.not50.i.i = icmp eq i64 %i.ic, %i.ia
  %or.cond55.i.i = select i1 %.not49.i.i, i1 %.not50.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.cp, label %select.unfold265.i

bb.cp:                                            ; preds = %bb.co
  %i.id = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %4 = load i16, ptr %i.ie, align 8, !tbaa !93    ; 2 uses
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  store i8 %6, ptr %i.u, align 1, !tbaa !94
  %i.if = trunc i16 %4 to i8
  store i8 %i.if, ptr %i.bb, align 1, !tbaa !94
  %i.ig = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.u, i64 noundef 2, ptr noundef nonnull %i.w) #5
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = load i64, ptr %i.w, align 8
  %i.ij = icmp ne i64 %i.ii, 2
  %or.cond3.i225.i = select i1 %i.ih, i1 true, i1 %i.ij
  br i1 %or.cond3.i225.i, label %select.unfold265.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  br i1 %.not51.i.i, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ik = load i64, ptr %i.bh, align 1
  %i.il = and i64 %i.ik, 536870912
  %.not52.i.i = icmp eq i64 %i.il, 0
  br i1 %.not52.i.i, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.im = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.im, null
  br i1 %.not53.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i32, ptr %i.in, align 8, !tbaa !87
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.iq = load ptr, ptr %0, align 8, !tbaa !19
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !88
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.iu = load ptr, ptr %i.be, align 8, !tbaa !89 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !92
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iy = load i16, ptr %i.ix, align 8, !tbaa !93
  %i.iz = zext i16 %i.iy to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %i.iw, i32 noundef %i.iz) #5
  br label %bb.cx

select.unfold265.i:                               ; preds = %bb.cp, %bb.co, %bb.cn, %bb.ck, %bb.ci
  %.0.i224.i = phi i32 [ 30, %bb.cn ], [ 30, %bb.cp ], [ 30, %bb.co ], [ 1, %bb.ck ], [ 30, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  %i.ja = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.jb = icmp eq i32 %i.ja, 17
  br i1 %i.jb, label %socks_failed.exit226.i, label %bb.cw

bb.cw:                                            ; preds = %select.unfold265.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit226.i

socks_failed.exit226.i:                           ; preds = %bb.cw, %select.unfold265.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 %.0.i224.i, ptr %i.jc, align 8, !tbaa !104
  br label %socks5_connect.exit

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.cq, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  %i.jd = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.je = and i8 %i.jd, 1
  %.not184.i = icmp eq i8 %i.je, 0
  br i1 %.not184.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jf = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.jg = icmp eq i32 %i.jf, 14
  br i1 %i.jg, label %socksstate.exit233.i, label %socksstate.exit233.sink.split.i

bb.cz:                                            ; preds = %bb.cx
  %i.jh = or i8 %i.jd, 2                          ; 3 uses
  store i8 %i.jh, ptr %i.bd, align 1
  %i.ji = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.jj = icmp eq i32 %i.ji, 13
  br i1 %i.jj, label %socksstate.exit228.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 13, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit228.i

socksstate.exit228.loopexit.i:                    ; preds = %bb.f
  %.pre331.i = load i8, ptr %i.bd, align 1
  br label %socksstate.exit228.i

socksstate.exit228.i:                             ; preds = %socksstate.exit228.loopexit.i, %bb.da, %bb.cz
  %i.jk = phi i8 [ %.pre331.i, %socksstate.exit228.loopexit.i ], [ %i.jh, %bb.da ], [ %i.jh, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  store i8 0, ptr %i.ah, align 1, !tbaa !17
  %i.jl = and i8 %i.jk, 2
  %.not.i229.i = icmp eq i8 %i.jl, 0
  br i1 %.not.i229.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %socksstate.exit228.i
  %i.jm = and i8 %i.jk, -3
  store i8 %i.jm, ptr %i.bd, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !96
  %i.jp = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef %1, i8 noundef zeroext %i.jo) #5
  %i.jq = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.jr = call i32 @Curl_cf_dns_insert_after(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %i.jp, ptr noundef %i.jq, i8 noundef zeroext 3, i1 noundef zeroext true) #5
  %.not88.i.i = icmp eq i32 %i.jr, 0
  br i1 %.not88.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.25) #5
  br label %socks5_resolving.exit.thread.i

bb.dd:                                            ; preds = %bb.db, %socksstate.exit228.i
  %i.js = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.jt = call i32 @Curl_conn_cf_connect(ptr noundef %i.js, ptr noundef %1, ptr noundef nonnull %i.t) #5
  %.not89.i.i = icmp eq i32 %i.jt, 0
  br i1 %.not89.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ju = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !92
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef %i.jw) #5
  br label %socks5_resolving.exit.thread.i

bb.df:                                            ; preds = %bb.dd
  %i.jx = load i8, ptr %i.t, align 1, !tbaa !17, !range !99, !noundef !100
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.dg, label %bb.dw

bb.dg:                                            ; preds = %bb.df
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 2184
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !108
  %.not90.i.i = icmp eq i8 %i.ka, 1
  br i1 %.not90.i.i, label %.thread.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kb = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.kc = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.kd = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.kb, ptr noundef nonnull %1, ptr noundef %i.kc, i32 noundef 10, i32 noundef 0) #5 ; 2 uses
  %.not91.i.i = icmp eq ptr %i.kd, null
  br i1 %.not91.i.i, label %.thread.i.i, label %.thread106.i.i

.thread.i.i:                                      ; preds = %bb.dh, %bb.dg
  %i.ke = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.kf = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.kg = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.ke, ptr noundef nonnull %1, ptr noundef %i.kf, i32 noundef 2, i32 noundef 0) #5 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.kg, null
  br i1 %.not92.i.i, label %bb.di, label %.thread106.i.i

bb.di:                                            ; preds = %.thread.i.i
  %i.kh = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !92
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, ptr noundef %i.kj) #5
  br label %socks5_resolving.exit.thread.i

.thread106.i.i:                                   ; preds = %.thread.i.i, %bb.dh
  %.1109.i.i = phi ptr [ %i.kg, %.thread.i.i ], [ %i.kd, %bb.dh ] ; 4 uses
  call void @Curl_printable_address(ptr noundef nonnull %.1109.i.i, ptr noundef nonnull %i.q, i64 noundef 46) #5
  %i.kk = getelementptr inbounds nuw i8, ptr %.1109.i.i, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !112
  switch i32 %i.kl, label %bb.dr [
    i32 2, label %bb.dj
    i32 10, label %bb.dn
  ]

bb.dj:                                            ; preds = %.thread106.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %.1109.i.i, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !113
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 4 uses
  %i.kp = load i64, ptr %i.bh, align 1
  %i.kq = and i64 %i.kp, 536870912
  %.not97.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not97.i.i, label %bb.ds, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kr = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %.not98.i.i = icmp eq ptr %i.kr, null
  br i1 %.not98.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !87
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.kv = load ptr, ptr %0, align 8, !tbaa !19
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !88
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.sink.split.i.i, label %bb.ds

bb.dn:                                            ; preds = %.thread106.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.1109.i.i, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load i64, ptr %i.bh, align 1
  %i.ld = and i64 %i.lc, 536870912
  %.not94.i.i = icmp eq i64 %i.ld, 0
  br i1 %.not94.i.i, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.le = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %.not95.i.i = icmp eq ptr %i.le, null
  br i1 %.not95.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !87
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.li = load ptr, ptr %0, align 8, !tbaa !19
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !88
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.sink.split.i.i, label %bb.ds

bb.dr:                                            ; preds = %.thread106.i.i
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.q) #5
  br label %socks5_resolving.exit.thread.i

.sink.split.i.i:                                  ; preds = %bb.dq, %bb.dm
  %.str.27.sink.i.i = phi ptr [ @.str.27, %bb.dm ], [ @.str.28, %bb.dq ]
  %.080.ph.ph.i.i = phi ptr [ %i.ko, %bb.dm ], [ %i.lb, %bb.dq ]
  %.079.ph.ph.i.i = phi i8 [ 1, %bb.dm ], [ 4, %bb.dq ]
  %.078.ph.ph.i.i = phi i64 [ 4, %bb.dm ], [ 16, %bb.dq ]
  %i.lm = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load i16, ptr %i.ln, align 8, !tbaa !93
  %i.lp = zext i16 %i.lo to i32
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %.str.27.sink.i.i, ptr noundef nonnull %i.q, i32 noundef %i.lp) #5
  br label %bb.ds

bb.ds:                                            ; preds = %.sink.split.i.i, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %bb.dl, %bb.dj
  %.080.ph.i.i = phi ptr [ %i.lb, %bb.dq ], [ %i.lb, %bb.dp ], [ %i.ko, %bb.dj ], [ %i.ko, %bb.dl ], [ %i.lb, %bb.dn ], [ %i.ko, %bb.dm ], [ %.080.ph.ph.i.i, %.sink.split.i.i ]
  %.079.ph.i.i = phi i8 [ 4, %bb.dq ], [ 4, %bb.dp ], [ 1, %bb.dj ], [ 1, %bb.dl ], [ 4, %bb.dn ], [ 1, %bb.dm ], [ %.079.ph.ph.i.i, %.sink.split.i.i ]
  %.078.ph.i.i = phi i64 [ 16, %bb.dq ], [ 16, %bb.dp ], [ 4, %bb.dj ], [ 4, %bb.dl ], [ 16, %bb.dn ], [ 4, %bb.dm ], [ %.078.ph.ph.i.i, %.sink.split.i.i ] ; 2 uses
  store i8 %.079.ph.i.i, ptr %i.r, align 1, !tbaa !94
  %i.lq = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.r, i64 noundef 1, ptr noundef nonnull %i.s) #5
  %i.lr = icmp ne i32 %i.lq, 0
  %i.ls = load i64, ptr %i.s, align 8
  %i.lt = icmp ne i64 %i.ls, 1
  %or.cond7.i.i = select i1 %i.lr, i1 true, i1 %i.lt
  br i1 %or.cond7.i.i, label %socks5_resolving.exit.thread.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lu = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %.080.ph.i.i, i64 noundef %.078.ph.i.i, ptr noundef nonnull %i.s) #5
  %.not100.i.i = icmp eq i32 %i.lu, 0
  %i.lv = load i64, ptr %i.s, align 8
  %.not101.i.i = icmp eq i64 %i.lv, %.078.ph.i.i
  %or.cond102.i.i = select i1 %.not100.i.i, i1 %.not101.i.i, i1 false
  br i1 %or.cond102.i.i, label %bb.du, label %socks5_resolving.exit.thread.i

bb.du:                                            ; preds = %bb.dt
  %i.lw = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %7 = load i16, ptr %i.lx, align 8, !tbaa !93    ; 2 uses
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  store i8 %9, ptr %i.r, align 1, !tbaa !94
  %i.ly = trunc i16 %7 to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !94
  %i.ma = call i32 @Curl_bufq_write(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.r, i64 noundef 2, ptr noundef nonnull %i.s) #5
  %i.mb = icmp eq i32 %i.ma, 0
  %i.mc = load i64, ptr %i.s, align 8
  %i.md = icmp eq i64 %i.mc, 2
  %or.cond10.not.i.i = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond10.not.i.i, label %bb.dx, label %socks5_resolving.exit.thread.i

socks5_resolving.exit.thread.i:                   ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.di, %bb.de, %bb.dc
  %.082.i270.i = phi i32 [ 31, %bb.dc ], [ 27, %bb.de ], [ 27, %bb.dr ], [ 30, %bb.du ], [ 30, %bb.dt ], [ 30, %bb.ds ], [ 27, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  %i.me = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mf = icmp eq i32 %i.me, 17
  br i1 %i.mf, label %socks_failed.exit232.i, label %bb.dv

bb.dv:                                            ; preds = %socks5_resolving.exit.thread.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit232.i

socks_failed.exit232.i:                           ; preds = %bb.dv, %socks5_resolving.exit.thread.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 %.082.i270.i, ptr %i.mg, align 8, !tbaa !104
  br label %socks5_connect.exit

bb.dw:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  br label %socks5_connect.exit

bb.dx:                                            ; preds = %bb.du
  store i8 1, ptr %i.ah, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  %i.mh = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mi = icmp eq i32 %i.mh, 14
  br i1 %i.mi, label %socksstate.exit233.i, label %socksstate.exit233.sink.split.i

socksstate.exit233.sink.split.i:                  ; preds = %bb.dx, %bb.cy
  store i32 14, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit233.i

socksstate.exit233.i:                             ; preds = %socksstate.exit233.sink.split.i, %bb.dx, %bb.cy, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dz, %socksstate.exit233.i
  %i.mj = call zeroext i1 @Curl_bufq_is_empty(ptr noundef nonnull %i.ba) #5
  br i1 %i.mj, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mk = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.ml = call i32 @Curl_cf_send_bufq(ptr noundef %i.mk, ptr noundef %1, ptr noundef nonnull %i.ba, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.p) #5 ; 2 uses
  switch i32 %i.ml, label %bb.ea [
    i32 81, label %.loopexit.i
    i32 0, label %bb.dy
  ]

bb.ea:                                            ; preds = %bb.dz
  %i.mm = call ptr @curl_easy_strerror(i32 noundef %i.ml) #5
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %i.mm) #5
  %i.mn = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mo = icmp eq i32 %i.mn, 17
  br i1 %i.mo, label %socks_failed.exit237.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit237.i

socks_failed.exit237.i:                           ; preds = %bb.eb, %bb.ea
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  store i32 29, ptr %i.mp, align 8, !tbaa !104
  br label %socks5_connect.exit

.loopexit.i:                                      ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  br label %socks5_connect.exit

bb.ec:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  %i.mq = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.mr = icmp eq i32 %i.mq, 15
  br i1 %i.mr, label %socksstate.exit238.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i32 15, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit238.i

socksstate.exit238.i:                             ; preds = %bb.ed, %bb.ec, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  %i.ms = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %0, ptr noundef %1, i64 noundef 8, ptr noundef nonnull %i.ah) ; 2 uses
  %.not.i239.i = icmp eq i32 %i.ms, 0
  br i1 %.not.i239.i, label %bb.ee, label %socks5_recv_resp1.exit.thread.i

bb.ee:                                            ; preds = %socksstate.exit238.i
  %i.mt = load i8, ptr %i.ah, align 1, !tbaa !17, !range !99, !noundef !100
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.ef, label %socks5_recv_resp1.exit.thread285.thread.i

bb.ef:                                            ; preds = %bb.ee
  %i.mv = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #5
  %i.mw = load i64, ptr %i.o, align 8
  %i.mx = icmp ugt i64 %i.mw, 7
  %or.cond.not.i241.i = select i1 %i.mv, i1 %i.mx, i1 false
  br i1 %or.cond.not.i241.i, label %bb.eg, label %socks5_recv_resp1.exit.thread.sink.split.i

bb.eg:                                            ; preds = %bb.ef
  %i.my = load ptr, ptr %i.n, align 8, !tbaa !95  ; 4 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !94
  %.not37.i242.i = icmp eq i8 %i.mz, 5
  br i1 %.not37.i242.i, label %bb.eh, label %socks5_recv_resp1.exit.thread.sink.split.i

bb.eh:                                            ; preds = %bb.eg
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !94  ; 4 uses
  %.not38.i243.i = icmp eq i8 %i.nb, 0
  br i1 %.not38.i243.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nc = zext i8 %i.nb to i32
  %i.nd = load ptr, ptr %i.be, align 8, !tbaa !89
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !92
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %i.nf, i32 noundef %i.nc) #5
  %i.ng = icmp ult i8 %i.nb, 9
  br i1 %i.ng, label %socks5_recv_resp1.exit.i, label %socks5_recv_resp1.exit.thread.i

bb.ej:                                            ; preds = %bb.eh
  %i.nh = getelementptr inbounds nuw i8, ptr %i.my, i64 3
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !94
  switch i8 %i.ni, label %socks5_recv_resp1.exit.thread.sink.split.i [
    i8 1, label %bb.em
    i8 3, label %bb.ek
    i8 4, label %bb.el
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !94
  %i.nl = zext i8 %i.nk to i64
  %i.nm = add nuw nsw i64 %i.nl, 7
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.031.i244.i = phi i64 [ 22, %bb.el ], [ %i.nm, %bb.ek ], [ 10, %bb.ej ] ; 2 uses
  %i.nn = call fastcc i32 @socks_recv(ptr noundef nonnull %i.ak, ptr noundef nonnull readonly %0, ptr noundef %1, i64 noundef %.031.i244.i, ptr noundef nonnull %i.ah) ; 2 uses
  %.not39.i245.i = icmp eq i32 %i.nn, 0
  br i1 %.not39.i245.i, label %bb.en, label %socks5_recv_resp1.exit.thread.i

bb.en:                                            ; preds = %bb.em
  %i.no = load i8, ptr %i.ah, align 1, !tbaa !17, !range !99, !noundef !100
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.eo, label %socks5_recv_resp1.exit.thread285.thread.i

bb.eo:                                            ; preds = %bb.en
  %i.nq = call zeroext i1 @Curl_bufq_peek(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #5
  %i.nr = load i64, ptr %i.o, align 8
  %i.ns = icmp uge i64 %i.nr, %.031.i244.i
  %or.cond44.not.i.i = select i1 %i.nq, i1 %i.ns, i1 false
  br i1 %or.cond44.not.i.i, label %bb.eq, label %socks5_recv_resp1.exit.thread.sink.split.i

socks5_recv_resp1.exit.thread.sink.split.i:       ; preds = %bb.eo, %bb.ej, %bb.eg, %bb.ef
  %.str.30.sink.i = phi ptr [ @.str.33, %bb.ej ], [ @.str.30, %bb.ef ], [ @.str.31, %bb.eg ], [ @.str.30, %bb.eo ]
  %.032.i240.ph.ph.i = phi i32 [ 1, %bb.ej ], [ 15, %bb.ef ], [ 2, %bb.eg ], [ 15, %bb.eo ]
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull %.str.30.sink.i) #5
  br label %socks5_recv_resp1.exit.thread.i

socks5_recv_resp1.exit.thread285.thread.i:        ; preds = %bb.en, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  br label %socks5_connect.exit

socks5_recv_resp1.exit.i:                         ; preds = %bb.ei
  %i.nt = zext nneg i8 %i.nb to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr @socks5_recv_resp1.lookup, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !97
  br label %socks5_recv_resp1.exit.thread.i

socks5_recv_resp1.exit.thread.i:                  ; preds = %socks5_recv_resp1.exit.i, %socks5_recv_resp1.exit.thread.sink.split.i, %bb.em, %bb.ei, %socksstate.exit238.i
  %.032.i240283.i = phi i32 [ %i.nv, %socks5_recv_resp1.exit.i ], [ %i.nn, %bb.em ], [ %i.ms, %socksstate.exit238.i ], [ 25, %bb.ei ], [ %.032.i240.ph.ph.i, %socks5_recv_resp1.exit.thread.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  %i.nw = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.nx = icmp eq i32 %i.nw, 17
  br i1 %i.nx, label %socks_failed.exit246.i, label %bb.ep

bb.ep:                                            ; preds = %socks5_recv_resp1.exit.thread.i
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit246.i

socks_failed.exit246.i:                           ; preds = %bb.ep, %socks5_recv_resp1.exit.thread.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 %.032.i240283.i, ptr %i.ny, align 8, !tbaa !104
  br label %socks5_connect.exit

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  br i1 %.not51.i.i, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.nz = load i64, ptr %i.bh, align 1
  %i.oa = and i64 %i.nz, 536870912
  %.not189.i = icmp eq i64 %i.oa, 0
  br i1 %.not189.i, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ob = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %.not190.i = icmp eq ptr %i.ob, null
  br i1 %.not190.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !87
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.es, %bb.et
  %i.of = load ptr, ptr %0, align 8, !tbaa !19
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !88
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #5
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.er, %bb.eq
  %i.oj = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.ok = icmp eq i32 %i.oj, 16
  br i1 %i.ok, label %socks5_connect.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 16, ptr %i.ak, align 8, !tbaa !30
  br label %socks5_connect.exit

bb.ey:                                            ; preds = %bb.f
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !104
  br label %socks5_connect.exit

socks_failed.exit248.i:                           ; preds = %bb.f
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  %i.on = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 30, ptr %i.on, align 8, !tbaa !104
  br label %socks5_connect.exit

socks5_connect.exit:                              ; preds = %bb.f, %socks_failed.exit.i, %socks_failed.exit200.i, %.loopexit288.i, %socks_failed.exit202.i, %bb.an, %socks_failed.exit205.i, %socks_failed.exit206.i, %socks_failed.exit209.i, %socks_failed.exit214.i, %.loopexit289.i, %socks_failed.exit216.i, %bb.bz, %socks_failed.exit220.i, %socks_failed.exit226.i, %socks_failed.exit232.i, %bb.dw, %socks_failed.exit237.i, %.loopexit.i, %socks5_recv_resp1.exit.thread285.thread.i, %socks_failed.exit246.i, %bb.ew, %bb.ex, %bb.ey, %socks_failed.exit248.i
  %.0.i = phi i32 [ 30, %socks_failed.exit248.i ], [ %.024.i.ph.i, %socks_failed.exit.i ], [ 29, %socks_failed.exit200.i ], [ %i.dt, %socks_failed.exit202.i ], [ %.0.i203.ph.i, %socks_failed.exit205.i ], [ 0, %bb.ex ], [ %i.om, %bb.ey ], [ 5, %socks_failed.exit206.i ], [ %.032.i.ph.i, %socks_failed.exit209.i ], [ 29, %socks_failed.exit214.i ], [ %i.gl, %socks_failed.exit216.i ], [ %.0.i218.ph.i, %socks_failed.exit220.i ], [ %.0.i224.i, %socks_failed.exit226.i ], [ %.082.i270.i, %socks_failed.exit232.i ], [ 29, %socks_failed.exit237.i ], [ %.032.i240283.i, %socks_failed.exit246.i ], [ 0, %socks5_recv_resp1.exit.thread285.thread.i ], [ 0, %.loopexit.i ], [ 0, %bb.dw ], [ 0, %bb.ew ], [ 0, %.loopexit289.i ], [ 0, %.loopexit288.i ], [ 0, %bb.an ], [ 0, %bb.bz ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #5
  br label %bb.hn

bb.ez:                                            ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 11 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.ak, i64 99 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 10 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 2187 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 4504 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ak, i64 72 ; 8 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  %.pre.i67 = load i32, ptr %i.ak, align 8, !tbaa !30
  switch i32 %.pre.i67, label %socks_failed.exit171.i [
    i32 0, label %socksstate.exit.i80
    i32 1, label %bb.fb
    i32 2, label %socksstate.exit153.loopexit.i
    i32 3, label %socksstate.exit165.i
    i32 4, label %socksstate.exit167.i
    i32 16, label %socks4_connect.exit
    i32 17, label %bb.hm
  ]

bb.fa:                                            ; preds = %bb.fw, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  br label %socksstate.exit165.i

socksstate.exit.i80:                              ; preds = %bb.ez
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  store i8 4, ptr %i.oz, align 2, !tbaa !101
  store i32 1, ptr %i.ak, align 8, !tbaa !30
  br label %bb.fb

bb.fb:                                            ; preds = %socksstate.exit.i80, %bb.ez
  tail call void @Curl_bufq_reset(ptr noundef nonnull %i.oo) #5
  %i.pa = load i8, ptr %i.op, align 1
  %i.pb = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.pc = icmp ne i8 %i.pb, 6                     ; 3 uses
  %i.pd = select i1 %i.pc, i8 0, i8 4
  %i.pe = and i8 %i.pa, -8
  %i.pf = zext i1 %i.pc to i8
  %i.pg = or disjoint i8 %i.pe, %i.pf
  %i.ph = or disjoint i8 %i.pg, %i.pd
  store i8 %i.ph, ptr %i.op, align 1
  store i32 0, ptr %i.oq, align 8, !tbaa !104
  store i8 1, ptr %i.or, align 8, !tbaa !96
  br i1 %.not.i, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pi = load i64, ptr %i.os, align 1
  %i.pj = and i64 %i.pi, 536870912
  %.not133.i = icmp eq i64 %i.pj, 0
  br i1 %.not133.i, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pk = load ptr, ptr %i.ot, align 8, !tbaa !85 ; 2 uses
  %.not134.i = icmp eq ptr %i.pk, null
  br i1 %.not134.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !87
  %i.pn = icmp sgt i32 %i.pm, 0
  br i1 %i.pn, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  %i.po = load ptr, ptr %0, align 8, !tbaa !19
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !88
  %i.pr = icmp sgt i32 %i.pq, 0
  br i1 %i.pr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.ps = select i1 %i.pc, ptr @.str.4, ptr @.str.35
  %i.pt = load ptr, ptr %i.ou, align 8, !tbaa !89 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !92
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.px = load i16, ptr %i.pw, align 8, !tbaa !93
  %i.py = zext i16 %i.px to i32
  tail call void (ptr, ptr, ptr, ...) @Curl_trc_cf_infof(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.ps, ptr noundef %i.pv, i32 noundef %i.py) #5
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fc, %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  store i8 4, ptr %i.i, align 1, !tbaa !94
  store i8 1, ptr %i.ov, align 1, !tbaa !94
  %i.pz = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %10 = load i16, ptr %i.qa, align 8, !tbaa !93   ; 2 uses
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  store i8 %12, ptr %i.ow, align 1, !tbaa !94
  %i.qb = trunc i16 %10 to i8
  store i8 %i.qb, ptr %i.ox, align 1, !tbaa !94
  %i.qc = call i32 @Curl_bufq_write(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.i, i64 noundef 4, ptr noundef nonnull %i.j) #5
  %i.qd = icmp eq i32 %i.qc, 0
  %i.qe = load i64, ptr %i.j, align 8
  %i.qf = icmp eq i64 %i.qe, 4
  %or.cond.i.not.i = select i1 %i.qd, i1 %i.qf, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br i1 %or.cond.i.not.i, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.qg = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.qh = icmp eq i32 %i.qg, 17
  br i1 %i.qh, label %socks_failed.exit.i74, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socks_failed.exit.i74

socks_failed.exit.i74:                            ; preds = %bb.fj, %bb.fi
  store i32 30, ptr %i.oq, align 8, !tbaa !104
  br label %socks4_connect.exit

bb.fk:                                            ; preds = %bb.fh
  %i.qi = load i8, ptr %i.op, align 1             ; 2 uses
  %i.qj = and i8 %i.qi, 1
  %.not137.i = icmp eq i8 %i.qj, 0
  br i1 %.not137.i, label %bb.fl, label %bb.fx

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  store i32 16777216, ptr %i.m, align 4
  %i.qk = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !92
  %i.qn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qm) #6
  %i.qo = add i64 %i.qn, 1                        ; 3 uses
  %i.qp = icmp ugt i64 %i.qo, 255
  br i1 %i.qp, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.36) #5
  %i.qq = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.qr = icmp eq i32 %i.qq, 17
  br i1 %i.qr, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fn:                                            ; preds = %bb.fl
  %i.qs = call i32 @Curl_bufq_write(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.m, i64 noundef 4, ptr noundef nonnull %i.k) #5
  %i.qt = icmp ne i32 %i.qs, 0
  %i.qu = load i64, ptr %i.k, align 8
  %i.qv = icmp ne i64 %i.qu, 4
  %or.cond4.i75 = select i1 %i.qt, i1 true, i1 %i.qv
  br i1 %or.cond4.i75, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.qw = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.qx = icmp eq i32 %i.qw, 17
  br i1 %i.qx, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fp:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.qy = load ptr, ptr %i.oy, align 8, !tbaa !103 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i76, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !106 ; 2 uses
  %i.ra = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qz) #6 ; 2 uses
  %i.rb = icmp ugt i64 %i.ra, 255
  br i1 %i.rb, label %.thread.i.i78, label %bb.fr

.thread.i.i78:                                    ; preds = %bb.fq
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.37) #5
  br label %.loopexit187.i

bb.fr:                                            ; preds = %bb.fq
  %i.rc = add nuw nsw i64 %i.ra, 1                ; 2 uses
  %i.rd = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.qz, i64 noundef %i.rc, ptr noundef nonnull %i.g) #5
  %.not21.i.i = icmp eq i32 %i.rd, 0
  %i.re = load i64, ptr %i.g, align 8
  %.not22.i.i77 = icmp eq i64 %i.re, %i.rc
  %or.cond.i149.i = select i1 %.not21.i.i, i1 %.not22.i.i77, i1 false
  br i1 %or.cond.i149.i, label %bb.ft, label %.loopexit187.i

bb.fs:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i8 0, ptr %i.h, align 1, !tbaa !94
  %i.rf = call i32 @Curl_bufq_write(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.h, i64 noundef 1, ptr noundef nonnull %i.g) #5
  %i.rg = icmp eq i32 %i.rf, 0
  %i.rh = load i64, ptr %i.g, align 8
  %i.ri = icmp eq i64 %i.rh, 1
  %or.cond.not.i.i79 = select i1 %i.rg, i1 %i.ri, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br i1 %or.cond.not.i.i79, label %bb.ft, label %.loopexit187.i

.loopexit187.i:                                   ; preds = %bb.fs, %bb.fr, %.thread.i.i78
  %.2.i.ph.i = phi i32 [ 11, %.thread.i.i78 ], [ 30, %bb.fs ], [ 30, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %i.rj = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.rk = icmp eq i32 %i.rj, 17
  br i1 %i.rk, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %i.rl = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !92
  %i.ro = call i32 @Curl_bufq_cwrite(ptr noundef nonnull %i.oo, ptr noundef %i.rn, i64 noundef %i.qo, ptr noundef nonnull %i.k) #5
  %.not139.i = icmp eq i32 %i.ro, 0
  %i.rp = load i64, ptr %i.k, align 8
  %.not140.i = icmp eq i64 %i.rp, %i.qo
  %or.cond146.i = select i1 %.not139.i, i1 %.not140.i, i1 false
  %i.rq = load i32, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  br i1 %or.cond146.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rr = icmp eq i32 %i.rq, 17
  br i1 %i.rr, label %socksstate.exit152.thread.i, label %socksstate.exit152.thread.sink.split.i

bb.fv:                                            ; preds = %bb.ft
  %i.rs = icmp eq i32 %i.rq, 3
  br i1 %i.rs, label %bb.fa, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  store i32 3, ptr %i.ak, align 8, !tbaa !30
  br label %bb.fa

socksstate.exit152.thread.sink.split.i:           ; preds = %bb.fu, %.loopexit187.i, %bb.fo, %bb.fm
  %.sink.ph.i = phi i32 [ %.2.i.ph.i, %.loopexit187.i ], [ 9, %bb.fm ], [ 30, %bb.fo ], [ 30, %bb.fu ]
  store i32 17, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit152.thread.i

socksstate.exit152.thread.i:                      ; preds = %socksstate.exit152.thread.sink.split.i, %bb.fu, %.loopexit187.i, %bb.fo, %bb.fm
  %.1.ph.i = phi i32 [ 30, %bb.fo ], [ %.2.i.ph.i, %.loopexit187.i ], [ 30, %bb.fu ], [ 9, %bb.fm ], [ %.sink.ph.i, %socksstate.exit152.thread.sink.split.i ] ; 2 uses
  store i32 %.1.ph.i, ptr %i.oq, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  br label %socks4_connect.exit

bb.fx:                                            ; preds = %bb.fk
  %i.rt = or i8 %i.qi, 2                          ; 3 uses
  store i8 %i.rt, ptr %i.op, align 1
  %i.ru = load i32, ptr %i.ak, align 8, !tbaa !30
  %i.rv = icmp eq i32 %i.ru, 2
  br i1 %i.rv, label %socksstate.exit153.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store i32 2, ptr %i.ak, align 8, !tbaa !30
  br label %socksstate.exit153.i

socksstate.exit153.loopexit.i:                    ; preds = %bb.ez
  %.pre223.i = load i8, ptr %i.op, align 1
  br label %socksstate.exit153.i

socksstate.exit153.i:                             ; preds = %socksstate.exit153.loopexit.i, %bb.fy, %bb.fx
  %i.rw = phi i8 [ %.pre223.i, %socksstate.exit153.loopexit.i ], [ %i.rt, %bb.fy ], [ %i.rt, %bb.fx ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.rx = and i8 %i.rw, 2
  %.not.i154.i = icmp eq i8 %i.rx, 0
  br i1 %.not.i154.i, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %socksstate.exit153.i
  %i.ry = and i8 %i.rw, -3
  store i8 %i.ry, ptr %i.op, align 1
  %i.rz = load i8, ptr %i.or, align 8, !tbaa !96
  %i.sa = call zeroext i8 @Curl_resolv_dns_queries(ptr noundef %1, i8 noundef zeroext %i.rz) #5
  %i.sb = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.sc = call i32 @Curl_cf_dns_insert_after(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %i.sa, ptr noundef %i.sb, i8 noundef zeroext 3, i1 noundef zeroext true) #5
  %.not44.i.i = icmp eq i32 %i.sc, 0
  br i1 %.not44.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.25) #5
  br label %bb.gn

bb.gb:                                            ; preds = %bb.fz, %socksstate.exit153.i
  %i.sd = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.se = call i32 @Curl_conn_cf_connect(ptr noundef %i.sd, ptr noundef %1, ptr noundef nonnull %i.e) #5
  %.not45.i.i69 = icmp eq i32 %i.se, 0
  br i1 %.not45.i.i69, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sf = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !92
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef %i.sh) #5
  br label %bb.gn

bb.gd:                                            ; preds = %bb.gb
  %i.si = load i8, ptr %i.e, align 1, !tbaa !17, !range !99, !noundef !100
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.ge, label %bb.gp

bb.ge:                                            ; preds = %bb.gd
  %i.sk = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.sl = load ptr, ptr %i.ou, align 8, !tbaa !89
  %i.sm = call ptr @Curl_cf_dns_get_ai(ptr noundef %i.sk, ptr noundef %1, ptr noundef %i.sl, i32 noundef 2, i32 noundef 0) #5 ; 3 uses
  %.not46.i.i70 = icmp eq ptr %i.sm, null
  br i1 %.not46.i.i70, label %bb.gm, label %bb.gf

end_hunk_0
