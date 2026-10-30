Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/hashing?download=true
inline.NumInlined: 27
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
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
  %i.c = shl i32 %1, 16
  %i.d = ashr exact i32 %i.c, 16
  %i.e = icmp eq i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.g to i32
  %i.i = ashr i32 %1, 16
  %i.j = icmp eq i32 %i.i, %i.h
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
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
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = ashr i16 %1, 8
  %i.h = sext i8 %i.f to i16
  %i.i = icmp eq i16 %i.g, %i.h
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
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
  %i.b = xor i64 %i.a, %1                         ; 3 uses
  %i.c = srem i64 %2, 8                           ; 7 uses
  %i.d = sdiv i64 %2, 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 5 uses
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
  %.not.i.i = icmp ult i64 %3, 128                ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %4

4:                                                ; preds = %bb.a
  %5 = load i64, ptr %i.e, align 1
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i

bb.b:                                             ; preds = %bb.a
  %.not7.i.i = icmp eq i64 %3, 0
  br i1 %.not7.i.i, label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.e, align 1
  %.sroa.23.40.insert.ext.i = zext i8 %i.p to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i

_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i: ; preds = %bb.c, %bb.b, %4
  %.sroa.23.2.i = phi i64 [ undef, %bb.b ], [ %.sroa.23.40.insert.ext.i, %bb.c ], [ %5, %4 ] ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i
  %i.q = add nsw i64 %i.f, -1
  %i.r = icmp ne i64 %i.f, 0
  %umin.neg.neg = zext i1 %i.r to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.s = add nsw i64 %spec.select.i.i, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = freeze i64 %i.u                          ; 3 uses
  %.0.i.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.v, i64 %.sroa.23.2.i, i64 %i.c)
  %i.w = mul i64 %.0.i.i.prol, -4132994306676758123 ; 2 uses
  %i.x = lshr i64 %i.w, 47
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4132994306676758123
  %i.aa = xor i64 %i.z, %i.b
  %i.ab = mul i64 %i.aa, -4132994306676758123     ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i.prol ]
  %.lcssa32.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.prol ]
  %.02647.i.unr = phi i64 [ %spec.select.i.i, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.prol ]
  %.02746.i.unr = phi i64 [ %i.b, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.prol ]
  %.sroa.6.045.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i.prol ]
  %.sroa.23.044.i.unr = phi i64 [ %.sroa.23.2.i, %.lr.ph.preheader.i ], [ %i.v, %.lr.ph.i.prol ]
  %i.ac = icmp eq i64 %i.q, %umin.neg.neg
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02647.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.02647.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02746.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.02746.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.6.045.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.sroa.6.045.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.23.044.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.23.044.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = freeze i64 %i.ae                        ; 2 uses
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.af, i64 %.sroa.23.044.i, i64 %i.c)
  %i.ag = mul i64 %.0.i.i, -4132994306676758123   ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4132994306676758123
  %i.ak = xor i64 %i.aj, %.02746.i
  %i.al = mul i64 %i.ak, -4132994306676758123
  %i.am = add nsw i64 %.02647.i, -2               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = freeze i64 %i.ao                        ; 3 uses
  %.0.i.i.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.ap, i64 %i.af, i64 %i.c)
  %i.aq = mul i64 %.0.i.i.1, -4132994306676758123 ; 2 uses
  %i.ar = lshr i64 %i.aq, 47
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, -4132994306676758123
  %i.au = xor i64 %i.at, %i.al
  %i.av = mul i64 %i.au, -4132994306676758123     ; 2 uses
  %.not.i.1 = icmp eq i64 %i.am, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i
  %.sroa.23.0.lcssa.i = phi i64 [ %.sroa.23.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i ], [ %.lcssa33.unr, %.lr.ph.i.prol.loopexit ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.e, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i ], [ %.lcssa34.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %.027.lcssa.i = phi i64 [ %i.b, %_ZN5arrow8internal16BitmapWordReaderImLb1EEC2EPKhll.exit.i ], [ %.lcssa32.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ] ; 2 uses
  %.not29.i = icmp eq i64 %i.n, 0
  br i1 %.not29.i, label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not.i31.i = icmp eq i64 %i.c, 0
  %i.aw = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.ax = sub nsw i32 8, %i.aw
  br i1 %.not.i31.i, label %.preheader.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.ay = trunc nsw i64 %i.c to i32
  %i.az = shl nuw nsw i32 1, %i.ay
  %i.ba = add nsw i64 %i.c, 1                     ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 8
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.sroa.23.1.us.i = phi i64 [ %.sroa.23.3.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.23.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.15.0.us.i = phi i32 [ %.sroa.15.1.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.i, %.preheader.i ] ; 11 uses
  %.sroa.6.1.us.i = phi ptr [ %.sroa.6.2.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.6.0.lcssa.i, %.preheader.i ] ; 3 uses
  %.025.us.i = phi i32 [ %i.cj, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.o, %.preheader.i ]
  %.0.us.i = phi i64 [ %i.ci, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ 0, %.preheader.i ]
  %i.bc = icmp slt i32 %.sroa.15.0.us.i, 9
  br i1 %i.bc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.6.1.us.i, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  %.sroa.23.40.insert.ext40.us.i = zext i8 %i.be to i64
  %i.bf = add nsw i32 %.sroa.15.0.us.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

bb.e:                                             ; preds = %.preheader.split.us.i
  %i.bg = icmp sgt i32 %.sroa.15.0.us.i, 0
  br i1 %i.bg, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.e
  %i.bh = load i8, ptr %.sroa.6.1.us.i, align 1, !tbaa !36 ; 8 uses
  %spec.select.i32.us.i = shl i8 %i.bh, 7         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %.sroa.15.0.us.i, 1
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.1

.lr.ph.i.us.i.1:                                  ; preds = %.lr.ph.i.us.i
  %i.bi = lshr exact i8 %spec.select.i32.us.i, 1
  %i.bj = shl i8 %i.bh, 6
  %i.bk = and i8 %i.bj, -128
  %spec.select.i32.us.i.1 = or disjoint i8 %i.bi, %i.bk ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i32 %.sroa.15.0.us.i, 2
  br i1 %exitcond.not.i.us.i.1, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.2

.lr.ph.i.us.i.2:                                  ; preds = %.lr.ph.i.us.i.1
  %i.bl = lshr exact i8 %spec.select.i32.us.i.1, 1
  %i.bm = shl i8 %i.bh, 5
  %i.bn = and i8 %i.bm, -128
  %spec.select.i32.us.i.2 = or disjoint i8 %i.bl, %i.bn ; 2 uses
  %exitcond.not.i.us.i.2 = icmp eq i32 %.sroa.15.0.us.i, 3
  br i1 %exitcond.not.i.us.i.2, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.3

.lr.ph.i.us.i.3:                                  ; preds = %.lr.ph.i.us.i.2
  %i.bo = lshr exact i8 %spec.select.i32.us.i.2, 1
  %i.bp = shl i8 %i.bh, 4
  %i.bq = and i8 %i.bp, -128
  %spec.select.i32.us.i.3 = or disjoint i8 %i.bo, %i.bq ; 2 uses
  %exitcond.not.i.us.i.3 = icmp eq i32 %.sroa.15.0.us.i, 4
  br i1 %exitcond.not.i.us.i.3, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.4

.lr.ph.i.us.i.4:                                  ; preds = %.lr.ph.i.us.i.3
  %i.br = lshr i8 %spec.select.i32.us.i.3, 1
  %i.bs = shl i8 %i.bh, 3
  %i.bt = and i8 %i.bs, -128
  %spec.select.i32.us.i.4 = or disjoint i8 %i.br, %i.bt ; 2 uses
  %exitcond.not.i.us.i.4 = icmp eq i32 %.sroa.15.0.us.i, 5
  br i1 %exitcond.not.i.us.i.4, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.5

.lr.ph.i.us.i.5:                                  ; preds = %.lr.ph.i.us.i.4
  %i.bu = lshr i8 %spec.select.i32.us.i.4, 1
  %i.bv = shl i8 %i.bh, 2
  %i.bw = and i8 %i.bv, -128
  %spec.select.i32.us.i.5 = or disjoint i8 %i.bu, %i.bw ; 2 uses
  %exitcond.not.i.us.i.5 = icmp eq i32 %.sroa.15.0.us.i, 6
  br i1 %exitcond.not.i.us.i.5, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.6

.lr.ph.i.us.i.6:                                  ; preds = %.lr.ph.i.us.i.5
  %i.bx = lshr i8 %spec.select.i32.us.i.5, 1
  %i.by = shl i8 %i.bh, 1
  %i.bz = and i8 %i.by, -128
  %spec.select.i32.us.i.6 = or disjoint i8 %i.bx, %i.bz ; 2 uses
  %exitcond.not.i.us.i.6 = icmp eq i32 %.sroa.15.0.us.i, 7
  br i1 %exitcond.not.i.us.i.6, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.7

.lr.ph.i.us.i.7:                                  ; preds = %.lr.ph.i.us.i.6
  %i.ca = lshr i8 %spec.select.i32.us.i.6, 1
  %i.cb = and i8 %i.bh, -128
  %spec.select.i32.us.i.7 = or disjoint i8 %i.ca, %i.cb
  br label %._crit_edge.loopexit.i.us.i

._crit_edge.loopexit.i.us.i:                      ; preds = %.lr.ph.i.us.i.7, %.lr.ph.i.us.i.6, %.lr.ph.i.us.i.5, %.lr.ph.i.us.i.4, %.lr.ph.i.us.i.3, %.lr.ph.i.us.i.2, %.lr.ph.i.us.i.1, %.lr.ph.i.us.i
  %spec.select.i32.us.i.lcssa = phi i8 [ %spec.select.i32.us.i, %.lr.ph.i.us.i ], [ %spec.select.i32.us.i.1, %.lr.ph.i.us.i.1 ], [ %spec.select.i32.us.i.2, %.lr.ph.i.us.i.2 ], [ %spec.select.i32.us.i.3, %.lr.ph.i.us.i.3 ], [ %spec.select.i32.us.i.4, %.lr.ph.i.us.i.4 ], [ %spec.select.i32.us.i.5, %.lr.ph.i.us.i.5 ], [ %spec.select.i32.us.i.6, %.lr.ph.i.us.i.6 ], [ %spec.select.i32.us.i.7, %.lr.ph.i.us.i.7 ]
  %i.cc = zext i8 %spec.select.i32.us.i.lcssa to i32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %._crit_edge.loopexit.i.us.i, %bb.e
  %.015.lcssa.i.us.i = phi i32 [ 0, %bb.e ], [ %i.cc, %._crit_edge.loopexit.i.us.i ]
  %i.cd = sub nsw i32 8, %.sroa.15.0.us.i
  %i.ce = lshr i32 %.015.lcssa.i.us.i, %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i: ; preds = %._crit_edge.i.us.i, %bb.d
  %.sroa.23.3.us.i = phi i64 [ %.sroa.23.1.us.i, %._crit_edge.i.us.i ], [ %.sroa.23.40.insert.ext40.us.i, %bb.d ]
  %.sroa.15.1.us.i = phi i32 [ 0, %._crit_edge.i.us.i ], [ %i.bf, %bb.d ]
  %.sroa.6.2.us.i = phi ptr [ %.sroa.6.1.us.i, %._crit_edge.i.us.i ], [ %i.bd, %bb.d ]
  %.3.i.us.i = phi i64 [ %i.cf, %._crit_edge.i.us.i ], [ %.sroa.23.1.us.i, %bb.d ]
  %i.cg = shl i64 %.0.us.i, 8
  %i.ch = and i64 %.3.i.us.i, 255
  %i.ci = or disjoint i64 %i.ch, %i.cg            ; 2 uses
  %i.cj = add nsw i32 %.025.us.i, -1              ; 2 uses
  %.not30.us.i = icmp eq i32 %i.cj, 0
  br i1 %.not30.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !34

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i
  %.sroa.23.1.i = phi i64 [ %.sroa.23.3.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.23.0.lcssa.i, %.preheader.split.i.preheader ] ; 2 uses
  %.sroa.15.0.i = phi i32 [ %.sroa.15.1.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.i, %.preheader.split.i.preheader ] ; 18 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.6.0.lcssa.i, %.preheader.split.i.preheader ] ; 10 uses
  %.025.i = phi i32 [ %i.gi, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.o, %.preheader.split.i.preheader ]
  %.0.i = phi i64 [ %i.gh, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ 0, %.preheader.split.i.preheader ]
  %i.ck = icmp slt i32 %.sroa.15.0.i, 9
  br i1 %i.ck, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.preheader.split.i
  %i.cl = icmp sgt i32 %.sroa.15.0.i, 0
  br i1 %i.cl, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cm = load i8, ptr %.sroa.6.1.i, align 1, !tbaa !36 ; 3 uses
  %i.cn = zext i8 %i.cm to i32
  %i.co = and i32 %i.az, %i.cn
  %.not21.i.i = icmp eq i32 %i.co, 0
  %spec.select.i32.i = select i1 %.not21.i.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.bb, label %bb.g, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, !prof !37

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %spec.select.i32.i.lcssa = phi i8 [ %spec.select.i32.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i ], [ %spec.select.i32.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1 ], [ %spec.select.i32.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2 ], [ %spec.select.i32.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3 ], [ %spec.select.i32.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4 ], [ %spec.select.i32.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5 ], [ %spec.select.i32.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6 ], [ %spec.select.i32.i.7, %.lr.ph.i.i.7 ]
  %i.cp = zext i8 %spec.select.i32.i.lcssa to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.015.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.cp, %._crit_edge.loopexit.i.i ]
  %i.cq = sub nsw i32 8, %.sroa.15.0.i
  %i.cr = lshr i32 %.015.lcssa.i.i, %i.cq
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i

bb.g:                                             ; preds = %.lr.ph.preheader.i.i
  %.not = icmp eq i32 %.sroa.15.0.i, 1
  br i1 %.not, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, label %bb.h, !prof !37

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.preheader.i.i
  %.sroa.1319.1.i.i = phi i64 [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.16.1.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.9.2.i.i = phi i8 [ %i.ct, %bb.h ], [ %i.cm, %bb.g ], [ %i.cm, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %.sroa.15.0.i, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %i.cu = lshr exact i8 %spec.select.i32.i, 1     ; 2 uses
  %i.cv = zext i8 %.sroa.9.2.i.i to i32
  %i.cw = trunc nsw i64 %.sroa.16.1.i.i to i32
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = and i32 %i.cx, %i.cv
  %.not21.i.i.1 = icmp eq i32 %i.cy, 0
  %i.cz = or disjoint i8 %i.cu, -128
  %spec.select.i32.i.1 = select i1 %.not21.i.i.1, i8 %i.cu, i8 %i.cz ; 2 uses
  %i.da = add nsw i64 %.sroa.16.1.i.i, 1          ; 2 uses
  %i.db = icmp eq i64 %i.da, 8
  br i1 %i.db, label %bb.i, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, !prof !37

bb.i:                                             ; preds = %.lr.ph.i.i.1
  %i.dc = add nuw nsw i64 %.sroa.1319.1.i.i, 1    ; 3 uses
  %i.dd = icmp sgt i32 %.sroa.15.0.i, 2
  br i1 %i.dd, label %bb.j, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, !prof !38

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 %i.dc
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.1
  %.sroa.1319.1.i.i.1 = phi i64 [ %i.dc, %bb.j ], [ %i.dc, %bb.i ], [ %.sroa.1319.1.i.i, %.lr.ph.i.i.1 ] ; 2 uses
  %.sroa.16.1.i.i.1 = phi i64 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.da, %.lr.ph.i.i.1 ] ; 2 uses
  %.sroa.9.2.i.i.1 = phi i8 [ %i.df, %bb.j ], [ %.sroa.9.2.i.i, %bb.i ], [ %.sroa.9.2.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %exitcond.not.i.i.1 = icmp eq i32 %.sroa.15.0.i, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1
  %i.dg = lshr exact i8 %spec.select.i32.i.1, 1   ; 2 uses
  %i.dh = zext i8 %.sroa.9.2.i.i.1 to i32
  %i.di = trunc nsw i64 %.sroa.16.1.i.i.1 to i32
  %i.dj = shl nuw nsw i32 1, %i.di
  %i.dk = and i32 %i.dj, %i.dh
  %.not21.i.i.2 = icmp eq i32 %i.dk, 0
  %i.dl = or disjoint i8 %i.dg, -128
  %spec.select.i32.i.2 = select i1 %.not21.i.i.2, i8 %i.dg, i8 %i.dl ; 2 uses
  %i.dm = add nsw i64 %.sroa.16.1.i.i.1, 1        ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 8
  br i1 %i.dn, label %bb.k, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, !prof !37

bb.k:                                             ; preds = %.lr.ph.i.i.2
  %i.do = add nsw i64 %.sroa.1319.1.i.i.1, 1      ; 3 uses
  %i.dp = icmp sgt i32 %.sroa.15.0.i, 3
  br i1 %i.dp, label %bb.l, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.do
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.2
  %.sroa.1319.1.i.i.2 = phi i64 [ %i.do, %bb.l ], [ %i.do, %bb.k ], [ %.sroa.1319.1.i.i.1, %.lr.ph.i.i.2 ] ; 2 uses
  %.sroa.16.1.i.i.2 = phi i64 [ 0, %bb.l ], [ 0, %bb.k ], [ %i.dm, %.lr.ph.i.i.2 ] ; 2 uses
  %.sroa.9.2.i.i.2 = phi i8 [ %i.dr, %bb.l ], [ %.sroa.9.2.i.i.1, %bb.k ], [ %.sroa.9.2.i.i.1, %.lr.ph.i.i.2 ] ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i32 %.sroa.15.0.i, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2
  %i.ds = lshr i8 %spec.select.i32.i.2, 1         ; 2 uses
  %i.dt = zext i8 %.sroa.9.2.i.i.2 to i32
  %i.du = trunc nsw i64 %.sroa.16.1.i.i.2 to i32
  %i.dv = shl nuw nsw i32 1, %i.du
  %i.dw = and i32 %i.dv, %i.dt
  %.not21.i.i.3 = icmp eq i32 %i.dw, 0
  %i.dx = or disjoint i8 %i.ds, -128
  %spec.select.i32.i.3 = select i1 %.not21.i.i.3, i8 %i.ds, i8 %i.dx ; 2 uses
  %i.dy = add nsw i64 %.sroa.16.1.i.i.2, 1        ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 8
  br i1 %i.dz, label %bb.m, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !37

bb.m:                                             ; preds = %.lr.ph.i.i.3
  %i.ea = add nsw i64 %.sroa.1319.1.i.i.2, 1      ; 3 uses
  %i.eb = icmp sgt i32 %.sroa.15.0.i, 4
  br i1 %i.eb, label %bb.n, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3: ; preds = %bb.n, %bb.m, %.lr.ph.i.i.3
  %.sroa.1319.1.i.i.3 = phi i64 [ %i.ea, %bb.n ], [ %i.ea, %bb.m ], [ %.sroa.1319.1.i.i.2, %.lr.ph.i.i.3 ] ; 2 uses
  %.sroa.16.1.i.i.3 = phi i64 [ 0, %bb.n ], [ 0, %bb.m ], [ %i.dy, %.lr.ph.i.i.3 ] ; 2 uses
  %.sroa.9.2.i.i.3 = phi i8 [ %i.ed, %bb.n ], [ %.sroa.9.2.i.i.2, %bb.m ], [ %.sroa.9.2.i.i.2, %.lr.ph.i.i.3 ] ; 3 uses
  %exitcond.not.i.i.3 = icmp eq i32 %.sroa.15.0.i, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3
  %i.ee = lshr i8 %spec.select.i32.i.3, 1         ; 2 uses
  %i.ef = zext i8 %.sroa.9.2.i.i.3 to i32
  %i.eg = trunc nsw i64 %.sroa.16.1.i.i.3 to i32
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = and i32 %i.eh, %i.ef
  %.not21.i.i.4 = icmp eq i32 %i.ei, 0
  %i.ej = or disjoint i8 %i.ee, -128
  %spec.select.i32.i.4 = select i1 %.not21.i.i.4, i8 %i.ee, i8 %i.ej ; 2 uses
  %i.ek = add nsw i64 %.sroa.16.1.i.i.3, 1        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 8
  br i1 %i.el, label %bb.o, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !37

bb.o:                                             ; preds = %.lr.ph.i.i.4
  %i.em = add nsw i64 %.sroa.1319.1.i.i.3, 1      ; 3 uses
  %i.en = icmp sgt i32 %.sroa.15.0.i, 5
  br i1 %i.en, label %bb.p, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.eo = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.4
  %.sroa.1319.1.i.i.4 = phi i64 [ %i.em, %bb.p ], [ %i.em, %bb.o ], [ %.sroa.1319.1.i.i.3, %.lr.ph.i.i.4 ] ; 2 uses
  %.sroa.16.1.i.i.4 = phi i64 [ 0, %bb.p ], [ 0, %bb.o ], [ %i.ek, %.lr.ph.i.i.4 ] ; 2 uses
  %.sroa.9.2.i.i.4 = phi i8 [ %i.ep, %bb.p ], [ %.sroa.9.2.i.i.3, %bb.o ], [ %.sroa.9.2.i.i.3, %.lr.ph.i.i.4 ] ; 3 uses
  %exitcond.not.i.i.4 = icmp eq i32 %.sroa.15.0.i, 5
  br i1 %exitcond.not.i.i.4, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4
  %i.eq = lshr i8 %spec.select.i32.i.4, 1         ; 2 uses
  %i.er = zext i8 %.sroa.9.2.i.i.4 to i32
  %i.es = trunc nsw i64 %.sroa.16.1.i.i.4 to i32
  %i.et = shl nuw nsw i32 1, %i.es
  %i.eu = and i32 %i.et, %i.er
  %.not21.i.i.5 = icmp eq i32 %i.eu, 0
  %i.ev = or disjoint i8 %i.eq, -128
  %spec.select.i32.i.5 = select i1 %.not21.i.i.5, i8 %i.eq, i8 %i.ev ; 2 uses
  %i.ew = add nsw i64 %.sroa.16.1.i.i.4, 1        ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 8
  br i1 %i.ex, label %bb.q, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !37

bb.q:                                             ; preds = %.lr.ph.i.i.5
  %i.ey = add nsw i64 %.sroa.1319.1.i.i.4, 1      ; 3 uses
  %i.ez = icmp sgt i32 %.sroa.15.0.i, 6
  br i1 %i.ez, label %bb.r, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, !prof !38

bb.r:                                             ; preds = %bb.q
  %i.fa = getelementptr inbounds i8, ptr %.sroa.6.1.i, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.5
  %.sroa.1319.1.i.i.5 = phi i64 [ %i.ey, %bb.r ], [ %i.ey, %bb.q ], [ %.sroa.1319.1.i.i.4, %.lr.ph.i.i.5 ]
  %.sroa.16.1.i.i.5 = phi i64 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.ew, %.lr.ph.i.i.5 ] ; 2 uses
  %.sroa.9.2.i.i.5 = phi i8 [ %i.fb, %bb.r ], [ %.sroa.9.2.i.i.4, %bb.q ], [ %.sroa.9.2.i.i.4, %.lr.ph.i.i.5 ] ; 3 uses
  %exitcond.not.i.i.5 = icmp eq i32 %.sroa.15.0.i, 6
  br i1 %exitcond.not.i.i.5, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5
  %i.fc = lshr i8 %spec.select.i32.i.5, 1         ; 2 uses
  %i.fd = zext i8 %.sroa.9.2.i.i.5 to i32
  %i.fe = trunc nsw i64 %.sroa.16.1.i.i.5 to i32
  %i.ff = shl nuw nsw i32 1, %i.fe
  %i.fg = and i32 %i.ff, %i.fd
  %.not21.i.i.6 = icmp eq i32 %i.fg, 0
  %i.fh = or disjoint i8 %i.fc, -128
  %spec.select.i32.i.6 = select i1 %.not21.i.i.6, i8 %i.fc, i8 %i.fh ; 2 uses
  %i.fi = add nsw i64 %.sroa.16.1.i.i.5, 1        ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 8
  br i1 %i.fj, label %bb.s, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !37

bb.s:                                             ; preds = %.lr.ph.i.i.6
  %i.fk = icmp eq i32 %.sroa.15.0.i, 8
  br i1 %i.fk, label %bb.t, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, !prof !38

bb.t:                                             ; preds = %bb.s
  %i.fl = getelementptr i8, ptr %.sroa.6.1.i, i64 %.sroa.1319.1.i.i.5
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.6
  %.sroa.16.1.i.i.6 = phi i64 [ 0, %bb.t ], [ 0, %bb.s ], [ %i.fi, %.lr.ph.i.i.6 ] ; 2 uses
  %.sroa.9.2.i.i.6 = phi i8 [ %i.fn, %bb.t ], [ %.sroa.9.2.i.i.5, %bb.s ], [ %.sroa.9.2.i.i.5, %.lr.ph.i.i.6 ]
  %exitcond.not.i.i.6 = icmp eq i32 %.sroa.15.0.i, 7
  br i1 %exitcond.not.i.i.6, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6
end_hunk_0
