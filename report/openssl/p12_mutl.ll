Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/p12_mutl?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"crypto/pkcs12/p12_mutl.c\00", align 1
@__func__.PBMAC1_get1_pbkdf2_param = private unnamed_addr constant [25 x i8] c"PBMAC1_get1_pbkdf2_param\00", align 1
@__func__.PKCS12_verify_mac = private unnamed_addr constant [18 x i8] c"PKCS12_verify_mac\00", align 1
@__func__.PKCS12_set_mac = private unnamed_addr constant [15 x i8] c"PKCS12_set_mac\00", align 1
@__func__.PKCS12_set_pbmac1_pbkdf2 = private unnamed_addr constant [25 x i8] c"PKCS12_set_pbmac1_pbkdf2\00", align 1
@__func__.pkcs12_gen_mac = private unnamed_addr constant [15 x i8] c"pkcs12_gen_mac\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LEGACY_GOST_PKCS12\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@__func__.PBMAC1_PBKDF2_HMAC = private unnamed_addr constant [19 x i8] c"PBMAC1_PBKDF2_HMAC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid Salt\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Invalid Key length (%d is not in the range 20..64)\00", align 1
@__func__.pkcs12_setup_mac = private unnamed_addr constant [17 x i8] c"pkcs12_setup_mac\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @PKCS12_mac_present(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %.not = icmp ne ptr %i.b, null
  %i.c = zext i1 %.not to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @PKCS12_get0_mac(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @X509_SIG_get0(ptr noundef %i.c, ptr noundef %1, ptr noundef %0) #4
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  store ptr %i.f, ptr %2, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not23 = icmp eq ptr %0, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %0, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %1, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.e
  %.sink = phi ptr [ %i.i, %bb.e ], [ null, %bb.l ]
  store ptr %.sink, ptr %3, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %bb.d
  ret void
}

declare void @X509_SIG_get0(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @PBMAC1_get1_pbkdf2_param(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @PBMAC1PARAM_it() #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call ptr @ASN1_TYPE_unpack_sequence(ptr noundef %i.b, ptr noundef %i.d) #4 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @__func__.PBMAC1_get1_pbkdf2_param) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524550, ptr noundef null) #4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !27
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef %i.g) #4
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.i = call i32 @OBJ_obj2nid(ptr noundef %i.h) #4
  %.not = icmp eq i32 %i.i, 69
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @__func__.PBMAC1_get1_pbkdf2_param) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524550, ptr noundef null) #4
  call void @PBMAC1PARAM_free(ptr noundef nonnull %i.e) #4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = call ptr @PBKDF2PARAM_it() #4
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = call ptr @ASN1_TYPE_unpack_sequence(ptr noundef %i.j, ptr noundef %i.m) #4
  call void @PBMAC1PARAM_free(ptr noundef nonnull %i.e) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @ASN1_TYPE_unpack_sequence(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PBMAC1PARAM_it() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @X509_ALGOR_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare void @PBMAC1PARAM_free(ptr noundef) local_unnamed_addr #2

declare ptr @PBKDF2PARAM_it() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS12_gen_mac(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @pkcs12_gen_mac(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pkcs12_gen_mac(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 9 uses
  %i.c = alloca [80 x i8], align 16               ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca [128 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 @OBJ_obj2nid(ptr noundef %i.k) #4
  %i.m = icmp eq i32 %i.l, 21
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @__func__.pkcs12_gen_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 121, ptr noundef null) #4
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @__func__.pkcs12_gen_mac) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 101, ptr noundef null) #4
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !38  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call i64 @ASN1_INTEGER_get(ptr noundef nonnull %i.ad) #4
  %i.ag = trunc i64 %i.af to i32
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ah = phi ptr [ %.pre, %bb.f ], [ %i.w, %bb.e ]
  %.091 = phi i32 [ %i.ag, %bb.f ], [ 1, %bb.e ]  ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  call void @X509_SIG_get0(ptr noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef null) #4
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null, ptr noundef %i.aj) #4
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.al = call i32 @OBJ_obj2nid(ptr noundef %i.ak) #4
  %i.am = icmp eq i32 %i.al, 162
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = call ptr @OBJ_nid2obj(i32 noundef %5) #4
  %i.ao = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.c, i32 noundef 80, ptr noundef %i.an, i32 noundef 0) #4
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.ao, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ar = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.c, i32 noundef 80, ptr noundef %i.aq, i32 noundef 0) #4
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = call ptr @EVP_MD_fetch(ptr noundef %i.s, ptr noundef nonnull %i.c, ptr noundef %i.u) #4 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 230, ptr noundef nonnull @__func__.pkcs12_gen_mac) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 118, ptr noundef null) #4
  br label %bb.ao

bb.l:                                             ; preds = %bb.j
  %i.av = call i32 @EVP_MD_get_size(ptr noundef nonnull %i.at) #4 ; 7 uses
  %i.aw = call i32 @EVP_MD_get_type(ptr noundef nonnull %i.at) #4
  %i.ax = icmp slt i32 %i.av, 1
  br i1 %i.ax, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = icmp ne i32 %5, 0
  %i.ba = icmp eq ptr %7, null                    ; 3 uses
  %or.cond = and i1 %i.az, %i.ba
  br i1 %or.cond, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.bc = call ptr @PBMAC1_get1_pbkdf2_param(ptr noundef readonly %i.bb) ; 6 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @__func__.PBMAC1_PBKDF2_HMAC) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524556, ptr noundef null) #4
  br label %PBMAC1_PBKDF2_HMAC.exit

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !45 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @X509_ALGOR_get0(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.bf) #4
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bi = call i32 @OBJ_obj2nid(ptr noundef %i.bh) #4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.030.i = phi i32 [ %i.bi, %bb.q ], [ 163, %bb.p ]
  %i.bj = call i32 @ossl_hmac2mdnid(i32 noundef %.030.i) #4
  %i.bk = call ptr @OBJ_nid2sn(i32 noundef %i.bj) #4
  %i.bl = call ptr @EVP_MD_fetch(ptr noundef %i.s, ptr noundef %i.bk, ptr noundef %i.u) #4 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @__func__.PBMAC1_PBKDF2_HMAC) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 35, i32 noundef 524557, ptr noundef null) #4
  br label %PBMAC1_PBKDF2_HMAC.exit

bb.t:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !48
  %.not.i = icmp eq i32 %i.bp, 4
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @__func__.PBMAC1_PBKDF2_HMAC) #4
end_hunk_0
