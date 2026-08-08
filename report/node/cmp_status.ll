inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"PKIStatus: accepted\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"PKIStatus: granted with modifications\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PKIStatus: rejection\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PKIStatus: waiting\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"PKIStatus: revocation warning - a revocation of the cert is imminent\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"PKIStatus: revocation notification - a revocation of the cert has occurred\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"PKIStatus: key update warning - update already done for the cert\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"../../deps/openssl/openssl/crypto/cmp/cmp_status.c\00", align 1
@__func__.ossl_cmp_PKIStatus_to_string = private unnamed_addr constant [29 x i8] c"ossl_cmp_PKIStatus_to_string\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"PKIStatus: invalid=%d\00", align 1
@__func__.ossl_cmp_pkisi_check_pkifailureinfo = private unnamed_addr constant [36 x i8] c"ossl_cmp_pkisi_check_pkifailureinfo\00", align 1
@__func__.OSSL_CMP_snprint_PKIStatusInfo = private unnamed_addr constant [31 x i8] c"OSSL_CMP_snprint_PKIStatusInfo\00", align 1
@__func__.OSSL_CMP_CTX_snprint_PKIStatus = private unnamed_addr constant [31 x i8] c"OSSL_CMP_CTX_snprint_PKIStatus\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"; PKIFailureInfo: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"; <no failure info>\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"; StatusString%s: \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\22%.*s\22%s\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"badAlg\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"badMessageCheck\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"badRequest\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"badTime\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"badCertId\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"badDataFormat\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"wrongAuthority\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"incorrectData\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"missingTimeStamp\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"badPOP\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"certRevoked\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"certConfirmed\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"wrongIntegrity\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"badRecipientNonce\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"timeNotAvailable\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"unacceptedPolicy\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"unacceptedExtension\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"addInfoNotAvailable\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"badSenderNonce\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"badCertTemplate\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"signerNotTrusted\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"transactionIdInUse\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"unsupportedVersion\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"notAuthorized\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"systemUnavail\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"systemFailure\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"duplicateCertReq\00", align 1
@switch.table.snprint_PKIStatusInfo_parts = private unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 8
@switch.table.snprint_PKIStatusInfo_parts.1 = private unnamed_addr constant [27 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_cmp_pkisi_get_status(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %.critedge, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @ossl_cmp_asn1_get_int(ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.c = icmp eq i32 %i.b, -2
  %i.d = select i1 %i.c, i32 -1, i32 %i.b
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_cmp_asn1_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ossl_cmp_PKIStatus_to_string(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef 59, ptr noundef nonnull @__func__.ossl_cmp_PKIStatus_to_string) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 107, ptr noundef nonnull @.str.8, i32 noundef %0) #4
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.snprint_PKIStatusInfo_parts, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %switch.load, %switch.lookup ]
  ret ptr %.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ossl_cmp_pkisi_get0_statusString(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 134217728) i32 @ossl_cmp_pkisi_get_pkifailureinfo(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 27 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.c = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef nonnull %i.b, i32 noundef 0) #4
  %.not13 = icmp ne i32 %i.c, 0
  %i.d = zext i1 %.not13 to i32
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.f = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.e, i32 noundef 1) #4
  %.not13.1 = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not13.1, i32 0, i32 2
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.i = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.h, i32 noundef 2) #4
  %.not13.2 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not13.2, i32 0, i32 4
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.l = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.k, i32 noundef 3) #4
  %.not13.3 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not13.3, i32 0, i32 8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.o = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.n, i32 noundef 4) #4
  %.not13.4 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not13.4, i32 0, i32 16
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.r = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.q, i32 noundef 5) #4
  %.not13.5 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not13.5, i32 0, i32 32
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.u = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.t, i32 noundef 6) #4
  %.not13.6 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not13.6, i32 0, i32 64
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.x = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.w, i32 noundef 7) #4
  %.not13.7 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not13.7, i32 0, i32 128
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aa = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.z, i32 noundef 8) #4
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ac = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ab, i32 noundef 9) #4
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ae = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ad, i32 noundef 10) #4
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ag = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.af, i32 noundef 11) #4
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ai = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ah, i32 noundef 12) #4
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ak = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.aj, i32 noundef 13) #4
  %1 = load ptr, ptr %i.a, align 8, !tbaa !17
  %2 = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %1, i32 noundef 14) #4
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.am = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.al, i32 noundef 15) #4
  %3 = load ptr, ptr %i.a, align 8, !tbaa !17
  %4 = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %3, i32 noundef 16) #4
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ao = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.an, i32 noundef 17) #4
  %5 = load ptr, ptr %i.a, align 8, !tbaa !17
  %6 = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %5, i32 noundef 18) #4
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aq = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ap, i32 noundef 19) #4
  %7 = load ptr, ptr %i.a, align 8, !tbaa !17
  %8 = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %7, i32 noundef 20) #4
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.as = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ar, i32 noundef 21) #4
  %9 = load ptr, ptr %i.a, align 8, !tbaa !17
  %10 = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %9, i32 noundef 22) #4
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.au = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.at, i32 noundef 23) #4
  %11 = insertelement <16 x i32> poison, i32 %i.aa, i64 0
  %12 = insertelement <16 x i32> %11, i32 %i.ac, i64 1
  %13 = insertelement <16 x i32> %12, i32 %i.ae, i64 2
  %14 = insertelement <16 x i32> %13, i32 %i.ag, i64 3
  %15 = insertelement <16 x i32> %14, i32 %i.ai, i64 4
  %16 = insertelement <16 x i32> %15, i32 %i.ak, i64 5
  %17 = insertelement <16 x i32> %16, i32 %2, i64 6
  %18 = insertelement <16 x i32> %17, i32 %i.am, i64 7
  %19 = insertelement <16 x i32> %18, i32 %4, i64 8
  %20 = insertelement <16 x i32> %19, i32 %i.ao, i64 9
  %21 = insertelement <16 x i32> %20, i32 %6, i64 10
  %22 = insertelement <16 x i32> %21, i32 %i.aq, i64 11
  %23 = insertelement <16 x i32> %22, i32 %8, i64 12
  %24 = insertelement <16 x i32> %23, i32 %i.as, i64 13
  %25 = insertelement <16 x i32> %24, i32 %10, i64 14
  %26 = insertelement <16 x i32> %25, i32 %i.au, i64 15
  %27 = icmp eq <16 x i32> %26, zeroinitializer
  %28 = select <16 x i1> %27, <16 x i32> zeroinitializer, <16 x i32> <i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608>
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.aw = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.av, i32 noundef 24) #4
  %.not13.22 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not13.22, i32 0, i32 16777216
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.az = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.ay, i32 noundef 25) #4
  %.not13.23 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not13.23, i32 0, i32 33554432
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.bc = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef %i.bb, i32 noundef 26) #4
  %.not13.24 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not13.24, i32 0, i32 67108864
  %29 = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %28)
  %.1.24 = or disjoint i32 %29, %i.d
  %op.rdx17 = or disjoint i32 %i.g, %i.j
  %op.rdx18 = or disjoint i32 %i.m, %i.p
  %op.rdx19 = or disjoint i32 %i.s, %i.v
  %op.rdx20 = or disjoint i32 %i.y, %i.ax
  %.1.25 = or disjoint i32 %i.ba, %i.bd
  %op.rdx22 = or disjoint i32 %.1.24, %op.rdx17
  %op.rdx23 = or disjoint i32 %op.rdx18, %op.rdx19
  %op.rdx24 = or disjoint i32 %op.rdx20, %.1.25
  %op.rdx25 = or disjoint i32 %op.rdx22, %op.rdx23
  %.1.26 = or disjoint i32 %op.rdx25, %op.rdx24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.b, %bb.a
  %.010 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ %.1.26, %.preheader.preheader ]
  ret i32 %.010
}

declare i32 @ASN1_BIT_STRING_get_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_cmp_pkisi_check_pkifailureinfo(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %.critedge, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %or.cond = icmp ugt i32 %1, 26
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef 157, ptr noundef nonnull @__func__.ossl_cmp_pkisi_check_pkifailureinfo) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 100, ptr noundef null) #4
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.c = tail call i32 @ASN1_BIT_STRING_get_bit(ptr noundef nonnull %i.b, i32 noundef %1) #4
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ %i.c, %bb.e ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @OSSL_CMP_snprint_PKIStatusInfo(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef 246, ptr noundef nonnull @__func__.OSSL_CMP_snprint_PKIStatusInfo) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @ossl_cmp_pkisi_get_pkifailureinfo(ptr noundef nonnull %0)
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = tail call i64 @ASN1_INTEGER_get(ptr noundef %i.c) #4
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call fastcc ptr @snprint_PKIStatusInfo_parts(i32 noundef %i.e, i32 noundef %i.b, ptr noundef %i.g, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @snprint_PKIStatusInfo_parts(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = icmp slt i32 %0, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 7
  br i1 %i.c, label %switch.lookup, label %ossl_cmp_PKIStatus_to_string.exit

ossl_cmp_PKIStatus_to_string.exit:                ; preds = %bb.b
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef 59, ptr noundef nonnull @__func__.ossl_cmp_PKIStatus_to_string) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 107, ptr noundef nonnull @.str.8, i32 noundef %0) #4
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.b
  %i.d = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.snprint_PKIStatusInfo_parts, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %switch.load) #4 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %.not = icmp ugt i64 %4, %i.g
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 3 uses
  %i.i = sub nuw i64 %4, %i.g                     ; 4 uses
  %i.j = add i32 %1, -1
  %or.cond3 = icmp ult i32 %i.j, -2
  br i1 %or.cond3, label %bb.e, label %.loopexit138

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.10) #4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64                ; 3 uses
  %.not123 = icmp ugt i64 %i.i, %i.m
  br i1 %.not123, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  %i.o = sub nuw i64 %i.i, %i.m
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %CMP_PKIFAILUREINFO_to_string.exit
  %.0149 = phi ptr [ %i.n, %bb.g ], [ %.1, %CMP_PKIFAILUREINFO_to_string.exit ] ; 3 uses
  %.093148 = phi i32 [ 0, %bb.g ], [ %.194, %CMP_PKIFAILUREINFO_to_string.exit ] ; 2 uses
  %.097147 = phi i64 [ %i.o, %bb.g ], [ %.198, %CMP_PKIFAILUREINFO_to_string.exit ] ; 4 uses
  %.0102146 = phi i32 [ 0, %bb.g ], [ %i.y, %CMP_PKIFAILUREINFO_to_string.exit ] ; 3 uses
  %i.p = shl nuw nsw i32 1, %.0102146
  %i.q = and i32 %i.p, %1
  %.not128 = icmp eq i32 %i.q, 0
  br i1 %.not128, label %CMP_PKIFAILUREINFO_to_string.exit, label %switch.lookup179

switch.lookup179:                                 ; preds = %bb.h
  %i.r = zext nneg i32 %.0102146 to i64
  %switch.gep180 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.snprint_PKIStatusInfo_parts.1, i64 %i.r
  %switch.load181 = load ptr, ptr %switch.gep180, align 8
  %.not130 = icmp eq i32 %.093148, 0
  %i.s = select i1 %.not130, ptr @.str.13, ptr @.str.12
  %i.t = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.0149, i64 noundef %.097147, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.s, ptr noundef nonnull %switch.load181) #4 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %switch.lookup179
  %i.v = zext nneg i32 %i.t to i64                ; 3 uses
  %.not131 = icmp ugt i64 %.097147, %i.v
  br i1 %.not131, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0149, i64 %i.v
  %i.x = sub nuw i64 %.097147, %i.v
  br label %CMP_PKIFAILUREINFO_to_string.exit

CMP_PKIFAILUREINFO_to_string.exit:                ; preds = %bb.h, %bb.j
  %.198 = phi i64 [ %i.x, %bb.j ], [ %.097147, %bb.h ] ; 2 uses
  %.194 = phi i32 [ 1, %bb.j ], [ %.093148, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.w, %bb.j ], [ %.0149, %bb.h ] ; 2 uses
  %i.y = add nuw nsw i32 %.0102146, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, 27
  br i1 %exitcond.not, label %.loopexit138.loopexit, label %bb.h, !llvm.loop !18

.loopexit138.loopexit:                            ; preds = %CMP_PKIFAILUREINFO_to_string.exit
  %i.z = icmp eq i32 %.194, 0
  br label %.loopexit138

.loopexit138:                                     ; preds = %.loopexit138.loopexit, %bb.d
  %.299 = phi i64 [ %i.i, %bb.d ], [ %.198, %.loopexit138.loopexit ] ; 4 uses
  %.295 = phi i1 [ true, %bb.d ], [ %i.z, %.loopexit138.loopexit ]
  %.2 = phi ptr [ %i.h, %bb.d ], [ %.1, %.loopexit138.loopexit ] ; 3 uses
  %i.aa = icmp ugt i32 %0, 1
  %or.cond7 = and i1 %i.aa, %.295
  br i1 %or.cond7, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.loopexit138
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.2, i64 noundef %.299, ptr noundef nonnull @.str.14) #4 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = zext nneg i32 %i.ab to i64              ; 3 uses
  %.not124 = icmp ugt i64 %.299, %i.ad
  br i1 %.not124, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ad
  %i.af = sub nuw i64 %.299, %i.ad
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit138
  %.3100 = phi i64 [ %i.af, %bb.m ], [ %.299, %.loopexit138 ] ; 3 uses
  %.3 = phi ptr [ %i.ae, %bb.m ], [ %.2, %.loopexit138 ] ; 2 uses
  %i.ag = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #4 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %.not125 = icmp eq i32 %i.ag, 1
  %i.ai = select i1 %.not125, ptr @.str.13, ptr @.str.16
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.3, i64 noundef %.3100, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ai) #4 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = zext nneg i32 %i.aj to i64              ; 3 uses
  %.not126 = icmp ugt i64 %.3100, %i.al
  br i1 %.not126, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.p
  %i.am = sub nuw i64 %.3100, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 %i.al
  %i.ao = add nsw i32 %i.ag, -1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %.4152 = phi ptr [ %i.an, %.lr.ph ], [ %i.ax, %bb.s ] ; 2 uses
  %.096151 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.s ] ; 3 uses
  %.4101150 = phi i64 [ %i.am, %.lr.ph ], [ %i.ay, %bb.s ] ; 3 uses
  %i.ap = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.096151) #4 ; 2 uses
  %i.aq = tail call i32 @ASN1_STRING_length(ptr noundef %i.ap) #4
  %i.ar = tail call ptr @ASN1_STRING_get0_data(ptr noundef %i.ap) #4
  %i.as = icmp slt i32 %.096151, %i.ao
  %i.at = select i1 %i.as, ptr @.str.12, ptr @.str.13
  %i.au = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %.4152, i64 noundef %.4101150, ptr noundef nonnull @.str.17, i32 noundef %i.aq, ptr noundef %i.ar, ptr noundef nonnull %i.at) #4 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = zext nneg i32 %i.au to i64              ; 3 uses
  %.not127 = icmp ugt i64 %.4101150, %i.aw
  br i1 %.not127, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %.4152, i64 %i.aw
  %i.ay = sub nuw i64 %.4101150, %i.aw
  %i.az = add nuw nsw i32 %.096151, 1             ; 2 uses
  %exitcond158.not = icmp eq i32 %i.az, %i.ag
  br i1 %exitcond158.not, label %.loopexit, label %bb.q, !llvm.loop !20

.loopexit:                                        ; preds = %switch.lookup179, %bb.i, %bb.r, %bb.q, %bb.s, %ossl_cmp_PKIStatus_to_string.exit, %bb.n, %bb.o, %bb.p, %bb.k, %bb.l, %bb.e, %bb.f, %switch.lookup, %bb.c, %bb.a
  %.092 = phi ptr [ %3, %bb.n ], [ null, %bb.a ], [ null, %switch.lookup ], [ null, %bb.e ], [ null, %bb.p ], [ null, %bb.k ], [ null, %bb.o ], [ null, %ossl_cmp_PKIStatus_to_string.exit ], [ null, %bb.c ], [ null, %bb.f ], [ %3, %bb.s ], [ null, %bb.l ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.i ], [ null, %switch.lookup179 ]
  ret ptr %.092
}

declare i64 @ASN1_INTEGER_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @OSSL_CMP_CTX_snprint_PKIStatus(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.7, i32 noundef 261, ptr noundef nonnull @__func__.OSSL_CMP_CTX_snprint_PKIStatus) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef nonnull %0) #4
  %i.c = tail call i32 @OSSL_CMP_CTX_get_failInfoCode(ptr noundef nonnull %0) #4
  %i.d = tail call ptr @OSSL_CMP_CTX_get0_statusString(ptr noundef nonnull %0) #4
  %i.e = tail call fastcc ptr @snprint_PKIStatusInfo_parts(i32 noundef %i.b, i32 noundef %i.c, ptr noundef %i.d, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare i32 @OSSL_CMP_CTX_get_status(ptr noundef) local_unnamed_addr #1

declare i32 @OSSL_CMP_CTX_get_failInfoCode(ptr noundef) local_unnamed_addr #1

declare ptr @OSSL_CMP_CTX_get0_statusString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_CMP_STATUSINFO_new(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OSSL_CMP_PKISI_new() #4   ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.d = sext i32 %0 to i64
  %i.e = tail call i32 @ASN1_INTEGER_set(ptr noundef %i.c, i64 noundef %i.d) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit32, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @ASN1_UTF8STRING_new() #4  ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @ASN1_STRING_set(ptr noundef nonnull %i.f, ptr noundef nonnull %2, i32 noundef -1) #4
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %.loopexit32, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @OPENSSL_sk_new_null() #4  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %.loopexit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @OPENSSL_sk_push(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f) #4
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %.loopexit32, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.m
  %.033 = phi i32 [ 0, %bb.h ], [ %i.v, %bb.m ]   ; 3 uses
  %i.n = shl nuw nsw i32 1, %.033
  %i.o = and i32 %i.n, %1
  %.not30 = icmp eq i32 %i.o, 0
  br i1 %.not30, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = tail call ptr @ASN1_BIT_STRING_new() #4  ; 3 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !17
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit32, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = phi ptr [ %i.r, %bb.k ], [ %i.p, %bb.j ]
  %i.u = tail call i32 @ASN1_BIT_STRING_set_bit(ptr noundef nonnull %i.t, i32 noundef %.033, i32 noundef 1) #4
  %.not31 = icmp eq i32 %i.u, 0
  br i1 %.not31, label %.loopexit32, label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %i.v = add nuw nsw i32 %.033, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, 27
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !21

.loopexit32:                                      ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %bb.d, %bb.e, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ null, %bb.b ], [ %i.f, %bb.g ], [ null, %bb.k ], [ null, %bb.l ]
  tail call void @OSSL_CMP_PKISI_free(ptr noundef %i.a) #4
  tail call void @ASN1_UTF8STRING_free(ptr noundef %.1) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit32
  %.021 = phi ptr [ null, %.loopexit32 ], [ %i.a, %bb.m ]
  ret ptr %.021
}

declare ptr @OSSL_CMP_PKISI_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ASN1_UTF8STRING_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare i32 @ASN1_BIT_STRING_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @OSSL_CMP_PKISI_free(ptr noundef) local_unnamed_addr #1

declare void @ASN1_UTF8STRING_free(ptr noundef) local_unnamed_addr #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(ptr noundef) local_unnamed_addr #1

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"ossl_cmp_pkisi_st", !12, i64 0, !14, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTS14asn1_string_st", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS24stack_st_ASN1_UTF8STRING", !13, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!11, !14, i64 8}
!17 = !{!11, !12, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
end_hunk_0
