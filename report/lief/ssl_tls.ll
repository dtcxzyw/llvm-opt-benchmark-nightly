Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls?download=true
inline.NumInlined: 207
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssl_session_save:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = phi i64 [ %i.cu, %bb.z ], [ 0, %bb.y ]  ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !173 ; 2 uses
  %i.cy = icmp ugt i8 %i.cx, 48
  br i1 %i.cy, label %ssl_tls13_session_save.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %narrow.i = add nuw nsw i8 %i.cx, 14
  %i.cz = zext nneg i8 %narrow.i to i64           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.db = load i8, ptr %i.da, align 2, !tbaa !60
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dd = add i64 %i.cv, 2
  %i.de = add i64 %i.dd, %i.cz                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !59 ; 2 uses
  %i.dh = sub i64 -7, %i.de
  %i.di = icmp ugt i64 %i.dg, %i.dh
  br i1 %i.di, label %ssl_tls13_session_save.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = add i64 %i.de, 6
  %i.dk = add i64 %i.dj, %i.dg
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.0.i45 = phi i64 [ %i.dk, %bb.ad ], [ %i.cz, %bb.ab ] ; 6 uses
  %i.dl = icmp ugt i64 %.0.i45, %i.p
  br i1 %i.dl, label %ssl_tls12_session_save.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !174
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  store i32 %i.do, ptr %.140, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !175
  %i.dr = getelementptr inbounds nuw i8, ptr %.140, i64 4
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !72
  %i.ds = load i8, ptr %i.cw, align 1, !tbaa !173 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.140, i64 5
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %.140, i64 6 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.dw = zext i8 %i.ds to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull readonly align 2 %i.dv, i64 %i.dw, i1 false)
  %i.dx = load i8, ptr %i.cw, align 1, !tbaa !173
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dy ; 3 uses
  %i.ea = load i8, ptr %i.da, align 2, !tbaa !60  ; 2 uses
  %i.eb = icmp eq i8 %i.ea, 1
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !171
  %i.ee = tail call i64 @llvm.bswap.i64(i64 %i.ed)
  store i64 %i.ee, ptr %i.dz, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.pr.i = load i8, ptr %i.da, align 2, !tbaa !60
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eg = phi i8 [ %.pr.i, %bb.ag ], [ %i.ea, %bb.af ]
  %.063.i = phi ptr [ %i.ef, %bb.ag ], [ %i.dz, %bb.af ] ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %ssl_tls12_session_save.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ei = trunc i64 %i.cv to i16
  %i.ej = tail call i16 @llvm.bswap.i16(i16 %i.ei)
  store i16 %i.ej, ptr %.063.i, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.063.i, i64 2 ; 3 uses
  %.not.i46 = icmp eq i64 %i.cv, 0
  br i1 %.not.i46, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = load ptr, ptr %i.cq, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr align 1 %i.el, i64 %i.cv, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.cv
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.i47 = phi ptr [ %i.em, %bb.aj ], [ %i.ek, %bb.ai ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !176
  %i.ep = tail call i64 @llvm.bswap.i64(i64 %i.eo)
  store i64 %i.ep, ptr %.1.i47, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i47, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.es = load i32, ptr %i.er, align 8, !tbaa !170
  %i.et = tail call i32 @llvm.bswap.i32(i32 %i.es)
  store i32 %i.et, ptr %i.eq, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.i47, i64 12
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !59
  %i.ex = trunc i64 %i.ew to i16
  %i.ey = tail call i16 @llvm.bswap.i16(i16 %i.ex)
  store i16 %i.ey, ptr %i.eu, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1.i47, i64 14
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46 ; 2 uses
  %.not70.i = icmp eq ptr %i.fb, null
  br i1 %.not70.i, label %ssl_tls12_session_save.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = load i64, ptr %i.ev, align 8, !tbaa !59 ; 2 uses
  %.not71.i = icmp eq i64 %i.fc, 0
  br i1 %.not71.i, label %ssl_tls12_session_save.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull align 1 %i.fb, i64 %i.fc, i1 false)
  br label %ssl_tls12_session_save.exit

ssl_tls12_session_save.exit:                      ; preds = %bb.ah, %bb.am, %bb.al, %bb.ak, %bb.ae, %bb.x, %bb.w
  %.pn = phi i64 [ %i.cm, %bb.x ], [ %i.cm, %bb.w ], [ %.0.i45, %bb.ae ], [ %.0.i45, %bb.ak ], [ %.0.i45, %bb.al ], [ %.0.i45, %bb.am ], [ %.0.i45, %bb.ah ]
  %.1 = add i64 %.pn, %.0                         ; 2 uses
  store i64 %.1, ptr %4, align 8, !tbaa !36
  %i.fd = icmp ugt i64 %.1, %3
  %. = select i1 %i.fd, i32 -138, i32 0
  br label %ssl_tls13_session_save.exit

ssl_tls13_session_save.exit:                      ; preds = %bb.ac, %bb.aa, %ssl_tls12_session_save.exit, %bb.g, %bb.a
  %.041 = phi i32 [ -27648, %bb.a ], [ -28800, %bb.g ], [ %., %ssl_tls12_session_save.exit ], [ -135, %bb.aa ], [ -135, %bb.ac ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_session_load(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_session_load(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %mbedtls_ssl_session_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %ssl_clear_peer_cert.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @mbedtls_x509_crt_free(ptr noundef nonnull %i.d) #24
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.e) #24
  store ptr null, ptr %i.c, align 8, !tbaa !44
  br label %ssl_clear_peer_cert.exit.i

ssl_clear_peer_cert.exit.i:                       ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.g) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.i) #24
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 496) #24
  br label %mbedtls_ssl_session_free.exit

mbedtls_ssl_session_free.exit:                    ; preds = %ssl_clear_peer_cert.exit.i, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_session_load(ptr nofree noundef captures(address_is_null) %0, i8 noundef zeroext range(i8 0, 2) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ssl_tls12_session_load.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %3, 5
  br i1 %i.c, label %ssl_tls12_session_load.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %2, align 1
  %i.e = xor i32 %i.d, 4
  %i.f = getelementptr i8, ptr %2, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 255
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %bb.e, label %ssl_tls12_session_load.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ %i.m, %bb.e ]    ; 15 uses
  %i.n = ptrtoint ptr %i.a to i64                 ; 10 uses
  %i.o = ptrtoint ptr %.0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 4
  br i1 %i.q, label %ssl_tls12_session_load.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.s = load i8, ptr %.0, align 1, !tbaa !72
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.t, 768                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.x = load i8, ptr %i.r, align 1, !tbaa !72    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i8 %i.x, ptr %i.y, align 2, !tbaa !60
  %.0.copyload.i = load i16, ptr %i.w, align 1
  %i.z = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !112
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.n, %i.ad                     ; 7 uses
  switch i32 %i.u, label %ssl_tls12_session_load.exit [
    i32 771, label %bb.h
    i32 772, label %bb.ac
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ult i64 %i.ae, 8
  br i1 %i.af, label %ssl_tls12_session_load.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.0.copyload.i101.i = load i64, ptr %i.ac, align 1
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i101.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !168
  %i.ai = icmp ult i64 %i.ae, 93
  br i1 %i.ai, label %ssl_tls12_session_load.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 13
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !72
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.am, ptr %i.an, align 8, !tbaa !169
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 1 dereferenceable(48) %i.ap, i64 48, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 93
  %.0.copyload.i103.i = load i32, ptr %i.ar, align 1
  %i.as = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i103.i)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.as, ptr %i.at, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  store ptr null, ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !46
  %i.aw = icmp ult i64 %i.ae, 96
  br i1 %i.aw, label %ssl_tls12_session_load.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 97
  %4 = load i16, ptr %i.ax, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.ay = zext i16 %5 to i64
  %i.az = shl nuw nsw i64 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 99
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !72
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc            ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 100 ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gepdiff97.i = add nsw i64 %i.ae, -96
  %i.bf = icmp ugt i64 %i.bd, %gepdiff97.i
  br i1 %i.bf, label %ssl_tls12_session_load.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call noalias dereferenceable_or_null(1304) ptr @calloc(i64 noundef 1, i64 noundef 1304) #25 ; 3 uses
  store ptr %i.bg, ptr %i.au, align 8, !tbaa !44
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %ssl_tls12_session_load.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @mbedtls_x509_crt_init(ptr noundef nonnull %i.bg) #24
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.bj = tail call i32 @mbedtls_x509_crt_parse_der(ptr noundef %i.bi, ptr noundef nonnull %i.be, i64 noundef %i.bd) #24 ; 2 uses
  %.not98.i = icmp eq i32 %i.bj, 0
  br i1 %.not98.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !44
  tail call void @mbedtls_x509_crt_free(ptr noundef %i.bk) #24
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !44
  tail call void @free(ptr noundef %i.bl) #24
  store ptr null, ptr %i.au, align 8, !tbaa !44
  br label %ssl_tls12_session_load.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  %.pre = load i8, ptr %i.y, align 2, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %i.bn = phi i8 [ %.pre, %bb.p ], [ %i.x, %bb.k ]
  %.1.i = phi ptr [ %i.bm, %bb.p ], [ %i.be, %bb.k ] ; 8 uses
  switch i8 %i.bn, label %bb.z [
    i8 0, label %bb.r
    i8 1, label %bb.x
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = ptrtoint ptr %.1.i to i64
  %i.bp = sub i64 %i.n, %i.bo
  %i.bq = icmp ult i64 %i.bp, 3
  br i1 %i.bq, label %ssl_tls12_session_load.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %6 = load i16, ptr %.1.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.br = zext i16 %7 to i64
  %i.bs = shl nuw nsw i64 %i.br, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !72
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.bs, %i.bv            ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !59
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i, i64 3 ; 4 uses
  %.not99.i = icmp eq i64 %i.bw, 0
  br i1 %.not99.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.n, %i.bz
  %i.cb = icmp ugt i64 %i.bw, %i.ca
  br i1 %i.cb, label %ssl_tls12_session_load.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bw) #25 ; 3 uses
  store ptr %i.cc, ptr %i.av, align 8, !tbaa !46
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %ssl_tls12_session_load.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.by, i64 %i.bw, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.2.i = phi ptr [ %i.ce, %bb.v ], [ %i.by, %bb.s ] ; 3 uses
  %i.cf = ptrtoint ptr %.2.i to i64
  %i.cg = sub i64 %i.n, %i.cf
  %i.ch = icmp ult i64 %i.cg, 4
  br i1 %i.ch, label %ssl_tls12_session_load.exit, label %.thread107.i

.thread107.i:                                     ; preds = %bb.w
  %.0.copyload.i102.i = load i32, ptr %.2.i, align 1
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i102.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !170
  %i.ck = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  br label %bb.z

bb.x:                                             ; preds = %bb.q
  %i.cl = ptrtoint ptr %.1.i to i64
  %i.cm = sub i64 %i.n, %i.cl
  %i.cn = icmp ult i64 %i.cm, 8
  br i1 %i.cn, label %ssl_tls12_session_load.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0.copyload.i.i = load i64, ptr %.1.i, align 1
  %i.co = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !171
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread107.i, %bb.q
  %.4.i = phi ptr [ %i.cq, %bb.y ], [ %.1.i, %bb.q ], [ %i.ck, %.thread107.i ] ; 4 uses
  %i.cr = icmp eq ptr %i.a, %.4.i
  br i1 %i.cr, label %ssl_tls12_session_load.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.ct = load i8, ptr %.4.i, align 1, !tbaa !72
  store i8 %i.ct, ptr %0, align 8, !tbaa !165
  %i.cu = icmp eq ptr %i.a, %i.cs
  br i1 %i.cu, label %ssl_tls12_session_load.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %.4.i, i64 2
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !72
  %i.cx = zext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !172
  %.not100.i = icmp eq ptr %i.cv, %i.a
  %..i = select i1 %.not100.i, i32 0, i32 -135
  br label %ssl_tls12_session_load.exit

bb.ac:                                            ; preds = %bb.g
  %i.cz = icmp slt i64 %i.ae, 6
  br i1 %i.cz, label %ssl_tls12_session_load.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.0.copyload.i86.i = load i32, ptr %i.ac, align 1
  %i.da = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i86.i)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.da, ptr %i.db, align 8, !tbaa !174
  %i.dc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.dd, ptr %i.de, align 4, !tbaa !175
  %i.df = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !72  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !173
  %gepdiff.i = add nsw i64 %i.ae, -6              ; 3 uses
  %i.di = zext i8 %i.dg to i64                    ; 6 uses
  %i.dj = icmp samesign ult i64 %gepdiff.i, %i.di
  %i.dk = icmp ugt i8 %i.dg, 48
  %or.cond.i = or i1 %i.dk, %i.dj
  br i1 %or.cond.i, label %ssl_tls12_session_load.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %.0, i64 10 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 166
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dm, ptr nonnull align 1 %i.dl, i64 %i.di, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di ; 3 uses
  switch i8 %i.x, label %ssl_tls12_session_load.exit [
    i8 1, label %bb.af
    i8 0, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %gepdiff80.i = sub nuw nsw i64 %gepdiff.i, %i.di
  %i.do = icmp samesign ult i64 %gepdiff80.i, 8
  br i1 %i.do, label %ssl_tls12_session_load.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.af
  %.0.copyload.i84.i = load i64, ptr %i.dn, align 1
  %i.dp = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i84.i)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !171
  br label %ssl_tls12_session_load.exit

bb.ag:                                            ; preds = %bb.ae
  %gepdiff91.i = sub nuw nsw i64 %gepdiff.i, %i.di
  %i.dr = icmp samesign ult i64 %gepdiff91.i, 2
  br i1 %i.dr, label %ssl_tls12_session_load.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.0.copyload.i82.i = load i16, ptr %i.dn, align 1 ; 2 uses
  %i.ds = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i82.i)
  %i.dt = zext i16 %i.ds to i64                   ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 3 uses
  %.neg94.i = add nsw i64 %i.ae, -8
  %gepdiff92.i = sub nsw i64 %.neg94.i, %i.di
  %i.dv = icmp slt i64 %gepdiff92.i, %i.dt
  br i1 %i.dv, label %ssl_tls12_session_load.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i30 = icmp eq i16 %.0.copyload.i82.i, 0
  br i1 %.not.i30, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.dt) #25 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !45
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %ssl_tls12_session_load.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.du, i64 %i.dt, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.1.i31 = phi ptr [ %i.dz, %bb.ak ], [ %i.du, %bb.ai ] ; 5 uses
  %i.ea = ptrtoint ptr %.1.i31 to i64
  %i.eb = sub i64 %i.n, %i.ea
  %i.ec = icmp slt i64 %i.eb, 8
  br i1 %i.ec, label %ssl_tls12_session_load.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.0.copyload.i83.i = load i64, ptr %.1.i31, align 1
  %i.ed = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i83.i)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !176
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i31, i64 8 ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.n, %i.eg
  %i.ei = icmp slt i64 %i.eh, 4
  br i1 %i.ei, label %ssl_tls12_session_load.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.0.copyload.i85.i = load i32, ptr %i.ef, align 1
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i85.i)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !170
  %i.el = getelementptr inbounds nuw i8, ptr %.1.i31, i64 12 ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.n, %i.em
  %i.eo = icmp slt i64 %i.en, 2
  br i1 %i.eo, label %ssl_tls12_session_load.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.0.copyload.i.i32 = load i16, ptr %i.el, align 1 ; 2 uses
  %i.ep = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i32)
  %i.eq = zext i16 %i.ep to i64                   ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !59
  %i.es = getelementptr inbounds nuw i8, ptr %.1.i31, i64 14 ; 2 uses
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.n, %i.et
  %i.ev = icmp slt i64 %i.eu, %i.eq
  br i1 %i.ev, label %ssl_tls12_session_load.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not81.i = icmp eq i16 %.0.copyload.i.i32, 0
  br i1 %.not81.i, label %ssl_tls12_session_load.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.eq) #25 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !46
end_hunk_0
