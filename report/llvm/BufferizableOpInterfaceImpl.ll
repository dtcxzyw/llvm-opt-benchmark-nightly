Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BufferizableOpInterfaceImpl?download=true
inline.NumInlined: 2072
inline.NumDeleted: 1269
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE14verifyAnalysisEPKNS2_7ConceptEPNS_9OperationERKNS0_13AnalysisStateE:bb.a
  ret i8 1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE13getBufferTypeEPKNS2_7ConceptEPNS_9OperationENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateERN4llvm11SmallVectorISD_Lj6EEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr") align 8 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #2 align 2 {
bb.a:
  tail call void @_ZN4mlir13bufferization6detail20defaultGetBufferTypeENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateERN4llvm11SmallVectorIS2_Lj6EEE(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr") align 8 %0, ptr %3, ptr noundef nonnull align 8 dereferenceable(352) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE18isRepetitiveRegionEPKNS2_7ConceptEPNS_9OperationEj(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #2 align 2 {
bb.a:
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceENS4_8GatherOpEE18isRepetitiveRegionEPNS_9OperationEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_13bufferization23BufferizableOpInterfaceENS1_6detail38BufferizableOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceENS4_8GatherOpEE18isRepetitiveRegionEPNS_9OperationEj.exit

_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceENS4_8GatherOpEE18isRepetitiveRegionEPNS_9OperationEj.exit: ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_ZN4mlir13bufferization6detail25defaultIsRepetitiveRegionENS0_23BufferizableOpInterfaceEj(ptr %1, ptr %i.b, i32 noundef %2) #24
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE16isParallelRegionEPKNS2_7ConceptEPNS_9OperationEj(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE18hasTensorSemanticsEPKNS2_7ConceptEPNS_9OperationE(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir13bufferization6detail25defaultHasTensorSemanticsEPNS_9OperationE(ptr noundef %1) #24
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_117GatherOpInterfaceEE31supportsUnstructuredControlFlowEv() #7 align 2 {
bb.a:
  ret i1 false
}

declare i64 @_ZN4mlir6vector8GatherOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector8GatherOp6createERNS_9OpBuilderENS_8LocationENS_10VectorTypeENS_5ValueENS_10ValueRangeES6_S6_S6_N4llvm10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, i64, i64, i64, i64, i64, i16) local_unnamed_addr #3

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE22bufferizesToAllocationEPKNS2_7ConceptEPNS_9OperationENS_5ValueE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE22bufferizesToMemoryReadEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #12 align 2 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE23bufferizesToMemoryWriteEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #12 align 2 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE29bufferizesToElementwiseAccessEPKNS2_7ConceptEPNS_9OperationERKNS0_13AnalysisStateEN4llvm8ArrayRefIPNS_9OpOperandEEE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE29resultBufferizesToMemoryWriteEPKNS2_7ConceptEPNS_9OperationENS_8OpResultERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir13bufferization6detail36defaultResultBufferizesToMemoryWriteENS_8OpResultERKNS0_13AnalysisStateE(ptr %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #24
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE20mustBufferizeInPlaceEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE17getAliasingValuesEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr dead_on_unwind noalias nofree readnone sret(%"class.mlir::bufferization::AliasList") align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4) #12 align 2 {
bb.a:
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE21getAliasingOpOperandsEPKNS2_7ConceptEPNS_9OperationENS_5ValueERKNS0_13AnalysisStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::bufferization::AliasList.22") align 8 %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr %3, ptr nofree nonnull readnone align 8 captures(none) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8, !noalias !200
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !90, !noalias !200 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds i8, ptr %2, i64 -16
  %i.e = zext i32 %i.b to i64
  %.sroa.0.0.i.i.i = select i1 %i.c, ptr null, ptr %i.d ; 2 uses
  %i.f = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops16_Iter_equals_valIKNS3_5ValueEEEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %i.e, ptr nonnull align 8 dereferenceable(8) %5), !noalias !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.h = load i32, ptr %i.g, align 4, !noalias !200 ; 3 uses
  %i.i = and i32 %i.h, 8388607
  %i.j = icmp ne i32 %i.i, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.k, 1
  %i.l = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.n = lshr i32 %i.h, 21
  %i.o = and i32 %i.n, 2040
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !101, !noalias !200
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !102, !noalias !200
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.x) #24, !noalias !200
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72, !noalias !200
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !12, !alias.scope !200
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.ad, align 4, !tbaa !13, !alias.scope !200
  %i.ae = extractvalue { ptr, i64 } %i.f, 1
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.af
  store ptr %i.ag, ptr %i.ab, align 8, !alias.scope !200
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4294967297, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !200
  store i32 1, ptr %i.ac, align 8, !tbaa !14, !alias.scope !200
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal i8 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE16resolveConflictsEPKNS2_7ConceptEPNS_9OperationERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.mlir::bufferization::BufferizableOpInterface", align 8 ; 5 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_13bufferization23BufferizableOpInterfaceENS1_6detail38BufferizableOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  store ptr %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = call i8 @_ZN4mlir13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit

bb.c:                                             ; preds = %_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607
  %i.i = icmp ne i32 %i.h, 0
  call void @llvm.assume(i1 %i.i)
  %i.j = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.k
  %i.m = lshr i32 %i.g, 21
  %i.n = and i32 %i.m, 2040
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !101
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102, !noalias !204 ; 3 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not1.i.i.i.i.i.i, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.c
  %.not.i.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AllocTensorOpEvE2idE
  br i1 %.not.i.i, label %.lr.ph.i.i.i.i.us.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.us.i.i:                            ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.us.i.i
  %.sroa.010.0.us.i.i = phi ptr [ %10, %.lr.ph.i.i.i.i.us.i.i ], [ %i.y, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %8 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.us.i.i) #24, !noalias !204 ; 0 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.010.0.us.i.i, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !102, !noalias !204 ; 2 uses
  %.not.i.i.i.i.us.i.i = icmp eq ptr %10, %i.w
  br i1 %.not.i.i.i.i.us.i.i, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit, label %.lr.ph.i.i.i.i.us.i.i, !llvm.loop !203

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.d
  %.sroa.010.0.i.i = phi ptr [ %i.af, %bb.d ], [ %i.y, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i.i) #24, !noalias !204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !91, !noalias !204
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43, !noalias !204
  %i.ad = icmp eq ptr %i.ac, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization13AllocTensorOpEvE2idE
  br i1 %i.ad, label %_ZN4mlir5Block6getOpsINS_13bufferization13AllocTensorOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102, !noalias !204 ; 2 uses
  %.not.i.i.i.i.i7.i = icmp eq ptr %i.af, %i.w
  br i1 %.not.i.i.i.i.i7.i, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !203

_ZN4mlir5Block6getOpsINS_13bufferization13AllocTensorOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ag = icmp eq ptr %.sroa.010.0.i.i, %i.w
  br i1 %i.ag, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir5Block6getOpsINS_13bufferization13AllocTensorOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !41
  store ptr @.str.13, ptr %7, align 8, !tbaa !42
  store i8 3, ptr %i.ah, align 8, !tbaa !40
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %7) #24
  %i.aj = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  %i.ak = load ptr, ptr %6, align 8, !tbaa !110
  %.not.i.i.a = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.a, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !111, !range !112, !noundef !113
  %i.an = trunc nuw i8 %i.am to i1
  store i8 0, ptr %i.al, align 8, !tbaa !111
  br i1 %i.an, label %bb.h, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ao) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit

_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization13AnalysisStateERKNS7_18BufferizationStateE.exit: ; preds = %bb.d, %.lr.ph.i.i.i.i.us.i.i, %_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, %bb.c, %_ZN4mlir5Block6getOpsINS_13bufferization13AllocTensorOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i
  %.sroa.06.1.i = phi i8 [ 0, %_ZN4llvm4castIN4mlir13bufferization23BufferizableOpInterfaceENS1_9OperationEEEDcPT0_.exit.i ], [ %i.aj, %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i ], [ 1, %_ZN4mlir5Block6getOpsINS_13bufferization13AllocTensorOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit.i ], [ 1, %.lr.ph.i.i.i.i.us.i.i ], [ 1, %bb.c ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i8 %.sroa.06.1.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef i8 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_115MaskOpInterfaceEE9bufferizeEPKNS2_7ConceptEPNS_9OperationERNS_12RewriterBaseERKNS0_20BufferizationOptionsERNS0_18BufferizationStateE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(352) %3, ptr nofree nonnull readnone align 8 captures(none) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %7 = alloca %"class.mlir::vector::MaskOp", align 8 ; 12 uses
  %8 = alloca %"class.mlir::vector::YieldOp", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.118", align 8 ; 11 uses
  %10 = alloca %"class.llvm::SmallVector.118", align 8 ; 11 uses
  %11 = alloca %"struct.llvm::detail::enumerator_result", align 8 ; 5 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %13 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %14 = alloca %"class.llvm::function_ref.417", align 8 ; 5 uses
  %15 = alloca %class.anon.418, align 1           ; 3 uses
  %16 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %1, ptr %7, align 8
  %i.a = call noundef ptr @_ZN4mlir6vector6MaskOp13getMaskableOpEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #24 ; 3 uses
  %i.b = call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef %i.a) #24
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK4mlir6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization20BufferizationOptionsERNS7_18BufferizationStateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.d = load ptr, ptr %7, align 8, !tbaa !69     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = and i32 %i.f, 8388607
  %i.h = icmp ne i32 %i.g, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.j
  %i.l = lshr i32 %i.f, 21
  %i.m = and i32 %i.l, 2040
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.v) #24
  store ptr %i.w, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.x = load ptr, ptr %7, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !90   ; 4 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ab, ptr %9, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.ad, align 4, !tbaa !13
  %i.ae = icmp ugt i32 %i.z, 6
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  store i32 0, ptr %i.ac, align 8, !tbaa !14
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #24
  %i.af = load ptr, ptr %9, align 8, !tbaa !12
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.sink.split.i

_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i: ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.sink.split.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.sink.split.i: ; preds = %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.sink.i = phi ptr [ %i.af, %.lr.ph.preheader.i.i.i.i.i.i.i ], [ %i.ab, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i ]
  %i.ag = shl nuw nsw i64 %i.aa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink.i, i8 0, i64 %i.ag, i1 false), !tbaa !63
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.sink.split.i, %_ZSt6fill_nIPN4mlir5ValueEmS1_ET_S3_T0_RKT1_.exit.i.i.i
  store i32 %i.z, ptr %i.ac, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 6, ptr %i.aj, align 4, !tbaa !13
  %i.ak = call i64 @_ZN4mlir6vector7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #24 ; 3 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !69    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 8388608
  %.not.i.i.i.i.i29.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i29.i, label %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i, label %bb.c, !prof !73

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  br label %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i

_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i:    ; preds = %bb.c, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.c ], [ null, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EmRKS2_.exit.i ]
  %i.ar = and i64 %i.ak, 4294967295               ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.ak, 32
  %i.as = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.ak
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.ar
  %i.av = sub nsw i64 %i.at, %i.ar
  %.not2226.i = icmp eq i64 %i.at, %i.ar
  br i1 %.not2226.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 -16
  br label %bb.g

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !69
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i
  %i.az = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.al, %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i ] ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.az) #24, !inline_history !205
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4mlir6vector7YieldOp18getOperandsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  %i.bd = load ptr, ptr %10, align 8, !tbaa !12
  %i.be = load i32, ptr %i.ai, align 8, !tbaa !14
  %i.bf = zext i32 %i.be to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.bd, i64 %i.bf) #24
  %i.bg = load i64, ptr %6, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  call void @_ZN4mlir19MutableOperandRange6assignENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(56) %5, i64 %i.bg, i64 %i.bi) #24
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.bk) #24
  br label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i

_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i: ; preds = %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.az) #24, !inline_history !205
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.bq = load ptr, ptr %10, align 8, !tbaa !12
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !14
  %i.bs = zext i32 %i.br to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.bq, i64 %i.bs) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %.sroa.010.0.copyload.i = load i64, ptr %12, align 8
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.211.0.copyload.i = load i64, ptr %.sroa.211.0..sroa_idx.i, align 8
  call void @_ZN4mlir9TypeRangeC1ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 %.sroa.010.0.copyload.i, i64 %.sroa.211.0.copyload.i) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i31.i = load ptr, ptr %i.bu, align 8
  %.sroa.08.0.copyload.i = load i64, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bv = call i64 @_ZN4mlir6vector6MaskOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #24
  %i.bw = load ptr, ptr %7, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !72
  %i.bz = and i64 %i.bv, 4294967295
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !63
  %i.cc = call i64 @_ZN4mlir6vector6MaskOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1) #24 ; 3 uses
  %i.cd = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, 8388608
  %.not.i.i.i.i.i33.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i.i33.i, label %_ZN4mlir6vector6MaskOp14getODSOperandsEj.exit.i.i, label %bb.e, !prof !73

bb.e:                                             ; preds = %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !72
  br label %_ZN4mlir6vector6MaskOp14getODSOperandsEj.exit.i.i

_ZN4mlir6vector6MaskOp14getODSOperandsEj.exit.i.i: ; preds = %bb.e, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i
  %.sroa.0.0.i.i.i.i.i34.i = phi ptr [ %i.ci, %bb.e ], [ null, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNKS_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeEPNS_9OperationERS0_RKNS_13bufferization20BufferizationOptionsERNS8_18BufferizationStateEEUlvE_EEvS6_OT_.exit.i ]
  %i.cj = and i64 %i.cc, 4294967295               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir6Region8takeBodyERS0_:bb.a
  %i.n = icmp eq ptr %i.l, %1
  br i1 %i.n, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !241    ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !241  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !102
  store ptr %i.p, ptr %1, align 8, !tbaa !241
  %i.r = load ptr, ptr %0, align 8, !tbaa !241    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !102
  store ptr %i.r, ptr %i.l, align 8, !tbaa !241
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.l, ptr %i.t, align 8, !tbaa !102
  store ptr %i.o, ptr %0, align 8, !tbaa !241
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir5BlockEJEEENS_12ilist_traitsIS3_EEE5clearEv.exit, %bb.b, %bb.c, %bb.d
  ret void
}

declare i64 @_ZN4mlir6vector7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare void @_ZN4mlir6vector7YieldOp18getOperandsMutableEv(ptr dead_on_unwind writable sret(%"class.mlir::MutableOperandRange") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4mlir19MutableOperandRange6assignENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(56), i64, i64) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare i64 @_ZN4mlir6vector6MaskOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvm12function_refIFvRN4mlir9OpBuilderEPNS1_9OperationEEE11callback_fnIZNKS1_6vector12_GLOBAL__N_115MaskOpInterface9bufferizeES5_RNS1_12RewriterBaseERKNS1_13bufferization20BufferizationOptionsERNSE_18BufferizationStateEEUlS3_S5_E_EEvlS3_S5_(i64 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) #15 align 2 {
bb.a:
  ret void
}

declare void @_ZN4mlir6Region17dropAllReferencesEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #16

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE18removeNodeFromListEPS2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE22bufferizesToAllocationEPKNS2_7ConceptEPNS_9OperationENS_5ValueE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE22bufferizesToMemoryReadEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE23bufferizesToMemoryWriteEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE29bufferizesToElementwiseAccessEPKNS2_7ConceptEPNS_9OperationERKNS0_13AnalysisStateEN4llvm8ArrayRefIPNS_9OpOperandEEE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4) #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE29resultBufferizesToMemoryWriteEPKNS2_7ConceptEPNS_9OperationENS_8OpResultERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir13bufferization6detail36defaultResultBufferizesToMemoryWriteENS_8OpResultERKNS0_13AnalysisStateE(ptr %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #24
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE20mustBufferizeInPlaceEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE17getAliasingValuesEPKNS2_7ConceptEPNS_9OperationERNS_9OpOperandERKNS0_13AnalysisStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::bufferization::AliasList") align 8 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree nonnull readnone align 8 captures(none) %4) #2 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getParentOpEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %.val) #24, !noalias !244
  br label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = tail call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #24, !noalias !244 ; 3 uses
  %i.e = icmp ult i32 %i.d, 6
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.f = add nuw nsw i32 %i.d, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.h
  br label %_ZNK4mlir6vector12_GLOBAL__N_116YieldOpInterface17getAliasingValuesEPNS_9OperationERNS_9OpOperandERKNS_13bufferization13AnalysisStateE.exit

bb.d:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -96
  %i.k = add i32 %i.d, -5
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.m
  br label %_ZNK4mlir6vector12_GLOBAL__N_116YieldOpInterface17getAliasingValuesEPNS_9OperationERNS_9OpOperandERKNS_13bufferization13AnalysisStateE.exit

_ZNK4mlir6vector12_GLOBAL__N_116YieldOpInterface17getAliasingValuesEPNS_9OperationERNS_9OpOperandERKNS_13bufferization13AnalysisStateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !12, !alias.scope !244
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.q, align 4, !tbaa !13, !alias.scope !244
  store ptr %.0.i.i.i, ptr %i.o, align 8, !alias.scope !244
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4294967297, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !244
  store i32 1, ptr %i.p, align 8, !tbaa !14, !alias.scope !244
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE21getAliasingOpOperandsEPKNS2_7ConceptEPNS_9OperationENS_5ValueERKNS0_13AnalysisStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::bufferization::AliasList.22") align 8 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(72) %4) #2 align 2 {
bb.a:
  tail call void @_ZN4mlir13bufferization6detail28defaultGetAliasingOpOperandsENS_5ValueERKNS0_13AnalysisStateE(ptr dead_on_unwind writable sret(%"class.mlir::bufferization::AliasList.22") align 8 %0, ptr %3, ptr noundef nonnull align 8 dereferenceable(72) %4) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal i8 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE16resolveConflictsEPKNS2_7ConceptEPNS_9OperationERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.mlir::bufferization::BufferizableOpInterface", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceENS4_7YieldOpEE16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_13bufferization23BufferizableOpInterfaceENS1_6detail38BufferizableOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceENS4_7YieldOpEE16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE.exit

_ZNK4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13ExternalModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceENS4_7YieldOpEE16resolveConflictsEPNS_9OperationERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE.exit: ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  store ptr %1, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = call i8 @_ZN4mlir13bufferization23BufferizableOpInterface31resolveTensorOpOperandConflictsERNS_12RewriterBaseERKNS0_13AnalysisStateERKNS0_18BufferizationStateE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i8 %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal i8 @_ZN4mlir13bufferization6detail38BufferizableOpInterfaceInterfaceTraits13FallbackModelINS_6vector12_GLOBAL__N_116YieldOpInterfaceEE9bufferizeEPKNS2_7ConceptEPNS_9OperationERNS_12RewriterBaseERKNS0_20BufferizationOptionsERNS0_18BufferizationStateE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #2 align 2 {
bb.a:
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %7 = alloca %"class.mlir::vector::YieldOp", align 8 ; 5 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::SmallVector.118", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96, !nonnull !113, !noundef !113
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = icmp ne ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_6vector6MaskOpEvE2idE
  %11 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6vector6MaskOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %11, %i.g
  %.not23.i = icmp eq ptr %i.c, null
  %.not.i = or i1 %.not23.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !41
  store ptr @.str.15, ptr %9, align 8, !tbaa !42
  store i8 3, ptr %i.h, align 8, !tbaa !40
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #24
  %i.j = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  %i.k = load ptr, ptr %8, align 8, !tbaa !110
  %.not.i19.i = icmp eq ptr %i.k, null
  br i1 %.not.i19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !111, !range !112, !noundef !113
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !111
  br i1 %i.n, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.o) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNK4mlir6vector12_GLOBAL__N_116YieldOpInterface9bufferizeEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization20BufferizationOptionsERNS7_18BufferizationStateE.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = and i32 %i.q, 8388607
  %i.s = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = lshr i32 %i.q, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.u
  %i.w = lshr i32 %i.q, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  %i.ai = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ah) #24
  %i.aj = tail call { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull %i.ai) #24
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %.not24.i = icmp eq ptr %i.ak, null
  br i1 %.not24.i, label %_ZNK4mlir6vector12_GLOBAL__N_116YieldOpInterface9bufferizeEPNS_9OperationERNS_12RewriterBaseERKNS_13bufferization20BufferizationOptionsERNS7_18BufferizationStateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.al, ptr %10, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 6, ptr %i.an, align 4, !tbaa !13
  %i.ao = call i64 @_ZN4mlir6vector7YieldOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0) #24 ; 3 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i, label %bb.h, !prof !73

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
  br label %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i

_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i:    ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.au, %bb.h ], [ null, %bb.g ]
  %i.av = and i64 %i.ao, 4294967295               ; 3 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %i.ao, 32
  %i.aw = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.ao
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.av
  %i.az = sub nsw i64 %i.ax, %i.av
  %.not2526.i = icmp eq i64 %i.ax, %i.av
  br i1 %.not2526.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i
  %.sroa.45.027.i = phi i64 [ %i.cb, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i ], [ 0, %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.sroa.45.027.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bc, align 8
  %i.bd = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.bh = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %i.bi = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  %spec.select.i.i.i.i.i = or i1 %i.bh, %i.bi
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i
  %i.bj = call { ptr, i8 } @_ZN4mlir13bufferization9getBufferERNS_12RewriterBaseENS_5ValueERKNS0_20BufferizationOptionsERKNS0_18BufferizationStateE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull %.sroa.0.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(352) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #24 ; 2 uses
  %i.bk = extractvalue { ptr, i8 } %i.bj, 0       ; 2 uses
  %i.bl = extractvalue { ptr, i8 } %i.bj, 1
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread21.i

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.bo = load i32, ptr %i.an, align 4, !tbaa !13
  %.not.i22.i = icmp ult i32 %i.bn, %i.bo
  br i1 %.not.i22.i, label %bb.l, label %bb.k, !prof !35

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bk)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i

bb.l:                                             ; preds = %bb.j
  %i.bp = zext i32 %i.bn to i64
  %i.bq = load ptr, ptr %10, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  store ptr %i.bk, ptr %i.br, align 1
  %i.bs = load i32, ptr %i.am, align 8, !tbaa !14
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.am, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bu = load i32, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !13
  %.not.i23.i = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i23.i, label %bb.o, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr nonnull %.sroa.0.0.copyload.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i

bb.o:                                             ; preds = %bb.m
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %10, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.am, align 8, !tbaa !14
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.am, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %i.cb = add nuw nsw i64 %.sroa.45.027.i, 1      ; 2 uses
  %.not25.i = icmp eq i64 %i.cb, %i.az
  br i1 %.not25.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.i, label %.lr.ph.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread.i, %_ZN4mlir6vector7YieldOp11getOperandsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %10, align 8, !tbaa !12
  %i.cf = load i32, ptr %i.am, align 8, !tbaa !14
  %i.cg = zext i32 %i.cf to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.ce, i64 %i.cg) #24
  %i.ch = load i64, ptr %5, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = call ptr @_ZN4mlir6vector7YieldOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ch, i64 %i.cj) #24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !90 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -16
  %i.cp = zext i32 %i.cm to i64
  %.sroa.0.0.i.i.i = select i1 %i.cn, ptr null, ptr %i.co
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.sroa.0.0.i.i.i, i64 %i.cp) #24
  %i.cq = load i64, ptr %6, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
  call void @_ZN4mlir13bufferization29replaceOpWithBufferizedValuesERNS_12RewriterBaseEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %i.cq, i64 %i.cs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread21.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.thread21.i: ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.i
  %.sroa.018.5.i = phi i8 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit24.i ], [ 0, %bb.i ]
  %i.ct = load ptr, ptr %10, align 8, !tbaa !12   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.al
  br i1 %i.cu, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i, label %bb.p
end_hunk_1
