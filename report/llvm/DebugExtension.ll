Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugExtension?download=true
inline.NumInlined: 1681
inline.NumDeleted: 1019
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4mlir9transform16TransformDialect20addOperationsCheckedIJNS0_19EmitParamAsRemarkOpENS0_14EmitRemarkAtOpEEEEvv:bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9transform19EmitParamAsRemarkOpEvE2idE
  br i1 %i.h, label %_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_19EmitParamAsRemarkOpEEEvv.exit, label %bb.d, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4mlir9transform16TransformDialect29reportDuplicateOpRegistrationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nonnull @.str.24, i64 36) #21
  unreachable

_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_19EmitParamAsRemarkOpEEEvv.exit: ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !203
  %i.j = tail call { ptr, i8 } @_ZN4mlir23RegisteredOperationName6lookupENS_6TypeIDEPNS_11MLIRContextE(ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform14EmitRemarkAtOpEvE2idE, ptr noundef %i.i) #19 ; 2 uses
  %i.k = extractvalue { ptr, i8 } %i.j, 1
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_19EmitParamAsRemarkOpEEEvv.exit
  tail call void @_ZN4mlir23RegisteredOperationName6insertINS_9transform14EmitRemarkAtOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_14EmitRemarkAtOpEEEvv.exit

bb.f:                                             ; preds = %_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_19EmitParamAsRemarkOpEEEvv.exit
  %i.m = extractvalue { ptr, i8 } %i.j, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.0.0.copyload.i.i.i1 = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq ptr %.sroa.0.0.copyload.i.i.i1, @_ZN4mlir6detail14TypeIDResolverINS_9transform14EmitRemarkAtOpEvE2idE
  br i1 %i.o, label %_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_14EmitRemarkAtOpEEEvv.exit, label %bb.g, !prof !33

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4mlir9transform16TransformDialect29reportDuplicateOpRegistrationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nonnull @.str.26, i64 30) #21
  unreachable

_ZN4mlir9transform16TransformDialect27addOperationIfNotRegisteredINS0_14EmitRemarkAtOpEEEvv.exit: ; preds = %bb.e, %bb.f
  ret void
}

declare { ptr, i8 } @_ZN4mlir23RegisteredOperationName6lookupENS_6TypeIDEPNS_11MLIRContextE(ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4mlir9transform16TransformDialect29reportDuplicateOpRegistrationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform19EmitParamAsRemarkOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.79", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18, !noalias !206 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !206
  call void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EENS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEES1_v(ptr dead_on_unwind nonnull writable sret(%"class.mlir::detail::InterfaceMap") align 8 %1), !noalias !206
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.24, i64 36, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform19EmitParamAsRemarkOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #19, !noalias !206
  %i.b = load ptr, ptr %1, align 8, !tbaa !15, !noalias !206 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17, !noalias !206 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !15, !noalias !206
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.g) #19, !noalias !206
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80, !noalias !206
  call void @free(ptr noundef %i.k) #19, !noalias !206
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEEE, i64 16), ptr %i.a, align 8, !tbaa !23, !noalias !206
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.m, align 8, !tbaa !34, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !206
  store ptr %i.a, ptr %2, align 8, !tbaa !83
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform19EmitParamAsRemarkOp17getAttributeNamesEvE9attrNames, i64 1) #19
  %i.n = load ptr, ptr %2, align 8, !tbaa !84     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.n) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform19EmitParamAsRemarkOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

declare void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #3

declare void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64, ptr noundef, ptr, ptr nofree noundef align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #19, !inline_history !85
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.k) #19, !inline_history !85
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSC_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENSC_26NavigationTransformOpTraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform19EmitParamAsRemarkOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !48
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::transform::EmitParamAsRemarkOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform19EmitParamAsRemarkOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir9transform19EmitParamAsRemarkOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #19
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir9transform19EmitParamAsRemarkOp15setInherentAttrERNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %i.h, i64 %i.i, ptr %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  tail call void @_ZN4mlir9transform19EmitParamAsRemarkOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform19EmitParamAsRemarkOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) #19
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %5, align 8
  %i.b = inttoptr i64 %i.a to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50
  %i.a = tail call i8 @_ZN4mlir9transform19EmitParamAsRemarkOp21setPropertiesFromAttrERNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #19
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE19getPropertiesAsAttrEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call ptr @_ZN4mlir9transform19EmitParamAsRemarkOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE14copyPropertiesENS_11PropertyRefES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  store i64 %i.a, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE17comparePropertiesENS_11PropertyRefES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8
  %i.a = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform19EmitParamAsRemarkOpEE14hashPropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZN4mlir9transform19EmitParamAsRemarkOp21computePropertiesHashERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EENS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEES1_v(ptr dead_on_unwind noalias writable sret(%"class.mlir::detail::InterfaceMap") align 8 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.c, align 4, !tbaa !16
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 3 uses
  store ptr @_ZN4mlir6detail34BytecodeOpInterfaceInterfaceTraits5ModelINS_9transform19EmitParamAsRemarkOpEE14readPropertiesERNS_21DialectBytecodeReaderERNS_14OperationStateE, ptr %i.d, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN4mlir6detail34BytecodeOpInterfaceInterfaceTraits5ModelINS_9transform19EmitParamAsRemarkOpEE15writePropertiesEPKNS1_7ConceptEPNS_9OperationERNS_21DialectBytecodeWriterE, ptr %i.e, align 8, !tbaa !90
  %i.f = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 25) #19
  store ptr %i.i, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit

_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform19EmitParamAsRemarkOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_16AtLeastNOperandsILj1EE4ImplIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !34
  tail call void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.d) #19
  tail call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_19EmitParamAsRemarkOpEEENS3_16MatchOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EENS3_26NavigationTransformOpTraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_19EmitParamAsRemarkOpEEENS3_16MatchOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EENS3_26NavigationTransformOpTraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 3 uses
  store ptr @_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_19EmitParamAsRemarkOpEE5applyEPKNS2_7ConceptEPNS_9OperationERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform19EmitParamAsRemarkOp21computePropertiesHashERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesE
declare i64 @_ZN4mlir9transform19EmitParamAsRemarkOp21computePropertiesHashERKNS0_6detail37EmitParamAsRemarkOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform14EmitRemarkAtOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.79", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #18, !noalias !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !236
  call void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EENS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEES1_v(ptr dead_on_unwind nonnull writable sret(%"class.mlir::detail::InterfaceMap") align 8 %1), !noalias !236
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.26, i64 30, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform14EmitRemarkAtOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #19, !noalias !236
  %i.b = load ptr, ptr %1, align 8, !tbaa !15, !noalias !236 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17, !noalias !236 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !15, !noalias !236
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.g) #19, !noalias !236
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80, !noalias !236
  call void @free(ptr noundef %i.k) #19, !noalias !236
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEEE, i64 16), ptr %i.a, align 8, !tbaa !23, !noalias !236
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.m, align 8, !tbaa !34, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !236
  store ptr %i.a, ptr %2, align 8, !tbaa !83
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform14EmitRemarkAtOp17getAttributeNamesEvE9attrNames, i64 1) #19
  %i.n = load ptr, ptr %2, align 8, !tbaa !84     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.n) #19, !inline_history !3
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14EmitRemarkAtOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13OperationName4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.g = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir6detail12InterfaceMapD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef %i.g) #19
  br label %_ZN4mlir6detail12InterfaceMapD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN4mlir6detail12InterfaceMapD2Ev.exit:           ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #19, !inline_history !85
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.k) #19, !inline_history !85
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSA_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENSA_26NavigationTransformOpTraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform14EmitRemarkAtOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !48
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::transform::EmitRemarkAtOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform14EmitRemarkAtOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir9transform14EmitRemarkAtOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #19
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir9transform14EmitRemarkAtOp15setInherentAttrERNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %i.h, i64 %i.i, ptr %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  tail call void @_ZN4mlir9transform14EmitRemarkAtOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir9transform14EmitRemarkAtOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) #19
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %5, align 8
  %i.b = inttoptr i64 %i.a to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %3, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50
  %i.a = tail call i8 @_ZN4mlir9transform14EmitRemarkAtOp21setPropertiesFromAttrERNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #19
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE19getPropertiesAsAttrEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call ptr @_ZN4mlir9transform14EmitRemarkAtOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE14copyPropertiesENS_11PropertyRefES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  store i64 %i.a, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE17comparePropertiesENS_11PropertyRefES5_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8
  %i.a = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14EmitRemarkAtOpEE14hashPropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZN4mlir9transform14EmitRemarkAtOp21computePropertiesHashERKNS0_6detail32EmitRemarkAtOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EENS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEES1_v(ptr dead_on_unwind noalias writable sret(%"class.mlir::detail::InterfaceMap") align 8 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 3, ptr %i.c, align 4, !tbaa !16
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 3 uses
  store ptr @_ZN4mlir6detail34BytecodeOpInterfaceInterfaceTraits5ModelINS_9transform14EmitRemarkAtOpEE14readPropertiesERNS_21DialectBytecodeReaderERNS_14OperationStateE, ptr %i.d, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_ZN4mlir6detail34BytecodeOpInterfaceInterfaceTraits5ModelINS_9transform14EmitRemarkAtOpEE15writePropertiesEPKNS1_7ConceptEPNS_9OperationERNS_21DialectBytecodeWriterE, ptr %i.e, align 8, !tbaa !90
  %i.f = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.6, i64 49), i64 25) #19
  store ptr %i.i, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit

_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_7OpTrait11ZeroRegionsINS_9transform14EmitRemarkAtOpEEENS3_11ZeroResultsIS6_EEJNS3_14ZeroSuccessorsIS6_EENS3_10OneOperandIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_26NavigationTransformOpTraitIS6_EEEEEvv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !34
  tail call void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.d) #19
  tail call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_14EmitRemarkAtOpEEENS3_16MatchOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EENS3_26NavigationTransformOpTraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_14EmitRemarkAtOpEEENS3_16MatchOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EENS3_26NavigationTransformOpTraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 3 uses
  store ptr @_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_14EmitRemarkAtOpEE5applyEPKNS2_7ConceptEPNS_9OperationERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
