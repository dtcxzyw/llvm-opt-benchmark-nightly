inline.NumInlined: 25
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon, ptr, ptr, i64 }
%struct.anon = type { ptr, ptr, ptr, ptr, [1 x ptr] }

@mPKey = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@cPKey = external local_unnamed_addr global i64, align 8
@cDSA = local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"public?\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"private?\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"to_pem\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"to_der\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pub_key\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"priv_key\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"set_pqg\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"set_key\00", align 1
@ossl_evp_pkey_type = external constant %struct.rb_data_type_struct, align 8
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"pkey already initialized\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [96 x i8] c"OpenSSL::PKey::DSA.new cannot be called without arguments; pkeys are immutable with OpenSSL 3.0\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"DSA PUBLIC KEY\00", align 1
@ePKeyError = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"Neither PUB key nor PRIV key\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"incorrect pkey type: %s\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"EVP_PKEY_assign_DSA\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"PKEY wasn't initialized!\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"THIS IS NOT A DSA!\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"failed to get DSA from EVP_PKEY\00", align 1
@DSA_PRIVATE.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"dsa#set_pqg= is incompatible with OpenSSL 3.0\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"dsa#set_key= is incompatible with OpenSSL 3.0\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_ossl_dsa() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mPKey, align 8, !tbaa !10
  %i.b = load i64, ptr @cPKey, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str, i64 noundef %i.b) #5 ; 2 uses
  store i64 %i.c, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @ossl_dsa_initialize, i32 noundef -1) #5
  %i.d = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull @ossl_dsa_is_public, i32 noundef 0) #5
  %i.e = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @ossl_dsa_is_private, i32 noundef 0) #5
  %i.f = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @ossl_dsa_export, i32 noundef -1) #5
  %i.g = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #5
  %i.h = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #5
  %i.i = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ossl_dsa_to_der, i32 noundef 0) #5
  %i.j = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @ossl_dsa_get_p, i32 noundef 0) #5
  %i.k = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef nonnull @ossl_dsa_get_q, i32 noundef 0) #5
  %i.l = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.10, ptr noundef nonnull @ossl_dsa_get_g, i32 noundef 0) #5
  %i.m = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.11, ptr noundef nonnull @ossl_dsa_get_pub_key, i32 noundef 0) #5
  %i.n = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @ossl_dsa_get_priv_key, i32 noundef 0) #5
  %i.o = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.13, ptr noundef nonnull @ossl_dsa_set_pqg, i32 noundef 3) #5
  %i.p = load i64, ptr @cDSA, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.14, ptr noundef nonnull @ossl_dsa_set_key, i32 noundef 2) #5
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @ossl_dsa_initialize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
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
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i35 = icmp eq ptr %.016.i, null
  br i1 %.not.i35, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ]
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.15) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = icmp slt i32 %0, 0
  br i1 %i.w, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.not51 = icmp eq i32 %0, 0
  br i1 %.not51, label %.preheader.1, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader
  %i.x = load i64, ptr %1, align 8, !tbaa !10
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.g
  %i.y = phi i64 [ %i.x, %bb.g ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 1, %bb.g ], [ 0, %.preheader.preheader ] ; 4 uses
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
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.17) #6
  unreachable

bb.l:                                             ; preds = %rb_scan_args_set.exit
  %i.ai = tail call i64 @ossl_pem_passwd_value(i64 noundef %i.ae) #5
  %i.aj = tail call i64 @ossl_to_der_if_possible(i64 noundef %i.y) #5
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !10
  %i.ak = call ptr @ossl_obj2bio(ptr noundef nonnull %i.a) #5 ; 5 uses
  %i.al = call ptr @PEM_ASN1_read_bio(ptr noundef nonnull @d2i_DSAPublicKey, ptr noundef nonnull @.str.18, ptr noundef %i.ak, ptr noundef null, ptr noundef null, ptr noundef null) #5 ; 3 uses
  %.not30 = icmp eq ptr %i.al, null
  br i1 %.not30, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.am = call i64 @BIO_ctrl(ptr noundef %i.ak, i32 noundef 1, i64 noundef 0, ptr noundef null) #5 ; 0 uses
  call void @ossl_clear_error() #5
  %i.an = call ptr @ossl_pkey_read_generic(ptr noundef %i.ak, i64 noundef %i.ai) #5 ; 4 uses
  %i.ao = call i32 @BIO_free(ptr noundef %i.ak) #5 ; 0 uses
  %.not31 = icmp eq ptr %i.an, null
  br i1 %.not31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr @ePKeyError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.19) #6
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %i.an) #5 ; 2 uses
  %.not32 = icmp eq i32 %i.aq, 116
  br i1 %.not32, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @EVP_PKEY_free(ptr noundef nonnull %i.an) #5
  %i.ar = load i64, ptr @ePKeyError, align 8, !tbaa !10
  %i.as = call ptr @OBJ_nid2sn(i32 noundef %i.aq) #5
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.20, ptr noundef %i.as) #6
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.at = call i32 @BIO_free(ptr noundef %i.ak) #5 ; 0 uses
  %i.au = call ptr @EVP_PKEY_new() #5             ; 4 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = call i32 @EVP_PKEY_assign(ptr noundef nonnull %i.au, i32 noundef 116, ptr noundef nonnull %i.al) #5
  %.not34 = icmp eq i32 %i.av, 1
  br i1 %.not34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @EVP_PKEY_free(ptr noundef %i.au) #5
  call void @DSA_free(ptr noundef nonnull %i.al) #5
  %i.aw = load i64, ptr @ePKeyError, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aw, ptr noundef nonnull @.str.21) #6
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.o
  %.sink = phi ptr [ %i.an, %bb.o ], [ %i.au, %bb.r ]
  %i.ax = inttoptr i64 %2 to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %.sink, ptr %i.ay, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @ossl_dsa_is_public(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not6 = icmp eq i32 %i.w, 116
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef null) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not7 = icmp eq ptr %i.ab, null
  %i.ac = select i1 %.not7, i64 0, i64 20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.ac
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @ossl_dsa_is_private(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not7 = icmp eq i32 %i.w, 116
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %i.a) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not2.i = icmp eq ptr %i.ab, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not2.i, label %bb.k, label %DSA_PRIVATE.exit.thread

bb.k:                                             ; preds = %bb.j
  %.pr.i.i = load i64, ptr @DSA_PRIVATE.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %.lr.ph.i.i, label %DSA_PRIVATE.exit.a

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.ac = call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 7) #5 ; 3 uses
  store i64 %i.ac, ptr @DSA_PRIVATE.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %DSA_PRIVATE.exit.a, !llvm.loop !30

DSA_PRIVATE.exit.a:                               ; preds = %.lr.ph.i.i, %bb.k
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.k ], [ %i.ac, %.lr.ph.i.i ]
  %i.ad = call i64 @rb_attr_get(i64 noundef %0, i64 noundef %.lcssa.i.i) #5
  %.not11 = icmp eq i64 %i.ad, 20
  %spec.select = select i1 %.not11, i64 20, i64 0
  br label %DSA_PRIVATE.exit.thread

DSA_PRIVATE.exit.thread:                          ; preds = %bb.j, %DSA_PRIVATE.exit.a
  %i.ae = phi i64 [ 20, %bb.j ], [ %spec.select, %DSA_PRIVATE.exit.a ]
  ret i64 %i.ae
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_export(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
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
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not12 = icmp eq i32 %i.w, 116
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %i.a) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not14 = icmp eq ptr %i.ab, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i64 @ossl_pkey_export_traditional(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #5
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_pkey_export_spki(i64 noundef %2, i32 noundef 0) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %i.ac, %bb.k ], [ %i.ad, %bb.l ]
  ret i64 %.0
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_to_der(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not10 = icmp eq i32 %i.w, 116
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %i.a) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not12 = icmp eq ptr %i.ab, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i64 @ossl_pkey_export_traditional(i32 noundef 0, ptr noundef null, i64 noundef %0, i32 noundef 1) #5
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_pkey_export_spki(i64 noundef %0, i32 noundef 1) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %i.ac, %bb.k ], [ %i.ad, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_get_p(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not9 = icmp eq i32 %i.w, 116
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_pqg(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_bn_new(ptr noundef nonnull %i.ab) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.ad, %bb.k ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_get_q(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not9 = icmp eq i32 %i.w, 116
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_pqg(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_bn_new(ptr noundef nonnull %i.ab) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.ad, %bb.k ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_get_g(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not9 = icmp eq i32 %i.w, 116
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_pqg(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_bn_new(ptr noundef nonnull %i.ab) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.ad, %bb.k ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_get_pub_key(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not9 = icmp eq i32 %i.w, 116
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, ptr noundef null) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_bn_new(ptr noundef nonnull %i.ab) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.ad, %bb.k ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @ossl_dsa_get_priv_key(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !12

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 95
  %or.cond.not.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !15

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc nuw i64 %i.j to i1
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
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = icmp eq ptr %i.s, @ossl_evp_pkey_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !26

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ossl_evp_pkey_type) #5
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.u, %.critedge.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.22) #6
  unreachable

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.w = tail call i32 @EVP_PKEY_get_base_id(ptr noundef nonnull %.1.i) #5
  %.not9 = icmp eq i32 %i.w, 116
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.x, ptr noundef nonnull @.str.23) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @EVP_PKEY_get0_DSA(ptr noundef nonnull %.1.i) #5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.24) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @DSA_get0_key(ptr noundef nonnull %i.y, ptr noundef null, ptr noundef nonnull %i.a) #5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i64 @ossl_bn_new(ptr noundef nonnull %i.ab) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i64 [ %i.ad, %bb.k ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %.0
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i64 @ossl_dsa_set_pqg(i64 %0, i64 %1, i64 %2, i64 %3) #2 {
bb.a:
  %i.a = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.26) #6
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i64 @ossl_dsa_set_key(i64 %0, i64 %1, i64 %2) #2 {
bb.a:
  %i.a = load i64, ptr @ePKeyError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.27) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @ossl_pem_passwd_value(i64 noundef) local_unnamed_addr #1

declare i64 @ossl_to_der_if_possible(i64 noundef) local_unnamed_addr #1

declare ptr @ossl_obj2bio(ptr noundef) local_unnamed_addr #1

declare ptr @PEM_ASN1_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @d2i_DSAPublicKey(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_clear_error() local_unnamed_addr #1

declare ptr @ossl_pkey_read_generic(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ossl_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @EVP_PKEY_get_base_id(ptr noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare ptr @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_assign(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @DSA_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @EVP_PKEY_get0_DSA(ptr noundef) local_unnamed_addr #1

declare void @DSA_get0_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ossl_pkey_export_traditional(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ossl_pkey_export_spki(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @DSA_get0_pqg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ossl_bn_new(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"branch_weights", i32 1073205, i32 2146410443}
!13 = !{!14, !11, i64 0}
!14 = !{!"RBasic", !11, i64 0, !11, i64 8}
!15 = !{!"branch_weights", i32 -100663296, i32 2097152}
!16 = !{!17, !11, i64 24}
!17 = !{!"RTypedData", !14, i64 0, !11, i64 16, !11, i64 24, !18, i64 32}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!17, !18, i64 32}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!22, !25, i64 48}
!22 = !{!"rb_data_type_struct", !23, i64 0, !24, i64 8, !25, i64 48, !18, i64 56, !11, i64 64}
!23 = !{!"p1 omnipotent char", !18, i64 0}
!24 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !8, i64 32}
!25 = !{!"p1 _ZTS19rb_data_type_struct", !18, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS9bignum_st", !18, i64 0}
!30 = distinct !{!30, !27}
end_hunk_0
