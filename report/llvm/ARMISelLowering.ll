Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK4llvm14TargetLowering20isTypeDesirableForOpEjNS_3EVTE:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = icmp ne ptr %i.d, null
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering22IsDesirableToPromoteOpENS_7SDValueERNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering17supportSwiftErrorEv(ptr noundef nonnull align 8 dereferenceable(518466) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17ARMTargetLowering15supportSplitCSREPNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !721, !nonnull !51, !align !92 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !740
  %i.d = and i16 %i.c, 16368
  %i.e = icmp eq i16 %i.d, 272
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef 45) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering21supportPtrAuthBundlesEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering20getNegatedExpressionENS_7SDValueERNS_12SelectionDAGEbbRNS_18TargetLoweringBase13NegatibleCostEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(920), i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #8

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
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm14TargetLowering19getTypeForExtReturnERNS_11LLVMContextENS_3EVTENS_3ISD8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3, i32 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  store i16 %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %.sroa.01.0.copyload.i = load i16, ptr %i.b, align 2, !tbaa !58 ; 5 uses
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
  %i.h = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #39
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
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
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.l = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #39
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit

_ZNK4llvm3EVT6bitsLTES0_.exit:                    ; preds = %bb.e, %bb.f
  %.pn.i11.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %.pn.i11.i.i, 1
  %i.m = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %.not.i13.i.i = xor i1 %i.m, true
  %i.n = trunc nuw i8 %.fca.1.extract.i.i to i1
  %or.cond.i.i.i = select i1 %.not.i13.i.i, i1 true, i1 %i.n
  %i.o = icmp ult i64 %.fca.0.extract1.i.i, %.fca.0.extract.i.i
  %.0.i.i.i = select i1 %or.cond.i.i.i, i1 %i.o, i1 false
  %cond.fr = freeze i1 %.0.i.i.i                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %spec.select = select i1 %cond.fr, i16 %.sroa.01.0.copyload.i, i16 %2
  %spec.select17 = select i1 %cond.fr, ptr null, ptr %3
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit, %bb.a
  %i.p = phi i16 [ %2, %bb.a ], [ %spec.select, %_ZNK4llvm3EVT6bitsLTES0_.exit ]
  %i.q = phi ptr [ null, %bb.a ], [ %spec.select17, %_ZNK4llvm3EVT6bitsLTES0_.exit ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %i.p, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %i.q, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering42shouldSplitFunctionArgumentsAsLittleEndianERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !820, !range !50, !noundef !51
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm14TargetLowering19getScratchRegistersEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering27prepareVolatileOrAtomicLoadENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(920) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %2, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @_ZNK4llvm14TargetLowering21LowerOperationWrapperEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #8

declare noundef ptr @_ZNK4llvm14TargetLowering17getTargetNodeNameEj(ptr noundef nonnull align 8 dereferenceable(518435), i32 noundef) unnamed_addr #8

declare void @_ZNK4llvm14TargetLowering16ParseConstraintsERKNS_10DataLayoutEPKNS_18TargetRegisterInfoERKNS_8CallBaseE() unnamed_addr

declare noundef i32 @_ZNK4llvm14TargetLowering32getMultipleConstraintMatchWeightERNS0_14AsmOperandInfoEi(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(130), i32 noundef) unnamed_addr #8

declare void @_ZNK4llvm14TargetLowering22ComputeConstraintToUseERNS0_14AsmOperandInfoENS_7SDValueEPNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(130), ptr, i32, ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm17ARMTargetLowering25getInlineAsmMemConstraintENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  switch i64 %2, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit [
    i64 1, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 2, label %bb.b
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  %i.a = icmp eq i8 %lhsc, 81
  br i1 %i.a, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !204
  %i.c = icmp eq i8 %i.b, 85
  br i1 %i.c, label %bb.c, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !204
  %switch.tableidx = add i8 %i.e, -109            ; 2 uses
  %i.f = icmp ult i8 %switch.tableidx, 13
  br i1 %i.f, label %switch.lookup, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %lhsc.i = load i8, ptr %1, align 1
  %switch.tableidx12 = add i8 %lhsc.i, -88        ; 2 uses
  %i.g = icmp ult i8 %switch.tableidx12, 25
  br i1 %i.g, label %switch.lookup13, label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

switch.lookup:                                    ; preds = %bb.c
  %3 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17ARMTargetLowering25getInlineAsmMemConstraintENS_9StringRefE, i64 %3
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

switch.lookup13:                                  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.h = zext nneg i8 %switch.tableidx12 to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm17ARMTargetLowering25getInlineAsmMemConstraintENS_9StringRefE.154, i64 %i.h
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  br label %_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit

_ZNK4llvm14TargetLowering25getInlineAsmMemConstraintENS_9StringRefE.exit: ; preds = %bb.b, %bb.c, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %switch.lookup13, %switch.lookup, %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.0.shrunk = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ], [ 8, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 0, %bb.b ], [ %switch.load15, %switch.lookup13 ], [ 0, %bb.c ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering27LowerAsmOutputForConstraintERNS_7SDValueES2_RKNS_5SDLocERKNS0_14AsmOperandInfoERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(130), ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #8

declare void @_ZNK4llvm14TargetLowering30CollectTargetIntrinsicOperandsERKNS_8CallInstERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #8

declare { ptr, i32 } @_ZNK4llvm14TargetLowering13BuildSREMPow2EPNS_6SDNodeERKNS_5APIntERNS_12SelectionDAGERNS_15SmallVectorImplIS2_EE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 1) unnamed_addr #8

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

declare { ptr, i32 } @_ZNK4llvm14TargetLowering16getSqrtInputTestENS_7SDValueERNS_12SelectionDAGERKNS_12DenormalModeENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 1 dereferenceable(2), i32) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering27getSqrtResultForDenormInputENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !764
  store i64 %i.b, ptr %4, align 8, !tbaa !764
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !765
  store i32 %i.e, ptr %i.c, align 8, !tbaa !766
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !352
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !353
  %i.j = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering19emitStackGuardMixFPERNS_12SelectionDAGENS_7SDValueERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

declare { ptr, i32 } @_ZNK4llvm14TargetLowering23LowerToTLSEmulatedModelEPKNS_19GlobalAddressSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #8

declare { ptr, i32 } @_ZNK4llvm14TargetLowering22expandIndirectJTBranchERKNS_5SDLocENS_7SDValueES4_iRNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr, i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(920)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering33isXAndYEqZeroPreferableToXAndYEqYENS_3ISD8CondCodeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 2 dereferenceable(2) ptr @_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEEixEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(6) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !744  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not11.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !1107   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1107 ; 2 uses
  %i.i = icmp ult i32 %i.h, %i.d
  br i1 %i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.d, %i.h
  br i1 %i.j, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.l = load i16, ptr %i.k, align 4, !tbaa !1108
  %i.m = icmp ult i16 %i.l, %i.f
  br i1 %i.m, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i, %bb.b
  br label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.c ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.i.i.i ] ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !1109 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !3044

_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit: ; preds = %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit.thread10.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1107 ; 2 uses
  %i.r = icmp ult i32 %i.d, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ult i32 %i.q, %i.d
  br i1 %i.s, label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit, label %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit

_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.u = load i16, ptr %i.t, align 4, !tbaa !1108
  %i.v = icmp ult i16 %i.f, %i.u
  br i1 %i.v, label %.critedge, label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.d, %bb.a, %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit
  %.08.lcssa.i.i.i14 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit ], [ %.19.i.i.i, %_ZNSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE11lower_boundERS7_.exit ], [ %.19.i.i.i, %bb.d ]
  %i.w = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #42 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.y = load i64, ptr %1, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i16 0, ptr %i.z, align 4, !tbaa !3046
  %i.aa = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(6) %i.x) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.ab, null
  %i.ad = icmp eq ptr %i.ac, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.x, align 4, !tbaa !1107 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !1107 ; 2 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i32 %i.ag, %i.af
  br i1 %i.ai, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !1108
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.am = load i16, ptr %i.al, align 4, !tbaa !1108
  %i.an = icmp ult i16 %i.ak, %i.am
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.ao = phi i1 [ %i.an, %bb.i ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ao, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !747
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !747
  br label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.j:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 48) #41
  br label %_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.e, %bb.j, %.thread.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.j ], [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEclERKS4_S7_.exit ], [ %i.w, %.thread.i ], [ %.19.i.i.i, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(6) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_0
