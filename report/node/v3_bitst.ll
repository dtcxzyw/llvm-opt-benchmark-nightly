inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.v3_ext_method = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ossl_v3_nscert = dso_local local_unnamed_addr constant %struct.v3_ext_method { i32 71, i32 0, ptr @ASN1_BIT_STRING_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2v_ASN1_BIT_STRING, ptr @v2i_ASN1_BIT_STRING, ptr null, ptr null, ptr @ns_cert_type_table }, align 8
@ossl_v3_key_usage = dso_local local_unnamed_addr constant %struct.v3_ext_method { i32 83, i32 0, ptr @ASN1_BIT_STRING_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2v_ASN1_BIT_STRING, ptr @v2i_ASN1_BIT_STRING, ptr null, ptr null, ptr @key_usage_type_table }, align 8
@.str = private unnamed_addr constant [50 x i8] c"../../deps/openssl/openssl/crypto/x509/v3_bitst.c\00", align 1
@__func__.v2i_ASN1_BIT_STRING = private unnamed_addr constant [20 x i8] c"v2i_ASN1_BIT_STRING\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL Client\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"SSL Server\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"S/MIME\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"email\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Object Signing\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"objsign\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SSL CA\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sslCA\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"S/MIME CA\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"emailCA\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Object Signing CA\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"objCA\00", align 1
@ns_cert_type_table = internal global [9 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2, ptr @.str.3 }, { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.4, ptr @.str.5 }, { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.6, ptr @.str.7 }, { i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.8, ptr @.str.9 }, { i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.11 }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.12, ptr @.str.13 }, { i32, [4 x i8], ptr, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.14, ptr @.str.15 }, { i32, [4 x i8], ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.17 }, { i32, [4 x i8], ptr, ptr } { i32 -1, [4 x i8] zeroinitializer, ptr null, ptr null }], align 16
@.str.19 = private unnamed_addr constant [18 x i8] c"Digital Signature\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"digitalSignature\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Non Repudiation\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"nonRepudiation\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Key Encipherment\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"keyEncipherment\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Data Encipherment\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"dataEncipherment\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Key Agreement\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"keyAgreement\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Certificate Sign\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"keyCertSign\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"CRL Sign\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"cRLSign\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Encipher Only\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"encipherOnly\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Decipher Only\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"decipherOnly\00", align 1
@key_usage_type_table = internal global [10 x { i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.19, ptr @.str.20 }, { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.22 }, { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.23, ptr @.str.24 }, { i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.25, ptr @.str.26 }, { i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.27, ptr @.str.28 }, { i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.29, ptr @.str.30 }, { i32, [4 x i8], ptr, ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.32 }, { i32, [4 x i8], ptr, ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.33, ptr @.str.34 }, { i32, [4 x i8], ptr, ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str.36 }, { i32, [4 x i8], ptr, ptr } { i32 -1, [4 x i8] zeroinitializer, ptr null, ptr null }], align 16

declare ptr @ASN1_BIT_STRING_it() #0

; Function Attrs: nounwind uwtable
define dso_local ptr @i2v_ASN1_BIT_STRING(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %.not7 = icmp eq ptr %i.e, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.a ]
  %.08 = phi ptr [ %i.k, %bb.c ], [ %i.c, %bb.a ] ; 3 uses
  %i.g = load i32, ptr %.08, align 8, !tbaa !17
  %i.h = call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %1, i32 noundef %i.g) #3
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.j = call i32 @X509V3_add_value(ptr noundef %i.i, ptr noundef null, ptr noundef nonnull %i.a) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.08, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.08, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %2, %bb.a ]
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define dso_local ptr @v2i_ASN1_BIT_STRING(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @ASN1_BIT_STRING_new() #3  ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #3
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph36, label %.loopexit

.lr.ph36:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__func__.v2i_ASN1_BIT_STRING) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524301, ptr noundef null) #3
  br label %.loopexit

bb.c:                                             ; preds = %bb.j
  %i.f = add nuw nsw i32 %.01935, 1               ; 2 uses
  %i.g = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #3
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit, !llvm.loop !20

bb.d:                                             ; preds = %.lr.ph36, %bb.c
  %.01935 = phi i32 [ 0, %.lr.ph36 ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.01935) #3 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.o = phi ptr [ %i.l, %.lr.ph ], [ %i.z, %bb.i ]
  %.032 = phi ptr [ %i.j, %.lr.ph ], [ %i.x, %bb.i ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.n) #4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.n) #4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i32, ptr %.032, align 8, !tbaa !17
  %i.w = tail call i32 @ASN1_BIT_STRING_set_bit(ptr noundef nonnull %i.a, i32 noundef %i.v, i32 noundef 1) #3
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @__func__.v2i_ASN1_BIT_STRING) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 524301, ptr noundef null) #3
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.032, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !24

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %.pr = load ptr, ptr %i.aa, align 8, !tbaa !14
  %.not24 = icmp eq ptr %.pr, null
  br i1 %.not24, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.j, %bb.d, %bb.i
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @__func__.v2i_ASN1_BIT_STRING) #3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 111, ptr noundef nonnull @.str.1, ptr noundef %i.ac) #3
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.h, %.thread
  tail call void @ASN1_BIT_STRING_free(ptr noundef nonnull %i.a) #3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %.preheader, %bb.b
  %.020 = phi ptr [ null, %bb.b ], [ %i.a, %.preheader ], [ null, %.loopexit.sink.split ], [ %i.a, %bb.c ]
  ret ptr %.020
}

declare i32 @ASN1_BIT_STRING_get_bit(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509V3_add_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @ASN1_BIT_STRING_new() local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #0

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @ASN1_BIT_STRING_free(ptr noundef) local_unnamed_addr #0

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS19stack_st_CONF_VALUE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 96}
!13 = !{!"v3_ext_method", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!14 = !{!15, !16, i64 8}
!15 = !{!"BIT_STRING_BITNAME_st", !6, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!15, !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !16, i64 8}
!22 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!15, !16, i64 16}
!24 = distinct !{!24, !19}
end_hunk_0
