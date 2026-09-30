Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls12_server?download=true
inline.NumInlined: 81
inline.NumDeleted: 50
begin_hunk_0_@mbedtls_ssl_handshake_server_step:bb.a
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %i.h = alloca i16, align 2                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca [64 x i8], align 16               ; 5 uses
  %i.l = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.mbedtls_ssl_session, align 8 ; 8 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %i.o = alloca ptr, align 8                      ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !98
  switch i32 %i.q, label %bb.ih [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 17, label %ssl_write_certificate_request.exit
    i32 2, label %bb.cr
    i32 3, label %bb.ek
    i32 4, label %bb.el
    i32 5, label %bb.fj
    i32 6, label %bb.fy
    i32 7, label %bb.ge
    i32 8, label %bb.gf
    i32 9, label %bb.hg
    i32 10, label %bb.hy
    i32 11, label %bb.hz
    i32 12, label %bb.ia
    i32 13, label %bb.ie
    i32 14, label %bb.if
    i32 15, label %bb.ig
  ]

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.p, align 8, !tbaa !98
  br label %ssl_write_certificate_request.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 426
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %i.y = load i32, ptr %i.r, align 8, !tbaa !33
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.s, align 4, !tbaa !99
  %.not369.i = icmp eq i32 %i.z, 0
  br i1 %.not369.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call i32 @mbedtls_ssl_fetch_input(ptr noundef nonnull %0, i64 noundef 5) #10 ; 2 uses
  %.not370.i = icmp eq i32 %i.aa, 0
  br i1 %.not370.i, label %bb.g, label %ssl_parse_client_hello.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %.not371.i = icmp eq i8 %i.ac, 22
  br i1 %.not371.i, label %bb.h, label %ssl_parse_client_hello.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %bb.i, label %.loopexit475.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !101 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %.not372.i = icmp eq i8 %i.ak, 0
  br i1 %.not372.i, label %bb.k, label %ssl_parse_client_hello.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %.not373.i = icmp eq i8 %i.am, 0
  br i1 %.not373.i, label %bb.l, label %ssl_parse_client_hello.exit

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.v, ptr noundef nonnull align 1 dereferenceable(6) %i.an, i64 6, i1 false)
  %i.ao = tail call i32 @mbedtls_ssl_dtls_replay_check(ptr noundef nonnull %0) #10
  %.not374.i = icmp eq i32 %i.ao, 0
  br i1 %.not374.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.w, align 8, !tbaa !102
  store i64 0, ptr %i.x, align 8, !tbaa !103
  br label %bb.d

bb.n:                                             ; preds = %bb.l
  tail call void @mbedtls_ssl_dtls_replay_update(ptr noundef nonnull %0) #10
  br label %.loopexit475.i

.loopexit475.i:                                   ; preds = %bb.h, %bb.n
  %.pr.i = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !104
  %.0.copyload.i432.i = load i16, ptr %i.aq, align 1
  %i.ar = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i432.i) ; 2 uses
  %i.as = zext i16 %i.ar to i64                   ; 5 uses
  %.not375.i = icmp eq i32 %.pr.i, 0
  br i1 %.not375.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.i, %.loopexit475.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.au = load i64, ptr %i.at, align 8, !tbaa !105
  br label %bb.v

bb.o:                                             ; preds = %.loopexit475.i
  %i.av = load i32, ptr %i.s, align 4, !tbaa !99
  %.not376.i = icmp eq i32 %i.av, 0
  br i1 %.not376.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.s, align 4, !tbaa !99
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.aw = icmp ugt i16 %i.ar, 16384
  br i1 %i.aw, label %ssl_parse_client_hello.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val433.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.ax = getelementptr i8, ptr %.val433.i, i64 9
  %.val433.val.i = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.ay = icmp eq i8 %.val433.val.i, 1
  %..i.i = select i1 %i.ay, i64 13, i64 5
  %i.az = add nuw nsw i64 %..i.i, %i.as
  %i.ba = tail call i32 @mbedtls_ssl_fetch_input(ptr noundef nonnull %0, i64 noundef %i.az) #10 ; 2 uses
  %.not377.i = icmp eq i32 %i.ba, 0
  br i1 %.not377.i, label %bb.s, label %ssl_parse_client_hello.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %0, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !35
  %i.be = icmp eq i8 %i.bd, 1
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = add nuw nsw i64 %i.as, 13
  store i64 %i.bf, ptr %i.w, align 8, !tbaa !102
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.x, align 8, !tbaa !103
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p, %.thread.i
  %.0325.i = phi i64 [ %i.au, %.thread.i ], [ %i.as, %bb.p ], [ %i.as, %bb.t ], [ %i.as, %bb.u ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !107
  %i.bm = tail call i32 %i.bl(ptr noundef nonnull %0, ptr noundef %i.bh, i64 noundef %.0325.i) #10, !inline_history !83 ; 2 uses
  %.not378.i = icmp eq i32 %i.bm, 0
  br i1 %.not378.i, label %bb.w, label %ssl_parse_client_hello.exit

bb.w:                                             ; preds = %bb.v
  %.val436.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.bn = getelementptr i8, ptr %.val436.i, i64 9
  %.val436.val.i = load i8, ptr %i.bn, align 1, !tbaa !35 ; 2 uses
  %i.bo = icmp eq i8 %.val436.val.i, 1            ; 2 uses
  %..i438.i = select i1 %i.bo, i64 12, i64 4      ; 3 uses
  %i.bp = icmp ult i64 %.0325.i, %..i438.i
  br i1 %i.bp, label %ssl_parse_client_hello.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load i8, ptr %i.bh, align 1, !tbaa !34
  %.not379.i = icmp eq i8 %i.bq, 1
  br i1 %.not379.i, label %bb.y, label %ssl_parse_client_hello.exit

bb.y:                                             ; preds = %bb.x
  br i1 %i.bo, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.br = load i32, ptr %i.r, align 8, !tbaa !33
  %i.bs = icmp eq i32 %i.br, 1
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.0.copyload.i431.i = load i16, ptr %i.bu, align 1
  %i.bv = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i431.i)
  %i.bw = zext i16 %i.bv to i32                   ; 4 uses
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !36 ; 3 uses
  br i1 %i.bs, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1376 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !108
  %.not380.i = icmp eq i32 %i.bz, %i.bw
  br i1 %.not380.i, label %bb.ab, label %ssl_parse_client_hello.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add nuw nsw i32 %i.bw, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !108
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1372
  store i32 %i.bw, ptr %i.cb, align 4, !tbaa !109
  %i.cc = add nuw nsw i32 %i.bw, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 1376
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !108
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !34
  %i.ck = or i8 %i.ch, %i.cf
  %i.cl = or i8 %i.ck, %i.cj
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.ae, label %ssl_parse_client_hello.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %3 = load i8, ptr %i.cn, align 1, !tbaa !34
  %4 = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.co = load i8, ptr %4, align 1, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %5 = load i8, ptr %i.cp, align 1, !tbaa !34
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 16
  %i.cq = zext i8 %i.co to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = zext i8 %3 to i64
  %8 = or disjoint i64 %i.cr, %i.cs
  %i.ct = or disjoint i64 %8, %7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %9 = load i8, ptr %i.cu, align 1, !tbaa !34
  %10 = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  %i.cv = load i8, ptr %10, align 1, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %11 = load i8, ptr %i.cw, align 1, !tbaa !34
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %i.cx = zext i8 %i.cv to i64
  %i.cy = shl nuw nsw i64 %i.cx, 8
  %i.cz = zext i8 %9 to i64
  %14 = or disjoint i64 %i.cy, %i.cz
  %i.da = or disjoint i64 %14, %13
  %.not382.i = icmp eq i64 %i.ct, %i.da
  br i1 %.not382.i, label %bb.af, label %ssl_parse_client_hello.exit

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 %..i438.i ; 8 uses
  %i.dc = sub nuw i64 %.0325.i, %..i438.i         ; 8 uses
  %i.dd = icmp ult i64 %i.dc, 38
  br i1 %i.dd, label %ssl_parse_client_hello.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = zext i8 %.val436.val.i to i32
  %i.df = tail call zeroext i16 @mbedtls_ssl_read_version(ptr noundef nonnull %i.db, i32 noundef %i.de) #10 ; 2 uses
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %i.dg, ptr %i.dk, align 4, !tbaa !110
  %i.dl = load ptr, ptr %0, align 8, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.dn, ptr %i.do, align 2, !tbaa !111
  %.not383.i = icmp eq i16 %i.df, 771
  br i1 %.not383.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 70) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2024
  %i.ds = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 1 dereferenceable(32) %i.ds, i64 32, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !34  ; 2 uses
  %i.dv = zext i8 %i.du to i64                    ; 4 uses
  %i.dw = icmp ugt i8 %i.du, 32
  %i.dx = add nuw nsw i64 %i.dv, 36               ; 2 uses
  %i.dy = icmp ugt i64 %i.dx, %i.dc
  %or.cond416.i = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %or.cond416.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !45 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %i.dv, ptr %i.eb, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i8 0, i64 32, i1 false)
  %i.ed = load ptr, ptr %i.di, align 8, !tbaa !45 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.db, i64 35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 1 %i.ef, i64 %i.eh, i1 false)
  %i.ei = load ptr, ptr %0, align 8, !tbaa !17    ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 9
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !35
  %i.el = icmp eq i8 %i.ek, 1
  br i1 %i.el, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dv ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 35
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !34  ; 2 uses
  %i.ep = zext i8 %i.eo to i64                    ; 2 uses
  %i.eq = add nuw nsw i64 %i.dx, %i.ep            ; 4 uses
  %i.er = add nuw nsw i64 %i.eq, 2
  %i.es = icmp ugt i64 %i.er, %i.dc
  br i1 %i.es, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.et = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.an:                                            ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 136
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !31 ; 2 uses
  %.not384.i = icmp eq ptr %i.ev, null
  br i1 %.not384.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = load i32, ptr %i.r, align 8, !tbaa !33
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !29
  %i.ff = tail call i32 %i.ev(ptr noundef %i.ez, ptr noundef nonnull %i.fa, i64 noundef %i.ep, ptr noundef %i.fc, i64 noundef %i.fe) #10, !inline_history !83
  %.not386.i = icmp eq i32 %i.ff, 0
  %i.fg = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1370 ; 2 uses
  br i1 %.not386.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.fh, align 2, !tbaa !112
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i8 0, ptr %i.fh, align 2, !tbaa !112
  br label %bb.au

bb.as:                                            ; preds = %bb.ao, %bb.an
  %.not385.i = icmp eq i8 %i.eo, 0
  br i1 %.not385.i, label %bb.au, label %ssl_parse_client_hello.exit

bb.at:                                            ; preds = %bb.ak
  %i.fi = add nuw nsw i64 %i.dv, 35
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0326.i = phi i64 [ %i.fi, %bb.at ], [ %i.eq, %bb.as ], [ %i.eq, %bb.aq ], [ %i.eq, %bb.ar ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.db, i64 %.0326.i ; 2 uses
  %.0.copyload.i429.i = load i16, ptr %i.fj, align 1
  %i.fk = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i429.i) ; 2 uses
  %i.fl = zext i16 %i.fk to i64                   ; 5 uses
  %i.fm = icmp ult i16 %i.fk, 2
  br i1 %i.fm, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = add nuw nsw i64 %.0326.i, 2
  %i.fo = add nuw nsw i64 %i.fn, %i.fl            ; 3 uses
  %.not387.i = icmp ult i64 %i.fo, %i.dc
  %i.fp = and i64 %i.fl, 1
  %.not388.i = icmp eq i64 %i.fp, 0
  %or.cond417.i = and i1 %.not388.i, %.not387.i
  br i1 %or.cond417.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fq = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.ax:                                            ; preds = %bb.av
  %i.fr = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.fo
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !34  ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = add i8 %i.fs, -1
  %or.cond.i = icmp ult i8 %i.fu, 16
  %i.fv = add nuw nsw i64 %i.fo, %i.ft            ; 3 uses
  %.not389.i = icmp ult i64 %i.fv, %i.dc
  %or.cond418.i = select i1 %or.cond.i, i1 %.not389.i, i1 false
  br i1 %or.cond418.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fw = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.az:                                            ; preds = %bb.ax
  %i.fx = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %i.fy = icmp ugt i64 %i.dc, %i.fx
  br i1 %i.fy, label %bb.ba, label %._crit_edge.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.fz = add nuw nsw i64 %i.fv, 3                ; 2 uses
  %i.ga = icmp ult i64 %i.dc, %i.fz
  br i1 %i.ga, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gb = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.fx ; 2 uses
  %.0.copyload.i428.i = load i16, ptr %i.gc, align 1 ; 2 uses
  %i.gd = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i428.i)
  %i.ge = zext i16 %i.gd to i64                   ; 2 uses
  %i.gf = add nuw nsw i64 %i.fz, %i.ge
  %.not390.i = icmp eq i64 %i.dc, %i.gf
  br i1 %.not390.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gg = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #10 ; 0 uses
  br label %ssl_parse_client_hello.exit

bb.be:                                            ; preds = %bb.bc
  %.not391497.i = icmp eq i16 %.0.copyload.i428.i, 0
  br i1 %.not391497.i, label %._crit_edge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %ssl_parse_supported_point_formats.exit.thread.thread.i, %.lr.ph.preheader.i
  %i.gi = phi i1 [ false, %ssl_parse_supported_point_formats.exit.thread.thread.i ], [ true, %.lr.ph.preheader.i ]
  %.0314500.ph.i = phi i32 [ %.0314500.i, %ssl_parse_supported_point_formats.exit.thread.thread.i ], [ 0, %.lr.ph.preheader.i ]
  %.0317499.ph.i = phi ptr [ %i.ic, %ssl_parse_supported_point_formats.exit.thread.thread.i ], [ %i.gh, %.lr.ph.preheader.i ]
  %.1323498.ph.i = phi i64 [ %i.ib, %ssl_parse_supported_point_formats.exit.thread.thread.i ], [ %i.ge, %.lr.ph.preheader.i ]
  br label %.lr.ph.i
end_hunk_0
