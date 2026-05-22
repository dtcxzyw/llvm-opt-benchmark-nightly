inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@kmac_free:bb.a
; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kmac_init(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @kmac_set_ctx_params(ptr noundef nonnull %0, ptr noundef %3)
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @kmac_setkey(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2)
  %.not36 = icmp eq i32 %i.e, 0
  br i1 %.not36, label %bb.t, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 323, ptr noundef nonnull @__func__.kmac_init) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 114, ptr noundef null) #5
  br label %bb.t

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.j) #5
  %i.l = tail call i32 @EVP_DigestInit_ex(ptr noundef %i.i, ptr noundef %i.k, ptr noundef null) #5
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.j) #5
  %i.n = tail call i32 @EVP_MD_get_block_size(ptr noundef %i.m) #5 ; 4 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 332, ptr noundef nonnull @__func__.kmac_init) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 166, ptr noundef null) #5
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.p = zext nneg i32 %i.n to i64                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %4, ptr noundef nonnull align 16 dereferenceable(80) @__const.kmac_init.cparams, i64 80, i1 false)
  %i.t = call i32 @kmac_set_ctx_params(ptr noundef nonnull %0, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %.pre = load i64, ptr %i.q, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.u = phi i64 [ %i.r, %bb.j ], [ %.pre, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.w = shl i64 %i.u, 32
  %sext57.i = add i64 %i.w, 34359738368
  %i.x = ashr exact i64 %sext57.i, 32
  %i.y = add nsw i64 %i.p, -1                     ; 2 uses
  %i.z = add nsw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = urem i64 %i.z, %i.p
  %i.ab = sub nsw i64 %i.z, %i.aa                 ; 2 uses
  %i.ac = call noalias ptr @CRYPTO_malloc(i64 noundef %i.ab, ptr noundef nonnull @.str.2, i32 noundef 351) #5 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !19  ; 3 uses
  %i.af = icmp samesign ult i32 %i.n, 256
  br i1 %i.af, label %bb.n, label %bytepad.exit, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 1, ptr %i.ac, align 1, !tbaa !23
  %i.ah = trunc nuw i32 %i.n to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ai, ptr noundef nonnull align 1 dereferenceable(6) @kmac_string, i64 6, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %.not44 = icmp eq i64 %i.ae, 0
  br i1 %.not44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.v, i64 %i.ae, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi ptr [ %i.ak, %bb.o ], [ %i.aj, %bb.n ]
  %.0.fr.i = freeze ptr %.0.i                     ; 2 uses
  %i.al = ptrtoint ptr %.0.fr.i to i64
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = trunc i64 %i.an to i32
  %sext.i = shl i64 %i.an, 32
  %i.ap = ashr exact i64 %sext.i, 32
  %i.aq = add nsw i64 %i.ap, %i.y                 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.p
  %i.as = sub nuw nsw i64 %i.aq, %i.ar            ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %.not.i = icmp eq i32 %i.at, %i.ao
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = sub i64 %i.as, %i.an
  %sext53.i = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext53.i, 32
  call void @llvm.memset.p0.i64(ptr align 1 %.0.fr.i, i8 0, i64 %i.av, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aw = call i32 @EVP_DigestUpdate(ptr noundef %i.b, ptr noundef nonnull %i.ac, i64 noundef %i.ab) #5
  %.not40 = icmp eq i32 %i.aw, 0
  br i1 %.not40, label %bytepad.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.ba = call i32 @EVP_DigestUpdate(ptr noundef %i.b, ptr noundef nonnull %i.ax, i64 noundef %i.az) #5
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  br label %bytepad.exit

bytepad.exit:                                     ; preds = %bb.m, %bb.s, %bb.r
  %i.bd = phi i32 [ 0, %bb.r ], [ %i.bc, %bb.s ], [ 0, %bb.m ]
  call void @CRYPTO_free(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.2, i32 noundef 358) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.g, %bb.d, %bb.a, %bb.b, %bytepad.exit, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.g ], [ %i.bd, %bytepad.exit ], [ 0, %bb.l ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @kmac_update(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call i32 @EVP_DigestUpdate(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #5
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kmac_final(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.d = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.c, label %.preheader.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = shl i64 %i.h, 3                          ; 9 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.preheader.preheader.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.not21 = icmp ult i64 %i.i, 256
  br i1 %.not21, label %get_encode_size.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %.not22 = icmp ult i64 %i.i, 65536
  br i1 %.not22, label %get_encode_size.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %.not23 = icmp ult i64 %i.i, 16777216
  br i1 %.not23, label %get_encode_size.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %.not24 = icmp ult i64 %i.i, 4294967296
  br i1 %.not24, label %get_encode_size.exit.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %.not25 = icmp ult i64 %i.i, 1099511627776
  br i1 %.not25, label %get_encode_size.exit.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %.not26 = icmp ult i64 %i.i, 281474976710656
  br i1 %.not26, label %get_encode_size.exit.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %.not27 = icmp ult i64 %i.i, 72057594037927936
  %spec.select = select i1 %.not27, i32 7, i32 8
  br label %get_encode_size.exit.i

get_encode_size.exit.i:                           ; preds = %.lr.ph.i.i.6, %.lr.ph.i.i.5, %.lr.ph.i.i.4, %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  %4 = phi i1 [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i.1 ], [ false, %.lr.ph.i.i.2 ], [ true, %.lr.ph.i.i.3 ], [ true, %.lr.ph.i.i.4 ], [ true, %.lr.ph.i.i.5 ], [ true, %.lr.ph.i.i.6 ]
  %.lcssa = phi i32 [ 1, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i.1 ], [ 3, %.lr.ph.i.i.2 ], [ 4, %.lr.ph.i.i.3 ], [ 5, %.lr.ph.i.i.4 ], [ 6, %.lr.ph.i.i.5 ], [ %spec.select, %.lr.ph.i.i.6 ] ; 2 uses
  %i.j = zext nneg i32 %.lcssa to i64
  br i1 %4, label %right_encode.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b, %get_encode_size.exit.i, %bb.c
  %i.k = phi i64 [ %i.i, %get_encode_size.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.l = phi i64 [ %i.j, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.07.lcssa.i22.i = phi i32 [ %.lcssa, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  br label %.preheader.i

right_encode.exit.thread:                         ; preds = %get_encode_size.exit.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 538, ptr noundef nonnull @__func__.right_encode) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 202, ptr noundef null) #5
  br label %bb.f

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.l, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.01618.i = phi i64 [ %i.k, %.preheader.preheader.i ], [ %i.o, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.m = trunc i64 %.01618.i to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !23
  %i.o = lshr i64 %.01618.i, 8
  %i.p = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.p, label %.preheader.i, label %bb.d, !llvm.loop !25

bb.d:                                             ; preds = %.preheader.i
  %i.q = trunc nuw nsw i32 %.07.lcssa.i22.i to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 %i.q, ptr %i.r, align 1, !tbaa !23
  %i.s = add nuw nsw i32 %.07.lcssa.i22.i, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = call i32 @EVP_DigestUpdate(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.t) #5
  %.not14 = icmp eq i32 %i.u, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = call i32 @EVP_DigestFinalXOF(ptr noundef %i.c, ptr noundef %1, i64 noundef %i.w) #5
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  br label %bb.f

bb.f:                                             ; preds = %right_encode.exit.thread, %bb.e, %bb.d
  %i.aa = phi i32 [ 0, %bb.d ], [ 0, %right_encode.exit.thread ], [ %i.z, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  store i64 %i.ac, ptr %2, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.aa, %bb.f ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kmac_gettable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @known_gettable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kmac_get_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.5) #5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call i32 @OSSL_PARAM_set_size_t(ptr noundef nonnull %i.a, i64 noundef %i.c) #5
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @OSSL_PARAM_locate(ptr noundef %1, ptr noundef nonnull @.str.6) #5 ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.f) #5
  %i.h = tail call i32 @EVP_MD_get_block_size(ptr noundef %i.g) #5
  %i.i = tail call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %i.e, i32 noundef %i.h) #5
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kmac_settable_ctx_params(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  ret ptr @known_settable_ctx_params
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kmac_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %ossl_param_is_empty.exit.thread, label %ossl_param_is_empty.exit

ossl_param_is_empty.exit:                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !27
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ossl_param_is_empty.exit.thread, label %bb.b

bb.b:                                             ; preds = %ossl_param_is_empty.exit
  %i.d = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %ossl_param_is_empty.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #5 ; 2 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.h = call i32 @OSSL_PARAM_get_size_t(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #5
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 2097151
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 474, ptr noundef nonnull @__func__.kmac_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 217, ptr noundef null) #5
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.k, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.l = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #5 ; 3 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = call fastcc i32 @kmac_setkey(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.p)
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %ossl_param_is_empty.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = call ptr @OSSL_PARAM_locate_const(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #5 ; 3 uses
  %.not32 = icmp eq ptr %i.r, null
  br i1 %.not32, label %ossl_param_is_empty.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 7 uses
  %i.u = icmp ugt i64 %i.t, 512
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 497, ptr noundef nonnull @__func__.kmac_set_ctx_params) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 111, ptr noundef null) #5
  br label %ossl_param_is_empty.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %get_encode_size.exit.i

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.w, align 8, !tbaa !20
  br label %ossl_param_is_empty.exit.thread

get_encode_size.exit.i:                           ; preds = %bb.n
  %.not.i.i = icmp eq i64 %i.t, 0
  %.not45 = icmp ult i64 %i.t, 32
  %spec.select = select i1 %.not45, i32 1, i32 2
  %.07.lcssa.i.i = select i1 %.not.i.i, i32 1, i32 %spec.select ; 2 uses
  %i.aa = zext nneg i32 %.07.lcssa.i.i to i64     ; 10 uses
  %i.ab = add nuw nsw i64 %i.t, 1
  %i.ac = add nuw nsw i64 %i.ab, %i.aa            ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.ac, 516
  br i1 %i.ad, label %encode_string.exit, label %bb.p

end_hunk_0
