Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APFloat?download=true
inline.NumInlined: 1816
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE:bb.a
  store i16 %i.p, ptr %i.q, align 8, !tbaa !36
  %i.r = sub nuw i32 %i.f, %i.i                   ; 5 uses
  %i.s = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %1, i32 noundef %2) #25 ; 2 uses
  %.not.i = icmp ugt i32 %i.r, %i.s
  br i1 %.not.i, label %bb.c, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.c:                                             ; preds = %bb.b
  %i.t = add nuw i32 %i.s, 1
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = shl i32 %2, 6
  %.not12.i = icmp ugt i32 %i.r, %i.v
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i32 %i.r, -1
  %i.x = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %1, i32 noundef %i.w) #25
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.f, label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit

_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i25 = phi i32 [ 1, %bb.f ], [ 0, %bb.b ], [ 2, %bb.c ], [ 3, %bb.e ]
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %.0.i, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.i, i32 noundef %i.r) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = trunc i32 %i.i to i16
  %i.z = add i16 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !36
  tail call void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr noundef %.0.i, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.f, i32 noundef 0) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit
  %.0 = phi i32 [ %.0.i25, %_ZN4llvhL29lostFractionThroughTruncationEPKmjj.exit ], [ 0, %bb.g ]
  %i.ab = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %3, i32 noundef %.0)
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat30convertFromSignExtendedIntegerEPKmjbNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %2, 6
  %i.b = add i32 %i.a, -1
  %i.c = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %1, i32 noundef %i.b) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = or i8 %i.e, 8
  store i8 %i.f, ptr %i.d, align 2
  %i.g = zext i32 %2 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23 ; 4 uses
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef nonnull %i.i, ptr noundef %1, i32 noundef %2) #25
  tail call void @_ZN4llvh5APInt8tcNegateEPmj(ptr noundef nonnull %i.i, i32 noundef %2) #25
  %i.j = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.i, i32 noundef %2, i32 noundef %4)
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -9
  store i8 %i.m, ptr %i.k, align 2
  %i.n = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat24convertFromUnsignedPartsEPKmjNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ %i.n, %bb.d ]
  ret i32 %.0
}

declare void @_ZN4llvh5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh6detail9IEEEFloat28convertFromHexadecimalStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -8
  %i.d = or disjoint i8 %i.c, 2
  store i8 %i.d, ptr %i.a, align 2
  %i.e = load ptr, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 2 uses
  %i.h = add i32 %i.g, -64
  %i.i = icmp ult i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %i.l = add i32 %i.g, 64
  %i.m = lshr i32 %i.l, 6
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i, i64 noundef 0, i32 noundef %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i16 0, ptr %i.n, align 8, !tbaa !36
  %i.o = load ptr, ptr %0, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 3 uses
  %i.r = add i32 %i.q, -64
  %i.s = icmp ult i32 %i.r, -128
  %i.t = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.s, ptr %i.t, ptr %i.j
  %i.u = and i32 %i.q, -64
  %i.v = add i32 %i.u, 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %.not23.i = icmp samesign eq i64 %2, 0
  br i1 %.not23.i, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.024.i = phi ptr [ %i.y, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.x = load i8, ptr %.024.i, align 1, !tbaa !35
  switch i8 %i.x, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit [
    i8 48, label %bb.b
    i8 46, label %.preheader
  ]

.preheader:                                       ; preds = %.lr.ph.i
  %.1.i135 = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %.not20.i136 = icmp eq ptr %.1.i135, %i.w
  br i1 %.not20.i136, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph138

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.024.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph.i, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph138
  %.1.i = getelementptr inbounds nuw i8, ptr %.1.i137, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %.1.i, %i.w
  br i1 %.not20.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %.lr.ph138, !llvm.loop !3

.lr.ph138:                                        ; preds = %.preheader, %bb.c
  %.1.i137 = phi ptr [ %.1.i, %bb.c ], [ %.1.i135, %.preheader ] ; 3 uses
  %i.z = load i8, ptr %.1.i137, align 1, !tbaa !35
  %i.aa = icmp eq i8 %i.z, 48
  br i1 %i.aa, label %bb.c, label %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit, !llvm.loop !3

_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit: ; preds = %.lr.ph.i, %.lr.ph138, %bb.a
  %.4 = phi ptr [ %i.w, %bb.a ], [ %.024.i, %.lr.ph138 ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %.2.i = phi ptr [ %1, %bb.a ], [ %.1.i137, %.lr.ph138 ], [ %.024.i, %.lr.ph.i ] ; 4 uses
  %.not87 = icmp eq ptr %.2.i, %i.w
  br i1 %.not87, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit
  %i.ab = ptrtoaddr ptr %i.w to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit
  %.04092 = phi ptr [ %.2.i, %.lr.ph ], [ %.1, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 5 uses
  %.04191 = phi i1 [ false, %.lr.ph ], [ %.243, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 3 uses
  %.04490 = phi i32 [ %i.v, %.lr.ph ], [ %.246, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 3 uses
  %.04789 = phi i32 [ 0, %.lr.ph ], [ %.249, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 4 uses
  %.088 = phi ptr [ %.4, %.lr.ph ], [ %.168, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ] ; 7 uses
  %i.ac = load i8, ptr %.04092, align 1, !tbaa !35 ; 5 uses
  %i.ad = icmp eq i8 %i.ac, 46
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.04092, i64 1
  br label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, !llvm.loop !111

bb.f:                                             ; preds = %bb.d
  %i.af = sext i8 %i.ac to i32                    ; 3 uses
  %i.ag = add i8 %i.ac, -48
  %or.cond.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.af, -48
  br label %_ZN4llvh13hexDigitValueEc.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ai = add i8 %i.ac, -97
  %or.cond5.i = icmp ult i8 %i.ai, 6
  br i1 %or.cond5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.af, -87
  br label %_ZN4llvh13hexDigitValueEc.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ak = add i8 %i.ac, -71
  %or.cond8.i = icmp ult i8 %i.ak, -6
  %i.al = add nsw i32 %i.af, -55                  ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  %or.cond = select i1 %or.cond8.i, i1 true, i1 %i.am
  br i1 %or.cond, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread, label %_ZN4llvh13hexDigitValueEc.exit.thread

_ZN4llvh13hexDigitValueEc.exit.thread:            ; preds = %bb.i, %bb.g, %bb.j
  %.0.i5772 = phi i32 [ %i.al, %bb.j ], [ %i.aj, %bb.i ], [ %i.ah, %bb.g ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04092, i64 1 ; 11 uses
  %.not55 = icmp eq i32 %.04490, 0
  br i1 %.not55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh13hexDigitValueEc.exit.thread
  %i.ao = zext i32 %.0.i5772 to i64
  %i.ap = add i32 %.04490, -4                     ; 3 uses
  %i.aq = and i32 %i.ap, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl i64 %i.ao, %i.ar
  %i.at = lshr i32 %i.ap, 6
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !40
  %i.ax = or i64 %i.aw, %i.as
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !40
  br label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

bb.l:                                             ; preds = %_ZN4llvh13hexDigitValueEc.exit.thread
  br i1 %.04191, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = ptrtoaddr ptr %i.an to i64
  %i.az = icmp ugt i32 %.0.i5772, 8
  br i1 %i.az, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = and i32 %.0.i5772, 7
  %or.cond.not.i = icmp eq i32 %i.ba, 0
  br i1 %or.cond.not.i, label %.preheader.i, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

.preheader.i:                                     ; preds = %bb.n
  %.not24.i = icmp eq ptr %i.an, %i.w
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.preheader.i59

.lr.ph.preheader.i59:                             ; preds = %.preheader.i
  %i.bb = sub i64 %i.ab, %i.ay
  %scevgep.i60 = getelementptr i8, ptr %i.an, i64 %i.bb
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.critedge3.i, %.lr.ph.preheader.i59
  %.01525.i = phi ptr [ %i.bd, %.critedge3.i ], [ %i.an, %.lr.ph.preheader.i59 ] ; 3 uses
  %i.bc = load i8, ptr %.01525.i, align 1, !tbaa !35
  switch i8 %i.bc, label %.critedge.i [
    i8 48, label %.critedge3.i
    i8 46, label %.critedge3.i
  ]

.critedge3.i:                                     ; preds = %.lr.ph.i61, %.lr.ph.i61
  %i.bd = getelementptr inbounds nuw i8, ptr %.01525.i, i64 1 ; 2 uses
  %.not.i62 = icmp eq ptr %i.bd, %i.w
  br i1 %.not.i62, label %.critedge.i, label %.lr.ph.i61, !llvm.loop !112

.critedge.i:                                      ; preds = %.critedge3.i, %.lr.ph.i61, %.preheader.i
  %.015.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %scevgep.i60, %.critedge3.i ], [ %.01525.i, %.lr.ph.i61 ]
  %i.be = load i8, ptr %.015.lcssa.i, align 1, !tbaa !35 ; 2 uses
  %i.bf = add i8 %i.be, -58
  %or.cond.i.i = icmp ult i8 %i.bf, -10
  %i.bg = and i8 %i.be, -33
  %i.bh = add i8 %i.bg, -71
  %i.bi = icmp ult i8 %i.bh, -6
  %or.cond23.i = and i1 %or.cond.i.i, %i.bi
  %4 = icmp eq i32 %.0.i5772, 0                   ; 2 uses
  br i1 %or.cond23.i, label %_ZN4llvh13hexDigitValueEc.exit.thread19.i, label %_ZN4llvh13hexDigitValueEc.exit.thread.i

_ZN4llvh13hexDigitValueEc.exit.thread19.i:        ; preds = %.critedge.i
  %5 = select i1 %4, i32 0, i32 2
  br label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

_ZN4llvh13hexDigitValueEc.exit.thread.i:          ; preds = %.critedge.i
  %i.bj = select i1 %4, i32 1, i32 3
  br label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit

_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit: ; preds = %_ZN4llvh13hexDigitValueEc.exit.thread.i, %_ZN4llvh13hexDigitValueEc.exit.thread19.i, %bb.n, %bb.m, %bb.k, %bb.l, %bb.e
  %.168 = phi ptr [ %.04092, %bb.e ], [ %.088, %_ZN4llvh13hexDigitValueEc.exit.thread19.i ], [ %.088, %bb.l ], [ %.088, %_ZN4llvh13hexDigitValueEc.exit.thread.i ], [ %.088, %bb.k ], [ %.088, %bb.m ], [ %.088, %bb.n ] ; 2 uses
  %.249 = phi i32 [ %.04789, %bb.e ], [ %5, %_ZN4llvh13hexDigitValueEc.exit.thread19.i ], [ %.04789, %bb.l ], [ %i.bj, %_ZN4llvh13hexDigitValueEc.exit.thread.i ], [ %.04789, %bb.k ], [ 3, %bb.m ], [ 1, %bb.n ] ; 2 uses
  %.246 = phi i32 [ %.04490, %bb.e ], [ 0, %_ZN4llvh13hexDigitValueEc.exit.thread19.i ], [ 0, %bb.l ], [ 0, %_ZN4llvh13hexDigitValueEc.exit.thread.i ], [ %i.ap, %bb.k ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.243 = phi i1 [ %.04191, %bb.e ], [ true, %_ZN4llvh13hexDigitValueEc.exit.thread19.i ], [ true, %bb.l ], [ true, %_ZN4llvh13hexDigitValueEc.exit.thread.i ], [ %.04191, %bb.k ], [ true, %bb.m ], [ true, %bb.n ]
  %.1 = phi ptr [ %i.ae, %bb.e ], [ %i.an, %_ZN4llvh13hexDigitValueEc.exit.thread19.i ], [ %i.an, %bb.l ], [ %i.an, %_ZN4llvh13hexDigitValueEc.exit.thread.i ], [ %i.an, %bb.k ], [ %i.an, %bb.m ], [ %i.an, %bb.n ] ; 3 uses
  %.not = icmp eq ptr %.1, %i.w
  br i1 %.not, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread, label %bb.d

_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread: ; preds = %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit, %bb.j, %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit
  %.0.lcssa = phi ptr [ %.4, %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit ], [ %.168, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ], [ %.088, %bb.j ] ; 2 uses
  %.047.lcssa = phi i32 [ 0, %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit ], [ %.249, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ], [ %.04789, %bb.j ] ; 2 uses
  %.040.lcssa = phi ptr [ %i.w, %_ZN4llvhL26skipLeadingZeroesAndAnyDotEPKcS1_PS1_.exit ], [ %.1, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit ], [ %.04092, %bb.j ] ; 3 uses
  %.not56 = icmp eq ptr %.040.lcssa, %.2.i
  br i1 %.not56, label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread
  %i.bk = icmp eq ptr %.0.lcssa, %i.w
  %spec.select82 = select i1 %i.bk, ptr %.040.lcssa, ptr %.0.lcssa
  %i.bl = ptrtoint ptr %spec.select82 to i64
  %i.bm = ptrtoint ptr %.2.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %.lobit = lshr i32 %i.bo, 31
  %spec.select = add nsw i32 %.lobit, %i.bo
  %i.bp = shl nsw i32 %spec.select, 2
  %i.bq = and i32 %i.q, 63
  %i.br = add nuw nsw i32 %i.bq, -65
  %i.bs = add i32 %i.br, %i.bp                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.040.lcssa, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 45                    ; 4 uses
  %i.bw = icmp eq i8 %i.bu, 43
  %or.cond37.i = or i1 %i.bv, %i.bw
  %.033.idx.i = zext i1 %or.cond37.i to i64
  %.033.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.033.idx.i ; 2 uses
  %.not41.not.i = icmp eq ptr %.033.i, %i.w
  br i1 %.not41.not.i, label %._crit_edge.i, label %.lr.ph.i63

bb.p:                                             ; preds = %.lr.ph.i63
  %i.bx = getelementptr inbounds nuw i8, ptr %.13442.i, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bx, %i.w
  br i1 %.not.not.i, label %._crit_edge.i, label %.lr.ph.i63, !llvm.loop !113

.lr.ph.i63:                                       ; preds = %bb.o, %bb.p
  %.03143.i = phi i32 [ %i.cc, %bb.p ], [ 0, %bb.o ]
  %.13442.i = phi ptr [ %i.bx, %bb.p ], [ %.033.i, %bb.o ] ; 2 uses
  %i.by = load i8, ptr %.13442.i, align 1, !tbaa !35
  %i.bz = sext i8 %i.by to i32
  %i.ca = mul nsw i32 %.03143.i, 10
  %i.cb = add i32 %i.ca, -48
  %i.cc = add i32 %i.cb, %i.bz                    ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 32767
  br i1 %i.cd, label %.thread.i, label %bb.p

._crit_edge.i:                                    ; preds = %bb.p, %bb.o
  %.132.i = phi i32 [ 0, %bb.o ], [ %i.cc, %bb.p ] ; 2 uses
  %i.ce = add i32 %i.bs, -32768
  %or.cond.i64 = icmp ult i32 %i.ce, -65536
  br i1 %or.cond.i64, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %.lr.ph.i63, %._crit_edge.i
  %i.cf = select i1 %i.bv, i32 -32768, i32 32767
  br label %_ZN4llvhL13totalExponentEPKcS1_i.exit

bb.q:                                             ; preds = %._crit_edge.i
  %i.cg = sub nsw i32 0, %.132.i
  %spec.select38.i = select i1 %i.bv, i32 %i.cg, i32 %.132.i
  %spec.select38.fr.i = freeze i32 %spec.select38.i
  %i.ch = add i32 %spec.select38.fr.i, %i.bs      ; 2 uses
  %i.ci = add i32 %i.ch, -32768
  %or.cond3.i = icmp ult i32 %i.ci, -65536
  %i.cj = select i1 %i.bv, i32 -32768, i32 32767
  %spec.select.i65 = select i1 %or.cond3.i, i32 %i.cj, i32 %i.ch
  br label %_ZN4llvhL13totalExponentEPKcS1_i.exit

_ZN4llvhL13totalExponentEPKcS1_i.exit:            ; preds = %.thread.i, %bb.q
  %i.ck = phi i32 [ %spec.select.i65, %bb.q ], [ %i.cf, %.thread.i ]
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %i.n, align 8, !tbaa !36
  br label %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread

_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread.thread: ; preds = %bb.b, %bb.c, %.preheader, %_ZN4llvhL13totalExponentEPKcS1_i.exit, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread
  %.047.lcssa122 = phi i32 [ %.047.lcssa, %_ZN4llvhL27trailingHexadecimalFractionEPKcS1_j.exit.thread ], [ %.047.lcssa, %_ZN4llvhL13totalExponentEPKcS1_i.exit ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.cm = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %3, i32 noundef %.047.lcssa122)
  ret i32 %i.cm
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh6detail9IEEEFloat28roundSignificandWithExponentEPKmjiNS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [1205 x i64], align 16            ; 4 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [600 x i64], align 16             ; 3 uses
  %5 = alloca %"struct.llvh::fltSemantics", align 4 ; 7 uses
  %i.d = alloca [600 x i64], align 16             ; 7 uses
  %6 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 13 uses
  %7 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN4llvh6detail9IEEEFloat28roundSignificandWithExponentEPKmjiNS_11APFloatBase12roundingModeE.calcSemantics, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.e = and i32 %4, -5
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load ptr, ptr %0, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26
  %i.j = add i32 %i.i, 74
  %i.k = lshr i32 %i.j, 6
  %i.l = icmp sgt i32 %3, -1
  %i.m = tail call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 390625, ptr %i.a, align 16, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  store i32 1, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.n = and i32 %i.m, 7
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvhL8powerOf5EPmjE16firstEightPowers, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  store i64 %i.q, ptr %i.d, align 16, !tbaa !40
  %i.r = lshr i32 %i.m, 3                         ; 2 uses
  %.not58.i = icmp eq i32 %i.r, 0
  br i1 %.not58.i, label %_ZN4llvhL8powerOf5EPmj.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
  %.not55.i = icmp eq ptr %.151.i, %i.d
  br i1 %.not55.i, label %_ZN4llvhL8powerOf5EPmj.exit, label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.04563.i = phi i32 [ %.2.i, %bb.e ], [ 1, %bb.a ] ; 3 uses
  %.04762.i = phi ptr [ %i.aq, %bb.e ], [ %i.a, %bb.a ] ; 5 uses
  %.04861.i = phi ptr [ %.149.i, %bb.e ], [ %i.c, %bb.a ] ; 4 uses
  %.05060.i = phi ptr [ %.151.i, %bb.e ], [ %i.d, %bb.a ] ; 3 uses
  %.05259.i = phi i32 [ %i.ar, %bb.e ], [ %i.r, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !23   ; 4 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.04762.i, i64 %i.aa ; 2 uses
  call void @_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj(ptr noundef %.04762.i, ptr noundef %i.ab, ptr noundef %i.ab, i32 noundef %i.y, i32 noundef %i.y) #25
  %i.ac = shl i32 %i.y, 1                         ; 2 uses
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.04762.i, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40
  %i.ah = icmp eq i64 %i.ag, 0
  %spec.select.i = select i1 %i.ah, i32 %i.ad, i32 %i.ac ; 2 uses
  store i32 %spec.select.i, ptr %i.s, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %spec.select.i, %bb.b ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.ai = and i32 %.05259.i, 1
  %.not56.i = icmp eq i32 %i.ai, 0
  br i1 %.not56.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj(ptr noundef %.04861.i, ptr noundef %.05060.i, ptr noundef %.04762.i, i32 noundef %.04563.i, i32 noundef %.1.i) #25
  %i.aj = add i32 %.1.i, %.04563.i                ; 2 uses
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.04861.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ao = icmp eq i64 %i.an, 0
  %spec.select57.i = select i1 %i.ao, i32 %i.ak, i32 %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.151.i = phi ptr [ %.04861.i, %bb.d ], [ %.05060.i, %bb.c ] ; 3 uses
  %.149.i = phi ptr [ %.05060.i, %bb.d ], [ %.04861.i, %bb.c ]
  %.2.i = phi i32 [ %spec.select57.i, %bb.d ], [ %.04563.i, %bb.c ] ; 4 uses
  %i.ap = zext i32 %.1.i to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.04762.i, i64 %i.ap
  %i.ar = lshr i32 %.05259.i, 1                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !114

bb.f:                                             ; preds = %._crit_edge.i
  call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef nonnull %i.d, ptr noundef %.151.i, i32 noundef %.2.i) #25
  br label %_ZN4llvhL8powerOf5EPmj.exit

_ZN4llvhL8powerOf5EPmj.exit:                      ; preds = %bb.a, %._crit_edge.i, %bb.f
  %.045.lcssa73.i = phi i32 [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.f ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
end_hunk_0
