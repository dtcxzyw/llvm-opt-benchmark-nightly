Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimpleSValBuilder?download=true
inline.NumInlined: 2054
inline.NumDeleted: 1098
begin_hunk_0
%"class.llvm::FoldingSetNodeID" = type { %"class.llvm::SmallVector.577" }
%"class.llvm::SmallVector.577" = type { %"class.llvm::SmallVectorImpl.578", %"struct.llvm::SmallVectorStorage.581" }
%"class.llvm::SmallVectorImpl.578" = type { %"class.llvm::SmallVectorTemplateBase.579" }
%"class.llvm::SmallVectorTemplateBase.579" = type { %"class.llvm::SmallVectorTemplateCommon.580" }
%"class.llvm::SmallVectorTemplateCommon.580" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.581" = type { [128 x i8] }
%class.Simplifier = type { %"class.llvm::IntrusiveRefCntPtr.430", ptr, %"class.llvm::DenseMap.612" }
%"class.llvm::DenseMap.612" = type { ptr, ptr, i32, i32 }

$_ZN5clang4ento11SValBuilderD2Ev = comdat any

$_ZN4llvm8DenseMapIPKN5clang4ento7SymExprESt10unique_ptrINS_11SmallVectorIS5_Lj2EEESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEED2Ev = comdat any

$_ZN5clang4ento11SValBuilder12makeTruthValEbNS_8QualTypeE = comdat any

$_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE = comdat any

$_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE = comdat any

$_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE = comdat any

$_ZN4llvm6APSInt13compareValuesERKS0_S2_ = comdat any

$_ZN5clang4ento17BasicValueFactory7ConvertENS_8QualTypeERKN4llvm6APSIntE = comdat any

$_ZNSt5tupleIJRPKN5clang4ento7SymExprERN4llvm6APSIntEEEaSIS4_NS1_9APSIntPtrEEENSt9enable_ifIXcl12__assignableIT_T0_EEERS9_E4typeEOSt4pairISD_SE_E = comdat any

$_ZNK5clang4ento10APSIntType8getValueEm = comdat any

$_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJRS6_NS_18BinaryOperatorKindES9_RNS_8QualTypeEEEEPKT_DpOT0_ = comdat any

$_ZNK4llvm6APSIntmiERKS0_ = comdat any

$_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprES6_LNS4_4KindE3EEEJRS6_RNS_18BinaryOperatorKindES9_RNS_8QualTypeEEEEPKT_DpOT0_ = comdat any

$_ZNK4llvm6APSIntplERKS0_ = comdat any

$_ZN5clang4ento13SymbolManager7acquireINS0_17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS4_4KindE2EEEJRS6_RNS_18BinaryOperatorKindERS7_RNS_8QualTypeEEEEPKT_DpOT0_ = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDES4_NS_18BinaryOperatorKindES4_NS_8QualTypeE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE14GetNodeProfileEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE10NodeEqualsEPKNS_14FoldingSetBaseEPNS5_4NodeERKNS_16FoldingSetNodeIDEjRSA_ = comdat any

$_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE15ComputeNodeHashEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EED0Ev = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE12dumpToStreamERN4llvm11raw_ostreamE = comdat any

$_ZNK5clang4ento13BinarySymExpr7getTypeEv = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDE = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE17computeComplexityEv = comdat any

$_ZNK5clang4ento7SymExpr15getOriginRegionEv = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE7ProfileERN4llvm16FoldingSetNodeIDES4_NS_18BinaryOperatorKindES5_NS_8QualTypeE = comdat any

$_ZN5clang4ento7SymExprD2Ev = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EED0Ev = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE12dumpToStreamERN4llvm11raw_ostreamE = comdat any

$_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE7ProfileERN4llvm16FoldingSetNodeIDE = comdat any

$_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE17computeComplexityEv = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_4SValENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_4SValENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E15LookupBucketForIS6_EEbRKT_RPSC_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_4SValENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_4SValENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_ = comdat any

$_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info = comdat any

$_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EEE = comdat any

$_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_117SimpleSValBuilderE = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN5clang4ento11SValBuilder6anchorEv, ptr @_ZN5clang4ento11SValBuilderD2Ev, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilderD0Ev, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpNNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_6NonLocES9_NS3_8QualTypeE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpLLEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_3LocES9_NS3_8QualTypeE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpLNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_3LocENS4_6NonLocENS3_8QualTypeE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder13getKnownValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11getMinValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder11getMaxValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE, ptr @_ZN12_GLOBAL__N_117SimpleSValBuilder12simplifySValEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE] }, align 8
@_ZTVN5clang4ento11SValBuilderE = external unnamed_addr constant { [12 x ptr] }, align 8
@_ZZN4llvm10FoldingSetIN5clang4ento7SymExprEE17getFoldingSetInfoEvE4Info = linkonce_odr constant %"struct.llvm::FoldingSetBase::FoldingSetInfo" { ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE14GetNodeProfileEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE, ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE10NodeEqualsEPKNS_14FoldingSetBaseEPNS5_4NodeERKNS_16FoldingSetNodeIDEjRSA_, ptr @_ZN4llvm10FoldingSetIN5clang4ento7SymExprEE15ComputeNodeHashEPKNS_14FoldingSetBaseEPNS5_4NodeERNS_16FoldingSetNodeIDE }, comdat, align 8
@_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN5clang4ento7SymExpr6anchorEv, ptr @_ZN5clang4ento7SymExprD2Ev, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EED0Ev, ptr @_ZNK5clang4ento7SymExpr4dumpEv, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE12dumpToStreamERN4llvm11raw_ostreamE, ptr @_ZNK5clang4ento13BinarySymExpr7getTypeEv, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE7ProfileERN4llvm16FoldingSetNodeIDE, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprES4_LNS2_4KindE3EE17computeComplexityEv, ptr @_ZNK5clang4ento7SymExpr15getOriginRegionEv] }, comdat, align 8
@_ZTVN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN5clang4ento7SymExpr6anchorEv, ptr @_ZN5clang4ento7SymExprD2Ev, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EED0Ev, ptr @_ZNK5clang4ento7SymExpr4dumpEv, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE12dumpToStreamERN4llvm11raw_ostreamE, ptr @_ZNK5clang4ento13BinarySymExpr7getTypeEv, ptr @_ZN5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE7ProfileERN4llvm16FoldingSetNodeIDE, ptr @_ZNK5clang4ento17BinarySymExprImplIPKNS0_7SymExprENS0_9APSIntPtrELNS2_4KindE2EE17computeComplexityEv, ptr @_ZNK5clang4ento7SymExpr15getOriginRegionEv] }, comdat, align 8
@switch.table._ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpNNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_6NonLocES9_NS3_8QualTypeE = private unnamed_addr constant [6 x i8] c"\0D\0C\0B\0A\0F\0E", align 4
@switch.table._ZL20doRearrangeUncheckedN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS1_18BinaryOperatorKindEPKNS2_7SymExprENS_6APSIntES9_SA_ = private unnamed_addr constant [6 x i8] c"\0B\0A\0D\0C\0E\0F", align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang4ento23createSimpleSValBuilderERN4llvm20BumpPtrAllocatorImplINS1_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERNS_10ASTContextERNS0_19ProgramStateManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(288) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #16 ; 3 uses
  tail call void @_ZN5clang4ento11SValBuilderC2ERN4llvm20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERNS_10ASTContextERNS0_19ProgramStateManagerE(ptr noundef nonnull align 8 dereferenceable(412) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull align 8 dereferenceable(288) %2) #17
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN12_GLOBAL__N_117SimpleSValBuilderE, i64 16), ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN5clang4ento11SValBuilderC2ERN4llvm20BumpPtrAllocatorImplINS2_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERNS_10ASTContextERNS0_19ProgramStateManagerE(ptr noundef nonnull align 8 dereferenceable(412), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #2

declare void @_ZN5clang4ento11SValBuilder6anchorEv(ptr noundef nonnull align 8 dereferenceable(412)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento11SValBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(412) dereferenceable(412) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5clang4ento11SValBuilderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN5clang4ento16MemRegionManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN4llvm8DenseMapIPKN5clang4ento7SymExprESt10unique_ptrINS_11SmallVectorIS5_Lj2EEESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #17
  tail call void @_ZN4llvm14FoldingSetBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(72) %i.b) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5clang4ento17BasicValueFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.d) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117SimpleSValBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(412) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5clang4ento11SValBuilderE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN5clang4ento16MemRegionManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @_ZN4llvm8DenseMapIPKN5clang4ento7SymExprESt10unique_ptrINS_11SmallVectorIS5_Lj2EEESt14default_deleteIS8_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #17
  tail call void @_ZN4llvm14FoldingSetBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(72) %i.b) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5clang4ento17BasicValueFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.d) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 416) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i8 } @_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpNNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_6NonLocES9_NS3_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr %3, i8 %4, ptr noundef byval(%"class.clang::ento::NonLoc") align 8 %5, i64 %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.clang::ento::NonLoc", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %8 = alloca %"class.llvm::APSInt", align 8      ; 11 uses
  %9 = alloca %"class.llvm::APSInt", align 8      ; 11 uses
  %10 = alloca %"struct.std::pair.529", align 8   ; 5 uses
  %11 = alloca %"class.std::tuple.531", align 8   ; 5 uses
  %12 = alloca %"struct.std::pair.529", align 8   ; 5 uses
  %13 = alloca %"class.std::tuple.531", align 8   ; 5 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 5 uses
  %15 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 5 uses
  %17 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %18 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 5 uses
  %19 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %20 = alloca %"class.llvm::APSInt", align 8     ; 9 uses
  %21 = alloca %"class.clang::ento::NonLoc", align 8 ; 5 uses
  %22 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %23 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 6 uses
  %24 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %25 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 6 uses
  %26 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %27 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %28 = alloca %"class.clang::ento::NonLoc", align 8 ; 4 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %34 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %35 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %36 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %37 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %38 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 6 uses
  %39 = alloca %"class.clang::ento::NonLoc", align 8 ; 13 uses
  %40 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %41 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %42 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %43 = alloca %"class.clang::ento::Loc", align 8 ; 3 uses
  %44 = alloca %"class.llvm::APSInt", align 8     ; 10 uses
  %45 = alloca %"class.clang::ento::APSIntType", align 8 ; 4 uses
  %46 = alloca %"class.clang::ento::APSIntType", align 8 ; 4 uses
  %47 = alloca %"class.llvm::IntrusiveRefCntPtr.430", align 8 ; 3 uses
  %48 = alloca %"class.clang::ento::Loc", align 8 ; 3 uses
  %49 = alloca %"class.llvm::APSInt", align 8     ; 20 uses
  %50 = alloca %"class.llvm::APSInt", align 8     ; 16 uses
  %51 = alloca %"class.clang::ento::APSIntType", align 4 ; 5 uses
  %52 = alloca %"class.clang::ento::APSIntType", align 4 ; 5 uses
  %53 = alloca %"class.clang::ento::APSIntType", align 8 ; 5 uses
  %54 = alloca %"class.llvm::APSInt", align 8     ; 11 uses
  %55 = alloca %"class.llvm::APSInt", align 8     ; 10 uses
  store ptr %3, ptr %39, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  store i8 %4, ptr %i.c, align 8
  %.sroa.0335.0.copyload = load ptr, ptr %5, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  store ptr %i.d, ptr %40, align 8, !tbaa !10
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call { ptr, i8 } %i.g(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %40, ptr %3, i8 %4) #17 ; 2 uses
  %.fca.0.extract328 = extractvalue { ptr, i8 } %i.h, 0 ; 2 uses
  %.fca.1.extract329 = extractvalue { ptr, i8 } %i.h, 1 ; 3 uses
  %i.i = load ptr, ptr %40, align 8, !tbaa !10    ; 2 uses
  %.not.i.i409 = icmp eq ptr %i.i, null
  br i1 %.not.i.i409, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.i) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  store ptr %i.j, ptr %41, align 8, !tbaa !10
  %.not.i.i410 = icmp eq ptr %i.j, null
  br i1 %.not.i.i410, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit411, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.j) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit411

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit411: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.d
  %.sroa.0325.0.copyload = load ptr, ptr %5, align 8, !tbaa !14
  %.sroa.2326.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call { ptr, i8 } %i.m(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %41, ptr %.sroa.0325.0.copyload, i8 %.sroa.2326.0.copyload) #17 ; 2 uses
  %.fca.0.extract321 = extractvalue { ptr, i8 } %i.n, 0 ; 2 uses
  %.fca.1.extract322 = extractvalue { ptr, i8 } %i.n, 1 ; 3 uses
  %i.o = load ptr, ptr %41, align 8, !tbaa !10    ; 2 uses
  %.not.i.i412 = icmp eq ptr %i.o, null
  br i1 %.not.i.i412, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit411
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.o) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit411, %bb.e
  %i.p = add i8 %.fca.1.extract329, -5
  %spec.select.i.i.i.i.i = icmp ult i8 %i.p, 6
  br i1 %spec.select.i.i.i.i.i, label %bb.f, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413
  store ptr %.fca.0.extract328, ptr %39, align 8
  store i8 %.fca.1.extract329, ptr %i.c, align 8
  br label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413, %bb.f
  %i.q = phi i8 [ %4, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413 ], [ %.fca.1.extract329, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %3, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit413 ], [ %.fca.0.extract328, %bb.f ] ; 2 uses
  %i.s = add i8 %.fca.1.extract322, -5
  %spec.select.i.i.i.i.i416 = icmp ult i8 %i.s, 6
  br i1 %spec.select.i.i.i.i.i416, label %bb.g, label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit._ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420_crit_edge

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit._ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420_crit_edge: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit
  %.sroa.0318.0.copyload.pre = load ptr, ptr %5, align 8, !tbaa !14
  %.sroa.2319.0.copyload.pre = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15
  br label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420

bb.g:                                             ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit
  store ptr %.fca.0.extract321, ptr %5, align 8
  store i8 %.fca.1.extract322, ptr %.sroa.7.0..sroa_idx, align 8
  br label %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420

_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit._ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420_crit_edge, %bb.g
  %.sroa.2319.0.copyload = phi i8 [ %.sroa.2319.0.copyload.pre, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit._ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420_crit_edge ], [ %.fca.1.extract322, %bb.g ]
  %.sroa.0318.0.copyload = phi ptr [ %.sroa.0318.0.copyload.pre, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit._ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420_crit_edge ], [ %.fca.0.extract321, %bb.g ]
  %i.t = icmp eq ptr %i.r, %.sroa.0318.0.copyload
  %i.u = icmp eq i8 %i.q, %.sroa.2319.0.copyload
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420
  switch i32 %2, label %bb.q [
    i32 14, label %bb.i
    i32 12, label %bb.i
    i32 13, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 15, label %bb.j
    i32 17, label %bb.k
    i32 6, label %bb.k
    i32 18, label %bb.p
    i32 16, label %bb.p
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17, !nonnull !38, !align !39
  %i.y = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.x, i64 %6) #17
  %i.z = and i64 %6, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !40
  %i.ac = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ab) #17
  %i.ad = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmjb(ptr noundef nonnull align 8 dereferenceable(144) %i.w, i64 noundef 1, i32 noundef %i.y, i1 noundef zeroext %i.ac) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17, !nonnull !38, !align !39
  %i.ag = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.af, i64 %6) #17
  %i.ah = and i64 %6, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !40
  %i.ak = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aj) #17
  %i.al = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmjb(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i64 noundef 0, i32 noundef %i.ag, i1 noundef zeroext %i.ak) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.am = and i64 %6, -16
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i.i38.i = load i64, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i38.i, -16
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !40 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16            ; 2 uses
  %i.av = icmp ne i8 %i.au, 13
  %.not.not3039.i = icmp eq ptr %i.as, null
  %.not.not40.i = or i1 %.not.not3039.i, %i.av
  br i1 %.not.not40.i, label %.lr.ph.i.preheader, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.not.i794 = icmp eq i8 %i.au, 47
  br i1 %.not.i794, label %.split689, label %.lr.ph

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.bu, 47
  br i1 %.not.i, label %.split689, label %.lr.ph

.split689:                                        ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa788 = phi ptr [ %i.as, %.lr.ph.i.preheader ], [ %i.bs, %.lr.ph.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa788, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  %i.ay = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ax) #17, !inline_history !53 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ay, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.ax, ptr %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = trunc i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 8
  %i.bd = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.be = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %i.be, label %.split689._crit_edge, label %bb.o

.split689._crit_edge:                             ; preds = %.split689
  %.pre = load ptr, ptr %i.an, align 16, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.pre822 = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.pre, -16
  %.pre824 = inttoptr i64 %.pre822 to ptr
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i795 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i423, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i38.i, %.lr.ph.i.preheader ]
  %i.bf = and i64 %.sroa.0.0.copyload.i.i.i.i.i795, -16
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !40 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i8, ptr %i.bi, align 16            ; 2 uses
  %i.bk = icmp ne i8 %i.bj, 35
  %.not17.not32.i = icmp eq ptr %i.bh, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.bk
  br i1 %.not17.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bl, align 16, !tbaa !46
  %i.bm = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i.i.i.i423 = load i64, ptr %i.bp, align 8, !tbaa !46 ; 2 uses
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i423, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i8, ptr %i.bt, align 16            ; 2 uses
  %i.bv = icmp ne i8 %i.bu, 13
  %.not.not30.i = icmp eq ptr %i.bs, null
  %.not.not.i = or i1 %.not.not30.i, %i.bv
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.split:                                           ; preds = %.lr.ph
  %i.bw = icmp eq i8 %i.bj, 10
  br i1 %i.bw, label %bb.l, label %bb.o

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %tailrecurse.i, %bb.k
  %.lcssa.i = phi ptr [ %i.as, %bb.k ], [ %i.bs, %tailrecurse.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.by = load i32, ptr %i.bx, align 16
  %i.bz = lshr i32 %i.by, 19
  %i.ca = and i32 %i.bz, 1023
  %i.cb = add nsw i32 %i.ca, -453
  %spec.select.i.i = icmp ult i32 %i.cb, 20
  br i1 %spec.select.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.split689._crit_edge, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %.pre-phi825 = phi ptr [ %.pre824, %.split689._crit_edge ], [ %i.ar, %.split ], [ %i.ar, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ]
  %i.cc = load ptr, ptr %.pre-phi825, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 16            ; 3 uses
  switch i8 %i.ce, label %bb.m [
    i8 40, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 31, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 11, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.cf = and i8 %i.ce, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = icmp eq i8 %i.ce, 13
  br i1 %i.cg, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i: ; preds = %bb.n
  %i.ch = load i32, ptr %i.cd, align 16
  %i.ci = and i32 %i.ch, 536346624
  %i.cj = icmp eq i32 %i.ci, 264765440
  br i1 %i.cj, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %bb.n
  br label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit

_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.m, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i
  %.sroa.3.0.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i ], [ 2, %bb.l ], [ 2, %bb.l ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ck, i64 noundef 0, i64 %6) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.o:                                             ; preds = %.split689, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !38, !align !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 18984
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.co, align 8, !tbaa !46
  %i.cp = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.cm, i64 noundef 0, i64 %.sroa.0.0.copyload.i.i.i) #17
  %i.cq = call { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr %i.cp, i8 6, i64 %6, i64 0) #17 ; 2 uses
  %.fca.0.extract270 = extractvalue { ptr, i8 } %i.cq, 0
  %.fca.1.extract271 = extractvalue { ptr, i8 } %i.cq, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.p:                                             ; preds = %bb.h, %bb.h
  %i.cr = call { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr %i.r, i8 %i.q, i64 %6, i64 0) #17 ; 2 uses
  %.fca.0.extract262 = extractvalue { ptr, i8 } %i.cr, 0
  %.fca.1.extract263 = extractvalue { ptr, i8 } %i.cr, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.q:                                             ; preds = %bb.h, %_ZNK5clang4ento4SVal5getAsINS0_6NonLocEEESt8optionalIT_Ev.exit420
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %54, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %49, i64 12 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 5 uses
  %.sink7.i.sroa.gep.i492 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %.sink7.i.sroa.gep5.i497 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sink7.i.sroa.gep.i500 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %.sink7.i.sroa.gep5.i505 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sink7.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.sink7.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sink7.i.sroa.gep.i484 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sink7.i.sroa.gep5.i489 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %26, i64 12
  %.4..4..4..sroa_idx938 = getelementptr inbounds nuw i8, ptr %51, i64 4
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm5APIntD2Ev.exit510
  %.0.ph = phi i32 [ %.2, %_ZN4llvm5APIntD2Ev.exit510 ], [ %2, %bb.q ] ; 29 uses
  %.sroa.0365.0.ph = phi ptr [ %.sroa.0365.5, %_ZN4llvm5APIntD2Ev.exit510 ], [ undef, %bb.q ]
  %.sroa.30.0.ph = phi i8 [ %.sroa.30.5, %_ZN4llvm5APIntD2Ev.exit510 ], [ undef, %bb.q ]
  %.pre820 = load i8, ptr %i.c, align 8, !tbaa !54 ; 2 uses
  switch i8 %.pre820, label %bb.s [
    i8 10, label %bb.t
    i8 8, label %bb.w
    i8 6, label %bb.aq
    i8 9, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i511911 = load ptr, ptr %39, align 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511911, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !56
  %i.di = icmp ne i32 %i.dh, 2
  %.not771912 = icmp eq ptr %.sroa.0.0.copyload.i.i.i511911, null
  %.not913 = or i1 %.not771912, %i.di
  br i1 %.not913, label %.thread710, label %.lr.ph916

.preheader:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit531, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  %.sroa.0.0.copyload.i.i.i511 = load ptr, ptr %39, align 8 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !56
  %i.dl = icmp ne i32 %i.dk, 2
  %.not771 = icmp eq ptr %.sroa.0.0.copyload.i.i.i511, null
  %.not = or i1 %.not771, %i.dl
  br i1 %.not, label %.thread710, label %.lr.ph916

bb.s:                                             ; preds = %bb.r
  %.sroa.0259.0.copyload = load ptr, ptr %39, align 8
  %.sroa.0256.0.copyload = load ptr, ptr %5, align 8
  %.sroa.2257.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dm = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeSymExprValNNENS_18BinaryOperatorKindENS0_6NonLocES3_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i32 noundef %.0.ph, ptr %.sroa.0259.0.copyload, i8 %.pre820, ptr %.sroa.0256.0.copyload, i8 %.sroa.2257.0.copyload, i64 %6) #17 ; 2 uses
  %.fca.0.extract251 = extractvalue { ptr, i8 } %i.dm, 0
  %.fca.1.extract252 = extractvalue { ptr, i8 } %i.dm, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.t:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i428 = load ptr, ptr %39, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i429 = load ptr, ptr %5, align 8 ; 2 uses
  switch i32 %.0.ph, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459 [
    i32 14, label %bb.u
    i32 15, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp eq ptr %.sroa.0.0.copyload.i.i.i428, %.sroa.0.0.copyload.i.i.i429
  %i.do = zext i1 %i.dn to i64
  %i.dp = load ptr, ptr %i.ct, align 8, !tbaa !17, !nonnull !38, !align !39
  %i.dq = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dp, i64 %6) #17
  %i.dr = and i64 %6, -16
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !40
  %i.du = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dt) #17
  %i.dv = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmjb(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 noundef %i.do, i32 noundef %i.dq, i1 noundef zeroext %i.du) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.v:                                             ; preds = %bb.t
  %i.dw = icmp ne ptr %.sroa.0.0.copyload.i.i.i428, %.sroa.0.0.copyload.i.i.i429
  %i.dx = zext i1 %i.dw to i64
  %i.dy = load ptr, ptr %i.ct, align 8, !tbaa !17, !nonnull !38, !align !39
  %i.dz = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dy, i64 %6) #17
  %i.ea = and i64 %6, -16
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !40
  %i.ed = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ec) #17
  %i.ee = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmjb(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 noundef %i.dx, i32 noundef %i.dz, i1 noundef zeroext %i.ed) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.w:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i438 = load ptr, ptr %39, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i443 = load ptr, ptr %.sroa.0.0.copyload.i.i.i438, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i444 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i438, i64 8
  %.sroa.2.0.copyload.i.i.i.i445 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i444, align 8 ; 2 uses
  %i.ef = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !54
  switch i8 %i.ef, label %bb.am [
    i8 8, label %bb.x
    i8 6, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.eg = add i32 %.0.ph, -9
  %i.eh = icmp ult i32 %i.eg, 7
  br i1 %i.eh, label %bb.y, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.y:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %1, align 8, !tbaa !10    ; 3 uses
  store ptr %i.ei, ptr %42, align 8, !tbaa !10
  %.not.i.i446 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i446, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit447, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ei) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit447

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit447: ; preds = %bb.y, %bb.z
  %.sroa.0.0.copyload.i.i.i448 = load ptr, ptr %5, align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i453 = load ptr, ptr %.sroa.0.0.copyload.i.i.i448, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i454 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i448, i64 8
  %.sroa.2.0.copyload.i.i.i.i455 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i454, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i453, ptr %43, align 8
  %.sroa.2200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i8 %.sroa.2.0.copyload.i.i.i.i455, ptr %.sroa.2200.0..sroa_idx, align 8
  %i.ej = load ptr, ptr %0, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call { ptr, i8 } %i.el(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %42, i32 noundef %.0.ph, ptr %.sroa.0.0.copyload.i.i.i.i443, i8 %.sroa.2.0.copyload.i.i.i.i445, ptr noundef nonnull byval(%"class.clang::ento::Loc") align 8 %43, i64 %6) #17 ; 2 uses
  %.fca.0.extract192 = extractvalue { ptr, i8 } %i.em, 0 ; 2 uses
  %.fca.1.extract193 = extractvalue { ptr, i8 } %i.em, 1 ; 2 uses
  %i.en = load ptr, ptr %42, align 8, !tbaa !10   ; 2 uses
  %.not.i.i458 = icmp eq ptr %i.en, null
  br i1 %.not.i.i458, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit447
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.en) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.ab:                                            ; preds = %bb.w
  %i.eo = add i32 %.0.ph, -9
  %i.ep = icmp ult i32 %i.eo, 7
  br i1 %i.ep, label %bb.ac, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #17
  %.sroa.0.0.copyload.i.i.i460 = load ptr, ptr %5, align 8 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i460, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !60 ; 2 uses
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !60
  %i.et = icmp ult i32 %i.es, 65
  br i1 %i.et, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eu = load i64, ptr %.sroa.0.0.copyload.i.i.i460, align 8, !tbaa !46
  store i64 %i.eu, ptr %44, align 8, !tbaa !46
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %44, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.0.copyload.i.i.i460) #17
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.ad, %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i460, i64 12
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !62, !range !65, !noundef !38
  store i8 %i.ex, ptr %i.ev, align 4, !tbaa !62
  %i.ey = call noundef ptr @_ZNK5clang4ento4SVal14getAsLocSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %39, i1 noundef zeroext true) #17 ; 3 uses
  %.not408 = icmp eq ptr %i.ey, null
  br i1 %.not408, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #17
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i64 %i.fb(ptr noundef nonnull align 8 dereferenceable(28) %i.ey) #17
  %i.fd = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 %i.fc)
  %i.fe = trunc i64 %i.fd to i40
  store i40 %i.fe, ptr %45, align 8
  call void @_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE(ptr noundef nonnull align 4 dereferenceable(5) %45, ptr noundef nonnull align 8 dereferenceable(13) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #17
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !66, !nonnull !38, !align !39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 19320
  %.sroa.0.0.copyload.i = load i64, ptr %i.fh, align 8, !tbaa !46
  %i.fi = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 %.sroa.0.0.copyload.i)
  %i.fj = trunc i64 %i.fi to i40
  store i40 %i.fj, ptr %46, align 8
  call void @_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE(ptr noundef nonnull align 4 dereferenceable(5) %46, ptr noundef nonnull align 8 dereferenceable(13) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fk = load ptr, ptr %1, align 8, !tbaa !10    ; 3 uses
  store ptr %i.fk, ptr %47, align 8, !tbaa !10
  %.not.i.i465 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i465, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit466, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fk) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit466

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit466: ; preds = %bb.ah, %bb.ai
  %i.fl = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, ptr noundef nonnull align 8 dereferenceable(13) %44) #17
  store ptr %i.fl, ptr %48, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i8 2, ptr %.sroa.4179.0..sroa_idx, align 8
  %i.fm = load ptr, ptr %0, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call { ptr, i8 } %i.fo(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %47, i32 noundef %.0.ph, ptr %.sroa.0.0.copyload.i.i.i.i443, i8 %.sroa.2.0.copyload.i.i.i.i445, ptr noundef nonnull byval(%"class.clang::ento::Loc") align 8 %48, i64 %6) #17 ; 2 uses
  %.fca.0.extract169 = extractvalue { ptr, i8 } %i.fp, 0
  %.fca.1.extract170 = extractvalue { ptr, i8 } %i.fp, 1
  %i.fq = load ptr, ptr %47, align 8, !tbaa !10   ; 2 uses
  %.not.i.i469 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i469, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit470, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit466
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fq) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit470

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit470: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit466, %bb.aj
  %i.fr = load i32, ptr %i.eq, align 8, !tbaa !60
  %i.fs = icmp ugt i32 %i.fr, 64
  br i1 %i.fs, label %bb.ak, label %_ZN4llvm5APIntD2Ev.exit

bb.ak:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit470
  %i.ft = load ptr, ptr %44, align 8, !tbaa !46   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_ZN4llvm5APIntD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #18
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit470, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.am:                                            ; preds = %bb.w
  switch i32 %.0.ph, label %bb.ap [
    i32 14, label %bb.an
    i32 15, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.fv = call { ptr, i8 } @_ZN5clang4ento11SValBuilder12makeTruthValEbNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i1 noundef zeroext false, i64 %6) ; 2 uses
  %.fca.0.extract161 = extractvalue { ptr, i8 } %i.fv, 0
  %.fca.1.extract162 = extractvalue { ptr, i8 } %i.fv, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.ao:                                            ; preds = %bb.am
  %i.fw = call { ptr, i8 } @_ZN5clang4ento11SValBuilder12makeTruthValEbNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i1 noundef zeroext true, i64 %6) ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i8 } %i.fw, 0
  %.fca.1.extract154 = extractvalue { ptr, i8 } %i.fw, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.ap:                                            ; preds = %bb.am
  %i.fx = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeSymExprValNNENS_18BinaryOperatorKindENS0_6NonLocES3_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i32 noundef %.0.ph, ptr %3, i8 %4, ptr %.sroa.0335.0.copyload, i8 %.sroa.7.0.copyload, i64 %6) #17 ; 2 uses
  %.fca.0.extract142 = extractvalue { ptr, i8 } %i.fx, 0
  %.fca.1.extract143 = extractvalue { ptr, i8 } %i.fx, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.aq:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #17
  %.sroa.0.0.copyload.i.i.i471 = load ptr, ptr %39, align 8 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i471, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !60 ; 2 uses
  store i32 %i.fz, ptr %i.cx, align 8, !tbaa !60
  %i.ga = icmp ult i32 %i.fz, 65
  br i1 %i.ga, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gb = load i64, ptr %.sroa.0.0.copyload.i.i.i471, align 8, !tbaa !46
  store i64 %i.gb, ptr %49, align 8, !tbaa !46
  br label %_ZN4llvm6APSIntC2ERKS0_.exit476

bb.as:                                            ; preds = %bb.aq
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %49, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.0.0.copyload.i.i.i471) #17
  br label %_ZN4llvm6APSIntC2ERKS0_.exit476

_ZN4llvm6APSIntC2ERKS0_.exit476:                  ; preds = %bb.ar, %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i471, i64 12
  %i.gd = load i8, ptr %i.gc, align 4, !tbaa !62, !range !65, !noundef !38
  store i8 %i.gd, ptr %i.cy, align 4, !tbaa !62
  %i.ge = load ptr, ptr %1, align 8, !tbaa !10    ; 6 uses
  %.not.i.i477 = icmp eq ptr %i.ge, null          ; 2 uses
  br i1 %.not.i.i477, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit476
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ge) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478: ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit476, %bb.at
  %.sroa.0133.0.copyload = load ptr, ptr %5, align 8, !tbaa !14 ; 3 uses
  %.sroa.2134.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %.sroa.0133.0.copyload, ptr %37, align 8
  store i8 %.sroa.2134.0.copyload, ptr %i.cz, align 8
  %i.gf = and i8 %.sroa.2134.0.copyload, -5
  %i.gg = icmp ne i8 %i.gf, 2
  %.not.not12.i = icmp eq ptr %.sroa.0133.0.copyload, null
  %.not.not.i479 = select i1 %i.gg, i1 true, i1 %.not.not12.i
  br i1 %.not.not.i479, label %bb.au, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit

bb.au:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478
  %i.gh = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %37, i1 noundef zeroext false) #17 ; 2 uses
  %.not9.not.i = icmp eq ptr %i.gh, null
  br i1 %.not9.not.i, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !93
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !102 ; 2 uses
  store ptr %i.ge, ptr %38, align 8, !tbaa !10
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ge) #17
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef ptr %i.go(ptr noundef nonnull align 8 dereferenceable(56) %i.gl, ptr nofree noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull %i.gh) #17, !inline_history !104
  %i.gq = load ptr, ptr %38, align 8, !tbaa !10   ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i10.i, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.gq) #17
  br label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit.thread

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  br label %bb.aw

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478, %bb.au
  %.2.i = phi ptr [ %.sroa.0133.0.copyload, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit478 ], [ null, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  br i1 %.not.i.i477, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit481, label %bb.aw

bb.aw:                                            ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit.thread, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit
  %.2.i691 = phi ptr [ %i.gp, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit.thread ], [ %.2.i, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ge) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit481

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit481: ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit, %bb.aw
  %.2.i692 = phi ptr [ %.2.i, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit ], [ %.2.i691, %bb.aw ] ; 5 uses
  %.not407 = icmp eq ptr %.2.i692, null
  br i1 %.not407, label %bb.bq, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit481
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #17
  %i.gr = getelementptr inbounds nuw i8, ptr %.2.i692, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !60 ; 2 uses
  store i32 %i.gs, ptr %i.da, align 8, !tbaa !60
  %i.gt = icmp ult i32 %i.gs, 65
  br i1 %i.gt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gu = load i64, ptr %.2.i692, align 8, !tbaa !46
  store i64 %i.gu, ptr %50, align 8, !tbaa !46
  br label %_ZN4llvm6APSIntC2ERKS0_.exit482

bb.az:                                            ; preds = %bb.ax
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %50, ptr noundef nonnull align 8 dereferenceable(13) %.2.i692) #17
  br label %_ZN4llvm6APSIntC2ERKS0_.exit482

_ZN4llvm6APSIntC2ERKS0_.exit482:                  ; preds = %bb.ay, %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %.2.i692, i64 12
  %i.gw = load i8, ptr %i.gv, align 4, !tbaa !62, !range !65, !noundef !38 ; 3 uses
  store i8 %i.gw, ptr %i.db, align 4, !tbaa !62
  %i.gx = add i32 %.0.ph, -9
  %i.gy = icmp ult i32 %i.gx, 7
  br i1 %i.gy, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit482
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  %i.gz = load i32, ptr %i.cx, align 8, !tbaa !60 ; 3 uses
  store i32 %i.gz, ptr %51, align 4, !tbaa !105
  %i.ha = load i8, ptr %i.cy, align 4, !tbaa !62, !range !65, !noundef !38 ; 3 uses
  store i8 %i.ha, ptr %.4..4..4..sroa_idx938, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  %i.hb = load i32, ptr %i.da, align 8, !tbaa !60 ; 3 uses
  store i32 %i.hb, ptr %52, align 4, !tbaa !105
  store i8 %i.gw, ptr %.4..4..4..sroa_idx, align 4, !tbaa !107
  %i.hc = icmp ult i32 %i.gz, %i.hb
  br i1 %i.hc, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hd = icmp uge i32 %i.hb, %i.gz
  %i.he = icmp samesign ult i8 %i.ha, %i.gw
  %or.cond770 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond770, label %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i, label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i: ; preds = %bb.bb, %bb.ba
  br label %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit

_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit: ; preds = %bb.bb, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i
  %i.hf = phi ptr [ %52, %_ZNK5clang4ento10APSIntTypeltERKS1_.exit.thread.i ], [ %51, %bb.bb ]
  %i.hg = load i64, ptr %i.hf, align 4            ; 2 uses
  %.sroa.0599.0.extract.trunc = trunc i64 %i.hg to i32 ; 4 uses
  %.sroa.5601.0.extract.shift = lshr i64 %i.hg, 32
  %.sroa.5601.0.extract.trunc = trunc i64 %.sroa.5601.0.extract.shift to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %i.hh = trunc nuw i8 %i.ha to i1
  br i1 %i.hh, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %_ZN4llvm5APIntD2Ev.exit2.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %35, ptr noundef nonnull align 8 dereferenceable(13) %49, i32 noundef %.sroa.0599.0.extract.trunc) #17, !noalias !108
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i

_ZN4llvm5APIntD2Ev.exit2.i.i:                     ; preds = %_ZSt3maxIN5clang4ento10APSIntTypeEERKT_S5_S5_.exit
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %36, ptr noundef nonnull align 8 dereferenceable(13) %49, i32 noundef %.sroa.0599.0.extract.trunc) #17, !noalias !108
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i

_ZNK4llvm6APSInt10extOrTruncEj.exit.i:            ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i, %_ZN4llvm5APIntD2Ev.exit.i.i
  %.sink7.i.sroa.phi.i = phi ptr [ %.sink7.i.sroa.gep.i, %_ZN4llvm5APIntD2Ev.exit2.i.i ], [ %.sink7.i.sroa.gep5.i, %_ZN4llvm5APIntD2Ev.exit.i.i ]
  %.sink7.i.i = phi ptr [ %36, %_ZN4llvm5APIntD2Ev.exit2.i.i ], [ %35, %_ZN4llvm5APIntD2Ev.exit.i.i ]
  %i.hi = load i32, ptr %.sink7.i.sroa.phi.i, align 8, !tbaa !60, !noalias !108
  %i.hj = load i64, ptr %.sink7.i.i, align 8, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.hk = load i32, ptr %i.cx, align 8, !tbaa !60
  %i.hl = icmp ult i32 %i.hk, 65
  br i1 %i.hl, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i
  %i.hm = load ptr, ptr %49, align 8, !tbaa !46   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdaPv(ptr noundef nonnull %i.hm) #18
  br label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit

_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit: ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i, %bb.bc, %bb.bd
  store i64 %i.hj, ptr %49, align 8
  store i32 %i.hi, ptr %i.cx, align 8, !tbaa !60
  store i8 %.sroa.5601.0.extract.trunc, ptr %i.cy, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  %i.ho = load i8, ptr %i.db, align 4, !tbaa !62, !range !65, !noalias !111, !noundef !38
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %_ZN4llvm5APIntD2Ev.exit.i.i488, label %_ZN4llvm5APIntD2Ev.exit2.i.i483

_ZN4llvm5APIntD2Ev.exit.i.i488:                   ; preds = %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %33, ptr noundef nonnull align 8 dereferenceable(13) %50, i32 noundef %.sroa.0599.0.extract.trunc) #17, !noalias !111
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i485

_ZN4llvm5APIntD2Ev.exit2.i.i483:                  ; preds = %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %34, ptr noundef nonnull align 8 dereferenceable(13) %50, i32 noundef %.sroa.0599.0.extract.trunc) #17, !noalias !111
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i485

_ZNK4llvm6APSInt10extOrTruncEj.exit.i485:         ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i483, %_ZN4llvm5APIntD2Ev.exit.i.i488
  %.sink7.i.sroa.phi.i486 = phi ptr [ %.sink7.i.sroa.gep.i484, %_ZN4llvm5APIntD2Ev.exit2.i.i483 ], [ %.sink7.i.sroa.gep5.i489, %_ZN4llvm5APIntD2Ev.exit.i.i488 ]
  %.sink7.i.i487 = phi ptr [ %34, %_ZN4llvm5APIntD2Ev.exit2.i.i483 ], [ %33, %_ZN4llvm5APIntD2Ev.exit.i.i488 ]
  %i.hq = load i32, ptr %.sink7.i.sroa.phi.i486, align 8, !tbaa !60, !noalias !111
  %i.hr = load i64, ptr %.sink7.i.i487, align 8, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  %i.hs = load i32, ptr %i.da, align 8, !tbaa !60
  %i.ht = icmp ult i32 %i.hs, 65
  br i1 %i.ht, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490, label %bb.be

bb.be:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i485
  %i.hu = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #18
  br label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490

_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490: ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i485, %bb.be, %bb.bf
  store i64 %i.hr, ptr %50, align 8
  store i32 %i.hq, ptr %i.da, align 8, !tbaa !60
  store i8 %.sroa.5601.0.extract.trunc, ptr %i.db, align 4, !tbaa !62
  %.pre821 = add nsw i32 %.0.ph, -7
  br label %bb.bm

bb.bg:                                            ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit482
  %i.hw = add i32 %.0.ph, -7                      ; 3 uses
  %i.hx = icmp ult i32 %i.hw, 2
  br i1 %i.hx, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hy = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 %6) ; 2 uses
  %.sroa.0588.0.extract.trunc = trunc i64 %i.hy to i32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  %i.hz = load i8, ptr %i.cy, align 4, !tbaa !62, !range !65, !noalias !114, !noundef !38
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN4llvm5APIntD2Ev.exit.i.i496, label %_ZN4llvm5APIntD2Ev.exit2.i.i491

_ZN4llvm5APIntD2Ev.exit.i.i496:                   ; preds = %bb.bh
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %31, ptr noundef nonnull align 8 dereferenceable(13) %49, i32 noundef %.sroa.0588.0.extract.trunc) #17, !noalias !114
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i493

_ZN4llvm5APIntD2Ev.exit2.i.i491:                  ; preds = %bb.bh
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %32, ptr noundef nonnull align 8 dereferenceable(13) %49, i32 noundef %.sroa.0588.0.extract.trunc) #17, !noalias !114
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i493

_ZNK4llvm6APSInt10extOrTruncEj.exit.i493:         ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i491, %_ZN4llvm5APIntD2Ev.exit.i.i496
  %.sink7.i.sroa.phi.i494 = phi ptr [ %.sink7.i.sroa.gep.i492, %_ZN4llvm5APIntD2Ev.exit2.i.i491 ], [ %.sink7.i.sroa.gep5.i497, %_ZN4llvm5APIntD2Ev.exit.i.i496 ]
  %.sink7.i.i495 = phi ptr [ %32, %_ZN4llvm5APIntD2Ev.exit2.i.i491 ], [ %31, %_ZN4llvm5APIntD2Ev.exit.i.i496 ]
  %i.ib = load i32, ptr %.sink7.i.sroa.phi.i494, align 8, !tbaa !60, !noalias !114
  %i.ic = load i64, ptr %.sink7.i.i495, align 8, !noalias !114
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  %i.id = load i32, ptr %i.cx, align 8, !tbaa !60
  %i.ie = icmp ult i32 %i.id, 65
  br i1 %i.ie, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i493
  %i.if = load ptr, ptr %49, align 8, !tbaa !46   ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.if) #18
  br label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498

_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498: ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i493, %bb.bi, %bb.bj
  store i64 %i.ic, ptr %49, align 8
  store i32 %i.ib, ptr %i.cx, align 8, !tbaa !60
  %.sroa.0588.4.extract.shift772 = lshr i64 %i.hy, 32
  %.sroa.0588.4.extract.trunc = trunc i64 %.sroa.0588.4.extract.shift772 to i8 ; 2 uses
  store i8 %.sroa.0588.4.extract.trunc, ptr %i.cy, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.ih = load i8, ptr %i.db, align 4, !tbaa !62, !range !65, !noalias !117, !noundef !38
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZN4llvm5APIntD2Ev.exit.i.i504, label %_ZN4llvm5APIntD2Ev.exit2.i.i499

_ZN4llvm5APIntD2Ev.exit.i.i504:                   ; preds = %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %29, ptr noundef nonnull align 8 dereferenceable(13) %50, i32 noundef %.sroa.0588.0.extract.trunc) #17, !noalias !117
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i501

_ZN4llvm5APIntD2Ev.exit2.i.i499:                  ; preds = %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit498
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %30, ptr noundef nonnull align 8 dereferenceable(13) %50, i32 noundef %.sroa.0588.0.extract.trunc) #17, !noalias !117
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i501

_ZNK4llvm6APSInt10extOrTruncEj.exit.i501:         ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i499, %_ZN4llvm5APIntD2Ev.exit.i.i504
  %.sink7.i.sroa.phi.i502 = phi ptr [ %.sink7.i.sroa.gep.i500, %_ZN4llvm5APIntD2Ev.exit2.i.i499 ], [ %.sink7.i.sroa.gep5.i505, %_ZN4llvm5APIntD2Ev.exit.i.i504 ]
  %.sink7.i.i503 = phi ptr [ %30, %_ZN4llvm5APIntD2Ev.exit2.i.i499 ], [ %29, %_ZN4llvm5APIntD2Ev.exit.i.i504 ]
  %i.ij = load i32, ptr %.sink7.i.sroa.phi.i502, align 8, !tbaa !60, !noalias !117
  %i.ik = load i64, ptr %.sink7.i.i503, align 8, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  %i.il = load i32, ptr %i.da, align 8, !tbaa !60
  %i.im = icmp ult i32 %i.il, 65
  br i1 %i.im, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i501
  %i.in = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.in) #18
  br label %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506

_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506: ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i501, %bb.bk, %bb.bl
  store i64 %i.ik, ptr %50, align 8
  store i32 %i.ij, ptr %i.da, align 8, !tbaa !60
  store i8 %.sroa.0588.4.extract.trunc, ptr %i.db, align 4, !tbaa !62
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bg, %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506, %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490
  %.pre-phi = phi i32 [ %i.hw, %bb.bg ], [ %i.hw, %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit506 ], [ %.pre821, %_ZNK5clang4ento10APSIntType5applyERN4llvm6APSIntE.exit490 ]
  %i.ip = call { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef %.0.ph, ptr noundef nonnull align 8 dereferenceable(13) %49, ptr noundef nonnull align 8 dereferenceable(13) %50) #17 ; 2 uses
  %i.iq = extractvalue { ptr, i8 } %i.ip, 0
  %i.ir = extractvalue { ptr, i8 } %i.ip, 1
  %i.is = trunc nuw i8 %i.ir to i1                ; 2 uses
  %or.cond = icmp ult i32 %.pre-phi, 2
  %spec.select = zext i1 %or.cond to i8
  %.sroa.0365.3 = select i1 %i.is, ptr %i.iq, ptr null
  %.sroa.30.3 = select i1 %i.is, i8 6, i8 %spec.select
  %i.it = load i32, ptr %i.da, align 8, !tbaa !60
  %i.iu = icmp ugt i32 %i.it, 64
  br i1 %i.iu, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.iv = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  br label %bb.ch

bb.bq:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit481
  switch i32 %.0.ph, label %bb.cg [
    i32 4, label %bb.cc
    i32 3, label %bb.cc
    i32 7, label %bb.bx
    i32 8, label %bb.bu
    i32 14, label %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpNNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_6NonLocES9_NS3_8QualTypeE:bb.a
  %i.jl = load i32, ptr %i.dc, align 8, !tbaa !60
  %i.jm = icmp ugt i32 %i.jl, 64
  br i1 %i.jm, label %bb.by, label %_ZNK4llvm6APSInteqEl.exit

bb.by:                                            ; preds = %bb.bx
  %i.jn = load ptr, ptr %27, align 8, !tbaa !46   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZNK4llvm6APSInteqEl.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZdaPv(ptr noundef nonnull %i.jn) #18
  br label %_ZNK4llvm6APSInteqEl.exit

_ZNK4llvm6APSInteqEl.exit:                        ; preds = %bb.bx, %bb.by, %bb.bz
  %i.jp = icmp eq i32 %i.jk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br i1 %i.jp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNK4llvm6APSInteqEl.exit
  %i.jq = call { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr nonnull %.sroa.0.0.copyload.i.i.i471, i8 6, i64 %6, i64 0) #17 ; 2 uses
  %.fca.0.extract115 = extractvalue { ptr, i8 } %i.jq, 0
  %.fca.1.extract116 = extractvalue { ptr, i8 } %i.jq, 1
  br label %bb.ch

bb.cb:                                            ; preds = %_ZNK4llvm6APSInteqEl.exit
  %i.jr = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeSymExprValNNENS_18BinaryOperatorKindENS0_6NonLocES3_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i32 noundef %.0.ph, ptr %3, i8 %4, ptr %.sroa.0335.0.copyload, i8 %.sroa.7.0.copyload, i64 %6) #17 ; 2 uses
  %.fca.0.extract104 = extractvalue { ptr, i8 } %i.jr, 0
  %.fca.1.extract105 = extractvalue { ptr, i8 } %i.jr, 1
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bq, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  store i32 64, ptr %i.de, align 8, !tbaa !60, !alias.scope !125
  store i64 0, ptr %26, align 8, !alias.scope !125
  store i8 0, ptr %i.df, align 4, !tbaa !62, !alias.scope !125
  %i.js = call noundef i32 @_ZN4llvm6APSInt13compareValuesERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(13) %49, ptr noundef nonnull align 8 dereferenceable(13) %26)
  %i.jt = load i32, ptr %i.de, align 8, !tbaa !60
  %i.ju = icmp ugt i32 %i.jt, 64
  br i1 %i.ju, label %bb.cd, label %_ZNK4llvm6APSInteqEl.exit509

bb.cd:                                            ; preds = %bb.cc
  %i.jv = load ptr, ptr %26, align 8, !tbaa !46   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZNK4llvm6APSInteqEl.exit509, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZdaPv(ptr noundef nonnull %i.jv) #18
  br label %_ZNK4llvm6APSInteqEl.exit509

_ZNK4llvm6APSInteqEl.exit509:                     ; preds = %bb.cc, %bb.cd, %bb.ce
  %i.jx = icmp eq i32 %i.js, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br i1 %i.jx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK4llvm6APSInteqEl.exit509
  %i.jy = call { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i64 %6) #17 ; 2 uses
  %.fca.0.extract96 = extractvalue { ptr, i8 } %i.jy, 0
  %.fca.1.extract97 = extractvalue { ptr, i8 } %i.jy, 1
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bq, %_ZNK4llvm6APSInteqEl.exit509
  %i.jz = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeSymExprValNNENS_18BinaryOperatorKindENS0_6NonLocES3_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, i32 noundef %.0.ph, ptr %3, i8 %4, ptr %.sroa.0335.0.copyload, i8 %.sroa.7.0.copyload, i64 %6) #17 ; 2 uses
  %.fca.0.extract85 = extractvalue { ptr, i8 } %i.jz, 0
  %.fca.1.extract86 = extractvalue { ptr, i8 } %i.jz, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bp, %bb.cg, %bb.cf, %bb.cb, %bb.ca, %bb.bw, %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit
  %cond8 = phi i1 [ false, %bb.cg ], [ true, %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit ], [ false, %bb.bw ], [ false, %bb.ca ], [ false, %bb.cb ], [ false, %bb.cf ], [ false, %bb.bp ]
  %.2 = phi i32 [ %.0.ph, %bb.cg ], [ %.1, %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit ], [ 8, %bb.bw ], [ %.0.ph, %bb.ca ], [ %.0.ph, %bb.cb ], [ %.0.ph, %bb.cf ], [ %.0.ph, %bb.bp ]
  %.sroa.0365.5 = phi ptr [ %.fca.0.extract85, %bb.cg ], [ %.sroa.0365.0.ph, %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit ], [ %.fca.0.extract123, %bb.bw ], [ %.fca.0.extract115, %bb.ca ], [ %.fca.0.extract104, %bb.cb ], [ %.fca.0.extract96, %bb.cf ], [ %.sroa.0365.3, %bb.bp ] ; 2 uses
  %.sroa.30.5 = phi i8 [ %.fca.1.extract86, %bb.cg ], [ %.sroa.30.0.ph, %_ZN5clang14BinaryOperator19reverseComparisonOpENS_18BinaryOperatorKindE.exit ], [ %.fca.1.extract124, %bb.bw ], [ %.fca.1.extract116, %bb.ca ], [ %.fca.1.extract105, %bb.cb ], [ %.fca.1.extract97, %bb.cf ], [ %.sroa.30.3, %bb.bp ] ; 2 uses
  %i.ka = load i32, ptr %i.cx, align 8, !tbaa !60
  %i.kb = icmp ugt i32 %i.ka, 64
  br i1 %i.kb, label %bb.ci, label %_ZN4llvm5APIntD2Ev.exit510

bb.ci:                                            ; preds = %bb.ch
  %i.kc = load ptr, ptr %49, align 8, !tbaa !46   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  br i1 %i.kd, label %_ZN4llvm5APIntD2Ev.exit510, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.kc) #18
  br label %_ZN4llvm5APIntD2Ev.exit510

_ZN4llvm5APIntD2Ev.exit510:                       ; preds = %bb.ch, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  br i1 %cond8, label %bb.r, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

.lr.ph916:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.copyload.i.i.i511915 = phi ptr [ %.sroa.0.0.copyload.i.i.i511, %.preheader ], [ %.sroa.0.0.copyload.i.i.i511911, %.preheader.preheader ] ; 8 uses
  %.0876914 = phi i32 [ %.3, %.preheader ], [ %.0.ph, %.preheader.preheader ] ; 7 uses
  %i.ke = icmp eq i32 %.0876914, 14
  br i1 %i.ke, label %bb.ck, label %.thread699

bb.ck:                                            ; preds = %.lr.ph916
  %i.kf = call noundef zeroext i1 @_ZNK5clang4ento4SVal14isZeroConstantEv(ptr noundef nonnull align 8 dereferenceable(9) %5) #17
  br i1 %i.kf, label %bb.cl, label %.thread699

bb.cl:                                            ; preds = %bb.ck
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 28
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !128 ; 2 uses
  %.off = add i32 %i.kh, -10
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %switch.lookup, label %.thread699

switch.lookup:                                    ; preds = %bb.cl
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_117SimpleSValBuilder11evalBinOpNNEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_18BinaryOperatorKindENS4_6NonLocES9_NS3_8QualTypeE, i64 %i.ki
  %switch.gep = getelementptr i8, ptr %i.kj, i64 -10
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 40
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !131
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 48
  %.sroa.0.0.copyload.i518 = load ptr, ptr %i.km, align 8, !tbaa !136
  %i.kn = call { ptr, i8 } @_ZN5clang4ento11SValBuilder10makeNonLocEPKNS0_7SymExprENS_18BinaryOperatorKindENS0_9APSIntPtrENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr noundef %i.kl, i32 noundef %switch.ext, ptr %.sroa.0.0.copyload.i518, i64 %6) #17 ; 2 uses
  %.fca.0.extract59 = extractvalue { ptr, i8 } %i.kn, 0
  %.fca.1.extract60 = extractvalue { ptr, i8 } %i.kn, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

.thread699:                                       ; preds = %bb.cl, %bb.ck, %.lr.ph916
  %i.ko = load ptr, ptr %1, align 8, !tbaa !10    ; 6 uses
  %.not.i.i519 = icmp eq ptr %i.ko, null          ; 2 uses
  br i1 %.not.i.i519, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520, label %bb.cm

bb.cm:                                            ; preds = %.thread699
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ko) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520: ; preds = %.thread699, %bb.cm
  %.sroa.053.0.copyload = load ptr, ptr %5, align 8, !tbaa !14 ; 3 uses
  %.sroa.254.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %.sroa.053.0.copyload, ptr %24, align 8
  store i8 %.sroa.254.0.copyload, ptr %i.cs, align 8
  %i.kp = and i8 %.sroa.254.0.copyload, -5
  %i.kq = icmp ne i8 %i.kp, 2
  %.not.not12.i521 = icmp eq ptr %.sroa.053.0.copyload, null
  %.not.not.i522 = select i1 %i.kq, i1 true, i1 %.not.not12.i521
  br i1 %.not.not.i522, label %bb.cn, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527

bb.cn:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520
  %i.kr = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %24, i1 noundef zeroext false) #17 ; 2 uses
  %.not9.not.i524 = icmp eq ptr %i.kr, null
  br i1 %.not9.not.i524, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i525

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i525: ; preds = %bb.cn
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !93
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 104
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !102 ; 2 uses
  store ptr %i.ko, ptr %25, align 8, !tbaa !10
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ko) #17
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = call noundef ptr %i.ky(ptr noundef nonnull align 8 dereferenceable(56) %i.kv, ptr nofree noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %i.kr) #17, !inline_history !104
  %i.la = load ptr, ptr %25, align 8, !tbaa !10   ; 2 uses
  %.not.i.i10.i526 = icmp eq ptr %i.la, null
  br i1 %.not.i.i10.i526, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527.thread, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i525
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.la) #17
  br label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527.thread

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i525, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.cp

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520, %bb.cn
  %.2.i523 = phi ptr [ %.sroa.053.0.copyload, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit520 ], [ null, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br i1 %.not.i.i519, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529, label %bb.cp

bb.cp:                                            ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527.thread, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527
  %.2.i523704 = phi ptr [ %i.kz, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527.thread ], [ %.2.i523, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ko) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529: ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527, %bb.cp
  %.2.i523705 = phi ptr [ %.2.i523, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit527 ], [ %.2.i523704, %bb.cp ] ; 3 uses
  %.not405 = icmp eq ptr %.2.i523705, null
  br i1 %.not405, label %.thread710, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529
  %i.lb = add i32 %.0876914, -5
  %i.lc = icmp ult i32 %i.lb, 2
  br i1 %i.lc, label %bb.cr, label %.thread764

bb.cr:                                            ; preds = %bb.cq
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 28
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !128 ; 3 uses
  %i.lf = add i32 %i.le, -5
  %i.lg = icmp ult i32 %i.lf, 2
  br i1 %i.lg, label %bb.cs, label %.thread764

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #17
  %i.lh = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i64 %6)
  %i.li = trunc i64 %i.lh to i40
  store i40 %i.li, ptr %53, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #17
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 48
  %.sroa.0.0.copyload.i530 = load ptr, ptr %i.lj, align 8, !tbaa !136
  call void @_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %54, ptr noundef nonnull readonly align 4 dereferenceable(5) %53, ptr noundef nonnull readonly align 8 dereferenceable(13) %.sroa.0.0.copyload.i530) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  call void @_ZNK5clang4ento10APSIntType7convertERKN4llvm6APSIntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %55, ptr noundef nonnull readonly align 4 dereferenceable(5) %53, ptr noundef nonnull readonly align 8 dereferenceable(13) %.2.i523705) #20
  %i.lk = icmp eq i32 %i.le, %.0876914
  br i1 %i.lk, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ll = call { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(13) %54, ptr noundef nonnull align 8 dereferenceable(13) %55) #17
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.lm = load i8, ptr %i.cu, align 4, !tbaa !62, !range !65, !noundef !38
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.lo = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %54, ptr noundef nonnull align 8 dereferenceable(13) %55) #19
  br label %_ZNK4llvm6APSIntgeERKS0_.exit

bb.cw:                                            ; preds = %bb.cu
  %i.lp = call noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %54, ptr noundef nonnull align 8 dereferenceable(13) %55) #19
  br label %_ZNK4llvm6APSIntgeERKS0_.exit

_ZNK4llvm6APSIntgeERKS0_.exit:                    ; preds = %bb.cv, %bb.cw
  %.in.i = phi i32 [ %i.lo, %bb.cv ], [ %i.lp, %bb.cw ]
  %i.lq = icmp sgt i32 %.in.i, -1
  br i1 %i.lq, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZNK4llvm6APSIntgeERKS0_.exit
  %i.lr = call { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(13) %54, ptr noundef nonnull align 8 dereferenceable(13) %55) #17
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNK4llvm6APSIntgeERKS0_.exit
  %i.ls = call { ptr, i8 } @_ZN5clang4ento17BasicValueFactory10evalAPSIntENS_18BinaryOperatorKindERKN4llvm6APSIntES6_(ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(13) %55, ptr noundef nonnull align 8 dereferenceable(13) %54) #17
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.ct
  %.pn = phi { ptr, i8 } [ %i.ll, %bb.ct ], [ %i.lr, %bb.cx ], [ %i.ls, %bb.cy ]
  %.3 = phi i32 [ %.0876914, %bb.ct ], [ %i.le, %bb.cx ], [ %.0876914, %bb.cy ] ; 2 uses
  %.sroa.0566.0 = extractvalue { ptr, i8 } %.pn, 0
  store ptr %.sroa.0566.0, ptr %5, align 8
  store i8 6, ptr %.sroa.7.0..sroa_idx, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i511915, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !131
  store ptr %i.lu, ptr %39, align 8
  store i8 9, ptr %i.c, align 8
  %i.lv = load i32, ptr %i.cv, align 8, !tbaa !60
  %i.lw = icmp ugt i32 %i.lv, 64
  br i1 %i.lw, label %bb.da, label %_ZN4llvm5APIntD2Ev.exit531

bb.da:                                            ; preds = %bb.cz
  %i.lx = load ptr, ptr %55, align 8, !tbaa !46   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %_ZN4llvm5APIntD2Ev.exit531, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #18
  br label %_ZN4llvm5APIntD2Ev.exit531

_ZN4llvm5APIntD2Ev.exit531:                       ; preds = %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  %i.lz = load i32, ptr %i.cw, align 8, !tbaa !60
  %i.ma = icmp ugt i32 %i.lz, 64
  br i1 %i.ma, label %bb.dc, label %.preheader

bb.dc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit531
  %i.mb = load ptr, ptr %54, align 8, !tbaa !46   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %.preheader, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZdaPv(ptr noundef nonnull %i.mb) #18
  br label %.preheader

.thread764:                                       ; preds = %bb.cq, %bb.cr
  %i.md = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_117SimpleSValBuilder13MakeSymIntValEPKN5clang4ento7SymExprENS1_18BinaryOperatorKindERKN4llvm6APSIntENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr noundef %.sroa.0.0.copyload.i.i.i511915, i32 noundef %.0876914, ptr noundef nonnull align 8 dereferenceable(13) %.2.i523705, i64 %6) ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i8 } %i.md, 0
  %.fca.1.extract30 = extractvalue { ptr, i8 } %i.md, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

.thread710:                                       ; preds = %.preheader, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529, %.preheader.preheader
  %.0876.lcssa = phi i32 [ %.0.ph, %.preheader.preheader ], [ %.3, %.preheader ], [ %.0876914, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529 ] ; 7 uses
  %.sroa.0.0.copyload.i.i.i511.lcssa = phi ptr [ %.sroa.0.0.copyload.i.i.i511911, %.preheader.preheader ], [ %.sroa.0.0.copyload.i.i.i511, %.preheader ], [ %.sroa.0.0.copyload.i.i.i511915, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit529 ] ; 2 uses
  %i.me = load ptr, ptr %1, align 8, !tbaa !10    ; 6 uses
  %.not.i.i533 = icmp eq ptr %i.me, null          ; 2 uses
  br i1 %.not.i.i533, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534, label %bb.de

bb.de:                                            ; preds = %.thread710
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.me) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534: ; preds = %.thread710, %bb.de
  %.sroa.025.0.copyload = load ptr, ptr %5, align 8, !tbaa !14 ; 3 uses
  %.sroa.226.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %.sroa.025.0.copyload, ptr %22, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i8 %.sroa.226.0.copyload, ptr %i.mf, align 8
  %i.mg = and i8 %.sroa.226.0.copyload, -5
  %i.mh = icmp ne i8 %i.mg, 2
  %.not.not12.i535 = icmp eq ptr %.sroa.025.0.copyload, null
  %.not.not.i536 = select i1 %i.mh, i1 true, i1 %.not.not12.i535
  br i1 %.not.not.i536, label %bb.df, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541

bb.df:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534
  %i.mi = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %22, i1 noundef zeroext false) #17 ; 2 uses
  %.not9.not.i538 = icmp eq ptr %i.mi, null
  br i1 %.not9.not.i538, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i539

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i539: ; preds = %bb.df
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !93
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !102 ; 2 uses
  store ptr %i.me, ptr %23, align 8, !tbaa !10
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.me) #17
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = call noundef ptr %i.mp(ptr noundef nonnull align 8 dereferenceable(56) %i.mm, ptr nofree noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %i.mi) #17, !inline_history !104
  %i.mr = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %.not.i.i10.i540 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i10.i540, label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541.thread, label %bb.dg

bb.dg:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i539
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mr) #17
  br label %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541.thread

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i539, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.dh

_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534, %bb.df
  %.2.i537 = phi ptr [ %.sroa.025.0.copyload, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit534 ], [ null, %bb.df ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br i1 %.not.i.i533, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit543, label %bb.dh

bb.dh:                                            ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541.thread, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541
  %.2.i537734 = phi ptr [ %i.mq, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541.thread ], [ %.2.i537, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.me) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit543

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit543: ; preds = %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541, %bb.dh
  %.2.i537735 = phi ptr [ %.2.i537, %_ZN12_GLOBAL__N_117SimpleSValBuilder13getConstValueEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS4_4SValE.exit541 ], [ %.2.i537734, %bb.dh ] ; 2 uses
  %.not406 = icmp eq ptr %.2.i537735, null
  br i1 %.not406, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit543
  %i.ms = call fastcc { ptr, i8 } @_ZN12_GLOBAL__N_117SimpleSValBuilder13MakeSymIntValEPKN5clang4ento7SymExprENS1_18BinaryOperatorKindERKN4llvm6APSIntENS1_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %0, ptr noundef %.sroa.0.0.copyload.i.i.i511.lcssa, i32 noundef %.0876.lcssa, ptr noundef nonnull align 8 dereferenceable(13) %.2.i537735, i64 %6) ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i8 } %i.ms, 0
  %.fca.1.extract21 = extractvalue { ptr, i8 } %i.ms, 1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit459

bb.dj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit543
  %i.mt = load ptr, ptr %1, align 8, !tbaa !10    ; 14 uses
  %.not.i.i544 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i544, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit545, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mt) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit545

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit545: ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  store ptr %.sroa.0.0.copyload.i.i.i511.lcssa, ptr %7, align 8, !noalias !137
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 9, ptr %i.mu, align 8, !noalias !137
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !93, !noalias !137
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 240
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !140, !noalias !137 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 392
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !142, !noalias !137, !nonnull !38, !align !39
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 267
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !143, !range !65, !noalias !137, !noundef !38
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.dl, label %.sink.split

bb.dl:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !137
  %i.ne = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %7, i1 noundef zeroext false) #17, !noalias !137 ; 6 uses
  store ptr %i.ne, ptr %i.a, align 8, !tbaa !167, !noalias !137
  %.not.i546 = icmp eq ptr %i.ne, null
  br i1 %.not.i546, label %.sink.split.sink.split, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nf = add i32 %.0876.lcssa, -9
  %i.ng = icmp ult i32 %i.nf, 7
  br i1 %i.ng, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.nh = load ptr, ptr %i.ne, align 8, !tbaa !8, !noalias !137
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !137
  %i.nk = call i64 %i.nj(ptr noundef nonnull align 8 dereferenceable(28) %i.ne) #17, !noalias !137, !inline_history !168
  %i.nl = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !66, !noalias !137, !nonnull !38, !align !39 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2600
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !169, !noalias !137, !nonnull !38, !align !39
  %i.np = load i64, ptr %i.no, align 8, !noalias !137
  %i.nq = and i64 %i.np, 4096
  %.not.i.i548 = icmp eq i64 %i.nq, 0
  %.v.i.i = select i1 %.not.i.i548, i64 18984, i64 18904
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.v.i.i
  %.sroa.0.0.copyload.i.i.i549 = load i64, ptr %i.nr, align 8, !tbaa !46, !noalias !137
  %.not50.i = icmp eq i64 %6, %.sroa.0.0.copyload.i.i.i549
  br i1 %.not50.i, label %bb.dq, label %.sink.split.sink.split

bb.do:                                            ; preds = %bb.dm
  %i.ns = add i32 %.0876.lcssa, -5
  %i.nt = icmp ult i32 %i.ns, 2
  br i1 %i.nt, label %bb.dp, label %.sink.split.sink.split

bb.dp:                                            ; preds = %bb.do
  %i.nu = load ptr, ptr %i.ne, align 8, !tbaa !8, !noalias !137
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.nw = load ptr, ptr %i.nv, align 8, !noalias !137
  %i.nx = call i64 %i.nw(ptr noundef nonnull align 8 dereferenceable(28) %i.ne) #17, !noalias !137, !inline_history !168
  %.not49.i = icmp eq i64 %i.nx, %6
  br i1 %.not49.i, label %bb.dq, label %.sink.split.sink.split

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %.sroa.042.0.i = phi i64 [ %i.nk, %bb.dn ], [ %6, %bb.dp ] ; 4 uses
  %i.ny = and i64 %.sroa.042.0.i, -16
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = load ptr, ptr %i.nz, align 16, !tbaa !40, !noalias !137
  %i.ob = call noundef zeroext i1 @_ZNK5clang4Type32isSignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.oa) #17, !noalias !137
  br i1 %i.ob, label %bb.dr, label %.sink.split.sink.split

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !137
  %i.oc = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %21, i1 noundef zeroext false) #17, !noalias !137 ; 4 uses
  store ptr %i.oc, ptr %i.b, align 8, !tbaa !167, !noalias !137
  %.not15.i = icmp eq ptr %i.oc, null
  br i1 %.not15.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit551.thread749, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !8, !noalias !137
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !137
  %i.og = call i64 %i.of(ptr noundef nonnull align 8 dereferenceable(28) %i.oc) #17, !noalias !137, !inline_history !168
  %.not51.i = icmp eq i64 %i.og, %.sroa.042.0.i
  br i1 %.not51.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i547, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit551.thread749

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i547: ; preds = %bb.ds
  %i.oh = load ptr, ptr %i.mv, align 8, !tbaa !93, !noalias !137
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 240
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !140, !noalias !137
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17, !noalias !137
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 1, ptr %i.ol, align 8, !tbaa !60, !noalias !137
  store i64 0, ptr %8, align 8, !tbaa !46, !noalias !137
  %i.om = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i8 0, ptr %i.om, align 4, !tbaa !62, !noalias !137
end_hunk_1
