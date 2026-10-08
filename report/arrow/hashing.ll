Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/hashing?download=true
inline.NumInlined: 27
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN5arrow18TypedChunkLocationIiEC5Eii = comdat any

$_ZNK5arrow18TypedChunkLocationIiEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIsEC5Ess = comdat any

$_ZNK5arrow18TypedChunkLocationIsEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIaEC5Eaa = comdat any

$_ZNK5arrow18TypedChunkLocationIaEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIhEC5Ehh = comdat any

$_ZNK5arrow18TypedChunkLocationIhEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationItEC5Ett = comdat any

$_ZNK5arrow18TypedChunkLocationItEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIjEC5Ejj = comdat any

$_ZNK5arrow18TypedChunkLocationIjEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIlEC5Ell = comdat any

$_ZNK5arrow18TypedChunkLocationIlEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationImEC5Emm = comdat any

$_ZNK5arrow18TypedChunkLocationImEeqES1_ = comdat any

@_ZN5arrow18TypedChunkLocationIiEC1Eii = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIiEC2Eii
@_ZN5arrow18TypedChunkLocationIsEC1Ess = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationIsEC2Ess
@_ZN5arrow18TypedChunkLocationIaEC1Eaa = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIaEC2Eaa
@_ZN5arrow18TypedChunkLocationIhEC1Ehh = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIhEC2Ehh
@_ZN5arrow18TypedChunkLocationItEC1Ett = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationItEC2Ett
@_ZN5arrow18TypedChunkLocationIjEC1Ejj = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIjEC2Ejj
@_ZN5arrow18TypedChunkLocationIlEC1Ell = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationIlEC2Ell
@_ZN5arrow18TypedChunkLocationImEC1Emm = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationImEC2Emm

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIiEC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIiEC5Eii) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !11
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %2 = icmp eq i32 %i.c, %i.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1
  %5 = ashr i16 %1, 8
  %6 = sext i8 %4 to i16
  %i.d = icmp eq i16 %5, %6
  %7 = select i1 %2, i1 %i.d, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !17
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5arrow8internal17ComputeBitmapHashEPKhmll(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = mul i64 %3, -4132994306676758123
  %i.b = xor i64 %i.a, %1                         ; 4 uses
  %i.c = srem i64 %2, 8                           ; 7 uses
  %i.d = sdiv i64 %2, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 6 uses
  %i.f = lshr i64 %3, 6                           ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 1) ; 4 uses
  %i.g = shl nuw i64 %spec.select.i.i, 6
  %i.h = sub i64 %3, %i.g                         ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %sext.i.i = shl i64 %i.h, 32
  %i.j = ashr i64 %sext.i.i, 35
  %i.k = and i64 %3, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = trunc nsw i64 %i.n to i32                ; 2 uses
  %.not.i.i = icmp ult i64 %3, 128
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %bb.a
  %.not7.i.i = icmp eq i64 %3, 0
  br i1 %.not7.i.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %i.p to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.q = load i64, ptr %i.e, align 1              ; 2 uses
  %i.r = add nsw i64 %i.f, -1
  %i.s = icmp ne i64 %i.f, 0
  %umin.neg.neg = zext i1 %i.s to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.t = add nsw i64 %spec.select.i.i, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 1
  %i.w = freeze i64 %i.v                          ; 3 uses
  %.0.i.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.w, i64 %i.q, i64 %i.c)
  %i.x = mul i64 %.0.i.i.prol, -4132994306676758123 ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4132994306676758123
  %i.ab = xor i64 %i.aa, %i.b
  %i.ac = mul i64 %i.ab, -4132994306676758123     ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %.lcssa32.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.ac, %.lr.ph.i.prol ]
  %.02647.i.unr = phi i64 [ %spec.select.i.i, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %.02746.i.unr = phi i64 [ %i.b, %.lr.ph.preheader.i ], [ %i.ac, %.lr.ph.i.prol ]
  %.sroa.6.045.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %.sroa.23.044.i.unr = phi i64 [ %i.q, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %i.ad = icmp eq i64 %i.r, %umin.neg.neg
  br i1 %i.ad, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02647.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.02647.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02746.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.02746.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.6.045.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.sroa.6.045.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.23.044.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.sroa.23.044.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 8
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = freeze i64 %i.af                        ; 2 uses
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ag, i64 %.sroa.23.044.i, i64 %i.c)
  %i.ah = mul i64 %.0.i.i, -4132994306676758123   ; 2 uses
  %i.ai = lshr i64 %i.ah, 47
  %i.aj = xor i64 %i.ai, %i.ah
  %i.ak = mul i64 %i.aj, -4132994306676758123
  %i.al = xor i64 %i.ak, %.02746.i
  %i.am = mul i64 %i.al, -4132994306676758123
  %i.an = add nsw i64 %.02647.i, -2               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 16 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = freeze i64 %i.ap                        ; 3 uses
  %.0.i.i.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.aq, i64 %i.ag, i64 %i.c)
  %i.ar = mul i64 %.0.i.i.1, -4132994306676758123 ; 2 uses
  %i.as = lshr i64 %i.ar, 47
  %i.at = xor i64 %i.as, %i.ar
  %i.au = mul i64 %i.at, -4132994306676758123
  %i.av = xor i64 %i.au, %i.am
  %i.aw = mul i64 %i.av, -4132994306676758123     ; 2 uses
  %.not.i.1 = icmp eq i64 %i.an, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c, %bb.b
  %.sroa.23.0.lcssa.i = phi i64 [ undef, %bb.b ], [ %.sroa.23.40.insert.ext.i, %bb.c ], [ %.lcssa33.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %.lcssa34.unr, %.lr.ph.i.prol.loopexit ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.027.lcssa.i = phi i64 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %.lcssa32.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %.not29.i = icmp eq i64 %i.n, 0
  br i1 %.not29.i, label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not.i31.i = icmp eq i64 %i.c, 0
  %i.ax = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.ay = sub nsw i32 8, %i.ax
  br i1 %.not.i31.i, label %.preheader.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.az = trunc nsw i64 %i.c to i32
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = add nsw i64 %i.c, 1                     ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 8
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.sroa.23.1.us.i = phi i64 [ %.sroa.23.3.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.23.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.15.0.us.i = phi i32 [ %.sroa.15.1.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.i, %.preheader.i ] ; 11 uses
  %.sroa.6.1.us.i = phi ptr [ %.sroa.6.2.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.6.0.lcssa.i, %.preheader.i ] ; 3 uses
  %.025.us.i = phi i32 [ %i.ck, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.o, %.preheader.i ]
  %.0.us.i = phi i64 [ %i.cj, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ 0, %.preheader.i ]
  %i.bd = icmp slt i32 %.sroa.15.0.us.i, 9
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.1.us.i, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %.sroa.23.40.insert.ext40.us.i = zext i8 %i.bf to i64
  %i.bg = add nsw i32 %.sroa.15.0.us.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

bb.e:                                             ; preds = %.preheader.split.us.i
  %i.bh = icmp sgt i32 %.sroa.15.0.us.i, 0
  br i1 %i.bh, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.e
  %i.bi = load i8, ptr %.sroa.6.1.us.i, align 1, !tbaa !36 ; 8 uses
  %spec.select.i32.us.i = shl i8 %i.bi, 7         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %.sroa.15.0.us.i, 1
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.1

.lr.ph.i.us.i.1:                                  ; preds = %.lr.ph.i.us.i
  %i.bj = lshr exact i8 %spec.select.i32.us.i, 1
  %i.bk = shl i8 %i.bi, 6
  %i.bl = and i8 %i.bk, -128
  %spec.select.i32.us.i.1 = or disjoint i8 %i.bj, %i.bl ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i32 %.sroa.15.0.us.i, 2
  br i1 %exitcond.not.i.us.i.1, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.2

.lr.ph.i.us.i.2:                                  ; preds = %.lr.ph.i.us.i.1
  %i.bm = lshr exact i8 %spec.select.i32.us.i.1, 1
  %i.bn = shl i8 %i.bi, 5
  %i.bo = and i8 %i.bn, -128
  %spec.select.i32.us.i.2 = or disjoint i8 %i.bm, %i.bo ; 2 uses
  %exitcond.not.i.us.i.2 = icmp eq i32 %.sroa.15.0.us.i, 3
  br i1 %exitcond.not.i.us.i.2, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.3

.lr.ph.i.us.i.3:                                  ; preds = %.lr.ph.i.us.i.2
  %i.bp = lshr exact i8 %spec.select.i32.us.i.2, 1
  %i.bq = shl i8 %i.bi, 4
  %i.br = and i8 %i.bq, -128
  %spec.select.i32.us.i.3 = or disjoint i8 %i.bp, %i.br ; 2 uses
  %exitcond.not.i.us.i.3 = icmp eq i32 %.sroa.15.0.us.i, 4
  br i1 %exitcond.not.i.us.i.3, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.4

.lr.ph.i.us.i.4:                                  ; preds = %.lr.ph.i.us.i.3
  %i.bs = lshr i8 %spec.select.i32.us.i.3, 1
  %i.bt = shl i8 %i.bi, 3
  %i.bu = and i8 %i.bt, -128
  %spec.select.i32.us.i.4 = or disjoint i8 %i.bs, %i.bu ; 2 uses
  %exitcond.not.i.us.i.4 = icmp eq i32 %.sroa.15.0.us.i, 5
  br i1 %exitcond.not.i.us.i.4, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.5

.lr.ph.i.us.i.5:                                  ; preds = %.lr.ph.i.us.i.4
  %i.bv = lshr i8 %spec.select.i32.us.i.4, 1
  %i.bw = shl i8 %i.bi, 2
  %i.bx = and i8 %i.bw, -128
  %spec.select.i32.us.i.5 = or disjoint i8 %i.bv, %i.bx ; 2 uses
  %exitcond.not.i.us.i.5 = icmp eq i32 %.sroa.15.0.us.i, 6
  br i1 %exitcond.not.i.us.i.5, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.6

.lr.ph.i.us.i.6:                                  ; preds = %.lr.ph.i.us.i.5
  %i.by = lshr i8 %spec.select.i32.us.i.5, 1
  %i.bz = shl i8 %i.bi, 1
  %i.ca = and i8 %i.bz, -128
  %spec.select.i32.us.i.6 = or disjoint i8 %i.by, %i.ca ; 2 uses
  %exitcond.not.i.us.i.6 = icmp eq i32 %.sroa.15.0.us.i, 7
  br i1 %exitcond.not.i.us.i.6, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.7

.lr.ph.i.us.i.7:                                  ; preds = %.lr.ph.i.us.i.6
  %i.cb = lshr i8 %spec.select.i32.us.i.6, 1
  %i.cc = and i8 %i.bi, -128
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal17ComputeBitmapHashEPKhmll:bb.a
  %i.dt = lshr i8 %spec.select.i32.i.2, 1         ; 2 uses
  %i.du = zext i8 %.sroa.9.2.i.i.2 to i32
  %i.dv = trunc nsw i64 %.sroa.16.1.i.i.2 to i32
  %i.dw = shl nuw nsw i32 1, %i.dv
  %i.dx = and i32 %i.dw, %i.du
  %.not21.i.i.3 = icmp eq i32 %i.dx, 0
  %i.dy = or disjoint i8 %i.dt, -128
  %spec.select.i32.i.3 = select i1 %.not21.i.i.3, i8 %i.dt, i8 %i.dy ; 2 uses
  %i.dz = add nsw i64 %.sroa.16.1.i.i.2, 1        ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 8
  br i1 %i.ea, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !37

bb.m:                                             ; preds = %.lr.ph.i.i.3
  %i.eb = add nsw i64 %.sroa.1319.1.i.i.2, 1      ; 3 uses
  %i.ec = icmp sgt i32 %.sroa.15.0.i, 4
  br i1 %i.ec, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.3
  %.sroa.1319.1.i.i.3 = phi i64 [ %i.eb, %bb.n ], [ %i.eb, %bb.m ], [ %.sroa.1319.1.i.i.2, %.lr.ph.i.i.3 ] ; 2 uses
  %.sroa.16.1.i.i.3 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.dz, %.lr.ph.i.i.3 ] ; 2 uses
  %.sroa.9.2.i.i.3 = phi i8 [ %i.ee, %bb.n ], [ %.sroa.9.2.i.i.2, %bb.m ], [ %.sroa.9.2.i.i.2, %.lr.ph.i.i.3 ] ; 3 uses
  %exitcond.not.i.i.3 = icmp eq i32 %.sroa.15.0.i, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3
  %i.ef = lshr i8 %spec.select.i32.i.3, 1         ; 2 uses
  %i.eg = zext i8 %.sroa.9.2.i.i.3 to i32
  %i.eh = trunc nsw i64 %.sroa.16.1.i.i.3 to i32
  %i.ei = shl nuw nsw i32 1, %i.eh
  %i.ej = and i32 %i.ei, %i.eg
  %.not21.i.i.4 = icmp eq i32 %i.ej, 0
  %i.ek = or disjoint i8 %i.ef, -128
  %spec.select.i32.i.4 = select i1 %.not21.i.i.4, i8 %i.ef, i8 %i.ek ; 2 uses
  %i.el = add nsw i64 %.sroa.16.1.i.i.3, 1        ; 2 uses
  %i.em = icmp eq i64 %i.el, 8
  br i1 %i.em, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !37

bb.o:                                             ; preds = %.lr.ph.i.i.4
  %i.en = add nsw i64 %.sroa.1319.1.i.i.3, 1      ; 3 uses
  %i.eo = icmp sgt i32 %.sroa.15.0.i, 5
  br i1 %i.eo, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.4
  %.sroa.1319.1.i.i.4 = phi i64 [ %i.en, %bb.p ], [ %i.en, %bb.o ], [ %.sroa.1319.1.i.i.3, %.lr.ph.i.i.4 ] ; 2 uses
  %.sroa.16.1.i.i.4 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.el, %.lr.ph.i.i.4 ] ; 2 uses
  %.sroa.9.2.i.i.4 = phi i8 [ %i.eq, %bb.p ], [ %.sroa.9.2.i.i.3, %bb.o ], [ %.sroa.9.2.i.i.3, %.lr.ph.i.i.4 ] ; 3 uses
  %exitcond.not.i.i.4 = icmp eq i32 %.sroa.15.0.i, 5
  br i1 %exitcond.not.i.i.4, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4
  %i.er = lshr i8 %spec.select.i32.i.4, 1         ; 2 uses
  %i.es = zext i8 %.sroa.9.2.i.i.4 to i32
  %i.et = trunc nsw i64 %.sroa.16.1.i.i.4 to i32
  %i.eu = shl nuw nsw i32 1, %i.et
  %i.ev = and i32 %i.eu, %i.es
  %.not21.i.i.5 = icmp eq i32 %i.ev, 0
  %i.ew = or disjoint i8 %i.er, -128
  %spec.select.i32.i.5 = select i1 %.not21.i.i.5, i8 %i.er, i8 %i.ew ; 2 uses
  %i.ex = add nsw i64 %.sroa.16.1.i.i.4, 1        ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 8
  br i1 %i.ey, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !37

bb.q:                                             ; preds = %.lr.ph.i.i.5
  %i.ez = add nsw i64 %.sroa.1319.1.i.i.4, 1      ; 3 uses
  %i.fa = icmp sgt i32 %.sroa.15.0.i, 6
  br i1 %i.fa, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !38

bb.r:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.5
  %.sroa.1319.1.i.i.5 = phi i64 [ %i.ez, %bb.r ], [ %i.ez, %bb.q ], [ %.sroa.1319.1.i.i.4, %.lr.ph.i.i.5 ]
  %.sroa.16.1.i.i.5 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.ex, %.lr.ph.i.i.5 ] ; 2 uses
  %.sroa.9.2.i.i.5 = phi i8 [ %i.fc, %bb.r ], [ %.sroa.9.2.i.i.4, %bb.q ], [ %.sroa.9.2.i.i.4, %.lr.ph.i.i.5 ] ; 3 uses
  %exitcond.not.i.i.5 = icmp eq i32 %.sroa.15.0.i, 6
  br i1 %exitcond.not.i.i.5, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5
  %i.fd = lshr i8 %spec.select.i32.i.5, 1         ; 2 uses
  %i.fe = zext i8 %.sroa.9.2.i.i.5 to i32
  %i.ff = trunc nsw i64 %.sroa.16.1.i.i.5 to i32
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = and i32 %i.fg, %i.fe
  %.not21.i.i.6 = icmp eq i32 %i.fh, 0
  %i.fi = or disjoint i8 %i.fd, -128
  %spec.select.i32.i.6 = select i1 %.not21.i.i.6, i8 %i.fd, i8 %i.fi ; 2 uses
  %i.fj = add nsw i64 %.sroa.16.1.i.i.5, 1        ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 8
  br i1 %i.fk, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !37

bb.s:                                             ; preds = %.lr.ph.i.i.6
  %i.fl = icmp eq i32 %.sroa.15.0.i, 8
  br i1 %i.fl, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.fm = getelementptr i8, ptr %.sroa.6.1.i, i64 %.sroa.1319.1.i.i.5
  %i.fn = getelementptr i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.6
  %.sroa.16.1.i.i.6 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fj, %.lr.ph.i.i.6 ] ; 2 uses
  %.sroa.9.2.i.i.6 = phi i8 [ %i.fo, %bb.t ], [ %.sroa.9.2.i.i.5, %bb.s ], [ %.sroa.9.2.i.i.5, %.lr.ph.i.i.6 ]
  %exitcond.not.i.i.6 = icmp eq i32 %.sroa.15.0.i, 7
  br i1 %exitcond.not.i.i.6, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6
  %i.fp = lshr i8 %spec.select.i32.i.6, 1         ; 2 uses
  %i.fq = zext i8 %.sroa.9.2.i.i.6 to i32
  %i.fr = trunc nsw i64 %.sroa.16.1.i.i.6 to i32
  %i.fs = shl nuw nsw i32 1, %i.fr
  %i.ft = and i32 %i.fs, %i.fq
  %.not21.i.i.7 = icmp eq i32 %i.ft, 0
  %i.fu = or disjoint i8 %i.fp, -128
  %spec.select.i32.i.7 = select i1 %.not21.i.i.7, i8 %i.fp, i8 %i.fu
  %i.fv = icmp eq i64 %.sroa.16.1.i.i.6, 7        ; 0 uses
  br label %._crit_edge.loopexit.i.i

bb.u:                                             ; preds = %.preheader.split.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 1 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1             ; 2 uses
  %i.fy = trunc i64 %.sroa.23.1.i to i32
  %i.fz = and i32 %i.fy, 255
  %i.ga = lshr i32 %i.fz, %i.ax
  %i.gb = zext i8 %i.fx to i32
  %i.gc = shl nuw nsw i32 %i.gb, %i.ay
  %i.gd = or i32 %i.gc, %i.ga
  %.sroa.23.40.insert.ext40.i = zext i8 %i.fx to i64
  %i.ge = add nsw i32 %.sroa.15.0.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i: ; preds = %bb.u, %._crit_edge.i.i
  %.sroa.23.3.i = phi i64 [ %.sroa.23.1.i, %._crit_edge.i.i ], [ %.sroa.23.40.insert.ext40.i, %bb.u ]
  %.sroa.15.1.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.ge, %bb.u ]
  %.sroa.6.2.i = phi ptr [ %.sroa.6.1.i, %._crit_edge.i.i ], [ %i.fw, %bb.u ]
  %.3.i.in.i = phi i32 [ %i.cs, %._crit_edge.i.i ], [ %i.gd, %bb.u ]
  %i.gf = shl i64 %.0.i, 8
  %i.gg = and i32 %.3.i.in.i, 255
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = or disjoint i64 %i.gf, %i.gh            ; 2 uses
  %i.gj = add nsw i32 %.025.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.gj, 0
  br i1 %.not30.i, label %.split.us.i, label %.preheader.split.i, !llvm.loop !34

.split.us.i:                                      ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.us-phi.i = phi i64 [ %i.cj, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.gi, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ]
  %i.gk = xor i64 %.us-phi.i, %.027.lcssa.i
  %i.gl = mul i64 %i.gk, -4132994306676758123
  br label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit

_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit: ; preds = %._crit_edge.i, %.split.us.i
  %.1.i = phi i64 [ %i.gl, %.split.us.i ], [ %.027.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.gm = lshr i64 %.1.i, 47
  %i.gn = xor i64 %i.gm, %.1.i
  %i.go = mul i64 %i.gn, -4132994306676758123     ; 2 uses
  %i.gp = lshr i64 %i.go, 47
  %i.gq = xor i64 %i.gp, %i.go
  ret i64 %i.gq
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !5, i64 0, !5, i64 4}
!8 = !{!7, !5, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !9, i64 0, !9, i64 2}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !4, i64 0, !4, i64 1}
!13 = !{!12, !4, i64 0}
!14 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !4, i64 0, !4, i64 1}
!15 = !{!14, !4, i64 0}
!16 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !9, i64 0, !9, i64 2}
!17 = !{!16, !9, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !5, i64 0, !5, i64 4}
!19 = !{!18, !5, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !20, i64 0, !20, i64 8}
!22 = !{!21, !20, i64 0}
!23 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !20, i64 0, !20, i64 8}
!24 = !{!23, !20, i64 0}
!25 = !{!7, !5, i64 4}
!26 = !{!10, !9, i64 2}
!27 = !{!12, !4, i64 1}
!28 = !{!14, !4, i64 1}
!29 = !{!16, !9, i64 2}
!30 = !{!18, !5, i64 4}
!31 = !{!21, !20, i64 8}
!32 = !{!23, !20, i64 8}
!33 = distinct !{!33, !35}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!4, !4, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
