inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prov_cipher_hw_aes_gcm_siv_st = type { ptr, ptr, ptr, ptr }
%union.anon = type { i32, [12 x i8] }
%union.anon.0 = type { [4 x i32] }

@aes_gcm_siv_hw = internal constant %struct.prov_cipher_hw_aes_gcm_siv_st { ptr @aes_gcm_siv_initkey, ptr @aes_gcm_siv_cipher, ptr @aes_gcm_siv_dup_ctx, ptr @aes_gcm_siv_clean_ctx }, align 8
@.str = private unnamed_addr constant [12 x i8] c"AES-128-ECB\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"AES-192-ECB\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"AES-256-ECB\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"../../deps/openssl/openssl/providers/implementations/ciphers/cipher_aes_gcm_siv_hw.c\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ossl_prov_cipher_hw_aes_gcm_siv(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @aes_gcm_siv_hw
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_siv_initkey(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %1 = alloca %union.anon, align 4                ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  switch i64 %i.d, label %.loopexit [
    i64 16, label %bb.d
    i64 24, label %bb.b
    i64 32, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.str.2.sink = phi ptr [ @.str.2, %bb.c ], [ @.str.1, %bb.b ], [ @.str, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call ptr @EVP_CIPHER_fetch(ptr noundef %i.f, ptr noundef nonnull %.str.2.sink, ptr noundef null) #6 ; 9 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @EVP_CIPHER_CTX_new() #6   ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = tail call i32 @EVP_EncryptInit_ex2(ptr noundef nonnull %i.l, ptr noundef %i.g, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null) #6
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false)
  store i32 0, ptr %1, align 4, !tbaa !20
  store i32 16, ptr %i.b, align 4, !tbaa !5
  %i.q = load ptr, ptr %0, align 8, !tbaa !19
  %i.r = call i32 @EVP_EncryptUpdate(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef 16) #6
  %.not42 = icmp eq i32 %i.r, 0
  br i1 %.not42, label %.loopexit, label %bb.h

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.a, align 16
  store i64 %i.u, ptr %i.t, align 1
  store i32 1, ptr %1, align 4, !tbaa !20
  store i32 16, ptr %i.b, align 4, !tbaa !5
  %i.v = load ptr, ptr %0, align 8, !tbaa !19
  %i.w = call i32 @EVP_EncryptUpdate(ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef 16) #6
  %.not42.1 = icmp eq i32 %i.w, 0
  br i1 %.not42.1, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load i64, ptr %i.a, align 16
  store i64 %i.y, ptr %i.x, align 1
  %i.z = load i64, ptr %i.c, align 8, !tbaa !9
  %.not49 = icmp eq i64 %i.z, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %.13748 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.j ] ; 2 uses
  %.13947 = phi i32 [ 2, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  store i32 %.13947, ptr %1, align 4, !tbaa !20
  store i32 16, ptr %i.b, align 4, !tbaa !5
  %i.aa = load ptr, ptr %0, align 8, !tbaa !19
  %i.ab = call i32 @EVP_EncryptUpdate(ptr noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef 16) #6
  %.not41 = icmp eq i32 %i.ab, 0
  br i1 %.not41, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.13748
  %i.ad = load i64, ptr %i.a, align 16
  store i64 %i.ad, ptr %i.ac, align 1
  %i.ae = add i32 %.13947, 1
  %i.af = add i64 %.13748, 8                      ; 2 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !9
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.ai = load ptr, ptr %0, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = call i32 @EVP_EncryptInit_ex2(ptr noundef %i.ai, ptr noundef %i.g, ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef null) #6
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, -25
  store i8 %i.an, ptr %i.al, align 8
  call void @EVP_CIPHER_free(ptr noundef %i.g) #6
  br label %bb.l

.loopexit:                                        ; preds = %bb.i, %bb.g, %bb.h, %._crit_edge, %bb.f, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %._crit_edge ], [ %i.g, %bb.h ], [ %i.g, %bb.i ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !19
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.ao) #6
  call void @EVP_CIPHER_free(ptr noundef %.1) #6
  store ptr null, ptr %0, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %.0 = phi i32 [ 0, %.loopexit ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_siv_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %union.anon.0, align 16             ; 7 uses
  %i.e = alloca [2 x i64], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 11 uses
  %i.g = alloca [2 x i64], align 16               ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %5 = alloca %union.anon.0, align 16             ; 7 uses
  %i.k = alloca [2 x i64], align 16               ; 5 uses
  %i.l = alloca [16 x i8], align 16               ; 11 uses
  %i.m = alloca [16 x i8], align 16               ; 5 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8               ; 2 uses
  %i.r = and i8 %i.q, 1
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i8 %i.q, 2
  %i.t = and i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  br label %aes_gcm_siv_finish.exit

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef 16) #6
  %.not7.i = icmp eq i32 %i.x, 0
  %i.y = load i8, ptr %i.p, align 8
  %i.z = lshr i8 %i.y, 1
  %i.aa = and i8 %i.z, 1
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = select i1 %.not7.i, i32 %i.ab, i32 0
  br label %aes_gcm_siv_finish.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %1, null
  br i1 %i.ad, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %3, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  tail call void @CRYPTO_free(ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef 116) #6
  store ptr null, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !24
  br label %aes_gcm_siv_finish.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.ak = add i64 %3, 15
  %i.al = add i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, -16                      ; 4 uses
  %i.an = icmp ugt i64 %i.am, 68719476736
  br i1 %i.an, label %aes_gcm_siv_finish.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = tail call ptr @CRYPTO_realloc(ptr noundef %i.ap, i64 noundef %i.am, ptr noundef nonnull @.str.3, i32 noundef 126) #6 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %aes_gcm_siv_finish.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !23
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %2, i64 %3, i1 false)
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.av = add i64 %i.au, %3                       ; 4 uses
  store i64 %i.av, ptr %i.ai, align 8, !tbaa !24
  %i.aw = icmp ugt i64 %i.am, %i.av
  br i1 %i.aw, label %bb.k, label %aes_gcm_siv_finish.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  %i.az = sub nuw nsw i64 %i.am, %i.av
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.az, i1 false)
  br label %aes_gcm_siv_finish.exit

bb.l:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 7 uses
  %i.bb = load i8, ptr %i.ba, align 8             ; 5 uses
  %i.bc = and i8 %i.bb, 1
  %.not = icmp eq i8 %i.bc, 0
  %i.bd = icmp sgt i64 %3, 68719476736            ; 2 uses
  br i1 %.not, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.be = and i8 %i.bb, -5
  store i8 %i.be, ptr %i.ba, align 8
  %i.bf = and i8 %i.bb, 40
  %or.cond.not55.i = icmp eq i8 %i.bf, 8
  %or.cond52.i = or i1 %i.bd, %or.cond.not55.i
  br i1 %or.cond52.i, label %aes_gcm_siv_encrypt.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bi = shl i64 %i.bh, 3
  store i64 %i.bi, ptr %i.k, align 16, !tbaa !25
  %i.bj = shl i64 %3, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm) #6
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %.not47.i = icmp eq ptr %i.bo, null
  br i1 %.not47.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bq = add i64 %i.bp, 15
  %i.br = and i64 %i.bq, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.bo, i64 noundef %i.br) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = and i64 %3, -16                         ; 3 uses
  %.not48.i = icmp eq i64 %i.bs, 0
  br i1 %.not48.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %2, i64 noundef %i.bs) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = and i64 %3, 15                          ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %i.bs
  %i.bw = sub nuw nsw i64 16, %i.bt
  %i.bx = getelementptr i8, ptr %i.m, i64 %i.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, i8 0, i64 %i.bw, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 1 %i.bv, i64 %i.bt, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef 16) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i64 noundef 16) #6
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168
  %6 = load <12 x i8>, ptr %i.by, align 1, !tbaa !20
  %7 = load <12 x i8>, ptr %i.l, align 16, !tbaa !20
  %8 = xor <12 x i8> %7, %6
  store <12 x i8> %8, ptr %i.l, align 16, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 15 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !20
  %i.cb = and i8 %i.ca, 127
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !20
  store i32 16, ptr %i.n, align 4, !tbaa !5
  %i.cc = load ptr, ptr %0, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ce = call i32 @EVP_EncryptUpdate(ptr noundef %i.cc, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i32 noundef 16) #6
  %.not49.i = icmp eq i32 %i.ce, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %5, ptr noundef nonnull align 8 dereferenceable(15) %i.cd, i64 15, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 151
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.cf = or i8 %.sroa.4.0.copyload.i, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %.sroa.4.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %5, i64 15
  store i8 %i.cf, ptr %.sroa.4.0..sroa_idx53.i, align 1
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %aes_gcm_siv_ctr32.exit.i, label %.lr.ph.preheader.i.i.preheader

.lr.ph.preheader.i.i.preheader:                   ; preds = %bb.t
  %i.cg = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.cg, 16
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader.i.i.preheader, %._crit_edge.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i.i ], [ %3, %.lr.ph.preheader.i.i.preheader ] ; 6 uses
  %.025.i.i = phi i64 [ %i.dw, %._crit_edge.i.i ], [ 0, %.lr.ph.preheader.i.i.preheader ] ; 7 uses
  %.01924.i.i = phi i32 [ %i.dv, %._crit_edge.i.i ], [ 0, %.lr.ph.preheader.i.i.preheader ]
  %umax100 = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umin101 = call i64 @llvm.umin.i64(i64 %umax100, i64 16) ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %umax, i64 16) ; 5 uses
  %i.ch = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 16)
  store i32 16, ptr %i.j, align 4, !tbaa !5
  %i.ci = load ptr, ptr %0, align 8, !tbaa !19
  %i.cj = call i32 @EVP_EncryptUpdate(ptr noundef %i.ci, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %5, i32 noundef 16) #6
  %i.ck = load i32, ptr %5, align 16, !tbaa !20
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %5, align 16, !tbaa !20
  %min.iters.check = icmp ult i64 %indvars.iv.i.i, 4
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i64 %indvars.iv.i.i, 16
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %umin, 16                      ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.025.i.i
  %wide.load = load <16 x i8>, ptr %i.cm, align 1, !tbaa !20
  %wide.load61 = load <16 x i8>, ptr %i.i, align 16, !tbaa !20
  %i.cn = xor <16 x i8> %wide.load61, %wide.load
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.025.i.i
  store <16 x i8> %i.cn, ptr %i.co, align 1, !tbaa !20
  %cmp.n = icmp eq i64 %umin, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.mod.vf = and i64 %umin, 12
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %umin, 28                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.cp = add nuw nsw i64 %index, %.025.i.i       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp
  %wide.load64 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 %index
  %wide.load65 = load <4 x i8>, ptr %i.cr, align 4, !tbaa !20
  %i.cs = xor <4 x i8> %wide.load65, %wide.load64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  store <4 x i8> %i.cs, ptr %i.ct, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec63
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %umin, %n.vec63
  br i1 %cmp.n66, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02023.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec63, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.02023.i.i.ph, 1
  %xtraiter = and i64 %umin101, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.cv = add nuw nsw i64 %.02023.i.i.ph, %.025.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.02023.i.i.ph
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !20
  %i.da = xor i8 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  store i8 %i.da, ptr %i.db, align 1, !tbaa !20
  %i.dc = or disjoint i64 %.02023.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02023.i.i.unr = phi i64 [ %.02023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.prol ]
  %i.dd = icmp eq i64 %umin101, %.neg
  br i1 %i.dd, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02023.i.i = phi i64 [ %i.dt, %.lr.ph.i.i ], [ %.02023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.de = add nuw nsw i64 %.02023.i.i, %.025.i.i  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 %.02023.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = xor i8 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !20
  %i.dl = add nuw nsw i64 %.02023.i.i, 1          ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, %.025.i.i        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dl
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = xor i8 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !20
  %i.dt = add nuw nsw i64 %.02023.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dt, %umax.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %vector.ph
  %.not22.i.i = icmp eq i32 %i.cj, 0
  %i.du = zext i1 %.not22.i.i to i32
  %i.dv = or i32 %.01924.i.i, %i.du               ; 2 uses
  %i.dw = add i64 %.025.i.i, 16                   ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %3
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -16
  br i1 %i.dx, label %iter.check, label %._crit_edge28.loopexit.i.i, !llvm.loop !31

._crit_edge28.loopexit.i.i:                       ; preds = %._crit_edge.i.i
  %i.dy = icmp ne i32 %i.dv, 0
  %i.dz = or i1 %.not49.i, %i.dy
  br label %aes_gcm_siv_ctr32.exit.i

aes_gcm_siv_ctr32.exit.i:                         ; preds = %._crit_edge28.loopexit.i.i, %bb.t
  %.019.lcssa.i.in.i = phi i1 [ %.not49.i, %bb.t ], [ %i.dz, %._crit_edge28.loopexit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  %i.ea = xor i1 %.019.lcssa.i.in.i, true
  %i.eb = zext i1 %i.ea to i32
  %i.ec = load i8, ptr %i.ba, align 8
  %i.ed = and i8 %i.ec, -13
  %i.ee = select i1 %.019.lcssa.i.in.i, i8 8, i8 12
  %i.ef = or disjoint i8 %i.ed, %i.ee
  store i8 %i.ef, ptr %i.ba, align 8
  br label %aes_gcm_siv_encrypt.exit

aes_gcm_siv_encrypt.exit:                         ; preds = %bb.m, %aes_gcm_siv_ctr32.exit.i
  %.0.i19 = phi i32 [ 0, %bb.m ], [ %i.eb, %aes_gcm_siv_ctr32.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %aes_gcm_siv_finish.exit

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.eg = and i8 %i.bb, -6
  store i8 %i.eg, ptr %i.ba, align 8
  %i.eh = and i8 %i.bb, 48
  %or.cond.not55.i20 = icmp eq i8 %i.eh, 16
  %or.cond52.i21 = or i1 %i.bd, %or.cond.not55.i20
  br i1 %or.cond52.i21, label %aes_gcm_siv_decrypt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %4, ptr noundef nonnull align 8 dereferenceable(15) %i.ei, i64 15, i1 false)
  %.sroa.4.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 167
  %.sroa.4.0.copyload.i23 = load i8, ptr %.sroa.4.0..sroa_idx.i22, align 1
  %i.ej = or i8 %.sroa.4.0.copyload.i23, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %.sroa.4.0..sroa_idx53.i24 = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 %i.ej, ptr %.sroa.4.0..sroa_idx53.i24, align 1
  %.not29.i.i25 = icmp eq i64 %3, 0
  br i1 %.not29.i.i25, label %aes_gcm_siv_ctr32.exit.i38, label %.lr.ph.preheader.i.i26.preheader

.lr.ph.preheader.i.i26.preheader:                 ; preds = %bb.v
  %i.ek = sub i64 %i.b, %i.a
  %diff.check68 = icmp ult i64 %i.ek, 16
  br label %iter.check83

iter.check83:                                     ; preds = %.lr.ph.preheader.i.i26.preheader, %._crit_edge.i.i34
  %indvars.iv.i.i27 = phi i64 [ %indvars.iv.next.i.i36, %._crit_edge.i.i34 ], [ %3, %.lr.ph.preheader.i.i26.preheader ] ; 6 uses
  %.025.i.i28 = phi i64 [ %i.ga, %._crit_edge.i.i34 ], [ 0, %.lr.ph.preheader.i.i26.preheader ] ; 7 uses
  %.01924.i.i29 = phi i32 [ %i.fz, %._crit_edge.i.i34 ], [ 0, %.lr.ph.preheader.i.i26.preheader ]
  %umax102 = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i27, i64 1)
  %umin103 = call i64 @llvm.umin.i64(i64 %umax102, i64 16) ; 2 uses
  %umax69 = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i27, i64 1)
  %umin70 = call i64 @llvm.umin.i64(i64 %umax69, i64 16) ; 5 uses
  %i.el = call i64 @llvm.umax.i64(i64 %indvars.iv.i.i27, i64 1)
  %umax.i.i30 = call i64 @llvm.umin.i64(i64 %i.el, i64 16)
  store i32 16, ptr %i.d, align 4, !tbaa !5
  %i.em = load ptr, ptr %0, align 8, !tbaa !19
  %i.en = call i32 @EVP_EncryptUpdate(ptr noundef %i.em, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %4, i32 noundef 16) #6
  %i.eo = load i32, ptr %4, align 16, !tbaa !20
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %4, align 16, !tbaa !20
  %min.iters.check71 = icmp ult i64 %indvars.iv.i.i27, 4
  %or.cond98 = or i1 %min.iters.check71, %diff.check68
  br i1 %or.cond98, label %.lr.ph.i.i31.preheader, label %vector.main.loop.iter.check72

vector.main.loop.iter.check72:                    ; preds = %iter.check83
  %min.iters.check73 = icmp ult i64 %indvars.iv.i.i27, 16
  br i1 %min.iters.check73, label %vec.epilog.ph87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.main.loop.iter.check72
  %n.vec76 = and i64 %umin70, 16                  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %.025.i.i28
  %wide.load78 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !20
  %wide.load79 = load <16 x i8>, ptr %i.c, align 16, !tbaa !20
  %i.er = xor <16 x i8> %wide.load79, %wide.load78
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.025.i.i28
  store <16 x i8> %i.er, ptr %i.es, align 1, !tbaa !20
  %cmp.n81 = icmp eq i64 %umin70, %n.vec76
  br i1 %cmp.n81, label %._crit_edge.i.i34, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %vector.ph74
  %n.mod.vf75 = and i64 %umin70, 12
  %min.epilog.iters.check86 = icmp eq i64 %n.mod.vf75, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i.i31.preheader, label %vec.epilog.ph87, !prof !26

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check85
  %vec.epilog.resume.val82 = phi i64 [ %n.vec76, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check72 ]
  %n.vec89 = and i64 %umin70, 28                  ; 3 uses
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph87
  %index91 = phi i64 [ %vec.epilog.resume.val82, %vec.epilog.ph87 ], [ %index.next94, %vec.epilog.vector.body90 ] ; 3 uses
  %i.et = add nuw nsw i64 %index91, %.025.i.i28   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  %wide.load92 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %index91
  %wide.load93 = load <4 x i8>, ptr %i.ev, align 4, !tbaa !20
  %i.ew = xor <4 x i8> %wide.load93, %wide.load92
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !20
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.ey = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ey, label %vec.epilog.middle.block95, label %vec.epilog.vector.body90, !llvm.loop !32

vec.epilog.middle.block95:                        ; preds = %vec.epilog.vector.body90
  %cmp.n96 = icmp eq i64 %umin70, %n.vec89
  br i1 %cmp.n96, label %._crit_edge.i.i34, label %.lr.ph.i.i31.preheader

.lr.ph.i.i31.preheader:                           ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block95
  %.02023.i.i32.ph = phi i64 [ 0, %iter.check83 ], [ %n.vec76, %vec.epilog.iter.check85 ], [ %n.vec89, %vec.epilog.middle.block95 ] ; 5 uses
  %.neg106 = or disjoint i64 %.02023.i.i32.ph, 1
  %xtraiter104 = and i64 %umin103, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i.i31.prol.loopexit, label %.lr.ph.i.i31.prol

.lr.ph.i.i31.prol:                                ; preds = %.lr.ph.i.i31.preheader
  %i.ez = add nuw nsw i64 %.02023.i.i32.ph, %.025.i.i28 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02023.i.i32.ph
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !20
  %i.fe = xor i8 %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.ez
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !20
  %i.fg = or disjoint i64 %.02023.i.i32.ph, 1
  br label %.lr.ph.i.i31.prol.loopexit

.lr.ph.i.i31.prol.loopexit:                       ; preds = %.lr.ph.i.i31.prol, %.lr.ph.i.i31.preheader
  %.02023.i.i32.unr = phi i64 [ %.02023.i.i32.ph, %.lr.ph.i.i31.preheader ], [ %i.fg, %.lr.ph.i.i31.prol ]
  %i.fh = icmp eq i64 %umin103, %.neg106
  br i1 %i.fh, label %._crit_edge.i.i34, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %.lr.ph.i.i31.prol.loopexit, %.lr.ph.i.i31
  %.02023.i.i32 = phi i64 [ %i.fx, %.lr.ph.i.i31 ], [ %.02023.i.i32.unr, %.lr.ph.i.i31.prol.loopexit ] ; 4 uses
  %i.fi = add nuw nsw i64 %.02023.i.i32, %.025.i.i28 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02023.i.i32
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20
  %i.fn = xor i8 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fi
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !20
  %i.fp = add nuw nsw i64 %.02023.i.i32, 1        ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, %.025.i.i28      ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fp
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !20
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !20
  %i.fx = add nuw nsw i64 %.02023.i.i32, 2        ; 2 uses
  %exitcond.not.i.i33.1 = icmp eq i64 %i.fx, %umax.i.i30
  br i1 %exitcond.not.i.i33.1, label %._crit_edge.i.i34, label %.lr.ph.i.i31, !llvm.loop !33

._crit_edge.i.i34:                                ; preds = %.lr.ph.i.i31.prol.loopexit, %.lr.ph.i.i31, %vec.epilog.middle.block95, %vector.ph74
  %.not22.i.i35 = icmp eq i32 %i.en, 0
  %i.fy = zext i1 %.not22.i.i35 to i32
  %i.fz = or i32 %.01924.i.i29, %i.fy             ; 2 uses
  %i.ga = add i64 %.025.i.i28, 16                 ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %3
  %indvars.iv.next.i.i36 = add i64 %indvars.iv.i.i27, -16
  br i1 %i.gb, label %iter.check83, label %._crit_edge28.loopexit.i.i37, !llvm.loop !31

._crit_edge28.loopexit.i.i37:                     ; preds = %._crit_edge.i.i34
  %i.gc = icmp ne i32 %i.fz, 0
  %i.gd = zext i1 %i.gc to i32
  br label %aes_gcm_siv_ctr32.exit.i38

aes_gcm_siv_ctr32.exit.i38:                       ; preds = %._crit_edge28.loopexit.i.i37, %bb.v
  %.019.lcssa.i.i = phi i32 [ 0, %bb.v ], [ %i.gd, %._crit_edge28.loopexit.i.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !24
  %i.gg = shl i64 %i.gf, 3
  store i64 %i.gg, ptr %i.e, align 16, !tbaa !25
  %i.gh = shl i64 %3, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @ossl_polyval_ghash_init(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.gk) #6
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !23 ; 2 uses
  %.not48.i39 = icmp eq ptr %i.gm, null
  br i1 %.not48.i39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %aes_gcm_siv_ctr32.exit.i38
  %i.gn = load i64, ptr %i.ge, align 8, !tbaa !24
  %i.go = add i64 %i.gn, 15
  %i.gp = and i64 %i.go, -16
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.gm, i64 noundef %i.gp) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %aes_gcm_siv_ctr32.exit.i38
  %i.gq = and i64 %3, -16                         ; 3 uses
  %.not49.i40 = icmp eq i64 %i.gq, 0
  br i1 %.not49.i40, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef %i.gq) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gr = and i64 %3, 15                          ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 %i.gq
  %i.gu = sub nuw nsw i64 16, %i.gr
  %i.gv = getelementptr i8, ptr %i.g, i64 %i.gr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gv, i8 0, i64 %i.gu, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 1 %i.gt, i64 %i.gr, i1 false)
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef 16) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @ossl_polyval_ghash_hash(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 16) #6
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %9 = load <12 x i8>, ptr %i.gw, align 1, !tbaa !20
  %10 = load <12 x i8>, ptr %i.f, align 16, !tbaa !20
  %11 = xor <12 x i8> %10, %9
  store <12 x i8> %11, ptr %i.f, align 16, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !20
  %i.gz = and i8 %i.gy, 127
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !20
  store i32 16, ptr %i.h, align 4, !tbaa !5
  %i.ha = load ptr, ptr %0, align 8, !tbaa !19
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hc = call i32 @EVP_EncryptUpdate(ptr noundef %i.ha, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 16) #6
  %.not50.i = icmp eq i32 %i.hc, 0
  %i.hd = zext i1 %.not50.i to i32
  %i.he = or i32 %.019.lcssa.i.i, %i.hd
  %i.hf = xor i32 %i.he, 1                        ; 2 uses
  %i.hg = trunc nuw nsw i32 %i.hf to i8
  %i.hh = load i8, ptr %i.ba, align 8
  %i.hi = shl nuw nsw i8 %i.hg, 2
  %i.hj = and i8 %i.hh, -21
  %i.hk = or disjoint i8 %i.hi, %i.hj
  %i.hl = or i8 %i.hk, 16
  store i8 %i.hl, ptr %i.ba, align 8
  br label %aes_gcm_siv_decrypt.exit

aes_gcm_siv_decrypt.exit:                         ; preds = %bb.u, %bb.ab
  %.0.i41 = phi i32 [ 0, %bb.u ], [ %i.hf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %aes_gcm_siv_finish.exit

aes_gcm_siv_finish.exit:                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %aes_gcm_siv_decrypt.exit, %aes_gcm_siv_encrypt.exit
  %.0 = phi i32 [ %.0.i41, %aes_gcm_siv_decrypt.exit ], [ %i.ac, %bb.d ], [ %.0.i19, %aes_gcm_siv_encrypt.exit ], [ %i.u, %bb.c ], [ 1, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 1, %bb.k ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_siv_dup_ctx(ptr noundef captures(none) initializes((0, 8)) %0, ptr noundef readonly captures(none) %1) #1 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !19
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_CIPHER_CTX_new() #6   ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  %i.e = tail call i32 @EVP_CIPHER_CTX_copy(ptr noundef nonnull %i.b, ptr noundef %i.d) #6
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ null, %bb.b ]
  tail call void @EVP_CIPHER_CTX_free(ptr noundef %i.f) #6
  store ptr null, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @aes_gcm_siv_clean_ctx(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @EVP_CIPHER_CTX_free(ptr noundef %i.a) #6
  store ptr null, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare i32 @EVP_EncryptInit_ex2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #3

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ossl_polyval_ghash_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ossl_polyval_ghash_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = !{!10, !17, i64 48}
!10 = !{!"prov_aes_gcm_siv_ctx_st", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !17, i64 40, !17, i64 48, !7, i64 56, !7, i64 88, !7, i64 120, !7, i64 136, !7, i64 152, !7, i64 168, !7, i64 184, !6, i64 440, !6, i64 440, !6, i64 440, !6, i64 440, !6, i64 440, !6, i64 440}
!11 = !{!"p1 _ZTS17evp_cipher_ctx_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS29prov_cipher_hw_aes_gcm_siv_st", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!16 = !{!"p1 _ZTS16ossl_provider_st", !12, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!10, !15, i64 24}
!19 = !{!10, !11, i64 0}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!10, !14, i64 16}
!24 = !{!10, !17, i64 40}
!25 = !{!17, !17, i64 0}
!26 = !{!"branch_weights", i32 4, i32 12}
!27 = distinct !{!27, !22, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !22, !28}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22, !28, !29}
!33 = distinct !{!33, !22, !28}
end_hunk_0
