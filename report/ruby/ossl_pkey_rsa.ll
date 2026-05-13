inline.NumInlined: 48
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon, ptr, ptr, i64 }
%struct.anon = type { ptr, ptr, ptr, ptr, [1 x ptr] }

@mPKey = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@cPKey = external local_unnamed_addr global i64, align 8
@cRSA = local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"public?\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"private?\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"to_pem\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"to_der\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"sign_pss\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"verify_pss\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dmp1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dmq1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"iqmp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"set_key\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"set_factors\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"set_crt_params\00", align 1
@ossl_evp_pkey_type = external constant %struct.rb_data_type_struct, align 8
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"pkey already initialized\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.23 = private unnamed_addr constant [96 x i8] c"OpenSSL::PKey::RSA.new cannot be called without arguments; pkeys are immutable with OpenSSL 3.0\00", align 1
@ePKeyError = external local_unnamed_addr global i64, align 8
@.str.24 = private unnamed_addr constant [29 x i8] c"Neither PUB key nor PRIV key\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"incorrect pkey type: %s\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"EVP_PKEY_assign_RSA\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"PKEY wasn't initialized!\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"THIS IS NOT A RSA!\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"failed to get RSA from EVP_PKEY\00", align 1
@RSA_PRIVATE.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.30 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@ossl_rsa_sign_pss.kwargs_ids = internal global [2 x i64] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [12 x i8] c"salt_length\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"mgf1_hash\00", align 1
@ossl_rsa_sign_pss.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.34 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@ossl_rsa_sign_pss.rbimpl_id.35 = internal unnamed_addr global i64 0, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@ossl_rsa_verify_pss.kwargs_ids = internal global [2 x i64] zeroinitializer, align 16
@ossl_rsa_verify_pss.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@ossl_rsa_verify_pss.rbimpl_id.39 = internal unnamed_addr global i64 0, align 8
@.str.40 = private unnamed_addr constant [22 x i8] c"EVP_DigestVerifyFinal\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"rsa#set_key= is incompatible with OpenSSL 3.0\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"rsa#set_factors= is incompatible with OpenSSL 3.0\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"rsa#set_crt_params= is incompatible with OpenSSL 3.0\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_ossl_rsa() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mPKey, align 8, !tbaa !10
  %i.b = load i64, ptr @cPKey, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str, i64 noundef %i.b) #5 ; 2 uses
  store i64 %i.c, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @ossl_rsa_initialize, i32 noundef -1) #5
  %i.d = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull @ossl_rsa_is_public, i32 noundef 0) #5
  %i.e = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @ossl_rsa_is_private, i32 noundef 0) #5
  %i.f = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @ossl_rsa_export, i32 noundef -1) #5
  %i.g = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #5
  %i.h = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #5
  %i.i = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ossl_rsa_to_der, i32 noundef 0) #5
  %i.j = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @ossl_rsa_sign_pss, i32 noundef -1) #5
  %i.k = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef nonnull @ossl_rsa_verify_pss, i32 noundef -1) #5
  %i.l = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull @ossl_rsa_get_n, i32 noundef 0) #5
  %i.m = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.11, ptr noundef nonnull @ossl_rsa_get_e, i32 noundef 0) #5
  %i.n = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @ossl_rsa_get_d, i32 noundef 0) #5
  %i.o = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_rsa_get_p, i32 noundef 0) #5
  %i.p = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.14, ptr noundef nonnull @ossl_rsa_get_q, i32 noundef 0) #5
  %i.q = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.15, ptr noundef nonnull @ossl_rsa_get_dmp1, i32 noundef 0) #5
  %i.r = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.16, ptr noundef nonnull @ossl_rsa_get_dmq1, i32 noundef 0) #5
  %i.s = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @ossl_rsa_get_iqmp, i32 noundef 0) #5
  %i.t = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.18, ptr noundef nonnull @ossl_rsa_set_key, i32 noundef 3) #5
  %i.u = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.19, ptr noundef nonnull @ossl_rsa_set_factors, i32 noundef 2) #5
  %i.v = load i64, ptr @cRSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.20, ptr noundef nonnull @ossl_rsa_set_crt_params, i32 noundef 3) #5
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_rsa_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i42 = icmp eq ptr %.016.i, null
  br i1 %.not.i42, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i41 = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ]
  %.not = icmp eq ptr %.1.i41, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.21) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp slt i32 %0, 0
  br i1 %i.w, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.not59 = icmp eq i32 %0, 0
  br i1 %.not59, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader
  %i.x = load i64, ptr %1, align 8, !tbaa !10
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %i.y = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !10
  %i.z = icmp samesign ult i32 %.286.i, %0
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.1
  %i.aa = zext nneg i32 %.286.i to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ad = add nuw nsw i32 %.286.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.preheader.1, %bb.h
  %i.ae = phi i64 [ %i.ac, %bb.h ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.ad, %bb.h ], [ %.286.i, %.preheader.1 ]
  %i.af = icmp eq i32 %.286.i.1, %0
  br i1 %i.af, label %rb_scan_args_set.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.i
  %i.ag = icmp eq i32 %0, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_scan_args_set.exit
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.23) #6
  unreachable

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ai = tail call i64 @ossl_pem_passwd_value(i64 noundef %i.ae) #5
  %3 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aj = tail call i64 @ossl_to_der_if_possible(i64 noundef %3) #5
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !10
  %i.ak = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #5 ; 7 uses
  %i.al = call ptr @d2i_RSAPublicKey_bio(ptr noundef %i.ak, ptr noundef null) #5 ; 2 uses
  %.not35 = icmp eq ptr %i.al, null
  br i1 %.not35, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.am = call i64 @BIO_ctrl(ptr noundef %i.ak, i32 noundef 1, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  call void @ossl_clear_error() #5
  %i.an = call ptr @PEM_read_bio_RSAPublicKey(ptr noundef %i.ak, ptr noundef null, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %.not36 = icmp eq ptr %i.an, null
  br i1 %.not36, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ao = call i64 @BIO_ctrl(ptr noundef %i.ak, i32 noundef 1, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  call void @ossl_clear_error() #5
  %i.ap = call ptr @ossl_pkey_read_generic(ptr noundef %i.ak, i64 noundef %i.ai) #5 ; 4 uses
  %i.aq = call i32 @BIO_free(ptr noundef %i.ak) #5 ; 0 uses
  %.not37 = icmp eq ptr %i.ap, null
  br i1 %.not37, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = load i64, ptr @ePKeyError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.24) #6
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.as = call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %i.ap) #5 ; 2 uses
  %.not38 = icmp eq i32 %i.as, 6
  br i1 %.not38, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @EVP_PKEY_free(ptr noundef nonnull %i.ap) #5
  %i.at = load i64, ptr @ePKeyError, align 8, !tbaa !10
  %i.au = call ptr @OBJ_nid2sn(i32 noundef %i.as) #5
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.25, ptr noundef %i.au) #6
  unreachable

bb.r:                                             ; preds = %bb.m, %bb.l
  %.030 = phi ptr [ %i.al, %bb.l ], [ %i.an, %bb.m ] ; 2 uses
  %i.av = call i32 @BIO_free(ptr noundef %i.ak) #5 ; 0 uses
  %i.aw = call ptr @EVP_PKEY_new() #5             ; 4 uses
  %.not39 = icmp eq ptr %i.aw, null
  br i1 %.not39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.aw, i32 noundef 6, ptr noundef nonnull %.030) #5
  %.not40 = icmp eq i32 %i.ax, 1
  br i1 %.not40, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @EVP_PKEY_free(ptr noundef %i.aw) #5
  call void @RSA_free(ptr noundef nonnull %.030) #5
  %i.ay = load i64, ptr @ePKeyError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.26) #6
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.p
  %.sink = phi ptr [ %i.ap, %bb.p ], [ %i.aw, %bb.s ]
  %i.az = inttoptr i64 %2 to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_rsa_is_public(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = icmp eq ptr %i.r, @ossl_evp_pkey_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.27) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not4 = icmp eq i32 %i.v, 6
  br i1 %.not4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.w, ptr noundef nonnull @.str.28) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @EVP_PKEY_get0_RSA(ptr noundef nonnull %.1.i) #5
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.z, ptr noundef nonnull @.str.29) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  ret i64 20
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @ossl_rsa_is_private(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 95
  %or.cond.not.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @ossl_evp_pkey_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !20

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 2 uses
  %i.u = icmp eq ptr %i.t, @ossl_evp_pkey_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.v, %.critedge.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.q, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.27) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.x = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not7 = icmp eq i32 %i.x, 6
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.y, ptr noundef nonnull @.str.28) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = tail call ptr @EVP_PKEY_get0_RSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.29) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @RSA_get0_key(ptr noundef nonnull %i.z, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = icmp eq ptr %i.ae, null
  %.not4.i = select i1 %i.ad, i1 true, i1 %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not4.i, label %bb.k, label %RSA_PRIVATE.exit.thread

bb.k:                                             ; preds = %bb.j
  %.pr.i.i = load i64, ptr @RSA_PRIVATE.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %RSA_PRIVATE.exit

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.ag = call i64 @rb_intern2(ptr noundef nonnull @.str.30, i64 noundef 7) #5 ; 3 uses
  store i64 %i.ag, ptr @RSA_PRIVATE.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %RSA_PRIVATE.exit, !llvm.loop !30

RSA_PRIVATE.exit:                                 ; preds = %.lr.ph.i.i, %bb.k
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.k ], [ %i.ag, %.lr.ph.i.i ]
  %i.ah = call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #5
  %.fr = freeze i64 %i.ah
  %.not11 = icmp eq i64 %.fr, 20
  %spec.select = select i1 %.not11, i64 20, i64 0
  br label %RSA_PRIVATE.exit.thread

RSA_PRIVATE.exit.thread:                          ; preds = %RSA_PRIVATE.exit, %bb.j
  %i.ai = phi i64 [ 20, %bb.j ], [ %spec.select, %RSA_PRIVATE.exit ]
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_rsa_export(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @can_export_rsaprivatekey(i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ossl_pkey_export_traditional(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @ossl_pkey_export_spki(i64 noundef %2, i32 noundef 0) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %.0
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @ossl_rsa_to_der(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @can_export_rsaprivatekey(i64 noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ossl_pkey_export_traditional(i32 noundef 0, ptr noundef null, i64 noundef %0, i32 noundef 1) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @ossl_pkey_export_spki(i64 noundef %0, i32 noundef 1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_rsa_sign_pss(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.g = load i64, ptr @ossl_rsa_sign_pss.kwargs_ids, align 16, !tbaa !10
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %rb_scan_args_n_opt.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.31, i64 noundef 11) #5
  store i64 %i.h, ptr @ossl_rsa_sign_pss.kwargs_ids, align 16, !tbaa !10
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 9) #5
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ossl_rsa_sign_pss.kwargs_ids, i64 8), align 8, !tbaa !10
  br label %rb_scan_args_n_opt.exit

rb_scan_args_n_opt.exit:                          ; preds = %bb.a, %bb.b
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.k = zext nneg i32 %0 to i64
  %i.l = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  %i.o = tail call i32 @rb_keyword_given_p() #5
  %.not39 = icmp eq i32 %i.o, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_hash_dup(i64 noundef %i.n) #5
  %i.q = add nsw i32 %0, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.188.i = phi i64 [ 4, %bb.c ], [ %i.p, %bb.d ]
  %.1.i = phi i32 [ %0, %bb.c ], [ %i.q, %bb.d ]  ; 4 uses
  %i.r = icmp samesign ult i32 %.1.i, 2
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10
  store i64 %i.u, ptr %i.a, align 8, !tbaa !10
  %i.v = icmp eq i32 %.1.i, 2
  br i1 %i.v, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.f, %bb.e
  %.1.i38 = phi i32 [ %.1.i, %bb.e ], [ %.1.i, %bb.f ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i38, i32 noundef 2, i32 noundef 2) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.f
  %i.w = call i32 @rb_get_kwargs(i64 noundef %.188.i, ptr noundef nonnull @ossl_rsa_sign_pss.kwargs_ids, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.x = load i64, ptr %i.b, align 16, !tbaa !10
  %.pr.i = load i64, ptr @ossl_rsa_sign_pss.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_scan_args_set.exit, %.lr.ph.i
  %i.y = call i64 @rb_intern2(ptr noundef nonnull @.str.34, i64 noundef 3) #5 ; 3 uses
  store i64 %i.y, ptr @ossl_rsa_sign_pss.rbimpl_id, align 8, !tbaa !10
  %.not.i26 = icmp eq i64 %i.y, 0
  br i1 %.not.i26, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !30

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_scan_args_set.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_scan_args_set.exit ], [ %i.y, %.lr.ph.i ]
  %i.z = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #5
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit
  %i.ab = load i64, ptr %i.b, align 16, !tbaa !10
  %.pr.i27 = load i64, ptr @ossl_rsa_sign_pss.rbimpl_id.35, align 8, !tbaa !10 ; 2 uses
  %.not4.i28 = icmp eq i64 %.pr.i27, 0
  br i1 %.not4.i28, label %.lr.ph.i30, label %rbimpl_intern_const.exit32

.lr.ph.i30:                                       ; preds = %bb.g, %.lr.ph.i30
  %i.ac = call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 6) #5 ; 3 uses
  store i64 %i.ac, ptr @ossl_rsa_sign_pss.rbimpl_id.35, align 8, !tbaa !10
  %.not.i31 = icmp eq i64 %i.ac, 0
  br i1 %.not.i31, label %.lr.ph.i30, label %rbimpl_intern_const.exit32, !llvm.loop !30

rbimpl_intern_const.exit32:                       ; preds = %.lr.ph.i30, %bb.g
  %.lcssa.i29 = phi i64 [ %.pr.i27, %bb.g ], [ %i.ac, %.lr.ph.i30 ]
  %i.ad = call i64 @rb_id2sym(i64 noundef %.lcssa.i29) #5
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.h

bb.h:                                             ; preds = %rbimpl_intern_const.exit32
  %i.af = load i64, ptr %i.b, align 16, !tbaa !10 ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = call i64 @rb_fix2int(i64 noundef %i.af) #5
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = call i64 @rb_num2int(i64 noundef %i.af) #5
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ah, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = trunc i64 %.0.i to i32
  br label %bb.k

bb.k:                                             ; preds = %rbimpl_intern_const.exit32, %rbimpl_intern_const.exit, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.aj, %rb_num2int_inline.exit ], [ -2, %rbimpl_intern_const.exit ], [ -1, %rbimpl_intern_const.exit32 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = call ptr @ossl_evp_md_fetch(i64 noundef %i.al, ptr noundef nonnull %i.c) #5
  %i.an = call ptr @GetPrivPKeyPtr(i64 noundef %2) #5 ; 2 uses
  %i.ao = call i32 @EVP_PKEY_get_size(ptr noundef %i.an) #5
  %i.ap = sext i32 %i.ao to i64
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !10
  %i.aq = call ptr @ossl_evp_md_fetch(i64 noundef %i.s, ptr noundef nonnull %i.d) #5
  %i.ar = call i64 @rb_string_value(ptr noundef nonnull %i.a) #5 ; 0 uses
  %3 = load i64, ptr %i.f, align 8, !tbaa !10
  %i.as = call i64 @rb_str_new(ptr noundef null, i64 noundef %3) #5, !callees !31 ; 3 uses
  %i.at = call ptr @EVP_MD_CTX_new() #5           ; 6 uses
  %.not19 = icmp eq ptr %i.at, null
  br i1 %.not19, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call i32 @EVP_DigestSignInit(ptr noundef nonnull %i.at, ptr noundef nonnull %i.e, ptr noundef %i.aq, ptr noundef null, ptr noundef %i.an) #5
  %.not20 = icmp eq i32 %i.au, 1
  br i1 %.not20, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.aw = call i32 @EVP_PKEY_CTX_set_rsa_padding(ptr noundef %i.av, i32 noundef 6) #5
  %.not21 = icmp eq i32 %i.aw, 1
  br i1 %.not21, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ay = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(ptr noundef %i.ax, i32 noundef %.0) #5
  %.not22 = icmp eq i32 %i.ay, 1
  br i1 %.not22, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ba = call i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(ptr noundef %i.az, ptr noundef %i.am) #5
  %.not23 = icmp eq i32 %i.ba, 1
  br i1 %.not23, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13
  %i.be = and i64 %i.bd, 8192
  %.not.i33 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  br i1 %.not.i33, label %RSTRING_PTR.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.p, %bb.q
  %i.bh = phi ptr [ %i.bg, %bb.q ], [ %i.bf, %bb.p ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bk = call i32 @EVP_DigestSignUpdate(ptr noundef nonnull %i.at, ptr noundef %i.bh, i64 noundef %i.bj) #5
  %.not24 = icmp eq i32 %i.bk, 1
  br i1 %.not24, label %bb.r, label %bb.u

bb.r:                                             ; preds = %RSTRING_PTR.exit
  %i.bl = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = and i64 %i.bm, 8192
  %.not.i34 = icmp eq i64 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  br i1 %.not.i34, label %RSTRING_PTR.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34
  br label %RSTRING_PTR.exit35

RSTRING_PTR.exit35:                               ; preds = %bb.r, %bb.s
  %i.bq = phi ptr [ %i.bp, %bb.s ], [ %i.bo, %bb.r ]
  %i.br = call i32 @EVP_DigestSignFinal(ptr noundef nonnull %i.at, ptr noundef %i.bq, ptr noundef nonnull %i.f) #5
  %.not25 = icmp eq i32 %i.br, 1
  br i1 %.not25, label %bb.t, label %bb.u

bb.t:                                             ; preds = %RSTRING_PTR.exit35
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !10
  call void @rb_str_set_len(i64 noundef %i.as, i64 noundef %i.bs) #5
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.at) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.as

bb.u:                                             ; preds = %RSTRING_PTR.exit35, %RSTRING_PTR.exit, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  call void @EVP_MD_CTX_free(ptr noundef %i.at) #5
  %i.bt = load i64, ptr @ePKeyError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.bt, ptr noundef null) #6
  unreachable
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @ossl_rsa_verify_pss(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 7 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.g = load i64, ptr @ossl_rsa_verify_pss.kwargs_ids, align 16, !tbaa !10
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %rb_scan_args_n_opt.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.31, i64 noundef 11) #5
  store i64 %i.h, ptr @ossl_rsa_verify_pss.kwargs_ids, align 16, !tbaa !10
  %i.i = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 9) #5
  store i64 %i.i, ptr getelementptr inbounds nuw (i8, ptr @ossl_rsa_verify_pss.kwargs_ids, i64 8), align 8, !tbaa !10
  br label %rb_scan_args_n_opt.exit

rb_scan_args_n_opt.exit:                          ; preds = %bb.a, %bb.b
  %i.j = icmp sgt i32 %0, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.k = zext nneg i32 %0 to i64
  %i.l = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  %i.o = tail call i32 @rb_keyword_given_p() #5
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_hash_dup(i64 noundef %i.n) #5
  %i.q = add nsw i32 %0, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.188.i = phi i64 [ 4, %bb.c ], [ %i.p, %bb.d ]
  %.1.i = phi i32 [ %0, %bb.c ], [ %i.q, %bb.d ]  ; 4 uses
  %i.r = icmp samesign ult i32 %.1.i, 3
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10
  store i64 %i.u, ptr %i.a, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10
  store i64 %i.w, ptr %i.b, align 8, !tbaa !10
  %i.x = icmp eq i32 %.1.i, 3
  br i1 %i.x, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.f, %bb.e
  %.1.i41 = phi i32 [ %.1.i, %bb.e ], [ %.1.i, %bb.f ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i41, i32 noundef 3, i32 noundef 3) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.f
  %i.y = call i32 @rb_get_kwargs(i64 noundef %.188.i, ptr noundef nonnull @ossl_rsa_verify_pss.kwargs_ids, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.z = load i64, ptr %i.c, align 16, !tbaa !10
  %.pr.i = load i64, ptr @ossl_rsa_verify_pss.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_scan_args_set.exit, %.lr.ph.i
  %i.aa = call i64 @rb_intern2(ptr noundef nonnull @.str.38, i64 noundef 4) #5 ; 3 uses
  store i64 %i.aa, ptr @ossl_rsa_verify_pss.rbimpl_id, align 8, !tbaa !10
  %.not.i27 = icmp eq i64 %i.aa, 0
  br i1 %.not.i27, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !30

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_scan_args_set.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_scan_args_set.exit ], [ %i.aa, %.lr.ph.i ]
  %i.ab = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #5
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit
  %i.ad = load i64, ptr %i.c, align 16, !tbaa !10
  %.pr.i28 = load i64, ptr @ossl_rsa_verify_pss.rbimpl_id.39, align 8, !tbaa !10 ; 2 uses
  %.not4.i29 = icmp eq i64 %.pr.i28, 0
  br i1 %.not4.i29, label %.lr.ph.i31, label %rbimpl_intern_const.exit33

.lr.ph.i31:                                       ; preds = %bb.g, %.lr.ph.i31
  %i.ae = call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 6) #5 ; 3 uses
  store i64 %i.ae, ptr @ossl_rsa_verify_pss.rbimpl_id.39, align 8, !tbaa !10
  %.not.i32 = icmp eq i64 %i.ae, 0
  br i1 %.not.i32, label %.lr.ph.i31, label %rbimpl_intern_const.exit33, !llvm.loop !30

rbimpl_intern_const.exit33:                       ; preds = %.lr.ph.i31, %bb.g
  %.lcssa.i30 = phi i64 [ %.pr.i28, %bb.g ], [ %i.ae, %.lr.ph.i31 ]
  %i.af = call i64 @rb_id2sym(i64 noundef %.lcssa.i30) #5
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.k, label %bb.h

bb.h:                                             ; preds = %rbimpl_intern_const.exit33
  %i.ah = load i64, ptr %i.c, align 16, !tbaa !10 ; 3 uses
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call i64 @rb_fix2int(i64 noundef %i.ah) #5
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = call i64 @rb_num2int(i64 noundef %i.ah) #5
  br label %rb_num2int_inline.exit
end_hunk_0
