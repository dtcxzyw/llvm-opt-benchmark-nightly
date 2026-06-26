inline.NumInlined: 109
inline.NumDeleted: 27
begin_hunk_0
@.str.97 = private unnamed_addr constant [24 x i8] c"invalid second argument\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"EC_POINT_new\00", align 1
@cBN = external local_unnamed_addr global i64, align 8
@.str.99 = private unnamed_addr constant [18 x i8] c"EC_POINT_bn2point\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"EC_POINT_oct2point\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"EC::Point already initialized\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"EC_POINT_cmp\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"EC_POINT_is_at_infinity\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"EC_POINT_is_on_curve\00", align 1
@.str.105 = private unnamed_addr constant [52 x i8] c"OpenSSL::PKey::EC::Point#make_affine! is deprecated\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"EC_POINT_invert\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"EC_POINT_set_to_infinity\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"EC_POINT_point2oct\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"EC_POINT_add\00", align 1
@rb_eNotImpError = external local_unnamed_addr global i64, align 8
@.str.111 = private unnamed_addr constant [64 x i8] c"OpenSSL::PKey::EC::Point#mul with arrays is no longer supported\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_ossl_ec() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mPKey, align 8, !tbaa !10
  %i.b = load i64, ptr @cPKey, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str, i64 noundef %i.b) #8 ; 2 uses
  store i64 %i.c, ptr @cEC, align 8, !tbaa !10
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.e = tail call i64 @rb_define_class_under(i64 noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef %i.d) #8
  store i64 %i.e, ptr @cEC_GROUP, align 8, !tbaa !10
  %i.f = load i64, ptr @cEC, align 8, !tbaa !10
  %i.g = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.h = tail call i64 @rb_define_class_under(i64 noundef %i.f, ptr noundef nonnull @.str.2, i64 noundef %i.g) #8
  store i64 %i.h, ptr @cEC_POINT, align 8, !tbaa !10
  %i.i = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  %i.j = load i64, ptr @eOSSLError, align 8, !tbaa !10
  %i.k = tail call i64 @rb_define_class_under(i64 noundef %i.i, ptr noundef nonnull @.str.3, i64 noundef %i.j) #8
  store i64 %i.k, ptr @eEC_GROUP, align 8, !tbaa !10
  %i.l = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  %i.m = load i64, ptr @eOSSLError, align 8, !tbaa !10
  %i.n = tail call i64 @rb_define_class_under(i64 noundef %i.l, ptr noundef nonnull @.str.3, i64 noundef %i.m) #8
  store i64 %i.n, ptr @eEC_POINT, align 8, !tbaa !10
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #8
  %i.p = tail call i64 @rb_id2sym(i64 noundef %i.o) #8
  store i64 %i.p, ptr @sym_GFp, align 8, !tbaa !10
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #8
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #8
  store i64 %i.r, ptr @sym_GF2m, align 8, !tbaa !10
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 12) #8
  %i.t = tail call i64 @rb_id2sym(i64 noundef %i.s) #8
  store i64 %i.t, ptr @sym_uncompressed, align 8, !tbaa !10
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.7, i64 noundef 10) #8
  %i.v = tail call i64 @rb_id2sym(i64 noundef %i.u) #8
  store i64 %i.v, ptr @sym_compressed, align 8, !tbaa !10
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.8, i64 noundef 6) #8
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #8
  store i64 %i.x, ptr @sym_hybrid, align 8, !tbaa !10
  %i.y = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.y, ptr noundef nonnull @.str.9, i64 noundef 3) #8
  %i.z = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_const(i64 noundef %i.z, ptr noundef nonnull @.str.10, i64 noundef 1) #8
  %i.aa = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.11, ptr noundef nonnull @ossl_s_builtin_curves, i32 noundef 0) #8
  %i.ab = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.ab, ptr noundef nonnull @.str.12, ptr noundef nonnull @ossl_ec_key_s_generate, i32 noundef 1) #8
  %i.ac = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_ec_key_initialize, i32 noundef -1) #8
  %i.ad = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.14, ptr noundef nonnull @ossl_ec_key_get_group, i32 noundef 0) #8
  %i.ae = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.15, ptr noundef nonnull @ossl_ec_key_set_group, i32 noundef 1) #8
  %i.af = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.16, ptr noundef nonnull @ossl_ec_key_get_private_key, i32 noundef 0) #8
  %i.ag = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.17, ptr noundef nonnull @ossl_ec_key_set_private_key, i32 noundef 1) #8
  %i.ah = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.18, ptr noundef nonnull @ossl_ec_key_get_public_key, i32 noundef 0) #8
  %i.ai = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ai, ptr noundef nonnull @.str.19, ptr noundef nonnull @ossl_ec_key_set_public_key, i32 noundef 1) #8
  %i.aj = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.20, ptr noundef nonnull @ossl_ec_key_is_private, i32 noundef 0) #8
  %i.ak = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.21, ptr noundef nonnull @ossl_ec_key_is_public, i32 noundef 0) #8
  %i.al = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.al, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #8
  %i.am = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.am, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #8
  %i.an = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.24, ptr noundef nonnull @ossl_ec_key_generate_key, i32 noundef 0) #8
  %i.ao = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.ao, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #8
  %i.ap = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ap, ptr noundef nonnull @.str.26, ptr noundef nonnull @ossl_ec_key_check_key, i32 noundef 0) #8
  %i.aq = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aq, ptr noundef nonnull @.str.27, ptr noundef nonnull @ossl_ec_key_export, i32 noundef -1) #8
  %i.ar = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.ar, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #8
  %i.as = load i64, ptr @cEC, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.as, ptr noundef nonnull @.str.29, ptr noundef nonnull @ossl_ec_key_to_der, i32 noundef 0) #8
  %i.at = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_alloc_func(i64 noundef %i.at, ptr noundef nonnull @ossl_ec_group_alloc) #8
  %i.au = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.au, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_ec_group_initialize, i32 noundef -1) #8
  %i.av = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.av, ptr noundef nonnull @.str.30, ptr noundef nonnull @ossl_ec_group_initialize_copy, i32 noundef 1) #8
  %i.aw = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aw, ptr noundef nonnull @.str.31, ptr noundef nonnull @ossl_ec_group_eql, i32 noundef 1) #8
  %i.ax = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.ax, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #8
  %i.ay = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ay, ptr noundef nonnull @.str.33, ptr noundef nonnull @ossl_ec_group_get_generator, i32 noundef 0) #8
  %i.az = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.az, ptr noundef nonnull @.str.34, ptr noundef nonnull @ossl_ec_group_set_generator, i32 noundef 3) #8
  %i.ba = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ba, ptr noundef nonnull @.str.35, ptr noundef nonnull @ossl_ec_group_get_order, i32 noundef 0) #8
  %i.bb = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bb, ptr noundef nonnull @.str.36, ptr noundef nonnull @ossl_ec_group_get_cofactor, i32 noundef 0) #8
  %i.bc = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bc, ptr noundef nonnull @.str.37, ptr noundef nonnull @ossl_ec_group_get_curve_name, i32 noundef 0) #8
  %i.bd = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bd, ptr noundef nonnull @.str.38, ptr noundef nonnull @ossl_ec_group_get_asn1_flag, i32 noundef 0) #8
  %i.be = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.be, ptr noundef nonnull @.str.39, ptr noundef nonnull @ossl_ec_group_set_asn1_flag, i32 noundef 1) #8
  %i.bf = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bf, ptr noundef nonnull @.str.40, ptr noundef nonnull @ossl_ec_group_get_point_conversion_form, i32 noundef 0) #8
  %i.bg = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bg, ptr noundef nonnull @.str.41, ptr noundef nonnull @ossl_ec_group_set_point_conversion_form, i32 noundef 1) #8
  %i.bh = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bh, ptr noundef nonnull @.str.42, ptr noundef nonnull @ossl_ec_group_get_seed, i32 noundef 0) #8
  %i.bi = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bi, ptr noundef nonnull @.str.43, ptr noundef nonnull @ossl_ec_group_set_seed, i32 noundef 1) #8
  %i.bj = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bj, ptr noundef nonnull @.str.44, ptr noundef nonnull @ossl_ec_group_get_degree, i32 noundef 0) #8
  %i.bk = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bk, ptr noundef nonnull @.str.28, ptr noundef nonnull @ossl_ec_group_to_pem, i32 noundef 0) #8
  %i.bl = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bl, ptr noundef nonnull @.str.29, ptr noundef nonnull @ossl_ec_group_to_der, i32 noundef 0) #8
  %i.bm = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bm, ptr noundef nonnull @.str.45, ptr noundef nonnull @ossl_ec_group_to_text, i32 noundef 0) #8
  %i.bn = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_alloc_func(i64 noundef %i.bn, ptr noundef nonnull @ossl_ec_point_alloc) #8
  %i.bo = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bo, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_ec_point_initialize, i32 noundef -1) #8
  %i.bp = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bp, ptr noundef nonnull @.str.30, ptr noundef nonnull @ossl_ec_point_initialize_copy, i32 noundef 1) #8
  %i.bq = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  %i.br = tail call i64 @rb_intern(ptr noundef nonnull @.str.14) #8
  tail call void @rb_attr(i64 noundef %i.bq, i64 noundef %i.br, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %i.bs = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bs, ptr noundef nonnull @.str.31, ptr noundef nonnull @ossl_ec_point_eql, i32 noundef 1) #8
  %i.bt = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.bt, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #8
  %i.bu = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bu, ptr noundef nonnull @.str.46, ptr noundef nonnull @ossl_ec_point_is_at_infinity, i32 noundef 0) #8
  %i.bv = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bv, ptr noundef nonnull @.str.47, ptr noundef nonnull @ossl_ec_point_is_on_curve, i32 noundef 0) #8
  %i.bw = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bw, ptr noundef nonnull @.str.48, ptr noundef nonnull @ossl_ec_point_make_affine, i32 noundef 0) #8
  %i.bx = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bx, ptr noundef nonnull @.str.49, ptr noundef nonnull @ossl_ec_point_invert, i32 noundef 0) #8
  %i.by = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.by, ptr noundef nonnull @.str.50, ptr noundef nonnull @ossl_ec_point_set_to_infinity, i32 noundef 0) #8
  %i.bz = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.bz, ptr noundef nonnull @.str.51, ptr noundef nonnull @ossl_ec_point_to_octet_string, i32 noundef 1) #8
  %i.ca = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ca, ptr noundef nonnull @.str.52, ptr noundef nonnull @ossl_ec_point_add, i32 noundef 1) #8
  %i.cb = load i64, ptr @cEC_POINT, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.cb, ptr noundef nonnull @.str.53, ptr noundef nonnull @ossl_ec_point_mul, i32 noundef -1) #8
  %i.cc = tail call i64 @rb_intern(ptr noundef nonnull @.str.54) #8
  store i64 %i.cc, ptr @id_i_group, align 8, !tbaa !10
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @ossl_s_builtin_curves(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 @EC_get_builtin_curves(ptr noundef null, i64 noundef 0) #8 ; 9 uses
  %i.b = add i64 %i.a, 2147483648
  %.not.i = icmp ult i64 %i.b, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_out_of_int(i64 noundef %i.a) #9
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.a
  %i.c = trunc nsw i64 %i.a to i32
  %i.d = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.d, label %bb.c, label %rbimpl_size_mul_or_raise.exit, !prof !12

bb.c:                                             ; preds = %rb_long2int_inline.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 16, i64 noundef range(i64 -2147483648, 2147483648) %i.a) #10
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_long2int_inline.exit
  %i.e = shl nuw i64 %i.a, 4
  %1 = and i64 %i.e, 68719476720
  %i.f = alloca i8, i64 %1, align 16              ; 2 uses
  %i.g = call i64 @EC_get_builtin_curves(ptr noundef nonnull %i.f, i64 noundef %i.a) #8
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.h = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.h, ptr noundef nonnull @.str.55) #10
  unreachable

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.i = call i64 @rb_ary_new_capa(i64 noundef %i.a) #8 ; 2 uses
  %.not26 = icmp eq i64 %i.a, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %smax = call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 16, !tbaa !13
  %i.l = call ptr @OBJ_nid2sn(i32 noundef %i.k) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = call i64 @rb_ary_new_capa(i64 noundef 2) #8 ; 3 uses
  %i.p = call i64 @rb_str_new_cstr(ptr noundef %i.l) #8
  %i.q = call i64 @rb_ary_push(i64 noundef %i.o, i64 noundef %i.p) #8 ; 0 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.n) #8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.s = phi i64 [ %i.r, %bb.f ], [ 4, %.lr.ph ]
  %i.t = call i64 @rb_ary_push(i64 noundef %i.o, i64 noundef %i.s) #8 ; 0 uses
  %i.u = call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %i.o) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.g, %bb.e
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_ec_key_s_generate(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_alloc(i64 noundef %0) #8 ; 2 uses
  %i.b = tail call fastcc ptr @ec_key_new_from_group(i64 noundef %1) ; 3 uses
  %i.c = tail call ptr @EVP_PKEY_new() #8         ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.c, i32 noundef 408, ptr noundef nonnull %i.b) #8
  %.not10 = icmp eq i32 %i.d, 1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @EVP_PKEY_free(ptr noundef %i.c) #8
  tail call void @EC_KEY_free(ptr noundef nonnull %i.b) #8
  %i.e = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.e, ptr noundef nonnull @.str.56) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.g, align 8, !tbaa !20
  %i.h = tail call i32 @EC_KEY_generate_key(ptr noundef nonnull %i.b) #8
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.i, ptr noundef nonnull @.str.57) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  ret i64 %i.a
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_ec_key_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !23

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !25

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !27

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i31 = icmp eq ptr %.016.i, null
  br i1 %.not.i31, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !32

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_evp_pkey_type) #8
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i30 = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ]
  %.not = icmp eq ptr %.1.i30, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.61) #10
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp slt i32 %0, 0
  br i1 %i.w, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.not47 = icmp eq i32 %0, 0
  br i1 %.not47, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader
  %i.x = load i64, ptr %1, align 8, !tbaa !10
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %.sink = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ] ; 5 uses
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !10
  %i.y = icmp samesign ult i32 %.286.i, %0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.1
  %i.z = zext nneg i32 %.286.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !10
  %i.ac = add nuw nsw i32 %.286.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.preheader.1, %bb.h
  %i.ad = phi i64 [ %i.ab, %bb.h ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.ac, %bb.h ], [ %.286.i, %.preheader.1 ]
  %i.ae = icmp eq i32 %.286.i.1, %0
  br i1 %i.ae, label %rb_scan_args_set.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #10
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.i
  %i.af = icmp eq i64 %.sink, 4
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_scan_args_set.exit
  %i.ag = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.63) #10
  unreachable

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ah = load i64, ptr @cEC_GROUP, align 8, !tbaa !10
  %i.ai = tail call i64 @rb_obj_is_kind_of(i64 noundef %.sink, i64 noundef %i.ah) #8
  %.not25 = icmp eq i64 %i.ai, 0
  br i1 %.not25, label %bb.m, label %bb.q

end_hunk_0
