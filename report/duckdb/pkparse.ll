inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_pk_context = type { ptr, ptr }
%struct.mbedtls_asn1_buf = type { i32, i64, ptr }
%struct.mbedtls_pem_context = type { ptr, i64, ptr }

@.str.1 = private unnamed_addr constant [32 x i8] c"-----BEGIN RSA PRIVATE KEY-----\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"-----END RSA PRIVATE KEY-----\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"-----BEGIN PRIVATE KEY-----\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"-----END PRIVATE KEY-----\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"-----BEGIN RSA PUBLIC KEY-----\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"-----END RSA PUBLIC KEY-----\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"-----BEGIN PUBLIC KEY-----\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"-----END PUBLIC KEY-----\00", align 1

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_pk_parse_subpubkey(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %4 = alloca %struct.mbedtls_asn1_buf, align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.mbedtls_asn1_buf, align 8   ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = call i32 @mbedtls_asn1_get_tag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 48) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -15616
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !9
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = call i32 @mbedtls_asn1_get_alg(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @mbedtls_oid_get_pk_alg(ptr noundef nonnull %4, ptr noundef nonnull %i.b)
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %bb.e, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 4, !tbaa !7
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread51

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %5, align 8, !tbaa !14
  switch i32 %i.l, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread [
    i32 5, label %bb.g
    i32 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %.not16.i = icmp eq i64 %i.n, 0
  br i1 %.not16.i, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread51, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread51: ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.h

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.ph = phi i32 [ -14976, %bb.g ], [ -14976, %bb.f ], [ -15488, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.q

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit: ; preds = %bb.c
  %i.o = add nsw i32 %i.h, -14976                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread51, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit
  %i.p = call i32 @mbedtls_asn1_get_bitstring_null(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull %i.a) ; 2 uses
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i32 %i.p, -15104
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = load i64, ptr %i.a, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %.not44 = icmp eq ptr %i.t, %i.g
  br i1 %.not44, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.b, align 4, !tbaa !7
  %i.v = call ptr @mbedtls_pk_info_from_type(i32 noundef %i.u) ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call i32 @mbedtls_pk_setup(ptr noundef %2, ptr noundef nonnull %i.v) ; 2 uses
  %.not45 = icmp eq i32 %i.x, 0
  br i1 %.not45, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr %i.b, align 4, !tbaa !7
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x ptr>, ptr %2, align 8, !tbaa !17
  store <2 x ptr> %i.ab, ptr %3, align 16
  %i.ac = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %3)
  %cond.i = icmp eq i32 %i.ac, 1
  %i.ad = load ptr, ptr %i.aa, align 8
  %.0.i48 = select i1 %cond.i, ptr %i.ad, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.af = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call noundef i32 @_Z24mbedtls_rsa_parse_pubkeyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i48, ptr noundef %i.ae, i64 noundef %i.ah) ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = add i32 %i.ai, 108
  %or.cond = icmp ult i32 %i.ak, 13
  %i.al = add nsw i32 %i.ai, -15104
  %spec.select = select i1 %or.cond, i32 %i.al, i32 -15104
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.af, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  store ptr %i.ap, ptr %0, align 8, !tbaa !9
  br label %bb.q

.thread:                                          ; preds = %bb.o, %bb.m
  %.1.ph = phi i32 [ %spec.select, %bb.o ], [ -15488, %bb.m ]
  call void @mbedtls_pk_free(ptr noundef %2)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread, %.thread, %bb.l, %bb.k, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit, %bb.i, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.x, %bb.l ], [ %i.q, %bb.i ], [ %.0.i.ph, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread ], [ %i.o, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit ], [ -15488, %bb.k ], [ %.1.ph, %.thread ], [ -15206, %bb.j ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_get_bitstring_null(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mbedtls_pk_info_from_type(i32 noundef) local_unnamed_addr #2

declare i32 @mbedtls_pk_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z24mbedtls_rsa_parse_pubkeyP19mbedtls_rsa_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @mbedtls_pk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_pk_parse_key(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef readnone captures(none) %5, ptr noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %8 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.mbedtls_pem_context, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_pem_init(ptr noundef nonnull %9)
  %i.c = getelementptr i8, ptr %1, i64 %2
  %i.d = getelementptr i8, ptr %i.c, i64 -1       ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %10

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @mbedtls_pem_read_buffer(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %1, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.a)
  br label %10

10:                                               ; preds = %bb.b, %bb.c
  %.044 = phi i32 [ %i.f, %bb.c ], [ -4224, %bb.b ] ; 2 uses
  %11 = add i32 %.044, 4992                       ; 2 uses
  %12 = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 25)
  switch i32 %12, label %bb.i [
    i32 39, label %bb.d
    i32 0, label %bb.r
    i32 1, label %bb.h
    i32 6, label %bb.j
  ]

bb.d:                                             ; preds = %10
  %i.g = call ptr @mbedtls_pk_info_from_type(i32 noundef 1)
  %i.h = call i32 @mbedtls_pk_setup(ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !17
  store <2 x ptr> %i.j, ptr %8, align 16
  %i.k = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %8)
  %cond.i = icmp eq i32 %i.k, 1
  %i.l = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %cond.i, ptr %i.l, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.m = load ptr, ptr %9, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = call noundef i32 @_Z21mbedtls_rsa_parse_keyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i, ptr noundef %i.m, i64 noundef %i.o) ; 2 uses
  %.not54 = icmp eq i32 %i.p, 0
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.h, %bb.d ], [ %i.p, %bb.e ]
  call void @mbedtls_pk_free(ptr noundef %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %.1, %bb.f ], [ 0, %bb.e ]
  call void @mbedtls_pem_free(ptr noundef nonnull %9)
  br label %bb.r

bb.h:                                             ; preds = %10
  br label %bb.r

bb.i:                                             ; preds = %10
  br label %bb.r

bb.j:                                             ; preds = %10
  %.pr = load i8, ptr %i.d, align 1, !tbaa !18
  %.not50 = icmp eq i8 %.pr, 0
  br i1 %.not50, label %bb.k, label %.thread60

bb.k:                                             ; preds = %bb.j
  %i.q = call i32 @mbedtls_pem_read_buffer(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a) ; 2 uses
  switch i32 %i.q, label %bb.r [
    i32 0, label %bb.l
    i32 -4224, label %.thread60
  ]

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %9, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = call fastcc noundef i32 @_ZL34pk_parse_key_pkcs8_unencrypted_derP18mbedtls_pk_contextPKhmPFiPvPhmES3_(ptr noundef %0, ptr noundef %i.r, i64 noundef %i.t) ; 2 uses
  %.not52 = icmp eq i32 %i.u, 0
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @mbedtls_pk_free(ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @mbedtls_pem_free(ptr noundef nonnull %9)
  br label %bb.r

.thread60:                                        ; preds = %bb.j, %bb.k
  %i.v = call fastcc noundef i32 @_ZL34pk_parse_key_pkcs8_unencrypted_derP18mbedtls_pk_contextPKhmPFiPvPhmES3_(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread60
  call void @mbedtls_pk_free(ptr noundef %0)
  call void @mbedtls_pk_init(ptr noundef %0)
  %i.x = call ptr @mbedtls_pk_info_from_type(i32 noundef 1)
  %i.y = call i32 @mbedtls_pk_setup(ptr noundef %0, ptr noundef %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !17
  store <2 x ptr> %i.ab, ptr %7, align 16
  %i.ac = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %7)
  %cond.i55 = icmp eq i32 %i.ac, 1
  %i.ad = load ptr, ptr %i.aa, align 8
  %.0.i56 = select i1 %cond.i55, ptr %i.ad, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ae = call noundef i32 @_Z21mbedtls_rsa_parse_keyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i56, ptr noundef nonnull %1, i64 noundef %2)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @mbedtls_pk_free(ptr noundef %0)
  call void @mbedtls_pk_init(ptr noundef %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %.thread60, %bb.k, %10, %bb.a, %bb.q, %bb.n, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ -15616, %bb.q ], [ %.2, %bb.g ], [ -15616, %bb.a ], [ -15360, %bb.h ], [ %.044, %bb.i ], [ %i.u, %bb.n ], [ -15232, %10 ], [ %i.q, %bb.k ], [ 0, %.thread60 ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare void @mbedtls_pem_init(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_pem_read_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z21mbedtls_rsa_parse_keyP19mbedtls_rsa_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @mbedtls_pem_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL34pk_parse_key_pkcs8_unencrypted_derP18mbedtls_pk_contextPKhmPFiPvPhmES3_(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %4 = alloca %struct.mbedtls_asn1_buf, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %struct.mbedtls_asn1_buf, align 8   ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr %1, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.f = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %i.c, ptr noundef %i.e, ptr noundef nonnull %i.b, i32 noundef 48) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.f, -15616
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.i = load i64, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 3 uses
  %i.k = call i32 @mbedtls_asn1_get_int(ptr noundef nonnull %i.c, ptr noundef %i.j, ptr noundef nonnull %i.a) ; 2 uses
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -15616
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.n = call i32 @mbedtls_asn1_get_alg(ptr noundef nonnull %i.c, ptr noundef %i.j, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @mbedtls_oid_get_pk_alg(ptr noundef nonnull %4, ptr noundef nonnull %i.d)
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %bb.h, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.d, align 4, !tbaa !7
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread3

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %5, align 8, !tbaa !14
  switch i32 %i.r, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread [
    i32 5, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %.not16.i = icmp eq i64 %i.t, 0
  br i1 %.not16.i, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread3, label %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread3: ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.k

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread: ; preds = %bb.g, %bb.i, %bb.j
  %.0.i.ph = phi i32 [ -14976, %bb.j ], [ -14976, %bb.i ], [ -15488, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.t

_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit: ; preds = %bb.f
  %i.u = add nsw i32 %i.n, -14976                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread3, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit
  %i.v = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %i.c, ptr noundef %i.j, ptr noundef nonnull %i.b, i32 noundef 4) ; 2 uses
  %.not30 = icmp eq i32 %i.v, 0
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.v, -15616
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.x = load i64, ptr %i.b, align 8, !tbaa !12
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load i32, ptr %i.d, align 4, !tbaa !7
  %i.aa = call ptr @mbedtls_pk_info_from_type(i32 noundef %i.z) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = call i32 @mbedtls_pk_setup(ptr noundef %0, ptr noundef nonnull %i.aa) ; 2 uses
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load <2 x ptr>, ptr %0, align 8, !tbaa !17
  store <2 x ptr> %i.ag, ptr %3, align 16
  %i.ah = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %3)
  %cond.i = icmp eq i32 %i.ah, 1
  %i.ai = load ptr, ptr %i.af, align 8
  %.0.i34 = select i1 %cond.i, ptr %i.ai, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !12
  %i.al = call noundef i32 @_Z21mbedtls_rsa_parse_keyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i34, ptr noundef %i.aj, i64 noundef %i.ak) ; 2 uses
  %.not32 = icmp eq i32 %i.al, 0
  br i1 %.not32, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @mbedtls_pk_free(ptr noundef nonnull %0)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.an = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %.not33 = icmp eq ptr %i.ao, %i.e
  %spec.select = select i1 %.not33, i32 0, i32 -15718
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread, %bb.e, %bb.p, %bb.o, %bb.n, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit, %bb.r, %bb.l, %bb.d, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.l, %bb.d ], [ %spec.select, %bb.s ], [ %i.ac, %bb.o ], [ %i.w, %bb.l ], [ %.0.i.ph, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit.thread ], [ %i.u, %_ZL13pk_get_pk_algPPhPKhP17mbedtls_pk_type_tP16mbedtls_asn1_bufPv.exit ], [ -15488, %bb.n ], [ %i.al, %bb.r ], [ -15712, %bb.m ], [ -15488, %bb.p ], [ -15744, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare void @mbedtls_pk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_pk_parse_public_key(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %4 = alloca %struct.mbedtls_pk_context, align 16 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.mbedtls_pem_context, align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_pem_init(ptr noundef nonnull %5)
  %i.d = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %.thread58

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @mbedtls_pem_read_buffer(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.d
    i32 -4224, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %5, align 8, !tbaa !19
  store ptr %i.h, ptr %i.a, align 8, !tbaa !9
  %i.i = call ptr @mbedtls_pk_info_from_type(i32 noundef 1) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.k = call i32 @mbedtls_pk_setup(ptr noundef %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not51 = icmp eq i32 %i.k, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load <2 x ptr>, ptr %0, align 8, !tbaa !17
  store <2 x ptr> %i.m, ptr %4, align 16
  %i.n = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %4)
  %cond.i = icmp eq i32 %i.n, 1
  %i.o = load ptr, ptr %i.l, align 8
  %.0.i = select i1 %cond.i, ptr %i.o, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = call noundef i32 @_Z24mbedtls_rsa_parse_pubkeyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i, ptr noundef %i.p, i64 noundef %i.r) ; 2 uses
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @mbedtls_pk_free(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

bb.k:                                             ; preds = %bb.c
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  %.pr = load i8, ptr %i.e, align 1, !tbaa !18
  %.not47 = icmp eq i8 %.pr, 0
  br i1 %.not47, label %bb.m, label %.thread58

bb.m:                                             ; preds = %bb.l
  %i.t = call i32 @mbedtls_pem_read_buffer(ptr noundef nonnull %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  switch i32 %i.t, label %bb.o [
    i32 0, label %bb.n
    i32 -4224, label %.thread58
  ]

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = call i32 @mbedtls_pk_parse_subpubkey(ptr noundef nonnull %i.a, ptr noundef %i.x, ptr noundef %0)
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  br label %bb.t

.thread58:                                        ; preds = %bb.b, %bb.l, %bb.m
  call void @mbedtls_pem_free(ptr noundef nonnull %5)
  %i.z = call ptr @mbedtls_pk_info_from_type(i32 noundef 1) ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.thread58
  %i.ab = call i32 @mbedtls_pk_setup(ptr noundef %0, ptr noundef nonnull %i.z) ; 2 uses
  %.not49 = icmp eq i32 %i.ab, 0
  br i1 %.not49, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load <2 x ptr>, ptr %0, align 8, !tbaa !17
  store <2 x ptr> %i.ad, ptr %3, align 16
  %i.ae = call i32 @mbedtls_pk_get_type(ptr noundef nonnull %3)
  %cond.i53 = icmp eq i32 %i.ae, 1
  %i.af = load ptr, ptr %i.ac, align 8
  %.0.i54 = select i1 %cond.i53, ptr %i.af, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ah = call noundef i32 @_Z24mbedtls_rsa_parse_pubkeyP19mbedtls_rsa_contextPKhm(ptr noundef %.0.i54, ptr noundef %i.ag, i64 noundef %2) ; 3 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @mbedtls_pk_free(ptr noundef nonnull %0)
  %.not50 = icmp eq i32 %i.ah, -98
  br i1 %.not50, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  %i.aj = call i32 @mbedtls_pk_parse_subpubkey(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %.thread58, %bb.a, %bb.s, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.e
  %.0 = phi i32 [ %i.aj, %bb.s ], [ -15488, %bb.e ], [ %i.k, %bb.g ], [ %i.s, %bb.j ], [ %i.g, %bb.k ], [ %i.y, %bb.n ], [ %i.t, %bb.o ], [ -15616, %bb.a ], [ -15488, %.thread58 ], [ %i.ab, %bb.p ], [ 0, %bb.q ], [ %i.ah, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @mbedtls_asn1_get_alg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_oid_get_pk_alg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_pk_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_asn1_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"_ZTS17mbedtls_pk_type_t", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!15, !4, i64 0}
!15 = !{!"_ZTS16mbedtls_asn1_buf", !4, i64 0, !13, i64 8, !10, i64 16}
!16 = !{!15, !13, i64 8}
!17 = !{!11, !11, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"_ZTS19mbedtls_pem_context", !10, i64 0, !13, i64 8, !10, i64 16}
!21 = !{!20, !13, i64 8}
end_hunk_0
