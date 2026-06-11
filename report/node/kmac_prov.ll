inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@kmac_final:bb.a
  br i1 %.not23, label %get_encode_size.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %.not24 = icmp ult i64 %i.i, 4294967296
  br i1 %.not24, label %right_encode.exit.thread.critedge, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %.not25 = icmp ult i64 %i.i, 1099511627776
  br i1 %.not25, label %right_encode.exit.thread.critedge, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %.not26 = icmp ult i64 %i.i, 281474976710656
  br i1 %.not26, label %right_encode.exit.thread.critedge, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %.not27 = icmp ult i64 %i.i, 72057594037927936
  %spec.select = select i1 %.not27, i32 7, i32 8
  br label %right_encode.exit.thread.critedge

get_encode_size.exit.i:                           ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  %.lcssa = phi i32 [ 1, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i.1 ], [ 3, %.lr.ph.i.i.2 ] ; 2 uses
  %i.j = zext nneg i32 %.lcssa to i64
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %get_encode_size.exit.i, %bb.b, %bb.c
  %i.k = phi i64 [ %i.i, %get_encode_size.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.l = phi i64 [ %i.j, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.07.lcssa.i22.i = phi i32 [ %.lcssa, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  br label %.preheader.i

right_encode.exit.thread.critedge:                ; preds = %.lr.ph.i.i.6, %.lr.ph.i.i.5, %.lr.ph.i.i.4, %.lr.ph.i.i.3
  %.lcssa.ph = phi i32 [ 4, %.lr.ph.i.i.3 ], [ %spec.select, %.lr.ph.i.i.6 ], [ 6, %.lr.ph.i.i.5 ], [ 5, %.lr.ph.i.i.4 ]
  %i.m = zext nneg i32 %.lcssa.ph to i64          ; 0 uses
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 538, ptr noundef nonnull @__func__.right_encode) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 202, ptr noundef null) #5
  br label %bb.f

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.l, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %.01618.i = phi i64 [ %i.k, %.preheader.preheader.i ], [ %i.p, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.n = trunc i64 %.01618.i to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i
  store i8 %i.n, ptr %i.o, align 1, !tbaa !23
  %i.p = lshr i64 %.01618.i, 8
  %i.q = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.q, label %.preheader.i, label %bb.d, !llvm.loop !25

bb.d:                                             ; preds = %.preheader.i
  %i.r = trunc nuw nsw i32 %.07.lcssa.i22.i to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 %i.r, ptr %i.s, align 1, !tbaa !23
  %i.t = add nuw nsw i32 %.07.lcssa.i22.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = call i32 @EVP_DigestUpdate(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.u) #5
  %.not14 = icmp eq i32 %i.v, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24
  %i.y = call i32 @EVP_DigestFinalXOF(ptr noundef %i.c, ptr noundef %1, i64 noundef %i.x) #5
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  br label %bb.f

bb.f:                                             ; preds = %right_encode.exit.thread.critedge, %bb.e, %bb.d
  %i.ab = phi i32 [ 0, %bb.d ], [ 0, %right_encode.exit.thread.critedge ], [ %i.aa, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  store i64 %i.ad, ptr %2, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kmac_gettable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
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
define internal noundef nonnull ptr @kmac_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
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
  br i1 %i.z, label %bb.o, label %get_encode_size.exit.i.a

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.w, align 8, !tbaa !20
  br label %ossl_param_is_empty.exit.thread

get_encode_size.exit.i.a:                         ; preds = %bb.n
  %.not.i.i = icmp eq i64 %i.t, 0
  %.not45 = icmp ult i64 %i.t, 32
  %spec.select = select i1 %.not45, i32 1, i32 2
  %.07.lcssa.i.i = select i1 %.not.i.i, i32 1, i32 %spec.select ; 2 uses
  %2 = zext nneg i32 %.07.lcssa.i.i to i64        ; 10 uses
  %3 = add nuw nsw i64 %i.t, 1
  %4 = add nuw nsw i64 %3, %2                     ; 2 uses
  %5 = icmp samesign ugt i64 %4, 516
  br i1 %5, label %encode_string.exit, label %bb.p

bb.p:                                             ; preds = %get_encode_size.exit.i.a
  %6 = trunc nuw nsw i32 %.07.lcssa.i.i to i8
  store i8 %6, ptr %i.v, align 1, !tbaa !23
  %.tr = trunc i64 %i.t to i8
  %7 = shl i8 %.tr, 3
  %8 = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  store i8 %7, ptr %8, align 1, !tbaa !23
  %9 = add nsw i64 %2, -1                         ; 2 uses
  %.not.i = icmp eq i64 %9, 0
  br i1 %.not.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %10 = lshr i64 %i.t, 5
  %11 = trunc nuw i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.v, i64 %9
  store i8 %11, ptr %12, align 1, !tbaa !23
  %i.aa = add nsw i64 %2, -2                      ; 2 uses
  %.not.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.1, label %bb.v, label %13

13:                                               ; preds = %bb.q
  %14 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  store i8 0, ptr %14, align 1, !tbaa !23
  %15 = add nsw i64 %2, -3                        ; 2 uses
  %.not.i.2 = icmp eq i64 %15, 0
  br i1 %.not.i.2, label %bb.v, label %bb.r

bb.r:                                             ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %i.v, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !23
  %17 = add nsw i64 %2, -4                        ; 2 uses
  %.not.i.3.a = icmp eq i64 %17, 0
  br i1 %.not.i.3.a, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %17
  store i8 0, ptr %i.ab, align 1, !tbaa !23
  %i.ac = add nsw i64 %2, -5                      ; 2 uses
  %.not.i.4 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.4, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %18 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  store i8 0, ptr %18, align 1, !tbaa !23
  %19 = add nsw i64 %2, -6                        ; 2 uses
  %.not.i.5 = icmp eq i64 %19, 0
  br i1 %.not.i.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %19
  store i8 0, ptr %i.ad, align 1, !tbaa !23
  %i.ae = add nsw i64 %2, -7                      ; 2 uses
  %.not.i.6 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.6, label %bb.v, label %20

20:                                               ; preds = %bb.u
  %21 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  store i8 0, ptr %21, align 1, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %20, %bb.u, %bb.t, %bb.s, %bb.r, %13, %bb.q, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.y, i64 range(i64 0, 513) %i.t, i1 false)
  store i64 %4, ptr %i.w, align 8, !tbaa !20
  br label %ossl_param_is_empty.exit.thread

encode_string.exit:                               ; preds = %get_encode_size.exit.i.a
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 575, ptr noundef nonnull @__func__.encode_string) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 202, ptr noundef null) #5
  br label %ossl_param_is_empty.exit.thread

.critedge:                                        ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %ossl_param_is_empty.exit.thread

ossl_param_is_empty.exit.thread:                  ; preds = %bb.o, %bb.v, %bb.a, %bb.k, %encode_string.exit, %bb.j, %.critedge, %bb.c, %ossl_param_is_empty.exit, %bb.m
  %.1 = phi i32 [ 1, %ossl_param_is_empty.exit ], [ 0, %bb.m ], [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.critedge ], [ 0, %encode_string.exit ], [ 1, %bb.a ], [ 1, %bb.v ], [ 1, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @kmac256_new(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc ptr @kmac_fetch_new(ptr noundef %0, ptr noundef nonnull @kmac256_new.kmac256_params)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @kmac_fetch_new(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @kmac_new(ptr noundef %0) ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %0) #5
  %i.e = tail call i32 @ossl_prov_digest_load_from_params(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef %i.d) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %kmac_free.exit, label %bb.c

kmac_free.exit:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  tail call void @EVP_MD_CTX_free(ptr noundef %i.g) #5
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.c) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef %i.j) #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.k, i64 noundef %i.m) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i32 noundef 163) #5
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.c) #5
  %i.o = tail call i32 @EVP_MD_get_size(ptr noundef %i.n) #5 ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %kmac_free.exit15, label %bb.d

kmac_free.exit15:                                 ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  tail call void @EVP_MD_CTX_free(ptr noundef %i.r) #5
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.c) #5
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.s, i64 noundef %i.u) #5
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.v, i64 noundef %i.x) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i32 noundef 163) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i32 %i.o to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %kmac_free.exit15, %kmac_free.exit
  %.0 = phi ptr [ null, %kmac_free.exit ], [ null, %kmac_free.exit15 ], [ %i.a, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @kmac_new(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_prov_is_running() #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 1256, ptr noundef nonnull @.str.2, i32 noundef 179) #5 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_MD_CTX_new() #5       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %kmac_free.exit, label %bb.d

kmac_free.exit:                                   ; preds = %bb.c
  tail call void @EVP_MD_CTX_free(ptr noundef null) #5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @ossl_prov_digest_reset(ptr noundef nonnull %i.g) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef %i.j) #5
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 740
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.k, i64 noundef %i.m) #5
  tail call void @CRYPTO_free(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2, i32 noundef 163) #5
  br label %.split

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.b, align 8, !tbaa !9
  br label %.split

.split:                                           ; preds = %bb.b, %kmac_free.exit, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.b, %bb.d ], [ null, %kmac_free.exit ], [ null, %bb.b ]
  ret ptr %.0
}

declare i32 @ossl_prov_digest_load_from_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ossl_prov_ctx_get0_libctx(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_prov_digest_md(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ossl_prov_is_running() local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @EVP_MD_CTX_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_prov_digest_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #3

declare void @ossl_prov_digest_reset(ptr noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @kmac_setkey(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [516 x i8], align 16              ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call ptr @ossl_prov_digest_md(ptr noundef nonnull %i.b) #5
  %i.d = tail call i32 @EVP_MD_get_block_size(ptr noundef %i.c) #5 ; 5 uses
  %i.e = add i64 %2, -513
  %or.cond = icmp ult i64 %i.e, -509
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef nonnull @__func__.kmac_setkey) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 105, ptr noundef null) #5
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.d, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 292, ptr noundef nonnull @__func__.kmac_setkey) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 166, ptr noundef null) #5
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = zext nneg i32 %i.d to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %bb.m, label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %bb.e
  %.not = icmp ult i64 %2, 32
  %spec.select = select i1 %.not, i32 1, i32 2    ; 2 uses
  %3 = zext nneg i32 %spec.select to i64          ; 10 uses
  %4 = add nuw nsw i64 %2, 1
  %5 = add nuw nsw i64 %4, %3                     ; 2 uses
  %6 = icmp samesign ugt i64 %5, 516
  br i1 %6, label %encode_string.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.a
  %7 = trunc nuw nsw i32 %spec.select to i8
  store i8 %7, ptr %i.a, align 16, !tbaa !23
  %.tr = trunc i64 %2 to i8
  %8 = shl i8 %.tr, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store i8 %8, ptr %9, align 1, !tbaa !23
  %i.k = add nsw i64 %3, -1                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.l, label %10

10:                                               ; preds = %bb.f
  %11 = lshr i64 %2, 5
  %12 = trunc nuw i64 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  store i8 %12, ptr %13, align 1, !tbaa !23
  %14 = add nsw i64 %3, -2                        ; 2 uses
  %.not.i.i.1 = icmp eq i64 %14, 0
  br i1 %.not.i.i.1, label %bb.l, label %bb.g

bb.g:                                             ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !23
  %i.l = add nsw i64 %3, -3                       ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.2, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l
  store i8 0, ptr %16, align 1, !tbaa !23
  %17 = add nsw i64 %3, -4                        ; 2 uses
  %.not.i.i.3.a = icmp eq i64 %17, 0
  br i1 %.not.i.i.3.a, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %17
  store i8 0, ptr %i.m, align 1, !tbaa !23
  %i.n = add nsw i64 %3, -5                       ; 2 uses
  %.not.i.i.4 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.4, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 0, ptr %18, align 1, !tbaa !23
  %19 = add nsw i64 %3, -6                        ; 2 uses
  %.not.i.i.5 = icmp eq i64 %19, 0
  br i1 %.not.i.i.5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %19
  store i8 0, ptr %i.o, align 1, !tbaa !23
  %i.p = add nsw i64 %3, -7                       ; 2 uses
  %.not.i.i.6 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.6, label %bb.l, label %20

20:                                               ; preds = %bb.k
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %21, align 1, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %20, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %10, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 4, 513) %2, i1 false)
  br label %bb.m

encode_string.exit.i:                             ; preds = %.lr.ph.i.i.i.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 575, ptr noundef nonnull @__func__.encode_string) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 202, ptr noundef null) #5
  br label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.e
  %.013.ph.i = phi i64 [ 0, %bb.e ], [ %5, %bb.l ] ; 3 uses
  %sext57.i.i = add nuw nsw i64 %i.i, 1
  %i.s = add nuw nsw i64 %sext57.i.i, %.013.ph.i  ; 2 uses
  %.lhs.trunc.i = trunc nuw i64 %i.s to i32
  %i.t = urem i32 %.lhs.trunc.i, %i.d
  %.zext.i = zext nneg i32 %i.t to i64
  %i.u = sub nsw i64 %i.s, %.zext.i               ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !tbaa !20
  %i.v = icmp ult i64 %i.u, 673
  %i.w = icmp samesign ult i32 %i.d, 256
  %or.cond15 = select i1 %i.v, i1 %i.w, i1 false, !prof !32
  br i1 %or.cond15, label %bb.n, label %bb.p, !prof !32

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 1, ptr %i.g, align 4, !tbaa !23
  %i.y = trunc nuw i32 %i.d to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 16 %i.a, i64 %.013.ph.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.013.ph.i
  %.0.fr.i.i = freeze ptr %i.aa                   ; 2 uses
  %i.ab = ptrtoint ptr %.0.fr.i.i to i64
  %i.ac = ptrtoint ptr %i.g to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %sext.i.i = shl i64 %i.ad, 32
  %i.af = ashr exact i64 %sext.i.i, 32
  %i.ag = add nsw i64 %i.i, -1
  %i.ah = add nsw i64 %i.ag, %i.af                ; 2 uses
  %i.ai = urem i64 %i.ah, %i.i
  %i.aj = sub nuw nsw i64 %i.ah, %i.ai            ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %.not.i10.i = icmp eq i32 %i.ak, %i.ae
  br i1 %.not.i10.i, label %kmac_bytepad_encode_key.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = sub i64 %i.aj, %i.ad
  %sext53.i.i = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext53.i.i, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.fr.i.i, i8 0, i64 %i.am, i1 false)
  br label %kmac_bytepad_encode_key.exit

kmac_bytepad_encode_key.exit:                     ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %encode_string.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %kmac_bytepad_encode_key.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.p ], [ 1, %kmac_bytepad_encode_key.exit ]
  ret i32 %.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_block_size(ptr noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @OSSL_PARAM_locate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"kmac_data_st", !11, i64 0, !12, i64 8, !13, i64 16, !16, i64 40, !16, i64 48, !16, i64 56, !6, i64 64, !7, i64 68, !7, i64 740}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS13evp_md_ctx_st", !11, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 8, !15, i64 16}
!14 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!15 = !{!"p1 _ZTS9engine_st", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!10, !12, i64 8}
!18 = !{!10, !16, i64 48}
!19 = !{!10, !16, i64 56}
!20 = !{!16, !16, i64 0}
!21 = !{!10, !6, i64 64}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!7, !7, i64 0}
!24 = !{!10, !16, i64 40}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !29, i64 0}
!28 = !{!"ossl_param_st", !29, i64 0, !6, i64 8, !11, i64 16, !16, i64 24, !16, i64 32}
!29 = !{!"p1 omnipotent char", !11, i64 0}
!30 = !{!28, !11, i64 16}
!31 = !{!28, !16, i64 24}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
end_hunk_0
