Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls12_client?download=true
inline.NumInlined: 88
inline.NumDeleted: 36
begin_hunk_0_@mbedtls_ssl_tls12_write_client_hello_exts:bb.a
  br i1 %i.co, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = icmp ule ptr %i.cm, %2
  %i.cq = ptrtoint ptr %2 to i64
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ugt i64 %i.cs, 3
  %narrow.i.not.i66 = and i1 %i.cp, %i.ct
  br i1 %narrow.i.not.i66, label %bb.s, label %ssl_write_renegotiation_ext.exit

bb.s:                                             ; preds = %bb.r
  store i16 5888, ptr %i.cm, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 3
  store i8 0, ptr %i.cu, align 1, !tbaa !20
  store i8 0, ptr %i.cv, align 1, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cw = phi i64 [ 4, %bb.s ], [ 0, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = call fastcc i32 @ssl_write_session_ticket_ext(ptr noundef nonnull %0, ptr noundef %i.cx, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  %.not55 = icmp eq i32 %i.cy, 0
  br i1 %.not55, label %bb.u, label %ssl_write_renegotiation_ext.exit

bb.u:                                             ; preds = %bb.t
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = sub i64 %i.db, %i.dc
  store i64 %i.dd, ptr %4, align 8, !tbaa !9
  br label %ssl_write_renegotiation_ext.exit

ssl_write_renegotiation_ext.exit:                 ; preds = %bb.r, %bb.o, %bb.l, %bb.i, %bb.e, %bb.b, %bb.t, %bb.u
  %.041 = phi i32 [ 0, %bb.u ], [ %i.cy, %bb.t ], [ -138, %bb.b ], [ -138, %bb.e ], [ -138, %bb.i ], [ -138, %bb.l ], [ -138, %bb.o ], [ -138, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -138, 1) i32 @ssl_write_session_ticket_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 5 uses
  store i64 0, ptr %3, align 8, !tbaa !9
  %i.e = load ptr, ptr %0, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i8, ptr %i.f, align 1, !tbaa !40
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.d, 4
  %i.j = icmp ule ptr %1, %2
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ule i64 %i.i, %i.m
  %narrow.i.not = and i1 %i.j, %i.n
  br i1 %narrow.i.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i16 8960, ptr %1, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = trunc i64 %i.d to i16
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.q, ptr %i.o, align 1
  store i64 4, ptr %3, align 8, !tbaa !9
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %i.v = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.t, i64 %i.d, i1 false)
  %i.x = load i64, ptr %3, align 8, !tbaa !9
  %i.y = add i64 %i.x, %i.d
  store i64 %i.y, ptr %3, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ -138, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_handshake_client_step(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.psa_key_attributes_s, align 4 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.psa_key_attributes_s, align 4 ; 11 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i16, align 2                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca [64 x i8], align 16               ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !58
  switch i32 %i.n, label %ssl_parse_server_hello.exit [
    i32 12, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.by
    i32 4, label %bb.bz
    i32 5, label %bb.dp
    i32 6, label %bb.ee
    i32 7, label %bb.el
    i32 8, label %bb.em
    i32 9, label %bb.fe
    i32 10, label %bb.fr
    i32 11, label %bb.fs
    i32 16, label %bb.ft
    i32 15, label %bb.gk
    i32 13, label %bb.gi
    i32 14, label %bb.gj
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !50
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %thread-pre-split.thread, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 16, ptr %i.m, align 8, !tbaa !58
  br label %bb.ft

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.m, align 8, !tbaa !58
  br label %ssl_parse_server_hello.exit

bb.d:                                             ; preds = %bb.a
  %i.s = tail call i32 @mbedtls_ssl_write_client_hello(ptr noundef nonnull %0) #14
  br label %ssl_parse_server_hello.exit

bb.e:                                             ; preds = %bb.a
  %i.t = tail call i32 @mbedtls_ssl_read_record(ptr noundef nonnull %0, i32 noundef 1) #14 ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %ssl_parse_server_hello.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load i32, ptr %i.w, align 8, !tbaa !60
  %.not206.i = icmp eq i32 %i.x, 22
  br i1 %.not206.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !61
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 292
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !62 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  %.not226.i = icmp slt i32 %i.ac, %i.ag
  %or.cond227.i = select i1 %i.ah, i1 true, i1 %.not226.i
  br i1 %or.cond227.i, label %bb.i, label %ssl_parse_server_hello.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 1, ptr %i.ai, align 4, !tbaa !63
  br label %ssl_parse_server_hello.exit

bb.j:                                             ; preds = %bb.g
  %i.aj = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 10) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.k:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !31  ; 2 uses
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !20
  %i.ap = icmp eq i8 %i.ao, 3
  br i1 %i.ap, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 15
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.au, align 1
  %i.av = and i16 %.0.copyload.i.i.i, -513
  %or.cond.not.i.i = icmp eq i16 %i.av, -514
  br i1 %or.cond.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 70) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !20  ; 2 uses
  %i.ba = zext i8 %i.az to i16
  %gepdiff.i.i = add i64 %i.ar, -15
  %i.bb = zext i8 %i.az to i64                    ; 3 uses
  %i.bc = icmp slt i64 %gepdiff.i.i, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.s:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1360
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.bh) #14
  %i.bi = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bb) #15 ; 3 uses
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1360
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !65
  %i.bl = icmp eq ptr %i.bi, null
  br i1 %i.bl, label %ssl_parse_server_hello.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %i.ay, i64 %i.bb, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1368
  store i16 %i.ba, ptr %i.bm, align 8, !tbaa !66
  store i32 1, ptr %i.m, align 8, !tbaa !58
  %i.bn = tail call i32 @mbedtls_ssl_reset_checksum(ptr noundef nonnull %0) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %bb.u, label %ssl_parse_server_hello.exit

bb.u:                                             ; preds = %bb.t
  tail call void @mbedtls_ssl_recv_flight_completed(ptr noundef nonnull %0) #14
  br label %ssl_parse_server_hello.exit

bb.v:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1360
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.br) #14
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !42 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1360
  store ptr null, ptr %i.bt, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1368
  store i16 0, ptr %i.bu, align 8, !tbaa !66
  %.val236.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  %.phi.trans.insert.i = getelementptr i8, ptr %.val236.pre.i, i64 9
  %.val236.val.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %.val236.val.i = phi i8 [ %.val236.val.pre.i, %bb.v ], [ %i.am, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !67
  %i.bx = icmp eq i8 %.val236.val.i, 1
  %..i.i = select i1 %i.bx, i64 12, i64 4         ; 2 uses
  %i.by = add nuw nsw i64 %..i.i, 38
  %i.bz = icmp ult i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = load i8, ptr %i.v, align 1, !tbaa !20
  %.not207.i = icmp eq i8 %i.ca, 2
  br i1 %.not207.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cb = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.z:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i.i ; 8 uses
  %i.cd = zext i8 %.val236.val.i to i32
  %i.ce = tail call zeroext i16 @mbedtls_ssl_read_version(ptr noundef nonnull %i.cc, i32 noundef %i.cd) #14
  %i.cf = zext i16 %i.ce to i32                   ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.cf, ptr %i.cj, align 4, !tbaa !69
  %i.ck = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.cm, ptr %i.cn, align 2, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !72
  %i.cq = icmp ugt i32 %i.cp, %i.cf
  br i1 %i.cq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !73
  %i.cs = icmp ult i32 %i.cr, %i.cf
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ct = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 70) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2056
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 1 dereferenceable(32) %i.cx, i64 32, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 34
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !20  ; 3 uses
  %i.da = zext i8 %i.cz to i64                    ; 10 uses
  %i.db = icmp ugt i8 %i.cz, 32
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dd = load i64, ptr %i.bv, align 8, !tbaa !67 ; 3 uses
  %.val234.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.de = getelementptr i8, ptr %.val234.i, i64 9
  %.val234.val.i = load i8, ptr %i.de, align 1, !tbaa !31
  %i.df = icmp eq i8 %.val234.val.i, 1
  %..i238.i = select i1 %i.df, i64 12, i64 4      ; 3 uses
  %i.dg = add nuw nsw i64 %i.da, 39
  %i.dh = add nuw nsw i64 %i.dg, %..i238.i
  %i.di = icmp ugt i64 %i.dd, %i.dh
  br i1 %i.di, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.da
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 38
  %.0.copyload.i232.i = load i16, ptr %i.dk, align 1 ; 2 uses
  %i.dl = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i232.i) ; 2 uses
  %i.dm = icmp ne i16 %.0.copyload.i232.i, 0
  %i.dn = icmp ult i16 %i.dl, 4
  %or.cond.i = and i1 %i.dm, %i.dn
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = zext i16 %i.dl to i64                   ; 2 uses
  %i.dp = add nuw nsw i64 %i.da, 40
  %i.dq = add nuw nsw i64 %i.dp, %..i238.i
  %i.dr = add nuw nsw i64 %i.dq, %i.do
  %.not208.i = icmp eq i64 %i.dd, %i.dr
  br i1 %.not208.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ds = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.ai:                                            ; preds = %bb.ae
  %i.dt = add nuw nsw i64 %i.da, 38
  %i.du = add nuw nsw i64 %i.dt, %..i238.i
  %i.dv = icmp eq i64 %i.dd, %i.du
  br i1 %i.dv, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 50) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ag
  %.0181.i = phi i64 [ %i.do, %bb.ag ], [ 0, %bb.ai ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.da ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 35
  %.0.copyload.i231.i = load i16, ptr %i.dy, align 1
  %i.dz = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i231.i)
  %i.ea = zext i16 %i.dz to i32                   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 37
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !20
  %.not209.i = icmp eq i8 %i.ec, 0
  br i1 %.not209.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 47) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.am:                                            ; preds = %bb.ak
  %i.ee = tail call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %i.ea) #14 ; 3 uses
  %i.ef = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !74
  %i.eh = icmp eq ptr %i.ee, null
  br i1 %i.eh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ei = tail call i32 @mbedtls_ssl_send_alert_message(ptr noundef nonnull %0, i8 noundef zeroext 2, i8 noundef zeroext 80) #14 ; 0 uses
  br label %ssl_parse_server_hello.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @mbedtls_ssl_optimize_checksum(ptr noundef nonnull %0, ptr noundef nonnull %i.ee) #14
  %i.ej = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !75
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = icmp eq i8 %i.cz, 0
  %or.cond3.i = or i1 %i.em, %i.el
  br i1 %or.cond3.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !18
  %.not210.i = icmp eq i32 %i.eo, 0
  br i1 %.not210.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.ch, align 8, !tbaa !36 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !76
  %.not211.i = icmp eq i32 %i.er, %i.ea
  br i1 %.not211.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !77
  %.not212.i = icmp eq i64 %i.et, %i.da
  br i1 %.not212.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cc, i64 35
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.eu, ptr nonnull %i.ev, i64 %i.da)
  %.not213.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not213.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.ew = load i32, ptr %i.m, align 8, !tbaa !58
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.m, align 8, !tbaa !58
  store i8 0, ptr %i.ej, align 8, !tbaa !75
  %i.ey = tail call i64 @time(ptr noundef null) #14
  %i.ez = load ptr, ptr %i.ch, align 8, !tbaa !36 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !78
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i32 %i.ea, ptr %i.fb, align 8, !tbaa !76
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store i64 %i.da, ptr %i.fc, align 8, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cc, i64 35
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr nonnull align 1 %i.fe, i64 %i.da, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  store i32 12, ptr %i.m, align 8, !tbaa !58
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ff = load ptr, ptr %0, align 8, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !79
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ay ], [ 0, %bb.av ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !51 ; 3 uses
end_hunk_0
