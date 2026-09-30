Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/tls13_enc?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
begin_hunk_0_@tls13_change_cipher_state:bb.a
  br label %.thread199

bb.an:                                            ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1852
  br label %bb.au

bb.ao:                                            ; preds = %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1532
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1788
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  %i.cl = and i32 %1, 128
  %.not153 = icmp eq i32 %i.cl, 0
  br i1 %.not153, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cm = call ptr @ssl_handshake_md(ptr noundef nonnull %0) #3
  %i.cn = call i32 @EVP_MD_get_size(ptr noundef %i.cm) #3 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 668, ptr noundef nonnull @__func__.tls13_change_cipher_state) #3
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #3
  %.pre188 = and i32 %1, 64
  br label %bb.bi

bb.as:                                            ; preds = %bb.aq
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1724
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1468
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1532
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1788
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %bb.as, %bb.at, %bb.ao, %bb.an
  %.0138 = phi ptr [ %i.e, %bb.aj ], [ %i.ci, %bb.an ], [ %i.ck, %bb.ao ], [ %i.e, %bb.as ], [ %i.cs, %bb.at ] ; 2 uses
  %.0137 = phi ptr [ %i.aa, %bb.aj ], [ %i.ch, %bb.an ], [ %i.cj, %bb.ao ], [ %i.cq, %bb.as ], [ %i.cr, %bb.at ] ; 3 uses
  %.0136 = phi ptr [ null, %bb.aj ], [ %i.cg, %bb.an ], [ null, %bb.ao ], [ %i.cp, %bb.as ], [ null, %bb.at ] ; 2 uses
  %.0135 = phi ptr [ @.str.11, %bb.aj ], [ @.str.13, %bb.an ], [ @.str.14, %bb.ao ], [ @.str.15, %bb.as ], [ @.str.16, %bb.at ]
  %.0134 = phi i32 [ 0, %bb.aj ], [ %i.ce, %bb.an ], [ 0, %bb.ao ], [ %i.cn, %bb.as ], [ 0, %bb.at ]
  %i.ct = phi i1 [ false, %bb.aj ], [ false, %bb.an ], [ true, %bb.ao ], [ false, %bb.as ], [ false, %bb.at ] ; 2 uses
  %i.cu = phi i1 [ false, %bb.aj ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.as ], [ true, %bb.at ]
  %i.cv = phi i1 [ true, %bb.aj ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.as ], [ false, %bb.at ]
  %.0133 = phi ptr [ @tls13_change_cipher_state.client_early_traffic, %bb.aj ], [ @tls13_change_cipher_state.client_handshake_traffic, %bb.an ], [ @tls13_change_cipher_state.client_application_traffic, %bb.ao ], [ @tls13_change_cipher_state.server_handshake_traffic, %bb.as ], [ @tls13_change_cipher_state.server_application_traffic, %bb.at ]
  %.0132 = phi i64 [ 11, %bb.aj ], [ 12, %bb.an ], [ 12, %bb.ao ], [ 12, %bb.as ], [ 12, %bb.at ]
  %.1 = phi ptr [ %i.br, %bb.aj ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.as ], [ null, %bb.at ]
  %i.cw = and i32 %1, 64                          ; 9 uses
  %i.cx = icmp eq i32 %i.cw, 0                    ; 2 uses
  br i1 %i.cx, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cy = call ptr @ssl_handshake_md(ptr noundef nonnull %0) #3
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104
  store ptr %i.da, ptr %i.h, align 8, !tbaa !105
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !106
  store ptr %i.dc, ptr %i.g, align 8, !tbaa !107
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !108
  store i32 %i.de, ptr %i.i, align 4, !tbaa !9
  %i.df = call i32 @ssl3_digest_cached_records(ptr noundef nonnull %0, i32 noundef 1) #3
  %.not166 = icmp eq i32 %i.df, 0
  br i1 %.not166, label %.thread199, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dg = call i32 @ssl_handshake_hash(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 64, ptr noundef nonnull %i.f) #3
  %.not167 = icmp eq i32 %i.dg, 0
  br i1 %.not167, label %.thread199, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.2 = phi ptr [ %i.cy, %bb.aw ], [ %.1, %bb.au ] ; 2 uses
  br i1 %i.ct, label %bb.ay, label %tls13_hkdf_expand.exit

bb.ay:                                            ; preds = %bb.ax
  %i.dh = call ptr @ssl_handshake_md(ptr noundef nonnull %0) #3
  %i.di = load i64, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !96
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1160
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !97
  %i.do = call i32 @tls13_hkdf_expand_ex(ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef %i.dh, ptr noundef nonnull %.0137, ptr noundef nonnull @tls13_change_cipher_state.resumption_master_secret, i64 noundef 10, ptr noundef nonnull %i.e, i64 noundef %i.di, ptr noundef nonnull %i.dj, i64 noundef %i.di, i32 noundef 0)
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %tls13_hkdf_expand.exit.thread, label %tls13_hkdf_expand.exit

tls13_hkdf_expand.exit.thread:                    ; preds = %bb.ay
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__func__.tls13_hkdf_expand) #3
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #3
  br label %bb.bi

tls13_hkdf_expand.exit:                           ; preds = %bb.ay, %bb.ax
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !105 ; 2 uses
  %.not169 = icmp eq ptr %i.dq, null
  br i1 %.not169, label %bb.bi, label %bb.az, !prof !131

bb.az:                                            ; preds = %tls13_hkdf_expand.exit
  %i.dr = load i32, ptr %i.i, align 4, !tbaa !9
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.dt = call fastcc i32 @derive_secret_key_and_iv(ptr noundef nonnull %0, ptr noundef %.2, ptr noundef nonnull %i.dq, i32 noundef %i.dr, ptr noundef %i.ds, ptr noundef nonnull %.0137, ptr noundef nonnull %.0138, ptr noundef nonnull %.0133, i64 noundef %.0132, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %i.j, ptr noundef %i.b, ptr noundef %i.k, ptr noundef %i.l)
  %.not170 = icmp eq i32 %i.dt, 0
  br i1 %.not170, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.cu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1980
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull align 16 %i.d, i64 %i.dv, i1 false)
  %i.dw = call ptr @ssl_handshake_md(ptr noundef nonnull %0) #3
  %i.dx = load i64, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2044 ; 2 uses
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 1160
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !97
  %i.ed = call i32 @tls13_hkdf_expand_ex(ptr noundef %i.ea, ptr noundef %i.ec, ptr noundef %i.dw, ptr noundef nonnull %.0137, ptr noundef nonnull @tls13_change_cipher_state.exporter_master_secret, i64 noundef 10, ptr noundef nonnull %.0138, i64 noundef %i.dx, ptr noundef nonnull %i.dy, i64 noundef %i.dx, i32 noundef 0)
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %tls13_hkdf_expand.exit183.thread, label %tls13_hkdf_expand.exit183

tls13_hkdf_expand.exit183.thread:                 ; preds = %bb.bb
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__func__.tls13_hkdf_expand) #3
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #3
  br label %bb.bi

tls13_hkdf_expand.exit183:                        ; preds = %bb.bb
  %i.ef = load i64, ptr %i.f, align 8, !tbaa !15
  %i.eg = call i32 @ssl_log_secret(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.dy, i64 noundef %i.ef) #3
  %.not172 = icmp eq i32 %i.eg, 0
  br i1 %.not172, label %bb.bi, label %tls13_hkdf_expand.exit183._crit_edge

tls13_hkdf_expand.exit183._crit_edge:             ; preds = %tls13_hkdf_expand.exit183
  %.pre = load i64, ptr %i.f, align 8, !tbaa !15
  br label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %.pre187 = load i64, ptr %i.f, align 8, !tbaa !15 ; 3 uses
  br i1 %i.ct, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1916
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 16 %i.d, i64 %.pre187, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %tls13_hkdf_expand.exit183._crit_edge, %bb.bc, %bb.bd
  %i.ei = phi i64 [ %.pre, %tls13_hkdf_expand.exit183._crit_edge ], [ %.pre187, %bb.bc ], [ %.pre187, %bb.bd ]
  %i.ej = call i32 @ssl_log_secret(ptr noundef nonnull %0, ptr noundef nonnull %.0135, ptr noundef nonnull %i.d, i64 noundef %i.ei) #3
  %.not173 = icmp eq i32 %i.ej, 0
  br i1 %.not173, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not174 = icmp eq ptr %.0136, null
  br i1 %.not174, label %tls13_derive_finishedkey.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ek = call ptr @ssl_handshake_md(ptr noundef nonnull %0) #3
  %i.el = zext nneg i32 %.0134 to i64
  %i.em = load ptr, ptr %i.o, align 8, !tbaa !81  ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !96
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1160
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !97
  %i.eq = call i32 @tls13_hkdf_expand_ex(ptr noundef %i.en, ptr noundef %i.ep, ptr noundef %i.ek, ptr noundef nonnull %i.d, ptr noundef nonnull @tls13_derive_finishedkey.finishedlabel, i64 noundef 8, ptr noundef null, i64 noundef 0, ptr noundef nonnull %.0136, i64 noundef %i.el, i32 noundef 0)
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %tls13_derive_finishedkey.exit.thread, label %tls13_derive_finishedkey.exit

tls13_derive_finishedkey.exit.thread:             ; preds = %bb.bg
  call void @ERR_new() #3
  call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__func__.tls13_hkdf_expand) #3
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #3
  br label %bb.bi

tls13_derive_finishedkey.exit:                    ; preds = %bb.bg, %bb.bf
  br i1 %.not151, label %bb.bh, label %.sink.split

.sink.split:                                      ; preds = %tls13_derive_finishedkey.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.et = load i32, ptr %i.es, align 8, !tbaa !115
  %i.eu = icmp eq i32 %i.et, 0
  %or.cond = and i1 %i.cv, %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !132
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 104
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !134
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !135
  %. = zext i1 %or.cond to i32
  call void %i.ey(ptr noundef %i.fa, i32 noundef %.) #3
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %tls13_derive_finishedkey.exit
  %2 = and i32 %1, 128
  %.not178 = icmp eq i32 %2, 0
  %3 = select i1 %.not178, i32 3, i32 2
  %i.fb = select i1 %i.cx, i32 %3, i32 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !116
  %i.fe = load i64, ptr %i.f, align 8, !tbaa !15
  %i.ff = load i64, ptr %i.j, align 8, !tbaa !15
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.fh = load i64, ptr %i.k, align 8, !tbaa !15
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.fj = load i64, ptr %i.l, align 8, !tbaa !15
  %i.fk = load i32, ptr %i.i, align 4, !tbaa !9
  %i.fl = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.fm = call i32 @ssl_set_new_record_layer(ptr noundef nonnull %0, i32 noundef %i.fd, i32 noundef %i.r, i32 noundef %i.fb, ptr noundef nonnull %i.d, i64 noundef %i.fe, ptr noundef nonnull %i.c, i64 noundef %i.ff, ptr noundef %i.fg, i64 noundef %i.fh, ptr noundef null, i64 noundef 0, ptr noundef %i.fi, i64 noundef %i.fj, i32 noundef %i.fk, ptr noundef %i.fl, ptr noundef null, ptr noundef %.2) #3
  %.not179 = icmp ne i32 %i.fm, 0
  %spec.select = zext i1 %.not179 to i32
  br label %bb.bi

bb.bi:                                            ; preds = %tls13_derive_finishedkey.exit.thread, %tls13_hkdf_expand.exit183.thread, %tls13_hkdf_expand.exit.thread, %bb.bh, %bb.be, %tls13_hkdf_expand.exit183, %bb.az, %tls13_hkdf_expand.exit, %bb.ar
  %.pre-phi = phi i32 [ %i.cw, %tls13_derive_finishedkey.exit.thread ], [ %i.cw, %tls13_hkdf_expand.exit183.thread ], [ %i.cw, %tls13_hkdf_expand.exit.thread ], [ %.pre188, %bb.ar ], [ %i.cw, %bb.bh ], [ %i.cw, %bb.be ], [ %i.cw, %tls13_hkdf_expand.exit183 ], [ %i.cw, %bb.az ], [ %i.cw, %tls13_hkdf_expand.exit ]
  %.0131 = phi i32 [ 0, %tls13_derive_finishedkey.exit.thread ], [ 0, %tls13_hkdf_expand.exit183.thread ], [ 0, %tls13_hkdf_expand.exit.thread ], [ 0, %bb.ar ], [ %spec.select, %bb.bh ], [ 0, %bb.be ], [ 0, %tls13_hkdf_expand.exit183 ], [ 0, %bb.az ], [ 0, %tls13_hkdf_expand.exit ] ; 2 uses
  %.not180 = icmp eq i32 %.pre-phi, 0
  br i1 %.not180, label %.thread199, label %bb.bj

bb.bj:                                            ; preds = %.thread204, %bb.bi
  %.0131208 = phi i32 [ 0, %.thread204 ], [ %.0131, %bb.bi ]
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.fo = call i64 @EVP_CIPHER_get_flags(ptr noundef %i.fn) #3
  %i.fp = and i64 %i.fo, 2097152
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fr = load ptr, ptr %i.g, align 8, !tbaa !107
  call void @ssl_evp_md_free(ptr noundef %i.fr) #3
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !105
  call void @ssl_evp_cipher_free(ptr noundef %i.fs) #3
  br label %.thread199

.thread199:                                       ; preds = %bb.am, %bb.aw, %bb.av, %bb.bl, %bb.bi
  %.0131203 = phi i32 [ %.0131, %bb.bi ], [ %.0131208, %bb.bl ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.am ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #3
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 64) #3
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %.not181 = icmp eq ptr %i.ft, %i.a
  br i1 %.not181, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread199
  call void @CRYPTO_free(ptr noundef %i.ft, ptr noundef nonnull @.str.1, i32 noundef 786) #3
  br label %bb.bn

bb.bn:                                            ; preds = %.thread199, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0131203
}

declare ptr @SSL_SESSION_get0_cipher(ptr noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ssl_cipher_get_evp_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(ptr noundef) local_unnamed_addr #2

declare i32 @ssl_cipher_get_evp_md_mac(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare ptr @ssl_md(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

declare i32 @ssl_log_secret(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl3_digest_cached_records(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @derive_secret_key_and_iv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef range(i64 11, 13) %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef nonnull captures(none) %12, ptr nofree noundef nonnull captures(none) %13, ptr nofree noundef nonnull writeonly captures(none) %14) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_MD_get_size(ptr noundef %1) #3 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 370, ptr noundef nonnull @__func__.derive_secret_key_and_iv) #3
  br label %tls13_derive_iv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = tail call i32 @tls13_hkdf_expand_ex(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %5, ptr noundef %7, i64 noundef %8, ptr noundef %6, i64 noundef %i.c, ptr noundef nonnull %9, i64 noundef %i.c, i32 noundef 0)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %tls13_hkdf_expand.exit.thread, label %tls13_hkdf_expand.exit

tls13_hkdf_expand.exit.thread:                    ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__func__.tls13_hkdf_expand) #3
  br label %tls13_derive_iv.exit.sink.split

tls13_hkdf_expand.exit:                           ; preds = %bb.c
  %i.k = tail call i32 @EVP_CIPHER_is_a(ptr noundef %2, ptr noundef nonnull @.str.20) #3
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp ne ptr %4, null
  %or.cond = and i1 %i.m, %i.l
  %i.n = icmp eq i32 %3, 855
  %or.cond4 = and i1 %i.n, %or.cond
  br i1 %or.cond4, label %bb.d, label %bb.g

bb.d:                                             ; preds = %tls13_hkdf_expand.exit
  %i.o = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %4) #3 ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__func__.derive_secret_key_and_iv) #3
  br label %tls13_derive_iv.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  store i64 %i.q, ptr %14, align 8, !tbaa !15
  store i64 %i.q, ptr %13, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109
  store i64 %i.s, ptr %11, align 8, !tbaa !15
  br label %thread-pre-split

bb.g:                                             ; preds = %tls13_hkdf_expand.exit
  %i.t = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef %2) #3
  %i.u = sext i32 %i.t to i64
  store i64 %i.u, ptr %11, align 8, !tbaa !15
  %i.v = tail call i32 @EVP_CIPHER_get_mode(ptr noundef %2) #3
  %cond = icmp eq i32 %i.v, 7
  br i1 %cond, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  store i64 12, ptr %13, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not82 = icmp eq ptr %i.x, null
  br i1 %.not82, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 760
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103 ; 2 uses
  %.not83 = icmp eq ptr %i.ab, null
  br i1 %.not83, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  %.not84 = icmp eq ptr %i.ad, null
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 760
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 2 uses
  %.not85 = icmp eq ptr %i.af, null
  br i1 %.not85, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.1, i32 noundef 411, ptr noundef nonnull @__func__.derive_secret_key_and_iv) #3
  br label %tls13_derive_iv.exit.sink.split

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.h
  %.sink = phi ptr [ %i.x, %bb.h ], [ %i.ab, %bb.i ], [ %i.af, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink, i64 36
  %.0 = load i32, ptr %i.ag, align 4, !tbaa !136
  %i.ah = and i32 %.0, 196608
  %.not86 = icmp eq i32 %i.ah, 0
  %. = select i1 %.not86, i64 16, i64 8
  store i64 %., ptr %14, align 8, !tbaa !15
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.g
end_hunk_0
