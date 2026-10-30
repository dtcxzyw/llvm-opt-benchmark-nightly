Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/NonStrictTypeChecker?download=true
inline.NumInlined: 2967
inline.NumDeleted: 1562
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau14checkNonStrictENS_7NotNullINS_12BuiltinTypesEEENS0_INS_19TypeFunctionRuntimeEEENS0_INS_21InternalErrorReporterEEENS0_INS_18UnifierSharedStateEEENS0_IKNS_13DataFlowGraphEEENS0_INS_15TypeCheckLimitsEEERKNS_12SourceModuleEPNS_6ModuleE:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56
  invoke void %i.dg(ptr noundef nonnull %i.dh)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i40
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %.lr.ph.i.i.i.i.i40
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !151 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !153
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #25
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.dq, %i.cw
  br i1 %.not.i.i.i.i.i41, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i40, !llvm.loop !2

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i.i.i
  store ptr %i.db, ptr %i.ag, align 8, !tbaa !157
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i.i.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN4Luau9TypeErrorESt6vectorIS3_SaIS3_EEEEZNS2_14checkNonStrictENS2_7NotNullINS2_12BuiltinTypesEEENS9_INS2_19TypeFunctionRuntimeEEENS9_INS2_21InternalErrorReporterEEENS9_INS2_18UnifierSharedStateEEENS9_IKNS2_13DataFlowGraphEEENS9_INS2_15TypeCheckLimitsEEERKNS2_12SourceModuleEPNS2_6ModuleEE3$_0ET_ST_ST_T0_.exit"
  invoke void @_ZN4Luau6freezeERNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(184) %i.ad)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i42, label %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #23
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i: ; preds = %bb.ad, %bb.ac
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !159 ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i43, label %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 712
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !160
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #25
  br label %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit.i: ; preds = %bb.ae, %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit.i
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !161 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i1.i, label %_ZN4Luau20NonStrictTypeCheckerD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #23
  br label %_ZN4Luau20NonStrictTypeCheckerD2Ev.exit

_ZN4Luau20NonStrictTypeCheckerD2Ev.exit:          ; preds = %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit.i, %bb.af
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 600 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i44, label %_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_ENS_15SubtypingResultENS_12TypePairHashESt8equal_toIS5_EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4Luau20NonStrictTypeCheckerD2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 608
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i.i.i.i45, label %_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeES5_ES2_IS6_NS_15SubtypingResultEES2_IKS6_S7_ENS0_16ItemInterfaceMapIS6_S7_EENS_12TypePairHashESt8equal_toIS6_EE7destroyEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i46
  %.04.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i46 ], [ 0, %bb.ag ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [184 x i8], ptr %i.eb, i64 %.04.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  call void @_ZN4Luau15SubtypingResultD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.ef) #23
  %i.eg = add nuw i64 %.04.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.eg, %i.ed
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapISt4pairIPKNS_4TypeES5_ENS_15SubtypingResultEE7destroyEPS2_IS6_S7_Em.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i46, !llvm.loop !3

_ZN4Luau6detail16ItemInterfaceMapISt4pairIPKNS_4TypeES5_ENS_15SubtypingResultEE7destroyEPS2_IS6_S7_Em.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i46
  %.pre.i.i.i.i47 = load ptr, ptr %i.ea, align 8, !tbaa !162
  br label %_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeES5_ES2_IS6_NS_15SubtypingResultEES2_IKS6_S7_ENS0_16ItemInterfaceMapIS6_S7_EENS_12TypePairHashESt8equal_toIS6_EE7destroyEv.exit.i.i.i

_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeES5_ES2_IS6_NS_15SubtypingResultEES2_IKS6_S7_ENS0_16ItemInterfaceMapIS6_S7_EENS_12TypePairHashESt8equal_toIS6_EE7destroyEv.exit.i.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapISt4pairIPKNS_4TypeES5_ENS_15SubtypingResultEE7destroyEPS2_IS6_S7_Em.exit.loopexit.i.i.i.i, %bb.ag
  %i.eh = phi ptr [ %.pre.i.i.i.i47, %_ZN4Luau6detail16ItemInterfaceMapISt4pairIPKNS_4TypeES5_ENS_15SubtypingResultEE7destroyEPS2_IS6_S7_Em.exit.loopexit.i.i.i.i ], [ %i.eb, %bb.ag ]
  call void @_ZdlPv(ptr noundef %i.eh) #23
  br label %_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_ENS_15SubtypingResultENS_12TypePairHashESt8equal_toIS5_EED2Ev.exit.i

_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_ENS_15SubtypingResultENS_12TypePairHashESt8equal_toIS5_EED2Ev.exit.i: ; preds = %_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeES5_ES2_IS6_NS_15SubtypingResultEES2_IKS6_S7_ENS0_16ItemInterfaceMapIS6_S7_EENS_12TypePairHashESt8equal_toIS6_EE7destroyEv.exit.i.i.i, %_ZN4Luau20NonStrictTypeCheckerD2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 544
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i48, label %_ZN4Luau3SetISt4pairIPKNS_11TypePackVarES4_ENS_12TypePairHashEED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_ENS_15SubtypingResultENS_12TypePairHashESt8equal_toIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #23
  br label %_ZN4Luau3SetISt4pairIPKNS_11TypePackVarES4_ENS_12TypePairHashEED2Ev.exit.i

_ZN4Luau3SetISt4pairIPKNS_11TypePackVarES4_ENS_12TypePairHashEED2Ev.exit.i: ; preds = %bb.ah, %_ZN4Luau12DenseHashMapISt4pairIPKNS_4TypeES4_ENS_15SubtypingResultENS_12TypePairHashESt8equal_toIS5_EED2Ev.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 488
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4Luau3SetISt4pairIPKNS_11TypePackVarES4_ENS_12TypePairHashEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.el) #23
  br label %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit.i

_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit.i: ; preds = %bb.ai, %_ZN4Luau3SetISt4pairIPKNS_11TypePackVarES4_ENS_12TypePairHashEED2Ev.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 472
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !166 ; 8 uses
  %.not.i.i.i2.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i2.i, label %_ZN4Luau9SubtypingD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.eo, align 8, !tbaa !168
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !169
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !171
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #23, !inline_history !480
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !171
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #23, !inline_history !480
  br label %_ZN4Luau9SubtypingD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i3.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i3.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i = phi i32 [ %i.er, %bb.am ], [ %i.fb, %bb.an ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.ao, label %_ZN4Luau9SubtypingD2Ev.exit, !prof !35

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #23
  br label %_ZN4Luau9SubtypingD2Ev.exit

_ZN4Luau9SubtypingD2Ev.exit:                      ; preds = %_ZN4Luau3SetISt4pairIPKNS_4TypeES4_ENS_12TypePairHashEED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ao
  call void @_ZN4Luau10NormalizerD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i.i, %_ZN4Luau20NonStrictTypeCheckerC2ENS_7NotNullINS_9TypeArenaEEENS1_INS_12BuiltinTypesEEENS1_INS_19TypeFunctionRuntimeEEENS1_INS_21InternalErrorReporterEEENS1_INS_18UnifierSharedStateEEENS1_IKNS_13DataFlowGraphEEENS1_INS_15TypeCheckLimitsEEEPNS_6ModuleE.exit, %_ZN4Luau16NonStrictContextD2Ev.exit, %bb.e, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, %bb.o, %bb.m, %bb.k
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau20NonStrictTypeCheckerD2Ev(ptr noundef nonnull align 8 dead_on_return(772) dereferenceable(772) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatBlockE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.709", align 8   ; 10 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 8 uses
  %5 = alloca %"class.std::optional.371", align 8 ; 7 uses
  %6 = alloca %"class.std::optional.381", align 8 ; 8 uses
  %7 = alloca %"struct.Luau::NonStrictContext", align 8 ; 7 uses
  %8 = alloca %"struct.Luau::NonStrictContext", align 8 ; 15 uses
  %9 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i8 0, ptr %i.a, align 8, !tbaa !173
  %i.b = load i8, ptr @_ZN5FFlag45LuauAddRecursionCounterToNonStrictTypeCheckerE, align 8, !tbaa !176, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, label %bb.e

_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  invoke void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !173
  %i.e = load i32, ptr @_ZN4FInt38LuauNonStrictTypeCheckerRecursionLimitE, align 8, !tbaa !181 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 8, !tbaa !133
  %.not = icmp slt i32 %i.g, %i.e
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %0, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br label %bb.ay

bb.d:                                             ; preds = %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4Luau20NonStrictTypeChecker9pushStackEPNS_7AstNodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.381") align 8 %6, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 1, ptr %i.p, align 8, !tbaa !147
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !185, !noalias !521 ; 2 uses
  %.not7388 = icmp eq i64 %i.v, 0
  br i1 %.not7388, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.v, 3
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !186, !noalias !521
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = icmp eq ptr %8, %0
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.j

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !188, !range !177, !noundef !178
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %bb.ax

bb.g:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %6, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !194
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !194
  br label %bb.ax

bb.i:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56

bb.j:                                             ; preds = %.lr.ph90, %.loopexit
  %.sroa.068.089 = phi ptr [ %i.x, %.lr.ph90 ], [ %i.be, %.loopexit ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.068.089, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !196 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !200
  %i.bi = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !24
  %i.bj = icmp ne i32 %i.bh, %i.bi
  %.not2874 = icmp eq ptr %i.bf, null
  %.not28 = or i1 %.not2874, %i.bj
  br i1 %.not28, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !203, !noalias !522 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !204, !noalias !522 ; 2 uses
  %.idx91 = shl nuw nsw i64 %i.bn, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx91
  %.not.i83 = icmp eq i64 %i.bn, 0
  br i1 %.not.i83, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_ZN4Luau16NonStrictContextD2Ev.exit63
  %.0.i84 = phi ptr [ %i.bz, %_ZN4Luau16NonStrictContextD2Ev.exit63 ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bp = load ptr, ptr %.0.i84, align 8, !tbaa !206, !noalias !522
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.bp, i32 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !523

.noexc:                                           ; preds = %.lr.ph
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !144, !noalias !522 ; 2 uses
  %.not5.i.i.i.i.i58 = icmp eq ptr %i.bq, null
  br i1 %.not5.i.i.i.i.i58, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i62, label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.noexc, %.lr.ph.i.i.i.i.i59
  %.06.i.i.i.i.i60 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i59 ], [ %i.bq, %.noexc ] ; 2 uses
  %i.br = load ptr, ptr %.06.i.i.i.i.i60, align 8, !tbaa !145, !noalias !522 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i60, i64 noundef 24) #25, !noalias !522
  %.not.i.i.i.i.i61 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i61, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i62, label %.lr.ph.i.i.i.i.i59, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i62: ; preds = %.lr.ph.i.i.i.i.i59, %.noexc
  %i.bs = load ptr, ptr %4, align 8, !tbaa !146, !noalias !522
  %i.bt = load i64, ptr %i.z, align 8, !tbaa !147, !noalias !522
  %i.bu = shl i64 %i.bt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bu, i1 false), !noalias !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !noalias !522
  %i.bv = load ptr, ptr %4, align 8, !tbaa !146, !noalias !522 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.aa
  br i1 %i.bw, label %_ZN4Luau16NonStrictContextD2Ev.exit63, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i62
  %i.bx = load i64, ptr %i.z, align 8, !tbaa !147, !noalias !522
  %i.by = shl i64 %i.bx, 3
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25, !noalias !522
  br label %_ZN4Luau16NonStrictContextD2Ev.exit63

_ZN4Luau16NonStrictContextD2Ev.exit63:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i62, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i84, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, %i.bo
  br i1 %.not.i, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %.lr.ph

_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit63, %bb.k
  store i64 0, ptr %i.av, align 8
  store ptr %i.ab, ptr %7, align 8, !tbaa !146
  store i64 1, ptr %i.ac, align 8, !tbaa !147
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !182
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 0, ptr %i.ab, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.pre102 = load i64, ptr %.phi.trans.insert101, align 8, !tbaa !210 ; 2 uses
  %.idx92 = shl nuw nsw i64 %.pre102, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx92
  %.not3085 = icmp eq i64 %.pre102, 0
  br i1 %.not3085, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit, %bb.ah
  %.02686 = phi ptr [ %i.fb, %bb.ah ], [ %.pre, %_ZN4Luau16NonStrictContextD2Ev.exit ] ; 2 uses
  %i.cb = load ptr, ptr %.02686, align 8, !tbaa !212 ; 2 uses
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !213
  %i.cd = invoke ptr @_ZNK4Luau13DataFlowGraph6getDefEPKNS_8AstLocalE(ptr noundef nonnull align 8 dereferenceable(216) %i.cc, ptr noundef %i.cb)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau15collectOperandsENS_7NotNullIKNS_3DefEEEPSt6vectorIS3_SaIS3_EE(ptr %i.cd, ptr noundef nonnull %3)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %3, align 8, !tbaa !215   ; 3 uses
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !215 ; 2 uses
  %.not17.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt13unordered_mapIPKN4Luau3DefEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE5eraseERSC_.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !217
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.n
  %i.cg = phi ptr [ %i.ce, %bb.n ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !218
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #25
  br label %bb.ag

bb.p:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatBlockE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %.02686, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.fb, %i.ca
  br i1 %.not30, label %.loopexit, label %.lr.ph87

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph87, %bb.ag, %.lr.ph
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !47
  %.sroa.0.0.copyload = load ptr, ptr %i.ak, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstStatE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %9, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.bf)
          to label %bb.aj unwind label %bb.as

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4Luau16NonStrictContext11disjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %8, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.al, label %_ZN4Luau16NonStrictContextaSEOS0_.exit, label %bb.al, !prof !35

bb.al:                                            ; preds = %bb.ak
  %i.fc = load ptr, ptr %i.q, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i39 = icmp eq ptr %i.fc, null
  br i1 %.not5.i.i.i.i.i39, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %bb.al, %.lr.ph.i.i.i.i.i40
  %.06.i.i.i.i.i41 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i40 ], [ %i.fc, %bb.al ] ; 2 uses
  %i.fd = load ptr, ptr %.06.i.i.i.i.i41, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i41, i64 noundef 24) #25
  %.not.i.i.i.i.i42 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i40, !llvm.loop !1

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i40, %bb.al
  %i.fe = load ptr, ptr %0, align 8, !tbaa !146   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.o
  br i1 %i.ff, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i
  %i.fg = load i64, ptr %i.p, align 8, !tbaa !147
  %i.fh = shl i64 %i.fg, 3
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #25
  br label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i: ; preds = %bb.am, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !229
  %i.fi = load ptr, ptr %8, align 8, !tbaa !146   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.an
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.fk = load ptr, ptr %i.an, align 8, !tbaa !230
  store ptr %i.fk, ptr %i.o, align 8, !tbaa !230
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.fl = phi ptr [ %i.o, %bb.an ], [ %i.fi, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.fl, ptr %0, align 8, !tbaa !146
  %i.fm = load i64, ptr %i.ao, align 8, !tbaa !147 ; 2 uses
  store i64 %i.fm, ptr %i.p, align 8, !tbaa !147
  %i.fn = load ptr, ptr %i.ap, align 8, !tbaa !144 ; 3 uses
  store ptr %i.fn, ptr %i.q, align 8, !tbaa !144
  %i.fo = load i64, ptr %i.aq, align 8, !tbaa !221
  store i64 %i.fo, ptr %i.ai, align 8, !tbaa !221
  %.not.i12.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i12.i.i.i.i, label %_ZN4Luau16NonStrictContextaSEOS0_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !220
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = urem i64 %i.fr, %i.fm
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fs
  store ptr %i.q, ptr %i.ft, align 8, !tbaa !222
  br label %_ZN4Luau16NonStrictContextaSEOS0_.exit.thread

_ZN4Luau16NonStrictContextaSEOS0_.exit.thread:    ; preds = %bb.ao, %bb.ap
  store i64 0, ptr %i.ar, align 8, !tbaa !231
  store i64 1, ptr %i.ao, align 8, !tbaa !147
  store ptr null, ptr %i.an, align 8, !tbaa !230
  store ptr %i.an, ptr %8, align 8, !tbaa !146
  br label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47

_ZN4Luau16NonStrictContextaSEOS0_.exit:           ; preds = %bb.ak
  %.pre103 = load ptr, ptr %i.ap, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i43 = icmp eq ptr %.pre103, null
  br i1 %.not5.i.i.i.i.i43, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZN4Luau16NonStrictContextaSEOS0_.exit, %.lr.ph.i.i.i.i.i44
  %.06.i.i.i.i.i45 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i44 ], [ %.pre103, %_ZN4Luau16NonStrictContextaSEOS0_.exit ] ; 2 uses
  %i.fu = load ptr, ptr %.06.i.i.i.i.i45, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i45, i64 noundef 24) #25
  %.not.i.i.i.i.i46 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i46, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47, label %.lr.ph.i.i.i.i.i44, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i44, %_ZN4Luau16NonStrictContextaSEOS0_.exit.thread, %_ZN4Luau16NonStrictContextaSEOS0_.exit
  %i.fv = load ptr, ptr %8, align 8, !tbaa !146
  %i.fw = load i64, ptr %i.ao, align 8, !tbaa !147
  %i.fx = shl i64 %i.fw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 0, i64 %i.fx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.fy = load ptr, ptr %8, align 8, !tbaa !146   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.an
  br i1 %i.fz, label %_ZN4Luau16NonStrictContextD2Ev.exit48, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47
  %i.ga = load i64, ptr %i.ao, align 8, !tbaa !147
  %i.gb = shl i64 %i.ga, 3
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit48

_ZN4Luau16NonStrictContextD2Ev.exit48:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i47, %bb.aq
  %i.gc = load ptr, ptr %i.as, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i49 = icmp eq ptr %i.gc, null
  br i1 %.not5.i.i.i.i.i49, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit48, %.lr.ph.i.i.i.i.i50
  %.06.i.i.i.i.i51 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i50 ], [ %i.gc, %_ZN4Luau16NonStrictContextD2Ev.exit48 ] ; 2 uses
  %i.gd = load ptr, ptr %.06.i.i.i.i.i51, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i51, i64 noundef 24) #25
  %.not.i.i.i.i.i52 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i53, label %.lr.ph.i.i.i.i.i50, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i53: ; preds = %.lr.ph.i.i.i.i.i50, %_ZN4Luau16NonStrictContextD2Ev.exit48
  %i.ge = load ptr, ptr %9, align 8, !tbaa !146
  %i.gf = load i64, ptr %i.at, align 8, !tbaa !147
  %i.gg = shl i64 %i.gf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ge, i8 0, i64 %i.gg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.gh = load ptr, ptr %9, align 8, !tbaa !146   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.au
  br i1 %i.gi, label %_ZN4Luau16NonStrictContextD2Ev.exit54, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i53
  %i.gj = load i64, ptr %i.at, align 8, !tbaa !147
  %i.gk = shl i64 %i.gj, 3
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit54

_ZN4Luau16NonStrictContextD2Ev.exit54:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i53, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.loopexit

bb.as:                                            ; preds = %bb.ai
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.at ], [ %i.gl, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

.loopexit:                                        ; preds = %bb.ah, %_ZN4Luau16NonStrictContextD2Ev.exit, %_ZN4Luau16NonStrictContextD2Ev.exit54
  %i.gn = load ptr, ptr %i.t, align 8, !tbaa !186, !noalias !524
  %.not73 = icmp eq ptr %i.be, %i.gn
  br i1 %.not73, label %._crit_edge, label %bb.j, !llvm.loop !520

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit11.i, %bb.au
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.cl, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit11.i ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  call void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !188, !range !177, !noundef !178
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.av, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56

bb.av:                                            ; preds = %.body
  %i.gr = load ptr, ptr %6, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i55, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !194
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56: ; preds = %bb.aw, %bb.av, %.body, %bb.i
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.i ], [ %.pn31.pn.pn, %.body ], [ %.pn31.pn.pn, %bb.av ], [ %.pn31.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.az

bb.ax:                                            ; preds = %bb.h, %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre104 = load i8, ptr %i.a, align 8, !tbaa !173, !range !177
  %i.gv = trunc nuw i8 %.pre104 to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.gv, label %bb.ay, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

bb.ay:                                            ; preds = %.thread, %bb.ax
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %5) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.az:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56, %bb.d
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit56 ], [ %i.n, %bb.d ]
  %i.gw = load i8, ptr %i.a, align 8, !tbaa !173, !range !177, !noundef !178
  %i.gx = trunc nuw i8 %i.gw to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.gx, label %bb.ba, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit57

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %5) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit57

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit57: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn31.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt13unordered_mapIPKN4Luau3DefEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !147
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt13unordered_mapIPKN4Luau3DefEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau3DefEPKNS0_4TypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

declare void @_ZN4Luau8unfreezeERNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #7

declare void @_ZN4Luau10copyErrorsERSt6vectorINS_9TypeErrorESaIS1_EERNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(184), ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4Luau6freezeERNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeCheckerD2Ev(ptr noundef nonnull align 8 dead_on_return(772) dereferenceable(772) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #23
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #23
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau7NotNullINS0_5ScopeEEESaIS3_EED2Ev.exit, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN4Luau9SubtypingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.l) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4Luau10NormalizerD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.m) #23
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS2_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau8TypePath8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau8TypePath8PropertyD2Ev.exit

_ZN4Luau8TypePath8PropertyD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS3_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS4_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS5_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS6_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS7_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_8TypePath8PropertyENS1_5IndexENS1_9TypeFieldENS1_9PackFieldENS1_9PackSliceENS1_9ReductionENS1_18GenericPackMappingEEE6fnDtorIS8_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau7VariantIJNS2_8TypePath8PropertyENS4_5IndexENS4_9TypeFieldENS4_9PackFieldENS4_9PackSliceENS4_9ReductionENS4_18GenericPackMappingEEEESt6vectorISC_SaISC_EEEEPSC_ET0_T_SL_SK_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not13 = icmp eq ptr %0, %1
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit
  %.015 = phi ptr [ %i.aa, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.sroa.08.014 = phi ptr [ %i.z, %_ZSt10_ConstructIN4Luau7VariantIJNS0_8TypePath8PropertyENS2_5IndexENS2_9TypeFieldENS2_9PackFieldENS2_9PackSliceENS2_9ReductionENS2_18GenericPackMappingEEEEJRKSA_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.b = load i32, ptr %.sroa.08.014, align 8, !tbaa !31 ; 2 uses
  store i32 %i.b, ptr %.015, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 7 uses
  switch i32 %i.b, label %default.switch.case.unreachable.i.i [
    i32 0, label %call.0.i.i
    i32 1, label %call.1.i.i
    i32 2, label %call.2.i.i
    i32 3, label %call.3.i.i
    i32 4, label %call.4.i.i
    i32 5, label %call.5.i.i
    i32 6, label %call.6.i.i
end_hunk_1
begin_hunk_2_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISO_EEvPv:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !153
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZN4Luau17DeprecatedApiUsedD2Ev.exit

_ZN4Luau17DeprecatedApiUsedD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISP_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !269    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !153
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !271
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit

_ZN4Luau25ModuleHasCyclicDependencyD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISQ_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit

_ZN4Luau25CyclicModuleGraphTooLargeD2Ev.exit:     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISR_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4Luau14IllegalRequireD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !153
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZN4Luau14IllegalRequireD2Ev.exit

_ZN4Luau14IllegalRequireD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISS_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIST_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau25DuplicateGenericParameterD2Ev.exit

_ZN4Luau25DuplicateGenericParameterD2Ev.exit:     ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISU_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau19CannotAssignToNeverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN4Luau19CannotAssignToNeverD2Ev.exit

_ZN4Luau19CannotAssignToNeverD2Ev.exit:           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISV_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !272
  br i1 %i.c, label %bb.b, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZN4Luau26CannotInferBinaryOperationD2Ev.exit

_ZN4Luau26CannotInferBinaryOperationD2Ev.exit:    ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISW_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau17MissingPropertiesD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZN4Luau17MissingPropertiesD2Ev.exit

_ZN4Luau17MissingPropertiesD2Ev.exit:             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISX_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit

_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit:   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISY_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorISZ_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau20MissingUnionPropertyD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZN4Luau20MissingUnionPropertyD2Ev.exit

_ZN4Luau20MissingUnionPropertyD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS10_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS11_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS12_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau16TypePackMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN4Luau16TypePackMismatchD2Ev.exit

_ZN4Luau16TypePackMismatchD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS13_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS14_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS15_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS16_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS17_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS18_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit

_ZN4Luau24CheckedFunctionCallErrorD2Ev.exit:      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1E_EEvPv:bb.a
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !153
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !277
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit

_ZN4Luau37ExplicitFunctionAnnotationRecommendedD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau4TypeEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1F_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit

_ZN4Luau28UserDefinedTypeFunctionErrorD2Ev.exit:  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1G_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !279
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE9tableDtorE, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void %i.e(ptr noundef nonnull %i.f)
          to label %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable

_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !153
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit

_ZN4Luau24BuiltInTypeFunctionErrorD2Ev.exit:      ; preds = %_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1H_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau18ReservedIdentifierD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau18ReservedIdentifierD2Ev.exit

_ZN4Luau18ReservedIdentifierD2Ev.exit:            ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1I_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1J_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1K_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1L_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1M_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1N_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1O_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i:   ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZN4Luau21GenericBoundsMismatchD2Ev.exit

_ZN4Luau21GenericBoundsMismatchD2Ev.exit:         ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1P_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1Q_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1R_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !272
  br i1 %i.c, label %bb.b, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !153
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit

_ZN4Luau30TypeInstantiationCountMismatchD2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnDtorIS1S_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !559
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !171
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !559
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau30IncorrectGenericParameterCountD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !257
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !260  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau7TypeFunD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZN4Luau7TypeFunD2Ev.exit

_ZN4Luau7TypeFunD2Ev.exit:                        ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau7TypeFunD2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !153
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau7TypeFunD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !153
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !560

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !151 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !6

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau32NonStrictFunctionDefinitionErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !153
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

end_hunk_3
begin_hunk_4_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstStatE:bb.a

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_16AstStatTypeAliasE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.as = load i32, ptr @_ZN4Luau7AstRttiINS_19AstStatTypeFunctionEE5valueE, align 4, !tbaa !24
  %i.at = icmp ne i32 %i.b, %i.as
  %.not129 = or i1 %.not200, %i.at
  br i1 %.not129, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.au, align 8, !alias.scope !620
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.av, ptr %0, align 8, !tbaa !146, !alias.scope !620
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aw, align 8, !tbaa !147, !alias.scope !620
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !620
  store float 1.000000e+00, ptr %i.au, align 8, !tbaa !182, !alias.scope !620
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.ay = load i32, ptr @_ZN4Luau7AstRttiINS_22AstStatDeclareFunctionEE5valueE, align 4, !tbaa !24
  %i.az = icmp ne i32 %i.b, %i.ay
  %.not130 = or i1 %.not200, %i.az
  br i1 %.not130, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_22AstStatDeclareFunctionE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit unwind label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.ba = load i32, ptr @_ZN4Luau7AstRttiINS_20AstStatDeclareGlobalEE5valueE, align 4, !tbaa !24
  %i.bb = icmp ne i32 %i.b, %i.ba
  %.not131 = or i1 %.not200, %i.bb
  br i1 %.not131, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !622, !noalias !623
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.bd)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_20AstStatDeclareGlobalE.exit unwind label %bb.ap, !inline_history !617

_ZN4Luau20NonStrictTypeChecker5visitEPNS_20AstStatDeclareGlobalE.exit: ; preds = %bb.ai
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bf, ptr %0, align 8, !tbaa !146
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bg, align 8, !tbaa !147
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bi, align 8, !tbaa !182
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.bj = load i32, ptr @_ZN4Luau7AstRttiINS_24AstStatDeclareExternTypeEE5valueE, align 4, !tbaa !24
  %i.bk = icmp ne i32 %i.b, %i.bj
  %.not132 = or i1 %.not200, %i.bk
  br i1 %.not132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_24AstStatDeclareExternTypeE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit unwind label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.bl = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatClassEE5valueE, align 4, !tbaa !24
  %i.bm = icmp ne i32 %i.b, %i.bl
  %.not133 = or i1 %.not200, %i.bm
  br i1 %.not133, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatClassE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit unwind label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.bn = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatErrorEE5valueE, align 4, !tbaa !24
  %i.bo = icmp ne i32 %i.b, %i.bn
  %.not134 = or i1 %.not200, %i.bo
  br i1 %.not134, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatErrorE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.invoke, %bb.ai, %bb.am, %bb.ak, %bb.ac, %bb.y, %bb.w, %bb.q, %bb.h, %bb.b, %bb.d, %bb.f, %bb.n, %bb.s, %bb.u, %bb.ag, %bb.ao
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aq:                                            ; preds = %bb.an
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !153
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.at ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bt, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ax

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit.sink.split: ; preds = %bb.j, %bb.ae, %bb.l, %_ZN4Luau20NonStrictTypeChecker5visitEPNS_20AstStatDeclareGlobalE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit: ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit.sink.split, %.invoke, %bb.d, %bb.h, %bb.s, %bb.w, %bb.ac, %bb.ag, %bb.ak, %bb.ao, %bb.am, %bb.y, %bb.u, %bb.q, %bb.n, %bb.f, %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !188, !range !177, !noundef !178
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.av, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit

bb.av:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit
  %i.cd = load ptr, ptr %3, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !194
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit: ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstStatExprE.exit, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ax:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn175 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %bb.ap ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !188, !range !177, !noundef !178
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ay, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit199

bb.ay:                                            ; preds = %bb.ax
  %i.ck = load ptr, ptr %3, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i198 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i198, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit199, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !194
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit199

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit199: ; preds = %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn175
}

; Function Attrs: nounwind
declare void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

declare void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::optional.371", align 8 ; 7 uses
  %5 = alloca %"class.std::optional.381", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.79", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i8 0, ptr %i.a, align 8, !tbaa !173
  %i.b = load i8, ptr @_ZN5FFlag45LuauAddRecursionCounterToNonStrictTypeCheckerE, align 8, !tbaa !176, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, label %bb.e

_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  invoke void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !173
  %i.e = load i32, ptr @_ZN4FInt38LuauNonStrictTypeCheckerRecursionLimitE, align 8, !tbaa !181 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 8, !tbaa !133
  %.not = icmp slt i32 %i.g, %i.e
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %0, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br label %bb.ay

bb.d:                                             ; preds = %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN4Luau20NonStrictTypeChecker9pushStackEPNS_7AstNodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.381") align 8 %5, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !200  ; 21 uses
  %i.q = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprGroupEE5valueE, align 4, !tbaa !24
  %i.r = icmp ne i32 %i.p, %i.q
  %.not116198 = icmp eq ptr %2, null              ; 21 uses
  %.not116 = or i1 %.not116198, %i.r
  br i1 %.not116, label %bb.h, label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196

bb.h:                                             ; preds = %bb.f
  %i.t = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprConstantNilEE5valueE, align 4, !tbaa !24
  %i.u = icmp ne i32 %i.p, %i.t
  %.not117 = or i1 %.not116198, %i.u
  br i1 %.not117, label %bb.i, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !24
  %i.w = icmp ne i32 %i.p, %i.v
  %.not118 = or i1 %.not116198, %i.w
  br i1 %.not118, label %bb.j, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantNumberEE5valueE, align 4, !tbaa !24
  %i.y = icmp ne i32 %i.p, %i.x
  %.not119 = or i1 %.not116198, %i.y
  br i1 %.not119, label %bb.k, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.z = load i32, ptr @_ZN4Luau7AstRttiINS_22AstExprConstantIntegerEE5valueE, align 4, !tbaa !24
  %i.aa = icmp ne i32 %i.p, %i.z
  %.not120 = or i1 %.not116198, %i.aa
  br i1 %.not120, label %bb.l, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !24
  %i.ac = icmp ne i32 %i.p, %i.ab
  %.not121 = or i1 %.not116198, %i.ac
  br i1 %.not121, label %bb.m, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ad = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !24
  %i.ae = icmp ne i32 %i.p, %i.ad
  %.not122 = or i1 %.not116198, %i.ae
  br i1 %.not122, label %bb.n, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !24
  %i.ag = icmp ne i32 %i.p, %i.af
  %.not123 = or i1 %.not116198, %i.ag
  br i1 %.not123, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprGlobalENS_12ValueContextE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2, i32 noundef %3)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.p:                                             ; preds = %bb.n
  %i.ah = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4, !tbaa !24
  %i.ai = icmp ne i32 %i.p, %i.ah
  %.not124 = or i1 %.not116198, %i.ai
  br i1 %.not124, label %bb.q, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.aj = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !24
  %i.ak = icmp ne i32 %i.p, %i.aj
  %.not125 = or i1 %.not116198, %i.ak
  br i1 %.not125, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstExprCallE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.s:                                             ; preds = %bb.q
  %i.al = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !24
  %i.am = icmp ne i32 %i.p, %i.al
  %.not126 = or i1 %.not116198, %i.am
  br i1 %.not126, label %bb.t, label %.invoke

bb.t:                                             ; preds = %bb.s
  %i.an = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexExprEE5valueE, align 4, !tbaa !24
  %i.ao = icmp ne i32 %i.p, %i.an
  %.not127 = or i1 %.not116198, %i.ao
  br i1 %.not127, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_16AstExprIndexExprENS_12ValueContextE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2, i32 noundef %3)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.v:                                             ; preds = %bb.t
  %i.ap = load i32, ptr @_ZN4Luau7AstRttiINS_15AstExprFunctionEE5valueE, align 4, !tbaa !24
  %i.aq = icmp ne i32 %i.p, %i.ap
  %.not128 = or i1 %.not116198, %i.aq
  br i1 %.not128, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_15AstExprFunctionE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.x:                                             ; preds = %bb.v
  %i.ar = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprTableEE5valueE, align 4, !tbaa !24
  %i.as = icmp ne i32 %i.p, %i.ar
  %.not129 = or i1 %.not116198, %i.as
  br i1 %.not129, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprTableE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.at = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprUnaryEE5valueE, align 4, !tbaa !24
  %i.au = icmp ne i32 %i.p, %i.at
  %.not130 = or i1 %.not116198, %i.au
  br i1 %.not130, label %bb.aa, label %.invoke

.invoke:                                          ; preds = %bb.z, %bb.s, %bb.f
  %i.av = phi i32 [ %3, %bb.s ], [ %3, %bb.f ], [ 1, %bb.z ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !206, !noalias !178
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.ax, i32 noundef %i.av)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am, !inline_history !624

bb.aa:                                            ; preds = %bb.z
  %i.ay = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !24
  %i.az = icmp ne i32 %i.p, %i.ay
  %.not131 = or i1 %.not116198, %i.az
  br i1 %.not131, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprBinaryE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.ba = load i32, ptr @_ZN4Luau7AstRttiINS_20AstExprTypeAssertionEE5valueE, align 4, !tbaa !24
  %i.bb = icmp ne i32 %i.p, %i.ba
  %.not132 = or i1 %.not116198, %i.bb
  br i1 %.not132, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_20AstExprTypeAssertionE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.bc = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprIfElseEE5valueE, align 4, !tbaa !24
  %i.bd = icmp ne i32 %i.p, %i.bc
  %.not133 = or i1 %.not116198, %i.bd
  br i1 %.not133, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprIfElseE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.be = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprInterpStringEE5valueE, align 4, !tbaa !24
  %i.bf = icmp ne i32 %i.p, %i.be
  %.not134 = or i1 %.not116198, %i.bf
  br i1 %.not134, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_19AstExprInterpStringE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.bg = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprErrorEE5valueE, align 4, !tbaa !24
  %i.bh = icmp ne i32 %i.p, %i.bg
  %.not135 = or i1 %.not116198, %i.bh
  br i1 %.not135, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprErrorE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.bi = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprInstantiateEE5valueE, align 4, !tbaa !24
  %i.bj = icmp ne i32 %i.p, %i.bi
  %.not136 = or i1 %.not116198, %i.bj
  br i1 %.not136, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstExprInstantiateE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %2)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit unwind label %bb.am

bb.am:                                            ; preds = %.invoke, %bb.aj, %bb.ad, %bb.ab, %bb.w, %bb.u, %bb.o, %bb.r, %bb.y, %bb.af, %bb.ah, %bb.al
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.an:                                            ; preds = %bb.ak
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ar:                                            ; preds = %bb.ao
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !151   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !153
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.aq ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bo, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.au

_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split: ; preds = %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %0, align 8, !tbaa !146
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bw, align 8, !tbaa !147
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bu, align 8, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit

_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit: ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit.sink.split, %.invoke, %bb.o, %bb.r, %bb.u, %bb.y, %bb.ab, %bb.af, %bb.aj, %bb.al, %bb.ah, %bb.ad, %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !188, !range !177, !noundef !178
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit
  %i.cc = load ptr, ptr %5, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !194
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !194
  br label %bb.ax

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.am
  %.pn171 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bk, %bb.am ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !188, !range !177, !noundef !178
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.av, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196

bb.av:                                            ; preds = %bb.au
  %i.cj = load ptr, ptr %5, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i195 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i195, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !194
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196: ; preds = %bb.aw, %bb.av, %bb.au, %bb.g
  %.pn171.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %.pn171, %bb.au ], [ %.pn171, %bb.av ], [ %.pn171, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.az

bb.ax:                                            ; preds = %bb.at, %bb.as, %_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprGroupENS_12ValueContextE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.pre = load i8, ptr %i.a, align 8, !tbaa !173, !range !177
  %i.cn = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.cn, label %bb.ay, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

bb.ay:                                            ; preds = %.thread, %bb.ax
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.az:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196, %bb.d
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit196 ], [ %i.n, %bb.d ]
  %i.co = load i8, ptr %i.a, align 8, !tbaa !173, !range !177, !noundef !178
  %i.cp = trunc nuw i8 %i.co to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.cp, label %bb.ba, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit197

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %4) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit197

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit197: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn171.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprGlobalENS_12ValueContextE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.Luau::Variant.300", align 8 ; 8 uses
  %5 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 14 uses
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %0, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !182
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !322
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !285
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !323
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call { ptr, i8 } @_ZNK4Luau5Scope6lookupENS_6SymbolE(ptr noundef nonnull align 8 dereferenceable(1040) %i.m, ptr null, ptr %i.p)
  %i.r = extractvalue { ptr, i8 } %i.q, 1
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !626  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !233
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.w, ptr %i.a, align 8, !tbaa !228
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !151
  %i.z = load i64, ptr %i.a, align 8, !tbaa !228
  store i64 %i.z, ptr %i.u, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.u, %bb.e ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !153
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !153
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !228 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !152
  %i.ae = load ptr, ptr %5, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.ag, align 8, !tbaa !327
  store i32 1, ptr %4, align 8, !tbaa !155
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !233
  %i.aj = load ptr, ptr %5, align 8, !tbaa !151   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.u
  br i1 %i.ak, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !152 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.an, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !151
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !153
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !153
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !152
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ap = phi i64 [ %i.al, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !152
  store ptr %i.u, ptr %5, align 8, !tbaa !151
  store i64 0, ptr %i.ad, align 8, !tbaa !152
  store i8 0, ptr %i.u, align 8, !tbaa !153
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.ar, align 8, !tbaa !327
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !131 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 856
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(136) %4)
          to label %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat unwind label %bb.k ; 0 uses

_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.ay = load i32, ptr %4, align 8, !tbaa !155
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32
  invoke void %i.bb(ptr noundef nonnull %i.ah)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11 unwind label %bb.j

bb.j:                                             ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11: ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat
  %i.be = load ptr, ptr %5, align 8, !tbaa !151   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.u
  br i1 %i.bf, label %_ZN4Luau13UnknownSymbolD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11
  %i.bg = load i64, ptr %i.u, align 8, !tbaa !153
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit

_ZN4Luau13UnknownSymbolD2Ev.exit:                 ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.k:                                             ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i32, ptr %4, align 8, !tbaa !155
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  invoke void %i.bm(ptr noundef nonnull %i.ah)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern14 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern14: ; preds = %bb.k
  %i.bp = load ptr, ptr %5, align 8, !tbaa !151   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.u
  br i1 %i.bq, label %_ZN4Luau13UnknownSymbolD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern14
  %i.br = load i64, ptr %i.u, align 8, !tbaa !153
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit17

_ZN4Luau13UnknownSymbolD2Ev.exit17:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.bi

end_hunk_4
begin_hunk_5_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_15AstExprFunctionE:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %.041141, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ec, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.m

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph145, %.lr.ph150, %bb.m, %bb.ag, %bb.ap, %bb.aq, %bb.al, %bb.am, %bb.ar, %bb.an, %._crit_edge
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !694 ; 7 uses
  %.not.i = icmp eq ptr %i.ef, null
  br i1 %.not.i, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %.noexc63

.noexc63:                                         ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !200 ; 3 uses
  %i.ei = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  %.not109 = icmp eq i32 %i.eh, %i.ei
  br i1 %.not109, label %bb.ak, label %.noexc65

bb.ak:                                            ; preds = %.noexc63
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !298 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !299 ; 2 uses
  %.idx152 = shl nuw nsw i64 %i.em, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx152
  %.not.i84142 = icmp eq i64 %i.em, 0
  br i1 %.not.i84142, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %.noexc85, %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !314 ; 2 uses
  %.not12.i = icmp eq ptr %i.ep, null
  br i1 %.not12.i, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %bb.al

.lr.ph145:                                        ; preds = %bb.ak, %.noexc85
  %.0.i143 = phi ptr [ %i.er, %.noexc85 ], [ %i.ek, %bb.ak ] ; 2 uses
  %i.eq = load ptr, ptr %.0.i143, align 8, !tbaa !303
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.eq)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !374

.noexc85:                                         ; preds = %.lr.ph145
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i143, i64 8 ; 2 uses
  %.not.i84 = icmp eq ptr %i.er, %i.en
  br i1 %.not.i84, label %._crit_edge146, label %.lr.ph145

bb.al:                                            ; preds = %._crit_edge146
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.ep)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !374

.noexc65:                                         ; preds = %.noexc63
  %i.es = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !24
  %.not111 = icmp eq i32 %i.eh, %i.es
  br i1 %.not111, label %bb.am, label %.noexc67

bb.am:                                            ; preds = %.noexc65
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !306
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.eu)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !10

.noexc67:                                         ; preds = %.noexc65
  %i.ev = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not113 = icmp eq i32 %i.eh, %i.ev
  br i1 %.not113, label %bb.an, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.an:                                            ; preds = %.noexc67
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.ef)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !375

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit: ; preds = %.noexc67, %bb.aj, %._crit_edge146, %bb.al, %bb.am, %bb.an
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !695 ; 7 uses
  %.not43 = icmp eq ptr %i.ex, null
  br i1 %.not43, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79, label %.noexc73

.noexc73:                                         ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !200 ; 3 uses
  %i.fa = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  %.not115 = icmp eq i32 %i.ez, %i.fa
  br i1 %.not115, label %bb.ao, label %.noexc75

bb.ao:                                            ; preds = %.noexc73
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !298 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !299 ; 2 uses
  %.idx153 = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx153
  %.not.i93147 = icmp eq i64 %i.fe, 0
  br i1 %.not.i93147, label %._crit_edge151, label %.lr.ph150

._crit_edge151:                                   ; preds = %.noexc95, %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !314 ; 2 uses
  %.not12.i94 = icmp eq ptr %i.fh, null
  br i1 %.not12.i94, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79, label %bb.ap

.lr.ph150:                                        ; preds = %bb.ao, %.noexc95
  %.0.i92148 = phi ptr [ %i.fj, %.noexc95 ], [ %i.fc, %bb.ao ] ; 2 uses
  %i.fi = load ptr, ptr %.0.i92148, align 8, !tbaa !303
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.fi)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !374

.noexc95:                                         ; preds = %.lr.ph150
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i92148, i64 8 ; 2 uses
  %.not.i93 = icmp eq ptr %i.fj, %i.ff
  br i1 %.not.i93, label %._crit_edge151, label %.lr.ph150

bb.ap:                                            ; preds = %._crit_edge151
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.fh)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !374

.noexc75:                                         ; preds = %.noexc73
  %i.fk = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !24
  %.not117 = icmp eq i32 %i.ez, %i.fk
  br i1 %.not117, label %bb.aq, label %.noexc77

bb.aq:                                            ; preds = %.noexc75
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !306
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.fm)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !10

.noexc77:                                         ; preds = %.noexc75
  %i.fn = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not119 = icmp eq i32 %i.ez, %i.fn
  br i1 %.not119, label %bb.ar, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79

bb.ar:                                            ; preds = %.noexc77
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.ex)
          to label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !375

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79: ; preds = %.noexc77, %._crit_edge151, %bb.ap, %bb.aq, %bb.ar, %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit
  %i.fo = load i8, ptr %i.e, align 8, !tbaa !188, !range !177, !noundef !178
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.as, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit

bb.as:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79
  %i.fq = load ptr, ptr %3, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !194
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -8
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit: ; preds = %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit79, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai, %bb.l
  %.pn48.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.ed, %bb.ai ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp, %bb.k
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.loopexit.split-lp ], [ %i.bb, %bb.k ]
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !188, !range !177, !noundef !178
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.av, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit81

bb.av:                                            ; preds = %bb.au
  %i.fx = load ptr, ptr %3, align 8, !tbaa !193   ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit81, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !194
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !194
  br label %_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit81

_ZNSt14_Optional_baseIN4Luau11StackPusherELb0ELb0EED2Ev.exit81: ; preds = %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn48.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstExprTableE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.371", align 8 ; 7 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 6 uses
  %5 = alloca %"struct.Luau::NonStrictContext", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i8 0, ptr %i.a, align 8, !tbaa !173
  %i.b = load i8, ptr @_ZN5FFlag45LuauAddRecursionCounterToNonStrictTypeCheckerE, align 8, !tbaa !176, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, label %bb.d

_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  invoke void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !173
  %i.e = load i32, ptr @_ZN4FInt38LuauNonStrictTypeCheckerRecursionLimitE, align 8, !tbaa !181 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 8, !tbaa !133
  %.not = icmp slt i32 %i.g, %i.e
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %0, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br label %bb.l

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.pre26 = phi i8 [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !698  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !699  ; 2 uses
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not1222 = icmp eq i64 %i.q, 0
  br i1 %.not1222, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit20
  %.pre.pre = load i8, ptr %i.a, align 8, !tbaa !173, !range !177
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph, %_ZN4Luau16NonStrictContextD2Ev.exit20
  %.023 = phi ptr [ %i.o, %.lr.ph ], [ %i.as, %_ZN4Luau16NonStrictContextD2Ev.exit20 ] ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !206 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !206
  %.not13 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not13, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %.sroa.4.0.copyload, i32 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %i.aa = load ptr, ptr %4, align 8, !tbaa !146
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !147
  %i.ac = shl i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ac, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.u
  br i1 %i.ae, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.af = load i64, ptr %i.t, align 8, !tbaa !147
  %i.ag = shl i64 %i.af, 3
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit, %bb.f, %_ZNSt19_Optional_base_implIN4Luau16RecursionCounterESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i8, ptr %i.a, align 8, !tbaa !173, !range !177, !noundef !178
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.ai, label %bb.m, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit21

_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %bb.h, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.e
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %5, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %.sroa.6.0.copyload, i32 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i15 = icmp eq ptr %i.aj, null
  br i1 %.not5.i.i.i.i.i15, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i19, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i16
  %.06.i.i.i.i.i17 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i16 ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ak = load ptr, ptr %.06.i.i.i.i.i17, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i17, i64 noundef 24) #25
  %.not.i.i.i.i.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i18, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i19, label %.lr.ph.i.i.i.i.i16, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i19: ; preds = %.lr.ph.i.i.i.i.i16, %bb.i
  %i.al = load ptr, ptr %5, align 8, !tbaa !146
  %i.am = load i64, ptr %i.w, align 8, !tbaa !147
  %i.an = shl i64 %i.am, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.an, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !146   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.x
  br i1 %i.ap, label %_ZN4Luau16NonStrictContextD2Ev.exit20, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i19
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !147
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit20

_ZN4Luau16NonStrictContextD2Ev.exit20:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i19, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.023, i64 24 ; 2 uses
  %.not12 = icmp eq ptr %i.as, %i.r
  br i1 %.not12, label %._crit_edge.loopexit, label %bb.e

bb.k:                                             ; preds = %bb.d, %._crit_edge.loopexit
  %.pre = phi i8 [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre26, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.au, ptr %0, align 8, !tbaa !146
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.av, align 8, !tbaa !147
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ax, align 8, !tbaa !182
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.a, align 8, !tbaa !173
  br i1 %i.az, label %bb.l, label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

bb.l:                                             ; preds = %.thread, %bb.k
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %3) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %3) #23
  br label %_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit21

_ZNSt14_Optional_baseIN4Luau16RecursionCounterELb0ELb0EED2Ev.exit21: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp32
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprBinaryE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !701
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %3, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.b, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !702
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.d, i32 noundef 1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !50
  invoke void @_ZN4Luau16NonStrictContext11disjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %i.i = load ptr, ptr %4, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !147
  %i.l = shl i64 %i.k, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %4, align 8, !tbaa !146    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !147
  %i.q = shl i64 %i.p, 3
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit

_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not5.i.i.i.i.i7, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i11, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit, %.lr.ph.i.i.i.i.i8
  %.06.i.i.i.i.i9 = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i8 ], [ %i.s, %_ZN4Luau16NonStrictContextD2Ev.exit ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i.i.i.i9, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i9, i64 noundef 24) #25
  %.not.i.i.i.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i11, label %.lr.ph.i.i.i.i.i8, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i11: ; preds = %.lr.ph.i.i.i.i.i8, %_ZN4Luau16NonStrictContextD2Ev.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !146
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !147
  %i.x = shl i64 %i.w, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %3, align 8, !tbaa !146    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4Luau16NonStrictContextD2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i11
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !147
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit12

_ZN4Luau16NonStrictContextD2Ev.exit12:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i11, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN4Luau16NonStrictContextD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_20AstExprTypeAssertionE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !705
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.d, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstExprIfElseE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %5 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %6 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !707
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %3, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.b, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !708
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.d, i32 noundef 1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !709
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %5, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.f, i32 noundef 1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4Luau16NonStrictContext11conjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %6, ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4Luau16NonStrictContext11disjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %i.k = load ptr, ptr %6, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !147
  %i.n = shl i64 %i.m, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %6, align 8, !tbaa !146    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !147
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit

_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i14 = icmp eq ptr %i.u, null
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE15_M_range_insertIPKS2_EEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EET_SC_St20forward_iterator_tag:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !206
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !206
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !393

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !206
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !206
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !393

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !206
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i59 = icmp eq ptr %i.ay, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !345
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #25
  br label %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !343
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !344
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !345
  br label %_ZSt4copyIPKPN4Luau7AstExprEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit

_ZSt4copyIPKPN4Luau7AstExprEN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEET0_T_SD_SC_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPN4Luau7AstExprESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_4TypeES3_NS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !747  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !450  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !234    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !234  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !158
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !746

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !450
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !234    ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !158   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !234 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !451
  %i.al = load i64, ptr %i.a, align 8, !tbaa !747
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !747
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau9TypeArena7addTypeINS_12NegationTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Type", align 8       ; 13 uses
  %3 = alloca %"class.Luau::Variant.638", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 18, ptr %3, align 8, !tbaa !331
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !234
  store i32 18, ptr %2, align 8, !tbaa !331
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.d, align 8, !tbaa !749
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !272
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 384
  store ptr null, ptr %i.f, align 8, !tbaa !750
  %i.g = invoke noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.e, align 8, !tbaa !272, !range !177, !noundef !178
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.e, align 8, !tbaa !272
  br i1 %i.i, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !151  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !153
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.b
  %i.p = load i32, ptr %2, align 8, !tbaa !331
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  invoke void %i.s(ptr noundef nonnull %i.c)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.v = load i32, ptr %3, align 8, !tbaa !331
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  invoke void %i.y(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4Luau4TypeD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #24
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZN4Luau4TypeD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.g

bb.f:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #23
  %i.ac = load i32, ptr %3, align 8, !tbaa !331
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  invoke void %i.af(ptr noundef nonnull %i.a)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit2: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !450  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234  ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !234  ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.j = icmp ult i64 %spec.select, 4
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.i, ptr %i.n, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr null, ptr %i.o, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.i, ptr %i.q, align 8, !tbaa !234
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr null, ptr %i.r, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.i, ptr %i.t, align 8, !tbaa !234
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr null, ptr %i.u, align 8, !tbaa !234
  %i.v = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !751

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.y, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !234
  %i.y = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !752

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !450
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.z, 0
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !754 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit
  %i.aa = add i64 %spec.select, -1                ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERS7_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !754
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !228
  %.not.i11 = icmp eq ptr %.pre32, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre32) #23
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge27, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph26, %bb.f
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.pre32, i64 %.025 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !234 ; 6 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %.02131.i21 = and i64 %i.ai, %i.aa              ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !234 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.am = icmp eq ptr %i.ak, %i.ac
  br i1 %i.am, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.e
  %.lcssa = phi ptr [ %i.aj, %bb.e ], [ %i.aq, %.lr.ph47 ] ; 2 uses
  store ptr %i.ac, ptr %.lcssa, align 8, !tbaa !451
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.an = icmp eq ptr %i.ar, %i.ac
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i2246, 1                ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.ao, %i.aa
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.ap, %i.aa                ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.aj, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  store ptr %i.ac, ptr %i.at, align 8, !tbaa !451
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !234
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !755
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_4TypeESt4pairIS4_S4_ES5_IKS4_S4_ENS0_16ItemInterfaceMapIS4_S4_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERS7_.exit, %bb.d
  %i.ax = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.z
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.d, !llvm.loop !753

._crit_edge27.thread:                             ; preds = %bb.f
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !754
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !228
  br label %bb.c
}

declare noundef ptr @_ZN4Luau9TypeArena5addTVEONS_4TypeE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !272
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load i32, ptr %0, align 8, !tbaa !331
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.m(ptr noundef nonnull %i.n)
          to label %_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #24
  unreachable

_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS6_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS8_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorIS9_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISA_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4Luau11GenericTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !153
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZN4Luau11GenericTypeD2Ev.exit

_ZN4Luau11GenericTypeD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISB_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISC_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !757
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE9tableDtorE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void %i.d(ptr noundef nonnull %i.e)
          to label %_ZN4Luau13SingletonTypeD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable

_ZN4Luau13SingletonTypeD2Ev.exit:                 ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISD_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISE_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau20PendingExpansionTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZN4Luau20PendingExpansionTypeD2Ev.exit

_ZN4Luau20PendingExpansionTypeD2Ev.exit:          ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISF_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISG_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISH_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !272
  br i1 %i.c, label %bb.b, label %_ZN4Luau13MetatableTypeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4Luau13MetatableTypeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZN4Luau13MetatableTypeD2Ev.exit

_ZN4Luau13MetatableTypeD2Ev.exit:                 ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISI_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  tail call void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISJ_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISK_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !240    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau9UnionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #25
  br label %_ZN4Luau9UnionTypeD2Ev.exit

_ZN4Luau9UnionTypeD2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISL_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !240    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau16IntersectionTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #25
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISM_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !759  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau8LazyTypeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 3)
          to label %_ZN4Luau8LazyTypeD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZN4Luau8LazyTypeD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISN_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISO_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISP_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISQ_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE6fnDtorISR_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !249
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #25
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit

_ZN4Luau24TypeFunctionInstanceTypeD2Ev.exit:      ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS1_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_16BooleanSingletonENS_15StringSingletonEEE6fnDtorIS2_EEvPv(ptr noundef %0) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4Luau15StringSingletonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !153
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN4Luau15StringSingletonD2Ev.exit

_ZN4Luau15StringSingletonD2Ev.exit:               ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12FunctionTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !169
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !760
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !171
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !760
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !169
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !761
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !761
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4Luau7AstAttr14DeprecatedInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !269 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !153
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13MagicFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !271
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !763 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !764 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.bk, %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 48 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !766, !range !177, !noundef !178
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.bc, align 8, !tbaa !766
  br i1 %i.be, label %bb.o, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i7
  %i.bf = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !151 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !153
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #25
  br label %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 56 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bk, %i.bb
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !762

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN4Luau16FunctionArgumentEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.ay, align 8, !tbaa !763
  br label %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bl = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.az, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !767
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #25
  br label %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit

_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN4Luau16FunctionArgumentEES3_EvT_S5_RSaIT0_E.exit.i, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !248 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !249
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt8optionalIN4Luau16FunctionArgumentEESaIS3_EED2Ev.exit, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !241
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !768, !range !177, !noundef !178
  %i.ch = trunc nuw i8 %i.cg to i1
  store i8 0, ptr %i.cf, align 8, !tbaa !768
  br i1 %i.ch, label %bb.s, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !272, !range !177, !noundef !178
  %i.ck = trunc nuw i8 %i.cj to i1
  store i8 0, ptr %i.ci, align 8, !tbaa !272
  br i1 %i.ck, label %bb.t, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14: ; preds = %bb.t
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !153
  %i.cp = add i64 %i.co, 1
  tail call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #25
  br label %_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau18FunctionDefinitionELb0ELb0EED2Ev.exit: ; preds = %bb.t, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !153
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !248  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !249
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #25
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #25
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !272, !range !177, !noundef !178
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !272
  br i1 %i.am, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !151 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !153
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !272, !range !177, !noundef !178
  %i.av = trunc nuw i8 %i.au to i1
  store i8 0, ptr %i.at, align 8, !tbaa !272
  br i1 %i.av, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !151 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !153
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7: ; preds = %bb.f, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !266
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !280
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 240) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !769

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !272, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !272
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !153
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !269  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !153
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !271
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !153
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !153
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10ExternTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !772, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !772
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = load i32, ptr %i.d, align 8, !tbaa !774
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE9tableDtorE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke void %i.h(ptr noundef nonnull %i.i)
          to label %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !153
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN4Luau7VariantIJNS0_3ObjENS0_5KlassEEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.t, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !169
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !770
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !770
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.i, label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !269 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i, align 8, !tbaa !151 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !153
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !269
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN4Luau13ClassUserDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !271
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !266
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef %i.ba)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #24
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !151   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !153
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS1_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_3ObjENS_5KlassEEE6fnDtorIS2_EEvPv(ptr noundef %0) #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau23UserDefinedFunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !782  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !783  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.04.i.i.i.i = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.04.i.i.i.i ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !153
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = add nuw i64 %.04.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !775

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIPNS_7TypeFunEmEE7destroyEPS8_IS7_SB_Em.exit.loopexit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !782
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_S8_IPNS_7TypeFunEmEES8_IKS7_SB_ENS0_16ItemInterfaceMapIS7_SB_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit.i.i
end_hunk_6
begin_hunk_7_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_19AstTypePackExplicitE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !306
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %i.x), !inline_history !841
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not28.i = icmp eq i32 %i.k, %i.y
  br i1 %.not28.i, label %bb.f, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull %.tr29.i), !inline_history !375
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit: ; preds = %._crit_edge.i, %bb.f, %bb.e, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::optional.752", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.Luau::Variant.300", align 8 ; 8 uses
  %6 = alloca %"struct.Luau::SwappedGenericTypeParameter", align 8 ; 14 uses
  %7 = alloca %"class.Luau::Variant.300", align 8 ; 8 uses
  %8 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 4, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24
  %i.f = tail call noundef ptr @_ZNK4Luau20NonStrictTypeChecker18findInnermostScopeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(772) %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !844  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !233
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.k, ptr %i.d, align 8, !tbaa !228
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !151
  %i.n = load i64, ptr %i.d, align 8, !tbaa !228
  store i64 %i.n, ptr %i.i, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc26, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc26 ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !153
  store i8 %i.p, ptr %i.o, align 1, !tbaa !153
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !152
  %i.s = load ptr, ptr %2, align 8, !tbaa !151
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.u = invoke { ptr, i8 } @_ZNK4Luau5Scope10lookupPackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1040) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = extractvalue { ptr, i8 } %i.u, 1
  %i.w = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.i, align 8, !tbaa !153
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aa = trunc nuw i8 %i.v to i1
  br i1 %i.aa, label %bb.ao, label %bb.j

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !153
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.as

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !844 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !233
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc32 unwind label %bb.ab

.noexc32:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !228
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.l
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc33 unwind label %bb.ab  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i31
  store ptr %i.am, ptr %4, align 8, !tbaa !151
  %i.an = load i64, ptr %i.c, align 8, !tbaa !228
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !153
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc33, %bb.l
  %i.ao = phi ptr [ %i.am, %.noexc33 ], [ %i.ai, %bb.l ] ; 2 uses
  switch i64 %i.ak, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i30
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !153
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %i.ah, i64 %i.ak, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i30
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %4, align 8, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.752") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1040) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !470, !range !177, !noundef !178
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  store i8 0, ptr %i.au, align 8, !tbaa !470
  br i1 %i.aw, label %bb.q, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !256 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !257
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.be = load ptr, ptr %3, align 8, !tbaa !260   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !261
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #25
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, %bb.s
  %i.bk = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ai
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !153
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.aw, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !844 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.bp, ptr %6, align 8, !tbaa !233
  %i.bq = icmp eq ptr %i.bo, null
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc40 unwind label %bb.ad

.noexc40:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.br, ptr %i.b, align 8, !tbaa !228
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i39, label %._crit_edge.i.i38

.noexc.i39:                                       ; preds = %bb.v
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc41 unwind label %bb.ad  ; 2 uses

.noexc41:                                         ; preds = %.noexc.i39
  store ptr %i.bt, ptr %6, align 8, !tbaa !151
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !228
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !153
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %.noexc41, %bb.v
  %i.bv = phi ptr [ %i.bt, %.noexc41 ], [ %i.bp, %bb.v ] ; 2 uses
  switch i64 %i.br, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i38
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !153
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !153
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bo, i64 %i.br, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i38
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !228 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !152
  %i.bz = load ptr, ptr %6, align 8, !tbaa !151
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.cb, align 8, !tbaa !404
  store i32 32, ptr %5, align 8, !tbaa !155
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !233
  %i.ce = load ptr, ptr %6, align 8, !tbaa !151   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bp
  br i1 %i.cf, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !152 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.ci, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !151
  %i.cj = load i64, ptr %i.bp, align 8, !tbaa !153
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !153
  %.pre79 = load i64, ptr %i.by, align 8, !tbaa !152
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ck = phi i64 [ %i.cg, %bb.z ], [ %.pre79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !152
  store ptr %i.bp, ptr %6, align 8, !tbaa !151
  store i64 0, ptr %i.by, align 8, !tbaa !152
  store i8 0, ptr %i.bp, align 8, !tbaa !153
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 1, ptr %i.cm, align 8, !tbaa !404
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !131 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 856
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat unwind label %bb.ae ; 0 uses

_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.cs = load i32, ptr %5, align 8, !tbaa !155
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !32
  invoke void %i.cv(ptr noundef nonnull %i.cc)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern45 unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern45: ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat
  %i.cy = load ptr, ptr %6, align 8, !tbaa !151   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bp
  br i1 %i.cz, label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern45
  %i.da = load i64, ptr %i.bp, align 8, !tbaa !153
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #25
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit

_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit:   ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ao

bb.ab:                                            ; preds = %.noexc.i31, %bb.k
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.ac:                                            ; preds = %bb.o
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %4, align 8, !tbaa !151   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ai
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.ac
  %i.dg = load i64, ptr %i.ai, align 8, !tbaa !153
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.ab
  %.pn19 = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.dd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.as

bb.ad:                                            ; preds = %.noexc.i39, %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54

end_hunk_7
begin_hunk_8_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE:bb.a

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern51: ; preds = %bb.ae
  %i.dq = load ptr, ptr %6, align 8, !tbaa !151   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.bp
  br i1 %i.dr, label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern51
  %i.ds = load i64, ptr %i.bp, align 8, !tbaa !153
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #25
  br label %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54

_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52, %bb.ad
  %.pn23 = phi { ptr, i32 } [ %i.di, %bb.ad ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52 ], [ %i.dj, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.as

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !844 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.dv, ptr %8, align 8, !tbaa !233
  %i.dw = icmp eq ptr %i.du, null
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc57 unwind label %bb.ap

.noexc57:                                         ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.dx, ptr %i.a, align 8, !tbaa !228
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.ai
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc58 unwind label %bb.ap  ; 2 uses

.noexc58:                                         ; preds = %.noexc.i56
  store ptr %i.dz, ptr %8, align 8, !tbaa !151
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !228
  store i64 %i.ea, ptr %i.dv, align 8, !tbaa !153
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc58, %bb.ai
  %i.eb = phi ptr [ %i.dz, %.noexc58 ], [ %i.dv, %bb.ai ] ; 2 uses
  switch i64 %i.dx, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i55
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !153
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !153
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr nonnull align 1 %i.du, i64 %i.dx, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i55
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !228 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !152
  %i.ef = load ptr, ptr %8, align 8, !tbaa !151
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.eh, align 8, !tbaa !327
  store i32 1, ptr %7, align 8, !tbaa !155
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !233
  %i.ek = load ptr, ptr %8, align 8, !tbaa !151   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

bb.am:                                            ; preds = %bb.al
  %i.em = load i64, ptr %i.ee, align 8, !tbaa !152 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.eo, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %bb.al
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !151
  %i.ep = load i64, ptr %i.dv, align 8, !tbaa !153
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !153
  %.pre = load i64, ptr %i.ee, align 8, !tbaa !152
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern62

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern62: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.eq = phi i64 [ %i.em, %bb.am ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60 ]
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !152
  store ptr %i.dv, ptr %8, align 8, !tbaa !151
  store i64 0, ptr %i.ee, align 8, !tbaa !152
  store i8 0, ptr %i.dv, align 8, !tbaa !153
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 1, ptr %i.es, align 8, !tbaa !327
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !131 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 856
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(136) %7)
          to label %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMism65 unwind label %bb.aq ; 0 uses

_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMism65: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern62
  %i.ey = load i32, ptr %7, align 8, !tbaa !155
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !32
  invoke void %i.fb(ptr noundef nonnull %i.ei)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern67 unwind label %bb.an

bb.an:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMism65
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern67: ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMism65
  %i.fe = load ptr, ptr %8, align 8, !tbaa !151   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.dv
  br i1 %i.ff, label %_ZN4Luau13UnknownSymbolD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern67
  %i.fg = load i64, ptr %i.dv, align 8, !tbaa !153
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit

_ZN4Luau13UnknownSymbolD2Ev.exit:                 ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4Luau13UnknownSymbolD2Ev.exit, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit
  ret void

bb.ap:                                            ; preds = %.noexc.i56, %bb.ah
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit74

bb.aq:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern62
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load i32, ptr %7, align 8, !tbaa !155
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !32
  invoke void %i.fn(ptr noundef nonnull %i.ei)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern71 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern71: ; preds = %bb.aq
  %i.fq = load ptr, ptr %8, align 8, !tbaa !151   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dv
  br i1 %i.fr, label %_ZN4Luau13UnknownSymbolD2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern71
  %i.fs = load i64, ptr %i.dv, align 8, !tbaa !153
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit74

_ZN4Luau13UnknownSymbolD2Ev.exit74:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72, %bb.ap
  %.pn21 = phi { ptr, i32 } [ %i.fi, %bb.ap ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72 ], [ %i.fj, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExtern71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.as

bb.as:                                            ; preds = %_ZN4Luau13UnknownSymbolD2Ev.exit74, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit54 ], [ %.pn21, %_ZN4Luau13UnknownSymbolD2Ev.exit74 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  resume { ptr, i32 } %.pn23.pn
}

declare { ptr, i8 } @_ZNK4Luau5Scope10lookupPackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.752") align 8, ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !470, !range !177, !noundef !178
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !470
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !256  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !257
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !260    ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !261
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau7TypeFunELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau16NonStrictContext11conjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Luau::SimplifyResult", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %0, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 1, ptr %i.c, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.024.039 = load ptr, ptr %i.g, align 8, !tbaa !145 ; 2 uses
  %.not40 = icmp eq ptr %.sroa.024.039, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.sroa.024.041 = phi ptr [ %.sroa.024.039, %.lr.ph ], [ %.sroa.024.0, %.thread ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.024.041, i64 8
  %.sroa.019.0.copyload = load ptr, ptr %i.l, align 8 ; 8 uses
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.024.041, i64 16
  %.sroa.722.0.copyload = load ptr, ptr %.sroa.722.0..sroa_idx, align 8
  %i.m = load i64, ptr %i.h, align 8, !tbaa !221
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220
  %i.p = icmp eq ptr %.sroa.019.0.copyload, %i.o
  br i1 %i.p, label %.loopexit31, label %.preheader, !llvm.loop !8

bb.d:                                             ; preds = %bb.b
  %i.q = ptrtoint ptr %.sroa.019.0.copyload to i64
  %i.r = load i64, ptr %i.i, align 8, !tbaa !147  ; 2 uses
  %i.s = urem i64 %i.q, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !146
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !222  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !145  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220
  %i.z = icmp eq ptr %.sroa.019.0.copyload, %i.y
  br i1 %i.z, label %.loopexit31, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.aa = icmp eq ptr %.sroa.019.0.copyload, %i.ad
  br i1 %i.aa, label %.loopexit31, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.w, %bb.e ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !145 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !220 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.r
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.thread, !llvm.loop !5

.loopexit31:                                      ; preds = %bb.f, %bb.c, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.w, %bb.e ], [ %i.ab, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN4Luau20simplifyIntersectionENS_7NotNullINS_12BuiltinTypesEEENS0_INS_9TypeArenaEEEPKNS_4TypeES7_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::SimplifyResult") align 8 %5, ptr %1, ptr %2, ptr noundef %.sroa.722.0.copyload, ptr noundef %i.ah)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.loopexit31
  %i.ai = load ptr, ptr %5, align 8, !tbaa !316
  %i.aj = ptrtoint ptr %.sroa.019.0.copyload to i64 ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !147 ; 2 uses
  %i.al = urem i64 %i.aj, %i.ak                   ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !146
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !222 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !145 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !220
  %i.as = icmp eq ptr %.sroa.019.0.copyload, %i.ar
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.at = icmp eq ptr %.sroa.019.0.copyload, %i.aw
  br i1 %i.at, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.au, %bb.j ], [ %i.ap, %bb.i ]
  %i.au = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !145 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !220 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = urem i64 %i.ax, %i.ak
  %.not19.i.i.i.i = icmp eq i64 %i.ay, %i.al
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %.loopexit.i.i, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.h
  %i.az = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc unwind label %bb.n     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.az, align 8, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.019.0.copyload, ptr %i.ba, align 8, !tbaa !318
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr null, ptr %i.bb, align 8, !tbaa !319
  %i.bc = invoke ptr @_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.al, i64 noundef %i.aj, ptr noundef nonnull %i.az, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 24) #25
  br label %.body

.loopexit:                                        ; preds = %bb.j, %.noexc, %bb.i
  %.pn.i.i = phi ptr [ %i.bc, %.noexc ], [ %i.ap, %bb.i ], [ %i.au, %bb.j ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.ai, ptr %.1.i.i, align 8, !tbaa !234
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i16, label %_ZN4Luau14SimplifyResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef nonnull %i.be) #23
  br label %_ZN4Luau14SimplifyResultD2Ev.exit
end_hunk_8
begin_hunk_9_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_16AstTypeReferenceE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.dx
  %i.wp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %i.wm, i64 noundef %i.wn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.dy ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.wq = load i64, ptr %i.wj, align 8, !tbaa !152
  %i.wr = icmp eq i64 %i.wq, 4611686018427387903
  br i1 %i.wr, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ws = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.76, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414_crit_edge unwind label %bb.dy ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411
  %.pre = load i64, ptr %i.wj, align 8, !tbaa !152
  %i.wt = sub i64 4611686018427387903, %.pre
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414

bb.dy:                                            ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414_crit_edge, %._crit_edge.i.i405
  %i.wv = phi i64 [ %i.wt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i411._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414_crit_edge ], [ 4611686018427387903, %._crit_edge.i.i405 ]
  %i.ww = load ptr, ptr %i.th, align 8, !tbaa !853 ; 2 uses
  %i.wx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ww) #23 ; 2 uses
  %i.wy = icmp ult i64 %i.wv, %i.wx
  br i1 %i.wy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i415

.invoke:                                          ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #26
          to label %.cont unwind label %bb.dy

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit414
  %i.wz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %i.ww, i64 noundef %i.wx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit418 unwind label %bb.dy ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i415
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.xa = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 12 uses
  %i.xb = load ptr, ptr %16, align 8, !tbaa !151  ; 3 uses
  %i.xc = icmp eq ptr %i.xb, %i.wi
  br i1 %i.xc, label %bb.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit418
  %i.xd = load i64, ptr %i.wj, align 8, !tbaa !152 ; 3 uses
  %i.xe = icmp ult i64 %i.xd, 16
  call void @llvm.assume(i1 %i.xe)
  %i.xf = add nuw nsw i64 %i.xd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xa, ptr noundef nonnull align 8 dereferenceable(1) %i.wi, i64 %i.xf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit418
  store ptr %i.xb, ptr %18, align 8, !tbaa !151
  %i.xg = load i64, ptr %i.wi, align 8, !tbaa !153
  store i64 %i.xg, ptr %i.xa, align 8, !tbaa !153
  %.pre553 = load i64, ptr %i.wj, align 8, !tbaa !152
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.xh = phi ptr [ %i.xa, %bb.dz ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.xi = phi i64 [ %i.xd, %bb.dz ], [ %.pre553, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.wi, ptr %16, align 8, !tbaa !151
  store i64 0, ptr %i.wj, align 8, !tbaa !152
  store i8 0, ptr %i.wi, align 8, !tbaa !153
  %i.xk = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 1, ptr %i.xk, align 8, !tbaa !327
  store i32 1, ptr %17, align 8, !tbaa !155
  %i.xl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  store ptr %i.xm, ptr %i.xl, align 8, !tbaa !233
  %i.xn = icmp eq ptr %i.xh, %i.xa
  br i1 %i.xn, label %bb.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.xo = icmp ult i64 %i.xi, 16
  call void @llvm.assume(i1 %i.xo)
  %i.xp = add nuw nsw i64 %i.xi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xm, ptr noundef nonnull align 8 dereferenceable(1) %i.xa, i64 %i.xp, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.xh, ptr %i.xl, align 8, !tbaa !151
  %i.xq = load i64, ptr %i.xa, align 8, !tbaa !153
  store i64 %i.xq, ptr %i.xm, align 8, !tbaa !153
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter421

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter421: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419
  %i.xr = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 %i.xi, ptr %i.xr, align 8, !tbaa !152
  store ptr %i.xa, ptr %18, align 8, !tbaa !151
  store i64 0, ptr %i.xj, align 8, !tbaa !152
  store i8 0, ptr %i.xa, align 8, !tbaa !153
  %i.xs = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i32 1, ptr %i.xs, align 8, !tbaa !327
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !131 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 856
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xx = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.xv, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.xw, ptr noundef nonnull align 8 dereferenceable(136) %17)
          to label %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMis424 unwind label %bb.ec ; 0 uses

_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMis424: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter421
  %i.xy = load i32, ptr %17, align 8, !tbaa !155
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.xz
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !32
  invoke void %i.yb(ptr noundef nonnull %i.xl)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter426 unwind label %bb.eb

bb.eb:                                            ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMis424
  %i.yc = landingpad { ptr, i32 }
          catch ptr null
  %i.yd = extractvalue { ptr, i32 } %i.yc, 0
  call void @__clang_call_terminate(ptr %i.yd) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter426: ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMis424
  %i.ye = load ptr, ptr %18, align 8, !tbaa !151  ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.xa
  br i1 %i.yf, label %_ZN4Luau13UnknownSymbolD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter426
  %i.yg = load i64, ptr %i.xa, align 8, !tbaa !153
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit

_ZN4Luau13UnknownSymbolD2Ev.exit:                 ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter426, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i427
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.yi = load ptr, ptr %16, align 8, !tbaa !151  ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.wi
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZN4Luau13UnknownSymbolD2Ev.exit
  %i.yk = load i64, ptr %i.wi, align 8, !tbaa !153
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZN4Luau13UnknownSymbolD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ef

bb.ec:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter421
  %i.ym = landingpad { ptr, i32 }
          cleanup
  %i.yn = load i32, ptr %17, align 8, !tbaa !155
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.yo
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !32
  invoke void %i.yq(ptr noundef nonnull %i.xl)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter433 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  %i.ys = extractvalue { ptr, i32 } %i.yr, 0
  call void @__clang_call_terminate(ptr %i.ys) #24
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter433: ; preds = %bb.ec
  %i.yt = load ptr, ptr %18, align 8, !tbaa !151  ; 2 uses
  %i.yu = icmp eq ptr %i.yt, %i.xa
  br i1 %i.yu, label %_ZN4Luau13UnknownSymbolD2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i434: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter433
  %i.yv = load i64, ptr %i.xa, align 8, !tbaa !153
  %i.yw = add i64 %i.yv, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yw) #25
  br label %_ZN4Luau13UnknownSymbolD2Ev.exit436

_ZN4Luau13UnknownSymbolD2Ev.exit436:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter433, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN4Luau13UnknownSymbolD2Ev.exit436, %bb.dy
  %.pn205 = phi { ptr, i32 } [ %i.ym, %_ZN4Luau13UnknownSymbolD2Ev.exit436 ], [ %i.wu, %bb.dy ]
  %i.yx = load ptr, ptr %16, align 8, !tbaa !151  ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.wi
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.ee
  %i.yz = load i64, ptr %i.wi, align 8, !tbaa !153
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ej

bb.ef:                                            ; preds = %_ZN4Luau30IncorrectGenericParameterCountD2Ev.exit, %._crit_edge538, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431
  %i.zb = load i8, ptr %i.di, align 8, !tbaa !470, !range !177, !noundef !178
  %i.zc = trunc nuw i8 %i.zb to i1
  store i8 0, ptr %i.di, align 8, !tbaa !470
  br i1 %i.zc, label %bb.eg, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  %i.zd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !256 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.zf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !257
  %i.zh = ptrtoint ptr %i.zg to i64
  %i.zi = ptrtoint ptr %i.ze to i64
  %i.zj = sub i64 %i.zh, %i.zi
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zj) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.eh, %bb.eg
  %i.zk = load ptr, ptr %3, align 8, !tbaa !260   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.zk, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.zl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !261
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zp) #25
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit: ; preds = %bb.ef, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %_ZN4Luau20NonStrictTypeChecker11reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismat, %_ZNK4Luau7AstNameeqEPKc.exit, %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit
  ret void

bb.ej:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZN4Luau12GenericErrorD2Ev.exit348, %_ZN4Luau12GenericErrorD2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %.pn223.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.pn208, %_ZN4Luau27SwappedGenericTypeParameterD2Ev.exit404 ], [ %.pn205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ], [ %.pn223, %_ZN4Luau12GenericErrorD2Ev.exit348 ], [ %i.mx, %bb.ck ], [ %.pn210, %_ZN4Luau12GenericErrorD2Ev.exit328 ], [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ]
  call void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #23
  br label %.critedge253

.critedge253:                                     ; preds = %.critedge250, %.critedge252, %bb.ej
  %.pn223.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn223.pn.pn.pn.pn.pn, %bb.ej ], [ %.pn199.pn.pn.ph, %.critedge252 ], [ %.pn, %.critedge250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter262

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter262: ; preds = %bb.e, %.critedge253
  %.pn232 = phi { ptr, i32 } [ %.pn223.pn.pn.pn.pn.pn.pn, %.critedge253 ], [ %i.ad, %bb.e ]
  resume { ptr, i32 } %.pn232
}

declare void @_ZNK4Luau5Scope18lookupImportedTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.std::optional.752") align 8, ptr noundef nonnull align 8 dereferenceable(1040), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4Luau13simplifyUnionENS_7NotNullINS_12BuiltinTypesEEENS0_INS_9TypeArenaEEEPKNS_4TypeES7_(ptr dead_on_unwind writable sret(%"struct.Luau::SimplifyResult") align 8, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_9AstStatIfE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 16 uses
  %5 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %6 = alloca %"struct.Luau::NonStrictContext", align 8 ; 11 uses
  %7 = alloca %"struct.Luau::NonStrictContext", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !875
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %3, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.b, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 1, ptr %i.d, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !876
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatBlockE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %5, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.i)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !877  ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstStatE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %6, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.k)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !50
  invoke void @_ZN4Luau16NonStrictContext11conjunctionENS_7NotNullINS_12BuiltinTypesEEENS1_INS_9TypeArenaEEERKS0_S7_(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %7, ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %i.o = load ptr, ptr %4, align 8, !tbaa !146    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i
  %i.q = load i64, ptr %i.d, align 8, !tbaa !147
  %i.r = shl i64 %i.q, 3
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4Luau3DefEPKNS3_4TypeEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !229
  %i.t = load ptr, ptr %7, align 8, !tbaa !146    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !230
  store ptr %i.w, ptr %i.c, align 8, !tbaa !230
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i
  %i.x = phi ptr [ %i.c, %bb.g ], [ %i.t, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i.i ] ; 2 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !146
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !147  ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !144 ; 3 uses
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !221
  %.not.i12.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i12.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !220
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.z
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ai
  store ptr %i.e, ptr %i.aj, align 8, !tbaa !222
  br label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i20 = icmp eq ptr %i.al, null
  br i1 %.not5.i.i.i.i.i20, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i24, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %.lr.ph.i.i.i.i.i21
  %.06.i.i.i.i.i22 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i21 ], [ %i.al, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.06.i.i.i.i.i22, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i22, i64 noundef 24) #25
  %.not.i.i.i.i.i23 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i24, label %.lr.ph.i.i.i.i.i21, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i21, %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.an = load ptr, ptr %6, align 8, !tbaa !146
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !147
  %i.aq = shl i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.aq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %6, align 8, !tbaa !146   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN4Luau16NonStrictContextD2Ev.exit25, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i24
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !147
  %i.av = shl i64 %i.au, 3
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit25

end_hunk_9
