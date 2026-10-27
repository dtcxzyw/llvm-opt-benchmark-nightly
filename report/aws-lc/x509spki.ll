Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509spki?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/x509spki.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Netscape SPKI:\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"  Public Key Algorithm: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"  Unable to load public key\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  Challenge String: %.*s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  Signature Algorithm: %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @NETSCAPE_SPKI_set_pubkey(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @X509_PUBKEY_set(ptr noundef nonnull %i.b, ptr noundef %1) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @X509_PUBKEY_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @NETSCAPE_SPKI_get_pubkey(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = tail call ptr @X509_PUBKEY_get(ptr noundef %i.d) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @X509_PUBKEY_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @NETSCAPE_SPKI_b64_decode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !17
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %1, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.f, %bb.d ], [ %1, %bb.c ]    ; 3 uses
  %i.g = icmp sgt i64 %.0, 32767
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 43) #4
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.h = call i32 @EVP_DecodedLength(ptr noundef nonnull %i.b, i64 noundef %.0) #4
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 47) #4
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.j = call ptr @OPENSSL_malloc(i64 noundef %i.i) #4 ; 5 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !19
  %i.l = call i32 @EVP_DecodeBase64(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b, i64 noundef %i.k, ptr noundef nonnull %0, i64 noundef %.0) #4
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 55) #4
  call void @OPENSSL_free(ptr noundef nonnull %i.j) #4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.j, ptr %i.a, align 8, !tbaa !21
  %i.m = load i64, ptr %i.b, align 8, !tbaa !19
  %i.n = call ptr @d2i_NETSCAPE_SPKI(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.m) #4
  call void @OPENSSL_free(ptr noundef nonnull %i.j) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.a, %bb.b, %bb.l, %bb.k, %bb.h, %bb.f
  %.013 = phi ptr [ null, %bb.h ], [ null, %bb.f ], [ %i.n, %bb.l ], [ null, %bb.k ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodedLength(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DecodeBase64(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

declare ptr @d2i_NETSCAPE_SPKI(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @NETSCAPE_SPKI_b64_encode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = tail call i32 @i2d_NETSCAPE_SPKI(ptr noundef %0, ptr noundef null) #4
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = call i32 @EVP_EncodedLength(ptr noundef nonnull %i.b, i64 noundef %i.d) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 74) #4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = call ptr @OPENSSL_malloc(i64 noundef %i.d) #4 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !19
  %i.i = call ptr @OPENSSL_malloc(i64 noundef %i.h) #4 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @OPENSSL_free(ptr noundef nonnull %i.f) #4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  %1 = call i32 @i2d_NETSCAPE_SPKI(ptr noundef %0, ptr noundef nonnull %i.a) #4 ; 0 uses
  %2 = call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, i64 noundef %i.d) #4 ; 0 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.f) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.i, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

declare i32 @i2d_NETSCAPE_SPKI(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_EncodedLength(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @EVP_EncodeBlock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @NETSCAPE_SPKI_print(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str, i32 noundef 98) #4
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.s = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.t = load ptr, ptr %1, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = call i32 @X509_PUBKEY_get0_param(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %i.u) #4 ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.x = call i32 @OBJ_obj2nid(ptr noundef %i.w) #4 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call ptr @OBJ_nid2ln(i32 noundef %i.x) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aa = phi ptr [ %i.z, %bb.j ], [ @.str.3, %bb.i ]
  %i.ab = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %i.aa) #4 ; 0 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !13
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = call ptr @X509_PUBKEY_get0(ptr noundef %i.ad) #4 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = call i32 @EVP_PKEY_print_public(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i32 noundef 4, ptr noundef null) #4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %1, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %.not49 = icmp eq i32 %i.al, 0
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.al, ptr noundef %i.an) #4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.ar = call i32 @OBJ_obj2nid(ptr noundef %i.aq) #4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.av = call i32 @OBJ_obj2nid(ptr noundef %i.au) #4
  %i.aw = call ptr @OBJ_nid2ln(i32 noundef %i.av) #4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ax = phi ptr [ %i.aw, %bb.r ], [ @.str.3, %bb.q ]
  %i.ay = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %i.ax) #4 ; 0 uses
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !33 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.s
  %i.bc = call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef 1) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.v

.lr.ph:                                           ; preds = %bb.s, %bb.u
  %i.bd = phi i32 [ %i.bv, %bb.u ], [ %i.ba, %bb.s ]
  %i.be = phi ptr [ %i.bu, %bb.u ], [ %i.az, %bb.s ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = urem i32 %i.bf, 18
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.bi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #4 ; 0 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %.pre52 = load i32, ptr %.pre, align 8, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph
  %i.bj = phi i32 [ %.pre52, %bb.t ], [ %i.bd, %.lr.ph ]
  %i.bk = phi ptr [ %.pre, %bb.t ], [ %i.be, %.lr.ph ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = zext i8 %i.bo to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bq = zext i32 %i.bj to i64
  %i.br = icmp eq i64 %indvars.iv.next, %i.bq
  %i.bs = select i1 %i.br, ptr @.str.9, ptr @.str.10
  %i.bt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.bp, ptr noundef nonnull %i.bs) #4 ; 0 uses
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !33 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !22

bb.v:                                             ; preds = %._crit_edge, %bb.h
  %.039 = phi i32 [ 0, %bb.h ], [ 1, %._crit_edge ]
  ret i32 %.039
}

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @X509_PUBKEY_get0_param(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

declare ptr @X509_PUBKEY_get0(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_print_public(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
