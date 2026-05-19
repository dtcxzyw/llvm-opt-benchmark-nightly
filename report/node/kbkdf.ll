inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@kbkdf_derive:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !15
  %i.bk = tail call fastcc i32 @derive(ptr noundef %i.at, i32 noundef %i.au, ptr noundef %i.aw, i64 noundef %i.ax, ptr noundef %i.az, i64 noundef %i.bb, ptr noundef %i.bd, i64 noundef %i.bf, ptr noundef %i.ap, i64 noundef %i.ac, i32 noundef %.049, i32 noundef %i.bh, ptr noundef %1, i64 noundef %2, i32 noundef %i.bj)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %kmac_derive.exit
  %.051 = phi i32 [ %i.ab, %kmac_derive.exit ], [ %i.bk, %bb.s ]
  %.050 = phi ptr [ null, %kmac_derive.exit ], [ %i.ap, %bb.s ] ; 2 uses
  %.048 = phi i64 [ 0, %kmac_derive.exit ], [ %i.ac, %bb.s ] ; 2 uses
  %.not64.not = icmp eq i32 %.051, 0
  br i1 %.not64.not, label %.thread, label %bb.u

.thread.sink.split:                               ; preds = %bb.q, %bb.o
  %.sink79 = phi i32 [ 336, %bb.o ], [ 344, %bb.q ]
  %.sink = phi i32 [ 154, %bb.o ], [ 105, %bb.q ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink79, ptr noundef nonnull @__func__.kbkdf_derive) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef %.sink, ptr noundef null) #6
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r, %bb.n, %bb.t
  %.04874 = phi i64 [ %.048, %bb.t ], [ %i.ac, %bb.r ], [ 0, %bb.n ], [ %i.ac, %.thread.sink.split ]
  %.05072 = phi ptr [ %.050, %bb.t ], [ null, %bb.r ], [ null, %bb.n ], [ null, %.thread.sink.split ]
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef %2) #6
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t
  %.04873 = phi i64 [ %.04874, %.thread ], [ %.048, %bb.t ]
  %.05071 = phi ptr [ %.05072, %.thread ], [ %.050, %bb.t ]
  %.05169 = phi i32 [ 0, %.thread ], [ 1, %bb.t ]
  call void @CRYPTO_clear_free(ptr noundef %.05071, i64 noundef %.04873, ptr noundef nonnull @.str, i32 noundef 362) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.u, %bb.i, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ %.05169, %bb.u ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kbkdf_settable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kbkdf_settable_ctx_params.known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kbkdf_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.b) #6
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !33
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.g = tail call i32 @ossl_prov_macctx_load_from_params(ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.c) #6
  %.not72 = icmp eq i32 %i.g, 0
  br i1 %.not72, label %ossl_param_is_empty.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not73 = icmp eq ptr %i.h, null
  br i1 %.not73, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !18
  %i.j = tail call ptr @EVP_MAC_CTX_get0_mac(ptr noundef nonnull %i.h) #6
  %i.k = tail call i32 @EVP_MAC_is_a(ptr noundef %i.j, ptr noundef nonnull @.str.14) #6
  %.not74 = icmp eq i32 %i.k, 0
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.m = tail call ptr @EVP_MAC_CTX_get0_mac(ptr noundef %i.l) #6
  %i.n = tail call i32 @EVP_MAC_is_a(ptr noundef %i.m, ptr noundef nonnull @.str.15) #6
  %.not75 = icmp eq i32 %i.n, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 1, ptr %i.i, align 4, !tbaa !18
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.p = tail call ptr @EVP_MAC_CTX_get0_mac(ptr noundef %i.o) #6
  %i.q = tail call i32 @EVP_MAC_is_a(ptr noundef %i.p, ptr noundef nonnull @.str.16) #6
  %.not76 = icmp eq i32 %i.q, 0
  br i1 %.not76, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.s = tail call ptr @EVP_MAC_CTX_get0_mac(ptr noundef %i.r) #6
  %i.t = tail call i32 @EVP_MAC_is_a(ptr noundef %i.s, ptr noundef nonnull @.str.17) #6
  %.not77 = icmp eq i32 %i.t, 0
  br i1 %.not77, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @__func__.kbkdf_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 151, ptr noundef null) #6
  br label %ossl_param_is_empty.exit.thread

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.c
  %i.u = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #6 ; 3 uses
  %.not78 = icmp eq ptr %i.u, null
  br i1 %.not78, label %.critedge91, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull @.str.18, ptr noundef %i.w, i64 noundef %i.y) #6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge91.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !36
  %i.ad = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull @.str.19, ptr noundef %i.ab, i64 noundef %i.ac) #6
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge91.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.l
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 406, ptr noundef nonnull @__func__.kbkdf_set_ctx_params) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef null) #6
  br label %ossl_param_is_empty.exit.thread

.critedge91.sink.split:                           ; preds = %bb.l, %bb.k
  %.sink = phi i32 [ 0, %bb.k ], [ 1, %bb.l ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.af, align 8, !tbaa !28
  br label %.critedge91

.critedge91:                                      ; preds = %.critedge91.sink.split, %bb.j
  %i.ag = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #6 ; 2 uses
  %.not79 = icmp eq ptr %i.ag, null
  br i1 %.not79, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge91
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = tail call i32 @ossl_param_get1_octet_string(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai) #6
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %ossl_param_is_empty.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge91
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = tail call i32 @ossl_param_get1_octet_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am) #6
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %ossl_param_is_empty.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = tail call i32 @ossl_param_get1_concat_octet_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 0) #6
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %ossl_param_is_empty.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = tail call i32 @ossl_param_get1_octet_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au) #6
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %ossl_param_is_empty.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #6 ; 2 uses
  %.not80 = icmp eq ptr %i.ax, null
  br i1 %.not80, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #6
  %.not81 = icmp eq i32 %i.az, 0
  br i1 %.not81, label %ossl_param_is_empty.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ba = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.13) #6 ; 2 uses
  %.not82 = icmp eq ptr %i.ba, null
  br i1 %.not82, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.bb = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a) #6
  %.not83 = icmp eq i32 %i.bb, 0
  br i1 %.not83, label %.critedge93, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !5   ; 3 uses
  %2 = call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 29)
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %bb.v, label %.critedge93

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.be = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #6 ; 2 uses
  %.not84 = icmp eq ptr %i.be, null
  br i1 %.not84, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf) #6
  %.not85 = icmp eq i32 %i.bg, 0
  br i1 %.not85, label %ossl_param_is_empty.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  %.not86 = icmp eq ptr %i.bh, null
  br i1 %.not86, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %.not87 = icmp eq i64 %i.bj, 0
  br i1 %.not87, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18
  %.not88 = icmp eq i32 %i.bl, 0
  br i1 %.not88, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.bn = load i64, ptr %i.am, align 8, !tbaa !23
  %i.bo = call fastcc i32 @kmac_init(ptr noundef %i.bh, ptr noundef %i.bm, i64 noundef %i.bn)
  %.not89 = icmp eq i32 %i.bo, 0
  br i1 %.not89, label %ossl_param_is_empty.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ab
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !19
  %.pre95 = load i64, ptr %i.bi, align 8, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa
  %i.bp = phi i64 [ %.pre95, %._crit_edge ], [ %i.bj, %bb.aa ]
  %i.bq = phi ptr [ %.pre, %._crit_edge ], [ %i.bh, %bb.aa ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20
  %i.bt = call i32 @EVP_MAC_init(ptr noundef %i.bq, ptr noundef %i.bs, i64 noundef %i.bp, ptr noundef null) #6
  %.not90 = icmp eq i32 %i.bt, 0
  br i1 %.not90, label %ossl_param_is_empty.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.y
  br label %ossl_param_is_empty.exit.thread

.critedge93:                                      ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.a, %bb.ab, %bb.ac, %bb.x, %.critedge93, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.b, %ossl_param_is_empty.exit, %bb.ad, %.critedge, %bb.i
  %.1 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 0, %bb.b ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 1, %bb.ad ], [ 0, %bb.x ], [ 0, %bb.r ], [ 0, %.critedge93 ], [ 0, %bb.p ], [ 0, %.critedge ], [ 0, %bb.i ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kbkdf_gettable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @kbkdf_gettable_ctx_params.known_gettable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kbkdf_get_ctx_params(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef -1) #6
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @EVP_MAC_CTX_dup(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_memdup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @EVP_MAC_CTX_free(ptr noundef) local_unnamed_addr #3

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @EVP_MAC_CTX_get_mac_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @derive(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull %8, i64 noundef range(i64 1, 0) %9, i32 noundef %10, i32 noundef %11, ptr noundef writeonly captures(none) %12, i64 noundef range(i64 1, 0) %13, i32 noundef %14) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 %10, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %.not = icmp eq i32 %10, 0                      ; 2 uses
  %.not53 = icmp eq i64 %3, 0
  br i1 %.not53, label %.peel.begin, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %2, i64 %3, i1 false)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.b, %bb.a
  %i.d = icmp eq i32 %1, 1                        ; 2 uses
  %i.e = sdiv i32 %14, 8                          ; 2 uses
  %i.f = sub nsw i32 4, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %.not57 = icmp eq i32 %11, 0                    ; 2 uses
  store i32 16777216, ptr %i.c, align 4, !tbaa !5
  %i.j = tail call ptr @EVP_MAC_CTX_dup(ptr noundef %0) #6 ; 16 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.peel.begin
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef nonnull %8, i64 noundef %3) #6
  %.not54.peel = icmp eq i32 %i.l, 0
  br i1 %.not54.peel, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, i64 noundef %i.i) #6
  %.not55.peel = icmp eq i32 %i.m, 0
  br i1 %.not55.peel, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef %4, i64 noundef %5) #6
  %.not56.peel = icmp eq i32 %i.n, 0
  br i1 %.not56.peel, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, i64 noundef 1) #6
  %.not58.peel = icmp eq i32 %i.o, 0
  br i1 %.not58.peel, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef %6, i64 noundef %7) #6
  %.not59.peel = icmp eq i32 %i.p, 0
  br i1 %.not59.peel, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = call i32 @EVP_MAC_update(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i64 noundef 4) #6
  %.not60.peel = icmp eq i32 %i.q, 0
  br i1 %.not60.peel, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.r = call i32 @EVP_MAC_final(ptr noundef nonnull %i.j, ptr noundef nonnull %8, ptr noundef null, i64 noundef %9) #6
  %.not61.peel = icmp eq i32 %i.r, 0
  br i1 %.not61.peel, label %.loopexit, label %bb.m
end_hunk_0
