inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ossl_c448_ed448_sign:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.p = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef nonnull %i.o, i64 noundef 57) #4
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef %4, i64 noundef %5) #4
  %.not44 = icmp eq i32 %i.q, 0
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 114) #4
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 114) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.r = call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef 114) #4
  %.not45 = icmp eq i32 %i.r, 0
  br i1 %.not45, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @ossl_curve448_scalar_decode_long(ptr noundef nonnull %11, ptr noundef nonnull %i.c, i64 noundef 114) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 114) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  call void @ossl_curve448_scalar_halve(ptr noundef nonnull %13, ptr noundef nonnull %11) #4
  call void @ossl_curve448_scalar_halve(ptr noundef nonnull %13, ptr noundef nonnull %13) #4
  %i.s = load ptr, ptr @ossl_curve448_precomputed_base, align 8, !tbaa !9
  call void @ossl_curve448_precomputed_scalarmul(ptr noundef nonnull %14, ptr noundef %i.s, ptr noundef nonnull %13) #4
  call void @ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa(ptr noundef nonnull %i.a, ptr noundef nonnull %14) #4
  call void @ossl_curve448_point_destroy(ptr noundef nonnull %14) #4
  call void @ossl_curve448_scalar_destroy(ptr noundef nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.t = call fastcc i32 @hash_init_with_dom(ptr noundef %0, ptr noundef %i.e, i8 noundef zeroext %6, ptr noundef %7, i64 noundef %8, ptr noundef %9)
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %.thread57, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 57) #4
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %.thread57, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef %3, i64 noundef 57) #4
  %.not48 = icmp eq i32 %i.v, 0
  br i1 %.not48, label %.thread57, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.e, ptr noundef %4, i64 noundef %5) #4
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %.thread57, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef 114) #4
  %.not50 = icmp eq i32 %i.x, 0
  br i1 %.not50, label %.thread57, label %bb.n

.thread57:                                        ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ossl_curve448_scalar_decode_long(ptr noundef nonnull %12, ptr noundef nonnull %i.d, i64 noundef 114) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 114) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @ossl_curve448_scalar_mul(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %10) #4
  call void @ossl_curve448_scalar_add(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %11) #4
  call void @OPENSSL_cleanse(ptr noundef %1, i64 noundef 114) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %1, ptr noundef nonnull align 16 dereferenceable(57) %i.a, i64 57, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 57
  call void @ossl_curve448_scalar_encode(ptr noundef nonnull %i.y, ptr noundef nonnull %12) #4
  call void @ossl_curve448_scalar_destroy(ptr noundef nonnull %10) #4
  call void @ossl_curve448_scalar_destroy(ptr noundef nonnull %11) #4
  call void @ossl_curve448_scalar_destroy(ptr noundef nonnull %12) #4
  br label %bb.o

bb.o:                                             ; preds = %.thread57, %bb.h, %.thread, %bb.n
  %.039 = phi i32 [ -1, %bb.n ], [ 0, %.thread57 ], [ 0, %bb.h ], [ 0, %.thread ]
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.e) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.040 = phi i32 [ %.039, %bb.o ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  ret i32 %.040
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @hash_init_with_dom(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @__const.hash_init_with_dom.dom_s, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = icmp ugt i64 %4, 255
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i8 %2, 0
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.b, align 1, !tbaa !8
  %i.f = trunc nuw i64 %4 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !8
  %i.h = tail call ptr @EVP_MD_fetch(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %5) #4 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef null) #4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 8) #4
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 2) #4
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @EVP_DigestUpdate(ptr noundef nonnull %1, ptr noundef %3, i64 noundef %4) #4
  %.not20 = icmp ne i32 %i.m, 0
  %spec.select = sext i1 %.not20 to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c, %bb.d, %bb.e
  %.0.ph = phi i32 [ 0, %bb.c ], [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @EVP_MD_free(ptr noundef nonnull %i.h) #4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ossl_curve448_scalar_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_curve448_scalar_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ossl_curve448_scalar_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ossl_c448_ed448_sign_prehash(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_c448_ed448_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 64, i8 noundef zeroext 1, ptr noundef %5, i64 noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ossl_c448_ed448_verify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i8 noundef zeroext %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca [1 x %struct.curve448_point_s], align 16 ; 6 uses
  %10 = alloca [1 x %struct.curve448_point_s], align 16 ; 4 uses
  %11 = alloca [1 x %struct.curve448_scalar_s], align 16 ; 6 uses
  %12 = alloca [1 x %struct.curve448_scalar_s], align 16 ; 4 uses
  %i.a = alloca [114 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  br label %bb.g

bb.b:                                             ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @ossl_c448_ed448_verify.order, i64 %indvars.iv.next
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %i.g = icmp ugt i8 %i.d, %i.f
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i8 %i.d, %i.f
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 57
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr @ossl_c448_ed448_verify.order, i64 %indvars.iv.next.1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.n = icmp ugt i8 %i.k, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult i8 %i.k, %i.m
  br i1 %i.o, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3
  %.not52.2 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not52.2, label %.thread, label %bb.g, !llvm.loop !12

bb.g:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 56, %bb.a ], [ %indvars.iv.next.2, %bb.f ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @ossl_c448_ed448_verify.order, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 2 uses
  %i.u = icmp ugt i8 %i.r, %i.t
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ult i8 %i.r, %i.t
  br i1 %i.v, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.h
  %i.w = call i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(ptr noundef nonnull %9, ptr noundef %2) #4 ; 2 uses
  %.not = icmp eq i32 %i.w, -1
  br i1 %.not, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.x = call i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(ptr noundef nonnull %10, ptr noundef nonnull %1) #4 ; 2 uses
  %.not41 = icmp eq i32 %i.x, -1
  br i1 %.not41, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.y = call ptr @EVP_MD_CTX_new() #4            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = zext i8 %7 to i64
  %i.ab = call fastcc i32 @hash_init_with_dom(ptr noundef %0, ptr noundef %i.y, i8 noundef zeroext %5, ptr noundef %6, i64 noundef %i.aa, ptr noundef %8)
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.y, ptr noundef nonnull %1, i64 noundef 57) #4
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.y, ptr noundef %2, i64 noundef 57) #4
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.y, ptr noundef %3, i64 noundef %4) #4
  %.not45 = icmp eq i32 %i.ae, 0
  br i1 %.not45, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i64 noundef 114) #4
  %.not46 = icmp eq i32 %i.af, 0
  br i1 %.not46, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  call void @EVP_MD_CTX_free(ptr noundef %i.y) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread

bb.q:                                             ; preds = %bb.p
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.y) #4
  call void @ossl_curve448_scalar_decode_long(ptr noundef nonnull %11, ptr noundef nonnull %i.a, i64 noundef 114) #4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 114) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @ossl_curve448_scalar_sub(ptr noundef nonnull %11, ptr noundef nonnull @ossl_curve448_scalar_zero, ptr noundef nonnull %11) #4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 57
  call void @ossl_curve448_scalar_decode_long(ptr noundef nonnull %12, ptr noundef nonnull %i.ag, i64 noundef 57) #4
  call void @ossl_curve448_base_double_scalarmul_non_secret(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %11) #4
  %i.ah = call i64 @ossl_curve448_point_eq(ptr noundef nonnull %9, ptr noundef nonnull %10) #4
  %i.ai = trunc i64 %i.ah to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.b, %bb.d, %bb.f, %.critedge, %bb.j, %bb.i, %bb.q
  %.1 = phi i32 [ 0, %.critedge ], [ %i.ai, %bb.q ], [ %i.x, %bb.j ], [ %i.w, %bb.i ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  ret i32 %.1
}

declare i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_curve448_scalar_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_curve448_base_double_scalarmul_non_secret(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ossl_curve448_point_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ossl_c448_ed448_verify_prehash(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_c448_ed448_verify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 64, i8 noundef zeroext 1, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ed448_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i8 noundef zeroext %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_c448_ed448_sign(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %4, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %8, ptr noundef %6, i64 noundef %7, ptr noundef %9)
  %i.b = icmp eq i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define i32 @ossl_ed448_pubkey_verify(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.curve448_point_s], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %.not.i = icmp eq i64 %1, 57
  br i1 %.not.i, label %bb.b, label %c448_ed448_pubkey_verify.exit

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio(ptr noundef nonnull %2, ptr noundef %0) #4
  br label %c448_ed448_pubkey_verify.exit

c448_ed448_pubkey_verify.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ed448_verify(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i8 noundef zeroext %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %6 to i8
  %i.b = tail call i32 @ossl_c448_ed448_verify(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i64 noundef %2, i8 noundef zeroext %7, ptr noundef %5, i8 noundef zeroext %i.a, ptr noundef %8)
  %i.c = icmp eq i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ed448_public_from_private(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_c448_ed448_derive_public_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = icmp eq i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS22curve448_precomputed_s", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
