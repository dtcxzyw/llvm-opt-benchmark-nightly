Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ml_kem_codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@ossl_ml_kem_d2i_PKCS8:bb.a
bb.ag:                                            ; preds = %bb.af
  %i.cg = call ptr @ossl_prov_ml_kem_new(ptr noundef %3, ptr noundef %4, i32 noundef %2) #5 ; 9 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = load i64, ptr %i.av, align 8, !tbaa !27
  %.not114 = icmp eq i64 %i.ci, 0
  br i1 %.not114, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = call ptr @ossl_ml_kem_set_seed(ptr noundef %i.cm, i64 noundef 64, ptr noundef nonnull %i.cg) #5
  %.not115 = icmp eq ptr %i.cn, null
  br i1 %.not115, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 381, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !16
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786691, ptr noundef nonnull @.str.6, ptr noundef %i.co) #5
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %.not116 = icmp eq i64 %i.cp, 0
  br i1 %.not116, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = call noalias ptr @CRYPTO_malloc(i64 noundef %i.cp, ptr noundef nonnull @.str, i32 noundef 388) #5 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 176
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !53
  %i.cs = icmp eq ptr %i.cq, null
  br i1 %i.cs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 389, ptr noundef nonnull @__func__.ossl_ml_kem_d2i_PKCS8) #5
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !16
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 158, ptr noundef nonnull @.str.7, ptr noundef %i.ct) #5
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = load i64, ptr %i.ax, align 8, !tbaa !28
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

declare i32 @PKCS8_pkey_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_prov_ctx_get_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ossl_ml_common_pkcs8_fmt_order(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_ALGOR_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ossl_prov_ml_kem_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ossl_ml_kem_set_seed(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ossl_ml_kem_i2d_pubkey(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 413, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_pubkey) #5
  %i.c = load ptr, ptr %0, align 8, !tbaa !41
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 220, ptr noundef nonnull @.str.8, ptr noundef %i.d) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 421) #5 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.j = tail call i32 @ossl_ml_kem_encode_public_key(ptr noundef nonnull %i.h, i64 noundef %i.g, ptr noundef nonnull %0) #5
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_pubkey) #5
  %i.k = load ptr, ptr %0, align 8, !tbaa !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786691, ptr noundef nonnull @.str.9, ptr noundef %i.l) #5
  %i.m = load ptr, ptr %1, align 8, !tbaa !17
  tail call void @CRYPTO_free(ptr noundef %i.m, ptr noundef nonnull @.str, i32 noundef 427) #5
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.n = trunc i64 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @ossl_ml_kem_encode_public_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_ml_kem_i2d_prvkey(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %switch.tableidx = add i32 %i.c, -1454          ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 3
  br i1 %i.d, label %switch.lookup, label %ml_kem_get_codec.exit

switch.lookup:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 452, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_prvkey) #5
  %i.g = load ptr, ptr %0, align 8, !tbaa !41
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 221, ptr noundef nonnull @.str.10, ptr noundef %i.h) #5
  br label %ml_kem_get_codec.exit

bb.c:                                             ; preds = %switch.lookup
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_ml_kem_i2d_prvkey, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.j = tail call ptr @ossl_prov_ctx_get_param(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = tail call ptr @ossl_ml_common_pkcs8_fmt_order(ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull @.str.12, ptr noundef %i.j) #5 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ml_kem_get_codec.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20   ; 6 uses
  %cond122 = icmp eq ptr %i.p, null
  br i1 %cond122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %.not97 = icmp eq ptr %i.r, null
  br i1 %.not97, label %.lr.ph.split.us, label %.thread

3:                                                ; preds = %.lr.ph.split.us
  %4 = getelementptr inbounds nuw i8, ptr %.084123.us, i64 16 ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !20       ; 2 uses
  %cond = icmp eq ptr %5, null
  br i1 %cond, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !54

.lr.ph.split.us:                                  ; preds = %.lr.ph, %3
  %i.s = phi ptr [ %5, %3 ], [ %i.p, %.lr.ph ]    ; 3 uses
  %.084123.us = phi ptr [ %4, %3 ], [ %i.n, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.thread.thread, label %3

.thread.thread:                                   ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  br label %bb.d

.thread:                                          ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  switch i64 %.pre, label %.loopexit [
    i64 0, label %bb.d
    i64 64, label %bb.d
  ]

bb.d:                                             ; preds = %.thread.thread, %.thread, %.thread
  %i.y = phi ptr [ %i.w, %.thread.thread ], [ %i.x, %.thread ], [ %i.x, %.thread ]
  %.us-phi137 = phi ptr [ %i.s, %.thread.thread ], [ %i.p, %.thread ], [ %i.p, %.thread ] ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %.not100 = icmp eq i64 %i.aa, 0
  br i1 %.not100, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29
  %.not101 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not101, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 80 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %.not102 = icmp eq i64 %i.ae, 0
  br i1 %.not102, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %.not103 = icmp eq i64 %i.ae, %i.ag
  br i1 %.not103, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %3, %.preheader, %.thread, %bb.g, %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_prvkey) #5
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 246, ptr noundef nonnull @.str.13, ptr noundef %i.ah) #5
  br label %.thread116

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp eq ptr %1, null
  br i1 %i.al, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  %sext = shl i64 %i.aj, 32
  %i.am = ashr exact i64 %sext, 32                ; 2 uses
  %i.an = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.am, ptr noundef nonnull @.str, i32 noundef 486) #5 ; 19 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread116, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !24
  switch i32 %i.aq, label %bb.m [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 4, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.an, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = trunc i32 %i.aw to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  store i16 %rev.i.i, ptr %i.an, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 499, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_prvkey) #5
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786691, ptr noundef nonnull @.str.14, ptr noundef %i.az) #5
  br label %.thread116

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.082 = phi ptr [ %i.au, %bb.k ], [ %i.ay, %bb.l ], [ %i.an, %bb.j ] ; 4 uses
  %i.ba = load i64, ptr %i.y, align 8, !tbaa !27
  %.not104 = icmp eq i64 %i.ba, 0
  br i1 %.not104, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.082, i64 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 32 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bd
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 24
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !32
  %rev.i.i113 = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  store i16 %rev.i.i113, ptr %.082, align 1
  %.pre125 = load i64, ptr %i.bc, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = phi i64 [ %.pre125, %bb.p ], [ %i.bd, %bb.o ]
  %.1 = phi ptr [ %i.bb, %bb.p ], [ %.082, %bb.o ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bi
  %.not105 = icmp eq ptr %.1, %i.bj
  br i1 %.not105, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call i32 @ossl_ml_kem_encode_seed(ptr noundef nonnull %.1, i64 noundef 64, ptr noundef nonnull %0) #5
  %.not106 = icmp eq i32 %i.bk, 0
  br i1 %.not106, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 514, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_prvkey) #5
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786691, ptr noundef nonnull @.str.14, ptr noundef %i.bl) #5
  br label %.thread116

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.1, i64 64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.2 = phi ptr [ %i.bm, %bb.t ], [ %.082, %bb.n ] ; 4 uses
  %i.bn = load i64, ptr %i.z, align 8, !tbaa !28
  %.not107 = icmp eq i64 %i.bn, 0
  br i1 %.not107, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.2, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 56 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bq
  %i.bs = icmp eq ptr %i.bo, %i.br
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 48
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !34
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %i.bv, ptr %.2, align 1
  %.pre126 = load i64, ptr %i.bp, align 8, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bw = phi i64 [ %.pre126, %bb.w ], [ %i.bq, %bb.v ]
  %.3 = phi ptr [ %i.bo, %bb.w ], [ %.2, %bb.v ]  ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bw
  %.not108 = icmp eq ptr %.3, %i.bx
  br i1 %.not108, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !29
  %i.ca = tail call i32 @ossl_ml_kem_encode_private_key(ptr noundef nonnull %.3, i64 noundef %i.bz, ptr noundef nonnull %0) #5
  %.not109 = icmp eq i32 %i.ca, 0
  br i1 %.not109, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 526, ptr noundef nonnull @__func__.ossl_ml_kem_i2d_prvkey) #5
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786691, ptr noundef nonnull @.str.14, ptr noundef %i.cb) #5
  br label %.thread116

bb.aa:                                            ; preds = %bb.y
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cc
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %.4 = phi ptr [ %i.cd, %bb.aa ], [ %.2, %bb.u ] ; 4 uses
  %i.ce = load i64, ptr %i.ad, align 8, !tbaa !30
  %.not110 = icmp eq i64 %i.ce, 0
  br i1 %.not110, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %.us-phi137, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cg
  %.not111 = icmp eq ptr %.4, %i.ch
  br i1 %.not111, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.ck = tail call i32 @ossl_ml_kem_encode_public_key(ptr noundef %.4, i64 noundef %i.cj, ptr noundef nonnull %0) #5
  %.not112 = icmp eq i32 %i.ck, 0
end_hunk_0
