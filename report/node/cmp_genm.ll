inline.NumInlined: 34
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"../../deps/openssl/openssl/crypto/cmp/cmp_genm.c\00", align 1
@__func__.OSSL_CMP_get1_caCerts = private unnamed_addr constant [22 x i8] c"OSSL_CMP_get1_caCerts\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"caCerts\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"genp\00", align 1
@__func__.OSSL_CMP_get1_rootCaKeyUpdate = private unnamed_addr constant [30 x i8] c"OSSL_CMP_get1_rootCaKeyUpdate\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"rootCaKeyUpdate\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"newWithNew\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"oldWithOld\00", align 1
@__func__.OSSL_CMP_get1_crlUpdate = private unnamed_addr constant [24 x i8] c"OSSL_CMP_get1_crlUpdate\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"crl\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unexpected number of CRLs in genp: %d\00", align 1
@__func__.OSSL_CMP_get1_certReqTemplate = private unnamed_addr constant [30 x i8] c"OSSL_CMP_get1_certReqTemplate\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"certReqTemplate\00", align 1
@__func__.get_genm_itav = private unnamed_addr constant [14 x i8] c"get_genm_itav\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"client context in unsuitable state; should call CMPclient_reinit() before\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"with infoType %s\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"response on genm requesting infoType %s does not include suitable value\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"response on genm contains %d ITAVs; will use the first ITAV with infoType id-it-%s\00", align 1
@__const.get_genm_itav.name = private unnamed_addr constant [128 x i8] c"genp contains InfoType '\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"%s' while expecting 'id-it-%s'\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"could not find any ITAV for %s\00", align 1
@__func__.ossl_X509_check = private unnamed_addr constant [16 x i8] c"ossl_X509_check\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"has expired\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"not yet valid\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"is not a CA cert\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"certificate from '%s' with subject '%s' %s\00", align 1
@__func__.verify_ss_cert_trans = private unnamed_addr constant [21 x i8] c"verify_ss_cert_trans\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"failed to validate %s certificate received in genp %s\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"using trust store\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"with given certificate as trust anchor\00", align 1
@__func__.verify_ss_cert = private unnamed_addr constant [15 x i8] c"verify_ss_cert\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_CMP_get1_caCerts(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @__func__.OSSL_CMP_get1_caCerts) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !9
  %i.c = tail call ptr @OSSL_CMP_ITAV_new_caCerts(ptr noundef null) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc ptr @get_genm_itav(ptr noundef %0, ptr noundef %i.c, i32 noundef 1223, ptr noundef nonnull @.str.1) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @OSSL_CMP_ITAV_get0_caCerts(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = call ptr @OSSL_CMP_CTX_get0_trustedStore(ptr noundef %0) #4 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %get0_trustedStore_vpm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call ptr @X509_STORE_get0_param(ptr noundef nonnull %i.j) #4
  br label %get0_trustedStore_vpm.exit

get0_trustedStore_vpm.exit:                       ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %i.l, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.n = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.h) #4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %ossl_X509_check_all.exit.thread

.lr.ph.i:                                         ; preds = %get0_trustedStore_vpm.exit
  %i.p = icmp eq ptr %i.m, null                   ; 2 uses
  %i.q = select i1 %i.p, i32 4, i32 3             ; 2 uses
  %i.r = select i1 %i.p, ptr @.str.12, ptr @.str.21 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %ossl_X509_check.exit.i.a, %.lr.ph.i
  %.02.i = phi i1 [ true, %.lr.ph.i ], [ %2, %ossl_X509_check.exit.i.a ]
  %.0101.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ah, %ossl_X509_check.exit.i.a ] ; 2 uses
  %i.s = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.h, i32 noundef %.0101.i) #4 ; 5 uses
  %i.t = call i32 @X509_get_extension_flags(ptr noundef %i.s) #4
  %i.u = call ptr @X509_get0_notBefore(ptr noundef %i.s) #4
  %i.v = call ptr @X509_get0_notAfter(ptr noundef %i.s) #4
  %i.w = call i32 @X509_cmp_timeframe(ptr noundef %i.m, ptr noundef %i.u, ptr noundef %i.v) #4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0                      ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp sgt i32 %i.w, 0
  %i.z = select i1 %i.y, ptr @.str.17, ptr @.str.18
  %i.aa = call ptr @X509_get_subject_name(ptr noundef %i.s) #4
  %i.ab = call ptr @X509_NAME_oneline(ptr noundef %i.aa, ptr noundef null, i32 noundef 0) #4 ; 2 uses
  %i.ac = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef range(i32 3, 5) %i.q, ptr noundef %0, ptr noundef nonnull @__func__.ossl_X509_check, ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, ptr noundef %i.ab, ptr noundef nonnull %i.z) #4 ; 0 uses
  call void @CRYPTO_free(ptr noundef %i.ab, ptr noundef nonnull @.str, i32 noundef 31) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = and i32 %i.t, 80
  %or.cond.i.i = icmp eq i32 %i.ad, 0
  br i1 %or.cond.i.i, label %bb.l, label %ossl_X509_check.exit.i.a

bb.l:                                             ; preds = %bb.k
  %i.ae = call ptr @X509_get_subject_name(ptr noundef %i.s) #4
  %i.af = call ptr @X509_NAME_oneline(ptr noundef %i.ae, ptr noundef null, i32 noundef 0) #4 ; 2 uses
  %i.ag = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef range(i32 3, 5) %i.q, ptr noundef %0, ptr noundef nonnull @__func__.ossl_X509_check, ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull %i.r, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, ptr noundef %i.af, ptr noundef nonnull @.str.20) #4 ; 0 uses
  call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 31) #4
  br label %ossl_X509_check.exit.i.a

ossl_X509_check.exit.i.a:                         ; preds = %bb.l, %bb.k
  %.1.i.i = phi i1 [ %i.x, %bb.k ], [ false, %bb.l ]
  %2 = select i1 %.1.i.i, i1 %.02.i, i1 false     ; 2 uses
  %i.ah = add nuw nsw i32 %.0101.i, 1             ; 2 uses
  %i.ai = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.h) #4
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %ossl_X509_check_all.exit, !llvm.loop !12

ossl_X509_check_all.exit:                         ; preds = %ossl_X509_check.exit.i.a
  br i1 %2, label %ossl_X509_check_all.exit.thread, label %bb.n

ossl_X509_check_all.exit.thread:                  ; preds = %get0_trustedStore_vpm.exit, %ossl_X509_check_all.exit
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.al = call i32 @OPENSSL_sk_num(ptr noundef %i.ak) #4
  %i.am = call ptr @OPENSSL_sk_new_reserve(ptr noundef null, i32 noundef %i.al) #4 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !9
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ao = call i32 @X509_add_certs(ptr noundef %i.am, ptr noundef %i.an, i32 noundef 5) #4
  %.not19 = icmp eq i32 %i.ao, 0
  br i1 %.not19, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ossl_X509_check_all.exit.thread
  %i.ap = load ptr, ptr %1, align 8, !tbaa !9
  call void @OPENSSL_sk_pop_free(ptr noundef %i.ap, ptr noundef nonnull @X509_free) #4
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %ossl_X509_check_all.exit, %ossl_X509_check_all.exit.thread, %bb.m, %bb.f, %bb.e
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %ossl_X509_check_all.exit.thread ], [ 0, %bb.m ], [ 0, %bb.e ], [ 0, %ossl_X509_check_all.exit ]
  call void @OSSL_CMP_ITAV_free(ptr noundef nonnull %i.e) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.n, %bb.b
  %.013 = phi i32 [ 0, %bb.b ], [ %.0, %bb.n ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @OSSL_CMP_ITAV_new_caCerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @get_genm_itav(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1223, 1258) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 9 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @__func__.get_genm_itav) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, ptr noundef null) #4
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef nonnull %0) #4
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @__func__.get_genm_itav) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 191, ptr noundef nonnull @.str.9) #4
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i32 @OSSL_CMP_CTX_push0_genm_ITAV(ptr noundef nonnull %0, ptr noundef nonnull %1) #4
  %.not48 = icmp eq i32 %i.d, 0
  br i1 %.not48, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @OSSL_CMP_exec_GENM_ses(ptr noundef nonnull %0) #4 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @OSSL_CMP_CTX_get_status(ptr noundef nonnull %0) #4
  %.not51 = icmp eq i32 %i.g, -3
  br i1 %.not51, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 97, ptr noundef nonnull @__func__.get_genm_itav) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 192, ptr noundef nonnull @.str.10, ptr noundef %3) #4
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.e) #4 ; 6 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @__func__.get_genm_itav) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 193, ptr noundef nonnull @.str.11, ptr noundef %3) #4
  tail call void @OPENSSL_sk_free(ptr noundef nonnull %i.e) #4
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %.not49 = icmp eq i32 %i.h, 1
  br i1 %.not49, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = tail call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 4, ptr noundef nonnull %0, ptr noundef nonnull @__func__.get_genm_itav, ptr noundef nonnull @.str, i32 noundef 112, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %i.h, ptr noundef %3) #4 ; 0 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %.04257 = phi i32 [ %i.w, %.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = call ptr @OPENSSL_sk_shift(ptr noundef nonnull %i.e) #4 ; 3 uses
  %i.l = call ptr @OSSL_CMP_ITAV_get0_type(ptr noundef %i.k) #4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) @__const.get_genm_itav.name, i64 128, i1 false)
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #5 ; 2 uses
  %i.n = call i32 @OBJ_obj2nid(ptr noundef %i.l) #4
  %.not50 = icmp eq i32 %i.n, %2
  br i1 %.not50, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.lr.ph
  %.14358 = add nuw nsw i32 %.04257, 1            ; 2 uses
  %i.o = icmp slt i32 %.14358, %i.h
  br i1 %i.o, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.14359 = phi i32 [ %.143, %.lr.ph60 ], [ %.14358, %.preheader ]
  %i.p = call ptr @OPENSSL_sk_shift(ptr noundef nonnull %i.e) #4
  call void @OSSL_CMP_ITAV_free(ptr noundef %i.p) #4
  %.143 = add nuw i32 %.14359, 1                  ; 2 uses
  %exitcond64.not = icmp eq i32 %.143, %i.h
  br i1 %exitcond64.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !14

bb.m:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.r = trunc i64 %i.m to i32
  %i.s = sub i32 128, %i.r
  %i.t = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.q, i32 noundef %i.s, ptr noundef %i.l, i32 noundef 0) #4
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %endptr, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %i.v = call i32 (i32, ptr, ptr, ptr, i32, ptr, ptr, ...) @ossl_cmp_print_log(i32 noundef 4, ptr noundef nonnull %0, ptr noundef nonnull @__func__.get_genm_itav, ptr noundef nonnull @.str, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, ptr noundef %3) #4 ; 0 uses
  call void @OSSL_CMP_ITAV_free(ptr noundef %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.w = add nuw nsw i32 %.04257, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge61:                                    ; preds = %.lr.ph60, %.preheader
  call void @OPENSSL_sk_free(ptr noundef nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.p

._crit_edge:                                      ; preds = %.thread
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @__func__.get_genm_itav) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 58, i32 noundef 193, ptr noundef nonnull @.str.16, ptr noundef %3) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %._crit_edge, %bb.d, %bb.b
  %.040 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.e, %._crit_edge ], [ null, %bb.e ]
  %.039 = phi ptr [ %1, %bb.b ], [ %1, %bb.d ], [ null, %._crit_edge ], [ %1, %bb.e ]
  call void @OPENSSL_sk_free(ptr noundef %.040) #4
  call void @OSSL_CMP_ITAV_free(ptr noundef %.039) #4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge61, %bb.g, %bb.h, %bb.o, %bb.j
  %.2 = phi ptr [ null, %bb.o ], [ %i.k, %._crit_edge61 ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.g ]
  ret ptr %.2
}

declare i32 @OSSL_CMP_ITAV_get0_caCerts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare i32 @X509_add_certs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509_free(ptr noundef) #2

declare void @OSSL_CMP_ITAV_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_CMP_get1_rootCaKeyUpdate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
end_hunk_0
