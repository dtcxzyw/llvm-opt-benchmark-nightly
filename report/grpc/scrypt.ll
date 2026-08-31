Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/scrypt?download=true
inline.NumInlined: 40
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [80 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/evp/scrypt.cc\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_PBE_scrypt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %5, 0
  %i.b = icmp eq i64 %6, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i64 1073741823, %5
  %i.d = icmp ugt i64 %6, %i.c
  %i.e = icmp ult i64 %4, 2
  %or.cond3 = or i1 %i.e, %i.d
  br i1 %or.cond3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4)
  %i.g = icmp samesign ugt i64 %i.f, 1
  %i.h = icmp ugt i64 %4, 4294967296
  %or.cond5 = or i1 %i.h, %i.g
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %5, 4                            ; 2 uses
  %i.j = icmp ugt i64 %i.i, 63
  %.highbits = lshr i64 %4, %i.i
  %.not = icmp eq i64 %.highbits, 0
  %or.cond73 = select i1 %i.j, i1 true, i1 %.not
  br i1 %or.cond73, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 161) #5
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %7, 0
  %spec.store.select = select i1 %i.k, i64 68157440, i64 %7
  %i.l = shl i64 %5, 1                            ; 11 uses
  %i.m = shl i64 %5, 7                            ; 3 uses
  %i.n = udiv i64 %spec.store.select, %i.m        ; 2 uses
  %.not70 = icmp ugt i64 %i.n, %6
  br i1 %.not70, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = xor i64 %6, -1
  %i.p = add i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, %4
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @ERR_put_error(i32 noundef 6, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @.str, i32 noundef 173) #5
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.r = mul i64 %i.l, %6                         ; 2 uses
  %i.s = shl i64 %i.r, 6                          ; 2 uses
  %i.t = add nuw nsw i64 %4, 1
  %i.u = add nuw nsw i64 %i.t, %6
  %i.v = mul i64 %i.l, %i.u
  %i.w = tail call ptr @OPENSSL_calloc(i64 noundef %i.v, i64 noundef 64) #5 ; 9 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %i.l ; 8 uses
  %i.aa = tail call ptr @EVP_sha256() #5
  %i.ab = tail call i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1, ptr noundef %i.aa, i64 noundef %i.s, ptr noundef nonnull %i.w) #5
  %.not71 = icmp eq i32 %i.ab, 0
  br i1 %.not71, label %bb.n, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph

_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph:           ; preds = %bb.j
  %i.ac = add nsw i64 %4, -1                      ; 2 uses
  %i.ad = mul i64 %i.l, %i.ac
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.ad ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.us, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i.us:              ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph, %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit.us
  %.075.us = phi i64 [ %i.ah, %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit.us ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.w, i64 %i.m, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.us
  %.03841.i.us = phi i64 [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.us ], [ %i.af, %bb.k ]
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef %i.z, ptr noundef %i.z, i64 noundef range(i64 1, 0) %5)
  %i.af = add nuw nsw i64 %.03841.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.af, %4
  br i1 %exitcond.not.i.us, label %.split.i.preheader.us, label %bb.k, !llvm.loop !11

.split.i.preheader.us:                            ; preds = %bb.k
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef nonnull %i.w, ptr noundef %i.ae, i64 noundef range(i64 1, 0) %5)
  br label %.split.i.us

.split.i.us:                                      ; preds = %.split.i.preheader.us, %.split.i.us
  %.03743.i.us = phi i64 [ %i.ag, %.split.i.us ], [ 0, %.split.i.preheader.us ]
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef nonnull %i.w, ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %5)
  %i.ag = add nuw nsw i64 %.03743.i.us, 1         ; 2 uses
  %exitcond49.not.i.us = icmp eq i64 %i.ag, %4
  br i1 %exitcond49.not.i.us, label %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit.us, label %.split.i.us, !llvm.loop !13

_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit.us: ; preds = %.split.i.us
  %i.ah = add nuw i64 %.075.us, 1                 ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ah, %6
  br i1 %exitcond78.not, label %._crit_edge, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.us, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit74, %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit.us
  %i.ai = tail call ptr @EVP_sha256() #5
  %i.aj = tail call i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.w, i64 noundef %i.s, i32 noundef 1, ptr noundef %i.ai, i64 noundef %9, ptr noundef %8) #5
  %.not72 = icmp ne i32 %i.aj, 0
  %spec.select = zext i1 %.not72 to i32
  br label %bb.n

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph, %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit74
  %.075 = phi i64 [ %i.bz, %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit74 ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.lr.ph ] ; 2 uses
  %i.ak = mul i64 %.075, %i.l
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.w, i64 %i.ak ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.al, i64 %i.m, i1 false)
  br label %bb.m

.lr.ph.us.i.preheader:                            ; preds = %bb.m
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef nonnull %i.al, ptr noundef %i.ae, i64 noundef range(i64 1, 0) %5)
  %i.am = getelementptr [64 x i8], ptr %i.al, i64 %i.l
  %i.an = getelementptr i8, ptr %i.am, i64 -64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.03743.us.i = phi i64 [ %i.bs, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ]
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = zext i32 %i.ao to i64
  %i.aq = and i64 %i.ac, %i.ap
  %i.ar = mul i64 %i.aq, %i.l
  %i.as = getelementptr [64 x i8], ptr %i.z, i64 %i.ar
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.us.i
  %.042.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.br, %bb.l ] ; 4 uses
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %.042.us.i ; 4 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %.042.us.i ; 4 uses
  %i.av = getelementptr [64 x i8], ptr %i.as, i64 %.042.us.i ; 4 uses
  %i.aw = load <4 x i32>, ptr %i.au, align 4, !tbaa !15
  %i.ax = load <4 x i32>, ptr %i.av, align 4, !tbaa !15
  %i.ay = xor <4 x i32> %i.ax, %i.aw
  store <4 x i32> %i.ay, ptr %i.at, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bc = load <4 x i32>, ptr %i.az, align 4, !tbaa !15
  %i.bd = load <4 x i32>, ptr %i.ba, align 4, !tbaa !15
  %i.be = xor <4 x i32> %i.bd, %i.bc
  store <4 x i32> %i.be, ptr %i.bb, align 4, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bi = load <4 x i32>, ptr %i.bf, align 4, !tbaa !15
  %i.bj = load <4 x i32>, ptr %i.bg, align 4, !tbaa !15
  %i.bk = xor <4 x i32> %i.bj, %i.bi
  store <4 x i32> %i.bk, ptr %i.bh, align 4, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bo = load <4 x i32>, ptr %i.bl, align 4, !tbaa !15
  %i.bp = load <4 x i32>, ptr %i.bm, align 4, !tbaa !15
  %i.bq = xor <4 x i32> %i.bp, %i.bo
  store <4 x i32> %i.bq, ptr %i.bn, align 4, !tbaa !15
  %i.br = add nuw i64 %.042.us.i, 1               ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.br, %i.l
  br i1 %exitcond47.not.i, label %._crit_edge.us.i, label %bb.l, !llvm.loop !16

._crit_edge.us.i:                                 ; preds = %bb.l
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef nonnull %i.al, ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %5)
  %i.bs = add nuw nsw i64 %.03743.us.i, 1         ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bs, %4
  br i1 %exitcond48.not.i, label %_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit74, label %.lr.ph.us.i, !llvm.loop !13

bb.m:                                             ; preds = %bb.m, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.03841.i = phi i64 [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.by, %bb.m ] ; 3 uses
  %i.bt = mul i64 %.03841.i, %i.l
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.bt
  %i.bv = add nsw i64 %.03841.i, -1
  %i.bw = mul i64 %i.bv, %i.l
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.bw
  tail call fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr noundef %i.bu, ptr noundef %i.bx, i64 noundef range(i64 1, 0) %5)
  %i.by = add nuw nsw i64 %.03841.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.by, %4
  br i1 %exitcond.not.i, label %.lr.ph.us.i.preheader, label %bb.m, !llvm.loop !11

_ZL11scryptROMixP7block_tmmS0_S0_.exit.loopexit74: ; preds = %._crit_edge.us.i
  %i.bz = add nuw i64 %.075, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %6
  br i1 %exitcond.not, label %._crit_edge, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, !llvm.loop !14

bb.n:                                             ; preds = %._crit_edge, %bb.j
  %.062 = phi i32 [ 0, %bb.j ], [ %spec.select, %._crit_edge ]
  tail call void @OPENSSL_free(ptr noundef nonnull %i.w) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.i, %bb.n, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ %.062, %bb.n ], [ 0, %bb.i ]
  ret i32 %.2
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @OPENSSL_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PKCS5_PBKDF2_HMAC(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_sha256() local_unnamed_addr #1

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14scryptBlockMixP7block_tPKS_m(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 3 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr [64 x i8], ptr %1, i64 %i.a ; 16 uses
  %.sroa.79.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -4
  %.sroa.79.0.copyload = load i32, ptr %.sroa.79.0..sroa_idx, align 1
  %.sroa.74.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -8
  %.sroa.74.0.copyload = load i32, ptr %.sroa.74.0..sroa_idx, align 1
  %.sroa.69.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -12
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 1
  %.sroa.64.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -16
  %.sroa.64.0.copyload = load i32, ptr %.sroa.64.0..sroa_idx, align 1
  %.sroa.59.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -20
  %.sroa.59.0.copyload = load i32, ptr %.sroa.59.0..sroa_idx, align 1
  %.sroa.54.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -24
  %.sroa.54.0.copyload = load i32, ptr %.sroa.54.0..sroa_idx, align 1
  %.sroa.49.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -28
  %.sroa.49.0.copyload = load i32, ptr %.sroa.49.0..sroa_idx, align 1
  %.sroa.44.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -32
  %.sroa.44.0.copyload = load i32, ptr %.sroa.44.0..sroa_idx, align 1
  %.sroa.39.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -36
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -40
  %.sroa.34.0.copyload = load i32, ptr %.sroa.34.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -44
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -48
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -52
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -56
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.b, i64 -60
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 1
  %i.c = getelementptr i8, ptr %i.b, i64 -64
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZL27salsa208_word_specificationP7block_t.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL27salsa208_word_specificationP7block_t.exit
  %.089 = phi i64 [ %i.ge, %_ZL27salsa208_word_specificationP7block_t.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0.088 = phi i32 [ %i.fj, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.0.0.copyload, %.lr.ph.preheader ]
  %.sroa.9.087 = phi i32 [ %i.fk, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.9.0.copyload, %.lr.ph.preheader ]
  %.sroa.14.086 = phi i32 [ %i.fl, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.14.0.copyload, %.lr.ph.preheader ]
  %.sroa.19.085 = phi i32 [ %i.fm, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.19.0.copyload, %.lr.ph.preheader ]
  %.sroa.24.084 = phi i32 [ %i.fn, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.24.0.copyload, %.lr.ph.preheader ]
  %.sroa.29.083 = phi i32 [ %i.fo, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.29.0.copyload, %.lr.ph.preheader ]
  %.sroa.34.082 = phi i32 [ %i.fp, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.34.0.copyload, %.lr.ph.preheader ]
  %.sroa.39.081 = phi i32 [ %i.fq, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.39.0.copyload, %.lr.ph.preheader ]
  %.sroa.44.080 = phi i32 [ %i.fr, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.44.0.copyload, %.lr.ph.preheader ]
  %.sroa.49.079 = phi i32 [ %i.fs, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.49.0.copyload, %.lr.ph.preheader ]
  %.sroa.54.078 = phi i32 [ %i.ft, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.54.0.copyload, %.lr.ph.preheader ]
  %.sroa.59.077 = phi i32 [ %i.fu, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.59.0.copyload, %.lr.ph.preheader ]
  %.sroa.64.076 = phi i32 [ %i.fv, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.64.0.copyload, %.lr.ph.preheader ]
  %.sroa.69.075 = phi i32 [ %i.fw, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.69.0.copyload, %.lr.ph.preheader ]
  %.sroa.74.074 = phi i32 [ %i.fx, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.74.0.copyload, %.lr.ph.preheader ]
  %.sroa.79.073 = phi i32 [ %i.fy, %_ZL27salsa208_word_specificationP7block_t.exit ], [ %.sroa.79.0.copyload, %.lr.ph.preheader ]
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.089 ; 16 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = xor i32 %i.e, %.sroa.0.088               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = xor i32 %i.h, %.sroa.9.087               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %i.l = xor i32 %i.k, %.sroa.14.086              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15
  %i.o = xor i32 %i.n, %.sroa.19.085              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = xor i32 %i.q, %.sroa.24.084              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = xor i32 %i.t, %.sroa.29.083              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = xor i32 %i.w, %.sroa.34.082              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %i.aa = xor i32 %i.z, %.sroa.39.081             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15
  %i.ad = xor i32 %i.ac, %.sroa.44.080            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = xor i32 %i.af, %.sroa.49.079            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = xor i32 %i.ai, %.sroa.54.078            ; 2 uses
end_hunk_0
