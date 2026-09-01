Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_msg?download=true
inline.NumInlined: 166
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mbedtls_ssl_decrypt_buf:bb.a
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
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !53
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
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !47 ; 3 uses
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !40  ; 4 uses
  %i.bp = shl i64 %i.bn, 1
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %.thread300, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !54 ; 2 uses
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
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !49
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.by, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !55
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !56
  %i.cf = call i32 @psa_mac_verify_setup(ptr noundef nonnull %4, i32 noundef %i.cc, i32 noundef %i.ce) #19 ; 2 uses
  %.not268 = icmp eq i32 %i.cf, 0
  br i1 %.not268, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !53
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
  %i.cm = load i64, ptr %i.br, align 8, !tbaa !54
  %i.cn = call i32 @psa_mac_verify_finish(ptr noundef nonnull %4, ptr noundef nonnull %i.cl, i64 noundef %i.cm) #19 ; 2 uses
  %.not271 = icmp eq i32 %i.cn, 0
  %spec.select289 = zext i1 %.not271 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.0245 = phi i32 [ %i.cf, %bb.s ], [ %i.ch, %bb.t ], [ %i.cj, %bb.u ], [ %i.cn, %bb.v ]
  %.1220 = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ %spec.select289, %bb.v ]
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
  %.pre335 = load i64, ptr %i.bm, align 8, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge334, %bb.r
  %i.ct = phi i64 [ %.pre335, %._crit_edge334 ], [ %i.bn, %bb.r ] ; 5 uses
  %i.cu = phi i64 [ %.pre, %._crit_edge334 ], [ %i.bo, %bb.r ]
  %.2221 = phi i32 [ %.1220, %._crit_edge334 ], [ 0, %bb.r ] ; 2 uses
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
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.df = load i32, ptr %i.de, align 4, !tbaa !52
  %i.dg = call i32 @psa_cipher_decrypt_setup(ptr noundef nonnull %3, i32 noundef %i.dd, i32 noundef %i.df) #19 ; 2 uses
  %.not274 = icmp eq i32 %i.dg, 0
  br i1 %.not274, label %bb.ab, label %.thread300.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !47
  %i.di = call i32 @psa_cipher_set_iv(ptr noundef nonnull %3, ptr noundef nonnull %i.cw, i64 noundef %i.dh) #19 ; 2 uses
  %.not275 = icmp eq i32 %i.di, 0
  br i1 %.not275, label %bb.ac, label %.thread300.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load i64, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.dk = call i32 @psa_cipher_update(ptr noundef nonnull %3, ptr noundef nonnull %i.cx, i64 noundef %i.dj, ptr noundef nonnull %i.cx, i64 noundef %i.dj, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not276 = icmp eq i32 %i.dk, 0
  br i1 %.not276, label %bb.ad, label %.thread300.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dl
  %i.dn = load i64, ptr %i.s, align 8, !tbaa !40
  %i.do = sub i64 %i.dn, %i.dl
  %i.dp = call i32 @psa_cipher_finish(ptr noundef nonnull %3, ptr noundef nonnull %i.dm, i64 noundef %i.do, ptr noundef nonnull %i.e) #19 ; 2 uses
  %.not277 = icmp eq i32 %i.dp, 0
  br i1 %.not277, label %bb.ae, label %.thread300.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !53
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !53
  %i.ds = add i64 %i.dr, %i.dq                    ; 5 uses
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !53
  %i.dt = load i64, ptr %i.s, align 8, !tbaa !40
  %.not278 = icmp eq i64 %i.dt, %i.ds
  br i1 %.not278, label %bb.af, label %.thread300

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %i.cx, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !32
  %i.dx = zext i8 %i.dw to i64                    ; 3 uses
  %i.dy = icmp eq i32 %.2221, 1
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dz = add nuw nsw i64 %i.dx, 1
  %i.ea = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, i64 %i.dz) #19, !srcloc !57
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eb = load i64, ptr %i.br, align 8, !tbaa !54
  %i.ec = add nuw nsw i64 %i.dx, 1
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.ds, i64 %i.ed) #19, !srcloc !57
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn320 = phi { i64, i64, i64 } [ %i.ea, %bb.ag ], [ %i.ee, %bb.ah ]
  %.pn.in = extractvalue { i64, i64, i64 } %.pn320, 1 ; 2 uses
  %.pn = xor i64 %.pn.in, -1
  %.0226 = and i64 %.pn, %i.dx                    ; 2 uses
  %i.ef = add nuw nsw i64 %.0226, 1               ; 3 uses
  %i.eg = load i64, ptr %i.s, align 8, !tbaa !40  ; 3 uses
  %i.eh = sub i64 %i.eg, %i.ef
  %.not331 = icmp eq i64 %i.eg, 0
  br i1 %.not331, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ai
  %5 = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 256)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0218328 = phi i64 [ %i.ew, %.lr.ph ], [ %5, %.lr.ph.preheader ] ; 3 uses
  %.0239327 = phi i64 [ %i.ev, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ei = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.0218328, i64 %i.eh) #19, !srcloc !57
  %i.ej = extractvalue { i64, i64, i64 } %i.ei, 1
  %i.ek = and i64 %i.ej, 1
  %i.el = xor i64 %i.ek, 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.0218328
  %i.en = load volatile i8, ptr %i.em, align 1, !tbaa !32
  %i.eo = zext i8 %i.en to i64
  %i.ep = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.eo) #19, !srcloc !44
  %i.eq = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0226) #19, !srcloc !44
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.er) #19, !srcloc !58
  %i.et = xor i64 %i.es, -1
  %i.eu = and i64 %i.el, %i.et
  %i.ev = add i64 %i.eu, %.0239327                ; 2 uses
  %i.ew = add nuw i64 %.0218328, 1                ; 2 uses
  %i.ex = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ey = icmp ult i64 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %._crit_edge, !llvm.loop !59

.thread300.sink.split:                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink = phi i32 [ %i.dk, %bb.ac ], [ %i.dg, %bb.aa ], [ %i.di, %bb.ab ], [ %i.dp, %bb.ad ]
  %i.ez = call i32 @psa_status_to_mbedtls(i32 noundef %.sink, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #19
  br label %.thread300

.thread300:                                       ; preds = %.thread300.sink.split, %bb.y, %bb.q, %bb.z, %bb.p, %bb.ae
  %.3.ph = phi i32 [ -27648, %bb.ae ], [ -29056, %bb.p ], [ -29056, %bb.z ], [ -29056, %bb.q ], [ %.0217, %bb.y ], [ %i.ez, %.thread300.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %ssl_parse_inner_plaintext.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.ai
  %.0239.lcssa = phi i64 [ 0, %bb.ai ], [ %i.ev, %.lr.ph ]
  %i.fa = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0239.lcssa) #19, !srcloc !44
  %i.fb = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ef) #19, !srcloc !44
  %i.fc = xor i64 %i.fb, %i.fa
  %i.fd = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.fc) #19, !srcloc !58
  %i.fe = or i64 %i.fd, %.pn.in
  %i.ff = xor i64 %i.fe, -1
  %i.fg = and i64 %i.h, %i.ff                     ; 4 uses
  %i.fh = and i64 %i.fg, %i.ef                    ; 2 uses
  %i.fi = load i64, ptr %i.s, align 8, !tbaa !40
  %i.fj = sub i64 %i.fi, %i.fh                    ; 2 uses
  store i64 %i.fj, ptr %i.s, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.fk = icmp eq i32 %.2221, 0
  br i1 %i.fk, label %bb.aj, label %.thread307

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.fl = load i64, ptr %i.br, align 8, !tbaa !54
  %i.fm = sub i64 %i.fj, %i.fl                    ; 3 uses
  store i64 %i.fm, ptr %i.s, align 8, !tbaa !40
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !50
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !49
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.fo, i64 noundef %i.fq)
  %i.fr = add i64 %i.fm, %i.fh                    ; 3 uses
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %i.fr, i64 256) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !55
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !56
  %i.fx = load i64, ptr %i.c, align 8, !tbaa !53
  %i.fy = call fastcc i32 @mbedtls_ct_hmac(i32 noundef %i.fu, i32 noundef %i.fw, ptr noundef %i.b, i64 noundef %i.fx, ptr noundef %i.cx, i64 noundef %i.fm, i64 noundef %i.fs, i64 noundef %i.fr, ptr noundef %i.f) ; 2 uses
  %.not282 = icmp eq i32 %i.fy, 0                 ; 2 uses
  br i1 %.not282, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fz = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ga = load i64, ptr %i.br, align 8, !tbaa !54
  call void @mbedtls_ct_memcpy_offset(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cx, i64 noundef %i.fz, i64 noundef %i.fs, i64 noundef %i.fr, i64 noundef %i.ga) #19
  %i.gb = load i64, ptr %i.br, align 8, !tbaa !54
  %i.gc = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.gb) #19
  %.not283 = icmp eq i32 %i.gc, 0
  br i1 %.not283, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !44
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4233 = phi i64 [ %i.fg, %bb.aj ], [ %i.gd, %bb.al ], [ %i.fg, %bb.ak ]
  %.5224 = phi i32 [ 0, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %i.ge = load i64, ptr %i.br, align 8, !tbaa !54
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef %i.ge) #19
  %i.gf = load i64, ptr %i.br, align 8, !tbaa !54
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.f, i64 noundef %i.gf) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %.not282, label %.thread307, label %ssl_parse_inner_plaintext.exit

.thread307:                                       ; preds = %bb.n, %bb.am, %._crit_edge
  %.3238313 = phi ptr [ %i.cx, %bb.am ], [ %i.cx, %._crit_edge ], [ %.0235, %bb.n ] ; 4 uses
  %.5234 = phi i64 [ %.4233, %bb.am ], [ %i.fg, %._crit_edge ], [ %i.h, %bb.n ]
  %.6225 = phi i32 [ %.5224, %bb.am ], [ 1, %._crit_edge ], [ 1, %bb.n ]
  %i.gg = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !44
  %i.gh = icmp eq i64 %.5234, %i.gg
  br i1 %i.gh, label %ssl_parse_inner_plaintext.exit, label %bb.an

bb.an:                                            ; preds = %.thread307
  %.not284 = icmp eq i32 %.6225, 1
  br i1 %.not284, label %bb.ao, label %ssl_parse_inner_plaintext.exit

bb.ao:                                            ; preds = %bb.an
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !50
  %i.gk = icmp eq i32 %i.gj, 772
  br i1 %i.gk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = load i64, ptr %i.s, align 8, !tbaa !53  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %ssl_parse_inner_plaintext.exit, label %.lr.ph369

bb.aq:                                            ; preds = %.lr.ph369
  %i.go = icmp eq i64 %i.gp, 0
  br i1 %i.go, label %ssl_parse_inner_plaintext.exit, label %.lr.ph369, !llvm.loop !61

.lr.ph369:                                        ; preds = %bb.ap, %bb.aq
  %.0.i367 = phi i64 [ %i.gp, %bb.aq ], [ %i.gm, %bb.ap ]
  %i.gp = add i64 %.0.i367, -1                    ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.aq, label %ssl_parse_inner_plaintext.exit.thread, !llvm.loop !61

ssl_parse_inner_plaintext.exit.thread:            ; preds = %.lr.ph369
  %i.gt = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.gp
  store i64 %i.gp, ptr %i.s, align 8, !tbaa !53
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !32
  store i8 %i.gu, ptr %i.gl, align 8, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %ssl_parse_inner_plaintext.exit.thread, %bb.ao
  %i.gv = load i8, ptr %i.x, align 8, !tbaa !35
  %.not286 = icmp eq i8 %i.gv, 0
  br i1 %.not286, label %ssl_parse_inner_plaintext.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gx = load i64, ptr %i.s, align 8, !tbaa !53  ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %ssl_parse_inner_plaintext.exit, label %.lr.ph372

bb.at:                                            ; preds = %.lr.ph372
  %i.gz = icmp eq i64 %i.ha, 0
  br i1 %i.gz, label %ssl_parse_inner_plaintext.exit, label %.lr.ph372, !llvm.loop !61

.lr.ph372:                                        ; preds = %bb.as, %bb.at
  %.0.i292370 = phi i64 [ %i.ha, %bb.at ], [ %i.gx, %bb.as ]
  %i.ha = add i64 %.0.i292370, -1                 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %bb.at, label %ssl_parse_inner_plaintext.exit294.thread, !llvm.loop !61

ssl_parse_inner_plaintext.exit294.thread:         ; preds = %.lr.ph372
  %i.he = getelementptr inbounds nuw i8, ptr %.3238313, i64 %i.ha
  store i64 %i.ha, ptr %i.s, align 8, !tbaa !53
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !32
  store i8 %i.hf, ptr %i.gw, align 8, !tbaa !32
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
end_hunk_0
