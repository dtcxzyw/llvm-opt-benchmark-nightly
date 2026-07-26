inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ossl_der_aid_sha1Identifier = dso_local constant [11 x i8] c"0\09\06\05+\0E\03\02\1A\05\00", align 1
@ossl_der_aid_sha224Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\04\05\00", align 1
@ossl_der_aid_sha256Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\01\05\00", align 1
@ossl_der_aid_sha384Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\02\05\00", align 1
@ossl_der_aid_sha512Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\03\05\00", align 1
@ossl_der_aid_sha512_224Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\05\05\00", align 1
@ossl_der_aid_sha512_256Identifier = dso_local constant [15 x i8] c"0\0D\06\09`\86H\01e\03\04\02\06\05\00", align 1
@.str = private unnamed_addr constant [62 x i8] c"../../deps/openssl/openssl/providers/common/der/der_rsa_key.c\00", align 1
@__func__.ossl_DER_w_RSASSA_PSS_params = private unnamed_addr constant [29 x i8] c"ossl_DER_w_RSASSA_PSS_params\00", align 1
@ossl_der_oid_rsaEncryption = external constant [11 x i8], align 1
@ossl_der_oid_id_RSASSA_PSS = external constant [11 x i8], align 1
@der_aid_mgf1SHA224Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\04\05\00", align 16
@der_aid_mgf1SHA256Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\01\05\00", align 16
@der_aid_mgf1SHA384Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\02\05\00", align 16
@der_aid_mgf1SHA512Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\03\05\00", align 16
@der_aid_mgf1SHA512_224Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\05\05\00", align 16
@der_aid_mgf1SHA512_256Identifier = internal constant [28 x i8] c"0\1A\06\09*\86H\86\F7\0D\01\01\080\0D\06\09`\86H\01e\03\04\02\06\05\00", align 16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_DER_w_RSASSA_PSS_params(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @ossl_rsa_pss_params_30_is_unrestricted(ptr noundef nonnull %2) #2
  %.not32 = icmp eq i32 %i.a, 0
  br i1 %.not32, label %bb.c, label %.critedge, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @ossl_rsa_pss_params_30_hashalg(ptr noundef nonnull %2) #2 ; 2 uses
  %i.c = tail call i32 @ossl_rsa_pss_params_30_saltlen(ptr noundef nonnull %2) #2 ; 3 uses
  %i.d = tail call i32 @ossl_rsa_pss_params_30_trailerfield(ptr noundef nonnull %2) #2
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 308, ptr noundef nonnull @__func__.ossl_DER_w_RSASSA_PSS_params) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 150, ptr noundef null) #2
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not33 = icmp eq i32 %i.d, 1
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @__func__.ossl_DER_w_RSASSA_PSS_params) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 139, ptr noundef null) #2
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @ossl_rsa_pss_params_30_hashalg(ptr noundef null) #2
  %i.g = tail call i32 @ossl_rsa_pss_params_30_saltlen(ptr noundef null) #2
  %i.h = tail call i32 @ossl_rsa_pss_params_30_trailerfield(ptr noundef null) #2
  switch i32 %i.b, label %.critedge [
    i32 64, label %bb.n
    i32 675, label %bb.h
    i32 672, label %bb.i
    i32 673, label %bb.j
    i32 674, label %bb.k
    i32 1094, label %bb.l
    i32 1095, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.027 = phi ptr [ @ossl_der_aid_sha512_256Identifier, %bb.m ], [ @ossl_der_aid_sha224Identifier, %bb.h ], [ @ossl_der_aid_sha256Identifier, %bb.i ], [ @ossl_der_aid_sha384Identifier, %bb.j ], [ @ossl_der_aid_sha512Identifier, %bb.k ], [ @ossl_der_aid_sha512_224Identifier, %bb.l ], [ @ossl_der_aid_sha1Identifier, %bb.g ]
  %.0 = phi i64 [ 15, %bb.m ], [ 15, %bb.h ], [ 15, %bb.i ], [ 15, %bb.j ], [ 15, %bb.k ], [ 15, %bb.l ], [ 11, %bb.g ]
  %i.i = tail call i32 @ossl_DER_w_begin_sequence(ptr noundef %0, i32 noundef %1) #2
  %.not34 = icmp eq i32 %i.i, 0
  br i1 %.not34, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.j = icmp eq i32 %i.h, 1
  br i1 %i.j, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.k = tail call i32 @ossl_DER_w_uint32(ptr noundef %0, i32 noundef 3, i32 noundef 1) #2
  %.not35 = icmp eq i32 %i.k, 0
  br i1 %.not35, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.l = icmp eq i32 %i.c, %i.g
  br i1 %i.l, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.m = tail call i32 @ossl_DER_w_uint32(ptr noundef %0, i32 noundef 2, i32 noundef %i.c) #2
  %.not36 = icmp eq i32 %i.m, 0
  br i1 %.not36, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.n = tail call i32 @ossl_rsa_pss_params_30_maskgenalg(ptr noundef nonnull %2) #2
  %i.o = icmp eq i32 %i.n, 911
  br i1 %i.o, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.p = tail call i32 @ossl_rsa_pss_params_30_maskgenhashalg(ptr noundef nonnull %2) #2
  switch i32 %i.p, label %.critedge [
    i32 64, label %DER_w_MaskGenAlgorithm.exit.thread41
    i32 675, label %DER_w_MaskGenAlgorithm.exit
    i32 672, label %bb.u
    i32 673, label %bb.v
    i32 674, label %bb.w
    i32 1094, label %bb.x
    i32 1095, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t
  br label %DER_w_MaskGenAlgorithm.exit

bb.v:                                             ; preds = %bb.t
  br label %DER_w_MaskGenAlgorithm.exit

bb.w:                                             ; preds = %bb.t
  br label %DER_w_MaskGenAlgorithm.exit

bb.x:                                             ; preds = %bb.t
  br label %DER_w_MaskGenAlgorithm.exit

bb.y:                                             ; preds = %bb.t
  br label %DER_w_MaskGenAlgorithm.exit

DER_w_MaskGenAlgorithm.exit:                      ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.09.i = phi ptr [ @der_aid_mgf1SHA512_256Identifier, %bb.y ], [ @der_aid_mgf1SHA512_224Identifier, %bb.x ], [ @der_aid_mgf1SHA256Identifier, %bb.u ], [ @der_aid_mgf1SHA384Identifier, %bb.v ], [ @der_aid_mgf1SHA512Identifier, %bb.w ], [ @der_aid_mgf1SHA224Identifier, %bb.t ]
  %i.q = tail call i32 @ossl_DER_w_precompiled(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %.09.i, i64 noundef 28) #2
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %.critedge, label %DER_w_MaskGenAlgorithm.exit.thread41

DER_w_MaskGenAlgorithm.exit.thread41:             ; preds = %bb.t, %DER_w_MaskGenAlgorithm.exit
  %i.r = icmp eq i32 %i.b, %i.f
  br i1 %i.r, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %DER_w_MaskGenAlgorithm.exit.thread41
  %i.s = tail call i32 @ossl_DER_w_precompiled(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %.027, i64 noundef %.0) #2
  %.not38 = icmp eq i32 %i.s, 0
  br i1 %.not38, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %DER_w_MaskGenAlgorithm.exit.thread41
  %i.t = tail call i32 @ossl_DER_w_end_sequence(ptr noundef %0, i32 noundef %1) #2
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.t, %bb.a, %bb.n, %bb.p, %bb.r, %DER_w_MaskGenAlgorithm.exit, %bb.z, %bb.aa, %bb.g, %bb.b, %bb.f, %bb.d
  %.028 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.g ], [ %i.v, %bb.aa ], [ 0, %bb.z ], [ 0, %DER_w_MaskGenAlgorithm.exit ], [ 0, %bb.r ], [ 0, %bb.p ], [ 0, %bb.n ], [ 0, %bb.a ], [ 0, %bb.t ], [ 0, %bb.s ]
  ret i32 %.028
}

declare i32 @ossl_rsa_pss_params_30_is_unrestricted(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_params_30_hashalg(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_params_30_saltlen(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_params_30_trailerfield(ptr noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ossl_DER_w_begin_sequence(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_DER_w_uint32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_DER_w_precompiled(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_DER_w_end_sequence(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_DER_w_algorithmIdentifier_RSA_PSS(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %.critedge [
    i32 0, label %.thread
    i32 4096, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @ossl_DER_w_begin_sequence(ptr noundef %0, i32 noundef %1) #2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.b = tail call i32 @ossl_DER_w_begin_sequence(ptr noundef %0, i32 noundef %1) #2
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %.critedge, label %.thread25

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @ossl_rsa_pss_params_30_is_unrestricted(ptr noundef %3) #2
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %bb.d, label %.thread25

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @ossl_DER_w_RSASSA_PSS_params(ptr noundef %0, i32 noundef -1, ptr noundef %3)
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %.critedge, label %.thread25

.thread25:                                        ; preds = %.thread, %bb.d, %bb.c
  %.0132428 = phi ptr [ @ossl_der_oid_id_RSASSA_PSS, %bb.c ], [ @ossl_der_oid_id_RSASSA_PSS, %bb.d ], [ @ossl_der_oid_rsaEncryption, %.thread ]
  %i.e = tail call i32 @ossl_DER_w_precompiled(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %.0132428, i64 noundef 11) #2
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread25
  %i.f = tail call i32 @ossl_DER_w_end_sequence(ptr noundef %0, i32 noundef %1) #2
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.a, %bb.b, %bb.d, %.thread25, %bb.e
  %.015 = phi i32 [ %i.h, %bb.e ], [ 0, %.thread25 ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.thread ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_DER_w_algorithmIdentifier_RSA(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RSA_test_flags(ptr noundef %2, i32 noundef 61440) #2
  %i.b = tail call ptr @ossl_rsa_get0_pss_params_30(ptr noundef %2) #2
  %i.c = tail call i32 @ossl_DER_w_algorithmIdentifier_RSA_PSS(ptr noundef %0, i32 noundef %1, i32 noundef %i.a, ptr noundef %i.b)
  ret i32 %i.c
}

declare i32 @RSA_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ossl_rsa_get0_pss_params_30(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_params_30_maskgenalg(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_rsa_pss_params_30_maskgenhashalg(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
