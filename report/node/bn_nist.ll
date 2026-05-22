inline.NumInlined: 62
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bignum_st = type { ptr, i32, i32, i32, i32 }
%union.anon = type { [3 x i64] }
%union.anon.1 = type { [4 x i64] }
%union.anon.2 = type { [6 x i64] }

@ossl_bignum_nist_p_192 = internal constant %struct.bignum_st { ptr @_nist_p_192, i32 3, i32 3, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_224 = internal constant %struct.bignum_st { ptr @_nist_p_224, i32 4, i32 4, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_256 = internal constant %struct.bignum_st { ptr @_nist_p_256, i32 4, i32 4, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_384 = internal constant %struct.bignum_st { ptr @_nist_p_384, i32 6, i32 6, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_521 = internal constant %struct.bignum_st { ptr @_nist_p_521, i32 9, i32 9, i32 0, i32 2 }, align 8
@BN_nist_mod_192.ossl_bignum_nist_p_192_sqr = internal constant %struct.bignum_st { ptr @_nist_p_192_sqr, i32 6, i32 6, i32 0, i32 2 }, align 8
@_nist_p_192_sqr = internal constant [6 x i64] [i64 1, i64 2, i64 1, i64 -2, i64 -3, i64 -1], align 16
@_nist_p_192 = internal constant [3 x [3 x i64]] [[3 x i64] [i64 -1, i64 -2, i64 -1], [3 x i64] [i64 -2, i64 -3, i64 -1], [3 x i64] [i64 -3, i64 -4, i64 -1]], align 16
@BN_nist_mod_224.ossl_bignum_nist_p_224_sqr = internal constant %struct.bignum_st { ptr @_nist_p_224_sqr, i32 7, i32 7, i32 0, i32 2 }, align 8
@_nist_p_224_sqr = internal constant [7 x i64] [i64 1, i64 -8589934592, i64 -1, i64 8589934592, i64 0, i64 -2, i64 -1], align 16
@_nist_p_224 = internal constant [2 x [4 x i64]] [[4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967295], [4 x i64] [i64 2, i64 -8589934592, i64 -1, i64 8589934591]], align 16
@BN_nist_mod_256.ossl_bignum_nist_p_256_sqr = internal constant %struct.bignum_st { ptr @_nist_p_256_sqr, i32 8, i32 8, i32 0, i32 2 }, align 8
@_nist_p_256_sqr = internal constant [8 x i64] [i64 1, i64 -8589934592, i64 -1, i64 8589934590, i64 8589934590, i64 8589934590, i64 -8589934591, i64 -8589934590], align 16
@_nist_p_256 = internal constant [5 x [4 x i64]] [[4 x i64] [i64 -1, i64 4294967295, i64 0, i64 -4294967295], [4 x i64] [i64 -2, i64 8589934591, i64 0, i64 -8589934590], [4 x i64] [i64 -3, i64 12884901887, i64 0, i64 -12884901885], [4 x i64] [i64 -4, i64 17179869183, i64 0, i64 -17179869180], [4 x i64] [i64 -5, i64 21474836479, i64 0, i64 -21474836475]], align 16
@BN_nist_mod_384.ossl_bignum_nist_p_384_sqr = internal constant %struct.bignum_st { ptr @_nist_p_384_sqr, i32 12, i32 12, i32 0, i32 2 }, align 8
@_nist_p_384_sqr = internal constant [12 x i64] [i64 -8589934591, i64 8589934592, i64 -8589934592, i64 8589934592, i64 1, i64 0, i64 8589934590, i64 -8589934592, i64 -3, i64 -1, i64 -1, i64 -1], align 16
@_nist_p_384 = internal constant [5 x [6 x i64]] [[6 x i64] [i64 4294967295, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 8589934590, i64 -8589934592, i64 -3, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 12884901885, i64 -12884901888, i64 -4, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 17179869180, i64 -17179869184, i64 -5, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 21474836475, i64 -21474836480, i64 -6, i64 -1, i64 -1, i64 -1]], align 16
@BN_nist_mod_521.ossl_bignum_nist_p_521_sqr = internal constant %struct.bignum_st { ptr @_nist_p_521_sqr, i32 17, i32 17, i32 0, i32 2 }, align 8
@_nist_p_521_sqr = internal constant [17 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -1024, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 262143], align 16
@_nist_p_521 = internal constant [9 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 511], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_192() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_224() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_256() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_384() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_521() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_521
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_192(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon, align 8                ; 10 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_192.ossl_bignum_nist_p_192_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_192, ptr noundef %3) #6
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_192, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 3) #6
  %.not113 = icmp eq ptr %i.p, null
  br i1 %.not113, label %bb.l, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0105 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 12 uses
  %i.y = icmp sgt i32 %i.c, 3
  br i1 %i.y, label %.preheader, label %.lr.ph125.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.z = add nsw i32 %i.c, -3
  %i.aa = getelementptr i8, ptr %i.d, i64 24
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aa, i64 %i.ac, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 6
  br i1 %5, label %.lr.ph125.preheader, label %._crit_edge

.lr.ph125.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 3) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -24
  %i.ad = shl i32 %smax, 3
  %i.ae = sub i32 40, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ag, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph125.preheader, %.preheader
  %.0105.val = load i32, ptr %.0105, align 1
  %i.ah = zext i32 %.0105.val to i64
  %i.ai = load i32, ptr %4, align 8, !tbaa !5
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !5
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.am, %i.aj            ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, %i.ah            ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %.0105, align 1
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.0105, i64 4 ; 2 uses
  %.val118 = load i32, ptr %i.ar, align 1
  %i.as = zext i32 %.val118 to i64
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !5
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !5
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.av            ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, %i.as
  %i.bb = add nuw nsw i64 %i.ba, %i.aq            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ar, align 1
  %i.bd = lshr i64 %i.bb, 32
  %i.be = getelementptr inbounds nuw i8, ptr %.0105, i64 8 ; 4 uses
  %.val117 = load i32, ptr %i.be, align 1
  %i.bf = zext i32 %.val117 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !5
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.an, %i.bf
  %i.bk = add nuw nsw i64 %i.bj, %i.bd
  %i.bl = add nuw nsw i64 %i.bk, %i.bi            ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.be, align 1
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0105, i64 12 ; 2 uses
  %.val116 = load i32, ptr %i.bo, align 1
  %i.bp = zext i32 %.val116 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !5
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = add nuw nsw i64 %i.az, %i.bp
  %i.bu = add nuw nsw i64 %i.bt, %i.bs
  %i.bv = add nuw nsw i64 %i.bu, %i.bn            ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.bo, align 1
  %i.bx = lshr i64 %i.bv, 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0105, i64 16 ; 4 uses
  %.val115 = load i32, ptr %i.by, align 1
  %i.bz = zext i32 %.val115 to i64
  %i.ca = add nuw nsw i64 %i.bi, %i.am
  %i.cb = add nuw nsw i64 %i.ca, %i.bz
  %i.cc = add nuw nsw i64 %i.cb, %i.bx            ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.by, align 1
  %i.ce = lshr i64 %i.cc, 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0105, i64 20 ; 2 uses
  %.val = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.val to i64
  %i.ch = add nuw nsw i64 %i.bs, %i.ay
  %i.ci = add nuw nsw i64 %i.ch, %i.cg
  %i.cj = add nuw nsw i64 %i.ci, %i.ce            ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.cf, align 1
  %i.cl = lshr i64 %i.cj, 32                      ; 2 uses
  %.not114 = icmp eq i64 %i.cl, 0
  br i1 %.not114, label %nist_cp_bn.exit122, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cm = add nuw nsw i64 %i.cl, 4294967295
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = getelementptr inbounds nuw [24 x i8], ptr @_nist_p_192, i64 %i.cn
  %i.cp = tail call i64 @bn_sub_words(ptr noundef nonnull %.0105, ptr noundef nonnull %.0105, ptr noundef nonnull %i.co, i32 noundef 3) #6
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = icmp ne i64 %i.cq, 0
  br label %nist_cp_bn.exit122

nist_cp_bn.exit122:                               ; preds = %._crit_edge, %bb.k
  %.0104 = phi i1 [ %i.cr, %bb.k ], [ true, %._crit_edge ]
  %i.cs = call i64 @bn_sub_words(ptr noundef nonnull %i.a, ptr noundef nonnull %.0105, ptr noundef nonnull @_nist_p_192, i32 noundef 3) #6
  %i.ct = icmp ne i64 %i.cs, 0
  %or.cond = select i1 %i.ct, i1 %.0104, i1 false ; 3 uses
  %i.cu = select i1 %or.cond, ptr %.0105, ptr %i.a
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !14
  store i64 %i.cv, ptr %.0105, align 8, !tbaa !14
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.sel = select i1 %or.cond, ptr %i.be, ptr %.sroa.gep
  %i.cw = load i64, ptr %.sroa.sel, align 8, !tbaa !14
  store i64 %i.cw, ptr %i.be, align 8, !tbaa !14
  %.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.sel130 = select i1 %or.cond, ptr %i.by, ptr %.sroa.gep129
  %i.cx = load i64, ptr %.sroa.sel130, align 8, !tbaa !14
  store i64 %i.cx, ptr %i.by, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.cy, align 8, !tbaa !9
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit122, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit122 ], [ %i.o, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #3

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BN_nnmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #3

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_224(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 16 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [4 x i64], align 16               ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !13     ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_224.ossl_bignum_nist_p_224_sqr) #6
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_224, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_224, ptr noundef nonnull %1) #6 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.l, 0
  %i.o = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.o, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.q = icmp ne ptr %i.p, null
  %i.r = zext i1 %i.q to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.o, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 4) #6
  %.not93 = icmp eq ptr %i.s, null
  br i1 %.not93, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.t = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !14
  store i64 %i.u, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
end_hunk_0
begin_hunk_1_@BN_nist_mod_224:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x i64>, ptr %i.aj, align 8, !tbaa !14
  %wide.load117 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load, ptr %i.al, align 16, !tbaa !14
  store <2 x i64> %wide.load117, ptr %i.am, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader118, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader118 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader118
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader118 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.at = icmp samesign ult i32 %i.af, 4
  br i1 %i.at, label %.lr.ph101.preheader, label %._crit_edge

.lr.ph101.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %.082.lcssa116 = phi i32 [ %i.af, %.preheader ], [ 0, %nist_cp_bn.exit ] ; 2 uses
  %i.au = shl nuw nsw i32 %.082.lcssa116, 3
  %i.av = zext nneg i32 %i.au to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.av
  %i.aw = shl nuw nsw i32 %.082.lcssa116, 3
  %narrow = sub nuw nsw i32 32, %i.aw
  %i.ax = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ax, i1 false), !tbaa !14
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.1
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !14
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.2
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph101.preheader, %.preheader
  %i.bk = load i64, ptr %i.a, align 16, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bk, i64 32) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 16, !tbaa !14 ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bm, i64 32) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !14 ; 3 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bp, i64 32) ; 4 uses
  %i.bu = lshr i64 %i.bs, 32                      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.085, i64 24 ; 6 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !14
  %i.bx = and i64 %i.bw, 4294967295
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 16, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.bz = shl i64 %i.bn, 32
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bn, i64 32)
  store i64 %i.cb, ptr %i.ca, align 16, !tbaa !14
  %i.cc = lshr i64 %i.bq, 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !14
  %i.ce = call i64 @bn_add_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 0, ptr %i.c, align 16, !tbaa !14
  %i.cf = shl i64 %i.bt, 32
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !14
  %i.cg = lshr i64 %i.bt, 32
  %i.ch = and i64 %i.bs, -4294967296
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.ca, align 16, !tbaa !14
  store i64 0, ptr %i.cd, align 8, !tbaa !14
  %i.cj = call i64 @bn_add_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 %i.bn, ptr %i.c, align 16, !tbaa !14
  store i64 %i.bq, ptr %i.by, align 8, !tbaa !14
  store i64 %i.bt, ptr %i.ca, align 16, !tbaa !14
  store i64 %i.bu, ptr %i.cd, align 8, !tbaa !14
  %i.ck = call i64 @bn_sub_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 %i.bt, ptr %i.c, align 16, !tbaa !14
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cl = call i64 @bn_sub_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  %i.cm = load i64, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.cn = lshr i64 %i.cm, 32                      ; 3 uses
  %i.co = trunc nuw i64 %i.cn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cq = add nuw nsw i64 %i.cn, 4294967295
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_224, i64 %i.cr
  %i.ct = call i64 @bn_sub_words(ptr noundef nonnull %.085, ptr noundef nonnull %.085, ptr noundef nonnull %i.cs, i32 noundef 4) #6 ; 0 uses
  %i.cu = load i64, ptr %i.bv, align 8, !tbaa !14
  %i.cv = lshr i64 %i.cu, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 1
  br label %nist_cp_bn.exit98

bb.l:                                             ; preds = %._crit_edge
  %i.cz = icmp slt i64 %i.cm, 0
  br i1 %i.cz, label %bb.m, label %nist_cp_bn.exit98

bb.m:                                             ; preds = %bb.l
  %i.da = xor i64 %i.cn, 4294967295
  %i.db = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_224, i64 %i.da
  %i.dc = call i64 @bn_add_words(ptr noundef nonnull %.085, ptr noundef nonnull %.085, ptr noundef nonnull %i.db, i32 noundef 4) #6
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %.not94 = icmp eq i32 %i.dd, 0
  %i.de = select i1 %.not94, ptr @bn_add_words, ptr @bn_sub_words
  br label %nist_cp_bn.exit98

nist_cp_bn.exit98:                                ; preds = %bb.l, %bb.m, %bb.k
  %.084 = phi i32 [ %i.cy, %bb.k ], [ %i.dd, %bb.m ], [ 1, %bb.l ]
  %.083 = phi ptr [ @bn_sub_words, %bb.k ], [ %i.de, %bb.m ], [ @bn_sub_words, %bb.l ]
  %i.df = call i64 %.083(ptr noundef nonnull %i.a, ptr noundef nonnull %.085, ptr noundef nonnull @_nist_p_224, i32 noundef 4) #6, !callees !24
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ne i32 %.084, 0
  %or.cond = select i1 %i.dg, i1 %i.dh, i1 false  ; 4 uses
  %i.di = select i1 %or.cond, ptr %.085, ptr %i.a
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !14
  store i64 %i.dj, ptr %.085, align 8, !tbaa !14
  %.085.sroa.gep = getelementptr inbounds nuw i8, ptr %.085, i64 8 ; 2 uses
  %.sroa.sel = select i1 %or.cond, ptr %.085.sroa.gep, ptr %i.bl
  %i.dk = load i64, ptr %.sroa.sel, align 8, !tbaa !14
  store i64 %i.dk, ptr %.085.sroa.gep, align 8, !tbaa !14
  %.085.sroa.gep106 = getelementptr inbounds nuw i8, ptr %.085, i64 16 ; 2 uses
  %.sroa.sel108 = select i1 %or.cond, ptr %.085.sroa.gep106, ptr %i.bo
  %i.dl = load i64, ptr %.sroa.sel108, align 8, !tbaa !14
  store i64 %i.dl, ptr %.085.sroa.gep106, align 8, !tbaa !14
  %.sroa.sel111 = select i1 %or.cond, ptr %i.bv, ptr %i.br
  %i.dm = load i64, ptr %.sroa.sel111, align 8, !tbaa !14
  store i64 %i.dm, ptr %i.bv, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.dn, align 8, !tbaa !9
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit98, %bb.e, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit98 ], [ %i.r, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i64 @bn_add_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_256(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.1, align 8              ; 12 uses
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_256.ossl_bignum_nist_p_256_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_256, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_256, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 4) #6
  %.not213 = icmp eq ptr %i.p, null
  br i1 %.not213, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !14
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0203 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 16 uses
  %i.ab = icmp sgt i32 %i.c, 4
  br i1 %i.ab, label %.preheader, label %.lr.ph252.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.ac = add nsw i32 %i.c, -4
  %i.ad = getelementptr i8, ptr %i.d, i64 32
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.ad, i64 %i.af, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 8
  br i1 %5, label %.lr.ph252.preheader, label %._crit_edge

.lr.ph252.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -32
  %i.ag = shl i32 %smax, 3
  %i.ah = sub i32 56, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.preheader, %.preheader
  %.0203.val = load i32, ptr %.0203, align 1
  %i.ak = zext i32 %.0203.val to i64
  %i.al = load i32, ptr %4, align 8, !tbaa !5
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !5
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !5
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !5
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %i.as            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !5
  %i.az = zext i32 %i.ay to i64                   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !5
  %i.bc = zext i32 %i.bb to i64                   ; 5 uses
  %.neg230 = add nuw nsw i64 %i.ap, %i.am         ; 3 uses
  %.neg232 = add nuw nsw i64 %.neg230, %i.ak
  %i.bd = add nuw nsw i64 %i.aw, %i.az
  %i.be = add nuw nsw i64 %i.bd, %i.bc
  %i.bf = sub nsw i64 %.neg232, %i.be             ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %.0203, align 1
  %i.bh = ashr i64 %i.bf, 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0203, i64 4 ; 2 uses
  %.val224 = load i32, ptr %i.bi, align 1
  %i.bj = zext i32 %.val224 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !5
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = add nuw nsw i64 %i.az, %i.av            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !5
  %i.bq = zext i32 %i.bp to i64                   ; 7 uses
  %.neg234 = add nuw nsw i64 %i.bm, %i.ap         ; 2 uses
  %i.br = add nuw nsw i64 %i.bn, %i.bc
  %i.bs = sub nsw i64 %.neg234, %i.br
  %i.bt = add nsw i64 %i.bs, %i.bj
  %i.bu = add nsw i64 %i.bt, %i.bh
  %i.bv = sub nsw i64 %i.bu, %i.bq                ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.bi, align 1
  %i.bx = ashr i64 %i.bv, 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0203, i64 8 ; 4 uses
  %.val223 = load i32, ptr %i.by, align 1
  %i.bz = zext i32 %.val223 to i64
  %i.ca = add nuw nsw i64 %i.bc, %i.az            ; 3 uses
  %.neg238 = add nuw nsw i64 %i.bm, %i.as         ; 3 uses
  %i.cb = add nuw nsw i64 %i.ca, %i.bq
  %i.cc = sub nsw i64 %.neg238, %i.cb
  %i.cd = add nsw i64 %i.cc, %i.bz
  %i.ce = add nsw i64 %i.cd, %i.bx                ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.by, align 1
  %i.cg = ashr i64 %i.ce, 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0203, i64 12 ; 2 uses
  %.val222 = load i32, ptr %i.ch, align 1
  %i.ci = zext i32 %.val222 to i64
  %i.cj = shl nuw nsw i64 %i.aw, 1
  %i.ck = add nuw nsw i64 %i.cj, %i.az
  %i.cl = add nuw nsw i64 %.neg230, %i.bq
  %i.cm = sub nsw i64 %i.ck, %i.cl
  %i.cn = add nsw i64 %i.cm, %i.ci
  %i.co = add nsw i64 %i.cn, %i.cg                ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  store i32 %i.cp, ptr %i.ch, align 1
  %i.cq = ashr i64 %i.co, 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0203, i64 16 ; 4 uses
  %.val221 = load i32, ptr %i.cr, align 1
  %i.cs = zext i32 %.val221 to i64
  %i.ct = shl nuw nsw i64 %i.bn, 1
  %i.cu = add nuw nsw i64 %i.ct, %i.bc
  %i.cv = sub nsw i64 %i.cu, %.neg234
  %i.cw = add nsw i64 %i.cv, %i.cs
  %i.cx = add nsw i64 %i.cw, %i.cq                ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  store i32 %i.cy, ptr %i.cr, align 1
  %i.cz = ashr i64 %i.cx, 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0203, i64 20 ; 2 uses
  %.val220 = load i32, ptr %i.da, align 1
  %i.db = zext i32 %.val220 to i64
  %i.dc = shl nuw nsw i64 %i.ca, 1
  %i.dd = add nuw nsw i64 %i.dc, %i.bq
  %i.de = sub nsw i64 %i.dd, %.neg238
  %i.df = add nsw i64 %i.de, %i.db
  %i.dg = add nsw i64 %i.df, %i.cz                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.da, align 1
  %i.di = ashr i64 %i.dg, 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.0203, i64 24 ; 4 uses
  %.val219 = load i32, ptr %i.dj, align 1
  %i.dk = zext i32 %.val219 to i64
  %i.dl = add nuw nsw i64 %i.bq, %i.bc
  %i.dm = shl nuw nsw i64 %i.dl, 1
  %i.dn = sub nsw i64 %i.ca, %.neg230
  %i.do = add nsw i64 %i.dn, %i.dm
  %i.dp = add nsw i64 %i.do, %i.dk
  %i.dq = add nsw i64 %i.dp, %i.di                ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.dj, align 1
  %i.ds = ashr i64 %i.dq, 32
  %i.dt = getelementptr inbounds nuw i8, ptr %.0203, i64 28 ; 2 uses
  %.val = load i32, ptr %i.dt, align 1
  %i.du = zext i32 %.val to i64
  %reass.add = shl nuw nsw i64 %i.bq, 1
  %.neg248 = add nuw nsw i64 %i.bq, %i.am
  %i.dv = add nuw nsw i64 %i.bn, %.neg238
  %i.dw = sub nsw i64 %.neg248, %i.dv
  %i.dx = add nsw i64 %i.dw, %reass.add
  %i.dy = add nsw i64 %i.dx, %i.du
  %i.dz = add nsw i64 %i.dy, %i.ds                ; 3 uses
  %i.ea = trunc i64 %i.dz to i32
  store i32 %i.ea, ptr %i.dt, align 1
  %i.eb = lshr i64 %i.dz, 32                      ; 3 uses
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ee = add nuw nsw i64 %i.eb, 4294967295
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_256, i64 %i.ef
  %i.eh = tail call i64 @bn_sub_words(ptr noundef nonnull %.0203, ptr noundef nonnull %.0203, ptr noundef nonnull %i.eg, i32 noundef 4) #6
  %i.ei = trunc i64 %i.eh to i32
  br label %nist_cp_bn.exit228

bb.l:                                             ; preds = %._crit_edge
  %i.ej = icmp slt i64 %i.dz, 0
  br i1 %i.ej, label %bb.m, label %nist_cp_bn.exit228

bb.m:                                             ; preds = %bb.l
  %i.ek = xor i64 %i.eb, 4294967295
  %i.el = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_256, i64 %i.ek
  %i.em = tail call i64 @bn_add_words(ptr noundef nonnull %.0203, ptr noundef nonnull %.0203, ptr noundef nonnull %i.el, i32 noundef 4) #6
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %.not218 = icmp eq i32 %i.en, 0
  %i.eo = select i1 %.not218, ptr @bn_add_words, ptr @bn_sub_words
  br label %nist_cp_bn.exit228

nist_cp_bn.exit228:                               ; preds = %bb.l, %bb.m, %bb.k
  %.0205 = phi ptr [ @bn_sub_words, %bb.k ], [ %i.eo, %bb.m ], [ @bn_sub_words, %bb.l ]
  %.0202 = phi i32 [ %i.ei, %bb.k ], [ %i.en, %bb.m ], [ 1, %bb.l ]
  %i.ep = call i64 %.0205(ptr noundef nonnull %i.a, ptr noundef nonnull %.0203, ptr noundef nonnull @_nist_p_256, i32 noundef 4) #6, !callees !24
  %i.eq = icmp ne i64 %i.ep, 0
  %i.er = icmp ne i32 %.0202, 0
  %or.cond = select i1 %i.eq, i1 %i.er, i1 false  ; 4 uses
  %i.es = select i1 %or.cond, ptr %.0203, ptr %i.a
  %i.et = load i64, ptr %i.es, align 8, !tbaa !14
  store i64 %i.et, ptr %.0203, align 8, !tbaa !14
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.sel = select i1 %or.cond, ptr %i.by, ptr %.sroa.gep
  %i.eu = load i64, ptr %.sroa.sel, align 8, !tbaa !14
  store i64 %i.eu, ptr %i.by, align 8, !tbaa !14
  %.sroa.gep256 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.sel257 = select i1 %or.cond, ptr %i.cr, ptr %.sroa.gep256
  %i.ev = load i64, ptr %.sroa.sel257, align 8, !tbaa !14
  store i64 %i.ev, ptr %i.cr, align 8, !tbaa !14
  %.sroa.gep259 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.sel260 = select i1 %or.cond, ptr %i.dj, ptr %.sroa.gep259
  %i.ew = load i64, ptr %.sroa.sel260, align 8, !tbaa !14
  store i64 %i.ew, ptr %i.dj, align 8, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.ex, align 8, !tbaa !9
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit228, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit228 ], [ %i.o, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_384(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.2, align 8              ; 16 uses
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_384.ossl_bignum_nist_p_384_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_384, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_384, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 6) #6
  %.not255 = icmp eq ptr %i.p, null
  br i1 %.not255, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !13     ; 7 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !14
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !14
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0245 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 20 uses
  %i.ah = icmp sgt i32 %i.c, 6
  br i1 %i.ah, label %.preheader, label %.lr.ph292.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.ai = add nsw i32 %i.c, -6
  %i.aj = getelementptr i8, ptr %i.d, i64 48
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aj, i64 %i.al, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 12
  br i1 %5, label %.lr.ph292.preheader, label %._crit_edge

.lr.ph292.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 6) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -48
  %i.am = shl i32 %smax, 3
  %i.an = sub i32 88, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph292.preheader, %.preheader
  %.0245.val = load i32, ptr %.0245, align 1
  %i.aq = zext i32 %.0245.val to i64
  %i.ar = load i32, ptr %4, align 8, !tbaa !5
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !5
  %i.av = zext i32 %i.au to i64                   ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !5
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !5
  %i.bb = zext i32 %i.ba to i64                   ; 6 uses
  %i.bc = add nuw nsw i64 %i.ay, %i.as            ; 4 uses
  %i.bd = add nuw nsw i64 %i.bc, %i.aq
  %i.be = add nuw nsw i64 %i.bd, %i.av
  %i.bf = sub nsw i64 %i.be, %i.bb                ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %.0245, align 1
  %i.bh = ashr i64 %i.bf, 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0245, i64 4 ; 2 uses
  %.val269 = load i32, ptr %i.bi, align 1
  %i.bj = zext i32 %.val269 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !5
  %i.bm = zext i32 %i.bl to i64                   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !5
  %i.bp = zext i32 %i.bo to i64                   ; 7 uses
  %.neg276 = add nuw nsw i64 %i.bm, %i.bb
  %i.bq = sub nsw i64 %.neg276, %i.bc
  %i.br = add nsw i64 %i.bq, %i.bj
  %i.bs = add nsw i64 %i.br, %i.bh
  %i.bt = add nsw i64 %i.bs, %i.bp                ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bi, align 1
  %i.bv = ashr i64 %i.bt, 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0245, i64 8 ; 4 uses
  %.val268 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.val268 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !5
  %i.ca = zext i32 %i.bz to i64                   ; 3 uses
  %.neg279 = add nuw nsw i64 %i.ca, %i.bb         ; 2 uses
  %i.cb = add nuw nsw i64 %i.av, %i.bm
  %i.cc = sub nsw i64 %.neg279, %i.cb
  %i.cd = add nsw i64 %i.cc, %i.bx
  %i.ce = add nsw i64 %i.cd, %i.bv                ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.bw, align 1
  %i.cg = ashr i64 %i.ce, 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0245, i64 12 ; 2 uses
  %.val267 = load i32, ptr %i.ch, align 1
  %i.ci = zext i32 %.val267 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !5
  %i.cl = zext i32 %i.ck to i64                   ; 4 uses
  %.neg283 = add nuw nsw i64 %i.bc, %i.av
  %i.cm = add nuw nsw i64 %i.bb, %i.bp
  %i.cn = add nuw nsw i64 %i.cm, %i.ca
  %i.co = sub nsw i64 %.neg283, %i.cn
  %i.cp = add nsw i64 %i.co, %i.ci
  %i.cq = add nsw i64 %i.cp, %i.cl
  %i.cr = add nsw i64 %i.cq, %i.cg                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  store i32 %i.cs, ptr %i.ch, align 1
  %i.ct = ashr i64 %i.cr, 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0245, i64 16 ; 4 uses
  %.val266 = load i32, ptr %i.cu, align 1
  %i.cv = zext i32 %.val266 to i64
  %reass.add = shl nuw nsw i64 %i.av, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !5
  %i.cy = zext i32 %i.cx to i64                   ; 4 uses
  %reass.add256 = shl nuw nsw i64 %i.bb, 1        ; 2 uses
  %i.cz = add nuw nsw i64 %i.bc, %reass.add
  %i.da = sub nsw i64 %i.cz, %reass.add256
  %i.db = add nsw i64 %i.da, %i.bm
  %i.dc = add nsw i64 %i.db, %i.bp
  %i.dd = sub nsw i64 %i.dc, %i.cl
  %i.de = add nsw i64 %i.dd, %i.cv
  %i.df = add nsw i64 %i.de, %i.cy
  %i.dg = add nsw i64 %i.df, %i.ct                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.cu, align 1
  %i.di = ashr i64 %i.dg, 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.0245, i64 20 ; 2 uses
  %.val265 = load i32, ptr %i.dj, align 1
  %i.dk = zext i32 %.val265 to i64
  %reass.add257 = shl nuw nsw i64 %i.bp, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !5
  %i.dn = zext i32 %i.dm to i64                   ; 4 uses
  %i.do = add nuw nsw i64 %.neg279, %i.av
  %i.dp = add nuw nsw i64 %i.do, %i.bm
  %i.dq = add nuw nsw i64 %i.dp, %reass.add257
  %i.dr = sub nsw i64 %i.dq, %i.cy
  %i.ds = add nsw i64 %i.dr, %i.dk
  %i.dt = add nsw i64 %i.ds, %i.dn
  %i.du = add nsw i64 %i.dt, %i.di                ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dj, align 1
  %i.dw = ashr i64 %i.du, 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.0245, i64 24 ; 4 uses
  %.val264 = load i32, ptr %i.dx, align 1
  %i.dy = zext i32 %.val264 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !5
  %i.eb = zext i32 %i.ea to i64                   ; 4 uses
  %i.ec = add nuw nsw i64 %i.ca, %i.bp
  %i.ed = add nuw nsw i64 %i.ec, %reass.add256
  %i.ee = add nuw nsw i64 %i.ed, %i.cl
  %i.ef = sub nsw i64 %i.ee, %i.dn
  %i.eg = add nsw i64 %i.ef, %i.dy
  %i.eh = add nsw i64 %i.eg, %i.eb
  %i.ei = add nsw i64 %i.eh, %i.dw                ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.dx, align 1
  %i.ek = ashr i64 %i.ei, 32
  %i.el = getelementptr inbounds nuw i8, ptr %.0245, i64 28 ; 2 uses
  %.val263 = load i32, ptr %i.el, align 1
  %i.em = zext i32 %.val263 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !5
  %i.ep = zext i32 %i.eo to i64                   ; 3 uses
  %i.eq = add nuw nsw i64 %i.ep, %i.bb            ; 2 uses
  %i.er = add nuw nsw i64 %i.eq, %i.cl
  %i.es = add nuw nsw i64 %i.er, %i.cy
  %i.et = sub nsw i64 %i.es, %i.eb
  %i.eu = add nsw i64 %i.et, %i.em
  %i.ev = add nsw i64 %i.eu, %i.ek                ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  store i32 %i.ew, ptr %i.el, align 1
  %i.ex = ashr i64 %i.ev, 32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0245, i64 32 ; 4 uses
  %.val262 = load i32, ptr %i.ey, align 1
  %i.ez = zext i32 %.val262 to i64
  %i.fa = add nuw nsw i64 %i.cy, %i.ay
  %i.fb = add nuw nsw i64 %i.fa, %i.dn
  %i.fc = sub nsw i64 %i.fb, %i.ep
  %i.fd = add nsw i64 %i.fc, %i.ez
  %i.fe = add nsw i64 %i.fd, %i.ex                ; 2 uses
  %i.ff = trunc i64 %i.fe to i32
  store i32 %i.ff, ptr %i.ey, align 1
  %i.fg = ashr i64 %i.fe, 32
  %i.fh = getelementptr inbounds nuw i8, ptr %.0245, i64 36 ; 2 uses
  %.val261 = load i32, ptr %i.fh, align 1
  %i.fi = zext i32 %.val261 to i64
  %i.fj = add nuw nsw i64 %i.dn, %i.av
  %i.fk = sub nsw i64 %i.fj, %i.ay
  %i.fl = add nsw i64 %i.fk, %i.eb
  %i.fm = add nsw i64 %i.fl, %i.fi
  %i.fn = add nsw i64 %i.fm, %i.fg                ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  store i32 %i.fo, ptr %i.fh, align 1
  %i.fp = ashr i64 %i.fn, 32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0245, i64 40 ; 4 uses
  %.val260 = load i32, ptr %i.fq, align 1
  %i.fr = zext i32 %.val260 to i64
  %i.fs = add nuw nsw i64 %i.eb, %i.bp
  %i.ft = sub nsw i64 %i.fs, %i.av
  %i.fu = add nsw i64 %i.ft, %i.ep
  %i.fv = add nsw i64 %i.fu, %i.fr
  %i.fw = add nsw i64 %i.fv, %i.fp                ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  store i32 %i.fx, ptr %i.fq, align 1
  %i.fy = ashr i64 %i.fw, 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.0245, i64 44 ; 2 uses
  %.val = load i32, ptr %i.fz, align 1
  %i.ga = zext i32 %.val to i64
  %i.gb = add nuw nsw i64 %i.eq, %i.ay
  %i.gc = sub nsw i64 %i.gb, %i.bp
  %i.gd = add nsw i64 %i.gc, %i.ga
  %i.ge = add nsw i64 %i.gd, %i.fy                ; 3 uses
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.fz, align 1
  %i.gg = lshr i64 %i.ge, 32                      ; 3 uses
  %i.gh = trunc nuw i64 %i.gg to i32
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.gj = add nuw nsw i64 %i.gg, 4294967295
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr @_nist_p_384, i64 %i.gk
  %i.gm = tail call i64 @bn_sub_words(ptr noundef nonnull %.0245, ptr noundef nonnull %.0245, ptr noundef nonnull %i.gl, i32 noundef 6) #6
  %i.gn = trunc i64 %i.gm to i32
  br label %nist_cp_bn.exit273

bb.l:                                             ; preds = %._crit_edge
  %i.go = icmp slt i64 %i.ge, 0
  br i1 %i.go, label %bb.m, label %nist_cp_bn.exit273

bb.m:                                             ; preds = %bb.l
  %i.gp = xor i64 %i.gg, 4294967295
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr @_nist_p_384, i64 %i.gp
  %i.gr = tail call i64 @bn_add_words(ptr noundef nonnull %.0245, ptr noundef nonnull %.0245, ptr noundef nonnull %i.gq, i32 noundef 6) #6
end_hunk_1
