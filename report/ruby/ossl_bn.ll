Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ossl_bn?download=true
inline.NumInlined: 153
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ossl_bn_to_i:bb.a
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.1) #11
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call ptr @BN_bn2hex(ptr noundef nonnull %.1.i) #10 ; 3 uses
  %.not6 = icmp eq ptr %i.v, null
  br i1 %.not6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @eBNError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.w, ptr noundef null) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.v, i32 noundef 16, i32 noundef 20) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.77, i32 noundef 385) #10
  ret i64 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @ossl_bn_to_bn(i64 noundef returned %0) #4 {
bb.a:
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_bn_coerce(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %rb_type.exit.thread7, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_type.exit.thread [
    i32 5, label %bb.d
    i32 21, label %rb_type.exit.thread7
    i32 10, label %rb_type.exit.thread7
  ]

bb.d:                                             ; preds = %rb_type.exit
  %i.j = tail call i64 @ossl_bn_to_s(i32 noundef 0, ptr noundef null, i64 noundef %0)
  br label %bb.f

rb_type.exit.thread7:                             ; preds = %bb.c, %rb_type.exit, %rb_type.exit
  %i.k = tail call i64 @ossl_bn_to_i(i64 noundef %0)
  br label %bb.f

rb_type.exit.thread:                              ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.l = load i64, ptr @cBN, align 8, !tbaa !12
  %i.m = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.l) #10
  %i.n = and i64 %i.m, -5
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_type.exit.thread
  %i.o = load i64, ptr @rb_eTypeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.o, ptr noundef nonnull @.str.78) #11
  unreachable

bb.f:                                             ; preds = %rb_type.exit.thread, %rb_type.exit.thread7, %bb.d
  %.0 = phi i64 [ %0, %rb_type.exit.thread ], [ %i.j, %bb.d ], [ %i.k, %rb_type.exit.thread7 ]
  %i.p = tail call i64 @rb_assoc_new(i64 noundef %1, i64 noundef %.0) #10
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_bn_mod_inverse(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !12
  %i.b = call ptr @ossl_bn_value_ptr(ptr noundef nonnull %i.a)
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !18

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = and i64 %i.h, 95
  %or.cond.not.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @ossl_bn_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !21

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.015.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.015.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = icmp eq ptr %i.t, @ossl_bn_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.v = call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_bn_type) #10
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.v, %.critedge.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.w, ptr noundef nonnull @.str.1) #11
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.x = call i64 @rb_obj_class(i64 noundef %0) #10
  %i.y = call i64 @rb_data_typed_object_wrap(i64 noundef %i.x, ptr noundef null, ptr noundef nonnull @ossl_bn_type) #10 ; 2 uses
  %i.z = load ptr, ptr @ossl_bn_ctx_key, align 8, !tbaa !29
  %i.aa = call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.z) #10 ; 2 uses
  %.not.i10 = icmp eq ptr %i.aa, null
  br i1 %.not.i10, label %bb.g, label %ossl_bn_ctx_get.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call ptr @BN_CTX_new() #10              ; 3 uses
  %.not5.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.3) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @ossl_bn_ctx_key, align 8, !tbaa !29
  call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.ad, ptr noundef nonnull %i.ab) #10
  br label %ossl_bn_ctx_get.exit

ossl_bn_ctx_get.exit:                             ; preds = %bb.f, %bb.i
  %.0.i = phi ptr [ %i.aa, %bb.f ], [ %i.ab, %bb.i ]
  %i.ae = call ptr @BN_mod_inverse(ptr noundef null, ptr noundef nonnull %.1.i, ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i) #10 ; 2 uses
  %.not9 = icmp eq ptr %i.ae, null
  br i1 %.not9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ossl_bn_ctx_get.exit
  %i.af = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.af, ptr noundef null) #11
  unreachable

bb.k:                                             ; preds = %ossl_bn_ctx_get.exit
  %i.ag = inttoptr i64 %i.y to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !16
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define internal void @ossl_bn_free(ptr noundef %0) #0 {
bb.a:
  tail call void @BN_clear_free(ptr noundef %0) #10
  ret void
}

declare void @BN_clear_free(ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @integer_to_bnptr(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = ashr i64 %0, 1                           ; 2 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true)
  %2 = bitcast i64 %i.e to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.a, align 8, !tbaa !33
  %i.f = call ptr @BN_bin2bn(ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef %1) #10 ; 3 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.g, ptr noundef nonnull @.str.64) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = icmp slt i64 %i.d, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @BN_set_negative(ptr noundef nonnull %i.f, i32 noundef 1) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_absint_size(i64 noundef %0, ptr noundef null) #10 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.j = icmp ugt i64 %i.i, 2147483647
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = load i64, ptr @eBNError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.65) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = icmp samesign ult i64 %i.i, 1024
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.m = alloca i8, i64 %i.i, align 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.n = add nuw nsw i64 %i.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef range(i64 1024, 2147483648) %i.i, i64 noundef %i.o) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.q = phi ptr [ %i.m, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  %i.r = call i32 @rb_integer_pack(i64 noundef %0, ptr noundef nonnull %i.q, i64 noundef %i.i, i64 noundef 1, i64 noundef 0, i32 noundef 17) #10
  %i.s = trunc nuw nsw i64 %i.i to i32
  %i.t = call ptr @BN_bin2bn(ptr noundef nonnull %i.q, i32 noundef %i.s, ptr noundef %1) #10 ; 3 uses
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #10
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.u, ptr noundef nonnull @.str.64) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = icmp slt i32 %i.r, 0
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @BN_set_negative(ptr noundef nonnull %i.t, i32 noundef 1) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f
  %.027 = phi ptr [ %i.f, %bb.f ], [ %i.t, %bb.p ]
  ret ptr %.027
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_set_negative(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_absint_size(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @rb_integer_pack(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ossl_bn_ctx_free(ptr noundef %0) #0 {
bb.a:
  tail call void @BN_CTX_free(ptr noundef %0) #10
  ret void
}

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @BN_new() local_unnamed_addr #2

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @BN_mpi2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_dec2bn(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

declare i32 @BN_hex2bn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #7

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

declare i32 @BN_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_sqr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #2

declare i32 @BN_mod_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_sub(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_sqr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BN_mod_sqrt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_exp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_gcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_memhash(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_one(ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(ptr noundef) local_unnamed_addr #2

declare i32 @BN_rand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_rand_range(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_generate_prime_ex(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_check_prime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
