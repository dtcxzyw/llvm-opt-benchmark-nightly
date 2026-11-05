Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvm14TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEj
declare noundef zeroext i1 @_ZNK4llvm14TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering33SimplifyDemandedBitsForTargetNodeENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering44SimplifyMultipleUseDemandedBitsForTargetNodeENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering35canCreateUndefOrPoisonForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGENS_15UndefPoisonKindEbj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #4

declare noundef ptr @_ZNK4llvm14TargetLowering25getTargetConstantFromLoadEPNS_10LoadSDNodeE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering32computeKnownFPClassForTargetNodeENS_7SDValueERNS_12KnownFPClassERKNS_5APIntERKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering28isKnownNeverNaNForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGEbj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i1 noundef zeroext, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering25isSplatValueForTargetNodeENS_7SDValueERKNS_5APIntERS2_RKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering29isTargetCanonicalConstantNodeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !432
  %i.c = add i32 %i.b, -175
  %spec.select = icmp ult i32 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering23isTargetCanonicalSelectEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering14isGAPlusOffsetEPNS_6SDNodeERPKNS_11GlobalValueERl(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering29isDesirableToCommuteWithShiftEPKNS_6SDNodeENS_12CombineLevelE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !641
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !422 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !735  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !736
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !432
  %i.j = icmp eq i32 %i.i, 227
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !641
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !421
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !735  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i2, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit4

_ZNK4llvm6SDNode9hasOneUseEv.exit4:               ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !736
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit4, %bb.b
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.c, %bb.a, %_ZNK4llvm6SDNode9hasOneUseEv.exit4, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit4 ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering29isDesirableToCommuteWithShiftERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering27isDesirableToPullExtFromShlERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK4llvm14TargetLowering34isDesirableToCombineLogicOpOfSETCCEPKNS_6SDNodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering32isDesirableToCommuteXorWithShiftEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering20isTypeDesirableForOpEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq i16 %2, 0
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = zext i16 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = icmp ne ptr %i.d, null
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering33isDesirableToTransformToIntegerOpEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering22IsDesirableToPromoteOpENS_7SDValueERNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm21SystemZTargetLowering17supportSwiftErrorEv(ptr noundef nonnull align 8 dereferenceable(518496) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering15supportSplitCSREPNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering18supportKCFIBundlesEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering21supportPtrAuthBundlesEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14TargetLowering18initializeSplitCSREPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14TargetLowering20insertCopiesSplitCSREPNS_17MachineBasicBlockERKNS_15SmallVectorImplIS2_EE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering20getNegatedExpressionENS_7SDValueERNS_12SelectionDAGEbbRNS_18TargetLoweringBase13NegatibleCostEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(920), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering15lowerEHPadEntryENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14TargetLowering21markLibCallAttributesEPNS_15MachineFunctionEjRSt6vectorINS_18TargetLoweringBase12ArgListEntryESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14TargetLowering11HandleByValEPNS_7CCStateERjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i8 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering18isUsedByReturnOnlyEPNS_6SDNodeERNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm14TargetLowering19getTypeForExtReturnERNS_11LLVMContextENS_3EVTENS_3ISD8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3, i32 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  store i16 %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %.sroa.01.0.copyload.i = load i16, ptr %i.b, align 2, !tbaa !177 ; 5 uses
  %.not.i.i.i = icmp eq i16 %2, %.sroa.01.0.copyload.i
  %i.c = icmp eq ptr %3, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.c, i1 false
  br i1 %.not4.i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i16 %.sroa.01.0.copyload.i, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.d, align 8
  %.not.i.i8.i = icmp eq i16 %2, 0
  br i1 %.not.i.i8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.f, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.not.i5.i.i = icmp eq i16 %.sroa.01.0.copyload.i, 0
  br i1 %.not.i5.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.i = zext i16 %.sroa.01.0.copyload.i to i64
  %i.j = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.k, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.j, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8
  %.fca.0.insert.i.i9.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i10.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit12.i.i

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.l = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit12.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit12.i.i:        ; preds = %bb.f, %bb.e
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %7 = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %.not.i13.i.i = xor i1 %7, true
  %8 = trunc nuw i8 %.fca.1.extract.i.i to i1
  %or.cond.i.i.i = select i1 %.not.i13.i.i, i1 true, i1 %8
  br i1 %or.cond.i.i.i, label %_ZNK4llvm3EVT6bitsLTES0_.exit, label %_ZNK4llvm3EVT6bitsLTES0_.exit.thread13

_ZNK4llvm3EVT6bitsLTES0_.exit.thread13:           ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread

_ZNK4llvm3EVT6bitsLTES0_.exit:                    ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit12.i.i
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %i.m = icmp ult i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %cond.fr = freeze i1 %i.m                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %spec.select = select i1 %cond.fr, i16 %.sroa.01.0.copyload.i, i16 %2
  %spec.select17 = select i1 %cond.fr, ptr null, ptr %3
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit, %bb.a, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread13
  %9 = phi i16 [ %2, %bb.a ], [ %spec.select, %_ZNK4llvm3EVT6bitsLTES0_.exit ], [ %2, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread13 ]
  %10 = phi ptr [ null, %bb.a ], [ %spec.select17, %_ZNK4llvm3EVT6bitsLTES0_.exit ], [ %3, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread13 ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %9, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %10, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering41functionArgumentNeedsConsecutiveRegistersEPNS_4TypeEjbRKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(912) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering42shouldSplitFunctionArgumentsAsLittleEndianERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !2253, !range !27, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm14TargetLowering27getRoundingControlRegistersEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering27prepareVolatileOrAtomicLoadENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %2, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef ptr @_ZNK4llvm14TargetLowering17getTargetNodeNameEj(ptr noundef nonnull align 8 dereferenceable(518435), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm14TargetLowering14createFastISelERNS_20FunctionLoweringInfoEPKNS_17TargetLibraryInfoEPKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 1 %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZNK4llvm14TargetLowering16ParseConstraintsERKNS_10DataLayoutEPKNS_18TargetRegisterInfoERKNS_8CallBaseE() unnamed_addr

declare noundef i32 @_ZNK4llvm14TargetLowering32getMultipleConstraintMatchWeightERNS0_14AsmOperandInfoEi(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(130), i32 noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering22ComputeConstraintToUseERNS0_14AsmOperandInfoENS_7SDValueEPNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(130), ptr, i32, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm21SystemZTargetLowering25getInlineAsmMemConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  switch i64 %2, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit [
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !166
  %switch.tableidx7 = add i8 %i.a, -81            ; 2 uses
  %i.b = icmp ult i8 %switch.tableidx7, 32
  br i1 %i.b, label %switch.lookup8, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !166
  %i.d = icmp eq i8 %i.c, 90
  br i1 %i.d, label %bb.d, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !166   ; 2 uses
  %switch.tableidx = add i8 %i.f, -81
  %i.g = icmp ult i8 %switch.tableidx, 4
  %narrow = add nsw i8 %i.f, -56
  %spec.select = select i1 %i.g, i8 %narrow, i8 0
  br label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

switch.lookup8:                                   ; preds = %bb.b
  %i.h = zext nneg i8 %switch.tableidx7 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm21SystemZTargetLowering25getInlineAsmMemConstraintENS_9StringRefE, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit: ; preds = %bb.d, %bb.b, %switch.lookup8, %bb.c, %bb.a
  %.0.shrunk = phi i8 [ %switch.load, %switch.lookup8 ], [ 0, %bb.b ], [ 0, %bb.a ], [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

declare noundef ptr @_ZNK4llvm14TargetLowering16LowerXConstraintENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435), i16, ptr) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering30CollectTargetIntrinsicOperandsERKNS_8CallInstERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering13BuildSDIVPow2EPNS_6SDNodeERKNS_5APIntERNS_12SelectionDAGERNS_15SmallVectorImplIS2_EE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering13BuildSREMPow2EPNS_6SDNodeERKNS_5APIntERNS_12SelectionDAGERNS_15SmallVectorImplIS2_EE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm14TargetLowering25combineRepeatedFPDivisorsEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering15getSqrtEstimateENS_7SDValueERNS_12SelectionDAGEiRiRbb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i1 noundef zeroext %7) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering16getRecipEstimateENS_7SDValueERNS_12SelectionDAGEiRi(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering16getSqrtInputTestENS_7SDValueERNS_12SelectionDAGERKNS_12DenormalModeENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 1 dereferenceable(2), i32) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering27getSqrtResultForDenormInputENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !200
  store i64 %i.b, ptr %4, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !429
  store i32 %i.e, ptr %i.c, align 8, !tbaa !431
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !396
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !177
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !179
  %i.j = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret { ptr, i32 } %i.j
}

declare void @_ZNK4llvm14TargetLowering29AdjustInstrPostInstrSelectionERNS_12MachineInstrEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm21SystemZTargetLowering21useLoadStackGuardNodeERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering19emitStackGuardMixFPERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering23LowerToTLSEmulatedModelEPKNS_19GlobalAddressSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering22expandIndirectJTBranchERKNS_5SDLocENS_7SDValueES4_iRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr, i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering33isXAndYEqZeroPreferableToXAndYEqYENS_3ISD8CondCodeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZNK4llvm18TargetLoweringBase22getVectorTypeBreakdownERNS_11LLVMContextENS_3EVTERS3_RjRNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), i16, ptr, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::MVT", align 2         ; 3 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  store i16 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8
  %.not = icmp eq i16 %2, 0
end_hunk_0
