inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<EMPTY>\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%*s%s\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/x509/v3_prn.c\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%*s<Parse Error>\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%*s<Not Supported>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @X509V3_EXT_val_prn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %.not31 = icmp eq i32 %i.a, 0
  br i1 %.not31, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1) #4 ; 0 uses
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %.not32 = icmp eq i32 %i.c, 0
  br i1 %.not32, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.thread:                                          ; preds = %bb.c
  %i.g = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  br i1 %.not30, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread, %.lr.ph
  %i.i = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1) #4 ; 0 uses
  %i.j = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef 0) #4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 3 uses
  %.not35.peel = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 3 uses
  br i1 %.not35.peel, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.preheader
  %.not36.peel = icmp eq ptr %i.n, null
  br i1 %.not36.peel, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) #4 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull %i.l) #4 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.preheader
  %i.q = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef %i.n) #4 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.r = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph.split.peel.next, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.t = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef 0) #4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9    ; 3 uses
  %.not35.us.peel = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 3 uses
  br i1 %.not35.us.peel, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.preheader
  %.not36.us.peel = icmp eq ptr %i.x, null
  br i1 %.not36.us.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.v, ptr noundef nonnull %i.x) #4 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.z = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull %i.v) #4 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.us.preheader
  %i.aa = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef %i.x) #4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ab = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph.split.us.peel.next, label %.loopexit

.lr.ph.split.us.peel.next:                        ; preds = %bb.p, %bb.u
  %.037.us = phi i32 [ %i.am, %bb.u ], [ 1, %bb.p ] ; 2 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.ae = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef %.037.us) #4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9  ; 3 uses
  %.not35.us = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 3 uses
  br i1 %.not35.us, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.peel.next
  %.not36.us = icmp eq ptr %i.ai, null
  br i1 %.not36.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai) #4 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ak = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull %i.ag) #4 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.al = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef %i.ai) #4 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.am = add nuw nsw i32 %.037.us, 1             ; 2 uses
  %i.an = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.split.us.peel.next, label %.loopexit, !llvm.loop !14

.lr.ph.split.peel.next:                           ; preds = %bb.k, %bb.z
  %.037 = phi i32 [ %i.az, %bb.z ], [ 1, %bb.k ]  ; 2 uses
  %i.ap = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #4 ; 0 uses
  %i.aq = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull @.str.1) #4 ; 0 uses
  %i.ar = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef %.037) #4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9  ; 3 uses
  %.not35 = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 3 uses
  br i1 %.not35, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.peel.next
  %i.aw = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef %i.av) #4 ; 0 uses
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph.split.peel.next
  %.not36 = icmp eq ptr %i.av, null
  br i1 %.not36, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ax = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull %i.at) #4 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ay = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.at, ptr noundef nonnull %i.av) #4 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x
  %i.az = add nuw nsw i32 %.037, 1                ; 2 uses
  %i.ba = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #4
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph.split.peel.next, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.z, %bb.u, %bb.k, %bb.p, %.thread, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @X509V3_EXT_print(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @X509_EXTENSION_get_data(ptr noundef %1) #4 ; 2 uses
  %i.c = tail call ptr @ASN1_STRING_get0_data(ptr noundef %i.b) #4 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = tail call i32 @ASN1_STRING_length(ptr noundef %i.b) #4 ; 6 uses
  %i.e = tail call ptr @X509V3_EXT_get(ptr noundef %1) #4 ; 11 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %4 = and i64 %2, 983040
  %5 = sub i64 %4, 0                              ; 2 uses
  %6 = call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 48)
  switch i64 %6, label %bb.n [
    i64 0, label %unknown_ext_print.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %unknown_ext_print.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sext i32 %i.d to i64
  %i.i = tail call i32 @ASN1_parse_dump(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.h, i32 noundef %3, i32 noundef -1) #4
  br label %unknown_ext_print.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.c, i32 noundef %i.d, i32 noundef %3) #4
  br label %unknown_ext_print.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = sext i32 %i.d to i64
  %i.n = tail call ptr %i.l() #4
  %i.o = call ptr @ASN1_item_d2i(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.m, ptr noundef %i.n) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = sext i32 %i.d to i64
  %i.s = call ptr %i.q(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.r) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi ptr [ %i.o, %bb.g ], [ %i.s, %bb.h ] ; 6 uses
  %.not60 = icmp eq ptr %.049, null
  br i1 %.not60, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %7 = and i64 %2, 983040
  %8 = sub i64 %7, 0                              ; 2 uses
  %9 = call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 48)
  switch i64 %9, label %bb.n [
    i64 0, label %unknown_ext_print.exit
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %3, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %unknown_ext_print.exit

bb.l:                                             ; preds = %bb.j
  %i.v = sext i32 %i.d to i64
  %i.w = call i32 @ASN1_parse_dump(ptr noundef %0, ptr noundef %i.t, i64 noundef %i.v, i32 noundef %3, i32 noundef -1) #4
  br label %unknown_ext_print.exit

bb.m:                                             ; preds = %bb.j
  %i.x = call i32 @BIO_dump_indent(ptr noundef %0, ptr noundef %i.t, i32 noundef %i.d, i32 noundef %3) #4
  br label %unknown_ext_print.exit

bb.n:                                             ; preds = %bb.b, %bb.j
  br label %unknown_ext_print.exit

bb.o:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %.not61 = icmp eq ptr %i.z, null
  br i1 %.not61, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = call ptr %i.z(ptr noundef nonnull %i.e, ptr noundef nonnull %.049) #4 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.aa) #4 ; 0 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %.not62 = icmp eq ptr %i.ae, null
  br i1 %.not62, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = call ptr %i.ae(ptr noundef nonnull %i.e, ptr noundef nonnull %.049, ptr noundef null) #4 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24
  %i.aj = and i32 %i.ai, 4
  call void @X509V3_EXT_val_prn(ptr noundef %0, ptr noundef nonnull %i.af, i32 noundef %3, i32 noundef %i.aj)
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %.not63 = icmp eq ptr %i.al, null
  br i1 %.not63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = call i32 %i.al(ptr noundef nonnull %i.e, ptr noundef nonnull %.049, ptr noundef %0, i32 noundef %3) #4
  %.not64 = icmp ne i32 %i.am, 0
  %spec.select = zext i1 %.not64 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.p, %bb.q, %bb.t
  %.050 = phi ptr [ null, %bb.u ], [ %i.aa, %bb.q ], [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.v ], [ null, %bb.s ]
  %.047 = phi ptr [ null, %bb.u ], [ null, %bb.q ], [ null, %bb.p ], [ %i.af, %bb.t ], [ null, %bb.v ], [ null, %bb.s ]
  %.0 = phi i32 [ 0, %bb.u ], [ 1, %bb.q ], [ 0, %bb.p ], [ 1, %bb.t ], [ %spec.select, %bb.v ], [ 0, %bb.s ] ; 2 uses
  call void @OPENSSL_sk_pop_free(ptr noundef %.047, ptr noundef nonnull @X509V3_conf_free) #4
  call void @CRYPTO_free(ptr noundef %.050, ptr noundef nonnull @.str.7, i32 noundef 130) #4
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !19  ; 2 uses
  %.not65 = icmp eq ptr %i.an, null
  br i1 %.not65, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = call ptr %i.an() #4
  call void @ASN1_item_free(ptr noundef nonnull %.049, ptr noundef %i.ao) #4
  br label %unknown_ext_print.exit

bb.y:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  call void %i.aq(ptr noundef nonnull %.049) #4
  br label %unknown_ext_print.exit

unknown_ext_print.exit:                           ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.b, %bb.x, %bb.y
  %.048 = phi i32 [ %.0, %bb.x ], [ 1, %bb.c ], [ %.0, %bb.y ], [ 1, %bb.k ], [ %i.j, %bb.e ], [ 0, %bb.b ], [ %i.i, %bb.d ], [ 1, %bb.n ], [ %i.x, %bb.m ], [ 0, %bb.j ], [ %i.w, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.048
}

declare ptr @X509_EXTENSION_get_data(ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_STRING_get0_data(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_length(ptr noundef) local_unnamed_addr #2

declare ptr @X509V3_EXT_get(ptr noundef) local_unnamed_addr #2

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @X509V3_conf_free(ptr noundef) #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_item_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @X509V3_extensions_print(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #4 ; 0 uses
  %i.d = add nsw i32 %4, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.033 = phi i32 [ %i.d, %bb.c ], [ %4, %bb.b ]  ; 3 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d
  %i.g = and i64 %3, 8192
  %.not37 = icmp eq i64 %i.g, 0
  %.not40 = icmp eq i32 %.033, 0
  %i.h = add nsw i32 %.033, 4                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %.03544 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.n ] ; 2 uses
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef %2, i32 noundef %.03544) #4 ; 4 uses
  %i.j = tail call ptr @X509_EXTENSION_get_object(ptr noundef %i.i) #4 ; 3 uses
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @OBJ_obj2nid(ptr noundef %i.j) #4
  %.not38 = icmp eq i32 %i.k, 82
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @OBJ_obj2nid(ptr noundef %i.j) #4
  %.not39 = icmp eq i32 %i.l, 90
  br i1 %.not39, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %.033, ptr noundef nonnull @.str.1) #4
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %i.j) #4 ; 0 uses
  %i.p = tail call i32 @X509_EXTENSION_get_critical(ptr noundef %i.i) #4
  %.not41 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not41, ptr @.str.1, ptr @.str.10
  %i.r = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.q) #4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i32 @X509V3_EXT_print(ptr noundef %0, ptr noundef %i.i, i64 noundef %3, i32 noundef %i.h)
  %.not42 = icmp eq i32 %i.t, 0
  br i1 %.not42, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.h, ptr noundef nonnull @.str.1) #4 ; 0 uses
  %i.v = tail call ptr @X509_EXTENSION_get_data(ptr noundef %i.i) #4
  %i.w = tail call i32 @ASN1_STRING_print(ptr noundef %0, ptr noundef %i.v) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 1) #4
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.m
  %i.z = add nuw nsw i32 %.03544, 1               ; 2 uses
  %i.aa = tail call i32 @OPENSSL_sk_num(ptr noundef %2) #4
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.thread, !llvm.loop !27

.thread:                                          ; preds = %bb.n, %bb.j, %bb.i, %bb.m, %bb.d, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.i ], [ 0, %bb.j ], [ 1, %bb.n ], [ 0, %bb.m ]
  ret i32 %.2
}

declare ptr @X509_EXTENSION_get_object(ptr noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare i32 @i2a_ASN1_OBJECT(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @X509_EXTENSION_get_critical(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_print(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @X509V3_EXT_print_fp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #4 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i32 @X509V3_EXT_print(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %i.c, i32 noundef %3)
  %i.e = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare i32 @ASN1_parse_dump(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_dump_indent(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 16}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !15, !16}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !12, i64 8}
!20 = !{!"v3_ext_method", !6, i64 0, !6, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!21 = !{!20, !12, i64 32}
!22 = !{!20, !12, i64 48}
!23 = !{!20, !12, i64 64}
!24 = !{!20, !6, i64 4}
!25 = !{!20, !12, i64 80}
!26 = !{!20, !12, i64 24}
!27 = distinct !{!27, !15}
end_hunk_0
