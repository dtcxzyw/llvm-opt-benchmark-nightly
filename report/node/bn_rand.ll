inline.NumInlined: 2
begin_hunk_0_@bnrand_range:bb.a
  br i1 %.not49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @__func__.bnrand_range) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, ptr noundef null) #4
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.x = tail call i32 @BN_cmp(ptr noundef nonnull %1, ptr noundef nonnull %2) #4
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.r, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.u, %bb.r, %bb.q, %bb.n, %bb.l, %bb.j, %bb.g, %bb.t, %bb.p, %bb.e, %bb.b
  %.036 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.t ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.u ], [ 0, %bb.r ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_rand_range(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @bnrand_range(i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_priv_rand_range_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @bnrand_range(i32 noundef 2, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_priv_rand_range(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @bnrand_range(i32 noundef 2, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_pseudo_rand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 2) i32 @bnrand(i32 noundef 0, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_pseudo_rand_range(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 2) i32 @bnrand_range(i32 noundef 0, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_bn_priv_rand_range_fixed_top(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 248, ptr noundef nonnull @__func__.ossl_bn_priv_rand_range_fixed_top) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786690, ptr noundef null) #4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @BN_is_zero(ptr noundef nonnull %1) #4
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @__func__.ossl_bn_priv_rand_range_fixed_top) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 115, ptr noundef null) #4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.e = tail call i32 @BN_num_bits(ptr noundef nonnull %1) #4 ; 3 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @BN_zero_ex(ptr noundef nonnull %0) #4
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  tail call void @BN_set_flags(ptr noundef nonnull %0, i32 noundef 4) #4
  %i.g = add nsw i32 %i.e, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0 = phi i32 [ 100, %bb.h ], [ %i.i, %bb.l ]
  %i.h = tail call fastcc i32 @bnrand(i32 noundef 2, ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef 0, i32 noundef 0, i32 noundef %2, ptr noundef %3)
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = add nsw i32 %.0, -1                      ; 2 uses
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @__func__.ossl_bn_priv_rand_range_fixed_top) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, ptr noundef null) #4
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.j = tail call i32 @ossl_bn_mask_bits_fixed_top(ptr noundef nonnull %0, i32 noundef %i.e) #4 ; 0 uses
  %i.k = tail call i32 @BN_ucmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.i, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.g, %bb.k, %bb.e, %bb.b
  %.016 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.k ], [ 1, %bb.l ], [ 0, %bb.i ]
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #2

declare void @BN_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_bn_mask_bits_fixed_top(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_bn_gen_dsa_nonce_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 5 uses
  %i.d = alloca i8, align 1                       ; 9 uses
  %i.e = tail call ptr @EVP_MD_CTX_new() #4       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = tail call i32 @BN_num_bits(ptr noundef %1) #4
  %i.g = add nsw i32 %i.f, 7
  %i.h = sdiv i32 %i.g, 8
  %i.i = add nsw i32 %i.h, 1                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.j = tail call ptr @ossl_bn_get_libctx(ptr noundef %5) #4 ; 2 uses
  %i.k = icmp eq ptr %i.e, null
  %.pre = zext i32 %i.i to i64                    ; 2 uses
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.pre, ptr noundef nonnull @.str, i32 noundef 319) #4 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -1, ptr %i.l, align 1, !tbaa !9
  %i.n = call i32 @BN_bn2binpad(ptr noundef %2, ptr noundef nonnull %i.c, i32 noundef 96) #4
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @__func__.ossl_bn_gen_dsa_nonce_fixed_top) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 117, ptr noundef null) #4
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.p = call ptr @EVP_MD_fetch(ptr noundef %i.j, ptr noundef nonnull @.str.1, ptr noundef null) #4 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.r = icmp ugt i32 %i.i, 1
  br i1 %i.r, label %.lr.ph.us, label %.preheader.split

.lr.ph.us:                                        ; preds = %.preheader, %11
  %.04869.us = phi i32 [ %12, %11 ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i8 0, ptr %i.d, align 1, !tbaa !9
  br label %bb.f

6:                                                ; preds = %._crit_edge.us
  call void @BN_set_flags(ptr noundef %0, i32 noundef 4) #4
  %7 = call i32 @BN_num_bits(ptr noundef %1) #4
  %8 = call i32 @ossl_bn_mask_bits_fixed_top(ptr noundef %0, i32 noundef %7) #4 ; 0 uses
  %9 = call i32 @BN_ucmp(ptr noundef %0, ptr noundef %1) #4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %.thread, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %12 = add nuw nsw i32 %.04869.us, 1             ; 2 uses
  %exitcond74.not = icmp eq i32 %12, 64
  br i1 %exitcond74.not, label %.split.us, label %.lr.ph.us, !llvm.loop !20

bb.f:                                             ; preds = %.lr.ph.us, %bb.m
  %.04968.us = phi i32 [ 1, %.lr.ph.us ], [ %i.ae, %bb.m ] ; 3 uses
  %i.s = call i32 @RAND_priv_bytes_ex(ptr noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 0) #4
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, ptr noundef null) #4
  %.not58.us = icmp eq i32 %i.u, 0
  br i1 %.not58.us, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef 1) #4
  %.not59.us = icmp eq i32 %i.v, 0
  br i1 %.not59.us, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef 96) #4
  %.not60.us = icmp eq i32 %i.w, 0
  br i1 %.not60.us, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef %3, i64 noundef %4) #4
  %.not61.us = icmp eq i32 %i.x, 0
  br i1 %.not61.us, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 64) #4
  %.not62.us = icmp eq i32 %i.y, 0
  br i1 %.not62.us, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef null) #4
  %.not63.us = icmp eq i32 %i.z, 0
  br i1 %.not63.us, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = sub i32 %i.i, %.04968.us
  %spec.store.select.us = call i32 @llvm.umin.i32(i32 %i.aa, i32 64) ; 2 uses
  %i.ab = zext i32 %.04968.us to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = zext nneg i32 %spec.store.select.us to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 16 %i.b, i64 %i.ad, i1 false)
  %i.ae = add i32 %spec.store.select.us, %.04968.us ; 2 uses
  %i.af = load i8, ptr %i.d, align 1, !tbaa !9
  %i.ag = add i8 %i.af, 1
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !9
  %i.ah = icmp ult i32 %i.ae, %i.i
  br i1 %i.ah, label %bb.f, label %._crit_edge.us, !llvm.loop !21

._crit_edge.us:                                   ; preds = %bb.m
  %i.ai = call ptr @BN_bin2bn(ptr noundef nonnull %i.l, i32 noundef %i.i, ptr noundef %0) #4
  %.not.us = icmp eq ptr %i.ai, null
  br i1 %.not.us, label %.thread, label %6

bb.n:                                             ; preds = %bb.e
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @__func__.ossl_bn_gen_dsa_nonce_fixed_top) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 120, ptr noundef null) #4
  br label %._crit_edge

.preheader.split:                                 ; preds = %.preheader, %bb.p
  %.04869 = phi i32 [ %i.ao, %bb.p ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.aj = call ptr @BN_bin2bn(ptr noundef nonnull %i.l, i32 noundef %i.i, ptr noundef %0) #4
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.thread, label %bb.o

bb.o:                                             ; preds = %.preheader.split
  call void @BN_set_flags(ptr noundef %0, i32 noundef 4) #4
  %i.ak = call i32 @BN_num_bits(ptr noundef %1) #4
  %i.al = call i32 @ossl_bn_mask_bits_fixed_top(ptr noundef %0, i32 noundef %i.ak) #4 ; 0 uses
  %i.am = call i32 @BN_ucmp(ptr noundef %0, ptr noundef %1) #4
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o, %.preheader.split, %6, %._crit_edge.us, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.ph = phi i32 [ 1, %6 ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %._crit_edge.us ], [ 1, %bb.o ], [ 0, %.preheader.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %._crit_edge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.ao = add nuw nsw i32 %.04869, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, 64
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !20

.split.us:                                        ; preds = %bb.p, %11
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 385, ptr noundef nonnull @__func__.ossl_bn_gen_dsa_nonce_fixed_top) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786691, ptr noundef null) #4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %.thread, %bb.b, %.split.us, %bb.n, %bb.d
  %.050 = phi ptr [ %i.l, %bb.d ], [ %i.l, %.thread ], [ null, %bb.b ], [ %i.l, %.split.us ], [ %i.l, %bb.n ], [ null, %bb.a ]
  %.2 = phi i32 [ 0, %bb.d ], [ %.1.ph, %.thread ], [ 0, %bb.b ], [ 0, %.split.us ], [ 0, %bb.n ], [ 0, %bb.a ]
  %.046 = phi ptr [ null, %bb.d ], [ %i.p, %.thread ], [ null, %bb.b ], [ %i.p, %.split.us ], [ null, %bb.n ], [ null, %bb.a ]
  call void @EVP_MD_CTX_free(ptr noundef %i.e) #4
  call void @EVP_MD_free(ptr noundef %.046) #4
  call void @CRYPTO_clear_free(ptr noundef %.050, i64 noundef %.pre, ptr noundef nonnull @.str, i32 noundef 390) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 96) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.2
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare ptr @ossl_bn_get_libctx(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @BN_generate_dsa_nonce(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_bn_gen_dsa_nonce_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  tail call void @bn_correct_top(ptr noundef %0) #4
  ret i32 %i.a
}

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{!14, !6, i64 16}
!14 = !{!"bignum_st", !15, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!15 = !{!"p1 long", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
end_hunk_0
