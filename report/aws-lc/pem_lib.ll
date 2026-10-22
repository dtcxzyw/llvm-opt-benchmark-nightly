Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/pem_lib?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evp_cipher_info_st = type { ptr, [16 x i8] }
%struct.evp_encode_ctx_st = type { i32, [48 x i8], i8, i8 }
%struct.evp_cipher_ctx_st = type { ptr, ptr, ptr, i32, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i32, i32, [32 x i8], i32 }

@.str = private unnamed_addr constant [10 x i8] c"ENCRYPTED\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MIC-CLEAR\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MIC-ONLY\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"BAD-TYPE\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Proc-Type: 4,\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PEM_dek_info.map = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"DEK-Info: \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/pem/pem_lib.c\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Expecting: \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Proc-Type: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"-----END \00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Enter PEM pass phrase:\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"ANY PRIVATE KEY\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"RSA PRIVATE KEY\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"EC PRIVATE KEY\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"DSA PRIVATE KEY\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"EC PARAMETERS\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"DSA PARAMETERS\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"DH PARAMETERS\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"NEW CERTIFICATE REQUEST\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"CERTIFICATE REQUEST\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"PKCS7\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"PKCS #7 SIGNED DATA\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"DES-CBC\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"DES-EDE3-CBC\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"AES-192-CBC\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@switch.table.PEM_proc_type = private unnamed_addr constant [21 x ptr] [ptr @.str, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.2, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.1], align 8

; Function Attrs: nounwind uwtable
define hidden void @PEM_proc_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %1, -10              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 21
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PEM_proc_type, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %bb.a ]
  %i.c = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 1024) #8 ; 0 uses
  %i.d = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef nonnull %.0, i64 noundef 1024) #8 ; 0 uses
  %i.e = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef 1024) #8 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @OPENSSL_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @PEM_dek_info(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef 1024) #8 ; 0 uses
  %i.b = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef %1, i64 noundef 1024) #8 ; 0 uses
  %i.c = tail call i64 @OPENSSL_strlcat(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef 1024) #8 ; 0 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9 ; 3 uses
  %i.e = sub i64 1022, %i.d
  %i.f = lshr i64 %i.e, 1
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr i8, ptr %0, i64 %i.d       ; 3 uses
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -2
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.026.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.026.epil.init ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = lshr i8 %i.k, 4
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = shl nuw i64 %.026.epil.init, 1
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p     ; 2 uses
  store i8 %i.o, ptr %i.q, align 1, !tbaa !9
  %i.r = load i8, ptr %i.j, align 1, !tbaa !9
  %i.s = and i8 %i.r, 15
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9
  %i.w = getelementptr i8, ptr %i.q, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.x = shl nuw i64 %2, 1
  %i.y = getelementptr i8, ptr %0, i64 %i.d
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  store i8 10, ptr %i.z, align 1, !tbaa !9
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.026 = phi i64 [ 0, %.lr.ph.new ], [ %i.be, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %.026 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ad = lshr i8 %i.ac, 4
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = shl nuw i64 %.026, 1
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah   ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !9
  %i.aj = load i8, ptr %i.ab, align 1, !tbaa !9
  %i.ak = and i8 %i.aj, 15
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr i8, ptr %i.ai, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !9
  %i.ap = or disjoint i64 %.026, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = lshr i8 %i.ar, 4
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = shl nuw i64 %i.ap, 1
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.aw   ; 2 uses
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !9
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.az = and i8 %i.ay, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = getelementptr i8, ptr %i.ax, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !9
  %i.be = add nuw nsw i64 %.026, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @PEM_ASN1_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %2, i32 noundef 0) #8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 72) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PEM_ASN1_read_bio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PEM_ASN1_read_bio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_bytes_read_bio(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.evp_cipher_info_st, align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = call i32 @PEM_read_bio(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not35 = trunc nuw i32 %i.e to i1
  br i1 %.not35, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %check_pem.exit.thread25, %bb.a
  %i.f = tail call i32 @ERR_peek_error() #8
  %i.g = and i32 %i.f, -16773121
  %or.cond = icmp eq i32 %i.g, 150995054
  br i1 %or.cond, label %bb.b, label %bb.z

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %3) #8
  br label %bb.z

.lr.ph:                                           ; preds = %bb.a, %check_pem.exit.thread25
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !13   ; 16 uses
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %3) #9
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %check_pem.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str.15) #9
  %.not24.i = icmp eq i32 %i.j, 0
  br i1 %.not24.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(22) @.str.16) #9
  %.not25.i = icmp eq i32 %i.k, 0
  br i1 %.not25.i, label %check_pem.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(12) @.str.17) #9
  %.not26.i = icmp eq i32 %i.l, 0
  br i1 %.not26.i, label %check_pem.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(16) @.str.18) #9
  %.not27.i = icmp eq i32 %i.m, 0
  br i1 %.not27.i, label %check_pem.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(15) @.str.19) #9
  %.not28.i = icmp eq i32 %i.n, 0
  br i1 %.not28.i, label %check_pem.exit.thread, label %check_pem.exit

bb.h:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(11) @.str.21) #9
  %.not30.i = icmp eq i32 %i.o, 0
  br i1 %.not30.i, label %8, label %bb.k

8:                                                ; preds = %bb.h
  %9 = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.22) #9
  %.not31.i = icmp eq i32 %9, 0
  br i1 %.not31.i, label %check_pem.exit.thread, label %bb.i

bb.i:                                             ; preds = %8
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(15) @.str.23) #9
  %.not31.i.a = icmp eq i32 %i.p, 0
  br i1 %.not31.i.a, label %check_pem.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(14) @.str.24) #9
  %.not32.i = icmp eq i32 %i.q, 0
  br i1 %.not32.i, label %check_pem.exit.thread, label %check_pem.exit.thread25

bb.k:                                             ; preds = %bb.h
  %i.r = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(17) @.str.25) #9
  %.not34.i = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %.not34.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(12) @.str.26) #9
  %.not35.i = icmp eq i32 %i.s, 0
  br i1 %.not35.i, label %check_pem.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.t = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(24) @.str.27) #9
  %.not36.i = icmp eq i32 %i.t, 0
  br i1 %.not36.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.28) #9
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %check_pem.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(12) @.str.26) #9
  %.not38.i = icmp eq i32 %i.v, 0                 ; 2 uses
  br i1 %.not38.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.29) #9
  %.not39.i = icmp eq i32 %i.w, 0
  br i1 %.not39.i, label %check_pem.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not34.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.x = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(20) @.str.29) #9
  %.not41.i = icmp eq i32 %i.x, 0
  br i1 %.not41.i, label %check_pem.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %.not38.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.y = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  %.not43.i = icmp eq i32 %i.y, 0
  br i1 %.not43.i, label %check_pem.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.z = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(20) @.str.31) #9
  %.not44.i = icmp eq i32 %i.z, 0
  br i1 %.not44.i, label %bb.v, label %check_pem.exit.thread25

bb.v:                                             ; preds = %bb.u
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  %.not45.i = icmp eq i32 %i.aa, 0
  br i1 %.not45.i, label %check_pem.exit.thread, label %check_pem.exit.thread25

check_pem.exit:                                   ; preds = %bb.g
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(16) @.str.20) #9
  %.0.shrunk.i.not = icmp eq i32 %i.ab, 0
  br i1 %.0.shrunk.i.not, label %check_pem.exit.thread, label %check_pem.exit.thread25

check_pem.exit.thread25:                          ; preds = %bb.v, %bb.u, %bb.j, %check_pem.exit
  tail call void @OPENSSL_free(ptr noundef nonnull %i.h) #8
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !13
  tail call void @OPENSSL_free(ptr noundef %i.ac) #8
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !13
  tail call void @OPENSSL_free(ptr noundef %i.ad) #8
  %i.ae = call i32 @PEM_read_bio(ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not = trunc nuw i32 %i.ae to i1
  br i1 %.not, label %.lr.ph, label %._crit_edge

check_pem.exit.thread:                            ; preds = %bb.v, %8, %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %.lr.ph, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.j, %check_pem.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.ag = call i32 @PEM_get_EVP_CIPHER_INFO(ptr noundef %i.af, ptr noundef nonnull %7)
  %.not19 = trunc nuw i32 %i.ag to i1
  br i1 %.not19, label %bb.w, label %.thread

bb.w:                                             ; preds = %check_pem.exit.thread
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ai = call i32 @PEM_do_header(ptr noundef nonnull %7, ptr noundef %i.ah, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef %6)
  %.not20 = trunc nuw i32 %i.ai to i1
  br i1 %.not20, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  store ptr %i.ah, ptr %0, align 8, !tbaa !13
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.aj, ptr %1, align 8, !tbaa !15
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %.thread, label %.thread33

.thread33:                                        ; preds = %bb.x
  store ptr %i.h, ptr %2, align 8, !tbaa !13
  call void @OPENSSL_free(ptr noundef %i.af) #8
  br label %bb.z

.thread:                                          ; preds = %bb.x, %bb.w, %check_pem.exit.thread
  %.031 = phi i32 [ 0, %check_pem.exit.thread ], [ 1, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ak = phi i1 [ false, %check_pem.exit.thread ], [ true, %bb.x ], [ false, %bb.w ]
  call void @OPENSSL_free(ptr noundef nonnull %i.h) #8
  call void @OPENSSL_free(ptr noundef %i.af) #8
  br i1 %i.ak, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @OPENSSL_free(ptr noundef %i.al) #8
  br label %bb.z

bb.z:                                             ; preds = %.thread33, %.thread, %bb.y, %._crit_edge, %bb.b
  %.016 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.b ], [ 1, %.thread33 ], [ %.031, %bb.y ], [ %.031, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_read_bio(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.evp_encode_ctx_st, align 4  ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca [256 x i8], align 16              ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = tail call ptr @BUF_MEM_new() #8          ; 6 uses
  %i.e = tail call ptr @BUF_MEM_new() #8          ; 16 uses
  %i.f = tail call ptr @BUF_MEM_new() #8          ; 16 uses
  %i.g = icmp eq ptr %i.d, null
  %i.h = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  %i.i = icmp eq ptr %i.f, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @BUF_MEM_free(ptr noundef %i.d) #8
  tail call void @BUF_MEM_free(ptr noundef %i.e) #8
  tail call void @BUF_MEM_free(ptr noundef %i.f) #8
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 254
  store i8 0, ptr %i.j, align 2, !tbaa !9
  %i.k = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %._crit_edge, label %.preheader143.lr.ph

.preheader143.lr.ph:                              ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 2 uses
  br label %.preheader143

._crit_edge:                                      ; preds = %.backedge, %bb.c
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str.8, i32 noundef 586) #8
  br label %.loopexit140

.preheader143:                                    ; preds = %.preheader143.backedge, %.preheader143.lr.ph
  %.0108146 = phi i32 [ %i.k, %.preheader143.lr.ph ], [ %.0108146.be, %.preheader143.backedge ] ; 4 uses
  %i.n = zext nneg i32 %.0108146 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = icmp slt i8 %i.p, 33
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader143
  %i.r = add nsw i32 %.0108146, -1
  %i.s = icmp sgt i32 %.0108146, 0
  br i1 %i.s, label %.preheader143.backedge, label %.critedge

.preheader143.backedge:                           ; preds = %bb.d, %.backedge
  %.0108146.be = phi i32 [ %i.r, %bb.d ], [ %i.al, %.backedge ]
  br label %.preheader143, !llvm.loop !20

.critedge:                                        ; preds = %bb.d, %.preheader143
  %.0108.lcssa = phi i32 [ -1, %bb.d ], [ %.0108146, %.preheader143 ]
  %i.t = sext i32 %.0108.lcssa to i64
  %i.u = getelementptr i8, ptr %i.c, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store i8 10, ptr %i.v, align 1, !tbaa !9
  %i.w = getelementptr i8, ptr %i.u, i64 2
  store i8 0, ptr %i.w, align 1, !tbaa !9
  %i.x = load i64, ptr %i.c, align 16
  %i.y = xor i64 %i.x, 5135583711884815661
  %i.z = getelementptr i8, ptr %i.c, i64 3
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 2327878627850595629
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #9
  %i.ah = shl i64 %i.ag, 32                       ; 3 uses
  %sext = add i64 %i.ah, 21474836480
  %i.ai = ashr exact i64 %sext, 32
  %i.aj = getelementptr inbounds i8, ptr %i.c, i64 %i.ai
  %i.ak = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #9
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.e, %.critedge
  %i.al = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %._crit_edge, label %.preheader143.backedge

bb.f:                                             ; preds = %bb.e
  %sext121 = add i64 %i.ah, 38654705664
  %i.an = ashr exact i64 %sext121, 32
  %i.ao = call i64 @BUF_MEM_grow(ptr noundef %i.d, i64 noundef %i.an) #8
  %.not122 = icmp eq i64 %i.ao, 0
  br i1 %.not122, label %.loopexit140, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %sext123 = add i64 %i.ah, -25769803776          ; 2 uses
  %i.aq = ashr exact i64 %sext123, 32             ; 2 uses
  %i.ar = icmp eq i64 %sext123, 0
  br i1 %i.ar, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull readonly align 1 %i.m, i64 range(i64 -2147483648, 2147483648) %i.aq, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.g, %bb.h
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !25
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aq
  store i8 0, ptr %i.au, align 1, !tbaa !9
  %i.av = call i64 @BUF_MEM_grow(ptr noundef %i.e, i64 noundef 256) #8
  %.not124 = icmp eq i64 %i.av, 0
  br i1 %.not124, label %.loopexit140, label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  store i8 0, ptr %i.ax, align 1, !tbaa !9
  %i.ay = call i32 @BIO_gets(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 254) #8 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %._crit_edge149, label %.preheader141

.preheader141:                                    ; preds = %bb.i, %OPENSSL_memcpy.exit136
  %i.ba = phi i32 [ %i.cb, %OPENSSL_memcpy.exit136 ], [ %i.ay, %bb.i ]
  %.0107148 = phi i32 [ %i.bp, %OPENSSL_memcpy.exit136 ], [ 0, %bb.i ] ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader141, %bb.k
  %.1109147 = phi i32 [ %i.ba, %.preheader141 ], [ %i.bf, %bb.k ] ; 4 uses
  %i.bb = zext nneg i32 %.1109147 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = icmp slt i8 %i.bd, 33
  br i1 %i.be, label %bb.k, label %.critedge5

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %.1109147, -1
  %i.bg = icmp sgt i32 %.1109147, 0
  br i1 %i.bg, label %bb.j, label %.critedge5, !llvm.loop !21

.critedge5:                                       ; preds = %bb.k, %bb.j
  %.1109.lcssa = phi i32 [ -1, %bb.k ], [ %.1109147, %bb.j ] ; 2 uses
  %i.bh = sext i32 %.1109.lcssa to i64
  %i.bi = getelementptr i8, ptr %i.c, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  store i8 10, ptr %i.bj, align 1, !tbaa !9
  %i.bk = add nsw i32 %.1109.lcssa, 2             ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !9
  %i.bn = load i8, ptr %i.c, align 16, !tbaa !9
  %i.bo = icmp eq i8 %i.bn, 10
  br i1 %i.bo, label %._crit_edge149, label %bb.l

bb.l:                                             ; preds = %.critedge5
  %i.bp = add nuw nsw i32 %i.bk, %.0107148        ; 4 uses
  %i.bq = add nuw nsw i32 %i.bp, 9
  %i.br = zext nneg i32 %i.bq to i64
end_hunk_0
begin_hunk_1_@PEM_get_EVP_CIPHER_INFO:bb.a
bb.s:                                             ; preds = %bb.q
  %i.aa = tail call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %i.x) #8
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.8, i32 noundef 440) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ac = tail call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %i.x) #8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call fastcc i32 @load_iv(ptr noundef %i.a, ptr noundef nonnull %i.b, i64 noundef %i.ad)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.e, %bb.a, %bb.b, %bb.b, %bb.t, %bb.r, %bb.l, %bb.j, %bb.h, %bb.d
  %.0 = phi i32 [ %i.ae, %bb.u ], [ 0, %bb.d ], [ 1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.f ], [ 1, %bb.b ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_do_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.evp_cipher_ctx_st, align 8  ; 8 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %i.d = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = load i64, ptr %2, align 8, !tbaa !15
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %spec.store.select = select i1 %.not, ptr @PEM_def_callback, ptr %3
  %i.h = call i32 %spec.store.select(ptr noundef nonnull %i.d, i32 noundef 1024, i32 noundef 0, ptr noundef %4) #8 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.8, i32 noundef 347) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = call ptr @EVP_md5() #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = zext nneg i32 %i.h to i64
  %i.n = call i32 @EVP_BytesToKey(ptr noundef %i.j, ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, i64 noundef %i.m, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef null) #8
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = trunc i64 %i.e to i32                    ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !16
  call void @EVP_CIPHER_CTX_init(ptr noundef nonnull %5) #8
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %5, ptr noundef %i.p, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.l) #8
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %.critedge26, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @EVP_DecryptUpdate(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %i.o) #8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge26, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 4, !tbaa !16
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %5, ptr noundef %i.v, ptr noundef nonnull %i.b) #8
  %i.x = icmp eq i32 %i.w, 0
  %i.y = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %5) #8 ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #8
  br i1 %i.x, label %bb.g, label %bb.h

.critedge26:                                      ; preds = %bb.e, %bb.f
  %i.z = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %5) #8 ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 64) #8
  br label %bb.g

bb.g:                                             ; preds = %.critedge26, %.critedge
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.8, i32 noundef 369) #8
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !16
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ac = add nsw i32 %i.ab, %i.aa
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %2, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.a, %bb.h, %bb.g, %bb.c
  %.019 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_ASN1_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_new_fp(ptr noundef %2, i32 noundef 0) #8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str.8, i32 noundef 220) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @PEM_ASN1_write_bio(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PEM_ASN1_write_bio(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.evp_cipher_ctx_st, align 8  ; 9 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 19 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 9 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @EVP_CIPHER_nid(ptr noundef nonnull %4) #8
  %i.i = tail call ptr @OBJ_nid2sn(i32 noundef %i.h) #8 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc ptr @cipher_by_name(ptr noundef nonnull %i.i)
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %4) #8
  %i.n = icmp ult i32 %i.m, 8
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str.8, i32 noundef 244) #8
  br label %.thread58

bb.f:                                             ; preds = %bb.d, %bb.a
  %.036 = phi ptr [ %i.i, %bb.d ], [ null, %bb.a ]
  %i.o = tail call i32 %0(ptr noundef %3, ptr noundef null) #8 ; 3 uses
  store i32 %i.o, ptr %i.g, align 4, !tbaa !16
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 251) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.g, i64 noundef 4) #8
  br label %.thread58

bb.h:                                             ; preds = %bb.f
  %i.q = add nuw i32 %i.o, 20
  %i.r = zext i32 %i.q to i64
  %i.s = tail call ptr @OPENSSL_malloc(i64 noundef %i.r) #8 ; 10 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread58, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.s, ptr %i.c, align 8, !tbaa !13
  %i.u = call i32 %0(ptr noundef %3, ptr noundef nonnull %i.c) #8 ; 3 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !16
  br i1 %.not, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @EVP_CIPHER_iv_length(ptr noundef nonnull %4) #8 ; 5 uses
  %i.w = icmp eq ptr %5, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not50 = icmp eq ptr %7, null
  %spec.store.select = select i1 %.not50, ptr @PEM_def_callback, ptr %7
  %i.x = call i32 %spec.store.select(ptr noundef nonnull %i.d, i32 noundef 1024, i32 noundef 1, ptr noundef %8) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.041 = phi ptr [ %i.d, %bb.k ], [ %5, %bb.j ]  ; 2 uses
  %.040 = phi i32 [ %i.x, %bb.k ], [ %6, %bb.j ]  ; 2 uses
  %i.y = icmp slt i32 %.040, 0
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 9, i32 noundef 0, i32 noundef 111, ptr noundef nonnull @.str.8, i32 noundef 275) #8
  br label %.thread58

bb.n:                                             ; preds = %bb.l
  %i.z = zext i32 %i.v to i64                     ; 4 uses
  %i.aa = call i32 @RAND_bytes(ptr noundef nonnull %i.f, i64 noundef %i.z) #8
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #10
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ac = call ptr @EVP_md5() #8
  %i.ad = zext nneg i32 %.040 to i64
  %i.ae = call i32 @EVP_BytesToKey(ptr noundef nonnull %4, ptr noundef %i.ac, ptr noundef nonnull %i.f, ptr noundef nonnull %.041, i64 noundef %i.ad, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef null) #8
  %.not51 = icmp eq i32 %i.ae, 0
  br i1 %.not51, label %.thread58, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = icmp eq ptr %.041, %i.d
  br i1 %i.af, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i8 0, ptr %i.d, align 16, !tbaa !9
  %i.ag = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.4, i64 noundef 1024) #8 ; 0 uses
  %i.ah = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i64 noundef 1024) #8 ; 0 uses
  %i.ai = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.5, i64 noundef 1024) #8 ; 0 uses
  %i.aj = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.6, i64 noundef 1024) #8 ; 0 uses
  %i.ak = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef %.036, i64 noundef 1024) #8 ; 0 uses
  %i.al = call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.7, i64 noundef 1024) #8 ; 0 uses
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #9 ; 3 uses
  %i.an = sub i64 1022, %i.am
  %i.ao = lshr i64 %i.an, 1
  %i.ap = icmp samesign ult i64 %i.ao, %i.z
  br i1 %i.ap, label %PEM_dek_info.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = getelementptr i8, ptr %i.d, i64 %i.am   ; 3 uses
  %i.ar = icmp eq i32 %i.v, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.z, 4294967294
  br label %bb.t

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod.not = trunc i32 %i.v to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.026.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ck, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.v to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 %.026.i.epil.init
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9   ; 2 uses
  %i.au = lshr i8 %i.at, 4
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = shl nuw nsw i64 %.026.i.epil.init, 1
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay  ; 2 uses
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !9
  %i.ba = and i8 %i.at, 15
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = getelementptr i8, ptr %i.az, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %i.bf = shl nuw nsw i64 %i.z, 1
  %i.bg = getelementptr i8, ptr %i.d, i64 %i.am
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf  ; 2 uses
  store i8 10, ptr %i.bh, align 1, !tbaa !9
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  store i8 0, ptr %i.bi, align 1, !tbaa !9
  br label %PEM_dek_info.exit

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.new
  %.026.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ck, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.t ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 %.026.i
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !9   ; 2 uses
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = shl nuw nsw i64 %.026.i, 1
  %i.bq = getelementptr i8, ptr %i.aq, i64 %i.bp  ; 2 uses
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !9
  %i.br = and i8 %i.bk, 15
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !9
  %i.bw = or disjoint i64 %.026.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9   ; 2 uses
  %i.bz = lshr i8 %i.by, 4
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = shl nuw nsw i64 %i.bw, 1
  %i.ce = getelementptr i8, ptr %i.aq, i64 %i.cd  ; 2 uses
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !9
  %i.cf = and i8 %i.by, 15
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @PEM_dek_info.map, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !9
  %i.ck = add nuw nsw i64 %.026.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !0

PEM_dek_info.exit:                                ; preds = %bb.s, %._crit_edge.i
  call void @EVP_CIPHER_CTX_init(ptr noundef nonnull %9) #8
  %i.cl = call i32 @EVP_EncryptInit_ex(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #8
  %.not52 = icmp eq i32 %i.cl, 0
  br i1 %.not52, label %bb.w, label %bb.u

bb.u:                                             ; preds = %PEM_dek_info.exit
  %i.cm = call i32 @EVP_EncryptUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.s, i32 noundef %i.u) #8
  %.not53 = icmp eq i32 %i.cm, 0
  br i1 %.not53, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !16
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.s, i64 %i.co
  %i.cq = call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %9, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.a) #8
  %.not54 = icmp eq i32 %i.cq, 0
  br i1 %.not54, label %bb.w, label %bb.x

bb.w:                                             ; preds = %PEM_dek_info.exit, %bb.u, %bb.v
  %i.cr = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %9) #8 ; 0 uses
  br label %.thread58

bb.x:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !16
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !16
  %i.cu = add nsw i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !16
  %i.cv = call i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull %9) #8 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  br label %bb.z

bb.y:                                             ; preds = %bb.i
  store i8 0, ptr %i.d, align 16, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.cw = phi i32 [ %.pre, %bb.x ], [ %i.u, %bb.y ]
  %i.cx = sext i32 %i.cw to i64
  %i.cy = call i32 @PEM_write_bio(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, i64 noundef %i.cx) ; 2 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !16
  %i.cz = icmp sgt i32 %i.cy, 0
  %spec.select = zext i1 %i.cz to i32
  br label %.thread58

.thread58:                                        ; preds = %bb.w, %bb.p, %bb.m, %bb.z, %bb.h, %bb.g, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select, %bb.z ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.w ]
  %.037 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ %i.s, %bb.z ], [ %i.s, %bb.m ], [ %i.s, %bb.p ], [ %i.s, %bb.w ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 64) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 16) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %9, i64 noundef 152) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1024) #8
  call void @OPENSSL_free(ptr noundef %.037) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.3
}

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_nid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cipher_by_name(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.32) #9
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @EVP_des_cbc() #8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.33) #9
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @EVP_des_ede3_cbc() #8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.34) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @EVP_aes_128_cbc() #8
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.35) #9
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @EVP_aes_192_cbc() #8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.36) #9
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @EVP_aes_256_cbc() #8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ %i.i, %bb.f ], [ %i.l, %bb.h ], [ %i.o, %bb.j ], [ null, %bb.i ]
  ret ptr %.0
}

declare i32 @EVP_CIPHER_iv_length(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @PEM_def_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 1
end_hunk_1
