Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_kem_codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@ossl_ml_kem_d2i_PUBKEY
define ptr @ossl_ml_kem_d2i_PUBKEY(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %3) #5
  %i.b = tail call ptr @ossl_ml_kem_get_vinfo(i32 noundef %2) #5 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ml_kem_get_codec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %2, -1454            ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 3
  br i1 %i.d, label %switch.lookup, label %ml_kem_get_codec.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12
  %i.h = add nsw i64 %i.g, 22
  %.not = icmp eq i64 %i.h, %i.e
  br i1 %.not, label %bb.c, label %ml_kem_get_codec.exit

bb.c:                                             ; preds = %switch.lookup
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_ml_kem_i2d_prvkey, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.j = load ptr, ptr %switch.load, align 8, !tbaa !42 ; 2 uses
  %i.k = load i128, ptr %0, align 1
  %i.l = load i128, ptr %i.j, align 1
  %i.m = xor i128 %i.k, %i.l
  %i.n = getelementptr i8, ptr %0, i64 6
  %i.o = getelementptr i8, ptr %i.j, i64 6
  %i.p = load i128, ptr %i.n, align 1
  %i.q = load i128, ptr %i.o, align 1
  %i.r = xor i128 %i.p, %i.q
  %i.s = or i128 %i.m, %i.r
  %i.t = icmp ne i128 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %bb.d, label %ml_kem_get_codec.exit

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @ossl_ml_kem_key_new(ptr noundef %i.a, ptr noundef %4, i32 noundef %2) #5 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %ml_kem_get_codec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.y = add nsw i32 %1, -22
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call i32 @ossl_ml_kem_parse_public_key(ptr noundef nonnull %i.x, i64 noundef %i.z, ptr noundef nonnull %i.v) #5
  %.not23 = icmp eq i32 %i.aa, 0
  br i1 %.not23, label %bb.f, label %ml_kem_get_codec.exit

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PUBKEY) #5
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 141, ptr noundef nonnull @.str.1, ptr noundef %i.ab) #5
  tail call void @ossl_ml_kem_key_free(ptr noundef nonnull %i.v) #5
  br label %ml_kem_get_codec.exit

ml_kem_get_codec.exit:                            ; preds = %bb.b, %bb.e, %bb.d, %switch.lookup, %bb.c, %bb.a, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.a ], [ null, %switch.lookup ], [ null, %bb.d ], [ %i.v, %bb.e ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_ml_kem_get_vinfo(i32 noundef) local_unnamed_addr #2

declare ptr @ossl_ml_kem_key_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ml_kem_parse_public_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ossl_ml_kem_key_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @ossl_ml_kem_d2i_PKCS8(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.f = tail call ptr @ossl_ml_kem_get_vinfo(i32 noundef %2) #5 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ml_kem_get_codec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %2, -1454            ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 3
  br i1 %i.h, label %switch.lookup, label %ml_kem_get_codec.exit

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_ml_kem_i2d_prvkey, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.j = sext i32 %1 to i64
  %i.k = call ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.j) #5 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ml_kem_get_codec.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.m = call i32 @PKCS8_pkey_get0(ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k) #5
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = call i32 @OBJ_obj2nid(ptr noundef %i.o) #5
  %.not95 = icmp eq i32 %i.p, %2
  br i1 %.not95, label %bb.e, label %bb.ao

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @ossl_prov_ctx_get_param(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = call ptr @ossl_ml_common_pkcs8_fmt_order(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull @.str.3, ptr noundef %i.q) #5 ; 17 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.ao, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !45
  call void @X509_ALGOR_get0(ptr noundef null, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef %i.w) #5
  %i.x = load i32, ptr %i.e, align 4, !tbaa !50
  %.not96 = icmp eq i32 %i.x, -1
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 249, ptr noundef nonnull @.str.4, ptr noundef %i.y) #5
  br label %bb.ao

bb.h:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.d, align 4, !tbaa !50   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 4
  br i1 %i.aa, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !15  ; 5 uses
  %.0.copyload.i = load i32, ptr %i.ab, align 1
  %i.ac = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  %.not97126 = icmp eq ptr %i.ad, null
  br i1 %.not97126, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ae = zext nneg i32 %i.z to i64               ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %i.af = phi ptr [ %i.ad, %.lr.ph ], [ %i.ar, %bb.m ] ; 13 uses
  %.075127 = phi ptr [ %i.u, %.lr.ph ], [ %i.aq, %bb.m ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %.not98 = icmp eq i64 %i.ah, %i.ae
  br i1 %.not98, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !22 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = shl nsw i32 %i.aj, 3
  %i.am = lshr i32 %i.ac, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.075127, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %.not97 = icmp eq ptr %i.ar, null
  br i1 %.not97, label %.thread, label %bb.j, !llvm.loop !43

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.as = sext i32 %i.aj to i64                   ; 2 uses
  %i.at = sub nsw i64 4, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ab, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  switch i64 %i.aw, label %.thread [
    i64 0, label %bb.o
    i64 64, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not101 = icmp eq i64 %i.ay, 0                 ; 2 uses
  br i1 %.not101, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !27
  %.not102 = icmp eq i64 %i.ay, %i.ba
  br i1 %.not102, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %.not103 = icmp eq i64 %i.bc, 0                 ; 2 uses
  br i1 %.not103, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !12
  %.not104 = icmp eq i64 %i.bc, %i.be
  br i1 %.not104, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.m, %bb.i, %bb.n, %bb.r, %bb.p
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 335, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 246, ptr noundef nonnull @.str.5, ptr noundef %i.bf) #5
  br label %bb.ao

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not105 = icmp eq i64 %i.aw, 0
  br i1 %.not105, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %i.bi = sub nsw i64 6, %i.as
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.0.copyload.i117 = load i16, ptr %i.au, align 1
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i117)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !30
  %.not107 = icmp eq i16 %rev.i.i, %i.bm
  br i1 %.not107, label %bb.w, label %bb.ao

bb.v:                                             ; preds = %bb.t
  %.not106 = icmp eq i64 %i.at, %i.bh
  br i1 %.not106, label %bb.w, label %bb.ao

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1 = phi ptr [ %i.bk, %bb.u ], [ %i.au, %bb.v ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.2 = phi ptr [ %i.bn, %bb.w ], [ %i.au, %bb.s ] ; 5 uses
  br i1 %.not101, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.2, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bq ; 2 uses
  %i.bs = icmp eq ptr %i.bo, %i.br
  br i1 %i.bs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.0.copyload.i118 = load i32, ptr %.2, align 1
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i118)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !32
  %.not110 = icmp eq i32 %i.bt, %i.bv
  br i1 %.not110, label %bb.ab, label %bb.ao

bb.aa:                                            ; preds = %bb.y
  %.not109 = icmp eq ptr %.2, %i.br
  br i1 %.not109, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3 = phi ptr [ %i.bo, %bb.z ], [ %.2, %bb.aa ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.3, i64 %i.bx
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.4 = phi ptr [ %i.by, %bb.ab ], [ %.2, %bb.x ] ; 3 uses
  br i1 %.not103, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ca
  %.not112 = icmp eq ptr %.4, %i.cb
  br i1 %.not112, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.4, i64 %i.cd
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.5 = phi ptr [ %i.ce, %bb.ae ], [ %.4, %bb.ac ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %.not113 = icmp eq ptr %.5, %i.cf
  br i1 %.not113, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.cg = call ptr @ossl_prov_ml_kem_new(ptr noundef %3, ptr noundef %4, i32 noundef %2) #5 ; 9 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = load i64, ptr %i.av, align 8, !tbaa !25
  %.not114 = icmp eq i64 %i.ci, 0
  br i1 %.not114, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = call ptr @ossl_ml_kem_set_seed(ptr noundef %i.cm, i64 noundef 64, ptr noundef nonnull %i.cg) #5
  %.not115 = icmp eq ptr %i.cn, null
  br i1 %.not115, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 381, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786691, ptr noundef nonnull @.str.6, ptr noundef %i.co) #5
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %.not116 = icmp eq i64 %i.cp, 0
  br i1 %.not116, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = call noalias ptr @CRYPTO_secure_malloc(i64 noundef %i.cp, ptr noundef nonnull @.str, i32 noundef 388) #5 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !51
  %i.cs = icmp eq ptr %i.cq, null
  br i1 %i.cs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 389, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !14
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 158, ptr noundef nonnull @.str.7, ptr noundef %i.ct) #5
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = load i64, ptr %i.ax, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.ag, %bb.af, %bb.ad, %bb.aa, %bb.z, %bb.v, %bb.u, %bb.h, %bb.e, %bb.d, %bb.c, %bb.am, %bb.aj, %.thread, %bb.g
  %.076 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %.thread ], [ %i.u, %bb.u ], [ %i.u, %bb.z ], [ %i.u, %bb.ad ], [ %i.u, %bb.af ], [ %i.u, %bb.ag ], [ %i.u, %bb.am ], [ null, %bb.c ], [ %i.u, %bb.aj ], [ %i.u, %bb.aa ], [ %i.u, %bb.v ], [ %i.u, %bb.an ], [ %i.u, %bb.ak ]
  %.074 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %.thread ], [ null, %bb.u ], [ null, %bb.z ], [ null, %bb.ad ], [ null, %bb.af ], [ null, %bb.ag ], [ %i.cg, %bb.am ], [ null, %bb.c ], [ %i.cg, %bb.aj ], [ null, %bb.aa ], [ null, %bb.v ], [ %i.cg, %bb.an ], [ %i.cg, %bb.ak ]
  %.073 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %.thread ], [ null, %bb.u ], [ null, %bb.z ], [ null, %bb.ad ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.am ], [ null, %bb.c ], [ null, %bb.aj ], [ null, %bb.aa ], [ null, %bb.v ], [ %i.cg, %bb.an ], [ %i.cg, %bb.ak ] ; 2 uses
  call void @CRYPTO_free(ptr noundef %.076, ptr noundef nonnull @.str, i32 noundef 400) #5
  call void @PKCS8_PRIV_KEY_INFO_free(ptr noundef nonnull %i.k) #5
  %i.cz = icmp eq ptr %.073, null
  br i1 %i.cz, label %bb.ap, label %ml_kem_get_codec.exit

bb.ap:                                            ; preds = %bb.ao
  call void @ossl_ml_kem_key_free(ptr noundef %.074) #5
  br label %ml_kem_get_codec.exit

ml_kem_get_codec.exit:                            ; preds = %bb.b, %bb.ao, %bb.ap, %switch.lookup, %bb.a
  %.077 = phi ptr [ null, %switch.lookup ], [ null, %bb.a ], [ %.073, %bb.ao ], [ null, %bb.ap ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.077
}

declare ptr @d2i_PKCS8_PRIV_KEY_INFO(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2
end_hunk_0
