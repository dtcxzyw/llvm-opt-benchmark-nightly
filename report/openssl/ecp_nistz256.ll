Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ecp_nistz256?download=true
inline.NumInlined: 34
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ecp_nistz256_get_affine:bb.a
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.321.i = phi i32 [ 0, %bb.g ], [ %i.z, %bb.h ]
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  %i.z = add nuw nsw i32 %.321.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, 128
  br i1 %exitcond.not.i, label %ecp_nistz256_mod_inverse.exit, label %bb.h, !llvm.loop !20

ecp_nistz256_mod_inverse.exit:                    ; preds = %bb.h
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.k) #7
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ecp_nistz256_mod_inverse.exit
  call void @ecp_nistz256_from_mont(ptr noundef nonnull %i.n, ptr noundef nonnull %i.i) #7
  %i.aa = call i32 @bn_set_words(ptr noundef nonnull %2, ptr noundef nonnull %i.n, i32 noundef 4) #7
  %.not15 = icmp eq i32 %i.aa, 0
  br i1 %.not15, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %ecp_nistz256_mod_inverse.exit
  %.not16 = icmp eq ptr %3, null
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) #7
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.l) #7
  call void @ecp_nistz256_from_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.j) #7
  %i.ab = call i32 @bn_set_words(ptr noundef nonnull %3, ptr noundef nonnull %i.o, i32 noundef 4) #7
  %.not17 = icmp eq i32 %i.ab, 0
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.l, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  ret i32 %.0
}

declare i32 @ossl_ec_GFp_simple_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_dbl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_invert(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_is_at_infinity(ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_is_on_curve(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_cmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_make_affine(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @ossl_ec_GFp_simple_points_make_affine(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_points_mul(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [33 x i8], align 16               ; 7 uses
  %7 = alloca %union.anon, align 32               ; 9 uses
  %8 = alloca %union.anon, align 32               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.b, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.c = add i64 %3, 1                            ; 3 uses
  %or.cond = icmp ugt i64 %3, 268435454
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 955, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524550, ptr noundef null) #7
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %8, i8 0, i64 96, i1 false)
  tail call void @BN_CTX_start(ptr noundef %6) #7
  %.not = icmp ne ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @EC_GROUP_get0_generator(ptr noundef %0) #7 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 965, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, ptr noundef null) #7
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not156 = icmp eq ptr %i.g, null
  br i1 %.not156, label %.thread177, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @EC_POINT_new(ptr noundef nonnull %0) #7 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef %i.k, i32 noundef 1) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = call i32 @bn_set_words(ptr noundef %i.m, ptr noundef nonnull %8, i32 noundef 4) #7
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = call i32 @bn_set_words(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef 4) #7
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = call i32 @bn_set_words(ptr noundef %i.t, ptr noundef nonnull @ONE, i32 noundef 4) #7
  %.not10.i = icmp eq i32 %i.u, 0
  br i1 %.not10.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1, ptr %i.v, align 8, !tbaa !24
  %i.w = call i32 @EC_POINT_cmp(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef %6) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %.thread179

.thread179:                                       ; preds = %bb.l
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  br label %.thread177

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.thread177, label %bb.n

.thread177:                                       ; preds = %bb.f, %.thread179, %bb.m
  %i.aa = call fastcc i32 @ecp_nistz256_is_affine_G(ptr noundef %i.d)
  %.not158 = icmp eq i32 %i.aa, 0
  br i1 %.not158, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread177
  %.3.ph = phi ptr [ @ecp_nistz256_precomputed, %.thread177 ], [ %i.y, %bb.m ] ; 2 uses
  %i.ab = call i32 @BN_num_bits(ptr noundef nonnull %2) #7
  %i.ac = icmp sgt i32 %i.ab, 256
  br i1 %i.ac, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = call i32 @BN_is_negative(ptr noundef nonnull %2) #7
  %.not160 = icmp eq i32 %i.ad, 0
  br i1 %.not160, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = call i32 @BN_nnmod(ptr noundef nonnull %i.ae, ptr noundef nonnull %2, ptr noundef %i.ah, ptr noundef %6) #7
  %.not161 = icmp eq i32 %i.ai, 0
  br i1 %.not161, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1013, ptr noundef nonnull @__func__.ecp_nistz256_points_mul) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, ptr noundef null) #7
  br label %.thread

bb.s:                                             ; preds = %bb.q, %bb.o
  %.0123 = phi ptr [ %2, %bb.o ], [ %i.ae, %bb.q ] ; 3 uses
  %i.aj = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %.lr.ph218.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.am = icmp samesign ult i64 %indvars.iv, 25
  br i1 %i.am, label %.lr.ph218.preheader, label %._crit_edge

.lr.ph218.preheader:                              ; preds = %bb.s, %.preheader
  %.0139.lcssa246 = phi i32 [ %i.al, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %i.an = zext nneg i32 %.0139.lcssa246 to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.an
  %narrow = sub nuw nsw i32 33, %.0139.lcssa246
  %i.ao = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ao, i1 false), !tbaa !22
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.s ] ; 4 uses
  %i.ap = call ptr @bn_get_words(ptr noundef nonnull %.0123) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.at = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.au = shl nsw i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %.preheader, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph218.preheader, %.preheader
  %i.ax = load i8, ptr %i.b, align 16, !tbaa !22
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = and i32 %i.az, 254                      ; 3 uses
  %i.bb = lshr i32 %i.ba, 7                       ; 2 uses
  %i.bc = sub nsw i32 0, %i.bb                    ; 2 uses
  %i.bd = xor i32 %i.ba, 255
  %i.be = and i32 %i.bd, %i.bc
  %i.bf = icmp eq i32 %i.bb, 0
  %i.bg = select i1 %i.bf, i32 %i.ba, i32 0
  %i.bh = or i32 %i.bg, %i.be                     ; 2 uses
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = sub nuw nsw i32 %i.bh, %i.bi
  %i.bk = and i32 %i.bc, 1
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef nonnull %.3.ph, i32 noundef %i.bj) #7
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm) #7
  %i.bn = zext nneg i32 %i.bk to i64              ; 2 uses
  %9 = sub nsw i64 0, %i.bn
  %10 = add nsw i64 %i.bn, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 72
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %13 = load <4 x i64>, ptr %i.bl, align 32, !tbaa !31
  %14 = insertelement <4 x i64> poison, i64 %9, i64 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bp = and <4 x i64> %13, %15
  %i.bq = load <4 x i64>, ptr %i.bm, align 32, !tbaa !31
  %16 = insertelement <4 x i64> poison, i64 %10, i64 0
  %i.br = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bs = and <4 x i64> %i.br, %i.bq
  %i.bt = xor <4 x i64> %i.bs, %i.bp              ; 2 uses
  store <4 x i64> %i.bt, ptr %i.bm, align 32, !tbaa !31
  %i.bu = load <4 x i64>, ptr %8, align 32, !tbaa !22
  %i.bv = shufflevector <4 x i64> %i.bt, <4 x i64> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bw = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.bv)
  %i.bx = icmp ne i64 %i.bw, 0                    ; 4 uses
  %i.by = sext i1 %i.bx to i64
  %i.bz = zext i1 %i.bx to i64
  store i64 %i.bz, ptr %i.bl, align 32, !tbaa !22
  %i.ca = select i1 %i.bx, i64 -4294967296, i64 0
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !22
  store i64 %i.by, ptr %11, align 16, !tbaa !22
  %i.cb = select i1 %i.bx, i64 4294967294, i64 0
  store i64 %i.cb, ptr %12, align 8, !tbaa !22
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.t
  %indvars.iv226 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next227, %bb.t ] ; 2 uses
  %.0127220 = phi i32 [ 7, %._crit_edge ], [ %i.cn, %bb.t ] ; 2 uses
  %i.ce = add nsw i32 %.0127220, -1               ; 2 uses
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 1
  %i.cj = zext i16 %i.ci to i32
  %i.ck = and i32 %i.ce, 7
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = and i32 %i.cl, 255                      ; 3 uses
  %i.cn = add nuw nsw i32 %.0127220, 7
  %i.co = lshr i32 %i.cm, 7                       ; 2 uses
  %i.cp = sub nsw i32 0, %i.co                    ; 2 uses
  %i.cq = xor i32 %i.cm, 255
  %i.cr = and i32 %i.cq, %i.cp
  %i.cs = icmp eq i32 %i.co, 0
  %i.ct = select i1 %i.cs, i32 %i.cm, i32 0
  %i.cu = or i32 %i.ct, %i.cr                     ; 2 uses
  %i.cv = lshr i32 %i.cu, 1
  %i.cw = sub nuw nsw i32 %i.cu, %i.cv
  %i.cx = and i32 %i.cp, 1
  %i.cy = getelementptr inbounds nuw [4096 x i8], ptr %.3.ph, i64 %indvars.iv226
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %7, ptr noundef nonnull %i.cy, i32 noundef %i.cw) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %17, ptr noundef nonnull %18) #7
  %i.cz = zext nneg i32 %i.cx to i64              ; 2 uses
  %19 = sub nsw i64 0, %i.cz
  %20 = add nsw i64 %i.cz, -1
  %21 = load <2 x i64>, ptr %17, align 32, !tbaa !31
  %i.da = insertelement <2 x i64> poison, i64 %19, i64 0
  %22 = shufflevector <2 x i64> %i.da, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %23 = and <2 x i64> %21, %22
  %24 = load <2 x i64>, ptr %18, align 32, !tbaa !31
  %i.db = insertelement <2 x i64> poison, i64 %20, i64 0
  %25 = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %26 = and <2 x i64> %25, %24
  %27 = xor <2 x i64> %26, %23
  store <2 x i64> %27, ptr %18, align 32, !tbaa !31
  %28 = load <2 x i64>, ptr %i.cc, align 16, !tbaa !31
  %29 = and <2 x i64> %28, %22
  %30 = load <2 x i64>, ptr %i.cd, align 16, !tbaa !31
  %31 = and <2 x i64> %30, %25
  %32 = xor <2 x i64> %31, %29
  store <2 x i64> %32, ptr %i.cd, align 16, !tbaa !31
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next227, 37
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !33

bb.u:                                             ; preds = %.thread177
  %i.dc = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1101) #7 ; 6 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1105) #7 ; 5 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.thread, label %.thread247

.thread247:                                       ; preds = %bb.v
  %i.dg = shl nuw nsw i64 %3, 3                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %5, i64 %i.dg, i1 false)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %3
  store ptr %2, ptr %i.dh, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %4, i64 %i.dg, i1 false)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %3
  store ptr %i.d, ptr %i.di, align 8, !tbaa !35
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.c
  %.not163 = icmp eq i64 %3, 0
  br i1 %.not163, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %spec.select261 = select i1 %.not, ptr %7, ptr %8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread247
  %.not164196205259 = phi i1 [ false, %.thread247 ], [ %.not, %bb.w ]
  %.0144206258 = phi ptr [ %i.de, %.thread247 ], [ %4, %bb.w ]
  %.0143207257 = phi ptr [ %i.dc, %.thread247 ], [ %5, %bb.w ]
  %.0142208256 = phi i64 [ %i.c, %.thread247 ], [ %3, %bb.w ] ; 9 uses
  %.0130209255 = phi ptr [ %i.dc, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %.0128211254 = phi ptr [ %i.de, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %i.dj = phi ptr [ %8, %.thread247 ], [ %spec.select261, %bb.w ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !36
  %i.dk = icmp ugt i64 %.0142208256, 1398100
  br i1 %i.dk, label %ecp_nistz256_windowed_mul.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = shl nuw nsw i64 %.0142208256, 4
  %i.dm = or disjoint i64 %i.dl, 5
  %i.dn = call noalias ptr @CRYPTO_aligned_alloc_array(i64 noundef %i.dm, i64 noundef 96, i64 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 625) #7 ; 6 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %ecp_nistz256_windowed_mul.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 33, ptr noundef nonnull @.str, i32 noundef 627) #7 ; 10 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %ecp_nistz256_windowed_mul.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 628) #7 ; 5 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %ecp_nistz256_windowed_mul.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw [1536 x i8], ptr %i.dn, i64 %.0142208256 ; 25 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 96 ; 14 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 192 ; 14 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 288 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 384 ; 8 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.al, %bb.ab
  %.0222252.i = phi i64 [ 0, %bb.ab ], [ %i.fu, %bb.al ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [1536 x i8], ptr %i.dn, i64 %.0222252.i ; 16 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.0143207257, i64 %.0222252.i ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !34
  %i.ee = call i32 @BN_num_bits(ptr noundef %i.ed) #7
  %i.ef = icmp sgt i32 %i.ee, 256
  br i1 %i.ef, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !34
  %i.eh = call i32 @BN_is_negative(ptr noundef %i.eg) #7
  %.not.i171 = icmp eq i32 %i.eh, 0
  br i1 %.not.i171, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ei = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ecp_nistz256_windowed_mul.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = load ptr, ptr %i.ec, align 8, !tbaa !34
  %i.el = load ptr, ptr %i.du, align 8, !tbaa !25
  %i.em = call i32 @BN_nnmod(ptr noundef nonnull %i.ei, ptr noundef %i.ek, ptr noundef %i.el, ptr noundef %6) #7
  %.not238.i = icmp eq i32 %i.em, 0
  br i1 %.not238.i, label %.thread245.sink.split.i, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.en = load ptr, ptr %i.ec, align 8, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi ptr [ %i.en, %bb.ag ], [ %i.ei, %bb.af ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0222252.i ; 2 uses
  store ptr %.sink.i, ptr %i.eo, align 8, !tbaa !34
  %i.ep = call i32 @bn_get_top(ptr noundef %.sink.i) #7
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.i, label %.lr.ph251.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw [33 x i8], ptr %i.dp, i64 %.0222252.i
  br label %bb.ai

.preheader247.i:                                  ; preds = %bb.ai
  %i.es = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.et = icmp samesign ult i64 %indvars.iv.i, 25
  br i1 %i.et, label %.lr.ph251.i, label %._crit_edge.i

.lr.ph251.i:                                      ; preds = %.preheader247.i, %bb.ah
  %.0229.lcssa274.i = phi i32 [ %i.es, %.preheader247.i ], [ 0, %bb.ah ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [33 x i8], ptr %i.dp, i64 %.0222252.i
  %i.ev = zext nneg i32 %.0229.lcssa274.i to i64
  %scevgep.i = getelementptr i8, ptr %i.eu, i64 %i.ev
  %narrow.i = sub nuw nsw i32 33, %.0229.lcssa274.i
  %i.ew = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.ew, i1 false), !tbaa !22
  br label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.ex = phi ptr [ %.sink.i, %.lr.ph.i ], [ %i.fc, %bb.ai ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 4 uses
  %i.ey = call ptr @bn_get_words(ptr noundef %i.ex) #7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.i
  store i64 %i.fa, ptr %i.fb, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !tbaa !34 ; 2 uses
  %i.fd = call i32 @bn_get_top(ptr noundef %i.fc) #7
  %i.fe = shl nsw i32 %i.fd, 3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next.i, %i.ff
  br i1 %i.fg, label %bb.ai, label %.preheader247.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %.lr.ph251.i, %.preheader247.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.0144206258, i64 %.0222252.i ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !14
  %i.fl = call i32 @bn_copy_words(ptr noundef nonnull %i.dt, ptr noundef %i.fk, i32 noundef 4) #7
  %.not239.i = icmp eq i32 %i.fl, 0
  br i1 %.not239.i, label %.thread245.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !18
  %i.fp = call i32 @bn_copy_words(ptr noundef nonnull %i.dv, ptr noundef %i.fo, i32 noundef 4) #7
  %.not240.i = icmp eq i32 %i.fp, 0
  br i1 %.not240.i, label %.thread245.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19
  %i.ft = call i32 @bn_copy_words(ptr noundef nonnull %i.dw, ptr noundef %i.fs, i32 noundef 4) #7
  %.not241.i = icmp eq i32 %i.ft, 0
  br i1 %.not241.i, label %.thread245.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dt, i32 noundef 1) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dx, i32 noundef 2) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dy, i32 noundef 3) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dx, i32 noundef 4) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dy) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dy, i32 noundef 6) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, i32 noundef 5) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ea, i32 noundef 7) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dx, i32 noundef 8) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dy) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dy, i32 noundef 12) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dz) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, i32 noundef 10) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ea, i32 noundef 14) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dy, i32 noundef 13) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, i32 noundef 11) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ea, i32 noundef 15) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dt) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dy, i32 noundef 9) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dx, i32 noundef 16) #7
  %i.fu = add nuw i64 %.0222252.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fu, %.0142208256
  br i1 %exitcond.not.i, label %bb.am, label %bb.ac, !llvm.loop !38

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dp, i64 31
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !22
  %i.fx = lshr i8 %i.fw, 6
  %i.fy = zext nneg i8 %i.fx to i32               ; 2 uses
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = sub nuw nsw i32 %i.fy, %i.fz
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dn, i32 noundef %i.ga) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.dj, ptr noundef nonnull align 8 dereferenceable(96) %i.dt, i64 96, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dt, i64 128 ; 4 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.dt, i64 144 ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge256.i, %bb.am
  %.0227257.i = phi i32 [ 255, %bb.am ], [ %i.hc, %._crit_edge256.i ] ; 4 uses
  %i.gc = icmp eq i32 %.0227257.i, 255
  %i.gd = zext i1 %i.gc to i64                    ; 2 uses
  %i.ge = icmp ugt i64 %.0142208256, %i.gd
  br i1 %i.ge, label %.lr.ph255.i, label %._crit_edge256.i

.lr.ph255.i:                                      ; preds = %bb.an
  %i.gf = add nsw i32 %.0227257.i, -1             ; 2 uses
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = zext nneg i32 %i.gg to i64
  %invariant.gep.i = getelementptr i8, ptr %i.dp, i64 %i.gh
  %i.gi = and i32 %i.gf, 7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph255.i
  %.1253.i = phi i64 [ %i.gd, %.lr.ph255.i ], [ %i.hb, %bb.ao ] ; 3 uses
  %gep.i = getelementptr [33 x i8], ptr %invariant.gep.i, i64 %.1253.i
  %i.gj = load i16, ptr %gep.i, align 1
  %i.gk = zext i16 %i.gj to i32
  %i.gl = lshr i32 %i.gk, %i.gi
  %i.gm = and i32 %i.gl, 63                       ; 3 uses
  %i.gn = lshr i32 %i.gm, 5                       ; 2 uses
  %i.go = sub nsw i32 0, %i.gn                    ; 2 uses
  %i.gp = xor i32 %i.gm, 63
  %i.gq = and i32 %i.gp, %i.go
  %i.gr = icmp eq i32 %i.gn, 0
  %i.gs = select i1 %i.gr, i32 %i.gm, i32 0
  %i.gt = or i32 %i.gs, %i.gq                     ; 2 uses
  %i.gu = lshr i32 %i.gt, 1
  %i.gv = sub nuw nsw i32 %i.gt, %i.gu
  %i.gw = and i32 %i.go, 1
  %i.gx = getelementptr inbounds nuw [1536 x i8], ptr %i.dn, i64 %.1253.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.gx, i32 noundef %i.gv) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.dv) #7
  %i.gy = zext nneg i32 %i.gw to i64              ; 2 uses
  %35 = sub nsw i64 0, %i.gy
  %36 = add nsw i64 %i.gy, -1
  %37 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !31
  %i.gz = insertelement <2 x i64> poison, i64 %35, i64 0
  %38 = shufflevector <2 x i64> %i.gz, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %39 = and <2 x i64> %37, %38
  %40 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !31
  %i.ha = insertelement <2 x i64> poison, i64 %36, i64 0
  %41 = shufflevector <2 x i64> %i.ha, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %42 = and <2 x i64> %41, %40
  %43 = xor <2 x i64> %42, %39
  store <2 x i64> %43, ptr %i.dv, align 8, !tbaa !31
  %44 = load <2 x i64>, ptr %33, align 8, !tbaa !31
  %45 = and <2 x i64> %44, %38
  %46 = load <2 x i64>, ptr %34, align 8, !tbaa !31
  %47 = and <2 x i64> %46, %41
  %48 = xor <2 x i64> %47, %45
  store <2 x i64> %48, ptr %34, align 8, !tbaa !31
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dt) #7
  %i.hb = add i64 %.1253.i, 1                     ; 2 uses
  %exitcond264.not.i = icmp eq i64 %i.hb, %.0142208256
  br i1 %exitcond264.not.i, label %._crit_edge256.i, label %bb.ao, !llvm.loop !39

._crit_edge256.i:                                 ; preds = %bb.ao, %bb.an
  %i.hc = add nsw i32 %.0227257.i, -5
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj) #7
  %i.hd = icmp samesign ugt i32 %.0227257.i, 9
  br i1 %i.hd, label %bb.an, label %.preheader.i, !llvm.loop !40

.preheader.i:                                     ; preds = %._crit_edge256.i, %.preheader.i
  %.2258.i = phi i64 [ %i.hx, %.preheader.i ], [ 0, %._crit_edge256.i ] ; 3 uses
  %i.he = getelementptr inbounds nuw [33 x i8], ptr %i.dp, i64 %.2258.i
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !22
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = and i32 %i.hh, 62                       ; 3 uses
  %i.hj = lshr i32 %i.hi, 5                       ; 2 uses
  %i.hk = sub nsw i32 0, %i.hj                    ; 2 uses
  %i.hl = xor i32 %i.hi, 63
  %i.hm = and i32 %i.hl, %i.hk
  %i.hn = icmp eq i32 %i.hj, 0
  %i.ho = select i1 %i.hn, i32 %i.hi, i32 0
  %i.hp = or i32 %i.ho, %i.hm                     ; 2 uses
  %i.hq = lshr i32 %i.hp, 1
  %i.hr = sub nuw nsw i32 %i.hp, %i.hq
  %i.hs = and i32 %i.hk, 1
  %i.ht = getelementptr inbounds nuw [1536 x i8], ptr %i.dn, i64 %.2258.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.ht, i32 noundef %i.hr) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.gb, ptr noundef nonnull %i.dv) #7
  %i.hu = zext nneg i32 %i.hs to i64              ; 2 uses
  %49 = sub nsw i64 0, %i.hu
  %50 = add nsw i64 %i.hu, -1
  %51 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !31
  %i.hv = insertelement <2 x i64> poison, i64 %49, i64 0
  %52 = shufflevector <2 x i64> %i.hv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %53 = and <2 x i64> %51, %52
  %54 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !31
  %i.hw = insertelement <2 x i64> poison, i64 %50, i64 0
  %55 = shufflevector <2 x i64> %i.hw, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %56 = and <2 x i64> %55, %54
  %57 = xor <2 x i64> %56, %53
  store <2 x i64> %57, ptr %i.dv, align 8, !tbaa !31
  %58 = load <2 x i64>, ptr %33, align 8, !tbaa !31
  %59 = and <2 x i64> %58, %52
  %60 = load <2 x i64>, ptr %34, align 8, !tbaa !31
  %61 = and <2 x i64> %60, %55
  %62 = xor <2 x i64> %61, %59
  store <2 x i64> %62, ptr %34, align 8, !tbaa !31
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dt) #7
  %i.hx = add nuw i64 %.2258.i, 1                 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %i.hx, %.0142208256
  br i1 %exitcond265.not.i, label %ecp_nistz256_windowed_mul.exit, label %.preheader.i, !llvm.loop !41

.thread245.sink.split.i:                          ; preds = %bb.ak, %bb.aj, %._crit_edge.i, %bb.af
  %.sink278.i = phi i32 [ 643, %bb.af ], [ 671, %bb.ak ], [ 671, %bb.aj ], [ 671, %._crit_edge.i ]
  %.sink277.i = phi i32 [ 524291, %bb.af ], [ 146, %bb.ak ], [ 146, %bb.aj ], [ 146, %._crit_edge.i ]
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink278.i, ptr noundef nonnull @__func__.ecp_nistz256_windowed_mul) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink277.i, ptr noundef null) #7
  br label %ecp_nistz256_windowed_mul.exit

ecp_nistz256_windowed_mul.exit:                   ; preds = %bb.ae, %.preheader.i, %bb.x, %bb.y, %bb.z, %bb.aa, %.thread245.sink.split.i
  %.not165.not = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %.thread245.sink.split.i ], [ true, %.preheader.i ], [ false, %bb.ae ] ; 2 uses
  %.0226.i = phi ptr [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ %i.dp, %bb.aa ], [ %i.dp, %.thread245.sink.split.i ], [ %i.dp, %.preheader.i ], [ %i.dp, %bb.ae ]
  %.0225.i = phi ptr [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ %i.dr, %.thread245.sink.split.i ], [ %i.dr, %.preheader.i ], [ %i.dr, %bb.ae ]
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !36
  call void @CRYPTO_free(ptr noundef %i.hy, ptr noundef nonnull @.str, i32 noundef 769) #7
  call void @CRYPTO_free(ptr noundef %.0226.i, ptr noundef nonnull @.str, i32 noundef 770) #7
  call void @CRYPTO_free(ptr noundef %.0225.i, ptr noundef nonnull @.str, i32 noundef 771) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %brmerge.not = and i1 %.not164196205259, %.not165.not
  br i1 %brmerge.not, label %.thread213, label %bb.ap

.thread213:                                       ; preds = %ecp_nistz256_windowed_mul.exit
  call void @ecp_nistz256_point_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %i.dj) #7
  br label %bb.aq

bb.ap:                                            ; preds = %ecp_nistz256_windowed_mul.exit
  br i1 %.not165.not, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %.thread213, %bb.ap, %.loopexit
  %.0128212 = phi ptr [ %.0128211254, %bb.ap ], [ null, %.loopexit ], [ %.0128211254, %.thread213 ] ; 4 uses
  %.0130210 = phi ptr [ %.0130209255, %bb.ap ], [ null, %.loopexit ], [ %.0130209255, %.thread213 ] ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !14
  %i.ib = call i32 @bn_set_words(ptr noundef %i.ia, ptr noundef nonnull %8, i32 noundef 4) #7
  %.not166 = icmp eq i32 %i.ib, 0
  br i1 %.not166, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.if = call i32 @bn_set_words(ptr noundef %i.id, ptr noundef nonnull %i.ie, i32 noundef 4) #7
  %.not167 = icmp eq i32 %i.if, 0
  br i1 %.not167, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !19
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ij = call i32 @bn_set_words(ptr noundef %i.ih, ptr noundef nonnull %i.ii, i32 noundef 4) #7
  %.not168 = icmp eq i32 %i.ij, 0
  br i1 %.not168, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !19 ; 2 uses
  %i.il = call ptr @bn_get_words(ptr noundef %i.ik) #7 ; 4 uses
  %i.im = call i32 @bn_get_top(ptr noundef %i.ik) #7
  %i.in = icmp eq i32 %i.im, 4
  br i1 %i.in, label %bb.au, label %is_one.exit

bb.au:                                            ; preds = %bb.at
  %i.io = load i64, ptr %i.il, align 8, !tbaa !31
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !31
  %i.iv = icmp eq i64 %i.io, 1
  %i.iw = icmp eq i64 %i.iq, -4294967296
  %i.ix = and i1 %i.iv, %i.iw
  %i.iy = icmp eq i64 %i.is, -1
  %i.iz = and i1 %i.ix, %i.iy
  %i.ja = icmp eq i64 %i.iu, 4294967294
  %i.jb = and i1 %i.iz, %i.ja
  %i.jc = zext i1 %i.jb to i32
  br label %is_one.exit

is_one.exit:                                      ; preds = %bb.at, %bb.au
  %.0.i172 = phi i32 [ %i.jc, %bb.au ], [ 0, %bb.at ]
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.0.i172, ptr %i.jd, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.r, %bb.g, %bb.k, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.v, %bb.u, %is_one.exit, %bb.e
  %.0138 = phi i32 [ 0, %bb.e ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %is_one.exit ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bb.p ]
  %.1131 = phi ptr [ null, %bb.e ], [ null, %bb.u ], [ %i.dc, %bb.v ], [ %.0130210, %is_one.exit ], [ %.0130210, %bb.as ], [ %.0130210, %bb.ar ], [ %.0130210, %bb.aq ], [ %.0130209255, %bb.ap ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.p ]
  %.1129 = phi ptr [ null, %bb.e ], [ null, %bb.u ], [ null, %bb.v ], [ %.0128212, %is_one.exit ], [ %.0128212, %bb.as ], [ %.0128212, %bb.ar ], [ %.0128212, %bb.aq ], [ %.0128211254, %bb.ap ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.p ]
  call void @BN_CTX_end(ptr noundef %6) #7
  call void @CRYPTO_free(ptr noundef %.1129, ptr noundef nonnull @.str, i32 noundef 1141) #7
  call void @CRYPTO_free(ptr noundef %.1131, ptr noundef nonnull @.str, i32 noundef 1142) #7
  br label %bb.av

bb.av:                                            ; preds = %.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.0138, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_mult_precompute(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.P256_POINT_AFFINE, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !36
  tail call void @EC_pre_comp_free(ptr noundef %0) #7
  %i.b = tail call ptr @EC_GROUP_get0_generator(ptr noundef %0) #7 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @__func__.ecp_nistz256_mult_precompute) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, ptr noundef null) #7
  br label %ecp_nistz256_pre_comp_new.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @ecp_nistz256_is_affine_G(ptr noundef %i.b)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %ecp_nistz256_pre_comp_new.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ecp_nistz256_pre_comp_new.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 40, ptr noundef nonnull @.str, i32 noundef 1195) #7 ; 17 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %ecp_nistz256_pre_comp_new.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 6, ptr %i.g, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store atomic i32 1, ptr %i.h seq_cst, align 8, !tbaa !44
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call ptr @BN_CTX_new_ex(ptr noundef %i.k) #7 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.071 = phi ptr [ %i.l, %bb.g ], [ %1, %bb.f ]  ; 19 uses
  %.067 = phi ptr [ %i.l, %bb.g ], [ null, %bb.f ] ; 9 uses
  tail call void @BN_CTX_start(ptr noundef nonnull %.071) #7
  %i.n = tail call ptr @EC_GROUP_get0_order(ptr noundef nonnull %0) #7 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i32 @BN_is_zero(ptr noundef nonnull %i.n) #7
  %.not84 = icmp eq i32 %i.p, 0
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 846, ptr noundef nonnull @__func__.ecp_nistz256_mult_precompute) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 114, ptr noundef null) #7
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.q = call noalias ptr @CRYPTO_aligned_alloc_array(i64 noundef 2368, i64 noundef 64, i64 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 853) #7 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = call ptr @EC_POINT_new(ptr noundef nonnull %0) #7 ; 25 uses
  %i.t = call ptr @EC_POINT_new(ptr noundef nonnull %0) #7 ; 11 uses
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp eq ptr %i.t, null
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = call i32 @EC_POINT_copy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.b) #7
  %.not85 = icmp eq i32 %i.w, 0
  br i1 %.not85, label %.loopexit, label %.preheader95

.preheader95:                                     ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.ab
  %i.aa = add nuw nsw i32 %.06498, 1              ; 2 uses
  %exitcond101.not = icmp eq i32 %i.aa, 64
  br i1 %exitcond101.not, label %bb.ac, label %bb.o, !llvm.loop !46
end_hunk_0
