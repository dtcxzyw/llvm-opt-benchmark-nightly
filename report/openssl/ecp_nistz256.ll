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
  br i1 %exitcond.not.i, label %ecp_nistz256_mod_inverse.exit, label %bb.h, !llvm.loop !33

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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not156 = icmp eq ptr %i.g, null
  br i1 %.not156, label %.thread177, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @EC_POINT_new(ptr noundef nonnull %0) #7 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %8, ptr noundef %i.k, i32 noundef 1) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
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
  store i32 1, ptr %i.v, align 8, !tbaa !41
  %i.w = call i32 @EC_POINT_cmp(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef %6) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %.thread179

.thread179:                                       ; preds = %bb.l
  call void @EC_POINT_free(ptr noundef nonnull %i.h) #7
  br label %.thread177

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
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
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ao, i1 false), !tbaa !21
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.s ] ; 4 uses
  %i.ap = call ptr @bn_get_words(ptr noundef nonnull %.0123) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.at = call i32 @bn_get_top(ptr noundef nonnull %.0123) #7
  %i.au = shl nsw i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %.preheader, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph218.preheader, %.preheader
  %i.ax = load i8, ptr %i.b, align 16, !tbaa !21
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
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.br = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bn, i64 0
  %i.bs = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bn, i64 1
  %i.bt = sub nsw <2 x i64> %i.br, %i.bs          ; 2 uses
  %i.bu = load <4 x i64>, ptr %i.bl, align 32, !tbaa !29
  %i.bv = shufflevector <2 x i64> %i.bt, <2 x i64> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bw = and <4 x i64> %i.bu, %i.bv
  %i.bx = load <4 x i64>, ptr %i.bm, align 32, !tbaa !29
  %i.by = shufflevector <2 x i64> %i.bt, <2 x i64> poison, <4 x i32> zeroinitializer
  %i.bz = and <4 x i64> %i.by, %i.bx
  %i.ca = xor <4 x i64> %i.bz, %i.bw              ; 2 uses
  store <4 x i64> %i.ca, ptr %i.bm, align 32, !tbaa !29
  %i.cb = load <4 x i64>, ptr %8, align 32, !tbaa !21
  %i.cc = shufflevector <4 x i64> %i.ca, <4 x i64> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.cc)
  %i.ce = icmp ne i64 %i.cd, 0                    ; 4 uses
  %i.cf = sext i1 %i.ce to i64
  %i.cg = zext i1 %i.ce to i64
  store i64 %i.cg, ptr %i.bl, align 32, !tbaa !21
  %i.ch = select i1 %i.ce, i64 -4294967296, i64 0
  store i64 %i.ch, ptr %i.bo, align 8, !tbaa !21
  store i64 %i.cf, ptr %i.bp, align 16, !tbaa !21
  %i.ci = select i1 %i.ce, i64 4294967294, i64 0
  store i64 %i.ci, ptr %i.bq, align 8, !tbaa !21
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.t
  %indvars.iv226 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next227, %bb.t ] ; 2 uses
  %.0127220 = phi i32 [ 7, %._crit_edge ], [ %i.cu, %bb.t ] ; 2 uses
  %i.cl = add nsw i32 %.0127220, -1               ; 2 uses
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 1
  %i.cq = zext i16 %i.cp to i32
  %i.cr = and i32 %i.cl, 7
  %i.cs = lshr i32 %i.cq, %i.cr
  %i.ct = and i32 %i.cs, 255                      ; 3 uses
  %i.cu = add nuw nsw i32 %.0127220, 7
  %i.cv = lshr i32 %i.ct, 7                       ; 2 uses
  %i.cw = sub nsw i32 0, %i.cv                    ; 2 uses
  %i.cx = xor i32 %i.ct, 255
  %i.cy = and i32 %i.cx, %i.cw
  %i.cz = icmp eq i32 %i.cv, 0
  %i.da = select i1 %i.cz, i32 %i.ct, i32 0
  %i.db = or i32 %i.da, %i.cy                     ; 2 uses
  %i.dc = lshr i32 %i.db, 1
  %i.dd = sub nuw nsw i32 %i.db, %i.dc
  %i.de = and i32 %i.cw, 1
  %i.df = getelementptr inbounds nuw [4096 x i8], ptr %.3.ph, i64 %indvars.iv226
  call void @ecp_nistz256_gather_w7(ptr noundef nonnull %7, ptr noundef nonnull %i.df, i32 noundef %i.dd) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  %i.dg = zext nneg i32 %i.de to i64              ; 2 uses
  %11 = load <2 x i64>, ptr %9, align 32, !tbaa !29
  %12 = load <2 x i64>, ptr %10, align 32, !tbaa !29
  %13 = sub nsw i64 0, %i.dg
  %14 = add nsw i64 %i.dg, -1
  %i.dh = insertelement <2 x i64> poison, i64 %13, i64 0
  %15 = shufflevector <2 x i64> %i.dh, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %16 = and <2 x i64> %11, %15
  %i.di = insertelement <2 x i64> poison, i64 %14, i64 0
  %17 = shufflevector <2 x i64> %i.di, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = and <2 x i64> %17, %12
  %19 = xor <2 x i64> %18, %16
  store <2 x i64> %19, ptr %10, align 32, !tbaa !29
  %20 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !29
  %21 = and <2 x i64> %20, %15
  %22 = load <2 x i64>, ptr %i.ck, align 16, !tbaa !29
  %23 = and <2 x i64> %22, %17
  %24 = xor <2 x i64> %23, %21
  store <2 x i64> %24, ptr %i.ck, align 16, !tbaa !29
  call void @ecp_nistz256_point_add_affine(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next227, 37
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !35

bb.u:                                             ; preds = %.thread177
  %i.dj = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1101) #7 ; 6 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 1105) #7 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread, label %.thread247

.thread247:                                       ; preds = %bb.v
  %i.dn = shl nuw nsw i64 %3, 3                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr align 8 %5, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %3
  store ptr %2, ptr %i.do, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %4, i64 %i.dn, i1 false)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %3
  store ptr %i.d, ptr %i.dp, align 8, !tbaa !43
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.c
  %.not163 = icmp eq i64 %3, 0
  br i1 %.not163, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %spec.select261 = select i1 %.not, ptr %7, ptr %8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread247
  %.not164196205259 = phi i1 [ false, %.thread247 ], [ %.not, %bb.w ]
  %.0144206258 = phi ptr [ %i.dl, %.thread247 ], [ %4, %bb.w ]
  %.0143207257 = phi ptr [ %i.dj, %.thread247 ], [ %5, %bb.w ]
  %.0142208256 = phi i64 [ %i.c, %.thread247 ], [ %3, %bb.w ] ; 9 uses
  %.0130209255 = phi ptr [ %i.dj, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %.0128211254 = phi ptr [ %i.dl, %.thread247 ], [ null, %bb.w ] ; 3 uses
  %i.dq = phi ptr [ %8, %.thread247 ], [ %spec.select261, %bb.w ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.dr = icmp ugt i64 %.0142208256, 1398100
  br i1 %i.dr, label %ecp_nistz256_windowed_mul.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = shl nuw nsw i64 %.0142208256, 4
  %i.dt = or disjoint i64 %i.ds, 5
  %i.du = call noalias ptr @CRYPTO_aligned_alloc_array(i64 noundef %i.dt, i64 noundef 96, i64 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 625) #7 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %ecp_nistz256_windowed_mul.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 33, ptr noundef nonnull @.str, i32 noundef 627) #7 ; 10 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %ecp_nistz256_windowed_mul.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = call noalias ptr @CRYPTO_malloc_array(i64 noundef range(i64 1, 0) %.0142208256, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef 628) #7 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %ecp_nistz256_windowed_mul.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw [1536 x i8], ptr %i.du, i64 %.0142208256 ; 25 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 96 ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 14 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 288 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 384 ; 8 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.al, %bb.ab
  %.0222252.i = phi i64 [ 0, %bb.ab ], [ %i.gb, %bb.al ] ; 7 uses
  %i.ei = getelementptr inbounds nuw [1536 x i8], ptr %i.du, i64 %.0222252.i ; 16 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.0143207257, i64 %.0222252.i ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !42
  %i.el = call i32 @BN_num_bits(ptr noundef %i.ek) #7
  %i.em = icmp sgt i32 %i.el, 256
  br i1 %i.em, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !42
  %i.eo = call i32 @BN_is_negative(ptr noundef %i.en) #7
  %.not.i171 = icmp eq i32 %i.eo, 0
  br i1 %.not.i171, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ep = call ptr @BN_CTX_get(ptr noundef %6) #7 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %ecp_nistz256_windowed_mul.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = load ptr, ptr %i.ej, align 8, !tbaa !42
  %i.es = load ptr, ptr %i.eb, align 8, !tbaa !28
  %i.et = call i32 @BN_nnmod(ptr noundef nonnull %i.ep, ptr noundef %i.er, ptr noundef %i.es, ptr noundef %6) #7
  %.not238.i = icmp eq i32 %i.et, 0
  br i1 %.not238.i, label %.thread245.sink.split.i, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !42
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi ptr [ %i.eu, %bb.ag ], [ %i.ep, %bb.af ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.0222252.i ; 2 uses
  store ptr %.sink.i, ptr %i.ev, align 8, !tbaa !42
  %i.ew = call i32 @bn_get_top(ptr noundef %.sink.i) #7
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i, label %.lr.ph251.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw [33 x i8], ptr %i.dw, i64 %.0222252.i
  br label %bb.ai

.preheader247.i:                                  ; preds = %bb.ai
  %i.ez = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.fa = icmp samesign ult i64 %indvars.iv.i, 25
  br i1 %i.fa, label %.lr.ph251.i, label %._crit_edge.i

.lr.ph251.i:                                      ; preds = %.preheader247.i, %bb.ah
  %.0229.lcssa274.i = phi i32 [ %i.ez, %.preheader247.i ], [ 0, %bb.ah ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [33 x i8], ptr %i.dw, i64 %.0222252.i
  %i.fc = zext nneg i32 %.0229.lcssa274.i to i64
  %scevgep.i = getelementptr i8, ptr %i.fb, i64 %i.fc
  %narrow.i = sub nuw nsw i32 33, %.0229.lcssa274.i
  %i.fd = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 0, i64 %i.fd, i1 false), !tbaa !21
  br label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.fe = phi ptr [ %.sink.i, %.lr.ph.i ], [ %i.fj, %bb.ai ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 4 uses
  %i.ff = call ptr @bn_get_words(ptr noundef %i.fe) #7
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %indvars.iv.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i
  store i64 %i.fh, ptr %i.fi, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.fj = load ptr, ptr %i.ev, align 8, !tbaa !42 ; 2 uses
  %i.fk = call i32 @bn_get_top(ptr noundef %i.fj) #7
  %i.fl = shl nsw i32 %i.fk, 3
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next.i, %i.fm
  br i1 %i.fn, label %bb.ai, label %.preheader247.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph251.i, %.preheader247.i
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0144206258, i64 %.0222252.i ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17
  %i.fs = call i32 @bn_copy_words(ptr noundef nonnull %i.ea, ptr noundef %i.fr, i32 noundef 4) #7
  %.not239.i = icmp eq i32 %i.fs, 0
  br i1 %.not239.i, label %.thread245.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !18
  %i.fw = call i32 @bn_copy_words(ptr noundef nonnull %i.ec, ptr noundef %i.fv, i32 noundef 4) #7
  %.not240.i = icmp eq i32 %i.fw, 0
  br i1 %.not240.i, label %.thread245.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !19
  %i.ga = call i32 @bn_copy_words(ptr noundef nonnull %i.ed, ptr noundef %i.fz, i32 noundef 4) #7
  %.not241.i = icmp eq i32 %i.ga, 0
  br i1 %.not241.i, label %.thread245.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ea, i32 noundef 1) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ee, i32 noundef 2) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ef, i32 noundef 3) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ee) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ee, i32 noundef 4) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ef) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ef, i32 noundef 6) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eg, i32 noundef 5) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eh, i32 noundef 7) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ee) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ee, i32 noundef 8) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ef) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ef, i32 noundef 12) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eg, i32 noundef 10) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eh, i32 noundef 14) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ef, i32 noundef 13) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eg, i32 noundef 11) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eh, i32 noundef 15) #7
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ef, i32 noundef 9) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ee) #7
  call void @ecp_nistz256_scatter_w5(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ee, i32 noundef 16) #7
  %i.gb = add nuw i64 %.0222252.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gb, %.0142208256
  br i1 %exitcond.not.i, label %bb.am, label %bb.ac, !llvm.loop !37

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dw, i64 31
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !21
  %i.ge = lshr i8 %i.gd, 6
  %i.gf = zext nneg i8 %i.ge to i32               ; 2 uses
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = sub nuw nsw i32 %i.gf, %i.gg
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.du, i32 noundef %i.gh) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.dq, ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i64 96, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 4 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 4 uses
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge256.i, %bb.am
  %.0227257.i = phi i32 [ 255, %bb.am ], [ %i.hj, %._crit_edge256.i ] ; 4 uses
  %i.gj = icmp eq i32 %.0227257.i, 255
  %i.gk = zext i1 %i.gj to i64                    ; 2 uses
  %i.gl = icmp ugt i64 %.0142208256, %i.gk
  br i1 %i.gl, label %.lr.ph255.i, label %._crit_edge256.i

.lr.ph255.i:                                      ; preds = %bb.an
  %i.gm = add nsw i32 %.0227257.i, -1             ; 2 uses
  %i.gn = lshr i32 %i.gm, 3
  %i.go = zext nneg i32 %i.gn to i64
  %invariant.gep.i = getelementptr i8, ptr %i.dw, i64 %i.go
  %i.gp = and i32 %i.gm, 7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph255.i
  %.1253.i = phi i64 [ %i.gk, %.lr.ph255.i ], [ %i.hi, %bb.ao ] ; 3 uses
  %gep.i = getelementptr [33 x i8], ptr %invariant.gep.i, i64 %.1253.i
  %i.gq = load i16, ptr %gep.i, align 1
  %i.gr = zext i16 %i.gq to i32
  %i.gs = lshr i32 %i.gr, %i.gp
  %i.gt = and i32 %i.gs, 63                       ; 3 uses
  %i.gu = lshr i32 %i.gt, 5                       ; 2 uses
  %i.gv = sub nsw i32 0, %i.gu                    ; 2 uses
  %i.gw = xor i32 %i.gt, 63
  %i.gx = and i32 %i.gw, %i.gv
  %i.gy = icmp eq i32 %i.gu, 0
  %i.gz = select i1 %i.gy, i32 %i.gt, i32 0
  %i.ha = or i32 %i.gz, %i.gx                     ; 2 uses
  %i.hb = lshr i32 %i.ha, 1
  %i.hc = sub nuw nsw i32 %i.ha, %i.hb
  %i.hd = and i32 %i.gv, 1
  %i.he = getelementptr inbounds nuw [1536 x i8], ptr %i.du, i64 %.1253.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.he, i32 noundef %i.hc) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.ec) #7
  %i.hf = zext nneg i32 %i.hd to i64              ; 2 uses
  %27 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !29
  %28 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !29
  %29 = sub nsw i64 0, %i.hf
  %30 = add nsw i64 %i.hf, -1
  %i.hg = insertelement <2 x i64> poison, i64 %29, i64 0
  %31 = shufflevector <2 x i64> %i.hg, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %32 = and <2 x i64> %27, %31
  %i.hh = insertelement <2 x i64> poison, i64 %30, i64 0
  %33 = shufflevector <2 x i64> %i.hh, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %34 = and <2 x i64> %33, %28
  %35 = xor <2 x i64> %34, %32
  store <2 x i64> %35, ptr %i.ec, align 8, !tbaa !29
  %36 = load <2 x i64>, ptr %25, align 8, !tbaa !29
  %37 = and <2 x i64> %36, %31
  %38 = load <2 x i64>, ptr %26, align 8, !tbaa !29
  %39 = and <2 x i64> %38, %33
  %40 = xor <2 x i64> %39, %37
  store <2 x i64> %40, ptr %26, align 8, !tbaa !29
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.ea) #7
  %i.hi = add i64 %.1253.i, 1                     ; 2 uses
  %exitcond264.not.i = icmp eq i64 %i.hi, %.0142208256
  br i1 %exitcond264.not.i, label %._crit_edge256.i, label %bb.ao, !llvm.loop !38

._crit_edge256.i:                                 ; preds = %bb.ao, %bb.an
  %i.hj = add nsw i32 %.0227257.i, -5
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq) #7
  call void @ecp_nistz256_point_double(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq) #7
  %i.hk = icmp samesign ugt i32 %.0227257.i, 9
  br i1 %i.hk, label %bb.an, label %.preheader.i, !llvm.loop !39

.preheader.i:                                     ; preds = %._crit_edge256.i, %.preheader.i
  %.2258.i = phi i64 [ %i.ie, %.preheader.i ], [ 0, %._crit_edge256.i ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [33 x i8], ptr %i.dw, i64 %.2258.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !21
  %i.hn = zext i8 %i.hm to i32
  %i.ho = shl nuw nsw i32 %i.hn, 1
  %i.hp = and i32 %i.ho, 62                       ; 3 uses
  %i.hq = lshr i32 %i.hp, 5                       ; 2 uses
  %i.hr = sub nsw i32 0, %i.hq                    ; 2 uses
  %i.hs = xor i32 %i.hp, 63
  %i.ht = and i32 %i.hs, %i.hr
  %i.hu = icmp eq i32 %i.hq, 0
  %i.hv = select i1 %i.hu, i32 %i.hp, i32 0
  %i.hw = or i32 %i.hv, %i.ht                     ; 2 uses
  %i.hx = lshr i32 %i.hw, 1
  %i.hy = sub nuw nsw i32 %i.hw, %i.hx
  %i.hz = and i32 %i.hr, 1
  %i.ia = getelementptr inbounds nuw [1536 x i8], ptr %i.du, i64 %.2258.i
  call void @ecp_nistz256_gather_w5(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ia, i32 noundef %i.hy) #7
  call void @ecp_nistz256_neg(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.ec) #7
  %i.ib = zext nneg i32 %i.hz to i64              ; 2 uses
  %41 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !29
  %42 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !29
  %43 = sub nsw i64 0, %i.ib
  %44 = add nsw i64 %i.ib, -1
  %i.ic = insertelement <2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <2 x i64> %i.ic, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %46 = and <2 x i64> %41, %45
  %i.id = insertelement <2 x i64> poison, i64 %44, i64 0
  %47 = shufflevector <2 x i64> %i.id, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %48 = and <2 x i64> %47, %42
  %49 = xor <2 x i64> %48, %46
  store <2 x i64> %49, ptr %i.ec, align 8, !tbaa !29
  %50 = load <2 x i64>, ptr %25, align 8, !tbaa !29
  %51 = and <2 x i64> %50, %45
  %52 = load <2 x i64>, ptr %26, align 8, !tbaa !29
  %53 = and <2 x i64> %52, %47
  %54 = xor <2 x i64> %53, %51
  store <2 x i64> %54, ptr %26, align 8, !tbaa !29
  call void @ecp_nistz256_point_add(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.ea) #7
  %i.ie = add nuw i64 %.2258.i, 1                 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %i.ie, %.0142208256
  br i1 %exitcond265.not.i, label %ecp_nistz256_windowed_mul.exit, label %.preheader.i, !llvm.loop !40

.thread245.sink.split.i:                          ; preds = %bb.ak, %bb.aj, %._crit_edge.i, %bb.af
  %.sink278.i = phi i32 [ 643, %bb.af ], [ 671, %bb.ak ], [ 671, %bb.aj ], [ 671, %._crit_edge.i ]
  %.sink277.i = phi i32 [ 524291, %bb.af ], [ 146, %bb.ak ], [ 146, %bb.aj ], [ 146, %._crit_edge.i ]
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink278.i, ptr noundef nonnull @__func__.ecp_nistz256_windowed_mul) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink277.i, ptr noundef null) #7
  br label %ecp_nistz256_windowed_mul.exit

ecp_nistz256_windowed_mul.exit:                   ; preds = %bb.ae, %.preheader.i, %bb.x, %bb.y, %bb.z, %bb.aa, %.thread245.sink.split.i
  %.not165.not = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %.thread245.sink.split.i ], [ true, %.preheader.i ], [ false, %bb.ae ] ; 2 uses
  %.0226.i = phi ptr [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ %i.dw, %bb.aa ], [ %i.dw, %.thread245.sink.split.i ], [ %i.dw, %.preheader.i ], [ %i.dw, %bb.ae ]
  %.0225.i = phi ptr [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ %i.dy, %.thread245.sink.split.i ], [ %i.dy, %.preheader.i ], [ %i.dy, %bb.ae ]
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @CRYPTO_free(ptr noundef %i.if, ptr noundef nonnull @.str, i32 noundef 769) #7
  call void @CRYPTO_free(ptr noundef %.0226.i, ptr noundef nonnull @.str, i32 noundef 770) #7
  call void @CRYPTO_free(ptr noundef %.0225.i, ptr noundef nonnull @.str, i32 noundef 771) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %brmerge.not = and i1 %.not164196205259, %.not165.not
  br i1 %brmerge.not, label %.thread213, label %bb.ap

.thread213:                                       ; preds = %ecp_nistz256_windowed_mul.exit
  call void @ecp_nistz256_point_add(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %i.dq) #7
  br label %bb.aq

bb.ap:                                            ; preds = %ecp_nistz256_windowed_mul.exit
  br i1 %.not165.not, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %.thread213, %bb.ap, %.loopexit
  %.0128212 = phi ptr [ %.0128211254, %bb.ap ], [ null, %.loopexit ], [ %.0128211254, %.thread213 ] ; 4 uses
  %.0130210 = phi ptr [ %.0130209255, %bb.ap ], [ null, %.loopexit ], [ %.0130209255, %.thread213 ] ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !17
  %i.ii = call i32 @bn_set_words(ptr noundef %i.ih, ptr noundef nonnull %8, i32 noundef 4) #7
  %.not166 = icmp eq i32 %i.ii, 0
  br i1 %.not166, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.im = call i32 @bn_set_words(ptr noundef %i.ik, ptr noundef nonnull %i.il, i32 noundef 4) #7
  %.not167 = icmp eq i32 %i.im, 0
  br i1 %.not167, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.iq = call i32 @bn_set_words(ptr noundef %i.io, ptr noundef nonnull %i.ip, i32 noundef 4) #7
  %.not168 = icmp eq i32 %i.iq, 0
  br i1 %.not168, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !19 ; 2 uses
  %i.is = call ptr @bn_get_words(ptr noundef %i.ir) #7 ; 4 uses
  %i.it = call i32 @bn_get_top(ptr noundef %i.ir) #7
  %i.iu = icmp eq i32 %i.it, 4
  br i1 %i.iu, label %bb.au, label %is_one.exit

bb.au:                                            ; preds = %bb.at
  %i.iv = load i64, ptr %i.is, align 8, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !29
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !29
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !29
  %i.jc = icmp eq i64 %i.iv, 1
  %i.jd = icmp eq i64 %i.ix, -4294967296
  %i.je = and i1 %i.jc, %i.jd
  %i.jf = icmp eq i64 %i.iz, -1
  %i.jg = and i1 %i.je, %i.jf
  %i.jh = icmp eq i64 %i.jb, 4294967294
  %i.ji = and i1 %i.jg, %i.jh
  %i.jj = zext i1 %i.ji to i32
  br label %is_one.exit

is_one.exit:                                      ; preds = %bb.at, %bb.au
  %.0.i172 = phi i32 [ %i.jj, %bb.au ], [ 0, %bb.at ]
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.0.i172, ptr %i.jk, align 8, !tbaa !41
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.r, %bb.g, %bb.k, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.v, %bb.u, %is_one.exit, %bb.e
  %.0138 = phi i32 [ 0, %bb.e ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %is_one.exit ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bb.p ]
  %.1131 = phi ptr [ null, %bb.e ], [ null, %bb.u ], [ %i.dj, %bb.v ], [ %.0130210, %is_one.exit ], [ %.0130210, %bb.as ], [ %.0130210, %bb.ar ], [ %.0130210, %bb.aq ], [ %.0130209255, %bb.ap ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.p ]
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
  store ptr null, ptr %i.a, align 8, !tbaa !30
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
  store ptr %0, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 6, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store atomic i32 1, ptr %i.h seq_cst, align 8, !tbaa !48
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
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
  br i1 %exitcond101.not, label %bb.ac, label %bb.o, !llvm.loop !44
end_hunk_0
