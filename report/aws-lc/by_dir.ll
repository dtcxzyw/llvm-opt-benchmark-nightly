Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/by_dir?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x509_lookup_method_st = type { ptr, ptr, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.x509_st, %struct.X509_CINF }
%struct.x509_st = type { ptr, ptr, ptr, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, %union.crypto_mutex_st }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { ptr }
%union.crypto_mutex_st = type { double, [48 x i8] }
%struct.X509_CINF = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ASN1_ENCODING_st }
%struct.ASN1_ENCODING_st = type { ptr, i64, i8 }
%struct.x509_object_st = type { i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.lookup_dir_hashes_st = type { i32, i32 }

@x509_dir_lookup = internal constant %struct.x509_lookup_method_st { ptr @new_dir, ptr @free_dir, ptr @dir_ctrl, ptr @get_cert_by_subject }, align 8
@.str = private unnamed_addr constant [51 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/by_dir.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/%08x.%s%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @X509_LOOKUP_hash_dir() local_unnamed_addr #0 {
bb.a:
  ret ptr @x509_dir_lookup
}

; Function Attrs: nounwind uwtable
define i32 @X509_LOOKUP_add_dir(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i32 @X509_LOOKUP_ctrl(ptr noundef %0, i32 noundef 2, ptr noundef %1, i64 noundef %i.a, ptr noundef null) #10
  ret i32 %i.b
}

declare i32 @X509_LOOKUP_ctrl(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @new_dir(ptr nofree noundef writeonly captures(none) %0) #1 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 8) #10 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @free_dir(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.c, ptr noundef nonnull @sk_BY_DIR_ENTRY_call_free_func, ptr noundef nonnull @by_dir_entry_free) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dir_ctrl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 3
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @X509_get_default_cert_dir_env() #10
  %i.e = tail call ptr @getenv(ptr noundef %i.d) #10 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @X509_get_default_cert_dir() #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  %i.g = tail call fastcc i32 @add_cert_dir(ptr noundef %i.b, ptr noundef %.sink, i32 noundef 1)
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str, i32 noundef 73) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.h = trunc i64 %3 to i32
  %i.i = tail call fastcc i32 @add_cert_dir(ptr noundef %i.b, ptr noundef %2, i32 noundef %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ %i.i, %bb.g ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @get_cert_by_subject(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %union.anon, align 8                ; 8 uses
  %5 = alloca %struct.x509_object_st, align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.lookup_dir_hashes_st, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = icmp eq ptr %2, null
  %.sink214.sroa.gep261 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.sink215.sroa.gep262 = getelementptr inbounds nuw i8, ptr %4, i64 88
  br i1 %i.b, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sink215.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 224
  %.sink214.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 264
  store i32 %1, ptr %5, align 8, !tbaa !31
  %i.c = icmp eq i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 215) #10
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink215.sroa.phi = phi ptr [ %.sink215.sroa.gep, %bb.b ], [ %.sink215.sroa.gep262, %bb.c ]
  %.sink214.sroa.phi = phi ptr [ %.sink214.sroa.gep, %bb.b ], [ %.sink214.sroa.gep261, %bb.c ]
  %.082 = phi ptr [ @.str.1, %bb.b ], [ @.str.2, %bb.c ] ; 3 uses
  store ptr %.sink215.sroa.phi, ptr %4, align 8, !tbaa !16
  store ptr %2, ptr %.sink214.sroa.phi, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.e, align 8, !tbaa !16
  %i.f = call ptr @BUF_MEM_new() #10              ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 7, ptr noundef nonnull @.str, i32 noundef 220) #10
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = call i32 @X509_NAME_hash(ptr noundef nonnull %2) #10
  %i.k = call i32 @X509_NAME_hash_old(ptr noundef nonnull %2) #10
  %i.l = icmp eq i32 %1, 2                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %7 = phi i1 [ true, %bb.g ], [ false, %._crit_edge ]
  %indvars.iv.sroa.phi.sroa.speculated = phi i32 [ %i.j, %bb.g ], [ %i.k, %._crit_edge ] ; 6 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.q = call i64 @OPENSSL_sk_num(ptr noundef %i.p) #10
  %.not150 = icmp eq i64 %i.q, 0
  br i1 %.not150, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.ab
  %.089148 = phi i64 [ %i.cn, %bb.ab ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.s = call ptr @OPENSSL_sk_value(ptr noundef %i.r, i64 noundef %.089148) #10 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #11
  %i.w = shl i64 %i.v, 32
  %sext = add i64 %i.w, 73014444032
  %i.x = ashr exact i64 %sext, 32
  %i.y = call i64 @BUF_MEM_grow(ptr noundef nonnull %i.f, i64 noundef %i.x) #10
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.thread112, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.l, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %.not98 = icmp eq ptr %i.aa, null
  br i1 %.not98, label %.split.split.us.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %indvars.iv.sroa.phi.sroa.speculated, ptr %6, align 4, !tbaa !23
  call void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.s) #10
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ac = call i32 @OPENSSL_sk_find(ptr noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @sk_BY_DIR_HASH_call_cmp_func) #10
  %.not99 = icmp eq i32 %i.ac, 0
  br i1 %.not99, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !33
  %i.af = call ptr @OPENSSL_sk_value(ptr noundef %i.ad, i64 noundef %i.ae) #10 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.086 = phi i32 [ %i.ah, %bb.l ], [ 0, %bb.k ]
  %.0 = phi ptr [ %i.af, %bb.l ], [ null, %bb.k ]
  call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.s) #10
  br label %.split.split.us.preheader

bb.n:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  br i1 %i.c, label %.split.us, label %.split.split

.split.us:                                        ; preds = %bb.n, %.split.us
  %.288.us = phi i32 [ %i.ar, %.split.us ], [ 0, %bb.n ] ; 3 uses
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !37
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.3, ptr noundef %i.al, i32 noundef %indvars.iv.sroa.phi.sroa.speculated, ptr noundef nonnull %.082, i32 noundef %.288.us) #10 ; 0 uses
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !24
  %i.ap = call i32 @X509_load_cert_file(ptr noundef %0, ptr noundef %i.an, i32 noundef %i.ao) #10
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = add nuw nsw i32 %.288.us, 1
  br i1 %i.aq, label %.split125.us, label %.split.us

.split.split.us.preheader:                        ; preds = %bb.j, %bb.m
  %.187.ph = phi i32 [ 0, %bb.j ], [ %.086, %bb.m ]
  %.1.ph = phi ptr [ null, %bb.j ], [ %.0, %bb.m ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %.split.split.us
  %.288.us126 = phi i32 [ %i.bb, %.split.split.us ], [ %.187.ph, %.split.split.us.preheader ] ; 3 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.au = load i64, ptr %i.n, align 8, !tbaa !37
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.3, ptr noundef %i.av, i32 noundef %indvars.iv.sroa.phi.sroa.speculated, ptr noundef nonnull %.082, i32 noundef %.288.us126) #10 ; 0 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !24
  %i.az = call i32 @X509_load_crl_file(ptr noundef %0, ptr noundef %i.ax, i32 noundef %i.ay) #10
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = add nsw i32 %.288.us126, 1
  br i1 %i.ba, label %.split125.us, label %.split.split.us

.split.split:                                     ; preds = %bb.n, %.split.split
  %.288 = phi i32 [ %i.bg, %.split.split ], [ 0, %bb.n ] ; 2 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !37
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.3, ptr noundef %i.be, i32 noundef %indvars.iv.sroa.phi.sroa.speculated, ptr noundef nonnull %.082, i32 noundef %.288) #10 ; 0 uses
  %i.bg = add nuw nsw i32 %.288, 1
  br label %.split.split

.split125.us:                                     ; preds = %.split.us, %.split.split.us
  %.1187 = phi ptr [ %.1.ph, %.split.split.us ], [ null, %.split.us ] ; 2 uses
  %.288116 = phi i32 [ %.288.us126, %.split.split.us ], [ %.288.us, %.split.us ] ; 3 uses
  call void @ERR_clear_error() #10
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.bi) #10
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45
  call void @OPENSSL_sk_sort(ptr noundef %i.bk, ptr noundef nonnull @sk_X509_OBJECT_call_cmp_func) #10
  %i.bl = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.bn = call i32 @OPENSSL_sk_find(ptr noundef %i.bm, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull @sk_X509_OBJECT_call_cmp_func) #10
  %.not100 = icmp eq i32 %i.bn, 0
  br i1 %.not100, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.split125.us
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !33
  %i.br = call ptr @OPENSSL_sk_value(ptr noundef %i.bp, i64 noundef %i.bq) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.split125.us
  %.083 = phi ptr [ %i.br, %bb.o ], [ null, %.split125.us ] ; 3 uses
  %i.bs = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.bt) #10
  br i1 %i.l, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  call void @CRYPTO_MUTEX_lock_write(ptr noundef nonnull %i.s) #10
  %.not101 = icmp eq ptr %.1187, null
  br i1 %.not101, label %bb.r, label %.thread108

bb.r:                                             ; preds = %bb.q
  store i32 %indvars.iv.sroa.phi.sroa.speculated, ptr %6, align 4, !tbaa !23
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  call void @OPENSSL_sk_sort(ptr noundef %i.bv, ptr noundef nonnull @sk_BY_DIR_HASH_call_cmp_func) #10
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.bx = call i32 @OPENSSL_sk_find(ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @sk_BY_DIR_HASH_call_cmp_func) #10
  %.not102 = icmp eq i32 %i.bx, 0
  br i1 %.not102, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ca = call ptr @OPENSSL_sk_value(ptr noundef %i.by, i64 noundef %i.bz) #10 ; 2 uses
  %.not103 = icmp eq ptr %i.ca, null
  br i1 %.not103, label %.thread, label %.thread108

.thread:                                          ; preds = %bb.r, %bb.s
  %i.cb = call ptr @OPENSSL_malloc(i64 noundef 8) #10 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.s) #10
  br label %.thread112

bb.u:                                             ; preds = %.thread
  store i32 %indvars.iv.sroa.phi.sroa.speculated, ptr %i.cb, align 4, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.288116, ptr %i.cd, align 4, !tbaa !34
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.cf = call i64 @OPENSSL_sk_push(ptr noundef %i.ce, ptr noundef nonnull %i.cb) #10
  %.not104 = icmp eq i64 %i.cf, 0
  br i1 %.not104, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.s) #10
  call void @OPENSSL_free(ptr noundef nonnull %i.cb) #10
  br label %.thread112

bb.w:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !21
  call void @OPENSSL_sk_sort(ptr noundef %i.cg, ptr noundef nonnull @sk_BY_DIR_HASH_call_cmp_func) #10
  br label %bb.y

.thread108:                                       ; preds = %bb.q, %bb.s
  %.2111 = phi ptr [ %i.ca, %bb.s ], [ %.1187, %bb.q ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.2111, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34
  %i.cj = icmp slt i32 %i.ci, %.288116
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread108
  store i32 %.288116, ptr %i.ch, align 4, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %.thread108, %bb.x, %bb.w
  call void @CRYPTO_MUTEX_unlock_write(ptr noundef nonnull %i.s) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.not105 = icmp eq ptr %.083, null
  br i1 %.not105, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %.083, align 8, !tbaa !31
  store i32 %i.ck, ptr %3, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.083, i64 8
  %.val = load i64, ptr %i.cm, align 8
  store i64 %.val, ptr %i.cl, align 8
  call void @ERR_clear_error() #10
  br label %.thread112

.thread112:                                       ; preds = %.lr.ph, %bb.aa, %bb.t, %bb.v
  %.292.ph = phi i32 [ 0, %bb.v ], [ 0, %bb.t ], [ 1, %bb.aa ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.cn = add nuw i64 %.089148, 1                 ; 2 uses
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.cp = call i64 @OPENSSL_sk_num(ptr noundef %i.co) #10
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.ab, %bb.h
  br i1 %7, label %bb.h, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %._crit_edge, %.thread112, %bb.f, %bb.d
  %.3 = phi i32 [ 0, %bb.f ], [ %.292.ph, %.thread112 ], [ 0, %bb.d ], [ 0, %._crit_edge ]
  %.084 = phi ptr [ null, %bb.f ], [ %i.f, %.thread112 ], [ null, %bb.d ], [ %i.f, %._crit_edge ]
  call void @BUF_MEM_free(ptr noundef %.084) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %.loopexit
  %.080 = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.080
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal void @by_dir_entry_free(ptr noundef %0) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @CRYPTO_MUTEX_cleanup(ptr noundef nonnull %0) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @OPENSSL_free(ptr noundef %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.d, ptr noundef nonnull @sk_BY_DIR_HASH_call_free_func, ptr noundef nonnull @by_dir_hash_free) #10
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_BY_DIR_ENTRY_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #10
  ret void
}

declare void @CRYPTO_MUTEX_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @by_dir_hash_free(ptr noundef %0) #1 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_BY_DIR_HASH_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  tail call void %0(ptr noundef %1) #10
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @X509_get_default_cert_dir_env() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @add_cert_dir(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !16      ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %.preheader55

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str, i32 noundef 129) #10
  br label %.thread

thread-pre-split:                                 ; preds = %bb.m
  %i.c = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.c, align 1, !tbaa !16
  br label %.preheader55

.preheader55:                                     ; preds = %bb.b, %thread-pre-split
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.b ]
  %.042 = phi ptr [ %.1, %thread-pre-split ], [ %1, %bb.b ] ; 5 uses
  %.041 = phi ptr [ %i.c, %thread-pre-split ], [ %1, %bb.b ] ; 5 uses
  switch i8 %i.d, label %bb.m [
    i8 58, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader55, %.preheader55
  %i.e = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 3 uses
  %i.f = ptrtoint ptr %.041 to i64
  %i.g = ptrtoint ptr %.042 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp eq ptr %.041, %.042
  br i1 %i.i, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call i64 @OPENSSL_sk_num(ptr noundef %i.j) #10
  %.not62 = icmp eq i64 %i.k, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.04358 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
  %i.m = tail call ptr @OPENSSL_sk_value(ptr noundef %i.l, i64 noundef %.04358) #10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #11
  %i.q = icmp eq i64 %i.p, %i.h
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.r = tail call i32 @strncmp(ptr noundef nonnull %i.o, ptr noundef %.042, i64 noundef %i.h) #11
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.t = add nuw i64 %.04358, 1                   ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = tail call i64 @OPENSSL_sk_num(ptr noundef %i.u) #10
end_hunk_0
