Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_decrypt_buf:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [55 x i8], align 16               ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [12 x i8], align 1                ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.psa_cipher_operation_s, align 8 ; 8 uses
  %4 = alloca %struct.psa_mac_operation_s, align 8 ; 8 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 -1) #19, !srcloc !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %ssl_parse_inner_plaintext.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ssl_parse_inner_plaintext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39   ; 3 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %ssl_parse_inner_plaintext.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sub nuw i64 %i.n, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 25 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %ssl_parse_inner_plaintext.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p ; 7 uses
  %i.w = tail call i32 @mbedtls_ssl_get_mode_from_transform(ptr noundef %1) #19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !37    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !138
  %.not = icmp eq i8 %i.y, %i.aa
  br i1 %.not, label %bb.f, label %ssl_parse_inner_plaintext.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.ad = zext i8 %i.y to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %i.ac, i64 %i.ad)
  %.not267 = icmp eq i32 %bcmp, 0
  br i1 %.not267, label %bb.g, label %ssl_parse_inner_plaintext.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.w, 3
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.af = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 16
  %.val291 = load i64, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %.not321 = icmp eq i64 %.val, %.val291
  %.pre336.a = load i64, ptr %i.s, align 8, !tbaa !40 ; 3 uses
  br i1 %.not321, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ult i64 %.pre336.a, 8
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !39
  %i.ak = add i64 %i.aj, 8
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !39
  %i.al = add i64 %.pre336.a, -8                  ; 2 uses
  store i64 %i.al, ptr %i.s, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.am = phi i64 [ %i.al, %bb.j ], [ %.pre336.a, %bb.h ] ; 3 uses
  %.0244 = phi ptr [ %i.v, %bb.j ], [ %2, %bb.h ]
  %.0235 = phi ptr [ %i.ai, %bb.j ], [ %i.v, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48 ; 3 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = sub nuw i64 %i.am, %i.ao
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 8 %i.ar, i64 %.val291, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.0.copyload.i11.i = load i64, ptr %i.as, align 1
  %.0.copyload.i.i = load i64, ptr %.0244, align 1
  %i.at = xor i64 %.0.copyload.i.i, %.0.copyload.i11.i
  store i64 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.av, i64 noundef %i.ao)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !52
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !42
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bd = ptrtoint ptr %.0235 to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %.neg = sub i64 %i.bb, %i.bd
  %i.bf = add i64 %.neg, %i.be
  %i.bg = call i32 @psa_aead_decrypt(i32 noundef %i.ax, i32 noundef %i.az, ptr noundef nonnull %i.d, i64 noundef %.val, ptr noundef nonnull %i.b, i64 noundef %i.ba, ptr noundef %.0235, i64 noundef %i.am, ptr noundef %.0235, i64 noundef %i.bf, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not280 = icmp eq i32 %i.bg, 0
  br i1 %.not280, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = call i32 @psa_status_to_mbedtls(i32 noundef %i.bg, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.m
  %.0.ph = phi i32 [ %i.bh, %bb.m ], [ -29056, %bb.i ], [ -29056, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %ssl_parse_inner_plaintext.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !52
  %i.bj = load i64, ptr %i.s, align 8, !tbaa !40
  %.not281 = icmp eq i64 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br i1 %.not281, label %.thread307, label %ssl_parse_inner_plaintext.exit

bb.o:                                             ; preds = %bb.g
  %i.bk = icmp eq i32 %i.w, 2
  %i.bl = add i32 %i.w, -1
  %or.cond = icmp ult i32 %i.bl, 2
  br i1 %or.cond, label %bb.p, label %ssl_parse_inner_plaintext.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46 ; 3 uses
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !40  ; 4 uses
  %i.bp = shl i64 %i.bn, 1
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %.thread300, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !53 ; 2 uses
  %i.bt = add i64 %i.bn, 1
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %.thread300, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bk, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %4, i8 0, i64 400, i1 false)
  %i.bw = sub i64 %i.bo, %i.bs
  store i64 %i.bw, ptr %i.s, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !48
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.by, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !55
  %i.cf = call i32 @psa_mac_verify_setup(ptr noundef nonnull %4, i32 noundef %i.cc, i32 noundef %i.ce) #19 ; 2 uses
  %.not268 = icmp eq i32 %i.cf, 0
  br i1 %.not268, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ch = call i32 @psa_mac_update(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef %i.cg) #19 ; 2 uses
  %.not269 = icmp eq i32 %i.ch, 0
  br i1 %.not269, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.s, align 8, !tbaa !40
  %i.cj = call i32 @psa_mac_update(ptr noundef nonnull %4, ptr noundef nonnull %i.v, i64 noundef %i.ci) #19 ; 2 uses
  %.not270 = icmp eq i32 %i.cj, 0
  br i1 %.not270, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ck
  %i.cm = load i64, ptr %i.br, align 8, !tbaa !53
  %i.cn = call i32 @psa_mac_verify_finish(ptr noundef nonnull %4, ptr noundef nonnull %i.cl, i64 noundef %i.cm) #19 ; 2 uses
  %.not271 = icmp ne i32 %i.cn, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.0245 = phi i32 [ %i.cf, %bb.s ], [ %i.ch, %bb.t ], [ %i.cj, %bb.u ], [ %i.cn, %bb.v ]
  %.1220 = phi i1 [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ %.not271, %bb.v ]
  %i.co = call i32 @psa_status_to_mbedtls(i32 noundef %.0245, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19 ; 2 uses
  %i.cp = call i32 @psa_mac_abort(ptr noundef nonnull %4) #19 ; 2 uses
  %i.cq = icmp eq i32 %i.co, 0
  %i.cr = icmp ne i32 %i.cp, 0
  %or.cond6 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond6, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = call i32 @psa_status_to_mbedtls(i32 noundef %i.cp, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0217 = phi i32 [ %i.cs, %bb.x ], [ %i.co, %bb.w ] ; 2 uses
  %.not272 = icmp eq i32 %.0217, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not272, label %._crit_edge334, label %.thread300

._crit_edge334:                                   ; preds = %bb.y
  %.pre = load i64, ptr %i.s, align 8, !tbaa !40
  %.pre335 = load i64, ptr %i.bm, align 8, !tbaa !46
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge334, %bb.r
  %i.ct = phi i64 [ %.pre335, %._crit_edge334 ], [ %i.bn, %bb.r ] ; 5 uses
  %i.cu = phi i64 [ %.pre, %._crit_edge334 ], [ %i.bo, %bb.r ]
  %.2221 = phi i1 [ %.1220, %._crit_edge334 ], [ true, %bb.r ] ; 2 uses
  %i.cv = urem i64 %i.cu, %i.ct
  %.not273 = icmp eq i64 %i.cv, 0
  br i1 %.not273, label %bb.aa, label %.thread300

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr nonnull align 1 %i.v, i64 %i.ct, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ct ; 9 uses
  %i.cy = load i64, ptr %i.o, align 8, !tbaa !39
  %i.cz = add i64 %i.cy, %i.ct
  store i64 %i.cz, ptr %i.o, align 8, !tbaa !39
  %i.da = load i64, ptr %i.s, align 8, !tbaa !40
  %i.db = sub i64 %i.da, %i.ct
  store i64 %i.db, ptr %i.s, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51
  %i.dg = call i32 @psa_cipher_decrypt_setup(ptr noundef nonnull %3, i32 noundef %i.dd, i32 noundef %i.df) #19 ; 2 uses
  %.not274 = icmp eq i32 %i.dg, 0
  br i1 %.not274, label %bb.ab, label %.thread300.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.di = call i32 @psa_cipher_set_iv(ptr noundef nonnull %3, ptr noundef nonnull %i.cw, i64 noundef %i.dh) #19 ; 2 uses
  %.not275 = icmp eq i32 %i.di, 0
  br i1 %.not275, label %bb.ac, label %.thread300.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load i64, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.dk = call i32 @psa_cipher_update(ptr noundef nonnull %3, ptr noundef nonnull %i.cx, i64 noundef %i.dj, ptr noundef nonnull %i.cx, i64 noundef %i.dj, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not276 = icmp eq i32 %i.dk, 0
  br i1 %.not276, label %bb.ad, label %.thread300.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dl
  %i.dn = load i64, ptr %i.s, align 8, !tbaa !40
  %i.do = sub i64 %i.dn, %i.dl
  %i.dp = call i32 @psa_cipher_finish(ptr noundef nonnull %3, ptr noundef nonnull %i.dm, i64 noundef %i.do, ptr noundef nonnull %i.e) #19 ; 2 uses
  %.not277 = icmp eq i32 %i.dp, 0
  br i1 %.not277, label %bb.ae, label %.thread300.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !52
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !52
  %i.ds = add i64 %i.dr, %i.dq                    ; 5 uses
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !52
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !40
  %.not278 = icmp eq i64 %i.dt, %i.ds
  br i1 %.not278, label %bb.af, label %.thread300

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %i.cx, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !34
  %i.dx = zext i8 %i.dw to i64                    ; 3 uses
  br i1 %.2221, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = add nuw nsw i64 %i.dx, 1
  %i.dz = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, i64 %i.dy) #19, !srcloc !139
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ea = load i64, ptr %i.br, align 8, !tbaa !53
  %i.eb = add nuw nsw i64 %i.dx, 1
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, i64 %i.ec) #19, !srcloc !139
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn320 = phi { i64, i64, i64 } [ %i.dz, %bb.ag ], [ %i.ed, %bb.ah ]
  %.pn.in = extractvalue { i64, i64, i64 } %.pn320, 1 ; 2 uses
  %.pn = xor i64 %.pn.in, -1
  %.0226 = and i64 %.pn, %i.dx                    ; 2 uses
  %i.ee = add nuw nsw i64 %.0226, 1               ; 3 uses
  %i.ef = load i64, ptr %i.s, align 8, !tbaa !40  ; 3 uses
  %i.eg = sub i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.usub.sat.i64(i64 %i.ef, i64 256) ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  br i1 %i.ei, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai, %.lr.ph
  %.0218328 = phi i64 [ %i.ex, %.lr.ph ], [ %i.eh, %bb.ai ] ; 3 uses
  %.0239327 = phi i64 [ %i.ew, %.lr.ph ], [ 0, %bb.ai ]
  %i.ej = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.0218328, i64 %i.eg) #19, !srcloc !139
  %i.ek = extractvalue { i64, i64, i64 } %i.ej, 1
  %i.el = and i64 %i.ek, 1
  %i.em = xor i64 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.0218328
  %i.eo = load volatile i8, ptr %i.en, align 1, !tbaa !34
  %i.ep = zext i8 %i.eo to i64
  %i.eq = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ep) #19, !srcloc !44
  %i.er = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0226) #19, !srcloc !44
  %i.es = xor i64 %i.er, %i.eq
  %i.et = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.es) #19, !srcloc !56
  %i.eu = xor i64 %i.et, -1
  %i.ev = and i64 %i.em, %i.eu
  %i.ew = add i64 %i.ev, %.0239327                ; 2 uses
  %i.ex = add nuw i64 %.0218328, 1                ; 2 uses
  %i.ey = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ez = icmp ult i64 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph, label %._crit_edge, !llvm.loop !136

.thread300.sink.split:                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink = phi i32 [ %i.dk, %bb.ac ], [ %i.dg, %bb.aa ], [ %i.di, %bb.ab ], [ %i.dp, %bb.ad ]
  %i.fa = call i32 @psa_status_to_mbedtls(i32 noundef %.sink, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %.thread300

.thread300:                                       ; preds = %.thread300.sink.split, %bb.y, %bb.q, %bb.z, %bb.p, %bb.ae
  %.3.ph = phi i32 [ -27648, %bb.ae ], [ -29056, %bb.p ], [ -29056, %bb.z ], [ -29056, %bb.q ], [ %.0217, %bb.y ], [ %i.fa, %.thread300.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %ssl_parse_inner_plaintext.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.ai
  %.0239.lcssa = phi i64 [ 0, %bb.ai ], [ %i.ew, %.lr.ph ]
  %i.fb = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0239.lcssa) #19, !srcloc !44
  %i.fc = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ee) #19, !srcloc !44
  %i.fd = xor i64 %i.fc, %i.fb
  %i.fe = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.fd) #19, !srcloc !56
  %i.ff = or i64 %i.fe, %.pn.in
  %i.fg = xor i64 %i.ff, -1
  %i.fh = and i64 %i.h, %i.fg                     ; 4 uses
  %i.fi = and i64 %i.fh, %i.ee                    ; 2 uses
  %i.fj = load i64, ptr %i.s, align 8, !tbaa !40
  %i.fk = sub i64 %i.fj, %i.fi                    ; 2 uses
  store i64 %i.fk, ptr %i.s, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br i1 %.2221, label %bb.aj, label %.thread307

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.fl = load i64, ptr %i.br, align 8, !tbaa !53
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  store i64 %i.fm, ptr %i.s, align 8, !tbaa !40
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !48
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.fo, i64 noundef %i.fq)
  %i.fr = add i64 %i.fm, %i.fi                    ; 3 uses
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %i.fr, i64 256) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !55
  %i.fx = load i64, ptr %i.c, align 8, !tbaa !52
  %i.fy = call fastcc i32 @mbedtls_ct_hmac(i32 noundef %i.fu, i32 noundef %i.fw, ptr noundef %i.b, i64 noundef %i.fx, ptr noundef %i.cx, i64 noundef %i.fm, i64 noundef %i.fs, i64 noundef %i.fr, ptr noundef %i.f) ; 2 uses
  %.not282 = icmp eq i32 %i.fy, 0                 ; 2 uses
  br i1 %.not282, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fz = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ga = load i64, ptr %i.br, align 8, !tbaa !53
  call void @mbedtls_ct_memcpy_offset(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cx, i64 noundef %i.fz, i64 noundef %i.fs, i64 noundef %i.fr, i64 noundef %i.ga) #19
  %i.gb = load i64, ptr %i.br, align 8, !tbaa !53
  %i.gc = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.gb) #19
  %.not283 = icmp eq i32 %i.gc, 0
  br i1 %.not283, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !44
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4233 = phi i64 [ %i.fh, %bb.aj ], [ %i.gd, %bb.al ], [ %i.fh, %bb.ak ]
  %.5224 = phi i32 [ 0, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %i.ge = load i64, ptr %i.br, align 8, !tbaa !53
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef %i.ge) #19
  %i.gf = load i64, ptr %i.br, align 8, !tbaa !53
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.f, i64 noundef %i.gf) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %.not282, label %.thread307, label %ssl_parse_inner_plaintext.exit

.thread307:                                       ; preds = %bb.n, %bb.am, %._crit_edge
  %.3238313 = phi ptr [ %i.cx, %bb.am ], [ %i.cx, %._crit_edge ], [ %.0235, %bb.n ] ; 4 uses
  %.5234 = phi i64 [ %.4233, %bb.am ], [ %i.fh, %._crit_edge ], [ %i.h, %bb.n ]
  %.6225 = phi i32 [ %.5224, %bb.am ], [ 1, %._crit_edge ], [ 1, %bb.n ]
  %i.gg = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !44
  %i.gh = icmp eq i64 %.5234, %i.gg
  br i1 %i.gh, label %ssl_parse_inner_plaintext.exit, label %bb.an

bb.an:                                            ; preds = %.thread307
  %.not284 = icmp eq i32 %.6225, 0
  br i1 %.not284, label %ssl_parse_inner_plaintext.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !49
  %i.gk = icmp eq i32 %i.gj, 772
  br i1 %i.gk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = load i64, ptr %i.s, align 8, !tbaa !52  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %ssl_parse_inner_plaintext.exit, label %.lr.ph369

bb.aq:                                            ; preds = %.lr.ph369
  %i.go = icmp eq i64 %i.gp, 0
  br i1 %i.go, label %ssl_parse_inner_plaintext.exit, label %.lr.ph369, !llvm.loop !137

.lr.ph369:                                        ; preds = %bb.ap, %bb.aq
  %.0.i367 = phi i64 [ %i.gp, %bb.aq ], [ %i.gm, %bb.ap ]
  %i.gp = add i64 %.0.i367, -1                    ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !34
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.aq, label %ssl_parse_inner_plaintext.exit.thread, !llvm.loop !137

ssl_parse_inner_plaintext.exit.thread:            ; preds = %.lr.ph369
  %i.gt = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.gp
  store i64 %i.gp, ptr %i.s, align 8, !tbaa !52
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !34
  store i8 %i.gu, ptr %i.gl, align 8, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %ssl_parse_inner_plaintext.exit.thread, %bb.ao
  %i.gv = load i8, ptr %i.x, align 8, !tbaa !37
  %.not286 = icmp eq i8 %i.gv, 0
  br i1 %.not286, label %ssl_parse_inner_plaintext.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gx = load i64, ptr %i.s, align 8, !tbaa !52  ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %ssl_parse_inner_plaintext.exit, label %.lr.ph372

bb.at:                                            ; preds = %.lr.ph372
  %i.gz = icmp eq i64 %i.ha, 0
  br i1 %i.gz, label %ssl_parse_inner_plaintext.exit, label %.lr.ph372, !llvm.loop !137

.lr.ph372:                                        ; preds = %bb.as, %bb.at
  %.0.i292370 = phi i64 [ %i.ha, %bb.at ], [ %i.gx, %bb.as ]
  %i.ha = add i64 %.0.i292370, -1                 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !34
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.at, label %ssl_parse_inner_plaintext.exit294.thread, !llvm.loop !137

ssl_parse_inner_plaintext.exit294.thread:         ; preds = %.lr.ph372
  %i.he = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.ha
  store i64 %i.ha, ptr %i.s, align 8, !tbaa !52
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !34
  store i8 %i.hf, ptr %i.gw, align 8, !tbaa !34
  br label %ssl_parse_inner_plaintext.exit

ssl_parse_inner_plaintext.exit:                   ; preds = %bb.aq, %bb.at, %bb.ap, %bb.as, %bb.ar, %ssl_parse_inner_plaintext.exit294.thread, %.thread300, %.thread, %bb.an, %.thread307, %bb.o, %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.n, %bb.am
  %.6 = phi i32 [ -24576, %bb.e ], [ -27648, %bb.d ], [ -27648, %bb.o ], [ -29056, %.thread307 ], [ -27648, %bb.an ], [ %.0.ph, %.thread ], [ 0, %bb.ar ], [ %i.fy, %bb.am ], [ -27648, %bb.n ], [ %.3.ph, %.thread300 ], [ -27648, %bb.a ], [ -27648, %bb.b ], [ -27648, %bb.c ], [ -24576, %bb.f ], [ -29184, %bb.as ], [ 0, %ssl_parse_inner_plaintext.exit294.thread ], [ -29184, %bb.ap ], [ -29184, %bb.at ], [ -29184, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_encrypt_buf(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [55 x i8], align 16               ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca [48 x i8], align 16               ; 5 uses
  %3 = alloca %struct.psa_mac_operation_s, align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [12 x i8], align 1                ; 7 uses
  %i.f = alloca i64, align 8                      ; 9 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %4 = alloca %struct.psa_cipher_operation_s, align 8 ; 10 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %5 = alloca %struct.psa_mac_operation_s, align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.j = icmp eq ptr %1, null
  %i.k = icmp eq ptr %2, null
  %or.cond290 = or i1 %i.j, %i.k
  br i1 %or.cond290, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw i64 %i.p, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 25 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !40
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !37
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @mbedtls_ssl_get_mode_from_transform(ptr noundef nonnull %1) #19 ; 3 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !39  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 20 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !42  ; 3 uses
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !40  ; 6 uses
  %i.af = add i64 %i.ae, %i.ab                    ; 3 uses
  %i.ag = sub i64 %i.ad, %i.af                    ; 2 uses
  %i.ah = icmp ugt i64 %i.ae, 16384
  br i1 %i.ah, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !49
  %i.ak = icmp eq i32 %i.aj, 772
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.ae, 15
  %i.am = xor i64 %i.al, 15                       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = icmp eq i64 %i.ad, %i.af
  br i1 %i.ao, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %i.an, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !34
  %i.ar = add i64 %i.ag, -1
  %i.as = icmp ult i64 %i.ar, %i.am
  br i1 %i.as, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 range(i64 0, 16) %i.am, i1 false)
  %i.av = add nuw nsw i64 %i.am, %i.at            ; 2 uses
  store i64 %i.av, ptr %i.u, align 8, !tbaa !52
  store i8 23, ptr %i.an, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.aw = phi i64 [ %i.av, %bb.j ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !58  ; 3 uses
  store i8 %i.ay, ptr %i.x, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.bb = zext i8 %i.ay to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 2 %i.ba, i64 %i.bb, i1 false)
  %.not265 = icmp eq i8 %i.ay, 0
  br i1 %.not265, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.aw, 15
  %i.bd = xor i64 %i.bc, 15                       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bf = icmp eq i64 %i.ad, %i.af
  br i1 %i.bf, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i8, ptr %i.be, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !34
  %i.bi = add i64 %i.ag, -1
  %i.bj = icmp ult i64 %i.bi, %i.bd
  br i1 %i.bj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 range(i64 0, 16) %i.bd, i1 false)
  %i.bm = add nuw nsw i64 %i.bd, %i.bk            ; 2 uses
  store i64 %i.bm, ptr %i.u, align 8, !tbaa !52
  store i8 25, ptr %i.be, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@ssl_buffer_make_space:bb.a
  %i.aq = sub i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %.val13.3, i64 1248
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.as, i64 noundef %i.ao) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.pre21 = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre27 = sub i64 32768, %.pre21
  %i.at = icmp ugt i64 %1, %.pre27
  %i.au = sext i1 %i.at to i32
  br label %.loopexit

bb.e:                                             ; preds = %ssl_free_buffered_record.exit
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val13, i64 1312 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = and i8 %i.aw, 1
  %.not.i14 = icmp eq i8 %i.ax, 0
  br i1 %.not.i14, label %.critedge33, label %ssl_buffering_free_slot.exit

ssl_buffering_free_slot.exit:                     ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.val13, i64 1224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val13, i64 1328
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !115 ; 2 uses
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !113
  %i.bc = sub i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.val13, i64 1320
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116
  tail call void @mbedtls_zeroize_and_free(ptr noundef %i.be, i64 noundef %i.ba) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %.pre = load i64, ptr %i.k, align 8, !tbaa !113
  %.pre22 = sub i64 32768, %.pre
  %i.bf = icmp ugt i64 %1, %.pre22
  br i1 %i.bf, label %.critedge33, label %.loopexit

.loopexit:                                        ; preds = %.critedge32, %bb.d, %ssl_buffering_free_slot.exit, %ssl_buffering_free_slot.exit.1, %ssl_buffering_free_slot.exit.2, %ssl_free_buffered_record.exit
  %.010 = phi i32 [ 0, %ssl_free_buffered_record.exit ], [ 0, %ssl_buffering_free_slot.exit ], [ 0, %ssl_buffering_free_slot.exit.2 ], [ 0, %ssl_buffering_free_slot.exit.1 ], [ -1, %.critedge32 ], [ %i.au, %bb.d ]
  ret i32 %.010
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ssl_bitmask_set(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 16777216) %1, i64 noundef range(i64 0, 16777216) %2) unnamed_addr #15 {
bb.a:
  %i.a = trunc nuw nsw i64 %1 to i32
  %i.b = and i32 %i.a, 7                          ; 15 uses
  %i.c = sub nuw nsw i32 8, %i.b                  ; 8 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %1, 3                           ; 2 uses
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  %.not44 = icmp samesign ugt i64 %2, %i.e
  br i1 %.not44, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not4651 = icmp eq i64 %2, 0
  br i1 %.not4651, label %.loopexit50.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %.promoted = load i8, ptr %i.f, align 1, !tbaa !34
  %i.g = trunc nuw nsw i64 %2 to i32
  %i.h = sub nsw i32 %i.c, %i.g
  %i.i = shl nuw nsw i32 1, %i.h
  %i.j = trunc i32 %i.i to i8
  %i.k = or i8 %.promoted, %i.j                   ; 2 uses
  %i.l = add nsw i64 %2, -1                       ; 2 uses
  %.not46 = icmp eq i64 %i.l, 0
  br i1 %.not46, label %..loopexit50_crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = trunc nsw i64 %i.l to i32
  %i.n = sub nsw i32 %i.c, %i.m
  %i.o = shl nuw nsw i32 1, %i.n
  %i.p = trunc i32 %i.o to i8
  %i.q = or i8 %i.k, %i.p                         ; 2 uses
  %i.r = add nsw i64 %2, -2                       ; 2 uses
  %.not46.1 = icmp eq i64 %i.r, 0
  br i1 %.not46.1, label %..loopexit50_crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = trunc nsw i64 %i.r to i32
  %i.t = sub nsw i32 %i.c, %i.s
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = trunc i32 %i.u to i8
  %i.w = or i8 %i.q, %i.v                         ; 2 uses
  %i.x = add nsw i64 %2, -3                       ; 2 uses
  %.not46.2 = icmp eq i64 %i.x, 0
  br i1 %.not46.2, label %..loopexit50_crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = trunc nsw i64 %i.x to i32
  %i.z = sub nsw i32 %i.c, %i.y
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = or i8 %i.w, %i.ab                       ; 2 uses
  %i.ad = add nsw i64 %2, -4                      ; 2 uses
  %.not46.3 = icmp eq i64 %i.ad, 0
  br i1 %.not46.3, label %..loopexit50_crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = trunc nsw i64 %i.ad to i32
  %i.af = sub nsw i32 %i.c, %i.ae
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = or i8 %i.ac, %i.ah                      ; 2 uses
  %i.aj = add nsw i64 %2, -5                      ; 2 uses
  %.not46.4 = icmp eq i64 %i.aj, 0
  br i1 %.not46.4, label %..loopexit50_crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = trunc nsw i64 %i.aj to i32
  %i.al = sub nsw i32 %i.c, %i.ak
  %i.am = shl nuw nsw i32 1, %i.al
  %i.an = trunc i32 %i.am to i8
  %i.ao = or i8 %i.ai, %i.an                      ; 2 uses
  %i.ap = add nsw i64 %2, -6                      ; 2 uses
  %.not46.5 = icmp eq i64 %i.ap, 0
  br i1 %.not46.5, label %..loopexit50_crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nsw i64 %i.ap to i32
  %i.ar = sub nsw i32 %i.c, %i.aq
  %i.as = shl nuw nsw i32 1, %i.ar
  %i.at = trunc i32 %i.as to i8
  %i.au = or i8 %i.ao, %i.at
  br label %..loopexit50_crit_edge

bb.i:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %.promoted53 = load i8, ptr %i.av, align 1, !tbaa !34
  %i.aw = lshr exact i32 128, %i.b
  %i.ax = trunc nuw nsw i32 %i.aw to i8
  %i.ay = or i8 %.promoted53, %i.ax               ; 2 uses
  %.not45 = icmp eq i32 %i.b, 7
  br i1 %.not45, label %.loopexit50, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = sub nsw i32 6, %i.b
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = or i8 %i.ay, %i.bb                      ; 2 uses
  %.not45.1 = icmp eq i32 %i.b, 6
  br i1 %.not45.1, label %.loopexit50, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = sub nsw i32 5, %i.b
  %i.be = shl nuw nsw i32 1, %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = or i8 %i.bc, %i.bf                      ; 2 uses
  %.not45.2 = icmp eq i32 %i.b, 5
  br i1 %.not45.2, label %.loopexit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nsw i32 4, %i.b
  %i.bi = shl nuw nsw i32 1, %i.bh
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = or i8 %i.bg, %i.bj                      ; 2 uses
  %.not45.3 = icmp eq i32 %i.b, 4
  br i1 %.not45.3, label %.loopexit50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = sub nsw i32 3, %i.b
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = or i8 %i.bk, %i.bn                      ; 2 uses
  %.not45.4 = icmp eq i32 %i.b, 3
  br i1 %.not45.4, label %.loopexit50, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = sub nsw i32 2, %i.b
  %i.bq = shl nuw nsw i32 1, %i.bp
  %i.br = trunc i32 %i.bq to i8
  %i.bs = or i8 %i.bo, %i.br                      ; 2 uses
  %.not45.5 = icmp eq i32 %i.b, 2
  br i1 %.not45.5, label %.loopexit50, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = sub nsw i32 1, %i.b
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = or i8 %i.bs, %i.bv
  br label %.loopexit50

..loopexit50_crit_edge:                           ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph
  %.lcssa71 = phi i8 [ %i.k, %.lr.ph ], [ %i.q, %bb.c ], [ %i.w, %bb.d ], [ %i.ac, %bb.e ], [ %i.ai, %bb.f ], [ %i.ao, %bb.g ], [ %i.au, %bb.h ]
  store i8 %.lcssa71, ptr %i.f, align 1, !tbaa !34
  br label %.loopexit50.thread

.loopexit50:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.lcssa70 = phi i8 [ %i.ay, %bb.i ], [ %i.bc, %bb.j ], [ %i.bg, %bb.k ], [ %i.bk, %bb.l ], [ %i.bo, %bb.m ], [ %i.bs, %bb.n ], [ %i.bw, %bb.o ]
  %i.bx = add nuw nsw i64 %1, %i.e
  %i.by = sub nuw nsw i64 %2, %i.e
  store i8 %.lcssa70, ptr %i.av, align 1, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %.loopexit50, %bb.a
  %.138 = phi i64 [ %i.bx, %.loopexit50 ], [ %1, %bb.a ] ; 2 uses
  %.2 = phi i64 [ %i.by, %.loopexit50 ], [ %2, %bb.a ] ; 4 uses
  %i.bz = trunc nuw nsw i64 %.2 to i32
  %i.ca = and i32 %i.bz, 7                        ; 14 uses
  %.not47 = icmp eq i32 %i.ca, 0
  br i1 %.not47, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = add nuw nsw i64 %.2, %.138
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc ; 2 uses
  %.promoted56 = load i8, ptr %i.cd, align 1, !tbaa !34
  %i.ce = lshr exact i32 256, %i.ca
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = or i8 %.promoted56, %i.cf               ; 2 uses
  %.not48 = icmp eq i32 %i.ca, 1
  br i1 %.not48, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = lshr exact i32 512, %i.ca
  %i.ci = trunc nuw i32 %i.ch to i8
  %i.cj = or i8 %i.cg, %i.ci                      ; 2 uses
  %.not48.1 = icmp eq i32 %i.ca, 2
  br i1 %.not48.1, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = lshr exact i32 1024, %i.ca
  %i.cl = trunc nuw i32 %i.ck to i8
  %i.cm = or i8 %i.cj, %i.cl                      ; 2 uses
  %.not48.2 = icmp eq i32 %i.ca, 3
  br i1 %.not48.2, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = lshr exact i32 2048, %i.ca
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = or i8 %i.cm, %i.co                      ; 2 uses
  %.not48.3 = icmp eq i32 %i.ca, 4
  br i1 %.not48.3, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = lshr exact i32 4096, %i.ca
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = or i8 %i.cp, %i.cr                      ; 2 uses
  %.not48.4 = icmp eq i32 %i.ca, 5
  br i1 %.not48.4, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = lshr exact i32 8192, %i.ca
  %i.cu = trunc nuw i32 %i.ct to i8
  %i.cv = or i8 %i.cs, %i.cu                      ; 2 uses
  %.not48.5 = icmp eq i32 %i.ca, 6
  br i1 %.not48.5, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = lshr exact i32 16384, %i.ca
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = or i8 %i.cv, %i.cx
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.lcssa = phi i8 [ %i.cg, %bb.q ], [ %i.cj, %bb.r ], [ %i.cm, %bb.s ], [ %i.cp, %bb.t ], [ %i.cs, %bb.u ], [ %i.cv, %bb.v ], [ %i.cy, %bb.w ]
  %3 = and i64 %.2, 16777208
  store i8 %.lcssa, ptr %i.cd, align 1, !tbaa !34
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.p
  %.3 = phi i64 [ %.2, %bb.p ], [ %3, %.loopexit ]
  %i.cz = lshr i64 %.138, 3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  %i.db = lshr i64 %.3, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.da, i8 -1, i64 %i.db, i1 false)
  br label %.loopexit50.thread

.loopexit50.thread:                               ; preds = %..loopexit50_crit_edge, %.preheader, %bb.x
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 1) i32 @ssl_bitmask_check(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #16 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 3 uses
  %.not21 = icmp eq i64 %i.a, 0
  br i1 %.not21, label %.preheader, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !184

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.c = and i64 %1, 7                            ; 7 uses
  %.not22 = icmp eq i64 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !34    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 6 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  %i.i = load i8, ptr %i.h, align 1, !tbaa !34
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %.lr.ph17
  %exitcond24.not = icmp eq i64 %i.c, 1
  br i1 %exitcond24.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.f, 64
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond24.not.1 = icmp eq i64 %i.c, 2
  br i1 %exitcond24.not.1, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond24.not.2 = icmp eq i64 %i.c, 3
  br i1 %exitcond24.not.2, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.f, 16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %exitcond24.not.3 = icmp eq i64 %i.c, 4
  br i1 %exitcond24.not.3, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = and i32 %i.f, 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exitcond24.not.4 = icmp eq i64 %i.c, 5
  br i1 %exitcond24.not.4, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = and i32 %i.f, 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %exitcond24.not.5 = icmp eq i64 %i.c, 6
  br i1 %exitcond24.not.5, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = and i32 %i.f, 2
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, i32 -1, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph17, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.preheader
  %.011 = phi i32 [ 0, %.preheader ], [ -1, %.lr.ph ], [ -1, %.lr.ph17 ], [ 0, %bb.c ], [ -1, %bb.d ], [ 0, %bb.e ], [ -1, %bb.f ], [ 0, %bb.g ], [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.j ], [ 0, %bb.k ], [ -1, %bb.l ], [ 0, %bb.m ], [ %spec.select, %bb.n ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ssl_handle_possible_reconnect(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load i64, ptr %i.k, align 8, !tbaa !189  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i64, ptr %i.o, align 8, !tbaa !63   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.s = icmp ult i64 %i.p, 61
  br i1 %i.s, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %.0.copyload.i.i = load i16, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 19
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !34
  %i.ab = icmp ne i8 %i.aa, 22
  %i.ac = icmp ne i16 %.0.copyload.i.i, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %i.ad = or i8 %i.x, %i.v
  %i.ae = or i8 %i.ad, %i.z
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.af
  br i1 %or.cond3.i, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 61               ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, %i.p
  br i1 %i.ak, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = add nuw nsw i64 %i.aj, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.p
  br i1 %i.aq, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !190
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 61
  %i.au = tail call i32 %i.g(ptr noundef %i.as, ptr noundef nonnull %i.at, i64 noundef %i.ao, ptr noundef %i.j, i64 noundef %i.l) #19, !inline_history !185
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.r, ptr noundef nonnull align 1 dereferenceable(25) %i.n, i64 25, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 13
  store i8 3, ptr %i.aw, align 1, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 25
  store i8 -2, ptr %i.ax, align 1, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 26
  store i8 -1, ptr %i.ay, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store ptr %i.az, ptr %i.a, align 8, !tbaa !117
  %i.ba = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !186
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16384
  %i.bg = call i32 %i.bc(ptr noundef %i.be, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bf, ptr noundef %i.j, i64 noundef %i.l) #19, !inline_history !185
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.i, label %mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread

mbedtls_ssl_check_dtls_clihlo_cookie.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h
  %.0.i.ph = phi i32 [ -27648, %bb.h ], [ -29440, %bb.f ], [ -29440, %bb.e ], [ -29440, %bb.d ], [ -29440, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !117
end_hunk_1
