inline.NumInlined: 43
inline.NumDeleted: 17
begin_hunk_0_@ossl_cms_resolve_libctx:bb.a
  %i.s = load ptr, ptr %.0.i25, align 8, !tbaa !23
  %i.t = tail call ptr @OPENSSL_sk_value(ptr noundef %i.s, i32 noundef %.020) #5 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = tail call i32 @ossl_x509_set0_libctx(ptr noundef %i.x, ptr noundef %i.e, ptr noundef %i.f) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.z = add nuw nsw i32 %.020, 1                 ; 2 uses
  %i.aa = load ptr, ptr %.0.i25, align 8, !tbaa !23
  %i.ab = tail call i32 @OPENSSL_sk_num(ptr noundef %i.aa) #5
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.d, %.preheader, %cms_get0_certificate_choices.exit.thread, %cms_get0_certificate_choices.exit
  ret void
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @i2d_CMS_ContentInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_ContentInfo_it() #5
  %i.b = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #5
  ret i32 %i.b
}

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CMS_ContentInfo_new_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_ContentInfo_it() #5
  %i.b = tail call ptr @ASN1_item_new_ex(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #5 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !30
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 64) #5 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @CMS_ContentInfo_it() #5
  tail call void @ASN1_item_free(ptr noundef nonnull %i.b, ptr noundef %i.g) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ASN1_item_new_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_cms_SignerInfos_set_cmsctx(ptr noundef) local_unnamed_addr #1

declare void @ossl_cms_RecipientInfos_set_cmsctx(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_x509_set0_libctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CMS_get0_type(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_cms_Data_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_ContentInfo_it() #5
  %i.b = tail call ptr @ASN1_item_new_ex(ptr noundef %i.a, ptr noundef %0, ptr noundef %1) #5 ; 9 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %CMS_set_detached.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !30
  %.not14.i = icmp eq ptr %1, null
  br i1 %.not14.i, label %CMS_ContentInfo_new_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 64) #5 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %CMS_ContentInfo_new_ex.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @CMS_ContentInfo_it() #5
  tail call void @ASN1_item_free(ptr noundef nonnull %i.b, ptr noundef %i.g) #5
  br label %CMS_set_detached.exit

CMS_ContentInfo_new_ex.exit:                      ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @OBJ_nid2obj(i32 noundef 21) #5
  store ptr %i.h, ptr %i.b, align 8, !tbaa !17
  %i.i = tail call ptr @CMS_get0_content(ptr noundef nonnull %i.b) ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %CMS_set_detached.exit, label %bb.e

bb.e:                                             ; preds = %CMS_ContentInfo_new_ex.exit
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @ASN1_OCTET_STRING_new() #5 ; 3 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !31
  %.not11.i = icmp eq ptr %i.m, null
  br i1 %.not11.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.n = phi ptr [ %i.m, %bb.f ], [ %i.k, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = or i64 %i.p, 32
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  br label %CMS_set_detached.exit

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @__func__.CMS_set_detached) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 524301, ptr noundef null) #5
  br label %CMS_set_detached.exit

CMS_set_detached.exit:                            ; preds = %bb.a, %bb.d, %bb.g, %.thread.i, %CMS_ContentInfo_new_ex.exit
  %.0.i9 = phi ptr [ %i.b, %bb.g ], [ %i.b, %CMS_ContentInfo_new_ex.exit ], [ %i.b, %.thread.i ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0.i9
}

declare ptr @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CMS_set_detached(ptr noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_get0_content(ptr noundef %0) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ASN1_OCTET_STRING_free(ptr noundef %i.c) #5
  store ptr null, ptr %i.a, align 8, !tbaa !31
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @ASN1_OCTET_STRING_new() #5 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !31
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.f = phi ptr [ %i.e, %bb.e ], [ %i.c, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = or i64 %i.h, 32
  store i64 %i.i, ptr %i.g, align 8, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 395, ptr noundef nonnull @__func__.CMS_set_detached) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 524301, ptr noundef null) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %.thread, %bb.c
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.c ], [ 1, %.thread ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_cms_content_bio(ptr noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_get0_content(ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @BIO_s_null() #5
  %i.f = tail call ptr @BIO_new(ptr noundef %i.e) #5
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, 32
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @BIO_s_mem() #5
  %i.k = tail call ptr @BIO_new(ptr noundef %i.j) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = load i32, ptr %i.c, align 8, !tbaa !37
  %i.o = tail call ptr @BIO_new_mem_buf(ptr noundef %i.m, i32 noundef %i.n) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %i.o, %bb.f ], [ %i.f, %bb.c ], [ %i.k, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CMS_get0_content(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = tail call i32 @OBJ_obj2nid(ptr noundef %i.a) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  switch i32 %i.b, label %bb.i [
    i32 21, label %bb.l
    i32 22, label %bb.b
    i32 23, label %bb.c
    i32 25, label %bb.d
    i32 26, label %bb.e
    i32 1059, label %bb.f
    i32 205, label %bb.g
    i32 786, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !60
  %i.ah = icmp eq i32 %i.ag, 4
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @__func__.CMS_get0_content) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, ptr noundef null) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.ai, %bb.j ], [ null, %bb.k ], [ %i.ae, %bb.h ], [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.aa, %bb.g ], [ %i.c, %bb.a ]
  ret ptr %.0
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #1

declare ptr @BIO_s_null() local_unnamed_addr #1

declare ptr @BIO_s_mem() local_unnamed_addr #1

declare ptr @BIO_new_mem_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CMS_dataInit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %ossl_cms_content_bio.exit.thread24

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @CMS_get0_content(ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ossl_cms_content_bio.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @BIO_s_null() #5
  %i.f = tail call ptr @BIO_new(ptr noundef %i.e) #5
  br label %ossl_cms_content_bio.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i64 %i.h, 32
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @BIO_s_mem() #5
  %i.k = tail call ptr @BIO_new(ptr noundef %i.j) #5
  br label %ossl_cms_content_bio.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = load i32, ptr %i.c, align 8, !tbaa !37
  %i.o = tail call ptr @BIO_new_mem_buf(ptr noundef %i.m, i32 noundef %i.n) #5
  br label %ossl_cms_content_bio.exit

ossl_cms_content_bio.exit:                        ; preds = %bb.g, %bb.f, %bb.d
  %.0 = phi ptr [ %i.k, %bb.f ], [ %i.o, %bb.g ], [ %i.f, %bb.d ] ; 2 uses
  %.not20 = icmp eq ptr %.0, null
  br i1 %.not20, label %ossl_cms_content_bio.exit.thread, label %ossl_cms_content_bio.exit.thread24

ossl_cms_content_bio.exit.thread:                 ; preds = %bb.b, %ossl_cms_content_bio.exit
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @__func__.CMS_dataInit) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 127, ptr noundef null) #5
  br label %bb.r

ossl_cms_content_bio.exit.thread24:               ; preds = %bb.a, %ossl_cms_content_bio.exit
  %.027 = phi ptr [ %.0, %ossl_cms_content_bio.exit ], [ %1, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = tail call i32 @OBJ_obj2nid(ptr noundef %i.p) #5
  switch i32 %i.q, label %bb.m [
    i32 21, label %bb.r
    i32 22, label %bb.h
    i32 25, label %bb.i
    i32 26, label %bb.j
    i32 23, label %bb.k
    i32 1059, label %bb.l
  ]

bb.h:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  %i.r = tail call ptr @ossl_cms_SignedData_init_bio(ptr noundef nonnull %0) #5
  br label %bb.n

bb.i:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  %i.s = tail call ptr @ossl_cms_DigestedData_init_bio(ptr noundef nonnull %0) #5
  br label %bb.n

bb.j:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  %i.t = tail call ptr @ossl_cms_EncryptedData_init_bio(ptr noundef nonnull %0) #5
  br label %bb.n

bb.k:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  %i.u = tail call ptr @ossl_cms_EnvelopedData_init_bio(ptr noundef nonnull %0) #5
  br label %bb.n

bb.l:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  %i.v = tail call ptr @ossl_cms_AuthEnvelopedData_init_bio(ptr noundef nonnull %0) #5
  br label %bb.n

bb.m:                                             ; preds = %ossl_cms_content_bio.exit.thread24
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 188, ptr noundef nonnull @__func__.CMS_dataInit) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 156, ptr noundef null) #5
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.017 = phi ptr [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.t, %bb.j ], [ %i.u, %bb.k ], [ %i.v, %bb.l ] ; 2 uses
  %.not21 = icmp eq ptr %.017, null
  br i1 %.not21, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = tail call ptr @BIO_push(ptr noundef nonnull %.017, ptr noundef nonnull %.027) #5
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.x = tail call i32 @BIO_free(ptr noundef nonnull %.027) #5 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %ossl_cms_content_bio.exit.thread24, %bb.o, %ossl_cms_content_bio.exit.thread
  %.018 = phi ptr [ %.027, %ossl_cms_content_bio.exit.thread24 ], [ null, %ossl_cms_content_bio.exit.thread ], [ %i.w, %bb.o ], [ null, %bb.q ], [ null, %bb.p ]
  ret ptr %.018
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cms_SignedData_init_bio(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cms_DigestedData_init_bio(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cms_EncryptedData_init_bio(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cms_EnvelopedData_init_bio(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_cms_AuthEnvelopedData_init_bio(ptr noundef) local_unnamed_addr #1

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CMS_dataFinal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_cms_DataFinal(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_cms_DataFinal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @CMS_get0_content(ptr noundef %0) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %i.g = and i64 %i.f, 32
  %.not27 = icmp eq i64 %i.g, 0
  br i1 %.not27, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = tail call ptr @BIO_find_type(ptr noundef %1, i32 noundef 1025) #5 ; 4 uses
  %.not28.not = icmp eq ptr %i.h, null
  br i1 %.not28.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 221, ptr noundef nonnull @__func__.ossl_cms_DataFinal) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 105, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.i = call i64 @BIO_ctrl(ptr noundef nonnull %i.h, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #5
  call void @BIO_set_flags(ptr noundef nonnull %i.h, i32 noundef 512) #5
  %i.j = call i64 @BIO_ctrl(ptr noundef nonnull %i.h, i32 noundef 130, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.m = trunc i64 %i.i to i32
  call void @ASN1_STRING_set0(ptr noundef %i.k, ptr noundef %i.l, i32 noundef %i.m) #5
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = and i64 %i.p, -33
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  %i.s = call i32 @OBJ_obj2nid(ptr noundef %i.r) #5
  switch i32 %i.s, label %bb.k [
    i32 21, label %bb.l
    i32 26, label %bb.l
    i32 786, label %bb.l
    i32 23, label %bb.g
    i32 1059, label %bb.h
    i32 22, label %bb.i
    i32 25, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @ossl_cms_EnvelopedData_final(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = call i32 @ossl_cms_AuthEnvelopedData_final(ptr noundef nonnull %0, ptr noundef %1) #5
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.v = call i32 @ossl_cms_SignedData_final(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #5
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.w = call i32 @ossl_cms_DigestedData_do_final(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @__func__.ossl_cms_DataFinal) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 156, ptr noundef null) #5
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.f, %bb.f, %bb.f, %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.1 = phi i32 [ 0, %.thread ], [ 0, %bb.k ], [ 0, %bb.a ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ], [ %i.w, %bb.j ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.f ]
  ret i32 %.1
}

declare ptr @BIO_find_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_EnvelopedData_final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cms_AuthEnvelopedData_final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_cms_SignedData_final(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_cms_DigestedData_do_final(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CMS_get0_eContentType(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @cms_get0_econtent_type(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cms_get0_econtent_type(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = tail call i32 @OBJ_obj2nid(ptr noundef %i.a) #5
  switch i32 %i.b, label %bb.i [
    i32 22, label %bb.b
    i32 23, label %bb.c
    i32 25, label %bb.d
    i32 26, label %bb.e
    i32 1059, label %bb.f
    i32 205, label %bb.g
    i32 786, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @__func__.cms_get0_econtent_type) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 152, ptr noundef null) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.i ], [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %bb.g ], [ %i.ad, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CMS_set1_eContentType(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @cms_get0_econtent_type(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @OBJ_dup(ptr noundef nonnull %1) #5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @ASN1_OBJECT_free(ptr noundef %i.f) #5
  store ptr %i.d, ptr %i.a, align 8, !tbaa !63
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @OBJ_dup(ptr noundef) local_unnamed_addr #1

declare void @ASN1_OBJECT_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @CMS_is_detached(ptr noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @CMS_get0_content(ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  %. = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare void @ASN1_OCTET_STRING_free(ptr noundef) local_unnamed_addr #1

declare ptr @ASN1_OCTET_STRING_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_cms_DigestAlgorithm_init_bio(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [50 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 6 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !64
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef %0) #5
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.f = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.b, i32 noundef 50, ptr noundef %i.e, i32 noundef 0) #5 ; 0 uses
  %i.g = call i32 @ERR_set_mark() #5              ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %ossl_cms_ctx_get0_propq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  br label %ossl_cms_ctx_get0_propq.exit

ossl_cms_ctx_get0_propq.exit:                     ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.l = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.m = call ptr @EVP_MD_fetch(ptr noundef %i.k, ptr noundef nonnull %i.b, ptr noundef %i.l) #5 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %ossl_cms_ctx_get0_propq.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.o = call i32 @OBJ_obj2nid(ptr noundef %i.n) #5
  %i.p = call ptr @OBJ_nid2sn(i32 noundef %i.o) #5
  %i.q = call ptr @EVP_get_digestbyname(ptr noundef %i.p) #5 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = call i32 @ERR_clear_last_mark() #5       ; 0 uses
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 424, ptr noundef nonnull @__func__.ossl_cms_DigestAlgorithm_init_bio) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 149, ptr noundef null) #5
  br label %bb.m

.thread:                                          ; preds = %ossl_cms_ctx_get0_propq.exit, %bb.c
  %.01932 = phi ptr [ %i.q, %bb.c ], [ %i.m, %ossl_cms_ctx_get0_propq.exit ] ; 4 uses
  %i.t = call i32 @ERR_pop_to_mark() #5           ; 0 uses
  %i.u = call ptr @BIO_f_md() #5
  %i.v = call ptr @BIO_new(ptr noundef %i.u) #5   ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.x = call i64 @BIO_ctrl(ptr noundef nonnull %i.v, i32 noundef 111, i64 noundef 0, ptr noundef nonnull %.01932) #5
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 431, ptr noundef nonnull @__func__.ossl_cms_DigestAlgorithm_init_bio) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 119, ptr noundef null) #5
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.z = call i32 @EVP_MD_xof(ptr noundef nonnull %.01932) #5
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i32 @EVP_MD_is_a(ptr noundef nonnull %.01932, ptr noundef nonnull @.str.1) #5
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.i, label %.thread33

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @EVP_MD_is_a(ptr noundef nonnull %.01932, ptr noundef nonnull @.str.2) #5
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.l, label %.thread33

.thread33:                                        ; preds = %bb.i, %bb.h
  %storemerge = phi i64 [ 32, %bb.h ], [ 64, %bb.i ]
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ac = call i64 @BIO_ctrl(ptr noundef nonnull %i.v, i32 noundef 120, i64 noundef 0, ptr noundef nonnull %i.d) #5
  %i.ad = icmp slt i64 %i.ac, 1
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = icmp eq ptr %i.ae, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %.thread36, label %bb.j

bb.j:                                             ; preds = %.thread33
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c) #5
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.ai = call i32 @EVP_MD_CTX_set_params(ptr noundef %i.ah, ptr noundef nonnull %2) #5
  %.not28 = icmp eq i32 %i.ai, 0
  br i1 %.not28, label %.thread36, label %bb.k

.thread36:                                        ; preds = %.thread33, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.g
  call void @EVP_MD_free(ptr noundef %i.m) #5
  br label %bb.n

bb.m:                                             ; preds = %.thread36, %bb.f, %bb.d
  %.020 = phi ptr [ null, %bb.d ], [ %i.v, %bb.f ], [ %i.v, %.thread36 ]
  call void @EVP_MD_free(ptr noundef %i.m) #5
  %i.aj = call i32 @BIO_free(ptr noundef %.020) #5 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.021 = phi ptr [ null, %bb.m ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.021
}

declare void @X509_ALGOR_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare ptr @BIO_f_md() local_unnamed_addr #1

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_MD_is_a(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_cms_DigestAlgorithm_find_ctx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef %2) #5
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.d = call i32 @OBJ_obj2nid(ptr noundef %i.c) #5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.e = call ptr @BIO_find_type(ptr noundef %1, i32 noundef 520) #5 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @__func__.ossl_cms_DigestAlgorithm_find_ctx) #5
end_hunk_0
