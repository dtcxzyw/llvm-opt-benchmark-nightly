Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/url?download=true
inline.NumInlined: 43
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Curl_connect:bb.a
    i32 7, label %bb.o
    i32 8, label %bb.p
  ]

switch.lookup:                                    ; preds = %bb.m
  %i.bn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Curl_connect, i64 %i.bn
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %Curl_uc_to_curlcode.exit.thread.i

Curl_uc_to_curlcode.exit.thread.i:                ; preds = %switch.lookup, %bb.m, %bb.q, %bb.p, %bb.o, %bb.n
  %.2.ph.i = phi i32 [ 3, %bb.q ], [ 67, %bb.p ], [ 3, %bb.m ], [ 1, %bb.n ], [ 27, %bb.o ], [ %switch.ext, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread

Curl_uc_to_curlcode.exit.i:                       ; preds = %bb.q
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !72
  call void @Curl_bufref_set(ptr noundef nonnull %i.m, ptr noundef %i.bo, i64 noundef 0, ptr noundef nonnull @curl_free) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.r

bb.r:                                             ; preds = %Curl_uc_to_curlcode.exit.i, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !218 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 9 uses
  %i.bs = call i32 @Curl_peer_from_url(ptr noundef nonnull %storemerge.i, ptr noundef nonnull %0, i16 noundef zeroext %i.l, i32 noundef %i.bq, ptr noundef nonnull %i.o, ptr noundef nonnull %i.br) #7 ; 2 uses
  %.not90.i = icmp eq i32 %i.bs, 0
  br i1 %.not90.i, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %hsts_upgrade.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !118 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !120
  %i.bx = icmp eq ptr %i.bw, @Curl_scheme_http
  br i1 %i.bx, label %bb.u, label %hsts_upgrade.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.by = call zeroext i1 @Curl_hsts_applies(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv) #7
  br i1 %i.by, label %bb.v, label %hsts_upgrade.exit.thread.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bz = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !219
  call void %i.bz(ptr noundef %i.ca) #7, !inline_history !210
  store ptr null, ptr %i.o, align 8, !tbaa !219
  %i.cb = call i32 @curl_url_set(ptr noundef nonnull %storemerge.i, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 0) #7
  switch i32 %i.cb, label %hsts_upgrade.exit.thread108.i [
    i32 0, label %bb.y
    i32 5, label %bb.w
    i32 7, label %bb.x
    i32 8, label %bb.z
  ]

bb.w:                                             ; preds = %bb.y, %bb.v
  br label %hsts_upgrade.exit.thread108.i

bb.x:                                             ; preds = %bb.y, %bb.v
  br label %hsts_upgrade.exit.thread108.i

bb.y:                                             ; preds = %bb.v
  call void @Curl_bufref_free(ptr noundef nonnull %i.m) #7
  %i.cc = call i32 @curl_url_get(ptr noundef nonnull %storemerge.i, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 0) #7
  switch i32 %i.cc, label %hsts_upgrade.exit.thread108.i [
    i32 0, label %bb.aa
    i32 5, label %bb.w
    i32 7, label %bb.x
    i32 8, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.v
  br label %hsts_upgrade.exit.thread108.i

bb.aa:                                            ; preds = %bb.y
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !72
  call void @Curl_bufref_set(ptr noundef nonnull %i.m, ptr noundef %i.cd, i64 noundef 0, ptr noundef nonnull @curl_free) #7
  %i.ce = call i32 @Curl_peer_from_url(ptr noundef nonnull %storemerge.i, ptr noundef nonnull %0, i16 noundef zeroext %i.l, i32 noundef %i.bq, ptr noundef nonnull %i.o, ptr noundef nonnull %i.br) #7 ; 2 uses
  %.not37.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not37.i.i, label %bb.ab, label %hsts_upgrade.exit.thread108.i

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.cg = load i64, ptr %i.cf, align 1
  %i.ch = and i64 %i.cg, 536870912
  %.not39.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not39.i.i, label %hsts_upgrade.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 2 uses
  %.not40.i.i = icmp eq ptr %i.cj, null
  br i1 %.not40.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !110
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ae, label %hsts_upgrade.exit.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !72
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %i.cn) #7
  br label %hsts_upgrade.exit.i

hsts_upgrade.exit.thread108.i:                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.1.ph.i.ph.i = phi i32 [ 1, %bb.w ], [ 27, %bb.x ], [ 67, %bb.z ], [ 3, %bb.v ], [ %i.ce, %bb.aa ], [ 3, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread

hsts_upgrade.exit.i:                              ; preds = %bb.ae, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %hsts_upgrade.exit.thread.i

hsts_upgrade.exit.thread.i:                       ; preds = %hsts_upgrade.exit.i, %bb.u, %bb.t, %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !220
  %.not92.i = icmp eq ptr %i.cp, null
  br i1 %.not92.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %hsts_upgrade.exit.thread.i
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !118
  call void @Curl_peer_link(ptr noundef nonnull %i.co, ptr noundef %i.cq) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %hsts_upgrade.exit.thread.i
  %i.cr = call i32 @curl_url_get(ptr noundef nonnull %storemerge.i, i32 noundef 7, ptr noundef nonnull %i.ah, i32 noundef 128) #7
  switch i32 %i.cr, label %.thread [
    i32 0, label %bb.ah
    i32 5, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cs = call i32 @curl_url_get(ptr noundef nonnull %storemerge.i, i32 noundef 8, ptr noundef nonnull %i.ak, i32 noundef 16384) #7
  %i.ct = and i32 %i.cs, -17
  %or.cond.not.i = icmp eq i32 %i.ct, 0
  br i1 %or.cond.not.i, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cu = call i32 @curl_url_get(ptr noundef nonnull %storemerge.i, i32 noundef 4, ptr noundef nonnull %i.ae, i32 noundef 64) #7
  switch i32 %i.cu, label %.thread [
    i32 13, label %url_set_data_origin_and_creds.exit
    i32 0, label %url_set_data_origin_and_creds.exit
    i32 5, label %bb.aj
    i32 7, label %bb.ak
    i32 8, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  br label %.thread

bb.ak:                                            ; preds = %bb.ai, %bb.ag
  br label %.thread

bb.al:                                            ; preds = %bb.ai, %bb.ag
  br label %.thread

url_set_data_origin_and_creds.exit:               ; preds = %bb.ai, %bb.ai
  %i.cv = call fastcc i32 @url_set_data_creds(ptr noundef nonnull %0, ptr noundef %storemerge.i) ; 2 uses
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %bb.am, label %.thread

bb.am:                                            ; preds = %url_set_data_origin_and_creds.exit
  %i.cw = load ptr, ptr %i.br, align 8, !tbaa !118
  %.not46 = icmp eq ptr %i.cw, null
  br i1 %.not46, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !9
  %i.cy = call ptr %i.cx(i64 noundef 1, i64 noundef 792) #7, !inline_history !211 ; 69 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %url_find_or_create_conn.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 280
  store i32 -1, ptr %i.cz, align 8, !tbaa !116
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 284
  store i32 -1, ptr %i.da, align 4, !tbaa !116
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 336
  store i32 0, ptr %i.db, align 8, !tbaa !221
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 340
  store i32 0, ptr %i.dc, align 4, !tbaa !222
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  store i64 -1, ptr %i.dd, align 8, !tbaa !114
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 776
  store i32 0, ptr %i.de, align 8, !tbaa !107
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 248 ; 2 uses
  %i.dg = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !117
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 744
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2187 ; 13 uses
  %i.dj = load i64, ptr %i.di, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 720 ; 9 uses
  %i.dl = load i32, ptr %i.dk, align 8
  %sh.diff.i.i.i = lshr i64 %i.dj, 7
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.dm = and i32 %tr.sh.diff.i.i.i, 512
  %i.dn = and i32 %i.dl, -513
  %i.do = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  store i32 %i.do, ptr %i.dk, align 8
  %i.dp = load i64, ptr %i.di, align 1
  %sh.diff41.i.i.i = lshr i64 %i.dp, 7
  %tr.sh.diff42.i.i.i = trunc i64 %sh.diff41.i.i.i to i32
  %i.dq = and i32 %tr.sh.diff42.i.i.i, 1024
  %i.dr = and i32 %i.do, -1025
  %i.ds = or disjoint i32 %i.dq, %i.dr            ; 2 uses
  store i32 %i.ds, ptr %i.dk, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !121
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 789
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !122
  %i.dw = load i64, ptr %i.di, align 1
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 1
  %i.dz = and i32 %i.ds, -2
  %i.ea = or disjoint i32 %i.dy, %i.dz
  store i32 %i.ea, ptr %i.dk, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 788 ; 2 uses
  store i8 3, ptr %i.eb, align 4, !tbaa !123
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !72 ; 2 uses
  %.not41.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not41.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !9
  %i.ef = call ptr %i.ee(ptr noundef nonnull %i.ed) #7, !inline_history !211 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cy, i64 768
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !105
  %.not42.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not42.i.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eh = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  call void %i.eh(ptr noundef null) #7, !inline_history !211
  %i.ei = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  call void %i.ei(ptr noundef nonnull %i.cy) #7, !inline_history !211
  br label %url_find_or_create_conn.exit.thread

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cy, i64 784
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2172
  %i.el = load <2 x i16>, ptr %i.ek, align 4, !tbaa !223
  %i.em = shufflevector <2 x i16> %i.el, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.em, ptr %i.ej, align 8, !tbaa !223
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.ep = load <2 x ptr>, ptr %i.en, align 8, !tbaa !9
  store <2 x ptr> %i.ep, ptr %i.eo, align 8, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !117
  %i.er = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  call void @Curl_hash_init(ptr noundef nonnull %i.er, i64 noundef 23, ptr noundef nonnull @Curl_hash_str, ptr noundef nonnull @curlx_str_key_compare, ptr noundef nonnull @conn_meta_freeentry) #7
  %i.es = getelementptr inbounds nuw i8, ptr %i.cy, i64 144 ; 6 uses
  %i.et = load ptr, ptr %i.br, align 8, !tbaa !118
  call void @Curl_peer_link(ptr noundef nonnull %i.es, ptr noundef %i.et) #7
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !124
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !120 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !102
  %.not.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !224
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !125 ; 2 uses
  %i.fc = and i64 %i.fb, %i.ez
  %.not15.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not15.i.i.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = load i32, ptr %.phi.trans.insert.i, align 4
  %i.fe = and i32 %i.fd, 2
  %.not16.i.i.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not16.i.i.i.i, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !225
  %i.fh = and i64 %i.fg, %i.fb
  %.not17.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not17.i.i.i.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au, %bb.as, %bb.ar
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !126
  %i.fk = and i32 %i.fj, 131072
  %.not18.i.i.i.i = icmp eq i32 %i.fk, 0
  %i.fl = load ptr, ptr %i.ev, align 8, !tbaa !226 ; 2 uses
  br i1 %.not18.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %i.fl) #7
  br label %url_set_conn_origin_etc.exit.thread.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fm = load i32, ptr %.phi.trans.insert.i, align 4
  %i.fn = and i32 %i.fm, 2
  %.not19.i.i.i.i = icmp eq i32 %i.fn, 0
  %i.fo = select i1 %.not19.i.i.i.i, ptr @.str.9, ptr @.str.26
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %i.fl, ptr noundef nonnull %i.fo) #7
  br label %url_set_conn_origin_etc.exit.thread.i.i

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cy, i64 736 ; 2 uses
  store ptr %i.ev, ptr %i.fp, align 8, !tbaa !227
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cy, i64 728 ; 6 uses
  store ptr %i.ev, ptr %i.fq, align 8, !tbaa !99
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !72 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not22.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ft = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !9
  %i.fu = call ptr %i.ft(ptr noundef nonnull %i.fs) #7, !inline_history !212 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !104
  %.not25.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not25.i.i.i, label %url_set_conn_origin_etc.exit.thread.i.i, label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.fw = load ptr, ptr %i.ae, align 8, !tbaa !228 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not23.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !9
  %i.fy = call ptr %i.fx(ptr noundef nonnull %i.fw) #7, !inline_history !212 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !104
  %.not24.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not24.i.i.i, label %url_set_conn_origin_etc.exit.thread.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ga = load i32, ptr %i.bp, align 8, !tbaa !218 ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not26.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gb = load ptr, ptr %i.br, align 8, !tbaa !118
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !229
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ge = phi i32 [ %i.gd, %bb.bd ], [ %i.ga, %bb.bc ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cy, i64 780
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !230
  %i.gg = load ptr, ptr %i.es, align 8, !tbaa !124
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !120 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !126
  %i.gk = and i32 %i.gj, 16
  %.not64.i.i = icmp eq i32 %i.gk, 0              ; 3 uses
  br i1 %.not64.i.i, label %bb.bf, label %.critedge.i.i

bb.bf:                                            ; preds = %bb.be
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !72 ; 2 uses
  %.not65.i.i = icmp eq ptr %i.gm, null
  br i1 %.not65.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gn = load i64, ptr %i.di, align 1
  %i.go = and i64 %i.gn, 140737488355328
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.gr = call i32 @Curl_peer_uds_create(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gm, i1 noundef zeroext %i.gp, ptr noundef nonnull %i.gq) #7 ; 2 uses
  %.not66.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not66.i.i, label %bb.bh, label %url_set_conn_origin_etc.exit.thread.i.i

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !127
  %.not67.i.i = icmp eq ptr %i.gt, null
  br i1 %.not67.i.i, label %bb.bi, label %.critedge.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.gu = call fastcc i32 @url_set_conn_peer(ptr noundef nonnull %0, ptr noundef %i.cy) ; 2 uses
  %.not68.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not68.i.i, label %.critedge.i.i, label %url_set_conn_origin_etc.exit.thread.i.i

.critedge.i.i:                                    ; preds = %bb.bi, %bb.bh, %bb.be
  %i.gv = load ptr, ptr %i.es, align 8, !tbaa !124
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cy, i64 152 ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !127
  %i.gy = call zeroext i1 @Curl_peer_equal(ptr noundef %i.gv, ptr noundef %i.gx) #7
  br i1 %i.gy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.critedge.i.i
  call void @Curl_peer_unlink(ptr noundef nonnull %i.gw) #7
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.critedge.i.i
  br i1 %.not64.i.i, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !127 ; 2 uses
  %.not69.i.i = icmp eq ptr %i.gz, null
  br i1 %.not69.i.i, label %bb.bn, label %bb.bm

end_hunk_0
begin_hunk_1_@Curl_connect:bb.a
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %bb.dn, label %bb.ep

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ol = getelementptr inbounds nuw i8, ptr %i.na, i64 736
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !227
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !226
  %i.oo = getelementptr inbounds nuw i8, ptr %i.na, i64 176
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !243 ; 2 uses
  %.not138.i = icmp eq ptr %i.op, null
  br i1 %.not138.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 35
  br label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  %i.or = getelementptr inbounds nuw i8, ptr %i.na, i64 200
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !244 ; 2 uses
  %.not139.i = icmp eq ptr %i.os, null
  br i1 %.not139.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 35
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.ou = getelementptr inbounds nuw i8, ptr %i.na, i64 144
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !124
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !130
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.do
  %i.oy = phi ptr [ @.str.18, %bb.do ], [ @.str.18, %bb.dq ], [ @.str.19, %bb.dr ]
  %i.oz = phi ptr [ %i.oq, %bb.do ], [ %i.ot, %bb.dq ], [ %i.ox, %bb.dr ]
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef %i.on, ptr noundef nonnull %i.nh, ptr noundef nonnull %i.oy, ptr noundef %i.oz) #7
  br label %bb.ep

bb.dt:                                            ; preds = %bb.df
  br i1 %.0.i, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  %i.pa = load i64, ptr %i.di, align 1
  %i.pb = and i64 %i.pa, 536870912
  %.not132.i = icmp eq i64 %i.pb, 0
  br i1 %.not132.i, label %url_create_needle.exit.thread185.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !108 ; 2 uses
  %.not133.i = icmp eq ptr %i.pd, null
  br i1 %.not133.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !110
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %bb.dx, label %url_create_needle.exit.thread185.i

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #7
  br label %url_create_needle.exit.thread185.i

bb.dy:                                            ; preds = %bb.dt
  %i.ph = call i32 @Curl_cpool_check_limits(ptr noundef nonnull %0, ptr noundef nonnull %i.cy) #7
  switch i32 %i.ph, label %bb.en [
    i32 1, label %bb.dz
    i32 2, label %bb.ed
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.pi = load i64, ptr %i.di, align 1
  %i.pj = and i64 %i.pi, 536870912
  %.not127.i = icmp eq i64 %i.pj, 0
  br i1 %.not127.i, label %url_create_needle.exit.thread185.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !108 ; 2 uses
  %.not128.i = icmp eq ptr %i.pl, null
  br i1 %.not128.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !110
  %i.po = icmp sgt i32 %i.pn, 0
  br i1 %i.po, label %bb.ec, label %url_create_needle.exit.thread185.i

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #7
  br label %url_create_needle.exit.thread185.i

bb.ed:                                            ; preds = %bb.dy
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !245
  %.not119.i = icmp eq i32 %i.pq, -1
  %i.pr = load i64, ptr %i.di, align 1
  %i.ps = and i64 %i.pr, 536870912
  %.not121.i = icmp eq i64 %i.ps, 0               ; 2 uses
  br i1 %.not119.i, label %bb.ej, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  br i1 %.not121.i, label %bb.en, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !108 ; 2 uses
  %.not125.i = icmp eq ptr %i.pu, null
  br i1 %.not125.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !110
  %i.px = icmp sgt i32 %i.pw, 0
  %i.py = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.pz = icmp sgt i32 %i.py, 0
  %or.cond.i = select i1 %i.px, i1 %i.pz, i1 false
  br i1 %or.cond.i, label %bb.ei, label %bb.en

bb.eh:                                            ; preds = %bb.ef
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !110
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #7
  br label %bb.en

bb.ej:                                            ; preds = %bb.ed
  br i1 %.not121.i, label %url_create_needle.exit.thread185.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !108 ; 2 uses
  %.not122.i = icmp eq ptr %i.qb, null
  br i1 %.not122.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !110
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %bb.em, label %url_create_needle.exit.thread185.i

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !76
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 672
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !255
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, i64 noundef %i.qi) #7
  br label %url_create_needle.exit.thread185.i

bb.en:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee, %bb.dy
  %i.qj = call i32 @Curl_ssl_conn_config_init(ptr noundef nonnull %0, ptr noundef nonnull %i.cy) #7 ; 2 uses
  %.not129.i = icmp eq i32 %i.qj, 0
  br i1 %.not129.i, label %bb.eo, label %url_create_needle.exit.thread185.i

bb.eo:                                            ; preds = %bb.en
  call void @Curl_attach_connection(ptr noundef nonnull %0, ptr noundef nonnull %i.cy) #7
  %i.qk = load ptr, ptr %i.mz, align 8, !tbaa !235
  %i.ql = call i32 @Curl_cpool_add(ptr noundef nonnull %0, ptr noundef %i.qk) #7 ; 2 uses
  %.not130.i = icmp eq i32 %i.ql, 0
  br i1 %.not130.i, label %bb.ep, label %url_find_or_create_conn.exit.thread

bb.ep:                                            ; preds = %bb.eo, %bb.ds, %bb.dm, %bb.dk
  %.1169.i = phi ptr [ null, %bb.eo ], [ %i.cy, %bb.dm ], [ %i.cy, %bb.dk ], [ %i.cy, %bb.ds ] ; 3 uses
  %i.qm = load ptr, ptr %i.mz, align 8, !tbaa !235 ; 3 uses
  %.not.i154.i = icmp eq ptr %i.qm, null
  br i1 %.not.i154.i, label %._crit_edge.i.i, label %bb.eq

._crit_edge.i.i:                                  ; preds = %bb.ep
  %.pre.i156.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 720 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8
  %i.qp = and i32 %i.qo, -65
  store i32 %i.qp, ptr %i.qn, align 8
  %i.qq = load i32, ptr %.phi.trans.insert.i, align 4 ; 4 uses
  %i.qr = and i32 %i.qq, 64
  %.not14.i.i = icmp eq i32 %i.qr, 0
  br i1 %.not14.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 728
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !99
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !126
  %i.qw = and i32 %i.qv, 4096
  %.not15.i.i = icmp eq i32 %i.qw, 0
  %i.qx = and i32 %i.qq, -65
  %spec.select.i.i = select i1 %.not15.i.i, i32 %i.qx, i32 %i.qq
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %._crit_edge.i.i
  %i.qy = phi i32 [ %.pre.i156.i, %._crit_edge.i.i ], [ %i.qq, %bb.eq ], [ %spec.select.i.i, %bb.er ]
  %i.qz = and i32 %i.qy, -1025
  store i32 %i.qz, ptr %.phi.trans.insert.i, align 4
  %i.ra = load i64, ptr %i.di, align 1
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 1
  %sh.diff.i155.i = lshr i64 %i.ra, 12
  %tr.sh.diff.i156.i = trunc i64 %sh.diff.i155.i to i32
  %i.rd = and i32 %tr.sh.diff.i156.i, 65536       ; 2 uses
  %i.re = and i32 %i.rc, -65537
  %i.rf = or disjoint i32 %i.rd, %i.re
  store i32 %i.rf, ptr %i.rb, align 1
  %.not16.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not16.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 4627
  store i8 5, ptr %i.rg, align 1, !tbaa !139
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.rh = call i32 @Curl_req_start(ptr noundef nonnull %i.d, ptr noundef nonnull %0) #7 ; 2 uses
  %.not17.i155.i = icmp eq i32 %i.rh, 0
  br i1 %.not17.i155.i, label %bb.ev, label %url_create_needle.exit.i

bb.ev:                                            ; preds = %bb.eu
  call void @Curl_pgrsReset(ptr noundef nonnull %0) #7
  %i.ri = call fastcc i32 @setup_range(ptr noundef nonnull %0) ; 2 uses
  %.not143.i = icmp eq i32 %i.ri, 0
  br i1 %.not143.i, label %bb.ew, label %url_create_needle.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.rj = load ptr, ptr %i.mz, align 8, !tbaa !235 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 728
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !99 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !226
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 4824
  store ptr %i.rm, ptr %i.rn, align 8, !tbaa !232
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !125
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = and i32 %i.rq, 1073741823
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 4832
  store i32 %i.rr, ptr %i.rs, align 8, !tbaa !233
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rj, i64 176
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !243
  %.not144.i = icmp eq ptr %i.ru, null
  br i1 %.not144.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 200
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !244
  %.not145.i = icmp eq ptr %i.rw, null
  %i.rx = select i1 %.not145.i, i8 0, i8 2
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.ry = phi i8 [ 2, %bb.ew ], [ %i.rx, %bb.ex ]
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 4860 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 4
  %i.sb = and i8 %i.sa, -3
  %i.sc = or disjoint i8 %i.sb, %i.ry
  store i8 %i.sc, ptr %i.rz, align 4
  %i.sd = call i32 @Curl_conn_ev_data_setup(ptr noundef nonnull %0) #7
  br label %url_create_needle.exit.i

url_create_needle.exit.i:                         ; preds = %bb.ey, %bb.ev, %bb.eu, %bb.cv
  %.2170.i = phi ptr [ %.1169.i, %bb.ey ], [ %.1169.i, %bb.ev ], [ %.0168.i, %bb.cv ], [ %.1169.i, %bb.eu ] ; 2 uses
  %.2.i = phi i32 [ %i.sd, %bb.ey ], [ %i.ri, %bb.ev ], [ %.1.i, %bb.cv ], [ %i.rh, %bb.eu ] ; 2 uses
  %.not150.i = icmp eq ptr %.2170.i, null
  br i1 %.not150.i, label %url_find_or_create_conn.exit, label %url_create_needle.exit.thread185.i

url_create_needle.exit.thread185.i:               ; preds = %url_create_needle.exit.i, %bb.en, %bb.em, %bb.el, %bb.ej, %bb.ec, %bb.eb, %bb.dz, %bb.dx, %bb.dw, %bb.du, %bb.cw
  %.2190.i = phi i32 [ %.2.i, %url_create_needle.exit.i ], [ 89, %bb.el ], [ 89, %bb.em ], [ 89, %bb.dz ], [ 89, %bb.eb ], [ 89, %bb.ec ], [ 89, %bb.du ], [ 89, %bb.dw ], [ 89, %bb.dx ], [ %i.qj, %bb.en ], [ 89, %bb.ej ], [ %i.lr, %bb.cw ]
  %.2170189.i = phi ptr [ %.2170.i, %url_create_needle.exit.i ], [ %i.cy, %bb.el ], [ %i.cy, %bb.em ], [ %i.cy, %bb.dz ], [ %i.cy, %bb.eb ], [ %i.cy, %bb.ec ], [ %i.cy, %bb.du ], [ %i.cy, %bb.dw ], [ %i.cy, %bb.dx ], [ %i.cy, %bb.en ], [ %i.cy, %bb.ej ], [ %i.cy, %bb.cw ]
  call void @Curl_conn_free(ptr noundef nonnull %0, ptr noundef nonnull %.2170189.i)
  br label %url_find_or_create_conn.exit

url_find_or_create_conn.exit.thread:              ; preds = %url_set_conn_origin_etc.exit.thread.i.i, %bb.aq, %bb.eo, %bb.an
  %.2191.i.ph = phi i32 [ 27, %bb.an ], [ %i.ql, %bb.eo ], [ 27, %bb.aq ], [ %.0.ph.ph.i.i, %url_set_conn_origin_etc.exit.thread.i.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !235
  br label %bb.fm

url_find_or_create_conn.exit:                     ; preds = %url_create_needle.exit.i, %url_create_needle.exit.thread185.i
  %.2191.i = phi i32 [ %.2190.i, %url_create_needle.exit.thread185.i ], [ %.2.i, %url_create_needle.exit.i ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !235 ; 10 uses
  %.not47 = icmp eq i32 %.2191.i, 0
  br i1 %.not47, label %bb.ez, label %bb.fm

bb.ez:                                            ; preds = %url_find_or_create_conn.exit
  %.not48 = icmp eq ptr %i.sh, null
  br i1 %.not48, label %.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @Curl_pgrsTime(ptr noundef nonnull %0, i32 noundef 3) #7
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 720
  %i.sj = load i32, ptr %i.si, align 8
  %i.sk = and i32 %i.sj, 8
  %.not49 = icmp eq i32 %i.sk, 0
  br i1 %.not49, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 776
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !107
  %i.sn = icmp ugt i32 %i.sm, 1
  br i1 %i.sn, label %bb.fc, label %.thread

bb.fc:                                            ; preds = %bb.fb
  store i8 1, ptr %1, align 1, !tbaa !112
  br label %.thread

bb.fd:                                            ; preds = %bb.fa
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 728
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !99
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !126
  %i.ss = and i32 %i.sr, 16
  %.not50 = icmp eq i32 %i.ss, 0
  br i1 %.not50, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @Curl_pgrsTime(ptr noundef nonnull %0, i32 noundef 4) #7
  store i8 1, ptr %1, align 1, !tbaa !112
  br label %.thread

bb.ff:                                            ; preds = %bb.fd
  %i.st = call i32 @Curl_conn_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.sh, i32 noundef 0, i32 noundef -1) #7 ; 2 uses
  %.not51 = icmp eq i32 %i.st, 0
  br i1 %.not51, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.su = call i32 @Curl_headers_init(ptr noundef nonnull %0) #7
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.037 = phi i32 [ %i.st, %bb.ff ], [ %i.su, %bb.fg ] ; 5 uses
  %i.sv = load i64, ptr %i.di, align 1
  %i.sw = and i64 %i.sv, 536870912
  %.not53 = icmp eq i64 %i.sw, 0
  br i1 %.not53, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !108 ; 2 uses
  %.not54 = icmp eq ptr %i.sy, null
  br i1 %.not54, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !110
  %i.tb = icmp sgt i32 %i.ta, 0
  %i.tc = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8
  %i.td = icmp sgt i32 %i.tc, 0
  %or.cond = select i1 %i.tb, i1 %i.td, i1 false
  br i1 %or.cond, label %bb.fl, label %bb.fm

bb.fk:                                            ; preds = %bb.fi
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_multi, i64 8), align 8, !tbaa !110
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  call void (ptr, ptr, ...) @Curl_trc_multi(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %.037) #7
  br label %bb.fm

bb.fm:                                            ; preds = %url_find_or_create_conn.exit.thread, %bb.fh, %bb.fj, %bb.fk, %bb.fl, %url_find_or_create_conn.exit
  %.1 = phi i32 [ %.037, %bb.fj ], [ %.2191.i, %url_find_or_create_conn.exit ], [ %.037, %bb.fk ], [ %.037, %bb.fh ], [ %.2191.i.ph, %url_find_or_create_conn.exit.thread ], [ %.037, %bb.fl ] ; 3 uses
  %.0 = phi ptr [ %i.sh, %bb.fj ], [ %i.sh, %url_find_or_create_conn.exit ], [ %i.sh, %bb.fk ], [ %i.sh, %bb.fh ], [ %i.sf, %url_find_or_create_conn.exit.thread ], [ %i.sh, %bb.fl ] ; 2 uses
  %i.te = icmp ne i32 %.1, 0
  %i.tf = icmp ne ptr %.0, null
  %or.cond4 = select i1 %i.te, i1 %i.tf, i1 false
  br i1 %or.cond4, label %bb.fn, label %.thread

bb.fn:                                            ; preds = %bb.fm
  call void @Curl_detach_connection(ptr noundef nonnull %0) #7
  call void @Curl_conn_terminate(ptr noundef nonnull %0, ptr noundef nonnull %.0, i1 noundef zeroext true) #7
  br label %.thread

.thread:                                          ; preds = %bb.al, %bb.ak, %bb.ai, %bb.aj, %bb.c, %bb.ah, %Curl_uc_to_curlcode.exit.thread.i, %bb.ag, %bb.g, %bb.j, %hsts_upgrade.exit.thread108.i, %bb.r, %bb.ez, %bb.am, %url_set_data_origin_and_creds.exit, %bb.fe, %bb.fb, %bb.fc, %bb.fn, %bb.fm
  %.164 = phi i32 [ %.1, %bb.fm ], [ %.1, %bb.fn ], [ %i.cv, %url_set_data_origin_and_creds.exit ], [ 2, %bb.ez ], [ 2, %bb.am ], [ 0, %bb.fe ], [ 0, %bb.fb ], [ 0, %bb.fc ], [ 67, %bb.al ], [ 27, %bb.ak ], [ 3, %bb.ai ], [ 1, %bb.aj ], [ 3, %bb.c ], [ 27, %bb.ah ], [ %.2.ph.i, %Curl_uc_to_curlcode.exit.thread.i ], [ 3, %bb.ag ], [ 27, %bb.g ], [ 27, %bb.j ], [ %.1.ph.i.ph.i, %hsts_upgrade.exit.thread108.i ], [ %i.bs, %bb.r ]
  ret i32 %.164
}

declare void @Curl_req_hard_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrsTime(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_conn_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_headers_init(ptr noundef) local_unnamed_addr #2

declare void @Curl_trc_multi(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Curl_conn_terminate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_init_do(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, -65
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.e = load i32, ptr %i.d, align 4              ; 4 uses
  %i.f = and i32 %i.e, 64
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !126
  %i.k = and i32 %i.j, 4096
  %.not15 = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.e, -65
  %spec.select = select i1 %.not15, i32 %i.l, i32 %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %i.m = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.b ], [ %spec.select, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.o = and i32 %i.m, -1025
  store i32 %i.o, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %sh.diff = lshr i64 %i.q, 12
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.u = and i32 %tr.sh.diff, 65536               ; 2 uses
  %i.v = and i32 %i.t, -65537
  %i.w = or disjoint i32 %i.u, %i.v
  store i32 %i.w, ptr %i.s, align 1
  %.not16 = icmp eq i32 %i.u, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4627
  store i8 5, ptr %i.x, align 1, !tbaa !139
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = tail call i32 @Curl_req_start(ptr noundef nonnull %i.r, ptr noundef nonnull %0) #7 ; 2 uses
  %.not17 = icmp eq i32 %i.y, 0
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @Curl_pgrsReset(ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i32 %i.y
}

declare i32 @Curl_req_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_pgrsReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @Curl_conn_meta_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @Curl_hash_add2(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c, ptr noundef %2, ptr noundef %3) #7
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.f = add i64 %i.e, 1
  tail call void %3(ptr noundef nonnull %1, i64 noundef %i.f, ptr noundef %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 27, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @Curl_hash_add2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Curl_conn_meta_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.c = add i64 %i.b, 1
  %i.d = tail call i32 @Curl_hash_delete(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c) #7 ; 0 uses
  ret void
}

declare i32 @Curl_hash_delete(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Curl_conn_meta_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @Curl_hash_pick(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef %i.c) #7
  ret ptr %i.d
}

declare ptr @Curl_hash_pick(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @Curl_1st_fatal(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 81, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  switch i32 %1, label %bb.d [
    i32 81, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %0, %bb.c ], [ %0, %bb.a ], [ %1, %bb.b ]
  ret i32 %.0
}

declare void @curl_url_cleanup(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_bufref_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @curl_url_dup(ptr noundef) local_unnamed_addr #2

declare ptr @curl_url() local_unnamed_addr #2

declare i64 @Curl_is_absolute_url(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #2

declare void @Curl_bufref_set(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @curl_free(ptr noundef) #2

declare i32 @curl_url_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @curl_url_strerror(i32 noundef) local_unnamed_addr #2

declare i32 @curl_url_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_peer_from_url(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_peer_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @url_set_data_creds(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not55 = icmp eq ptr %i.h, null
  br i1 %.not55, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %.not57 = icmp eq ptr %i.l, null
  br i1 %.not57, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %.not58 = icmp eq ptr %i.n, null
  br i1 %.not58, label %.thread126, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2872
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = tail call zeroext i1 @Curl_auth_allowed_to_origin(ptr noundef nonnull %0, ptr noundef %i.p) #7
  br i1 %i.q, label %bb.g, label %.thread126

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = call i32 @Curl_creds_create(ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, i8 noundef zeroext 2, ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not59 = icmp eq i32 %i.aa, 0
  br i1 %.not59, label %bb.h, label %.thread92

bb.h:                                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !257 ; 2 uses
  %.not60 = icmp eq ptr %.pre, null
  br i1 %.not60, label %.thread126, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %.pre, align 8, !tbaa !259
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !140
  %.not61 = icmp eq i8 %i.ac, 0
  br i1 %.not61, label %.thread126, label %bb.p

.thread126:                                       ; preds = %bb.e, %bb.f, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr null, ptr %i.d, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  %i.ae = call i32 @curl_url_get(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.ad, i32 noundef 0) #7
end_hunk_1
