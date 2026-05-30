inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@mbedtls_ssl_write_client_hello:bb.a
  %.not83.i = icmp eq i8 %i.ag, 0
  br i1 %.not83.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !43
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %0, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !45
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sink118.i = phi ptr [ %i.af, %bb.k ], [ %i.af, %bb.l ], [ %i.ae, %bb.i ] ; 4 uses
  %.sink.i = phi i32 [ %i.ai, %bb.k ], [ %i.am, %bb.l ], [ %i.ad, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink118.i, i64 8
  store i32 %.sink.i, ptr %i.an, align 8, !tbaa !51
  %i.ao = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %.not84.i = icmp eq i8 %i.aq, 1
  br i1 %.not84.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink118.i, i64 1872
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sink118.i, i64 57
  %i.av = load i8, ptr %i.au, align 1, !tbaa !54
  %.not85.i = icmp eq i8 %i.av, 0
  br i1 %.not85.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink118.i, i64 2120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43
  %i.az = icmp eq i32 %i.ay, 771
  br i1 %i.az, label %bb.q, label %ssl_generate_random.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call i64 @time(ptr noundef null) #7 ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.aw, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 726, ptr noundef nonnull @.str.11, i64 noundef %i.ba) #7
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !44
  br label %ssl_generate_random.exit.i

ssl_generate_random.exit.i:                       ; preds = %bb.q, %bb.p
  %i.bd = phi ptr [ %.pre.i, %bb.q ], [ %i.ao, %bb.p ] ; 2 uses
  %.0.i.i = phi i64 [ 4, %bb.q ], [ 0, %bb.p ]    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i.i
  %i.bj = sub nuw nsw i64 32, %.0.i.i
  %i.bk = tail call i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i64 noundef %i.bj) #7, !inline_history !57 ; 3 uses
  %.not86.i = icmp eq i32 %i.bk, 0
  br i1 %.not86.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ssl_generate_random.exit.i
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 802, ptr noundef nonnull @.str.8, i32 noundef %i.bk) #7
  br label %ssl_prepare_client_hello.exit.thread

bb.s:                                             ; preds = %ssl_generate_random.exit.i, %bb.o, %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !58 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 771
  br i1 %i.bp, label %bb.t, label %.thread116.i

bb.t:                                             ; preds = %bb.s
  %i.bq = add i64 %i.bm, -33
  %or.cond.i = icmp ult i64 %i.bq, -17
  %.pre105.pre.i = load i32, ptr %i.aa, align 4, !tbaa !42
  %i.br = icmp eq i32 %.pre105.pre.i, 0           ; 2 uses
  br i1 %or.cond.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.br, label %bb.v, label %.thread116.i

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !19
  %i.bu = icmp eq i8 %i.bt, 0
  %spec.select119.i = select i1 %i.bu, i64 0, i64 %i.bm
  br label %.thread115.i

bb.w:                                             ; preds = %bb.t
  br i1 %i.br, label %.thread115.i, label %.thread116.i

.thread115.i:                                     ; preds = %bb.w, %bb.v
  %.070114.i = phi i64 [ %spec.select119.i, %bb.v ], [ 0, %bb.w ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !39
  %.not89.i = icmp eq ptr %i.bw, null
  br i1 %.not89.i, label %.thread116.i, label %bb.x

bb.x:                                             ; preds = %.thread115.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !59
  %.not90.i = icmp eq i64 %i.by, 0
  %spec.select.i = select i1 %.not90.i, i64 %.070114.i, i64 32
  br label %.thread116.i

.thread116.i:                                     ; preds = %bb.x, %.thread115.i, %bb.w, %bb.u, %bb.s
  %.272.i = phi i64 [ %i.bm, %bb.s ], [ 0, %bb.w ], [ %.070114.i, %.thread115.i ], [ %spec.select.i, %bb.x ], [ 0, %bb.u ]
  %i.bz = icmp eq i32 %i.bo, 772
  %spec.select98.i = select i1 %i.bz, i64 32, i64 %.272.i ; 4 uses
  %.not91.i = icmp eq i64 %spec.select98.i, %i.bm
  br i1 %.not91.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.thread116.i
  store i64 %spec.select98.i, ptr %i.bl, align 8, !tbaa !58
  %.not92.i = icmp eq i64 %spec.select98.i, 0
  br i1 %.not92.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cg = tail call i32 %i.cc(ptr noundef %i.ce, ptr noundef nonnull %i.cf, i64 noundef %spec.select98.i) #7, !inline_history !60 ; 3 uses
  %.not93.i = icmp eq i32 %i.cg, 0
  br i1 %.not93.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.9, i32 noundef %i.cg) #7
  br label %ssl_prepare_client_hello.exit.thread

bb.ab:                                            ; preds = %bb.z, %bb.y, %.thread116.i
  %i.ch = tail call ptr @mbedtls_ssl_get_hostname_pointer(ptr noundef nonnull %0) #7 ; 3 uses
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.cj = icmp eq i32 %i.ci, 772
  br i1 %i.cj, label %bb.ac, label %ssl_prepare_client_hello.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !19
  %.not94.i = icmp eq i8 %i.cl, 0
  br i1 %.not94.i, label %ssl_prepare_client_hello.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not95.i = icmp eq ptr %i.ch, null
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !61 ; 2 uses
  %.not121.i = icmp eq ptr %i.cn, null            ; 2 uses
  br i1 %.not95.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not121.i, label %.thread100.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ch, ptr noundef nonnull dereferenceable(1) %i.cn) #8
  %.not120.i = icmp eq i32 %i.co, 0
  br i1 %.not120.i, label %ssl_prepare_client_hello.exit.thread85, label %.thread100.i

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not121.i, label %ssl_prepare_client_hello.exit.thread85, label %.thread100.i

.thread100.i:                                     ; preds = %bb.ag, %bb.af, %bb.ae
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 898, ptr noundef nonnull @.str.10) #7
  br label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit:                    ; preds = %bb.ab, %bb.ac
  %i.cp = tail call i32 @mbedtls_ssl_session_set_hostname(ptr noundef nonnull %i.f, ptr noundef %i.ch) #7 ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %ssl_prepare_client_hello.exit.thread85, label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit.thread85:           ; preds = %bb.af, %bb.ag, %ssl_prepare_client_hello.exit
  %i.cq = call i32 @mbedtls_ssl_start_handshake_msg(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not62 = icmp eq i32 %i.cq, 0
  br i1 %.not62, label %bb.ah, label %ssl_prepare_client_hello.exit.thread

bb.ah:                                            ; preds = %ssl_prepare_client_hello.exit.thread85
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !62  ; 6 uses
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !63  ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 13 uses
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !18  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.d, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !51 ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 772
  br i1 %i.cx, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.ah
  %i.cy = load i32, ptr %i.bn, align 4, !tbaa !43 ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 770
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.da = icmp eq i32 %i.cw, 772
  br i1 %i.da, label %._crit_edge.i, label %bb.ak

._crit_edge.i:                                    ; preds = %bb.ai
  %.pre.i75 = load i32, ptr %i.bn, align 4, !tbaa !43
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %.thread.i
  %i.db = phi i32 [ %i.cy, %.thread.i ], [ %.pre.i75, %._crit_edge.i ]
  %1 = phi i1 [ %i.cz, %.thread.i ], [ false, %._crit_edge.i ]
  %i.dc = icmp ult i32 %i.db, 772
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %2 = phi i1 [ false, %bb.ai ], [ %1, %bb.aj ]   ; 4 uses
  %.not174.i = phi i1 [ true, %bb.ai ], [ %i.dc, %bb.aj ] ; 3 uses
  %i.dd = ptrtoint ptr %i.ct to i64               ; 5 uses
  %i.de = ptrtoint ptr %i.cr to i64
  %i.df = icmp ugt i64 %i.cs, 1
  br i1 %i.df, label %bb.al, label %ssl_write_client_hello_body.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.dg = load ptr, ptr %0, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %i.dj = zext i8 %i.di to i32
  call void @mbedtls_ssl_write_version(ptr noundef %i.cr, i32 noundef %i.dj, i32 noundef 771) #7
  %i.dk = add i64 %i.cs, -34                      ; 2 uses
  %i.dl = icmp ult i64 %i.dk, -32
  br i1 %i.dl, label %bb.am, label %ssl_write_client_hello_body.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cu, i64 2120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false)
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 488, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.dm, i64 noundef 32) #7
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !58 ; 2 uses
  %i.dr = add i64 %i.dq, 1
  %.not126 = icmp ugt i64 %i.dr, %i.dk
  br i1 %.not126, label %ssl_write_client_hello_body.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 34
  %i.dt = trunc i64 %i.dq to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 35 ; 2 uses
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !64
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 8 %i.dw, i64 %i.dy, i1 false)
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !58 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.ed, i64 noundef %i.eb) #7
  %i.ee = load ptr, ptr %0, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %i.eh = icmp eq i8 %i.eg, 1
  br i1 %i.eh, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cu, i64 1872 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !53 ; 2 uses
  %.not166.i = icmp eq ptr %i.ej, null
  br i1 %.not166.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cu, i64 1880 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 8, !tbaa !65
  %i.em = zext i16 %i.el to i64
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 531, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ej, i64 noundef %i.em) #7
  %i.en = load i16, ptr %i.ek, align 8, !tbaa !65
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0143.i = phi i16 [ %i.en, %bb.ap ], [ 0, %bb.ao ] ; 3 uses
  %i.eo = zext i16 %.0143.i to i64                ; 3 uses
  %i.ep = add nuw nsw i64 %i.eb, 35
  %i.eq = icmp samesign ule i64 %i.ep, %i.cs
  %.neg92 = add i64 %i.cs, -35
  %gepdiff91 = sub i64 %.neg92, %i.eb
  %i.er = icmp ugt i64 %gepdiff91, %i.eo
  %narrow.i189.not.i = and i1 %i.eq, %i.er
  br i1 %narrow.i189.not.i, label %bb.ar, label %ssl_write_client_hello_body.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.es = trunc i16 %.0143.i to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 3 uses
  store i8 %i.es, ptr %i.ec, align 1, !tbaa !64
  %.not168.i = icmp eq i16 %.0143.i, 0
  br i1 %.not168.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.ei, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr align 1 %i.eu, i64 %i.eo, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eo
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.an
  %.2150.i = phi ptr [ %i.ec, %bb.an ], [ %i.et, %bb.ar ], [ %i.ev, %bb.as ] ; 5 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !66 ; 2 uses
  %i.ez = icmp ule ptr %.2150.i, %i.ct
  %i.fa = ptrtoint ptr %.2150.i to i64            ; 2 uses
  %i.fb = sub i64 %i.dd, %i.fa
  %i.fc = icmp ugt i64 %i.fb, 1
  %narrow.i.not.i.i = and i1 %i.ez, %i.fc
  br i1 %narrow.i.not.i.i, label %bb.au, label %ssl_write_client_hello_body.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.fd = getelementptr inbounds nuw i8, ptr %.2150.i, i64 2 ; 3 uses
  %i.fe = load i32, ptr %i.ey, align 4, !tbaa !4  ; 2 uses
  %.not5472.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not5472.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.au, %bb.ax
  %.0194.i = phi i32 [ %.1.i, %bb.ax ], [ 0, %bb.au ] ; 2 uses
  %i.ff = phi i32 [ %i.fz, %bb.ax ], [ %i.fe, %bb.au ] ; 3 uses
  %.04674.i.i = phi ptr [ %.147.ph.i.i, %bb.ax ], [ %i.fd, %bb.au ] ; 5 uses
  %.05273.i.i = phi i64 [ %i.fx, %bb.ax ], [ 0, %bb.au ]
  %i.fg = call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %i.ff) #7 ; 3 uses
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !51
  %i.fk = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.fl = call i32 @mbedtls_ssl_validate_ciphersuite(ptr noundef nonnull %0, ptr noundef %i.fg, i32 noundef %i.fj, i32 noundef %i.fk) #7
  %.not55.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not55.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.lr.ph.i.i
  %i.fm = call i32 @mbedtls_ssl_ciphersuite_uses_ec(ptr noundef %i.fg) #7
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !67
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.17, i32 noundef %i.ff, ptr noundef %i.fo) #7
  %i.fp = icmp ule ptr %.04674.i.i, %i.ct
  %i.fq = ptrtoint ptr %.04674.i.i to i64
  %i.fr = sub i64 %i.dd, %i.fq
  %i.fs = icmp ugt i64 %i.fr, 1
  %narrow.i59.not.i.i = and i1 %i.fp, %i.fs
  br i1 %narrow.i59.not.i.i, label %bb.aw, label %ssl_write_client_hello_body.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.ft = or i32 %i.fm, %.0194.i
  %i.fu = trunc i32 %i.ff to i16
  %i.fv = call i16 @llvm.bswap.i16(i16 %i.fu)
  store i16 %i.fv, ptr %.04674.i.i, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.04674.i.i, i64 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i.i
  %.1.i = phi i32 [ %i.ft, %bb.aw ], [ %.0194.i, %.lr.ph.i.i ] ; 2 uses
  %.147.ph.i.i = phi ptr [ %i.fw, %bb.aw ], [ %.04674.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.fx = add i64 %.05273.i.i, 1                  ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4  ; 2 uses
  %.not54.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not54.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !69

._crit_edge.i.i:                                  ; preds = %bb.ax, %bb.au
  %.2195.i = phi i32 [ 0, %bb.au ], [ %.1.i, %bb.ax ] ; 2 uses
  %.046.lcssa.i.i = phi ptr [ %i.fd, %bb.au ], [ %.147.ph.i.i, %bb.ax ] ; 5 uses
  %i.ga = load i32, ptr %i.aa, align 4, !tbaa !42
  %.not57.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not57.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.i.i
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 388, ptr noundef nonnull @.str.18) #7
  %i.gb = icmp ule ptr %.046.lcssa.i.i, %i.ct
  %i.gc = ptrtoint ptr %.046.lcssa.i.i to i64
  %i.gd = sub i64 %i.dd, %i.gc
  %i.ge = icmp ugt i64 %i.gd, 1
  %narrow.i60.not.i.i = and i1 %i.gb, %i.ge
  br i1 %narrow.i60.not.i.i, label %bb.az, label %ssl_write_client_hello_body.exit.thread

bb.az:                                            ; preds = %bb.ay
  store i16 -256, ptr %.046.lcssa.i.i, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.046.lcssa.i.i, i64 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i
  %.349.i.i = phi ptr [ %.046.lcssa.i.i, %._crit_edge.i.i ], [ %i.gf, %bb.az ] ; 2 uses
  %i.gg = ptrtoint ptr %.349.i.i to i64           ; 3 uses
  %i.gh = ptrtoint ptr %i.fd to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 2 uses
  %i.gj = trunc i64 %i.gi to i16
  %i.gk = call i16 @llvm.bswap.i16(i16 %i.gj)
  store i16 %i.gk, ptr %.2150.i, align 1
  %i.gl = lshr i64 %i.gi, 1
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.19, i64 noundef %i.gl) #7
  %i.gm = sub i64 %i.gg, %i.fa
  %i.gn = getelementptr inbounds nuw i8, ptr %.2150.i, i64 %i.gm ; 4 uses
  %i.go = icmp ule ptr %.349.i.i, %i.ct
  %i.gp = sub i64 %i.dd, %i.gg
  %i.gq = icmp ugt i64 %i.gp, 1
  %narrow.i190.not.i = and i1 %i.go, %i.gq
  br i1 %narrow.i190.not.i, label %bb.bb, label %ssl_write_client_hello_body.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store i8 1, ptr %i.gn, align 1, !tbaa !64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 2 ; 4 uses
  store i8 0, ptr %i.gr, align 1, !tbaa !64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cu, i64 3272
  store i32 0, ptr %i.gt, align 8, !tbaa !71
  %i.gu = icmp ule ptr %i.gs, %i.ct
  %i.gv = ptrtoint ptr %i.gs to i64               ; 3 uses
  %i.gw = sub i64 %i.dd, %i.gv
  %i.gx = icmp ugt i64 %i.gw, 1
  %narrow.i191.not.i = and i1 %i.gu, %i.gx
  br i1 %narrow.i191.not.i, label %bb.bc, label %ssl_write_client_hello_body.exit.thread

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  %i.gz = call fastcc i32 @ssl_write_hostname_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.ct, ptr noundef %i.a) ; 2 uses
  %.not172.i = icmp eq i32 %i.gz, 0
  br i1 %.not172.i, label %bb.bd, label %ssl_write_client_hello_body.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha ; 2 uses
  %i.hc = call fastcc i32 @ssl_write_alpn_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.ct, ptr noundef %i.a) ; 2 uses
  %.not173.i = icmp eq i32 %i.hc, 0
  br i1 %.not173.i, label %bb.be, label %ssl_write_client_hello_body.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 3 uses
  br i1 %.not174.i, label %.thread199.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = call i32 @mbedtls_ssl_tls13_write_client_hello_exts(ptr noundef nonnull %0, ptr noundef nonnull %i.he, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not175.i = icmp eq i32 %i.hf, 0
  br i1 %.not175.i, label %bb.bg, label %ssl_write_client_hello_body.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg
  %.val.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.hi = getelementptr i8, ptr %.val.i, i64 32
  %.val.val.i = load i32, ptr %i.hi, align 8, !tbaa !72
  %i.hj = and i32 %.val.val.i, 6
  %.not.i72 = icmp eq i32 %i.hj, 0
  %spec.select.i73 = select i1 %.not.i72, i32 0, i32 2
  br label %.thread199.i

.thread199.i:                                     ; preds = %bb.bg, %bb.be
  %.3151201.i = phi ptr [ %i.hh, %bb.bg ], [ %i.he, %bb.be ] ; 3 uses
  %.0.i = phi i32 [ %spec.select.i73, %bb.bg ], [ 0, %bb.be ]
  %i.hk = icmp ne i32 %.2195.i, 0
  %or.cond.i74 = select i1 %2, i1 %i.hk, i1 false
  %i.hl = zext i1 %or.cond.i74 to i32
  %spec.select184.i = or disjoint i32 %.0.i, %i.hl ; 2 uses
  %.not178.i = icmp eq i32 %spec.select184.i, 0
  br i1 %.not178.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %.thread199.i
  %i.hm = call fastcc i32 @ssl_write_supported_groups_ext(ptr noundef nonnull %0, ptr noundef nonnull %.3151201.i, ptr noundef nonnull %i.ct, i32 noundef %spec.select184.i, ptr noundef %i.a) ; 2 uses
  %.not179.i = icmp eq i32 %i.hm, 0
  br i1 %.not179.i, label %bb.bi, label %ssl_write_client_hello_body.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.hn = load i64, ptr %i.a, align 8, !tbaa !63
  %i.ho = getelementptr inbounds nuw i8, ptr %.3151201.i, i64 %i.hn
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread199.i
  %.5.ph.i = phi ptr [ %.3151201.i, %.thread199.i ], [ %i.ho, %bb.bi ] ; 4 uses
  br i1 %.not174.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val185.i = load ptr, ptr %0, align 8, !tbaa !44
  %i.hp = getelementptr i8, ptr %.val185.i, i64 32
  %.val185.val.i = load i32, ptr %i.hp, align 8, !tbaa !72
  %i.hq = and i32 %.val185.val.i, 2
  %i.hr = icmp ne i32 %i.hq, 0
  %3 = select i1 %i.hr, i1 true, i1 %2
  br i1 %3, label %bb.bm, label %4

bb.bl:                                            ; preds = %bb.bj
  br i1 %2, label %bb.bm, label %.thread236.i

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hs = call i32 @mbedtls_ssl_write_sig_alg_ext(ptr noundef nonnull %0, ptr noundef %.5.ph.i, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not180.i = icmp eq i32 %i.hs, 0
  br i1 %.not180.i, label %bb.bn, label %ssl_write_client_hello_body.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.ht = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hu = getelementptr inbounds nuw i8, ptr %.5.ph.i, i64 %i.ht
  br label %4

4:                                                ; preds = %bb.bn, %bb.bk
  %.6.i = phi ptr [ %i.hu, %bb.bn ], [ %.5.ph.i, %bb.bk ] ; 3 uses
  br i1 %2, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %4
  %i.hv = call i32 @mbedtls_ssl_tls12_write_client_hello_exts(ptr noundef nonnull %0, ptr noundef %.6.i, ptr noundef nonnull %i.ct, i32 noundef %.2195.i, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not181.i.a = icmp eq i32 %i.hv, 0
  br i1 %.not181.i.a, label %bb.bp, label %ssl_write_client_hello_body.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.hw
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %4
  %.7.i = phi ptr [ %i.hx, %bb.bp ], [ %.6.i, %4 ] ; 4 uses
  br i1 %.not174.i, label %.thread236.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val186.i = load ptr, ptr %0, align 8, !tbaa !44
  %5 = getelementptr i8, ptr %.val186.i, i64 32
  %.val186.val.i = load i32, ptr %5, align 8, !tbaa !72
  %i.hy = and i32 %.val186.val.i, 5
  %.not214.i = icmp eq i32 %i.hy, 0
  br i1 %.not214.i, label %.thread236.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = call i32 @mbedtls_ssl_tls13_write_identities_of_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef %.7.i, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not183.i = icmp eq i32 %i.hz, 0
  br i1 %.not183.i, label %bb.bt, label %ssl_write_client_hello_body.exit.thread

bb.bt:                                            ; preds = %bb.bs
  %i.ia = load i64, ptr %i.a, align 8, !tbaa !63
  %i.ib = getelementptr inbounds nuw i8, ptr %.7.i, i64 %i.ia
  br label %.thread236.i

.thread236.i:                                     ; preds = %bb.bt, %bb.br, %bb.bq, %bb.bl
  %.8.i = phi ptr [ %i.ib, %bb.bt ], [ %.7.i, %bb.br ], [ %.7.i, %bb.bq ], [ %.5.ph.i, %bb.bl ]
  %i.ic = ptrtoint ptr %.8.i to i64               ; 2 uses
  %i.id = sub i64 %i.ic, %i.gv
  %i.ie = add i64 %i.id, -2                       ; 4 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread236.i
  %i.ig = trunc i64 %i.ie to i16
  %i.ih = call i16 @llvm.bswap.i16(i16 %i.ig)
  store i16 %i.ih, ptr %i.gs, align 1
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 690, ptr noundef nonnull @.str.15, i64 noundef %i.ie) #7
  call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 692, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.gs, i64 noundef %i.ie) #7
  br label %bb.bv

ssl_write_client_hello_body.exit.thread:          ; preds = %bb.av, %bb.aq, %bb.ak, %bb.al, %bb.bs, %bb.bh, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.bf, %bb.bo, %bb.am, %bb.bm, %bb.ay, %bb.at
  %.4.i.ph = phi i32 [ -27136, %bb.aq ], [ -27136, %bb.at ], [ -27136, %bb.ay ], [ %i.hs, %bb.bm ], [ -27136, %bb.am ], [ %i.hv, %bb.bo ], [ %i.hf, %bb.bf ], [ %i.hc, %bb.bd ], [ %i.gz, %bb.bc ], [ -27136, %bb.bb ], [ -27136, %bb.ba ], [ %i.hm, %bb.bh ], [ %i.hz, %bb.bs ], [ -27136, %bb.al ], [ -27136, %bb.ak ], [ -27136, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %ssl_prepare_client_hello.exit.thread

bb.bv:                                            ; preds = %bb.bu, %.thread236.i
  %.pre-phi.i = phi i64 [ %i.gv, %.thread236.i ], [ %i.ic, %bb.bu ]
  %i.ii = sub i64 %.pre-phi.i, %i.de              ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ij = load ptr, ptr %0, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 9
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !52
  %i.im = icmp eq i8 %i.il, 1
  br i1 %i.im, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.in = add i64 %i.ii, 4
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 %i.in, ptr %i.io, align 8, !tbaa !73
  call void @mbedtls_ssl_send_flight_completed(ptr noundef nonnull %0) #7
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !74 ; 2 uses
  %i.ir = call ptr @mbedtls_ssl_states_str(i32 noundef %i.iq) #7
  %i.is = call ptr @mbedtls_ssl_states_str(i32 noundef 2) #7
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef 1355, ptr noundef nonnull @.str.28, i32 noundef %i.iq, ptr noundef %i.ir, i32 noundef 2, ptr noundef %i.is) #7
  store i32 2, ptr %i.ip, align 8, !tbaa !74
  %i.it = call i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #7 ; 3 uses
  %.not70 = icmp eq i32 %i.it, 0
  br i1 %.not70, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.2, i32 noundef %i.it) #7
  br label %bb.cn

bb.by:                                            ; preds = %bb.bw
  %i.iu = call i32 @mbedtls_ssl_flight_transmit(ptr noundef nonnull %0) #7 ; 3 uses
  %.not71 = icmp eq i32 %i.iu, 0
  br i1 %.not71, label %bb.cm, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 956, ptr noundef nonnull @.str.3, i32 noundef %i.iu) #7
  br label %bb.cn

bb.ca:                                            ; preds = %bb.bv
  %i.iv = call i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ii) #7 ; 3 uses
  %.not64 = icmp eq i32 %i.iv, 0
  br i1 %.not64, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 967, ptr noundef nonnull @.str.4, i32 noundef %i.iv) #7
  br label %bb.cn

bb.cc:                                            ; preds = %bb.ca
  %i.iw = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !75
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.ja = load i64, ptr %i.d, align 8, !tbaa !63
  %i.jb = sub i64 %i.ii, %i.ja
  %i.jc = call i32 %i.iy(ptr noundef nonnull %0, ptr noundef %i.iz, i64 noundef %i.jb) #7 ; 3 uses
  %.not65 = icmp eq i32 %i.jc, 0
  br i1 %.not65, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 972, ptr noundef nonnull @.str.5, i32 noundef %i.jc) #7
  br label %bb.cn

bb.ce:                                            ; preds = %bb.cc
  %i.jd = load i64, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %.not66 = icmp eq i64 %i.jd, 0
  br i1 %.not66, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ii ; 2 uses
  %i.jg = sub i64 0, %i.jd
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %i.jg
  %i.ji = call i32 @mbedtls_ssl_tls13_write_binders_of_pre_shared_key_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.jh, ptr noundef %i.jf) #7 ; 2 uses
  %.not67 = icmp eq i32 %i.ji, 0
  br i1 %.not67, label %bb.cg, label %ssl_prepare_client_hello.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.jj = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !75
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ii
  %i.jo = load i64, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.jp = sub i64 0, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %i.jn, i64 %i.jp
  %i.jr = call i32 %i.jl(ptr noundef nonnull %0, ptr noundef %i.jq, i64 noundef %i.jo) #7 ; 3 uses
  %.not68 = icmp eq i32 %i.jr, 0
  br i1 %.not68, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @mbedtls_debug_print_ret(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 983, ptr noundef nonnull @.str.5, i32 noundef %i.jr) #7
  br label %bb.cn

bb.ci:                                            ; preds = %bb.ce, %bb.cg
  %i.js = load i64, ptr %i.c, align 8, !tbaa !63
  %i.jt = call i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef nonnull %0, i64 noundef %i.js, i64 noundef %i.ii) #7 ; 2 uses
  %.not69 = icmp eq i32 %i.jt, 0
  br i1 %.not69, label %bb.cj, label %ssl_prepare_client_hello.exit.thread

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @mbedtls_ssl_handshake_set_state(ptr noundef nonnull %0)
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !51
  %i.jx = icmp ult i32 %i.jw, 773
  br i1 %i.jx, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.jy = load i32, ptr %i.bn, align 4, !tbaa !43
  %i.jz = icmp ugt i32 %i.jy, 771
  br i1 %i.jz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ka = call i32 @mbedtls_ssl_tls13_finalize_client_hello(ptr noundef nonnull %0) #7
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.by
  %.0 = phi i32 [ 0, %bb.by ], [ %i.ka, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ]
  %i.kb = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 3272
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !71
  call void @mbedtls_ssl_print_extensions(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1009, i32 noundef 1, i32 noundef %i.kd, ptr noundef null) #7
  br label %ssl_prepare_client_hello.exit.thread

ssl_prepare_client_hello.exit.thread:             ; preds = %.thread100.i, %bb.a, %bb.aa, %bb.r, %ssl_write_client_hello_body.exit.thread, %bb.ci, %bb.cf, %ssl_prepare_client_hello.exit.thread85, %ssl_prepare_client_hello.exit, %bb.cm
  %.1 = phi i32 [ %i.cp, %ssl_prepare_client_hello.exit ], [ %i.cq, %ssl_prepare_client_hello.exit.thread85 ], [ %.4.i.ph, %ssl_write_client_hello_body.exit.thread ], [ %.0, %bb.cm ], [ %i.ji, %bb.cf ], [ %i.jt, %bb.ci ], [ -28928, %.thread100.i ], [ -27648, %bb.a ], [ %i.cg, %bb.aa ], [ %i.bk, %bb.r ]
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @.str.6) #7
  br label %bb.cn

bb.cn:                                            ; preds = %ssl_prepare_client_hello.exit.thread, %bb.ch, %bb.cd, %bb.cb, %bb.bz, %bb.bx
  %.048 = phi i32 [ %.1, %ssl_prepare_client_hello.exit.thread ], [ %i.it, %bb.bx ], [ %i.iu, %bb.bz ], [ %i.iv, %bb.cb ], [ %i.jc, %bb.cd ], [ %i.jr, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @mbedtls_debug_print_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @mbedtls_ssl_start_handshake_msg(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_ssl_send_flight_completed(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mbedtls_ssl_handshake_set_state(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = tail call ptr @mbedtls_ssl_states_str(i32 noundef %i.b) #7
  %i.d = tail call ptr @mbedtls_ssl_states_str(i32 noundef 2) #7
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef 1355, ptr noundef nonnull @.str.28, i32 noundef %i.b, ptr noundef %i.c, i32 noundef 2, ptr noundef %i.d) #7
  store i32 2, ptr %i.a, align 8, !tbaa !74
  ret void
}

declare void @mbedtls_debug_print_ret(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_flight_transmit(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_add_hs_hdr_to_checksum(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_tls13_write_binders_of_pre_shared_key_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_finish_handshake_msg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_tls13_finalize_client_hello(ptr noundef) local_unnamed_addr #2

declare void @mbedtls_ssl_print_extensions(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @mbedtls_ms_time() local_unnamed_addr #2

declare ptr @mbedtls_ssl_get_hostname_pointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4
end_hunk_0
