Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ossl_bn?download=true
inline.NumInlined: 153
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ossl_bn_value_ptr:bb.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @ossl_bn_ctx_get() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ossl_bn_ctx_key, align 8, !tbaa !29
  %i.b = tail call ptr @rb_ractor_local_storage_ptr(ptr noundef %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @BN_CTX_new() #10          ; 3 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.d, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @ossl_bn_ctx_key, align 8, !tbaa !29
  tail call void @rb_ractor_local_storage_ptr_set(ptr noundef %i.e, ptr noundef nonnull %i.c) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.c, %bb.d ]
  ret ptr %.0
}

declare ptr @rb_ractor_local_storage_ptr(ptr noundef) local_unnamed_addr #2

declare ptr @BN_CTX_new() local_unnamed_addr #2

declare void @rb_ractor_local_storage_ptr_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Init_ossl_bn() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef nonnull @ossl_bn_ctx_key_type) #10
  store ptr %i.a, ptr @ossl_bn_ctx_key, align 8, !tbaa !29
  %i.b = load i64, ptr @mOSSL, align 8, !tbaa !12
  %i.c = load i64, ptr @eOSSLError, align 8, !tbaa !12
  %i.d = tail call i64 @rb_define_class_under(i64 noundef %i.b, ptr noundef nonnull @.str.4, i64 noundef %i.c) #10
  store i64 %i.d, ptr @eBNError, align 8, !tbaa !12
  %i.e = load i64, ptr @mOSSL, align 8, !tbaa !12
  %i.f = load i64, ptr @rb_cObject, align 8, !tbaa !12
  %i.g = tail call i64 @rb_define_class_under(i64 noundef %i.e, ptr noundef nonnull @.str.5, i64 noundef %i.f) #10 ; 2 uses
  store i64 %i.g, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_alloc_func(i64 noundef %i.g, ptr noundef nonnull @ossl_bn_alloc) #10
  %i.h = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @ossl_bn_initialize, i32 noundef -1) #10
  %i.i = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ossl_bn_copy, i32 noundef 1) #10
  %i.j = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @ossl_bn_copy, i32 noundef 1) #10
  %i.k = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef nonnull @ossl_bn_num_bytes, i32 noundef 0) #10
  %i.l = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull @ossl_bn_num_bits, i32 noundef 0) #10
  %i.m = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.11, ptr noundef nonnull @ossl_bn_uplus, i32 noundef 0) #10
  %i.n = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @ossl_bn_uminus, i32 noundef 0) #10
  %i.o = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_bn_abs, i32 noundef 0) #10
  %i.p = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.14, ptr noundef nonnull @ossl_bn_add, i32 noundef 1) #10
  %i.q = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.15, ptr noundef nonnull @ossl_bn_sub, i32 noundef 1) #10
  %i.r = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.16, ptr noundef nonnull @ossl_bn_mul, i32 noundef 1) #10
  %i.s = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @ossl_bn_sqr, i32 noundef 0) #10
  %i.t = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.18, ptr noundef nonnull @ossl_bn_div, i32 noundef 1) #10
  %i.u = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.19, ptr noundef nonnull @ossl_bn_mod, i32 noundef 1) #10
  %i.v = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.20, ptr noundef nonnull @ossl_bn_mod_add, i32 noundef 2) #10
  %i.w = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.21, ptr noundef nonnull @ossl_bn_mod_sub, i32 noundef 2) #10
  %i.x = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.22, ptr noundef nonnull @ossl_bn_mod_mul, i32 noundef 2) #10
  %i.y = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.23, ptr noundef nonnull @ossl_bn_mod_sqr, i32 noundef 1) #10
  %i.z = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.24, ptr noundef nonnull @ossl_bn_mod_sqrt, i32 noundef 1) #10
  %i.aa = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.25, ptr noundef nonnull @ossl_bn_exp, i32 noundef 1) #10
  %i.ab = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.26, ptr noundef nonnull @ossl_bn_mod_exp, i32 noundef 2) #10
  %i.ac = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.27, ptr noundef nonnull @ossl_bn_gcd, i32 noundef 1) #10
  %i.ad = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.28, ptr noundef nonnull @ossl_bn_cmp, i32 noundef 1) #10
  %i.ae = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_alias(i64 noundef %i.ae, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #10
  %i.af = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.30, ptr noundef nonnull @ossl_bn_ucmp, i32 noundef 1) #10
  %i.ag = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.31, ptr noundef nonnull @ossl_bn_eql, i32 noundef 1) #10
  %i.ah = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.32, ptr noundef nonnull @ossl_bn_hash, i32 noundef 0) #10
  %i.ai = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.33, ptr noundef nonnull @ossl_bn_eq, i32 noundef 1) #10
  %i.aj = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_alias(i64 noundef %i.aj, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #10
  %i.ak = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.35, ptr noundef nonnull @ossl_bn_is_zero, i32 noundef 0) #10
  %i.al = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.36, ptr noundef nonnull @ossl_bn_is_one, i32 noundef 0) #10
  %i.am = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.37, ptr noundef nonnull @ossl_bn_is_odd, i32 noundef 0) #10
  %i.an = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.38, ptr noundef nonnull @ossl_bn_is_negative, i32 noundef 0) #10
  %i.ao = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_singleton_method(i64 noundef %i.ao, ptr noundef nonnull @.str.39, ptr noundef nonnull @ossl_bn_s_rand, i32 noundef -1) #10
  %i.ap = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_singleton_method(i64 noundef %i.ap, ptr noundef nonnull @.str.40, ptr noundef nonnull @ossl_bn_s_rand_range, i32 noundef 1) #10
  %i.aq = load i64, ptr @cBN, align 8, !tbaa !12
  %i.ar = tail call i64 @rb_singleton_class(i64 noundef %i.aq) #10
  tail call void @rb_define_alias(i64 noundef %i.ar, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39) #10
  %i.as = load i64, ptr @cBN, align 8, !tbaa !12
  %i.at = tail call i64 @rb_singleton_class(i64 noundef %i.as) #10
  tail call void @rb_define_alias(i64 noundef %i.at, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #10
  %i.au = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_singleton_method(i64 noundef %i.au, ptr noundef nonnull @.str.43, ptr noundef nonnull @ossl_bn_s_generate_prime, i32 noundef -1) #10
  %i.av = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.av, ptr noundef nonnull @.str.44, ptr noundef nonnull @ossl_bn_is_prime, i32 noundef -1) #10
  %i.aw = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.aw, ptr noundef nonnull @.str.45, ptr noundef nonnull @ossl_bn_is_prime_fasttest, i32 noundef -1) #10
  %i.ax = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ax, ptr noundef nonnull @.str.46, ptr noundef nonnull @ossl_bn_set_bit, i32 noundef 1) #10
  %i.ay = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ay, ptr noundef nonnull @.str.47, ptr noundef nonnull @ossl_bn_clear_bit, i32 noundef 1) #10
  %i.az = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.az, ptr noundef nonnull @.str.48, ptr noundef nonnull @ossl_bn_is_bit_set, i32 noundef 1) #10
  %i.ba = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.ba, ptr noundef nonnull @.str.49, ptr noundef nonnull @ossl_bn_mask_bits, i32 noundef 1) #10
  %i.bb = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bb, ptr noundef nonnull @.str.50, ptr noundef nonnull @ossl_bn_lshift, i32 noundef 1) #10
  %i.bc = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bc, ptr noundef nonnull @.str.51, ptr noundef nonnull @ossl_bn_rshift, i32 noundef 1) #10
  %i.bd = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bd, ptr noundef nonnull @.str.52, ptr noundef nonnull @ossl_bn_self_lshift, i32 noundef 1) #10
  %i.be = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.be, ptr noundef nonnull @.str.53, ptr noundef nonnull @ossl_bn_self_rshift, i32 noundef 1) #10
  %i.bf = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bf, ptr noundef nonnull @.str.54, ptr noundef nonnull @ossl_bn_get_flags, i32 noundef 1) #10
  %i.bg = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bg, ptr noundef nonnull @.str.55, ptr noundef nonnull @ossl_bn_set_flags, i32 noundef 1) #10
  %i.bh = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_const(i64 noundef %i.bh, ptr noundef nonnull @.str.56, i64 noundef 9) #10
  %i.bi = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bi, ptr noundef nonnull @.str.57, ptr noundef nonnull @ossl_bn_to_s, i32 noundef -1) #10
  %i.bj = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bj, ptr noundef nonnull @.str.58, ptr noundef nonnull @ossl_bn_to_i, i32 noundef 0) #10
  %i.bk = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_alias(i64 noundef %i.bk, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #10
  %i.bl = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bl, ptr noundef nonnull @.str.60, ptr noundef nonnull @ossl_bn_to_bn, i32 noundef 0) #10
  %i.bm = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bm, ptr noundef nonnull @.str.61, ptr noundef nonnull @ossl_bn_coerce, i32 noundef 1) #10
  %i.bn = load i64, ptr @cBN, align 8, !tbaa !12
  tail call void @rb_define_method(i64 noundef %i.bn, ptr noundef nonnull @.str.62, ptr noundef nonnull @ossl_bn_mod_inverse, i32 noundef 1) #10
  ret void
}

declare ptr @rb_ractor_local_storage_ptr_newkey(ptr noundef) local_unnamed_addr #2

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @ossl_bn_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @ossl_bn_type) #10 ; 2 uses
  %i.b = tail call ptr @BN_new() #10              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @eBNError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.c, ptr noundef null) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.a to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !16
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @ossl_bn_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp slt i32 %0, 1
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !12     ; 11 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !12
  %.not70 = icmp eq i32 %0, 1
  br i1 %.not70, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = icmp eq i32 %0, 2
  br i1 %i.g, label %rb_scan_args_set.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #11
  unreachable

rb_scan_args_set.exit.a:                          ; preds = %bb.b
  %i.h = trunc i64 %i.f to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit.a
  %i.i = tail call i64 @rb_fix2int(i64 noundef %i.f) #10
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit.a
  %i.j = tail call i64 @rb_num2int(i64 noundef %i.f) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = trunc i64 %.0.i to i32
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.k, %rb_num2int_inline.exit ], [ 10, %.preheader ] ; 2 uses
  %i.l = icmp eq i64 %i.d, 4
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.m, ptr noundef nonnull @.str.67) #11
  unreachable

bb.g:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.n = icmp ne i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !30

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.g
  %i.q = inttoptr i64 %2 to ptr                   ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 3 uses
  %i.s = and i64 %i.r, 2048
  %.not.i26 = icmp eq i64 %i.s, 0
  br i1 %.not.i26, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !31

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.g
  tail call void @rb_error_frozen_object(i64 noundef %2) #11
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.t = and i64 %i.r, 31
  %i.u = icmp ne i64 %i.t, 5
  %i.v = and i64 %i.r, 49152
  %.not8.i = icmp eq i64 %i.v, 0
  %or.cond.i27 = or i1 %i.u, %.not8.i
  br i1 %or.cond.i27, label %rb_check_frozen_inline.exit, label %bb.h, !prof !32

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #10
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.h
  %i.w = trunc i64 %i.d to i1
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit.i29, label %bb.i

bb.i:                                             ; preds = %rb_check_frozen_inline.exit
  %i.x = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.y = and i64 %i.d, 6
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rb_integer_type_p.exit.thread62, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.i
  %i.ab = inttoptr i64 %i.d to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 10
  br i1 %i.ae, label %rbimpl_RB_TYPE_P_fastpath.exit.i29, label %rb_integer_type_p.exit.thread62

rbimpl_RB_TYPE_P_fastpath.exit.i29:               ; preds = %rb_check_frozen_inline.exit, %rb_integer_type_p.exit
  %i.af = load i64, ptr %i.q, align 8, !tbaa !17
  %i.ag = and i64 %i.af, 95
  %or.cond.not.i = icmp eq i64 %i.ag, 76
  br i1 %or.cond.not.i, label %bb.j, label %.critedge.i, !prof !19

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = and i64 %i.ai, -2                       ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = trunc i64 %i.ai to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br i1 %i.al, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.k, %bb.j
  %i.ao = phi ptr [ %i.an, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %i.ap = icmp eq i64 %i.aj, ptrtoint (ptr @ossl_bn_type to i64)
  br i1 %i.ap, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !21

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.l
  %.015.i = phi ptr [ %i.ar, %bb.l ], [ %i.ak, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i31 = icmp eq ptr %.015.i, null
  br i1 %.not.i31, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = icmp eq ptr %i.ar, @ossl_bn_type
  br i1 %i.as, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i29
  %i.at = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_bn_type) #10
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.l, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i30 = phi ptr [ %i.at, %.critedge.i ], [ %i.ao, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.ao, %bb.l ] ; 3 uses
  store ptr %.1.i30, ptr %i.a, align 8, !tbaa !35
  %.not25 = icmp eq ptr %.1.i30, null
  br i1 %.not25, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.au = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.au, ptr noundef nonnull @.str.1) #11
  unreachable

bb.n:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.av = tail call fastcc ptr @integer_to_bnptr(i64 noundef %i.d, ptr noundef nonnull %.1.i30) ; 0 uses
  br label %bb.ap

rb_integer_type_p.exit.thread62:                  ; preds = %bb.i, %rb_integer_type_p.exit
  %i.aw = load i64, ptr @cBN, align 8, !tbaa !12
  %i.ax = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.d, i64 noundef %i.aw) #10
  %i.ay = and i64 %i.ax, -5
  %.not64 = icmp eq i64 %i.ay, 0
  %i.az = load i64, ptr %i.q, align 8, !tbaa !17
  %i.ba = and i64 %i.az, 95
  %or.cond.not.i51 = icmp eq i64 %i.ba, 76        ; 2 uses
  br i1 %.not64, label %rbimpl_RB_TYPE_P_fastpath.exit.i50, label %rbimpl_RB_TYPE_P_fastpath.exit.i32

rbimpl_RB_TYPE_P_fastpath.exit.i32:               ; preds = %rb_integer_type_p.exit.thread62
  br i1 %or.cond.not.i51, label %bb.o, label %.critedge.i34, !prof !19

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20 ; 2 uses
  %i.bd = and i64 %i.bc, -2                       ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = trunc i64 %i.bc to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br i1 %i.bf, label %RTYPEDDATA_GET_DATA.exit.i36, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i36

RTYPEDDATA_GET_DATA.exit.i36:                     ; preds = %bb.p, %bb.o
  %i.bi = phi ptr [ %i.bh, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bj = icmp eq i64 %i.bd, ptrtoint (ptr @ossl_bn_type to i64)
  br i1 %i.bj, label %rbimpl_check_typeddata.exit40, label %.preheader.i37, !prof !21

.preheader.i37:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i36, %bb.q
  %.015.i38 = phi ptr [ %i.bl, %bb.q ], [ %i.be, %RTYPEDDATA_GET_DATA.exit.i36 ] ; 2 uses
  %.not.i39 = icmp eq ptr %.015.i38, null
  br i1 %.not.i39, label %.critedge.i34, label %bb.q

bb.q:                                             ; preds = %.preheader.i37
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i38, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, @ossl_bn_type
  br i1 %i.bm, label %rbimpl_check_typeddata.exit40, label %.preheader.i37, !llvm.loop !0

.critedge.i34:                                    ; preds = %.preheader.i37, %rbimpl_RB_TYPE_P_fastpath.exit.i32
  %i.bn = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_bn_type) #10
  br label %rbimpl_check_typeddata.exit40

rbimpl_check_typeddata.exit40:                    ; preds = %bb.q, %RTYPEDDATA_GET_DATA.exit.i36, %.critedge.i34
  %i.bo = phi ptr [ %i.bn, %.critedge.i34 ], [ %i.bi, %RTYPEDDATA_GET_DATA.exit.i36 ], [ %i.bi, %bb.q ] ; 3 uses
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !35
  %.not22 = icmp eq ptr %i.bo, null
  br i1 %.not22, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rbimpl_check_typeddata.exit40
  %i.bp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.1) #11
  unreachable

bb.s:                                             ; preds = %rbimpl_check_typeddata.exit40
  %i.bq = and i64 %i.d, 6
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = or i1 %i.x, %i.br
  br i1 %i.bs, label %.critedge.i43, label %rbimpl_RB_TYPE_P_fastpath.exit.i41, !prof !18

rbimpl_RB_TYPE_P_fastpath.exit.i41:               ; preds = %bb.s
  %i.bt = inttoptr i64 %i.d to ptr                ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = and i64 %i.bu, 95
  %or.cond.not.i42 = icmp eq i64 %i.bv, 76
  br i1 %or.cond.not.i42, label %bb.t, label %.critedge.i43, !prof !19

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !20 ; 2 uses
  %i.by = and i64 %i.bx, -2                       ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = trunc i64 %i.bx to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  br i1 %i.ca, label %RTYPEDDATA_GET_DATA.exit.i45, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i45

RTYPEDDATA_GET_DATA.exit.i45:                     ; preds = %bb.u, %bb.t
  %i.cd = phi ptr [ %i.cc, %bb.u ], [ %i.cb, %bb.t ] ; 2 uses
  %i.ce = icmp eq i64 %i.by, ptrtoint (ptr @ossl_bn_type to i64)
  br i1 %i.ce, label %rbimpl_check_typeddata.exit49, label %.preheader.i46, !prof !21

.preheader.i46:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i45, %bb.v
  %.015.i47 = phi ptr [ %i.cg, %bb.v ], [ %i.bz, %RTYPEDDATA_GET_DATA.exit.i45 ] ; 2 uses
  %.not.i48 = icmp eq ptr %.015.i47, null
  br i1 %.not.i48, label %.critedge.i43, label %bb.v

bb.v:                                             ; preds = %.preheader.i46
  %i.cf = getelementptr inbounds nuw i8, ptr %.015.i47, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, @ossl_bn_type
  br i1 %i.ch, label %rbimpl_check_typeddata.exit49, label %.preheader.i46, !llvm.loop !0

.critedge.i43:                                    ; preds = %.preheader.i46, %rbimpl_RB_TYPE_P_fastpath.exit.i41, %bb.s
  %i.ci = tail call ptr @rb_check_typeddata(i64 noundef %i.d, ptr noundef nonnull @ossl_bn_type) #10
  br label %rbimpl_check_typeddata.exit49

rbimpl_check_typeddata.exit49:                    ; preds = %bb.v, %RTYPEDDATA_GET_DATA.exit.i45, %.critedge.i43
  %.1.i44 = phi ptr [ %i.ci, %.critedge.i43 ], [ %i.cd, %RTYPEDDATA_GET_DATA.exit.i45 ], [ %i.cd, %bb.v ] ; 2 uses
  %.not23 = icmp eq ptr %.1.i44, null
  br i1 %.not23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rbimpl_check_typeddata.exit49
  %i.cj = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cj, ptr noundef nonnull @.str.1) #11
  unreachable

bb.x:                                             ; preds = %rbimpl_check_typeddata.exit49
  %i.ck = tail call ptr @BN_copy(ptr noundef nonnull %i.bo, ptr noundef nonnull %.1.i44) #10
  %.not24 = icmp eq ptr %i.ck, null
  br i1 %.not24, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.cl = load i64, ptr @eBNError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cl, ptr noundef null) #11
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i50:               ; preds = %rb_integer_type_p.exit.thread62
  br i1 %or.cond.not.i51, label %bb.z, label %.critedge.i52, !prof !19

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !20 ; 2 uses
  %i.co = and i64 %i.cn, -2                       ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = trunc i64 %i.cn to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  br i1 %i.cq, label %RTYPEDDATA_GET_DATA.exit.i54, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16
  br label %RTYPEDDATA_GET_DATA.exit.i54

RTYPEDDATA_GET_DATA.exit.i54:                     ; preds = %bb.aa, %bb.z
  %i.ct = phi ptr [ %i.cs, %bb.aa ], [ %i.cr, %bb.z ] ; 2 uses
  %i.cu = icmp eq i64 %i.co, ptrtoint (ptr @ossl_bn_type to i64)
  br i1 %i.cu, label %rbimpl_check_typeddata.exit58, label %.preheader.i55, !prof !21

.preheader.i55:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i54, %bb.ab
  %.015.i56 = phi ptr [ %i.cw, %bb.ab ], [ %i.cp, %RTYPEDDATA_GET_DATA.exit.i54 ] ; 2 uses
  %.not.i57 = icmp eq ptr %.015.i56, null
  br i1 %.not.i57, label %.critedge.i52, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i55
  %i.cv = getelementptr inbounds nuw i8, ptr %.015.i56, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !26 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, @ossl_bn_type
  br i1 %i.cx, label %rbimpl_check_typeddata.exit58, label %.preheader.i55, !llvm.loop !0

.critedge.i52:                                    ; preds = %.preheader.i55, %rbimpl_RB_TYPE_P_fastpath.exit.i50
  %i.cy = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_bn_type) #10
  br label %rbimpl_check_typeddata.exit58

rbimpl_check_typeddata.exit58:                    ; preds = %bb.ab, %RTYPEDDATA_GET_DATA.exit.i54, %.critedge.i52
  %.1.i53 = phi ptr [ %i.cy, %.critedge.i52 ], [ %i.ct, %RTYPEDDATA_GET_DATA.exit.i54 ], [ %i.ct, %bb.ab ] ; 2 uses
  store ptr %.1.i53, ptr %i.a, align 8, !tbaa !35
  %.not = icmp eq ptr %.1.i53, null
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %rbimpl_check_typeddata.exit58
  %i.cz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.1) #11
  unreachable

bb.ad:                                            ; preds = %rbimpl_check_typeddata.exit58
  switch i32 %.0, label %bb.ao [
    i32 0, label %bb.ae
    i32 2, label %bb.ah
    i32 10, label %bb.ak
    i32 16, label %bb.am
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.da = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.b) #10
  %i.db = load i64, ptr %i.b, align 8, !tbaa !12
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !37 ; 3 uses
  %i.df = add i64 %i.de, 2147483648
  %.not.i.i = icmp ult i64 %i.df, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @rb_out_of_int(i64 noundef %i.de) #12
  unreachable

RSTRING_LENINT.exit:                              ; preds = %bb.ae
  %i.dg = trunc nsw i64 %i.de to i32
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.di = call ptr @BN_mpi2bn(ptr noundef %i.da, i32 noundef %i.dg, ptr noundef %i.dh) #10
  %.not21 = icmp eq ptr %i.di, null
  br i1 %.not21, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %RSTRING_LENINT.exit
  %i.dj = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.dj, ptr noundef null) #11
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.dk = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.b) #10
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !12
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !37 ; 3 uses
  %i.dp = add i64 %i.do, 2147483648
  %.not.i.i59 = icmp ult i64 %i.dp, 4294967296
  br i1 %.not.i.i59, label %RSTRING_LENINT.exit60, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @rb_out_of_int(i64 noundef %i.do) #12
  unreachable

RSTRING_LENINT.exit60:                            ; preds = %bb.ah
  %i.dq = trunc nsw i64 %i.do to i32
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ds = call ptr @BN_bin2bn(ptr noundef %i.dk, i32 noundef %i.dq, ptr noundef %i.dr) #10
  %.not20 = icmp eq ptr %i.ds, null
  br i1 %.not20, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %RSTRING_LENINT.exit60
  %i.dt = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.dt, ptr noundef null) #11
  unreachable

bb.ak:                                            ; preds = %bb.ad
  %i.du = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #10
  %i.dv = call i32 @BN_dec2bn(ptr noundef nonnull %i.a, ptr noundef %i.du) #10
  %.not19 = icmp eq i32 %i.dv, 0
  br i1 %.not19, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.dw = load i64, ptr @eBNError, align 8, !tbaa !12
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.dw, ptr noundef null) #11
  unreachable

bb.am:                                            ; preds = %bb.ad
  %i.dx = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #10
  %i.dy = call i32 @BN_hex2bn(ptr noundef nonnull %i.a, ptr noundef %i.dx) #10
  %.not18 = icmp eq i32 %i.dy, 0
  br i1 %.not18, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dz = load i64, ptr @eBNError, align 8, !tbaa !12
end_hunk_0
