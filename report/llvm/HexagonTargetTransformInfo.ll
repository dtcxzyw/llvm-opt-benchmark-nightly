Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonTargetTransformInfo?download=true
inline.NumInlined: 4800
inline.NumDeleted: 1942
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK4llvm14HexagonTTIImpl16getPopcntSupportEj:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4llvm14HexagonTTIImpl23getUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS_19TargetTransformInfo20UnrollingPreferencesEPNS_25OptimizationRemarkEmitterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(70) initializes((44, 46)) %3, ptr nofree readnone captures(none) %4) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 1, ptr %i.a, align 4, !tbaa !418
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 45
  store i8 1, ptr %i.b, align 1, !tbaa !419
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14HexagonTTIImpl21getPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERNS_19TargetTransformInfo18PeelingPreferencesE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 7)) %3) unnamed_addr #4 align 2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !421
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 1, ptr %i.a, align 4, !tbaa !422
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !423
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 1, ptr %i.c, align 2, !tbaa !424
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !426
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !426
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN4llvm7canPeelEPKNS_4LoopE(ptr noundef nonnull %1) #23
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i32 @_ZN4llvm15ScalarEvolution25getSmallConstantTripCountEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull %1) #23
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantMaxTripCountEPKNS_4LoopEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull %1, ptr noundef null) #23
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantMaxTripCountEPKNS_4LoopEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %2, ptr noundef nonnull %1, ptr noundef null) #23
  %i.n = icmp ult i32 %i.m, 6
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4llvm7canPeelEPKNS_4LoopE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm15ScalarEvolution25getSmallConstantTripCountEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantMaxTripCountEPKNS_4LoopEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm14HexagonTTIImpl26getPreferredAddressingModeEPKNS_4LoopEPNS_15ScalarEvolutionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #7 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 33) i32 @_ZNK4llvm14HexagonTTIImpl20getNumberOfRegistersEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34, !nonnull !23, !align !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.e = load i32, ptr %i.d, align 8, !tbaa !151
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  %i.j = select i1 %i.i, i32 32, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZNK4llvm14HexagonTTIImpl22getMaxInterleaveFactorENS_12ElementCountEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i1 zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !23, !align !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  %i.i = select i1 %i.h, i32 2, i32 1
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i8 } @_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !23, !align !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.j = load i8, ptr %i.i, align 8, !range !22
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.k, i64 512, i64 1024
  br label %_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv.exit

_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 32, %bb.b ]
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %i.m, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 0, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.d, %_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv.exit
  %.pn = phi { i64, i8 } [ { i64 0, i8 1 }, %bb.d ], [ %.fca.1.insert.i, %_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv.exit ], [ { i64 32, i8 0 }, %bb.a ]
  ret { i64, i8 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 32, 1025) i32 @_ZNK4llvm14HexagonTTIImpl28getMinVectorRegisterBitWidthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !23, !align !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.j = load i8, ptr %i.i, align 8, !range !22
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select.i = select i1 %i.k, i32 512, i32 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %spec.select.i, %bb.b ], [ 32, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 1025) i64 @_ZNK4llvm14HexagonTTIImpl12getMinimumVFEjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i1 zeroext %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34, !nonnull !23, !align !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load i32, ptr %i.c, align 8, !tbaa !151
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.g = load i8, ptr %i.f, align 8, !range !22
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  %spec.select.i = select i1 %i.i, i32 512, i32 1024
  %i.j = udiv i32 %spec.select.i, %1
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.j to i64
  ret i64 %.sroa.0.0.insert.ext.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl16getCallInstrCostEPNS_8FunctionEPNS_4TypeENS_8ArrayRefIS4_EENS_19TargetTransformInfo14TargetCostKindE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4, i32 %5) unnamed_addr #7 align 2 {
bb.a:
  ret { i64, i32 } { i64 40, i32 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.203", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !181
  %i.c = icmp eq i32 %i.b, 20
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183, !noalias !429, !nonnull !23, !align !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184, !noalias !429, !nonnull !23, !align !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !185, !noalias !429, !nonnull !23, !align !35
  %i.k = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.h, ptr noundef nonnull align 8 dereferenceable(912) %i.j, ptr noundef nonnull %i.e, i1 noundef zeroext false), !noalias !429 ; 2 uses
  %i.l = extractvalue { i16, ptr } %i.k, 0
  %i.m = extractvalue { i16, ptr } %i.k, 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.019.0.i = phi i64 [ 4, %bb.b ], [ %.sroa.019.1.i, %bb.h ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.l, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.h ] ; 2 uses
  %.sroa.1027.0.i = phi ptr [ %i.m, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !429
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !184, !noalias !429, !nonnull !23, !align !35
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.203") align 8 %3, ptr noundef nonnull align 8 dereferenceable(518435) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !429
  %i.p = load i8, ptr %3, align 8, !tbaa !191, !noalias !429 ; 2 uses
  switch i8 %i.p, label %bb.d [
    i8 9, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = and i8 %i.p, -5
  %or.cond.i = icmp eq i8 %i.q, 2
  br i1 %or.cond.i, label %bb.e, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.s = icmp ult i64 %i.r, -2305843009213693952
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.t, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.g:                                             ; preds = %bb.e
  %i.u = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.d ], [ %i.u, %bb.g ], [ %spec.select28.i, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.n, align 8, !tbaa !192, !noalias !429 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !193, !noalias !429 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.v = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.v, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !429
  br label %bb.c, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit: ; preds = %bb.c, %_ZN4llvm15InstructionCostmLEl.exit.i
  %.sroa.019.1.lcssa.sink.i.ph = phi i64 [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.c ]
  %i.w = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i.ph, i64 8)
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.c, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit
  %.sroa.019.1.lcssa.sink.i = phi i64 [ %i.w, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit ], [ 8, %bb.c ]
  %.sink.i = phi i32 [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit.loopexit ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !429
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.019.1.lcssa.sink.i, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sink.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.x = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.pn = phi { i64, i32 } [ %.fca.1.insert.i, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ], [ %i.x, %bb.i ]
  ret { i64, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.203", align 8    ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !183, !nonnull !23, !align !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !23, !align !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185, !nonnull !23, !align !35
  %i.f = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.c, ptr noundef nonnull align 8 dereferenceable(912) %i.e, ptr noundef nonnull %2, i1 noundef zeroext false) ; 2 uses
  %i.g = extractvalue { i16, ptr } %i.f, 0
  %i.h = extractvalue { i16, ptr } %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.019.0 = phi i64 [ 4, %bb.a ], [ %.sroa.019.1, %bb.h ] ; 5 uses
  %.sroa.025.0 = phi i16 [ %i.g, %bb.a ], [ %.sroa.0.0.copyload, %bb.h ] ; 6 uses
  %.sroa.1027.0 = phi ptr [ %i.h, %bb.a ], [ %.sroa.24.0.copyload, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !184, !nonnull !23, !align !35
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.203") align 8 %3, ptr noundef nonnull align 8 dereferenceable(518435) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i16 %.sroa.025.0, ptr %.sroa.1027.0) #23
  %i.k = load i8, ptr %3, align 8, !tbaa !191     ; 2 uses
  switch i8 %i.k, label %bb.d [
    i8 9, label %bb.c
    i8 0, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i16 %.sroa.025.0, 0
  %spec.select = select i1 %.not, i16 8, i16 %.sroa.025.0
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.l = and i8 %i.k, -5
  %or.cond = icmp eq i8 %i.l, 2
  br i1 %or.cond, label %bb.e, label %_ZN4llvm15InstructionCostmLEl.exit

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.sroa.019.0, -1152921504606846976
  %i.n = icmp ult i64 %i.m, -2305843009213693952
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %.sroa.019.0, 0
  %spec.select28 = select i1 %i.o, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit

bb.g:                                             ; preds = %bb.e
  %i.p = shl nsw i64 %.sroa.019.0, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit

_ZN4llvm15InstructionCostmLEl.exit:               ; preds = %bb.f, %bb.g, %bb.d
  %.sroa.019.1 = phi i64 [ %.sroa.019.0, %bb.d ], [ %i.p, %bb.g ], [ %spec.select28, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !193 ; 2 uses
  %.not.i.i = icmp eq i16 %.sroa.025.0, %.sroa.0.0.copyload
  %i.q = icmp eq ptr %.sroa.1027.0, %.sroa.24.0.copyload
  %.not4.i = select i1 %.not.i.i, i1 %i.q, i1 false
  br i1 %.not4.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.b, !llvm.loop !1

.critedge:                                        ; preds = %_ZN4llvm15InstructionCostmLEl.exit, %bb.b, %bb.c
  %.sroa.019.1.lcssa.sink = phi i64 [ 0, %bb.c ], [ %.sroa.019.0, %bb.b ], [ %.sroa.019.1, %_ZN4llvm15InstructionCostmLEl.exit ]
  %.sink = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit ]
  %.sroa.025.0.lcssa38.sink = phi i16 [ %spec.select, %bb.c ], [ %.sroa.025.0, %bb.b ], [ %.sroa.025.0, %_ZN4llvm15InstructionCostmLEl.exit ]
  store i64 %.sroa.019.1.lcssa.sink, ptr %0, align 8, !tbaa !195
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %.sroa.7.0..sroa_idx21, align 8, !tbaa !196
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.sroa.025.0.lcssa38.sink, ptr %i.r, align 8, !tbaa !192
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.llvm::ArrayRef.126", align 8 ; 4 uses
  %5 = alloca %"class.llvm::ArrayRef.108", align 8 ; 2 uses
  %6 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 9 uses
  %7 = alloca %"class.llvm::IntrinsicCostAttributes", align 8 ; 5 uses
  %8 = alloca %"class.llvm::InstructionCost", align 8 ; 3 uses
  %9 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %10 = alloca %"class.llvm::IntrinsicCostAttributes", align 8 ; 5 uses
  %11 = alloca %"class.llvm::InstructionCost", align 8 ; 3 uses
  %12 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %13 = alloca %"class.llvm::IntrinsicCostAttributes", align 8 ; 5 uses
  %14 = alloca %"class.llvm::ArrayRef.96", align 8 ; 3 uses
  %15 = alloca %"class.llvm::InstructionCost", align 8 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %17 = alloca %"class.llvm::ArrayRef.108", align 8 ; 2 uses
  %18 = alloca %"class.llvm::ArrayRef.108", align 8 ; 2 uses
  %19 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %20 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %21 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %22 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %23 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %24 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE:bb.a
  store ptr %i.xd, ptr %i.xv, align 8, !tbaa !193
  store i64 0, ptr %53, align 8
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 1, ptr %.sroa.233.0..sroa_idx, align 8
  call void @_ZN4llvm23IntrinsicCostAttributesC1EjPNS_4TypeENS_8ArrayRefIS2_EENS_13FastMathFlagsEPKNS_13IntrinsicInstENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(144) %52, i32 noundef 195, ptr noundef nonnull %i.hy, ptr nonnull %i.f, i64 2, i32 %.sroa.0.0.copyload.i766, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.xw = call { i64, i32 } @_ZNK4llvm14HexagonTTIImpl21getIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(144) %52, i32 noundef %2) ; 2 uses
  %.fca.0.extract26 = extractvalue { i64, i32 } %i.xw, 0
  %.fca.1.extract27 = extractvalue { i64, i32 } %i.xw, 1
  %i.xx = icmp eq i32 %.fca.1.extract27, 1
  %i.xy = select i1 %i.xx, i1 true, i1 %i.xu
  %i.xz = select i1 %i.xy, i1 true, i1 %i.xs
  %i.ya = select i1 %i.xz, i1 true, i1 %i.xo
  %.sroa.78.25 = select i1 %i.ya, i32 1, i32 %.sroa.78.4
  %.0.i833 = call i64 @llvm.sadd.sat.i64(i64 %.0.i830, i64 %.fca.0.extract26)
  call void @_ZN4llvm23IntrinsicCostAttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  br label %bb.cv

.critedge720:                                     ; preds = %_ZNSt8optionalIjEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %.critedge718

.critedge718:                                     ; preds = %bb.ar, %_ZNK4llvm18TargetLoweringBase24isBeneficialToExpandPowIElb.exit, %bb.bw, %.critedge720, %bb.be, %bb.bf, %bb.bc, %bb.bd, %bb.aq
  %i.yb = and i64 %storemerge.in, 4294967296
  %i.yc = icmp ne i64 %i.yb, 0
  %i.yd = and i64 %storemerge.in, 4294967294
  %i.ye = icmp eq i64 %i.yd, 0
  %brmerge = or i1 %i.yc, %i.ye
  br i1 %brmerge, label %bb.cu, label %bb.cm

bb.cm:                                            ; preds = %.critedge718
  %i.yf = load i32, ptr %i.hz, align 8
  %trunc = trunc i32 %i.yf to i8
  switch i8 %trunc, label %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit.thread [
    i8 7, label %_ZN4llvm15InstructionCostpLERKS0_.exit842
    i8 16, label %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit
  ]

_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit.thread: ; preds = %bb.cm
  %i.yg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit:    ; preds = %bb.cm
  %i.yh = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !211 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !251 ; 2 uses
  %i.yl = zext i32 %i.yk to i64
  %i.ym = shl nuw nsw i64 %i.yl, 3
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.ym
  %.not7121121 = icmp eq i32 %i.yk, 0
  br i1 %.not7121121, label %_ZN4llvm15InstructionCostpLERKS0_.exit842, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit.thread, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit
  %i.yo = phi ptr [ %i.yg, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit.thread ], [ %i.yn, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ]
  %.sroa.0.1.i1148 = phi ptr [ %i.a, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit.thread ], [ %i.yi, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ]
  %i.yp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit
  %.06841124 = phi ptr [ %.sroa.0.1.i1148, %.lr.ph ], [ %i.zj, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ] ; 2 uses
  %.sroa.0858.01123 = phi i64 [ 0, %.lr.ph ], [ %.0.i839, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  %.sroa.9.01122 = phi i32 [ 0, %.lr.ph ], [ %spec.select1088, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  %i.yq = load ptr, ptr %.06841124, align 8, !tbaa !193 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = load i32, ptr %i.yr, align 8
  %i.yt = and i32 %i.ys, 255
  %i.yu = icmp eq i32 %i.yt, 19
  br i1 %i.yu, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !165 ; 4 uses
  store i32 %i.yw, ptr %i.yp, align 8, !tbaa !245, !alias.scope !436
  %i.yx = icmp ult i32 %i.yw, 65
  br i1 %i.yx, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.yy = sub nsw i32 0, %i.yw
  %i.yz = and i32 %i.yy, 63
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = lshr i64 -1, %i.za
  %i.zc = icmp eq i32 %i.yw, 0
  %spec.select.i.i.i = select i1 %i.zc, i64 0, i64 %i.zb, !prof !252
  store i64 %spec.select.i.i.i, ptr %3, align 8, !tbaa !218, !alias.scope !436
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

bb.cq:                                            ; preds = %bb.co
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef -1, i1 noundef zeroext true) #23
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

_ZN4llvm5APInt10getAllOnesEj.exit.i:              ; preds = %bb.cq, %bb.cp
  %i.zd = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.yq, ptr noundef nonnull align 8 dereferenceable(12) %3, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.126") align 8 %4, i8 noundef zeroext 0)
  %i.ze = load i32, ptr %i.yp, align 8, !tbaa !245
  %i.zf = icmp ugt i32 %i.ze, 64
  br i1 %i.zf, label %bb.cr, label %_ZN4llvm5APIntD2Ev.exit.i

bb.cr:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i
  %i.zg = load ptr, ptr %3, align 8, !tbaa !218   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZdaPv(ptr noundef nonnull %i.zg) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.cs, %bb.cr, %_ZN4llvm5APInt10getAllOnesEj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit: ; preds = %bb.cn, %_ZN4llvm5APIntD2Ev.exit.i
  %.pn.i = phi { i64, i32 } [ %i.zd, %_ZN4llvm5APIntD2Ev.exit.i ], [ { i64 0, i32 1 }, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract12 = extractvalue { i64, i32 } %.pn.i, 0
  %.fca.1.extract13 = extractvalue { i64, i32 } %.pn.i, 1
  %i.zi = icmp eq i32 %.fca.1.extract13, 1
  %spec.select1088 = select i1 %i.zi, i32 1, i32 %.sroa.9.01122 ; 2 uses
  %.0.i839 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0858.01123, i64 %.fca.0.extract12) ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.06841124, i64 8 ; 2 uses
  %.not712 = icmp eq ptr %i.zj, %i.yo
  br i1 %.not712, label %_ZN4llvm15InstructionCostpLERKS0_.exit842, label %bb.cn

_ZN4llvm15InstructionCostpLERKS0_.exit842:        ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit, %bb.cm
  %.sroa.9.1 = phi i32 [ 0, %bb.cm ], [ 0, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ], [ %spec.select1088, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  %.sroa.0858.1 = phi i64 [ 0, %bb.cm ], [ 0, %_ZN4llvm17getContainedTypesERKPNS_4TypeE.exit ], [ %.0.i839, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.zk = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.zl = load i32, ptr %i.hu, align 8, !tbaa !210
  %i.zm = zext i32 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !26
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !210
  %i.zr = zext i32 %i.zq to i64
  call void @_ZN4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE35filterConstantAndDuplicatedOperandsENS_8ArrayRefIPKNS_5ValueEEENS3_IPNS_4TypeEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.97") align 8 %54, ptr %i.zk, i64 %i.zm, ptr %i.zo, i64 %i.zr)
  %i.zs = load ptr, ptr %54, align 8, !tbaa !26
  %i.zt = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !210
  %i.zv = zext i32 %i.zu to i64
  %i.zw = load ptr, ptr %0, align 8, !tbaa !14
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 720
  %i.zy = load ptr, ptr %i.zx, align 8
  %i.zz = call { i64, i32 } %i.zy(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.zs, i64 %i.zv, i32 noundef %2, i8 noundef zeroext 0) #23 ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %i.zz, 0
  %.fca.1.extract9 = extractvalue { i64, i32 } %i.zz, 1
  %i.aaa = icmp eq i32 %.fca.1.extract9, 1
  %spec.select1089 = select i1 %i.aaa, i32 1, i32 %.sroa.9.1
  %.0.i841 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0858.1, i64 %.fca.0.extract8)
  %i.aab = load ptr, ptr %54, align 8, !tbaa !26  ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit842
  call void @free(ptr noundef %i.aab) #23
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit:   ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit842, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %bb.cu

bb.cu:                                            ; preds = %.critedge718, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit
  %.sroa.9.2 = phi i32 [ 1, %.critedge718 ], [ %spec.select1089, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit ]
  %.sroa.0858.2 = phi i64 [ 0, %.critedge718 ], [ %.0.i841, %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !26
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !210
  %i.aai = zext i32 %i.aah to i64
  store i64 %.sroa.0858.2, ptr %56, align 8, !tbaa !195
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i32 %.sroa.9.2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !196
  call void @_ZN4llvm23IntrinsicCostAttributesC1EjPNS_4TypeENS_8ArrayRefIS2_EENS_13FastMathFlagsEPKNS_13IntrinsicInstENS_15InstructionCostE(ptr noundef nonnull align 8 dereferenceable(144) %55, i32 noundef %i.l, ptr noundef %i.hy, ptr %i.aaf, i64 %i.aai, i32 %.sroa.0.0.copyload.i766, ptr noundef %i.in, ptr noundef nonnull byval(%"class.llvm::InstructionCost") align 8 %56) #23
  %i.aaj = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE30getTypeBasedIntrinsicInstrCostERKNS_23IntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %55, i32 noundef %2) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.aaj, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.aaj, 1
  call void @_ZN4llvm23IntrinsicCostAttributesD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  br label %bb.cv

bb.cv:                                            ; preds = %bb.bw, %bb.bu, %bb.bs, %_ZN4llvm15InstructionCostpLERKS0_.exit796, %_ZN4llvm15InstructionCostpLERKS0_.exit808, %_ZN4llvm13isPowerOf2_32Ej.exit.thread, %bb.bq, %bb.aq, %bb.bf, %bb.bd, %_ZN4llvm5APIntD2Ev.exit, %bb.ck, %bb.cu, %_ZN4llvm15InstructionCostpLERKS0_.exit827, %bb.cj, %bb.ci, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bm, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.sroa.01031.5 = phi i64 [ %.fca.0.extract, %bb.cu ], [ %.sroa.01031.1, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i833, %_ZN4llvm15InstructionCostpLERKS0_.exit827 ], [ 4, %bb.bd ], [ 4, %bb.bf ], [ %.fca.0.extract297, %bb.bg ], [ %.fca.0.extract290, %bb.bh ], [ %.fca.0.extract283, %bb.bi ], [ %.fca.0.extract277, %bb.bj ], [ %.fca.0.extract266, %bb.bm ], [ %.fca.0.extract257, %bb.bp ], [ %.fca.0.extract253, %bb.br ], [ 16, %bb.aq ], [ %.fca.0.extract249, %bb.bt ], [ %.0.i809, %_ZN4llvm15InstructionCostpLERKS0_.exit808 ], [ %.fca.0.extract240, %bb.bv ], [ 4, %bb.bs ], [ 4, %bb.bu ], [ %.fca.0.extract222, %bb.bx ], [ %.fca.0.extract215, %bb.by ], [ 4, %bb.bq ], [ %.sroa.01031.3, %bb.ci ], [ %.fca.0.extract93, %bb.cj ], [ %.sroa.01031.0.copyload1049, %bb.ck ], [ %.0.i799, %_ZN4llvm15InstructionCostpLERKS0_.exit796 ], [ %.0.i805, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 4, %bb.bw ]
  %.sroa.78.5 = phi i32 [ %.fca.1.extract, %bb.cu ], [ %.sroa.78.1, %_ZN4llvm5APIntD2Ev.exit ], [ %.sroa.78.25, %_ZN4llvm15InstructionCostpLERKS0_.exit827 ], [ 0, %bb.bd ], [ 0, %bb.bf ], [ %.fca.1.extract298, %bb.bg ], [ %.fca.1.extract291, %bb.bh ], [ %.fca.1.extract284, %bb.bi ], [ %.fca.1.extract278, %bb.bj ], [ %.fca.1.extract267, %bb.bm ], [ %.fca.1.extract258, %bb.bp ], [ %.fca.1.extract254, %bb.br ], [ 0, %bb.aq ], [ %.fca.1.extract250, %bb.bt ], [ %.sroa.78.15, %_ZN4llvm15InstructionCostpLERKS0_.exit808 ], [ %.fca.1.extract241, %bb.bv ], [ 0, %bb.bs ], [ 0, %bb.bu ], [ %.fca.1.extract223, %bb.bx ], [ %.fca.1.extract216, %bb.by ], [ 0, %bb.bq ], [ %.sroa.78.3, %bb.ci ], [ %.fca.1.extract94, %bb.cj ], [ %.sroa.78.0.copyload1051, %bb.ck ], [ %.sroa.78.11, %_ZN4llvm15InstructionCostpLERKS0_.exit796 ], [ %spec.select1082, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ], [ 0, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.m, %bb.p, %bb.r, %bb.u, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread, %bb.z, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread, %bb.ad, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread, %bb.ai, %bb.al, %bb.b, %bb.a, %bb.am, %bb.cv
  %.sroa.01031.7 = phi i64 [ %.fca.0.extract398, %bb.al ], [ 0, %bb.a ], [ 4, %bb.b ], [ %.fca.0.extract394, %bb.am ], [ %.sroa.01031.5, %bb.cv ], [ %.fca.0.extract506, %bb.i ], [ %.fca.0.extract493, %bb.m ], [ %.fca.0.extract485, %bb.p ], [ %.fca.0.extract481, %bb.r ], [ %.fca.0.extract462, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread ], [ %.fca.0.extract451, %bb.z ], [ %.fca.0.extract442, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread ], [ %.fca.0.extract431, %bb.ad ], [ %.fca.0.extract422, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread ], [ %.fca.0.extract414, %bb.ai ], [ %.fca.0.extract472, %bb.u ]
  %.sroa.78.7 = phi i32 [ %.fca.1.extract399, %bb.al ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.fca.1.extract395, %bb.am ], [ %.sroa.78.5, %bb.cv ], [ %.fca.1.extract507, %bb.i ], [ %.fca.1.extract494, %bb.m ], [ %.fca.1.extract486, %bb.p ], [ %.fca.1.extract482, %bb.r ], [ %.fca.1.extract463, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit732.thread ], [ %.fca.1.extract452, %bb.z ], [ %.fca.1.extract443, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit739.thread ], [ %.fca.1.extract432, %bb.ad ], [ %.fca.1.extract423, %_ZN4llvm16dyn_cast_or_nullINS_11VPIntrinsicEKNS_13IntrinsicInstEEEDaPT0_.exit749.thread ], [ %.fca.1.extract415, %bb.ai ], [ %.fca.1.extract473, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.01031.7, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.78.7, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl25getAddressComputationCostEPNS_4TypeEPNS_15ScalarEvolutionEPKNS_4SCEVENS_19TargetTransformInfo14TargetCostKindE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4) unnamed_addr #7 align 2 {
bb.a:
  ret { i64, i32 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 %6, ptr noundef %7) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 33
  %i.b = icmp eq i32 %5, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 33, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef 1, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract41 = extractvalue { i64, i32 } %i.c, 0
  %.fca.1.extract42 = extractvalue { i64, i32 } %i.c, 1
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 34
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 34, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i32 } %i.e, 0
  %.fca.1.extract36 = extractvalue { i64, i32 } %i.e, 1
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 254
  %spec.select.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.i = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  %.fca.0.extract25 = extractvalue { i64, i8 } %i.i, 0
  %i.j = trunc i64 %.fca.0.extract25 to i32       ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !23, !align !35
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm16HexagonSubtarget12isTypeForHVXEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(519600) %i.l, ptr noundef nonnull %2, i1 noundef zeroext false) #23
  br i1 %i.m, label %bb.h, label %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge

._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge: ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !158
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre112 = load i32, ptr %.phi.trans.insert111, align 8 ; 2 uses
  %.pre113 = trunc i32 %.pre112 to i8
  br label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !34, !nonnull !23, !align !35 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !151  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 9
  br i1 %i.q, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  %trunc.i.i.i = trunc i32 %i.u to i8             ; 2 uses
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i:       ; preds = %bb.i
  %i.v = and i32 %i.u, 253
  %spec.select.i.i = icmp eq i32 %i.v, 4
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %i.w = icmp eq i32 %i.p, 9
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21EnableV68FloatAutoHVX, i64 120), align 8, !range !22
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond104 = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond104, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, label %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101

_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i, %bb.h
  %i.z = icmp sgt i32 %i.p, 0
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL14HexagonAutoHVX, i64 120), align 8, !range !22
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.j, label %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit

bb.j:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.ae = load i8, ptr %i.ad, align 8, !range !22
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i64 512, i64 1024
  br label %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit

_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit: ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread, %bb.j
  %i.ah = phi i64 [ %i.ag, %bb.j ], [ 32, %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32          ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = and i32 %i.aj, %i.j
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit
  %i.am = tail call range(i32 5, 33) i32 @llvm.cttz.i32(i32 %i.ai, i1 true)
  %i.an = lshr i32 %i.j, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  br label %bb.p

bb.l:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl19getRegisterBitWidthENS_19TargetTransformInfo12RegisterKindE.exit
  %i.aq = lshr exact i64 %i.ah, 3
  %i.ar = tail call range(i64 56, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i8
  %i.at = xor i8 %i.as, 63
  %spec.select = tail call i8 @llvm.umin.i8(i8 %3, i8 %i.at)
  %i.au = add i32 %i.j, -1
  %narrow = add nuw nsw i8 %spec.select, 3
  %i.av = zext nneg i8 %narrow to i32             ; 2 uses
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = add nuw nsw i32 %i.aw, 1
  %i.ay = lshr i32 -1, %i.av
  %i.az = and i32 %i.ay, %i.ax
  %i.ba = mul nuw nsw i32 %i.az, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  br label %bb.p

_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101: ; preds = %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i
  %trunc.i.i.pre-phi = phi i8 [ %.pre113, %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge ], [ %trunc.i.i.i, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i ] ; 2 uses
  %i.bd = phi i32 [ %.pre112, %._ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101_crit_edge ], [ %i.u, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread.i ]
  %i.be = icmp ult i8 %trunc.i.i.pre-phi, 6
  %switch.shifted = lshr i8 47, %trunc.i.i.pre-phi
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond116 = select i1 %i.be, i1 %switch.lobit, i1 false
  %i.bf = and i32 %i.bd, 253
  %spec.select.i77 = icmp eq i32 %i.bf, 4
  %i.bg = select i1 %or.cond116, i1 true, i1 %spec.select.i77
  %i.bh = select i1 %i.bg, i32 2, i32 0           ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %3, i8 3) ; 2 uses
  %i.bi = icmp ne i32 %i.j, 0
  %i.bj = zext i1 %i.bi to i32                    ; 2 uses
  %i.bk = sub i32 %i.j, %i.bj
  %narrow115 = add nuw nsw i8 %.sroa.speculated, 3
  %i.bl = zext nneg i8 %narrow115 to i32          ; 2 uses
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = add nuw nsw i32 %i.bm, %i.bj
  %i.bo = lshr i32 -1, %i.bl
  %i.bp = and i32 %i.bo, %i.bn                    ; 2 uses
  %i.bq = and i8 %3, -2
  %switch = icmp eq i8 %i.bq, 2
  br i1 %switch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101
  %i.br = shl nuw nsw i32 %i.bp, %i.bh
  %i.bs = shl nuw i32 %i.br, 2
  %i.bt = zext i32 %i.bs to i64
  br label %bb.p

bb.n:                                             ; preds = %_ZNK4llvm14HexagonTTIImpl15isHVXVectorTypeEPNS_4TypeE.exit.thread101
  %i.bu = xor i8 %.sroa.speculated, 3
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, %i.bh
  %i.bx = mul i32 %i.bw, %i.bp
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 2
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.ca = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.ca, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.ca, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.c, %bb.l, %bb.k, %bb.o, %bb.e, %bb.b
  %.sroa.098.1 = phi i64 [ %.fca.0.extract41, %bb.b ], [ %.fca.0.extract35, %bb.e ], [ %i.ap, %bb.k ], [ %i.bc, %bb.l ], [ 4, %bb.c ], [ %.fca.0.extract, %bb.o ], [ %i.bt, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.9.1 = phi i32 [ %.fca.1.extract42, %bb.b ], [ %.fca.1.extract36, %bb.e ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.c ], [ %.fca.1.extract, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.098.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.9.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 %6, ptr noundef %7) unnamed_addr #4 comdat align 2 {
bb.a:
  %8 = alloca %"struct.std::pair.203", align 8    ; 7 uses
  %9 = alloca %"class.llvm::ArrayRef.126", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184, !nonnull !23, !align !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185, !nonnull !23, !align !35
  %i.e = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.b, ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0
  %i.g = extractvalue { i16, ptr } %i.e, 1
  %.not.i.i = icmp eq i16 %i.f, 1
  %i.h = icmp eq ptr %i.g, null
  %.not4.i = select i1 %.not.i.i, i1 %i.h, i1 false
  br i1 %.not4.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !183, !noalias !440, !nonnull !23, !align !35
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !184, !noalias !440, !nonnull !23, !align !35
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !185, !noalias !440, !nonnull !23, !align !35
  %i.l = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.j, ptr noundef nonnull align 8 dereferenceable(912) %i.k, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !440 ; 2 uses
  %i.m = extractvalue { i16, ptr } %i.l, 0
  %i.n = extractvalue { i16, ptr } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.sroa.019.0.i = phi i64 [ 4, %bb.b ], [ %.sroa.019.1.i, %bb.i ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.m, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.i ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !440
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !184, !noalias !440, !nonnull !23, !align !35
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.203") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !440
  %i.q = load i8, ptr %8, align 8, !tbaa !191, !noalias !440 ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 9, label %bb.d
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = and i8 %i.q, -5
  %or.cond.i = icmp eq i8 %i.r, 2
  br i1 %or.cond.i, label %bb.f, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.t = icmp ult i64 %i.s, -2305843009213693952
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.u, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.v = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.e ], [ %i.v, %bb.h ], [ %spec.select28.i, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.o, align 8, !tbaa !192, !noalias !440 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !193, !noalias !440 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.w = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.w, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !440
  br label %bb.c, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.c, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.d
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.d ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.c ] ; 5 uses
  %.sink.i = phi i32 [ 1, %bb.d ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ 0, %bb.c ] ; 5 uses
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.d ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !440
  %i.x = icmp eq i32 %1, 33
  %i.y = icmp eq i32 %5, 1
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(912) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %0) #23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 254
  %spec.select.i47 = icmp eq i32 %i.af, 18
  br i1 %spec.select.i47, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ag = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ac, ptr noundef nonnull %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ag, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ag, 1
  %i.ah = add i64 %.fca.0.extract.i, 7
  %i.ai = and i64 %i.ah, -8
  %i.aj = zext i16 %.sroa.025.0.lcssa38.sink.i to i64 ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.al, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.am = trunc nuw i8 %.fca.1.extract.i to i1
  %.not.i51 = xor i1 %i.am, true
  %i.an = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  %or.cond.i52 = select i1 %.not.i51, i1 true, i1 %i.an
  %i.ao = icmp ult i64 %i.ai, %.sroa.0.0.copyload.i48
  %.0.i = select i1 %or.cond.i52, i1 %i.ao, i1 false
  br i1 %.0.i, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !184, !nonnull !23, !align !35
  %i.aq = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.ap, ptr noundef nonnull align 8 dereferenceable(912) %i.ac, ptr noundef nonnull %2, i1 noundef zeroext false) ; 2 uses
  %i.ar = extractvalue { i16, ptr } %i.aq, 0      ; 4 uses
  %i.as = extractvalue { i16, ptr } %i.aq, 1      ; 2 uses
  %i.at = icmp eq i32 %1, 34                      ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !184, !nonnull !23, !align !35 ; 4 uses
  br i1 %i.at, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not.i.i53 = icmp eq i16 %.sroa.025.0.lcssa38.sink.i, 0
  %.not.i14.i = icmp eq i16 %i.ar, 0
  %or.cond.i54 = select i1 %.not.i.i53, i1 true, i1 %.not.i14.i
  br i1 %or.cond.i54, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 426736
  %i.aw = getelementptr inbounds nuw [264 x i8], ptr %i.av, i64 %i.aj
  %i.ax = zext i16 %i.ar to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !254 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 4
  br i1 %i.ba, label %bb.p, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 672
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef zeroext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(518435) %i.au, i16 %.sroa.025.0.lcssa38.sink.i, ptr null, i16 %i.ar, ptr %i.as, i8 %3, i32 noundef %4) #23, !inline_history !439
  br label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

bb.q:                                             ; preds = %bb.m
  %i.bf = call noundef zeroext i8 @_ZNK4llvm18TargetLoweringBase13getLoadActionENS_3EVTES1_NS_5AlignEjjb(ptr noundef nonnull align 8 dereferenceable(518435) %i.au, i16 %.sroa.025.0.lcssa38.sink.i, ptr null, i16 %i.ar, ptr %i.as, i8 %3, i32 noundef %4, i32 noundef 1, i1 noundef zeroext false)
  br label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit

_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit: ; preds = %bb.p, %bb.o, %bb.q
  %.0 = phi i8 [ %i.bf, %bb.q ], [ %i.be, %bb.p ], [ %i.az, %bb.o ]
  %i.bg = and i8 %.0, -5
  %or.cond4.not = icmp eq i8 %i.bg, 0
  br i1 %or.cond4.not, label %.critedge, label %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread

_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread: ; preds = %bb.n, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit
  %i.bh = icmp ne i32 %1, 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.bi = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, i1 noundef zeroext %i.bh, i1 noundef zeroext %i.at, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.126") align 8 %9, i8 noundef zeroext 0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.bi, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.bi, 1
  %i.bj = icmp eq i32 %.fca.1.extract, 1
  %spec.select = select i1 %i.bj, i32 1, i32 %.sink.i
  %.0.i55 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %.fca.0.extract)
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread, %bb.l, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, %bb.k, %bb.a
  %.sroa.073.1 = phi i64 [ 16, %bb.a ], [ %.sroa.019.1.lcssa.sink.i, %bb.j ], [ %.sroa.019.1.lcssa.sink.i, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit ], [ %.0.i55, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread ], [ %.sroa.019.1.lcssa.sink.i, %bb.l ], [ 16, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ], [ %.sroa.019.1.lcssa.sink.i, %bb.k ]
  %.sroa.675.1 = phi i32 [ 0, %bb.a ], [ %.sink.i, %bb.j ], [ %.sink.i, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit ], [ %spec.select, %_ZNK4llvm18TargetLoweringBase19getTruncStoreActionENS_3EVTES1_NS_5AlignEj.exit.thread ], [ %.sink.i, %bb.l ], [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ], [ %.sink.i, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.073.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.675.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5, i32 %6, i32 %7, ptr nofree readnone captures(none) %8, ptr nofree noundef readnone byval(%"class.llvm::ArrayRef.108") align 8 captures(none) %9, ptr nofree readnone captures(none) %10) unnamed_addr #7 align 2 {
bb.a:
  ret { i64, i32 } { i64 4, i32 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm14HexagonTTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = icmp ne i64 %5, %i.a
  %or.cond = or i1 %i.b, %9
  %or.cond3 = or i1 %or.cond, %10
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, i32 } @_ZNK4llvm14HexagonTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 0, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i32 } [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret { i64, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #4 comdat align 2 {
bb.a:
  %11 = alloca %"struct.std::pair.203", align 8   ; 7 uses
  %12 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 9 uses
  %13 = alloca %"class.llvm::BitVector", align 8  ; 11 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 18 uses
  %17 = alloca %"class.llvm::ArrayRef.108", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165  ; 13 uses
  %i.g = udiv i32 %i.f, %3                        ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158
  %i.j = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.i, i32 noundef %i.g) #23 ; 5 uses
  %or.cond = or i1 %9, %10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %1, 33
  %i.l = select i1 %i.k, i32 241, i32 245
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %12, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.m, align 8, !tbaa !214
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %i.l, ptr %i.n, align 8, !tbaa !215
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i8 1, ptr %i.o, align 4, !tbaa !216
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 %7, ptr %i.p, align 8, !tbaa !217
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i8 %6, ptr %i.q, align 4, !tbaa !218
  %i.r = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(37) %12, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = tail call { i64, i32 } @_ZNK4llvm14HexagonTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 0, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i32 } [ %i.r, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.19.0 = extractvalue { i64, i32 } %.pn, 1 ; 2 uses
  %.sroa.0292.0 = extractvalue { i64, i32 } %.pn, 0 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !183, !noalias !459, !nonnull !23, !align !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184, !noalias !459, !nonnull !23, !align !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !185, !noalias !459, !nonnull !23, !align !35
  %i.y = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.v, ptr noundef nonnull align 8 dereferenceable(912) %i.x, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !459 ; 2 uses
  %i.z = extractvalue { i16, ptr } %i.y, 0
  %i.aa = extractvalue { i16, ptr } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %.sroa.019.0.i = phi i64 [ 4, %bb.e ], [ %.sroa.019.1.i, %bb.l ] ; 4 uses
  %.sroa.025.0.i = phi i16 [ %i.z, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.l ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.24.0.copyload.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !459
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !184, !noalias !459, !nonnull !23, !align !35
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.203") align 8 %11, ptr noundef nonnull align 8 dereferenceable(518435) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !459
  %i.ad = load i8, ptr %11, align 8, !tbaa !191, !noalias !459 ; 2 uses
  switch i8 %i.ad, label %bb.h [
    i8 9, label %bb.g
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = and i8 %i.ad, -5
  %or.cond.i = icmp eq i8 %i.ae, 2
  br i1 %or.cond.i, label %bb.i, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.ag = icmp ult i64 %i.af, -2305843009213693952
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.ah, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.k, %bb.j, %bb.h
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.h ], [ %i.ai, %bb.k ], [ %spec.select28.i, %bb.j ]
  %.sroa.0.0.copyload.i = load i16, ptr %i.ab, align 8, !tbaa !192, !noalias !459 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !193, !noalias !459 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.aj = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.aj, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !459
  br label %bb.f, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.f, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.g
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.g ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !459
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !185, !nonnull !23, !align !35
  %i.al = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ak, ptr noundef nonnull %2) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.al, 1
  %i.am = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.am, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.m:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.al, 0
  %i.an = add i64 %.fca.0.extract.i.i, 7
  %i.ao = lshr i64 %i.an, 3
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = zext i16 %.sroa.025.0.lcssa38.sink.i to i64
  %i.ar = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aq ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ar, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.as = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.as, label %bb.n, label %_ZNK4llvm8TypeSizecvmEv.exit143

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.14) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit143:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.at = getelementptr i8, ptr %i.ar, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.at, align 16
  %i.au = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.av = lshr i64 %i.au, 3
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = icmp eq i32 %.sroa.19.0, 0
  %i.ay = icmp ugt i32 %i.ap, %i.aw
  %or.cond140 = and i1 %i.ax, %i.ay
  br i1 %or.cond140, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit143
  %i.az = add i32 %i.ap, -1
  %i.ba = udiv i32 %i.az, %i.aw                   ; 2 uses
  %i.bb = add nuw i32 %i.ba, 1                    ; 3 uses
  %i.bc = icmp ne i32 %i.f, 0
  %i.bd = zext i1 %i.bc to i32                    ; 2 uses
  %i.be = sub i32 %i.f, %i.bd
  %i.bf = udiv i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.bd                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bh = add i32 %i.ba, 64                       ; 2 uses
  %i.bi = lshr i32 %i.bh, 6                       ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bk, ptr %13, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.bm, align 4, !tbaa !255
  %i.bn = icmp ugt i32 %i.bh, 447
end_hunk_1
begin_hunk_2_@_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE27getCommonMaskedMemoryOpCostEjPNS_4TypeENS_5AlignEbbNS_19TargetTransformInfo14TargetCostKindEj:bb.a
  %.fca.1.extract50 = extractvalue { i64, i32 } %.pn.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit
  %.sroa.0194.0 = phi i64 [ %.fca.0.extract49, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ], [ 0, %bb.b ]
  %.sroa.5195.0 = phi i32 [ %.fca.1.extract50, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit ], [ 0, %bb.b ]
  %i.bg = zext i32 %i.f to i64                    ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !158
  %i.bk = call { i64, i32 } @_ZNK4llvm14HexagonTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %i.bj, i8 %3, i32 noundef %7, i32 noundef %6, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract42 = extractvalue { i64, i32 } %i.bk, 0 ; 2 uses
  %.fca.1.extract43 = extractvalue { i64, i32 } %i.bk, 1
  %i.bl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bh, i64 %.fca.0.extract42) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not = icmp ne i32 %i.f, 0
  %i.bn = icmp sgt i64 %.fca.0.extract42, 0
  %or.cond = select i1 %.not, i1 %i.bn, i1 false
  %spec.select = select i1 %or.cond, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = extractvalue { i64, i1 } %i.bl, 0
  %i.bp = ashr exact i64 %i.bo, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bp, %bb.l ], [ %spec.select, %bb.k ]
  %i.bq = icmp eq i32 %.fca.1.extract43, 1
  %i.br = icmp ne i32 %1, 34
  %i.bs = icmp eq i32 %1, 34
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.bt = load i32, ptr %i.a, align 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = icmp eq i32 %i.bu, 19
  br i1 %i.bv, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83, label %bb.m

bb.m:                                             ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !165 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !245, !alias.scope !714
  %i.by = icmp ult i32 %i.bw, 65
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = sub nsw i32 0, %i.bw
  %i.ca = and i32 %i.bz, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = lshr i64 -1, %i.cb
  %i.cd = icmp eq i32 %i.bw, 0
  %spec.select.i.i.i82 = select i1 %i.cd, i64 0, i64 %i.cc, !prof !252
  store i64 %spec.select.i.i.i82, ptr %9, align 8, !tbaa !218, !alias.scope !714
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i79

bb.o:                                             ; preds = %bb.m
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %9, i64 noundef -1, i1 noundef zeroext true) #23
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i79

_ZN4llvm5APInt10getAllOnesEj.exit.i79:            ; preds = %bb.o, %bb.n
  %i.ce = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(12) %9, i1 noundef zeroext %i.br, i1 noundef zeroext %i.bs, i32 noundef %6, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.126") align 8 %10, i8 noundef zeroext 0)
  %i.cf = load i32, ptr %i.bx, align 8, !tbaa !245
  %i.cg = icmp ugt i32 %i.cf, 64
  br i1 %i.cg, label %bb.p, label %_ZN4llvm5APIntD2Ev.exit.i80

bb.p:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i79
  %i.ch = load ptr, ptr %9, align 8, !tbaa !218   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN4llvm5APIntD2Ev.exit.i80, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i80

_ZN4llvm5APIntD2Ev.exit.i80:                      ; preds = %bb.q, %bb.p, %_ZN4llvm5APInt10getAllOnesEj.exit.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83: ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit, %_ZN4llvm5APIntD2Ev.exit.i80
  %.pn.i81 = phi { i64, i32 } [ %i.ce, %_ZN4llvm5APIntD2Ev.exit.i80 ], [ { i64 0, i32 1 }, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract34 = extractvalue { i64, i32 } %.pn.i81, 0
  %.fca.1.extract35 = extractvalue { i64, i32 } %.pn.i81, 1
  br i1 %4, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83
  %i.cj = load ptr, ptr %2, align 8, !tbaa !183, !nonnull !23, !align !35
  %i.ck = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #23
  %i.cl = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ck, i32 noundef %i.f) #23 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.co = and i32 %i.cn, 255
  %i.cp = icmp eq i32 %i.co, 19
  br i1 %i.cp, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !165 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !245, !alias.scope !715
  %i.ct = icmp ult i32 %i.cr, 65
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cu = sub nsw i32 0, %i.cr
  %i.cv = and i32 %i.cu, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 -1, %i.cw
  %i.cy = icmp eq i32 %i.cr, 0
  %spec.select.i.i.i87 = select i1 %i.cy, i64 0, i64 %i.cx, !prof !252
  store i64 %spec.select.i.i.i87, ptr %8, align 8, !tbaa !218, !alias.scope !715
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i84

bb.u:                                             ; preds = %bb.s
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %8, i64 noundef -1, i1 noundef zeroext true) #23
  %.pre206 = load i32, ptr %i.cm, align 8
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i84

_ZN4llvm5APInt10getAllOnesEj.exit.i84:            ; preds = %bb.u, %bb.t
  %i.cz = phi i32 [ %.pre206, %bb.u ], [ %i.cn, %bb.t ]
  %i.da = and i32 %i.cz, 255
  %i.db = icmp eq i32 %i.da, 19
  br i1 %i.db, label %_ZN4llvm5APInt10getAllOnesEj.exit.i84._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159_crit_edge, label %bb.v

_ZN4llvm5APInt10getAllOnesEj.exit.i84._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159_crit_edge: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i84
  %.pre207 = load i32, ptr %i.cs, align 8, !tbaa !245
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159

bb.v:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i84
  %i.dc = load i32, ptr %i.cq, align 8, !tbaa !165 ; 6 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  %.pre208 = load i32, ptr %i.cs, align 8, !tbaa !245
  %.fr57.i143 = freeze i32 %.pre208               ; 2 uses
  br i1 %i.dd, label %.lr.ph.i142, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159

.lr.ph.i142:                                      ; preds = %bb.v
  %i.de = icmp ult i32 %.fr57.i143, 65
  %i.df = load ptr, ptr %8, align 8               ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64               ; 3 uses
  br i1 %i.de, label %.lr.ph.split.split.us.split.us.i152.preheader, label %.lr.ph.split.split.us.split.i145

.lr.ph.split.split.us.split.us.i152.preheader:    ; preds = %.lr.ph.i142
  %xtraiter240 = and i32 %i.dc, 1
  %i.dh = icmp eq i32 %i.dc, 1
  br i1 %i.dh, label %.lr.ph.split.split.us.split.us.i152.epil.preheader, label %.lr.ph.split.split.us.split.us.i152.preheader.new

.lr.ph.split.split.us.split.us.i152.preheader.new: ; preds = %.lr.ph.split.split.us.split.us.i152.preheader
  %unroll_iter244 = and i32 %i.dc, 2147483646
  br label %.lr.ph.split.split.us.split.us.i152

.lr.ph.split.split.us.split.us.i152:              ; preds = %.lr.ph.split.split.us.split.us.i152, %.lr.ph.split.split.us.split.us.i152.preheader.new
  %.040.us42.us.i153 = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i152.preheader.new ], [ %i.dr, %.lr.ph.split.split.us.split.us.i152 ] ; 3 uses
  %.sroa.036.039.us43.us.i154 = phi i64 [ 0, %.lr.ph.split.split.us.split.us.i152.preheader.new ], [ %.sroa.036.2.us48.us.i157.1, %.lr.ph.split.split.us.split.us.i152 ] ; 2 uses
  %niter245 = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i152.preheader.new ], [ %niter245.next.1, %.lr.ph.split.split.us.split.us.i152 ]
  %i.di = and i32 %.040.us42.us.i153, 62
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.dg
  %.not.us45.us.i155 = icmp eq i64 %i.dl, 0
  %.0.i30.us47.us.i156 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.us.i154, i64 8)
  %.sroa.036.2.us48.us.i157 = select i1 %.not.us45.us.i155, i64 %.sroa.036.039.us43.us.i154, i64 %.0.i30.us47.us.i156 ; 2 uses
  %i.dm = and i32 %.040.us42.us.i153, 62
  %i.dn = or disjoint i32 %i.dm, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dp, %i.dg
  %.not.us45.us.i155.1 = icmp eq i64 %i.dq, 0
  %.0.i30.us47.us.i156.1 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.2.us48.us.i157, i64 8)
  %.sroa.036.2.us48.us.i157.1 = select i1 %.not.us45.us.i155.1, i64 %.sroa.036.2.us48.us.i157, i64 %.0.i30.us47.us.i156.1 ; 3 uses
  %i.dr = add nuw nsw i32 %.040.us42.us.i153, 2   ; 2 uses
  %niter245.next.1 = add nuw nsw i32 %niter245, 2 ; 2 uses
  %niter245.ncmp.1 = icmp eq i32 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa, label %.lr.ph.split.split.us.split.us.i152, !llvm.loop !3

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa: ; preds = %.lr.ph.split.split.us.split.us.i152
  %lcmp.mod241.not = icmp eq i32 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233, label %.lr.ph.split.split.us.split.us.i152.epil.preheader

.lr.ph.split.split.us.split.us.i152.epil.preheader: ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa, %.lr.ph.split.split.us.split.us.i152.preheader
  %.040.us42.us.i153.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i152.preheader ], [ %i.dr, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa ]
  %.sroa.036.039.us43.us.i154.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.i152.preheader ], [ %.sroa.036.2.us48.us.i157.1, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i32 %i.dc to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.ds = and i32 %.040.us42.us.i153.epil.init, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.dg
  %.not.us45.us.i155.epil = icmp eq i64 %i.dv, 0
  %.0.i30.us47.us.i156.epil = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.us.i154.epil.init, i64 8)
  %.sroa.036.2.us48.us.i157.epil = select i1 %.not.us45.us.i155.epil, i64 %.sroa.036.039.us43.us.i154.epil.init, i64 %.0.i30.us47.us.i156.epil
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233: ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa, %.lr.ph.split.split.us.split.us.i152.epil.preheader
  %.sroa.036.2.us48.us.i157.lcssa = phi i64 [ %.sroa.036.2.us48.us.i157.1, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233.unr-lcssa ], [ %.sroa.036.2.us48.us.i157.epil, %.lr.ph.split.split.us.split.us.i152.epil.preheader ]
  %.fca.0.insert.i140236 = insertvalue { i64, i32 } poison, i64 %.sroa.036.2.us48.us.i157.lcssa, 0
  %.fca.1.insert.i141237 = insertvalue { i64, i32 } %.fca.0.insert.i140236, i32 0, 1
  br label %_ZN4llvm5APIntD2Ev.exit.i85

.lr.ph.split.split.us.split.i145:                 ; preds = %.lr.ph.i142, %.lr.ph.split.split.us.split.i145
  %.040.us42.i146 = phi i32 [ %i.ee, %.lr.ph.split.split.us.split.i145 ], [ 0, %.lr.ph.i142 ] ; 3 uses
  %.sroa.036.039.us43.i147 = phi i64 [ %.sroa.036.2.us48.i150, %.lr.ph.split.split.us.split.i145 ], [ 0, %.lr.ph.i142 ] ; 2 uses
  %i.dw = and i32 %.040.us42.i146, 63
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = lshr i32 %.040.us42.i146, 6
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !218
  %i.ed = and i64 %i.dy, %i.ec
  %.not.us45.i148 = icmp eq i64 %i.ed, 0
  %.0.i30.us47.i149 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.i147, i64 8)
  %.sroa.036.2.us48.i150 = select i1 %.not.us45.i148, i64 %.sroa.036.039.us43.i147, i64 %.0.i30.us47.i149 ; 2 uses
  %i.ee = add nuw nsw i32 %.040.us42.i146, 1      ; 2 uses
  %exitcond.not.i151 = icmp eq i32 %i.ee, %i.dc
  br i1 %exitcond.not.i151, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread, label %.lr.ph.split.split.us.split.i145, !llvm.loop !3

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread: ; preds = %.lr.ph.split.split.us.split.i145
  %.fca.0.insert.i140229 = insertvalue { i64, i32 } poison, i64 %.sroa.036.2.us48.i150, 0
  %.fca.1.insert.i141230 = insertvalue { i64, i32 } %.fca.0.insert.i140229, i32 0, 1
  br label %bb.w

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i84._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159_crit_edge, %bb.v
  %i.ef = phi i32 [ %.pre207, %_ZN4llvm5APInt10getAllOnesEj.exit.i84._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159_crit_edge ], [ %.fr57.i143, %bb.v ]
  %.sroa.7.3.i139 = phi i32 [ 1, %_ZN4llvm5APInt10getAllOnesEj.exit.i84._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159_crit_edge ], [ 0, %bb.v ]
  %.fca.1.insert.i141 = insertvalue { i64, i32 } { i64 0, i32 poison }, i32 %.sroa.7.3.i139, 1 ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 64
  br i1 %i.eg, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit.i85

bb.w:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159
  %.fca.1.insert.i141232.a = phi { i64, i32 } [ %.fca.1.insert.i141230, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread ], [ %.fca.1.insert.i141, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159 ] ; 2 uses
  %i.eh = load ptr, ptr %8, align 8, !tbaa !218   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN4llvm5APIntD2Ev.exit.i85, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i85

_ZN4llvm5APIntD2Ev.exit.i85:                      ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233, %bb.x, %bb.w, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159
  %.fca.1.insert.i141231 = phi { i64, i32 } [ %.fca.1.insert.i141232.a, %bb.x ], [ %.fca.1.insert.i141232.a, %bb.w ], [ %.fca.1.insert.i141, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159 ], [ %.fca.1.insert.i141237, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit159.thread233 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88: ; preds = %bb.r, %_ZN4llvm5APIntD2Ev.exit.i85
  %.pn.i86 = phi { i64, i32 } [ %.fca.1.insert.i141231, %_ZN4llvm5APIntD2Ev.exit.i85 ], [ { i64 0, i32 1 }, %bb.r ]
  %.pn.i86.fr = freeze { i64, i32 } %.pn.i86      ; 2 uses
  %.fca.0.extract29 = extractvalue { i64, i32 } %.pn.i86.fr, 0
  %.fca.1.extract30 = extractvalue { i64, i32 } %.pn.i86.fr, 1
  %i.ej = shl nuw nsw i64 %i.bg, 3
  %.0.i.i111 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract29, i64 %i.ej)
  %i.ek = icmp eq i32 %.fca.1.extract30, 1
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83
  %.sroa.0181.0 = phi i64 [ %.0.i.i111, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88 ], [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83 ]
  %.sroa.5.0 = phi i1 [ %i.ek, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit88 ], [ false, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit83 ]
  %.0.i.i118 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0194.0, i64 %.0.i.i)
  %i.el = icmp eq i32 %.fca.1.extract35, 1
  %.0.i.i125 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i118, i64 %.fca.0.extract34)
  %i.em = select i1 %.sroa.5.0, i1 true, i1 %i.el
  %i.en = select i1 %i.em, i1 true, i1 %i.bq
  %spec.select199 = select i1 %i.en, i32 1, i32 %.sroa.5195.0
  %.0.i.i132 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i125, i64 %.sroa.0181.0)
  %.fca.0.insert.i133 = insertvalue { i64, i32 } poison, i64 %.0.i.i132, 0
  %.fca.1.insert.i134 = insertvalue { i64, i32 } %.fca.0.insert.i133, i32 %spec.select199, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  %.pn = phi { i64, i32 } [ %.fca.1.insert.i134, %bb.y ], [ { i64 0, i32 1 }, %bb.a ]
  ret { i64, i32 } %.pn
}

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE23getOrderedReductionCostEjPNS_10VectorTypeENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::ArrayRef.108", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !245, !alias.scope !718
  %i.h = icmp ult i32 %i.f, 65
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = sub nsw i32 0, %i.f
  %i.j = and i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 -1, %i.k
  %i.m = icmp eq i32 %i.f, 0
  %spec.select.i.i.i = select i1 %i.m, i64 0, i64 %i.l, !prof !252
  store i64 %spec.select.i.i.i, ptr %4, align 8, !tbaa !218, !alias.scope !718
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef -1, i1 noundef zeroext true) #23
  %.pre = load i32, ptr %i.a, align 8
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i

_ZN4llvm5APInt10getAllOnesEj.exit.i:              ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.o = and i32 %i.n, 255
  %i.p = icmp eq i32 %i.o, 19
  br i1 %i.p, label %_ZN4llvm5APInt10getAllOnesEj.exit.i._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit_crit_edge, label %bb.e

_ZN4llvm5APInt10getAllOnesEj.exit.i._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit_crit_edge: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i
  %.pre34 = load i32, ptr %i.g, align 8, !tbaa !245
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit

bb.e:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i
  %i.q = load i32, ptr %i.e, align 8, !tbaa !165  ; 6 uses
  %i.r = icmp sgt i32 %i.q, 0
  %.pre35 = load i32, ptr %i.g, align 8, !tbaa !245
  %.fr57.i = freeze i32 %.pre35                   ; 2 uses
  br i1 %i.r, label %.lr.ph.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.s = icmp ult i32 %.fr57.i, 65
  %i.t = load ptr, ptr %4, align 8                ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  br i1 %i.s, label %.lr.ph.split.split.us.split.us.i.preheader, label %.lr.ph.split.split.us.split.i

.lr.ph.split.split.us.split.us.i.preheader:       ; preds = %.lr.ph.i
  %xtraiter = and i32 %i.q, 1
  %i.v = icmp eq i32 %i.q, 1
  br i1 %i.v, label %.lr.ph.split.split.us.split.us.i.epil.preheader, label %.lr.ph.split.split.us.split.us.i.preheader.new

.lr.ph.split.split.us.split.us.i.preheader.new:   ; preds = %.lr.ph.split.split.us.split.us.i.preheader
  %unroll_iter = and i32 %i.q, 2147483646
  br label %.lr.ph.split.split.us.split.us.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %.lr.ph.split.split.us.split.us.i, %.lr.ph.split.split.us.split.us.i.preheader.new
  %.040.us42.us.i = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i.preheader.new ], [ %i.af, %.lr.ph.split.split.us.split.us.i ] ; 3 uses
  %.sroa.036.039.us43.us.i = phi i64 [ 0, %.lr.ph.split.split.us.split.us.i.preheader.new ], [ %.sroa.036.2.us48.us.i.1, %.lr.ph.split.split.us.split.us.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.us.split.us.i ]
  %i.w = and i32 %.040.us42.us.i, 62
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl nuw nsw i64 1, %i.x
  %i.z = and i64 %i.y, %i.u
  %.not.us45.us.i = icmp eq i64 %i.z, 0
  %.0.i30.us47.us.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.us.i, i64 8)
  %.sroa.036.2.us48.us.i = select i1 %.not.us45.us.i, i64 %.sroa.036.039.us43.us.i, i64 %.0.i30.us47.us.i ; 2 uses
  %i.aa = and i32 %.040.us42.us.i, 62
  %i.ab = or disjoint i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.ad, %i.u
  %.not.us45.us.i.1 = icmp eq i64 %i.ae, 0
  %.0.i30.us47.us.i.1 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.2.us48.us.i, i64 8)
  %.sroa.036.2.us48.us.i.1 = select i1 %.not.us45.us.i.1, i64 %.sroa.036.2.us48.us.i, i64 %.0.i30.us47.us.i.1 ; 3 uses
  %i.af = add nuw nsw i32 %.040.us42.us.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa, label %.lr.ph.split.split.us.split.us.i, !llvm.loop !3

.lr.ph.split.split.us.split.i:                    ; preds = %.lr.ph.i, %.lr.ph.split.split.us.split.i
  %.040.us42.i = phi i32 [ %i.ao, %.lr.ph.split.split.us.split.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.036.039.us43.i = phi i64 [ %.sroa.036.2.us48.i, %.lr.ph.split.split.us.split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ag = and i32 %.040.us42.i, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i32 %.040.us42.i, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !218
  %i.an = and i64 %i.ai, %i.am
  %.not.us45.i = icmp eq i64 %i.an, 0
  %.0.i30.us47.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.i, i64 8)
  %.sroa.036.2.us48.i = select i1 %.not.us45.i, i64 %.sroa.036.039.us43.i, i64 %.0.i30.us47.i ; 2 uses
  %i.ao = add nuw nsw i32 %.040.us42.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %i.q
  br i1 %exitcond.not.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread, label %.lr.ph.split.split.us.split.i, !llvm.loop !3

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit_crit_edge, %bb.e
  %i.ap = phi i32 [ %.pre34, %_ZN4llvm5APInt10getAllOnesEj.exit.i._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit_crit_edge ], [ %.fr57.i, %bb.e ]
  %.sroa.7.3.i = phi i32 [ 1, %_ZN4llvm5APInt10getAllOnesEj.exit.i._ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit_crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 64
  br i1 %i.aq, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread: ; preds = %.lr.ph.split.split.us.split.i, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit
  %.sroa.7.3.i43 = phi i32 [ %.sroa.7.3.i, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit ], [ 0, %.lr.ph.split.split.us.split.i ] ; 2 uses
  %.sroa.036.3.i41 = phi i64 [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit ], [ %.sroa.036.2.us48.i, %.lr.ph.split.split.us.split.i ] ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !218   ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #25
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.split.us.split.us.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit, label %.lr.ph.split.split.us.split.us.i.epil.preheader

.lr.ph.split.split.us.split.us.i.epil.preheader:  ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.us.i.preheader
  %.040.us42.us.i.epil.init = phi i32 [ 0, %.lr.ph.split.split.us.split.us.i.preheader ], [ %i.af, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa ]
  %.sroa.036.039.us43.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.i.preheader ], [ %.sroa.036.2.us48.us.i.1, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i32 %i.q to i1
  call void @llvm.assume(i1 %lcmp.mod48)
  %i.at = and i32 %.040.us42.us.i.epil.init, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.av, %i.u
  %.not.us45.us.i.epil = icmp eq i64 %i.aw, 0
  %.0.i30.us47.us.i.epil = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.039.us43.us.i.epil.init, i64 8)
  %.sroa.036.2.us48.us.i.epil = select i1 %.not.us45.us.i.epil, i64 %.sroa.036.039.us43.us.i.epil.init, i64 %.0.i30.us47.us.i.epil
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit

_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit: ; preds = %.lr.ph.split.split.us.split.us.i.epil.preheader, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread, %bb.f
  %.sroa.7.3.i42 = phi i32 [ %.sroa.7.3.i, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit ], [ %.sroa.7.3.i43, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread ], [ %.sroa.7.3.i43, %bb.f ], [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa ], [ 0, %.lr.ph.split.split.us.split.us.i.epil.preheader ]
  %.sroa.036.3.i40 = phi i64 [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit ], [ %.sroa.036.3.i41, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.thread ], [ %.sroa.036.3.i41, %bb.f ], [ %.sroa.036.2.us48.us.i.1, %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit.loopexit.unr-lcssa ], [ %.sroa.036.2.us48.us.i.epil, %.lr.ph.split.split.us.split.us.i.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.az = call { i64, i32 } @_ZNK4llvm14HexagonTTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %i.ay, i32 noundef %3, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.108") align 8 %5, ptr noundef null) ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i32 } %i.az, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { i64, i32 } %i.az, 1
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !165 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.fca.0.extract1, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit
  %i.bf = icmp slt i64 %.fca.0.extract1, 1
  %.not = icmp eq i32 %i.ba, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %.not
  %spec.select = select i1 %or.cond, i64 -9223372036854775808, i64 9223372036854775807
  br label %_ZN4llvm15InstructionCostmLEl.exit

bb.h:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14HexagonTTIImplEE24getScalarizationOverheadEPNS_10VectorTypeEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS5_18VectorInstrContextE.exit
  %i.bg = extractvalue { i64, i1 } %i.bd, 0
  %i.bh = ashr exact i64 %i.bg, 2
  br label %_ZN4llvm15InstructionCostmLEl.exit
end_hunk_2
