Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/hashing?download=true
inline.NumInlined: 27
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow18TypedChunkLocationIiEC2Eii:bb.a

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
  store i16 %2, ptr %i.a, align 2, !tbaa !27
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
  store i8 %2, ptr %i.a, align 1, !tbaa !14
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
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !16
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
  store i16 %1, ptr %0, align 2, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !18
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
  store i32 %1, ptr %0, align 4, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !20
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
  store i64 %1, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !23
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
  store i64 %1, ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !25
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
  %4 = add nsw i64 %i.f, -1
  %5 = icmp ne i64 %i.f, 0
  %umin.neg.neg = zext i1 %5 to i64
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.r = add nsw i64 %spec.select.i.i, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = freeze i64 %i.t                          ; 3 uses
  %.0.i.i.prol = tail call noundef i64 @llvm.fshr.i64(i64 %i.u, i64 %i.q, i64 %i.c)
  %i.v = mul i64 %.0.i.i.prol, -4132994306676758123 ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -4132994306676758123
  %i.z = xor i64 %i.y, %i.b
  %i.aa = mul i64 %i.z, -4132994306676758123      ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.prol ]
  %.lcssa33.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %.lcssa32.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i.prol ]
  %.02647.i.unr = phi i64 [ %spec.select.i.i, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i.prol ]
  %.02746.i.unr = phi i64 [ %i.b, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i.prol ]
  %.sroa.6.045.i.unr = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.prol ]
  %.sroa.23.044.i.unr = phi i64 [ %i.q, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %i.ab = icmp eq i64 %4, %umin.neg.neg
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02647.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.02647.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02746.i = phi i64 [ %i.au, %.lr.ph.i ], [ %.02746.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.6.045.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.6.045.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.sroa.23.044.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.23.044.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = freeze i64 %i.ad                        ; 2 uses
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ae, i64 %.sroa.23.044.i, i64 %i.c)
  %i.af = mul i64 %.0.i.i, -4132994306676758123   ; 2 uses
  %i.ag = lshr i64 %i.af, 47
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -4132994306676758123
  %i.aj = xor i64 %i.ai, %.02746.i
  %i.ak = mul i64 %i.aj, -4132994306676758123
  %i.al = add nsw i64 %.02647.i, -2               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.045.i, i64 16 ; 3 uses
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = freeze i64 %i.an                        ; 3 uses
  %.0.i.i.1 = tail call noundef i64 @llvm.fshr.i64(i64 %i.ao, i64 %i.ae, i64 %i.c)
  %i.ap = mul i64 %.0.i.i.1, -4132994306676758123 ; 2 uses
  %i.aq = lshr i64 %i.ap, 47
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, -4132994306676758123
  %i.at = xor i64 %i.as, %i.ak
  %i.au = mul i64 %i.at, -4132994306676758123     ; 2 uses
  %.not.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c, %bb.b
  %.sroa.23.0.lcssa.i = phi i64 [ undef, %bb.b ], [ %.sroa.23.40.insert.ext.i, %bb.c ], [ %.lcssa33.unr, %.lr.ph.i.prol.loopexit ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %.lcssa34.unr, %.lr.ph.i.prol.loopexit ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %.027.lcssa.i = phi i64 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %.lcssa32.unr, %.lr.ph.i.prol.loopexit ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %.not29.i = icmp eq i64 %i.n, 0
  br i1 %.not29.i, label %_ZN5arrow8internal12_GLOBAL__N_118MurmurHashBitmap64EPKhmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not.i31.i = icmp eq i64 %i.c, 0
  %i.av = trunc nsw i64 %i.c to i32               ; 2 uses
  %i.aw = sub nsw i32 8, %i.av
  br i1 %.not.i31.i, label %.preheader.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.ax = trunc nsw i64 %i.c to i32
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = add nsw i64 %i.c, 1                     ; 2 uses
  %i.ba = icmp eq i64 %i.az, 8
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i
  %.sroa.23.1.us.i = phi i64 [ %.sroa.23.3.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.23.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.sroa.15.0.us.i = phi i32 [ %.sroa.15.1.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.i, %.preheader.i ] ; 11 uses
  %.sroa.6.1.us.i = phi ptr [ %.sroa.6.2.us.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %.sroa.6.0.lcssa.i, %.preheader.i ] ; 3 uses
  %.025.us.i = phi i32 [ %i.ci, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ %i.o, %.preheader.i ]
  %.0.us.i = phi i64 [ %i.ch, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i ], [ 0, %.preheader.i ]
  %i.bb = icmp slt i32 %.sroa.15.0.us.i, 9
  br i1 %i.bb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.split.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.1.us.i, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %.sroa.23.40.insert.ext40.us.i = zext i8 %i.bd to i64
  %i.be = add nsw i32 %.sroa.15.0.us.i, -8
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

bb.e:                                             ; preds = %.preheader.split.us.i
  %i.bf = icmp sgt i32 %.sroa.15.0.us.i, 0
  br i1 %i.bf, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.e
  %i.bg = load i8, ptr %.sroa.6.1.us.i, align 1, !tbaa !36 ; 8 uses
  %spec.select.i32.us.i = shl i8 %i.bg, 7         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %.sroa.15.0.us.i, 1
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.1

.lr.ph.i.us.i.1:                                  ; preds = %.lr.ph.i.us.i
  %i.bh = lshr exact i8 %spec.select.i32.us.i, 1
  %i.bi = shl i8 %i.bg, 6
  %i.bj = and i8 %i.bi, -128
  %spec.select.i32.us.i.1 = or disjoint i8 %i.bh, %i.bj ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i32 %.sroa.15.0.us.i, 2
  br i1 %exitcond.not.i.us.i.1, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.2

.lr.ph.i.us.i.2:                                  ; preds = %.lr.ph.i.us.i.1
  %i.bk = lshr exact i8 %spec.select.i32.us.i.1, 1
  %i.bl = shl i8 %i.bg, 5
  %i.bm = and i8 %i.bl, -128
  %spec.select.i32.us.i.2 = or disjoint i8 %i.bk, %i.bm ; 2 uses
  %exitcond.not.i.us.i.2 = icmp eq i32 %.sroa.15.0.us.i, 3
  br i1 %exitcond.not.i.us.i.2, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.3

.lr.ph.i.us.i.3:                                  ; preds = %.lr.ph.i.us.i.2
  %i.bn = lshr exact i8 %spec.select.i32.us.i.2, 1
  %i.bo = shl i8 %i.bg, 4
  %i.bp = and i8 %i.bo, -128
  %spec.select.i32.us.i.3 = or disjoint i8 %i.bn, %i.bp ; 2 uses
  %exitcond.not.i.us.i.3 = icmp eq i32 %.sroa.15.0.us.i, 4
  br i1 %exitcond.not.i.us.i.3, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.4

.lr.ph.i.us.i.4:                                  ; preds = %.lr.ph.i.us.i.3
  %i.bq = lshr i8 %spec.select.i32.us.i.3, 1
  %i.br = shl i8 %i.bg, 3
  %i.bs = and i8 %i.br, -128
  %spec.select.i32.us.i.4 = or disjoint i8 %i.bq, %i.bs ; 2 uses
  %exitcond.not.i.us.i.4 = icmp eq i32 %.sroa.15.0.us.i, 5
  br i1 %exitcond.not.i.us.i.4, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.5

.lr.ph.i.us.i.5:                                  ; preds = %.lr.ph.i.us.i.4
  %i.bt = lshr i8 %spec.select.i32.us.i.4, 1
  %i.bu = shl i8 %i.bg, 2
  %i.bv = and i8 %i.bu, -128
  %spec.select.i32.us.i.5 = or disjoint i8 %i.bt, %i.bv ; 2 uses
  %exitcond.not.i.us.i.5 = icmp eq i32 %.sroa.15.0.us.i, 6
  br i1 %exitcond.not.i.us.i.5, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.6

.lr.ph.i.us.i.6:                                  ; preds = %.lr.ph.i.us.i.5
  %i.bw = lshr i8 %spec.select.i32.us.i.5, 1
  %i.bx = shl i8 %i.bg, 1
  %i.by = and i8 %i.bx, -128
  %spec.select.i32.us.i.6 = or disjoint i8 %i.bw, %i.by ; 2 uses
  %exitcond.not.i.us.i.6 = icmp eq i32 %.sroa.15.0.us.i, 7
  br i1 %exitcond.not.i.us.i.6, label %._crit_edge.loopexit.i.us.i, label %.lr.ph.i.us.i.7

.lr.ph.i.us.i.7:                                  ; preds = %.lr.ph.i.us.i.6
  %i.bz = lshr i8 %spec.select.i32.us.i.6, 1
  %i.ca = and i8 %i.bg, -128
  %spec.select.i32.us.i.7 = or disjoint i8 %i.bz, %i.ca
  br label %._crit_edge.loopexit.i.us.i

._crit_edge.loopexit.i.us.i:                      ; preds = %.lr.ph.i.us.i.7, %.lr.ph.i.us.i.6, %.lr.ph.i.us.i.5, %.lr.ph.i.us.i.4, %.lr.ph.i.us.i.3, %.lr.ph.i.us.i.2, %.lr.ph.i.us.i.1, %.lr.ph.i.us.i
  %spec.select.i32.us.i.lcssa = phi i8 [ %spec.select.i32.us.i, %.lr.ph.i.us.i ], [ %spec.select.i32.us.i.1, %.lr.ph.i.us.i.1 ], [ %spec.select.i32.us.i.2, %.lr.ph.i.us.i.2 ], [ %spec.select.i32.us.i.3, %.lr.ph.i.us.i.3 ], [ %spec.select.i32.us.i.4, %.lr.ph.i.us.i.4 ], [ %spec.select.i32.us.i.5, %.lr.ph.i.us.i.5 ], [ %spec.select.i32.us.i.6, %.lr.ph.i.us.i.6 ], [ %spec.select.i32.us.i.7, %.lr.ph.i.us.i.7 ]
  %i.cb = zext i8 %spec.select.i32.us.i.lcssa to i32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %._crit_edge.loopexit.i.us.i, %bb.e
  %.015.lcssa.i.us.i = phi i32 [ %i.cb, %._crit_edge.loopexit.i.us.i ], [ 0, %bb.e ]
  %i.cc = sub nsw i32 8, %.sroa.15.0.us.i
  %i.cd = lshr i32 %.015.lcssa.i.us.i, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i

_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.us.i: ; preds = %._crit_edge.i.us.i, %bb.d
  %.sroa.23.3.us.i = phi i64 [ %.sroa.23.1.us.i, %._crit_edge.i.us.i ], [ %.sroa.23.40.insert.ext40.us.i, %bb.d ]
  %.sroa.15.1.us.i = phi i32 [ 0, %._crit_edge.i.us.i ], [ %i.be, %bb.d ]
  %.sroa.6.2.us.i = phi ptr [ %.sroa.6.1.us.i, %._crit_edge.i.us.i ], [ %i.bc, %bb.d ]
  %.3.i.us.i = phi i64 [ %i.ce, %._crit_edge.i.us.i ], [ %.sroa.23.1.us.i, %bb.d ]
  %i.cf = shl i64 %.0.us.i, 8
  %i.cg = and i64 %.3.i.us.i, 255
  %i.ch = or disjoint i64 %i.cg, %i.cf            ; 2 uses
  %i.ci = add nsw i32 %.025.us.i, -1              ; 2 uses
  %.not30.us.i = icmp eq i32 %i.ci, 0
  br i1 %.not30.us.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !34

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i
  %.sroa.23.1.i = phi i64 [ %.sroa.23.3.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.23.0.lcssa.i, %.preheader.split.i.preheader ] ; 2 uses
  %.sroa.15.0.i = phi i32 [ %.sroa.15.1.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.i, %.preheader.split.i.preheader ] ; 18 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.2.i, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %.sroa.6.0.lcssa.i, %.preheader.split.i.preheader ] ; 10 uses
  %.025.i = phi i32 [ %i.gh, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ %i.o, %.preheader.split.i.preheader ]
  %.0.i = phi i64 [ %i.gg, %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i ], [ 0, %.preheader.split.i.preheader ]
  %i.cj = icmp slt i32 %.sroa.15.0.i, 9
  br i1 %i.cj, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.preheader.split.i
  %i.ck = icmp sgt i32 %.sroa.15.0.i, 0
  br i1 %i.ck, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.cl = load i8, ptr %.sroa.6.1.i, align 1, !tbaa !36 ; 3 uses
  %i.cm = zext i8 %i.cl to i32
  %i.cn = and i32 %i.ay, %i.cm
  %.not21.i.i = icmp eq i32 %i.cn, 0
  %spec.select.i32.i = select i1 %.not21.i.i, i8 0, i8 -128 ; 2 uses
  br i1 %i.ba, label %bb.g, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, !prof !37

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.7, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i
  %spec.select.i32.i.lcssa = phi i8 [ %spec.select.i32.i, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i ], [ %spec.select.i32.i.1, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.1 ], [ %spec.select.i32.i.2, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.2 ], [ %spec.select.i32.i.3, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.3 ], [ %spec.select.i32.i.4, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.4 ], [ %spec.select.i32.i.5, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.5 ], [ %spec.select.i32.i.6, %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i.6 ], [ %spec.select.i32.i.7, %.lr.ph.i.i.7 ]
  %i.co = zext i8 %spec.select.i32.i.lcssa to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.015.lcssa.i.i = phi i32 [ %i.co, %._crit_edge.loopexit.i.i ], [ 0, %bb.f ]
  %i.cp = sub nsw i32 8, %.sroa.15.0.i
  %i.cq = lshr i32 %.015.lcssa.i.i, %i.cp
  br label %_ZN5arrow8internal16BitmapWordReaderImLb1EE16NextTrailingByteERi.exit.i

bb.g:                                             ; preds = %.lr.ph.preheader.i.i
  %.not = icmp eq i32 %.sroa.15.0.i, 1
  br i1 %.not, label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i, label %bb.h, !prof !37

bb.h:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !36
  br label %_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i

_ZN5arrow8internal12BitmapReader4NextEv.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.preheader.i.i
  %.sroa.1319.1.i.i = phi i64 [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.16.1.i.i = phi i64 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.az, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.9.2.i.i = phi i8 [ %i.cs, %bb.h ], [ %i.cl, %bb.g ], [ %i.cl, %.lr.ph.preheader.i.i ] ; 3 uses
end_hunk_0
