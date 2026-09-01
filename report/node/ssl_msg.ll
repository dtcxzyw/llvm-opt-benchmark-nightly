Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ssl_msg?download=true
inline.NumInlined: 137
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mbedtls_ssl_decrypt_buf:bb.a
bb.p:                                             ; preds = %bb.o
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1646, ptr noundef nonnull @.str.37, i32 noundef %i.bl) #19
  %i.bm = icmp eq i32 %i.bl, -25344
  %. = select i1 %i.bm, i32 -29056, i32 %i.bl
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !58
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !42
  %.not303 = icmp eq i64 %i.bn, %i.bo
  br i1 %.not303, label %.thread337, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1660, ptr noundef nonnull @.str.26) #19
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.n, %bb.p, %bb.r
  %.0.ph = phi i32 [ -27648, %bb.r ], [ %., %bb.p ], [ -29056, %bb.n ], [ -29056, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %ssl_parse_inner_plaintext.exit

.thread337:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.au

bb.s:                                             ; preds = %bb.h
  %.not351 = icmp eq i32 %i.w, 2                  ; 3 uses
  %i.bp = add i32 %i.w, -1
  %or.cond = icmp ult i32 %i.bp, 2
  br i1 %or.cond, label %bb.t, label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !54 ; 4 uses
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !42  ; 4 uses
  %i.bt = shl i64 %i.br, 1
  %i.bu = icmp ult i64 %i.bs, %i.bt
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %.pre367 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59 ; 2 uses
  br i1 %i.bu, label %._crit_edge366, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add i64 %i.br, 1
  %i.bw = add i64 %i.bv, %.pre367
  %i.bx = icmp ult i64 %i.bs, %i.bw
  br i1 %i.bx, label %._crit_edge366, label %bb.v

._crit_edge366:                                   ; preds = %bb.t, %bb.u
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1712, ptr noundef nonnull @.str.38, i64 noundef %i.bs, i64 noundef %i.br, i64 noundef %.pre367) #19
  br label %ssl_parse_inner_plaintext.exit

bb.v:                                             ; preds = %bb.u
  br i1 %.not351, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1727, ptr noundef nonnull @.str.27) #19
  %i.by = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !42
  %i.ca = sub i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.s, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.cc, i64 noundef %i.ce)
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b, i64 noundef %i.cf) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ch = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.b, i64 noundef %i.cf) #19 ; 2 uses
  %.not291 = icmp eq i32 %i.ch, 0
  br i1 %.not291, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ci = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cj = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.v, i64 noundef %i.ci) #19 ; 2 uses
  %.not292 = icmp eq i32 %i.cj, 0
  br i1 %.not292, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ck = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.e) #19 ; 2 uses
  %.not293 = icmp eq i32 %i.ck, 0
  br i1 %.not293, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cl = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %i.cg) #19 ; 2 uses
  %.not294 = icmp eq i32 %i.cl, 0
  br i1 %.not294, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cm
  %i.co = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1791, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.cn, i64 noundef %i.co) #19
  %i.cp = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.e, i64 noundef %i.cp) #19
  %i.cq = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cq
  %i.cs = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.ct = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.e, i64 noundef %i.cs) #19
  %.not295 = icmp eq i32 %i.ct, 0
  br i1 %.not295, label %.critedge, label %.thread325

.thread325:                                       ; preds = %bb.aa
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1798, ptr noundef nonnull @.str.41) #19
  %i.cu = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cu) #19
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.0241.ph = phi i32 [ %i.ch, %bb.w ], [ %i.cl, %bb.z ], [ %i.ck, %bb.y ], [ %i.cj, %bb.x ] ; 3 uses
  %i.cv = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cv) #19
  %.not297 = icmp eq i32 %.0241.ph, -29056
  br i1 %.not297, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1817, ptr noundef nonnull @.str.42, i32 noundef %.0241.ph) #19
  br label %bb.ad

bb.ad:                                            ; preds = %.thread325, %bb.ab, %bb.ac
  %.0241.ph328 = phi i32 [ -29056, %.thread325 ], [ -29056, %bb.ab ], [ %.0241.ph, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %ssl_parse_inner_plaintext.exit

.critedge:                                        ; preds = %bb.aa
  %i.cw = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %.pre = load i64, ptr %i.s, align 8, !tbaa !42
  %.pre365 = load i64, ptr %i.bq, align 8, !tbaa !54
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.v
  %i.cx = phi i64 [ %.pre365, %.critedge ], [ %i.br, %bb.v ] ; 7 uses
  %i.cy = phi i64 [ %.pre, %.critedge ], [ %i.bs, %bb.v ] ; 2 uses
  %i.cz = urem i64 %i.cy, %i.cx
  %.not298 = icmp eq i64 %i.cz, 0
  br i1 %.not298, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1834, ptr noundef nonnull @.str.43, i64 noundef %i.cy, i64 noundef %i.cx) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ag:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 1 %i.v, i64 %i.cx, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cx ; 8 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !41
  %i.dd = add i64 %i.dc, %i.cx
  store i64 %i.dd, ptr %i.o, align 8, !tbaa !41
  %i.de = load i64, ptr %i.s, align 8, !tbaa !42
  %i.df = sub i64 %i.de, %i.cx                    ; 2 uses
  store i64 %i.df, ptr %i.s, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dh = call i32 @mbedtls_cipher_crypt(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.da, i64 noundef %i.cx, ptr noundef nonnull %i.db, i64 noundef %i.df, ptr noundef nonnull %i.db, ptr noundef nonnull %i.a) #19 ; 3 uses
  %.not299 = icmp eq i32 %i.dh, 0
  br i1 %.not299, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1896, ptr noundef nonnull @.str.25, i32 noundef %i.dh) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ai:                                            ; preds = %bb.ag
  %i.di = load i64, ptr %i.s, align 8, !tbaa !42  ; 4 uses
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !58
  %.not300 = icmp eq i64 %i.di, %i.dj
  br i1 %.not300, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1903, ptr noundef nonnull @.str.26) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dk = getelementptr i8, ptr %i.db, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !34
  %i.dn = zext i8 %i.dm to i64                    ; 3 uses
  br i1 %.not351, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = add nuw nsw i64 %i.dn, 1
  %i.dp = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.di, i64 %i.do) #19, !srcloc !60
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dq = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.dr = add nuw nsw i64 %i.dn, 1
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.di, i64 %i.ds) #19, !srcloc !60
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn350 = phi { i64, i64, i64 } [ %i.dp, %bb.al ], [ %i.dt, %bb.am ]
  %.pn.in = extractvalue { i64, i64, i64 } %.pn350, 1 ; 2 uses
  %.pn = xor i64 %.pn.in, -1
  %.0250 = and i64 %.pn, %i.dn                    ; 2 uses
  %i.du = add nuw nsw i64 %.0250, 1               ; 3 uses
  %i.dv = load i64, ptr %i.s, align 8, !tbaa !42  ; 3 uses
  %i.dw = sub i64 %i.dv, %i.du
  %3 = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 256) ; 2 uses
  %4 = icmp ult i64 %3, %i.dv
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.0242359 = phi i64 [ %i.el, %.lr.ph ], [ %3, %bb.an ] ; 3 uses
  %.0263358 = phi i64 [ %i.ek, %.lr.ph ], [ 0, %bb.an ]
  %i.dx = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %.0242359, i64 %i.dw) #19, !srcloc !60
  %i.dy = extractvalue { i64, i64, i64 } %i.dx, 1
  %i.dz = and i64 %i.dy, 1
  %i.ea = xor i64 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 %.0242359
  %i.ec = load volatile i8, ptr %i.eb, align 1, !tbaa !34
  %i.ed = zext i8 %i.ec to i64
  %i.ee = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ed) #19, !srcloc !46
  %i.ef = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0250) #19, !srcloc !46
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.eg) #19, !srcloc !61
  %i.ei = xor i64 %i.eh, -1
  %i.ej = and i64 %i.ea, %i.ei
  %i.ek = add i64 %i.ej, %.0263358                ; 2 uses
  %i.el = add nuw i64 %.0242359, 1                ; 2 uses
  %i.em = load i64, ptr %i.s, align 8, !tbaa !42
  %i.en = icmp ult i64 %i.el, %i.em
  br i1 %i.en, label %.lr.ph, label %._crit_edge, !llvm.loop !62

bb.ao:                                            ; preds = %bb.s
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1988, ptr noundef nonnull @.str.26) #19
  br label %ssl_parse_inner_plaintext.exit

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.0263.lcssa = phi i64 [ 0, %bb.an ], [ %i.ek, %.lr.ph ]
  %i.eo = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.0263.lcssa) #19, !srcloc !46
  %i.ep = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.du) #19, !srcloc !46
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = call i64 asm sideeffect "mov  $1, $0                                \0A\09neg  $0                                      \0A\09or   $1, $0                                \0A\09sar  $$63, $0                                 \0A\09", "=&{ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %i.eq) #19, !srcloc !61
  %i.es = or i64 %i.er, %.pn.in
  %i.et = xor i64 %i.es, -1
  %i.eu = and i64 %i.h, %i.et                     ; 4 uses
  %i.ev = and i64 %i.eu, %i.du                    ; 2 uses
  %i.ew = load i64, ptr %i.s, align 8, !tbaa !42
  %i.ex = sub i64 %i.ew, %i.ev                    ; 2 uses
  store i64 %i.ex, ptr %i.s, align 8, !tbaa !42
  br i1 %.not351, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.ey = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  store i64 %i.ez, ptr %i.s, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !57
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !56
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.fb, i64 noundef %i.fd)
  %i.fe = add i64 %i.ez, %i.ev                    ; 3 uses
  %i.ff = call i64 @llvm.usub.sat.i64(i64 %i.fe, i64 256) ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fh = load i64, ptr %i.c, align 8, !tbaa !58
  %i.fi = call fastcc i32 @mbedtls_ct_hmac(ptr noundef nonnull %i.fg, ptr noundef %i.b, i64 noundef %i.fh, ptr noundef %i.db, i64 noundef %i.ez, i64 noundef %i.ff, i64 noundef %i.fe, ptr noundef %i.f) ; 3 uses
  %.not304 = icmp eq i32 %i.fi, 0                 ; 2 uses
  br i1 %.not304, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2054, ptr noundef nonnull @.str.44, i32 noundef %i.fi) #19
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.fj = load i64, ptr %i.s, align 8, !tbaa !42
  %i.fk = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_ct_memcpy_offset(ptr noundef nonnull %i.g, ptr noundef nonnull %i.db, i64 noundef %i.fj, i64 noundef %i.ff, i64 noundef %i.fe, i64 noundef %i.fk) #19
  %i.fl = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.fm = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.fl) #19
  %.not305 = icmp eq i32 %i.fm, 0
  br i1 %.not305, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !46
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %.4257 = phi i64 [ %i.eu, %bb.aq ], [ %i.fn, %bb.as ], [ %i.eu, %bb.ar ]
  %.5248 = phi i32 [ 0, %bb.aq ], [ 1, %bb.as ], [ 1, %bb.ar ]
  %i.fo = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.g, i64 noundef %i.fo) #19
  %i.fp = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.f, i64 noundef %i.fp) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %.not304, label %bb.au, label %ssl_parse_inner_plaintext.exit

bb.au:                                            ; preds = %.thread337, %bb.at, %._crit_edge
  %.3262343 = phi ptr [ %i.db, %bb.at ], [ %i.db, %._crit_edge ], [ %.0259, %.thread337 ] ; 4 uses
  %.5258 = phi i64 [ %.4257, %bb.at ], [ %i.eu, %._crit_edge ], [ %i.h, %.thread337 ]
  %.6249 = phi i32 [ %.5248, %bb.at ], [ 1, %._crit_edge ], [ 1, %.thread337 ]
  %i.fq = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 0) #19, !srcloc !46
  %i.fr = icmp eq i64 %.5258, %i.fq
  br i1 %i.fr, label %ssl_parse_inner_plaintext.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not306 = icmp eq i32 %.6249, 1
  br i1 %.not306, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 2096, ptr noundef nonnull @.str.26) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ax:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !57
  %i.fu = icmp eq i32 %i.ft, 772
  br i1 %i.fu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load i64, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %ssl_parse_inner_plaintext.exit, label %.lr.ph400

bb.az:                                            ; preds = %.lr.ph400
  %i.fy = icmp eq i64 %i.fz, 0
  br i1 %i.fy, label %ssl_parse_inner_plaintext.exit, label %.lr.ph400, !llvm.loop !64

.lr.ph400:                                        ; preds = %bb.ay, %bb.az
  %.0.i398 = phi i64 [ %i.fz, %bb.az ], [ %i.fw, %bb.ay ]
  %i.fz = add i64 %.0.i398, -1                    ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.3262343, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !34
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.az, label %ssl_parse_inner_plaintext.exit.thread, !llvm.loop !64

ssl_parse_inner_plaintext.exit.thread:            ; preds = %.lr.ph400
  %i.gd = getelementptr inbounds nuw i8, ptr %.3262343, i64 %i.fz
  store i64 %i.fz, ptr %i.s, align 8, !tbaa !58
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !34
  store i8 %i.ge, ptr %i.fv, align 8, !tbaa !34
  br label %bb.ba

bb.ba:                                            ; preds = %ssl_parse_inner_plaintext.exit.thread, %bb.ax
  %i.gf = load i8, ptr %i.x, align 8, !tbaa !37
  %.not308 = icmp eq i8 %i.gf, 0
  br i1 %.not308, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gh = load i64, ptr %i.s, align 8, !tbaa !58  ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %ssl_parse_inner_plaintext.exit, label %.lr.ph403

bb.bc:                                            ; preds = %.lr.ph403
  %i.gj = icmp eq i64 %i.gk, 0
  br i1 %i.gj, label %ssl_parse_inner_plaintext.exit, label %.lr.ph403, !llvm.loop !64

.lr.ph403:                                        ; preds = %bb.bb, %bb.bc
  %.0.i311401 = phi i64 [ %i.gk, %bb.bc ], [ %i.gh, %bb.bb ]
  %i.gk = add i64 %.0.i311401, -1                 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.3262343, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !34
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.bc, label %ssl_parse_inner_plaintext.exit313.thread, !llvm.loop !64

ssl_parse_inner_plaintext.exit313.thread:         ; preds = %.lr.ph403
  %i.go = getelementptr inbounds nuw i8, ptr %.3262343, i64 %i.gk
  store i64 %i.gk, ptr %i.s, align 8, !tbaa !58
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !34
  store i8 %i.gp, ptr %i.gg, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %ssl_parse_inner_plaintext.exit313.thread, %bb.ba
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 2122, ptr noundef nonnull @.str.45) #19
  br label %ssl_parse_inner_plaintext.exit

ssl_parse_inner_plaintext.exit:                   ; preds = %bb.az, %bb.bc, %bb.ay, %bb.bb, %bb.ad, %bb.aj, %bb.ah, %bb.af, %._crit_edge366, %.thread, %bb.au, %bb.f, %bb.g, %bb.at, %bb.bd, %bb.aw, %bb.ao, %bb.e
  %.6 = phi i32 [ -27648, %bb.e ], [ -27648, %bb.ao ], [ -24576, %bb.f ], [ -27648, %bb.aw ], [ -29056, %bb.au ], [ -29184, %bb.bb ], [ 0, %bb.bd ], [ %i.fi, %bb.at ], [ %.0.ph, %.thread ], [ -29056, %._crit_edge366 ], [ -24576, %bb.g ], [ %.0241.ph328, %bb.ad ], [ -27648, %bb.aj ], [ %i.dh, %bb.ah ], [ -29056, %bb.af ], [ -29184, %bb.ay ], [ -29184, %bb.bc ], [ -29184, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_encrypt_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [55 x i8], align 16               ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca [48 x i8], align 16               ; 7 uses
  %i.d = alloca [12 x i8], align 1                ; 8 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca [48 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 936, ptr noundef nonnull @.str.8) #19
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 939, ptr noundef nonnull @.str.9) #19
  br label %.critedge

end_hunk_0
