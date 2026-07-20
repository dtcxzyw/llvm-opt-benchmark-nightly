inline.NumInlined: 1516
inline.NumDeleted: 700
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIaEeqES1_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
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
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
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
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
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
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
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
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
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
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow17BinaryViewBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(272) initializes((0, 252), (256, 272)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BinaryViewBuilderE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %2, ptr %i.j, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 64, ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 32768, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.i.i.i.i.i = alloca %struct.anon, align 8 ; 7 uses
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.d
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %3 ; 5 uses
  %i.i = add nsw i64 %i.d, %3                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, ptr null, ptr %i.b
  call void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.m, i64 noundef %i.i, i64 noundef %4)
  %i.n = icmp sgt i64 %4, 0                       ; 2 uses
  br i1 %i.n, label %.lr.ph18.i, label %"_ZN5arrow21VisitNullBitmapInlineIZNS_17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllE3$_0ZNS1_16AppendArraySliceES4_llE3$_1EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT_E4typeEonclEEvEE5valueEvE4typeEPKhlllOS8_OT0_.exit"

.lr.ph18.i:                                       ; preds = %bb.a, %.loopexit.i
  %.lcssa5962 = phi i64 [ %.lcssa5961, %.loopexit.i ], [ 0, %bb.a ] ; 8 uses
  %.0 = phi i64 [ %.1, %.loopexit.i ], [ 0, %bb.a ] ; 6 uses
  %.02316.i = phi i64 [ %i.bg, %.loopexit.i ], [ %i.i, %bb.a ] ; 2 uses
  %.02415.i = phi i64 [ %i.bf, %.loopexit.i ], [ 0, %bb.a ]
  %i.o = call i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.o to i16 ; 8 uses
  %.sroa.8.0.extract.shift.i = lshr i32 %i.o, 16  ; 2 uses
  %.sroa.8.0.extract.trunc.i = trunc nuw i32 %.sroa.8.0.extract.shift.i to i16
  %i.p = icmp eq i16 %.sroa.0.0.extract.trunc.i, %.sroa.8.0.extract.trunc.i
  br i1 %i.p, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %.lr.ph18.i
  %i.q = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 4 uses
  %i.r = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader", label %.loopexit.i

"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader": ; preds = %.preheader.i
  %i.s = icmp eq i16 %.sroa.0.0.extract.trunc.i, 1
  br i1 %i.s, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.epil.preheader", label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new"

"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new": ; preds = %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader"
  %unroll_iter = and i64 %i.q, 32766
  br label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i"

"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i": ; preds = %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i", %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new"
  %i.t = phi i64 [ %.lcssa5962, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new" ], [ %i.ad, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i" ] ; 3 uses
  %.5 = phi i64 [ %.0, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new" ], [ %.6.1, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i" ]
  %niter = phi i64 [ 0, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader.new" ], [ %niter.next.1, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i" ]
  %i.u = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  %i.w = icmp slt i32 %i.v, 13
  %narrow = select i1 %i.w, i32 0, i32 %i.v
  %i.x = zext i32 %narrow to i64
  %.6 = add nsw i64 %.5, %i.x
  %i.y = getelementptr [16 x i8], ptr %i.h, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 13
  %narrow.1 = select i1 %i.ab, i32 0, i32 %i.aa
  %i.ac = zext i32 %narrow.1 to i64
  %.6.1 = add nsw i64 %.6, %i.ac                  ; 3 uses
  %i.ad = add nsw i64 %i.t, 2                     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i", !llvm.loop !78

bb.b:                                             ; preds = %.lr.ph18.i
  %i.ae = icmp eq i32 %.sroa.8.0.extract.shift.i, 0
  %i.af = sext i16 %.sroa.0.0.extract.trunc.i to i64 ; 5 uses
  br i1 %i.ae, label %.preheader6.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %bb.b
  %i.ag = icmp sgt i16 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit.i

.preheader6.i:                                    ; preds = %bb.b
  %i.ah = call i16 @llvm.smax.i16(i16 %.sroa.0.0.extract.trunc.i, i16 0)
  %i.ai = zext nneg i16 %i.ah to i64
  %spec.select = add i64 %.lcssa5962, %i.ai
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader8.i, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i"
  %i.aj = phi i64 [ %i.ax, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i" ], [ %.lcssa5962, %.preheader8.i ] ; 2 uses
  %.2 = phi i64 [ %.4, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i" ], [ %.0, %.preheader8.i ] ; 3 uses
  %.010.i = phi i64 [ %i.ay, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i" ], [ 0, %.preheader8.i ] ; 2 uses
  %i.ak = add nsw i64 %.010.i, %.02316.i          ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !77
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.c, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i"

bb.c:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.aj
  %i.at = load i32, ptr %i.as, align 8, !tbaa !77 ; 2 uses
  %i.au = icmp slt i32 %i.at, 13
  br i1 %i.au, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add nsw i64 %.2, %i.av
  br label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i"

"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i": ; preds = %.lr.ph.i, %bb.d, %bb.c
  %.4 = phi i64 [ %.2, %bb.c ], [ %i.aw, %bb.d ], [ %.2, %.lr.ph.i ] ; 2 uses
  %i.ax = add nsw i64 %i.aj, 1
  %i.ay = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.af
  br i1 %exitcond.not.i, label %.loopexit.i.loopexit64, label %.lr.ph.i, !llvm.loop !80

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i"
  %8 = and i16 %.sroa.0.0.extract.trunc.i, 1
  %lcmp.mod.not = icmp eq i16 %8, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.loopexit, label %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.epil.preheader"

"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.epil.preheader": ; preds = %.loopexit.i.loopexit.unr-lcssa, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader"
  %.epil.init = phi i64 [ %.lcssa5962, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader" ], [ %i.ad, %.loopexit.i.loopexit.unr-lcssa ]
  %.5.epil.init = phi i64 [ %.0, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.preheader" ], [ %.6.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.az = getelementptr inbounds [16 x i8], ptr %i.h, i64 %.epil.init
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !77 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 13
  %narrow.epil = select i1 %i.bb, i32 0, i32 %i.ba
  %i.bc = zext i32 %narrow.epil to i64
  %.6.epil = add nsw i64 %.5.epil.init, %i.bc
  br label %.loopexit.i.loopexit

.loopexit.i.loopexit:                             ; preds = %.loopexit.i.loopexit.unr-lcssa, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.epil.preheader"
  %.6.lcssa = phi i64 [ %.6.1, %.loopexit.i.loopexit.unr-lcssa ], [ %.6.epil, %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit.i.epil.preheader" ]
  %i.bd = add i64 %.lcssa5962, %i.q
  br label %.loopexit.i

.loopexit.i.loopexit64:                           ; preds = %"_ZZN5arrow17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllENK3$_0clEv.exit27.i"
  %i.be = add i64 %.lcssa5962, %i.af
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit64, %.loopexit.i.loopexit, %.preheader6.i, %.preheader8.i, %.preheader.i
  %.lcssa5961 = phi i64 [ %.lcssa5962, %.preheader8.i ], [ %.lcssa5962, %.preheader.i ], [ %spec.select, %.preheader6.i ], [ %i.bd, %.loopexit.i.loopexit ], [ %i.be, %.loopexit.i.loopexit64 ]
  %.1 = phi i64 [ %.0, %.preheader8.i ], [ %.0, %.preheader.i ], [ %.0, %.preheader6.i ], [ %.6.lcssa, %.loopexit.i.loopexit ], [ %.4, %.loopexit.i.loopexit64 ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.af, %.preheader8.i ], [ %i.q, %.preheader.i ], [ %i.af, %.preheader6.i ], [ %i.q, %.loopexit.i.loopexit ], [ %i.af, %.loopexit.i.loopexit64 ] ; 2 uses
  %i.bf = add nsw i64 %.pre-phi.i, %.02415.i      ; 2 uses
  %i.bg = add nsw i64 %.pre-phi.i, %.02316.i
  %i.bh = icmp slt i64 %i.bf, %4
  br i1 %i.bh, label %.lr.ph18.i, label %"_ZN5arrow21VisitNullBitmapInlineIZNS_17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllE3$_0ZNS1_16AppendArraySliceES4_llE3$_1EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT_E4typeEonclEEvEE5valueEvE4typeEPKhlllOS8_OT0_.exit", !llvm.loop !81

"_ZN5arrow21VisitNullBitmapInlineIZNS_17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllE3$_0ZNS1_16AppendArraySliceES4_llE3$_1EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT_E4typeEonclEEvEE5valueEvE4typeEPKhlllOS8_OT0_.exit": ; preds = %.loopexit.i, %bb.a
  %.7 = phi i64 [ 0, %bb.a ], [ %.1, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !82, !noalias !83 ; 2 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !54, !noalias !83
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !83
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !83, !inline_history !86
  %i.bo = add nsw i64 %i.bn, %4                   ; 2 uses
  %.not.i = icmp sgt i64 %i.bo, %i.bj
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %"_ZN5arrow21VisitNullBitmapInlineIZNS_17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllE3$_0ZNS1_16AppendArraySliceES4_llE3$_1EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT_E4typeEonclEEvEE5valueEvE4typeEPKhlllOS8_OT0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN5arrow6StatusD2Ev.exit41

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %"_ZN5arrow21VisitNullBitmapInlineIZNS_17BinaryViewBuilder16AppendArraySliceERKNS_9ArraySpanEllE3$_0ZNS1_16AppendArraySliceES4_llE3$_1EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT_E4typeEonclEEvEE5valueEvE4typeEPKhlllOS8_OT0_.exit"
  %i.bp = shl nsw i64 %i.bj, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.smax.i64(i64 %i.bo, i64 %i.bp)
  %i.bq = load ptr, ptr %1, align 8, !tbaa !54, !noalias !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !83
  call void %i.bs(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %6, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bt = icmp eq ptr %.pr, null
  br i1 %i.bt, label %_ZN5arrow6StatusD2Ev.exit41, label %.critedge

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @_ZN5arrow8internal17StringHeapBuilder7ReserveEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i64 noundef %.7)
  %i.bv = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  store ptr %i.bv, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN5arrow6StatusD2Ev.exit45.preheader, label %.critedge

_ZN5arrow6StatusD2Ev.exit45.preheader:            ; preds = %_ZN5arrow6StatusD2Ev.exit41
  br i1 %i.n, label %.lr.ph, label %_ZN5arrow6StatusD2Ev.exit45._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit45.preheader
  %.not = icmp eq ptr %i.b, null
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %.sroa.02.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx82 = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i, i64 8
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit45._crit_edge:           ; preds = %_ZN5arrow6StatusD2Ev.exit45, %_ZN5arrow6StatusD2Ev.exit45.preheader
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !90
  br label %.critedge

bb.e:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit45
  %.02763 = phi i64 [ 0, %.lr.ph ], [ %i.fp, %_ZN5arrow6StatusD2Ev.exit45 ] ; 3 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = load i64, ptr %i.c, align 8, !tbaa !68
  %i.cj = add i64 %.02763, %3
  %i.ck = add i64 %i.cj, %i.ci                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !77
  %i.co = trunc i64 %i.ck to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = lshr i8 %i.cn, %i.cp
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.ct = load i64, ptr %i.by, align 8, !tbaa !93
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  %i.cv = load i64, ptr %i.by, align 8, !tbaa !93
  %i.cw = add nsw i64 %i.cv, 16
  store i64 %i.cw, ptr %i.by, align 8, !tbaa !93
  %i.cx = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !94 ; 2 uses
  %i.cz = sdiv i64 %i.cy, 8
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !77
  %i.dc = srem i64 %i.cy, 8
  %i.dd = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !77
  %i.df = xor i8 %i.de, -1
  %i.dg = and i8 %i.db, %i.df
  store i8 %i.dg, ptr %i.da, align 1, !tbaa !77
  %i.dh = load <2 x i64>, ptr %i.ca, align 8, !tbaa !95
  %i.di = add nsw <2 x i64> %i.dh, splat (i64 1)
  store <2 x i64> %i.di, ptr %i.ca, align 8, !tbaa !95
  %i.dj = load <2 x i64>, ptr %i.cc, align 8, !tbaa !95
  %i.dk = add nsw <2 x i64> %i.dj, splat (i64 1)
  store <2 x i64> %i.dk, ptr %i.cc, align 8, !tbaa !95
  br label %_ZN5arrow6StatusD2Ev.exit45

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.02763 ; 4 uses
  %i.dm = call { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !77 ; 4 uses
  %i.do = icmp slt i32 %i.dn, 13                  ; 2 uses
  br i1 %i.do, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

bb.j:                                             ; preds = %bb.h
  %i.dq = extractvalue { ptr, i64 } %i.dm, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !77
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !96 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !99, !range !107, !noundef !108
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = select i1 %i.dy, ptr %i.ea, ptr null, !prof !109
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !77
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit: ; preds = %bb.i, %bb.j
  %i.eg = phi ptr [ %i.dp, %bb.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.eh = sext i32 %i.dn to i64                   ; 5 uses
  %i.ei = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !94 ; 2 uses
  %i.ek = sdiv i64 %i.ej, 8
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !77
  %i.en = srem i64 %i.ej, 8
  %i.eo = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !77
  %i.eq = or i8 %i.ep, %i.em
  store i8 %i.eq, ptr %i.el, align 1, !tbaa !77
  %i.er = load i64, ptr %i.ca, align 8, !tbaa !94
  %i.es = add nsw i64 %i.er, 1
  store i64 %i.es, ptr %i.ca, align 8, !tbaa !94
  %i.et = load i64, ptr %i.cb, align 8, !tbaa !95
  %i.eu = add nsw i64 %i.et, 1
  store i64 %i.eu, ptr %i.cb, align 8, !tbaa !95
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i.i.i.i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.02.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx82, i8 0, i64 12, i1 false)
  store i32 %i.dn, ptr %.sroa.02.i.i.i.i.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.02.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, ptr align 1 %i.eg, i64 %i.eh, i1 false)
  %.sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.i.0..sroa.02.i.i.0..sroa.02.i.i.0..sroa.02.i.0..sroa.02.i.0..sroa.02.0..sroa.02.0..sroa.02.0..sroa.02.0..fca.0.load.i.i.i.i.i = load i64, ptr %.sroa.02.i.i.i.i.i, align 8
  %.sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.i.8..sroa.02.i.i.8..sroa.02.i.i.8..sroa.02.i.8..sroa.02.i.8..sroa.02.8..sroa.02.8..sroa.02.8..sroa.02.8..fca.1.load.i.i.i.i.i = load i64, ptr %.sroa.02.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow15ResizableBufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow15ResizableBufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow15ResizableBufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow15ResizableBufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !111
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !110
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !176
  ret void
}

declare void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !77
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !239
  %i.n = load ptr, ptr %3, align 8, !tbaa !456, !nonnull !108, !align !438
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !457, !nonnull !108, !align !438 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.ab, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.aa, %bb.d ]
  %i.s = load i64, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.q, align 8, !tbaa !95
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !77
  %.not46 = icmp eq i8 %i.v, 0                    ; 2 uses
  %i.w = zext i1 %.not46 to i64
  %i.x = load i64, ptr %i.r, align 8, !tbaa !242
  %i.y = add nsw i64 %i.x, %i.w
  store i64 %i.y, ptr %i.r, align 8, !tbaa !242
  %i.z = select i1 %.not46, i8 0, i8 %.03650
  %i.aa = or i8 %i.z, %.03849                     ; 2 uses
  %i.ab = shl i8 %.03650, 1                       ; 2 uses
  %i.ac = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ad = icmp ne i8 %i.ab, 0
  %i.ae = icmp samesign ugt i64 %.03551, 1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %._crit_edge, !llvm.loop !458

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.aa, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.ac, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.ag, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.ah = icmp sgt i64 %.1, 7
  br i1 %i.ah, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ai = lshr i64 %.1, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ai, %.preheader48.lr.ph ], [ %i.cx, %.preheader48 ] ; 2 uses
  %.14154 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.dm, %.preheader48 ] ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.am = load ptr, ptr %3, align 8, !tbaa !456, !nonnull !108, !align !438
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !233 ; 8 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !457, !nonnull !108, !align !438 ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 16 uses
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.ar = add nsw i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !95
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !77
  %i.au = icmp ne i8 %i.at, 0                     ; 2 uses
  %i.av = xor i1 %i.au, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.ay = add nsw i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !242
  %i.az = zext i1 %i.au to i8
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bb = add nsw i64 %i.ba, 1
  store i64 %i.bb, ptr %i.ao, align 8, !tbaa !95
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !77
  %.not69 = icmp eq i8 %i.bd, 0                   ; 2 uses
  %i.be = zext i1 %.not69 to i64
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.bg = add nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.ap, align 8, !tbaa !242
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.ao, align 8, !tbaa !95
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.bh
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !77
  %.not70 = icmp eq i8 %i.bk, 0                   ; 2 uses
  %i.bl = zext i1 %.not70 to i64
  %i.bm = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.bn = add nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.ap, align 8, !tbaa !242
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !95
  %i.bq = getelementptr inbounds i8, ptr %i.an, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !77
  %.not71 = icmp eq i8 %i.br, 0                   ; 2 uses
  %i.bs = zext i1 %.not71 to i64
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.bu = add nsw i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !242
  %i.bv = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.bw = add nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ao, align 8, !tbaa !95
  %i.bx = getelementptr inbounds i8, ptr %i.an, i64 %i.bv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !77
  %.not72 = icmp eq i8 %i.by, 0                   ; 2 uses
  %i.bz = zext i1 %.not72 to i64
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.cb = add nsw i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.ap, align 8, !tbaa !242
  %i.cc = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ao, align 8, !tbaa !95
  %i.ce = getelementptr inbounds i8, ptr %i.an, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !77
  %.not73 = icmp eq i8 %i.cf, 0                   ; 2 uses
  %i.cg = zext i1 %.not73 to i64
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.ci = add nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !242
  %i.cj = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ao, align 8, !tbaa !95
  %i.cl = getelementptr inbounds i8, ptr %i.an, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !77
  %.not74 = icmp eq i8 %i.cm, 0                   ; 2 uses
  %i.cn = zext i1 %.not74 to i64
  %i.co = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.cp = add nsw i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.ap, align 8, !tbaa !242
  %i.cq = load i64, ptr %i.ao, align 8, !tbaa !95 ; 2 uses
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.ao, align 8, !tbaa !95
  %i.cs = getelementptr inbounds i8, ptr %i.an, i64 %i.cq
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !77
  %.not75 = icmp eq i8 %i.ct, 0                   ; 2 uses
  %i.cu = zext i1 %.not75 to i64
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !242
  %i.cw = add nsw i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !242
  %i.cx = add nsw i64 %.in, -1
  %i.cy = select i1 %.not69, i8 0, i8 2
  %i.cz = or disjoint i8 %i.cy, %i.az
  %i.da = select i1 %.not70, i8 0, i8 4
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not71, i8 0, i8 8
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not72, i8 0, i8 16
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not73, i8 0, i8 32
  %i.dh = or disjoint i8 %i.df, %i.dg
  %i.di = select i1 %.not74, i8 0, i8 64
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = select i1 %.not75, i8 0, i8 -128
  %i.dl = or i8 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.14154, i64 1 ; 2 uses
  store i8 %i.dl, ptr %.14154, align 1, !tbaa !77
  %i.dn = icmp samesign ugt i64 %.in, 1
  br i1 %i.dn, label %.preheader48, label %._crit_edge55, !llvm.loop !459

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.dm, %.preheader48 ]
  %i.do = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.do, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !239
  %i.ds = load ptr, ptr %3, align 8, !tbaa !456, !nonnull !108, !align !438
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !233 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !457, !nonnull !108, !align !438 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 64 ; 6 uses
  %xtraiter = and i64 %i.do, 1
  %i.dx = icmp eq i64 %i.do, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.do, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.er, %bb.f ] ; 3 uses
  %.13957 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !95
  %i.ea = getelementptr inbounds i8, ptr %i.dt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !77
  %.not47 = icmp eq i8 %i.eb, 0                   ; 2 uses
  %i.ec = zext i1 %.not47 to i64
  %i.ed = load i64, ptr %i.dw, align 8, !tbaa !242
  %i.ee = add nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !242
  %i.ef = select i1 %.not47, i8 0, i8 %.13758
  %i.eg = or i8 %i.ef, %.13957
  %i.eh = shl nuw i8 %.13758, 1
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.dv, align 8, !tbaa !95
  %i.ek = getelementptr inbounds i8, ptr %i.dt, i64 %i.ei
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !77
  %.not47.1 = icmp eq i8 %i.el, 0                 ; 2 uses
  %i.em = zext i1 %.not47.1 to i64
  %i.en = load i64, ptr %i.dw, align 8, !tbaa !242
  %i.eo = add nsw i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.dw, align 8, !tbaa !242
  %i.ep = select i1 %.not47.1, i8 0, i8 %i.eh
  %i.eq = or i8 %i.ep, %i.eg                      ; 3 uses
  %i.er = shl nuw i8 %.13758, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge61.loopexit.unr-lcssa, label %bb.f, !llvm.loop !460

._crit_edge61.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.loopexit.unr-lcssa, %.lr.ph60
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.er, %._crit_edge61.loopexit.unr-lcssa ]
  %.13957.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %i.do to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.es = load i64, ptr %i.dv, align 8, !tbaa !95 ; 2 uses
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.dv, align 8, !tbaa !95
  %i.eu = getelementptr inbounds i8, ptr %i.dt, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !77
  %.not47.epil = icmp eq i8 %i.ev, 0              ; 2 uses
  %i.ew = zext i1 %.not47.epil to i64
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !242
  %i.ey = add nsw i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.dw, align 8, !tbaa !242
  %i.ez = select i1 %.not47.epil, i8 0, i8 %.13758.epil.init
  %i.fa = or i8 %i.ez, %.13957.epil.init
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %.epil.preheader, %._crit_edge61.loopexit.unr-lcssa, %.preheader
  %.139.lcssa = phi i8 [ 0, %.preheader ], [ %i.eq, %._crit_edge61.loopexit.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  store i8 %.139.lcssa, ptr %.141.lcssa, align 1, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge61, %bb.a
  ret void
}

declare void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !197
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !197
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !161

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !461
  call void @_ZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3), !noalias !461
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !290, !noalias !461 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !461
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 8, !tbaa !290, !noalias !461 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !77, !noalias !461
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !461
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !461
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !464
  call void @_ZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5), !noalias !464
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !290, !noalias !464 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !77, !noalias !464
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5arrow6Status8FromArgsIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %6, align 8, !tbaa !290, !noalias !464 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !77, !noalias !464
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !464
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !464
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !428, !nonnull !108, !align !438
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %1) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !428, !nonnull !108, !align !438
  %i.f = load i64, ptr %2, align 8, !tbaa !95
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !428, !nonnull !108, !align !438
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #23
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE5ResetEv:bb.a

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, !prof !161

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #23
  br label %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.t, align 8, !tbaa !210
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130  ; 8 uses
  store ptr null, ptr %i.u, align 8, !tbaa !130
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !159
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !484
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !484
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i.i.i.i.i.i.i2 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i4 = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i4, 1
  br i1 %i.ak, label %bb.m, label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit, !prof !161

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23
  br label %_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderIhvE5ResetEv.exit:   ; preds = %_ZN5arrow18TypedBufferBuilderIivE5ResetEv.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i3, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82, !noalias !485 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54, !noalias !485
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !485
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !485, !inline_history !86 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !54, !noalias !485
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !485
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %2, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i64, ptr %i.r, align 8, !tbaa !93
  %i.v = add nsw i64 %i.u, 4
  store i64 %i.v, ptr %i.r, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94   ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !77
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !77
  %i.ag = xor i8 %i.af, -1
  %i.ah = and i8 %i.ac, %i.ag
  store i8 %i.ah, ptr %i.ab, align 1, !tbaa !77
  %i.ai = load <2 x i64>, ptr %i.y, align 8, !tbaa !95
  %i.aj = add nsw <2 x i64> %i.ai, splat (i64 1)
  store <2 x i64> %i.aj, ptr %i.y, align 8, !tbaa !95
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.al = load <2 x i64>, ptr %i.ak, align 8, !tbaa !95
  %i.am = add nsw <2 x i64> %i.al, splat (i64 1)
  store <2 x i64> %i.am, ptr %i.ak, align 8, !tbaa !95
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !488
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE11AppendNullsEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !491 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54, !noalias !491
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !491
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !491, !inline_history !86
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !54, !noalias !491
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !491
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = trunc i64 %i.b to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !93  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.epil.init
  store i32 %i.p, ptr %i.u, align 1
  %i.v = load i64, ptr %i.r, align 8, !tbaa !93
  %i.w = add nsw i64 %i.v, 4
  store i64 %i.w, ptr %i.r, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !494
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.x = phi i64 [ %.pre, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x
  store i32 %i.p, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !93
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !93
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i32 %i.p, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !93
  %i.af = add nsw i64 %i.ae, 4                    ; 3 uses
  store i64 %i.af, ptr %i.r, align 8, !tbaa !93
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !497

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82, !noalias !498 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54, !noalias !498
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !498
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !498, !inline_history !86 ; 2 uses
  %.not.i.not = icmp slt i64 %i.f, %i.b
  br i1 %.not.i.not, label %_ZN5arrow6StatusD2Ev.exit9.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = add nsw i64 %i.f, 1
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !54, !noalias !498
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !498
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %2, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i32 %i.o, ptr %i.t, align 1
  %i.u = load i64, ptr %i.r, align 8, !tbaa !93
  %i.v = add nsw i64 %i.u, 4
  store i64 %i.v, ptr %i.r, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94   ; 2 uses
  %i.aa = sdiv i64 %i.z, 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !77
  %i.ad = srem i64 %i.z, 8
  %i.ae = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !77
  %i.ag = or i8 %i.af, %i.ac
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !77
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !94
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !95
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !95
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !501
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE17AppendEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !504 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54, !noalias !504
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !504
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !504, !inline_history !86
  %i.i = add nsw i64 %i.h, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !54, !noalias !504
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !504
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.o = icmp sgt i64 %2, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.p = trunc i64 %i.b to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 7 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !93  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod21)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.epil.init
  store i32 %i.p, ptr %i.u, align 1
  %i.v = load i64, ptr %i.r, align 8, !tbaa !93
  %i.w = add nsw i64 %i.v, 4
  store i64 %i.w, ptr %i.r, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !507
  br label %.critedge

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.x = phi i64 [ %.pre, %.lr.ph.new ], [ %i.af, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x
  store i32 %i.p, ptr %i.z, align 1
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !93
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !93
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i32 %i.p, ptr %i.ad, align 1
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !93
  %i.af = add nsw i64 %i.ae, 4                    ; 3 uses
  store i64 %i.af, ptr %i.r, align 8, !tbaa !93
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !510

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr [4 x i8], ptr %i.i, i64 %3 ; 3 uses
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = load i32, ptr %i.l, align 4, !tbaa !3
  %i.p = sub nsw i32 %i.n, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82, !noalias !511 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !54, !noalias !511
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !511
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !511, !inline_history !86
  %i.w = add nsw i64 %i.v, %4                     ; 2 uses
  %.not.i = icmp sgt i64 %i.w, %i.r
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN5arrow6StatusD2Ev.exit48

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.x = shl nsw i64 %i.r, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.w, i64 %i.x)
  %i.y = load ptr, ptr %1, align 8, !tbaa !54, !noalias !511
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !511
  call void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !86
  %.pr = load ptr, ptr %6, align 8, !tbaa !87     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ab = icmp eq ptr %.pr, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ac = sext i32 %i.p to i64                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !517
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 7 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !517
  %i.af = add nsw i64 %i.ae, %i.ac                ; 3 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !95, !noalias !517
  %i.ag = icmp sgt i64 %i.af, 2147483646
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit10.thread.i, !prof !161

_ZN5arrow6StatusD2Ev.exit10.thread.i:             ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !517
  store ptr null, ptr %7, align 8, !tbaa !87, !alias.scope !514
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !514
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !517
  store i64 2147483646, ptr %i.b, align 8, !tbaa !95, !noalias !517
  call void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !517
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !87, !noalias !514 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !517
  store ptr %.pr.i, ptr %7, align 8, !tbaa !87, !alias.scope !514
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !514
  %i.ah = icmp eq ptr %.pr.i, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit50.thread56

_ZN5arrow6StatusD2Ev.exit50.thread56:             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %.pr.i, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pre.i = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !520
  %.pre12.i = add nsw i64 %.pre.i, %i.ac
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit10.thread.i
  %.pre-phi.i = phi i64 [ %.pre12.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.af, %_ZN5arrow6StatusD2Ev.exit10.thread.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !246, !noalias !520 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.aj
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit50, label %_ZN5arrow6StatusD2Ev.exit50.thread

_ZN5arrow6StatusD2Ev.exit50.thread:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN5arrow6StatusD2Ev.exit54

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.al = shl nsw i64 %i.aj, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.al)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
  %.pr55 = load ptr, ptr %7, align 8, !tbaa !87   ; 2 uses
  store ptr %.pr55, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.am = icmp eq ptr %.pr55, null
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit50.thread
  %i.an = icmp sgt i64 %4, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %.not = icmp eq ptr %i.d, null
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %_ZN5arrow6StatusD2Ev.exit54
  store ptr null, ptr %0, align 8, !tbaa !87, !alias.scope !525
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.03657 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.g ] ; 3 uses
  br i1 %.not, label %._crit_edge58, label %bb.d

._crit_edge58:                                    ; preds = %bb.c
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !93
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.e, align 8, !tbaa !68
  %i.aw = add i64 %.03657, %3
  %i.ax = add i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !77
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  %i.be = trunc i8 %i.bd to i1
  %.pre59 = load i64, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge58, %bb.d
  %i.bf = phi i64 [ %.pre, %._crit_edge58 ], [ %.pre59, %bb.d ]
  %i.bg = getelementptr [4 x i8], ptr %i.l, i64 %.03657 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds i8, ptr %i.k, i64 %i.bk
  %i.bm = sub nsw i32 %i.bj, %i.bh
  %i.bn = trunc i64 %i.bf to i32
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !93
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  store i32 %i.bn, ptr %i.bq, align 1
  %i.br = load i64, ptr %i.ap, align 8, !tbaa !93
  %i.bs = add nsw i64 %i.br, 4
  store i64 %i.bs, ptr %i.ap, align 8, !tbaa !93
  %i.bt = sext i32 %i.bm to i64                   ; 2 uses
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.bv = load i64, ptr %i.ad, align 8, !tbaa !93
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bl, i64 %i.bt, i1 false)
  %i.bx = load i64, ptr %i.ad, align 8, !tbaa !93
  %i.by = add nsw i64 %i.bx, %i.bt
  store i64 %i.by, ptr %i.ad, align 8, !tbaa !93
  %i.bz = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !94 ; 2 uses
  %i.cb = sdiv i64 %i.ca, 8
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !77
  %i.ce = srem i64 %i.ca, 8
  %i.cf = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !77
  %i.ch = or i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.cc, align 1, !tbaa !77
  %i.ci = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ar, align 8, !tbaa !94
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !95
  %i.cl = add nsw i64 %i.ck, 1
end_hunk_2
