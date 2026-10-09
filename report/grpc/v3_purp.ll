Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/v3_purp?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x509_purpose_st = type { i32, i32, ptr, ptr }

$sk_ASN1_OBJECT_call_free_func = comdat any

@_ZL9xstandard = internal constant [9 x %struct.x509_purpose_st] [%struct.x509_purpose_st { i32 1, i32 2, ptr @_ZL24check_purpose_ssl_clientPK15x509_purpose_stPK7x509_sti, ptr @.str }, %struct.x509_purpose_st { i32 2, i32 3, ptr @_ZL24check_purpose_ssl_serverPK15x509_purpose_stPK7x509_sti, ptr @.str.1 }, %struct.x509_purpose_st { i32 3, i32 3, ptr @_ZL27check_purpose_ns_ssl_serverPK15x509_purpose_stPK7x509_sti, ptr @.str.2 }, %struct.x509_purpose_st { i32 4, i32 4, ptr @_ZL24check_purpose_smime_signPK15x509_purpose_stPK7x509_sti, ptr @.str.3 }, %struct.x509_purpose_st { i32 5, i32 4, ptr @_ZL27check_purpose_smime_encryptPK15x509_purpose_stPK7x509_sti, ptr @.str.4 }, %struct.x509_purpose_st { i32 6, i32 1, ptr @_ZL22check_purpose_crl_signPK15x509_purpose_stPK7x509_sti, ptr @.str.5 }, %struct.x509_purpose_st { i32 7, i32 -1, ptr @_ZL8no_checkPK15x509_purpose_stPK7x509_sti, ptr @.str.6 }, %struct.x509_purpose_st { i32 8, i32 1, ptr @_ZL8no_checkPK15x509_purpose_stPK7x509_sti, ptr @.str.7 }, %struct.x509_purpose_st { i32 9, i32 8, ptr @_ZL28check_purpose_timestamp_signPK15x509_purpose_stPK7x509_sti, ptr @.str.8 }], align 16
@.str = private unnamed_addr constant [10 x i8] c"sslclient\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sslserver\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nssslserver\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"smimesign\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"smimeencrypt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"crlsign\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ocsphelper\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"timestampsign\00", align 1
@switch.table.X509_PURPOSE_get0 = private unnamed_addr constant [9 x ptr] [ptr @_ZL9xstandard, ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 96), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 120), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 168), ptr getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 192)], align 8

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @X509_check_purpose(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %X509_PURPOSE_get0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %X509_PURPOSE_get0.exit.fold.split [
    i32 -1, label %X509_PURPOSE_get0.exit
    i32 1, label %bb.c
    i32 2, label %.fold.split.i
    i32 3, label %.fold.split11.i
    i32 4, label %.fold.split12.i
    i32 5, label %.fold.split13.i
    i32 6, label %.fold.split14.i
    i32 7, label %.thread
    i32 8, label %.fold.split16.i
    i32 9, label %.fold.split17.i
  ]

.fold.split.i:                                    ; preds = %bb.b
  br label %bb.c

.fold.split11.i:                                  ; preds = %bb.b
  br label %bb.c

.fold.split12.i:                                  ; preds = %bb.b
  br label %bb.c

.fold.split13.i:                                  ; preds = %bb.b
  br label %bb.c

.fold.split14.i:                                  ; preds = %bb.b
  br label %bb.c

.fold.split16.i:                                  ; preds = %bb.b
  br label %bb.c

.fold.split17.i:                                  ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.fold.split14.i, %.fold.split16.i, %.fold.split.i, %.fold.split13.i, %.fold.split11.i, %.fold.split12.i, %.fold.split17.i
  %.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 192), %.fold.split17.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 72), %.fold.split12.i ], [ @_ZL9xstandard, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 48), %.fold.split11.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 96), %.fold.split13.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 24), %.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 168), %.fold.split16.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 120), %.fold.split14.i ] ; 2 uses
  %.not23 = icmp eq i32 %2, 0
  br i1 %.not23, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = and i32 %i.f, 4
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %X509_PURPOSE_get0.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = and i32 %i.c, 8256
  %i.i = icmp eq i32 %i.h, 8256
  %i.j = and i32 %i.c, 17
  %or.cond.not = icmp eq i32 %i.j, 17
  %or.cond = or i1 %i.i, %or.cond.not
  br i1 %or.cond, label %.thread, label %X509_PURPOSE_get0.exit

.thread:                                          ; preds = %bb.b, %bb.f, %bb.c
  %.ph17 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 144), %bb.b ], [ %.ph, %bb.f ], [ %.ph, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.ph17, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull %.ph17, ptr noundef %0, i32 noundef %2) #8
  br label %X509_PURPOSE_get0.exit

X509_PURPOSE_get0.exit.fold.split:                ; preds = %bb.b
  br label %X509_PURPOSE_get0.exit

X509_PURPOSE_get0.exit:                           ; preds = %bb.f, %bb.b, %X509_PURPOSE_get0.exit.fold.split, %bb.e, %.thread, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.f ], [ %i.m, %.thread ], [ 0, %bb.e ], [ 0, %X509_PURPOSE_get0.exit.fold.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @x509v3_cache_extensions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  tail call void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 39 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = and i32 %i.e, 256
  tail call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.c) #8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.be

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.c) #8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !23
  %i.h = and i32 %i.g, 256
  %.not106 = icmp eq i32 %i.h, 0
  br i1 %.not106, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.c) #8
  br label %bb.be

bb.d:                                             ; preds = %bb.b
  %i.i = tail call ptr @EVP_sha256() #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = tail call i32 @X509_digest(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef null) #8
  %.not107 = icmp eq i32 %i.k, 0
  br i1 %.not107, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.d, align 8, !tbaa !23
  %i.m = or i32 %i.l, 128
  store i32 %i.m, ptr %i.d, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i64 @X509_get_version(ptr noundef nonnull %0) #8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.d, align 8, !tbaa !23
  %i.q = or i32 %i.p, 64
  store i32 %i.q, ptr %i.d, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = call ptr @X509_get_ext_d2i(ptr noundef nonnull %0, i32 noundef 87, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 4 uses
  %.not108 = icmp eq ptr %i.r, null
  br i1 %.not108, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.r, align 8, !tbaa !46
  %.not110 = icmp eq i32 %i.s, 0                  ; 2 uses
  br i1 %.not110, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.d, align 8, !tbaa !23
  %i.u = or i32 %i.t, 16
  store i32 %i.u, ptr %i.d, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  %.not111 = icmp eq ptr %i.w, null
  br i1 %.not111, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49
  %i.z = icmp eq i32 %i.y, 258
  %brmerge = or i1 %.not110, %i.z
  br i1 %brmerge, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !23
  %i.ab = or i32 %i.aa, 128
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ac = call i64 @ASN1_INTEGER_get(ptr noundef nonnull %i.w) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.sink = phi i64 [ 0, %bb.m ], [ %i.ac, %bb.n ], [ -1, %bb.k ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.ad, align 8, !tbaa !27
  call void @BASIC_CONSTRAINTS_free(ptr noundef nonnull %i.r) #8
  br label %.sink.split

bb.p:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !50
  %.not109 = icmp eq i32 %i.ae, -1
  br i1 %.not109, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink151 = phi i32 [ 1, %bb.o ], [ 128, %bb.p ]
  %i.af = load i32, ptr %i.d, align 8, !tbaa !23
  %i.ag = or i32 %i.af, %.sink151
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p
  %i.ah = call ptr @X509_get_ext_d2i(ptr noundef nonnull %0, i32 noundef 83, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 4 uses
  %.not113 = icmp eq ptr %i.ah, null
  br i1 %.not113, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !24
  %.not129 = icmp eq i32 %i.ai, 1
  br i1 %.not129, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = or disjoint i32 %i.as, %i.an
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !24
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.au, align 4, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.av = load i32, ptr %i.d, align 8, !tbaa !23
  %i.aw = or i32 %i.av, 2
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !23
  call void @ASN1_BIT_STRING_free(ptr noundef nonnull %i.ah) #8
  br label %bb.y

bb.w:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !50
  %.not114 = icmp eq i32 %i.ax, -1
  br i1 %.not114, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !23
  %i.az = or i32 %i.ay, 128
  store i32 %i.az, ptr %i.d, align 8, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !29
  %i.bb = call ptr @X509_get_ext_d2i(ptr noundef nonnull %0, i32 noundef 126, ptr noundef nonnull %i.b, ptr noundef null) #8 ; 5 uses
  %.not115 = icmp eq ptr %i.bb, null
  br i1 %.not115, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !23
  %i.bd = or i32 %i.bc, 4
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !23
  %i.be = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.bb) #8
  %.not136 = icmp eq i64 %i.be, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.ai
  %.0100133 = phi i64 [ %i.bj, %bb.ai ], [ 0, %bb.z ] ; 2 uses
  %i.bf = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.bb, i64 noundef %.0100133) #8
  %i.bg = call i32 @OBJ_obj2nid(ptr noundef %i.bf) #8
  switch i32 %i.bg, label %bb.ai [
    i32 129, label %.sink.split152
    i32 130, label %bb.aa
    i32 132, label %bb.ab
    i32 131, label %bb.ac
    i32 137, label %bb.ad
    i32 139, label %bb.ad
    i32 180, label %bb.ae
    i32 133, label %bb.af
    i32 297, label %bb.ag
    i32 910, label %bb.ah
  ]

bb.aa:                                            ; preds = %.lr.ph
  br label %.sink.split152

bb.ab:                                            ; preds = %.lr.ph
  br label %.sink.split152
end_hunk_0
begin_hunk_1_@X509_PURPOSE_get_by_sname:bb.a
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.6, ptr noundef nonnull dereferenceable(1) %0) #9
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.7, ptr noundef nonnull dereferenceable(1) %0) #9
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.8, ptr noundef nonnull dereferenceable(1) %0) #9
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @_ZL9xstandard, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 24), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 48), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 72), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 96), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 120), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 144), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 168), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZL9xstandard, i64 192), %bb.i ]
  %i.s = load i32, ptr %.lcssa, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  %i.t = phi i32 [ %i.s, %bb.j ], [ -1, %bb.i ]
  ret i32 %i.t
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @X509_PURPOSE_get_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !35
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @X509_PURPOSE_get_trust(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @X509_supported_extension(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_EXTENSION_get_object(ptr noundef %0) #8
  %i.b = tail call i32 @OBJ_obj2nid(ptr noundef %i.a) #8 ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 747, label %bb.c
    i32 666, label %bb.c
    i32 401, label %bb.c
    i32 126, label %bb.c
    i32 89, label %bb.c
    i32 87, label %bb.c
    i32 85, label %bb.c
    i32 83, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 748
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %i.e
}

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #6

declare ptr @X509_EXTENSION_get_object(ptr noundef) local_unnamed_addr #6

declare void @CRYPTO_MUTEX_lock_read(ptr noundef) local_unnamed_addr #6

declare void @CRYPTO_MUTEX_unlock_read(ptr noundef) local_unnamed_addr #6

declare void @CRYPTO_MUTEX_lock_write(ptr noundef) local_unnamed_addr #6

declare void @CRYPTO_MUTEX_unlock_write(ptr noundef) local_unnamed_addr #6

declare i32 @X509_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @EVP_sha256() local_unnamed_addr #6

declare i64 @X509_get_version(ptr noundef) local_unnamed_addr #6

declare ptr @X509_get_ext_d2i(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @ASN1_INTEGER_get(ptr noundef) local_unnamed_addr #6

declare void @BASIC_CONSTRAINTS_free(ptr noundef) local_unnamed_addr #6

declare void @ASN1_BIT_STRING_free(ptr noundef) local_unnamed_addr #6

declare void @ASN1_OBJECT_free(ptr noundef) #6

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @X509_get_subject_name(ptr noundef) local_unnamed_addr #6

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 32) i32 @X509_check_akid(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %.not28 = icmp eq ptr %i.a, null
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @ASN1_OCTET_STRING_cmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @X509_get_serialNumber(ptr noundef %0) #8
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.i = tail call i32 @ASN1_INTEGER_cmp(ptr noundef %i.g, ptr noundef %i.h) #8
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 4 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.l = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.k) #8
  %.not41 = icmp eq i64 %i.l, 0
  br i1 %.not41, label %.thread38, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.02140, 1                   ; 2 uses
  %i.n = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.k) #8
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread38, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.02140 = phi i64 [ %i.m, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.k, i64 noundef %.02140) #8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %.not34 = icmp eq ptr %i.t, null
  br i1 %.not34, label %.thread38, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @X509_get_issuer_name(ptr noundef %0) #8
  %i.v = tail call i32 @X509_NAME_cmp(ptr noundef nonnull %i.t, ptr noundef %i.u) #8
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %.thread38, label %bb.k

.thread38:                                        ; preds = %bb.h, %.preheader, %bb.i, %bb.j
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %.thread38, %bb.j, %bb.f, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 30, %bb.d ], [ 31, %bb.j ], [ 31, %bb.f ], [ 0, %.thread38 ], [ 0, %bb.g ]
  ret i32 %.1
}

declare i32 @X509_get_ext_count(ptr noundef) local_unnamed_addr #6

declare ptr @X509_get_ext(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @X509_EXTENSION_get_critical(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @X509_check_ca(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZL8check_caPK7x509_st.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  %i.g = and i32 %i.f, 4
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %_ZL8check_caPK7x509_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %i.c, 8256
  %i.i = icmp eq i32 %i.h, 8256
  br i1 %i.i, label %_ZL8check_caPK7x509_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.c, 17
  %.not6.i = icmp eq i32 %i.j, 17
  %1 = zext i1 %.not6.i to i32
  br label %_ZL8check_caPK7x509_st.exit

_ZL8check_caPK7x509_st.exit:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 33) i32 @X509_check_issued(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @X509_get_subject_name(ptr noundef %0) #8
  %i.b = tail call ptr @X509_get_issuer_name(ptr noundef %1) #8
  %i.c = tail call i32 @X509_NAME_cmp(ptr noundef %i.a, ptr noundef %i.b) #8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @x509v3_cache_extensions(ptr noundef %1)
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @X509_check_akid(ptr noundef %0, ptr noundef nonnull %i.g) ; 2 uses
  %.not17.not = icmp eq i32 %i.h, 0
  br i1 %.not17.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23
  %i.k = and i32 %i.j, 2
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %i.n = and i32 %i.m, 4
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.b, %bb.c, %bb.a, %bb.h
  %.1 = phi i32 [ 29, %bb.a ], [ 0, %bb.h ], [ 1, %bb.b ], [ %i.h, %bb.e ], [ 1, %bb.c ], [ 32, %bb.g ]
  ret i32 %.1
}

declare i32 @ASN1_OCTET_STRING_cmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ASN1_INTEGER_cmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @X509_get_serialNumber(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_get_extension_flags(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_get_key_usage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = and i32 %i.c, 2
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @X509_get_extended_key_usage(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = and i32 %i.c, 4
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_get0_subject_key_id(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_get0_authority_key_id(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_get0_authority_issuer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_get0_authority_serial(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @x509v3_cache_extensions(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
end_hunk_1
