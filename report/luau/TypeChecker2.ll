Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeChecker2?download=true
inline.NumInlined: 6974
inline.NumDeleted: 2658
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4Luau12TypeChecker25visitEPNS_16AstTypeReferenceE:bb.a
  br i1 %i.hy, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  %i.hz = add nuw i64 %.0122506, 1
  br label %.thread460

bb.bj:                                            ; preds = %bb.bg
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.critedge:                                        ; preds = %bb.bf, %bb.bd, %bb.bb, %bb.bh
  %i.ib = add i64 %.0118508, 1
  br label %.thread460

.thread460:                                       ; preds = %bb.ay, %bb.ax, %bb.at, %bb.au, %.critedge, %bb.bi, %bb.ar, %bb.aq, %bb.as, %_ZN4Luau12GenericErrorD2Ev.exit
  %.4126 = phi i64 [ %.0122506, %_ZN4Luau12GenericErrorD2Ev.exit ], [ %.0122506, %bb.as ], [ %i.go, %bb.aq ], [ %.0122506, %bb.ar ], [ %.0122506, %.critedge ], [ %i.hz, %bb.bi ], [ %.0122506, %bb.at ], [ %.0122506, %bb.au ], [ %.0122506, %bb.ax ], [ %.0122506, %bb.ay ] ; 3 uses
  %.2121 = phi i64 [ %.0119507, %_ZN4Luau12GenericErrorD2Ev.exit ], [ %.0119507, %bb.as ], [ %.0119507, %bb.aq ], [ %i.gp, %bb.ar ], [ %.0119507, %.critedge ], [ %.0119507, %bb.bi ], [ %.0119507, %bb.at ], [ %.0119507, %bb.au ], [ %.0119507, %bb.ax ], [ %.0119507, %bb.ay ] ; 3 uses
  %.4 = phi i64 [ %.0118508, %_ZN4Luau12GenericErrorD2Ev.exit ], [ %.0118508, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.ib, %.critedge ], [ %.0118508, %bb.bi ], [ %.0118508, %bb.at ], [ %.0118508, %bb.au ], [ %.0118508, %bb.ax ], [ %.0118508, %bb.ay ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0117509, i64 16 ; 2 uses
  %.not202 = icmp eq ptr %i.ic, %i.dv
  br i1 %.not202, label %._crit_edge512, label %bb.ah

.noexc.i295:                                      ; preds = %._crit_edge512
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.id, ptr %9, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 53, ptr %i.d, align 8, !tbaa !230
  %i.ie = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc296 unwind label %bb.bn ; 3 uses

.noexc296:                                        ; preds = %.noexc.i295
  store ptr %i.ie, ptr %9, align 8, !tbaa !117
  %i.if = load i64, ptr %i.d, align 8, !tbaa !230 ; 3 uses
  store i64 %i.if, ptr %i.id, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.ie, ptr noundef nonnull align 1 dereferenceable(53) @.str.107, i64 53, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !229
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  store i8 0, ptr %i.ih, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  store i32 18, ptr %8, align 8, !tbaa !317
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !228
  %i.ik = load ptr, ptr %9, align 8, !tbaa !117   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.id
  br i1 %i.il, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298

bb.bk:                                            ; preds = %.noexc296
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !229 ; 3 uses
  %i.in = icmp ult i64 %i.im, 16
  call void @llvm.assume(i1 %i.in)
  %i.io = add nuw nsw i64 %i.im, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ij, ptr noundef nonnull align 8 dereferenceable(1) %i.id, i64 %i.io, i1 false)
  br label %_ZN4Luau6get_ifINS_15UnknownPropertyEJNS_12TypeMismatchENS_13UnknownSymbolES1_NS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExt302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298: ; preds = %.noexc296
  store ptr %i.ik, ptr %i.ii, align 8, !tbaa !117
  %i.ip = load i64, ptr %i.id, align 8, !tbaa !33
  store i64 %i.ip, ptr %i.ij, align 8, !tbaa !33
  %.pre533 = load i64, ptr %i.ig, align 8, !tbaa !229
  br label %_ZN4Luau6get_ifINS_15UnknownPropertyEJNS_12TypeMismatchENS_13UnknownSymbolES1_NS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExt302

_ZN4Luau6get_ifINS_15UnknownPropertyEJNS_12TypeMismatchENS_13UnknownSymbolES1_NS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExt302: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298, %bb.bk
  %i.iq = phi i64 [ %.pre533, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i298 ], [ %i.im, %bb.bk ]
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !229
  store ptr %i.id, ptr %9, align 8, !tbaa !117
  store i64 0, ptr %i.ig, align 8, !tbaa !229
  store i8 0, ptr %i.id, align 8, !tbaa !33
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !223 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 856
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iw = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.iv, ptr noundef nonnull align 8 dereferenceable(136) %8)
          to label %.noexc307 unwind label %bb.bo ; 0 uses

.noexc307:                                        ; preds = %_ZN4Luau6get_ifINS_15UnknownPropertyEJNS_12TypeMismatchENS_13UnknownSymbolES1_NS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExt302
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !134 ; 2 uses
  %.not5.i303 = icmp eq ptr %i.iy, null
  br i1 %.not5.i303, label %_ZN4Luau12TypeChecker211reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS310, label %bb.bl

bb.bl:                                            ; preds = %.noexc307
  %i.iz = load ptr, ptr %i.is, align 8, !tbaa !223
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 864
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !319
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -184
  invoke void @_ZN4Luau9DcrLogger21captureTypeCheckErrorERKNS_9TypeErrorE(ptr noundef nonnull align 8 dereferenceable(944) %i.iy, ptr noundef nonnull align 8 dereferenceable(184) %i.jc)
          to label %_ZN4Luau12TypeChecker211reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS310 unwind label %bb.bo

_ZN4Luau12TypeChecker211reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS310: ; preds = %.noexc307, %bb.bl
  %i.jd = load i32, ptr %8, align 8, !tbaa !317
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !17
  invoke void %i.jg(ptr noundef nonnull %i.ii)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter312 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZN4Luau12TypeChecker211reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS310
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter312: ; preds = %_ZN4Luau12TypeChecker211reportErrorENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS310
  %i.jj = load ptr, ptr %9, align 8, !tbaa !117   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.id
  br i1 %i.jk, label %_ZN4Luau12GenericErrorD2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter312
  %i.jl = load i64, ptr %i.id, align 8, !tbaa !33
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #33
  br label %_ZN4Luau12GenericErrorD2Ev.exit315

_ZN4Luau12GenericErrorD2Ev.exit315:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %._crit_edge512.thread

bb.bn:                                            ; preds = %.noexc.i295
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit320

bb.bo:                                            ; preds = %bb.bl, %_ZN4Luau6get_ifINS_15UnknownPropertyEJNS_12TypeMismatchENS_13UnknownSymbolES1_NS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExt302
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load i32, ptr %8, align 8, !tbaa !317
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !17
  invoke void %i.js(ptr noundef nonnull %i.ii)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter317 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #32
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter317: ; preds = %bb.bo
  %i.jv = load ptr, ptr %9, align 8, !tbaa !117   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.id
  br i1 %i.jw, label %_ZN4Luau12GenericErrorD2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter317
  %i.jx = load i64, ptr %i.id, align 8, !tbaa !33
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #33
  br label %_ZN4Luau12GenericErrorD2Ev.exit320

_ZN4Luau12GenericErrorD2Ev.exit320:               ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318, %bb.bn
  %.pn203 = phi { ptr, i32 } [ %i.jn, %bb.bn ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i318 ], [ %i.jo, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter317 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.du

._crit_edge512.thread:                            ; preds = %bb.ab, %_ZN4Luau12GenericErrorD2Ev.exit315, %._crit_edge512
  %i.jz = phi i1 [ %i.ef, %._crit_edge512 ], [ %i.ef, %_ZN4Luau12GenericErrorD2Ev.exit315 ], [ false, %bb.ab ]
  %.0118.lcssa640 = phi i64 [ %.4, %._crit_edge512 ], [ %.4, %_ZN4Luau12GenericErrorD2Ev.exit315 ], [ 0, %bb.ab ]
  %.0119.lcssa639 = phi i64 [ %.2121, %._crit_edge512 ], [ %.2121, %_ZN4Luau12GenericErrorD2Ev.exit315 ], [ 0, %bb.ab ] ; 2 uses
  %.0122.lcssa638 = phi i64 [ %.4126, %._crit_edge512 ], [ 0, %_ZN4Luau12GenericErrorD2Ev.exit315 ], [ 0, %bb.ab ] ; 3 uses
  %i.ka = icmp eq i64 %.0119.lcssa639, 0          ; 2 uses
  %or.cond5.not471 = select i1 %i.ka, i1 true, i1 %i.jz ; 2 uses
  %.not205 = icmp ne ptr %i.dn, %i.do             ; 2 uses
  %spec.select246 = zext i1 %.not205 to i64
  %.not468 = select i1 %or.cond5.not471, i1 true, i1 %.not205
  %spec.select245 = select i1 %.not468, i64 0, i64 %.0119.lcssa639 ; 3 uses
  %.5127 = add i64 %spec.select245, %.0122.lcssa638 ; 6 uses
  %.5 = select i1 %or.cond5.not471, i64 %.0118.lcssa640, i64 %spec.select246 ; 8 uses
  %i.kb = icmp ult i64 %.5127, %i.dk
  br i1 %i.kb, label %.lr.ph518, label %.preheader

.lr.ph518:                                        ; preds = %._crit_edge512.thread
  %i.kc = load ptr, ptr %2, align 8, !tbaa !1231  ; 5 uses
  %i.kd = add i64 %spec.select245, %.0122.lcssa638
  %i.ke = sub i64 %i.dk, %i.kd
  %xtraiter = and i64 %i.ke, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph518, %.prol.preheader
  %.0115516.prol = phi i64 [ %i.kj, %.prol.preheader ], [ %.5127, %.lr.ph518 ] ; 2 uses
  %.6128515.prol = phi i64 [ %spec.select.prol, %.prol.preheader ], [ %.5127, %.lr.ph518 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph518 ]
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0115516.prol
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !350, !range !99, !noundef !100
  %i.ki = zext nneg i8 %i.kh to i64
  %spec.select.prol = add i64 %.6128515.prol, %i.ki ; 3 uses
  %i.kj = add nuw i64 %.0115516.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1236

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph518
  %.0115516.unr.a = phi i64 [ %.5127, %.lr.ph518 ], [ %i.kj, %.prol.preheader ]
  %.6128515.unr.a = phi i64 [ %.5127, %.lr.ph518 ], [ %spec.select.prol, %.prol.preheader ]
  %spec.select.lcssa.unr = phi i64 [ poison, %.lr.ph518 ], [ %spec.select.prol, %.prol.preheader ]
  %i.kk = sub i64 %spec.select245, %i.dk
  %i.kl = add i64 %i.kk, %.0122.lcssa638
  %i.km = icmp ugt i64 %i.kl, -4
  br i1 %i.km, label %.preheader, label %.lr.ph518.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph518.new, %._crit_edge512.thread
  %.6128.lcssa = phi i64 [ %.5127, %._crit_edge512.thread ], [ %spec.select.lcssa.unr, %.prol.loopexit ], [ %spec.select.3, %.lr.ph518.new ] ; 2 uses
  %i.kn = icmp ult i64 %.5, %i.ds
  br i1 %i.kn, label %.lr.ph522, label %._crit_edge523

.lr.ph522:                                        ; preds = %.preheader
  %i.ko = load ptr, ptr %i.dl, align 8, !tbaa !1235 ; 5 uses
  %i.kp = sub nuw i64 %i.ds, %.5
  %xtraiter652 = and i64 %i.kp, 3                 ; 2 uses
  %lcmp.mod653.not = icmp eq i64 %xtraiter652, 0
  br i1 %lcmp.mod653.not, label %.prol.loopexit651, label %.prol.preheader650

.prol.preheader650:                               ; preds = %.lr.ph522, %.prol.preheader650
  %.0521.prol = phi i64 [ %i.ku, %.prol.preheader650 ], [ %.5, %.lr.ph522 ] ; 2 uses
  %.6520.prol = phi i64 [ %spec.select242.prol, %.prol.preheader650 ], [ %.5, %.lr.ph522 ]
  %prol.iter654 = phi i64 [ %prol.iter654.next, %.prol.preheader650 ], [ 0, %.lr.ph522 ]
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0521.prol
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i8, ptr %i.kr, align 8, !tbaa !506, !range !99, !noundef !100
  %i.kt = zext nneg i8 %i.ks to i64
  %spec.select242.prol = add i64 %.6520.prol, %i.kt ; 3 uses
  %i.ku = add nuw i64 %.0521.prol, 1              ; 2 uses
  %prol.iter654.next = add i64 %prol.iter654, 1   ; 2 uses
  %prol.iter654.cmp.not = icmp eq i64 %prol.iter654.next, %xtraiter652
  br i1 %prol.iter654.cmp.not, label %.prol.loopexit651, label %.prol.preheader650, !llvm.loop !1238

.prol.loopexit651:                                ; preds = %.prol.preheader650, %.lr.ph522
  %spec.select242.lcssa.unr = phi i64 [ poison, %.lr.ph522 ], [ %spec.select242.prol, %.prol.preheader650 ]
  %.0521.unr = phi i64 [ %.5, %.lr.ph522 ], [ %i.ku, %.prol.preheader650 ]
  %.6520.unr = phi i64 [ %.5, %.lr.ph522 ], [ %spec.select242.prol, %.prol.preheader650 ]
  %i.kv = sub i64 %.5, %i.ds
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %._crit_edge523, label %.lr.ph522.new

.lr.ph518.new:                                    ; preds = %.prol.loopexit, %.lr.ph518.new
  %.0115516 = phi i64 [ %i.ln, %.lr.ph518.new ], [ %.0115516.unr.a, %.prol.loopexit ] ; 5 uses
  %.6128515 = phi i64 [ %spec.select.3, %.lr.ph518.new ], [ %.6128515.unr.a, %.prol.loopexit ]
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0115516
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !350, !range !99, !noundef !100
  %i.la = zext nneg i8 %i.kz to i64
  %spec.select = add i64 %.6128515, %i.la
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0115516
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !350, !range !99, !noundef !100
  %i.le = zext nneg i8 %i.ld to i64
  %spec.select.1 = add i64 %spec.select, %i.le
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0115516
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !350, !range !99, !noundef !100
  %i.li = zext nneg i8 %i.lh to i64
  %spec.select.2 = add i64 %spec.select.1, %i.li
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %.0115516
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !350, !range !99, !noundef !100
  %i.lm = zext nneg i8 %i.ll to i64
  %spec.select.3 = add i64 %spec.select.2, %i.lm  ; 2 uses
  %i.ln = add nuw i64 %.0115516, 4                ; 2 uses
  %18 = icmp ult i64 %i.ln, %i.dk
  br i1 %18, label %.lr.ph518.new, label %.preheader, !llvm.loop !1239

._crit_edge523:                                   ; preds = %.prol.loopexit651, %.lr.ph522.new, %.preheader
  %.6.lcssa = phi i64 [ %.5, %.preheader ], [ %spec.select242.lcssa.unr, %.prol.loopexit651 ], [ %spec.select242.3, %.lr.ph522.new ] ; 3 uses
  %i.lo = add i64 %.6.lcssa, 1
  %i.lp = icmp eq i64 %i.lo, %i.ds
  %or.cond473 = select i1 %i.ka, i1 %i.lp, i1 false
  br i1 %or.cond473, label %bb.bq, label %bb.br

.lr.ph522.new:                                    ; preds = %.prol.loopexit651, %.lr.ph522.new
  %.0521 = phi i64 [ %i.mg, %.lr.ph522.new ], [ %.0521.unr, %.prol.loopexit651 ] ; 5 uses
  %.6520 = phi i64 [ %spec.select242.3, %.lr.ph522.new ], [ %.6520.unr, %.prol.loopexit651 ]
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0521
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !506, !range !99, !noundef !100
  %i.lt = zext nneg i8 %i.ls to i64
  %spec.select242 = add i64 %.6520, %i.lt
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0521
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !506, !range !99, !noundef !100
  %i.lx = zext nneg i8 %i.lw to i64
  %spec.select242.1 = add i64 %spec.select242, %i.lx
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0521
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !506, !range !99, !noundef !100
  %i.mb = zext nneg i8 %i.ma to i64
  %spec.select242.2 = add i64 %spec.select242.1, %i.mb
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %.0521
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 88
  %i.me = load i8, ptr %i.md, align 8, !tbaa !506, !range !99, !noundef !100
  %i.mf = zext nneg i8 %i.me to i64
  %spec.select242.3 = add i64 %spec.select242.2, %i.mf ; 2 uses
  %i.mg = add nuw i64 %.0521, 4                   ; 2 uses
  %exitcond.not.3.a = icmp eq i64 %i.mg, %i.ds
  br i1 %exitcond.not.3.a, label %._crit_edge523, label %.lr.ph522.new, !llvm.loop !1240

bb.bq:                                            ; preds = %._crit_edge523
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mi = load i8, ptr %i.mh, align 4, !tbaa !1241, !range !99, !noundef !100
  %i.mj = zext nneg i8 %i.mi to i64
  %spec.select243 = add i64 %.6.lcssa, %i.mj
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge523
  %.8 = phi i64 [ %.6.lcssa, %._crit_edge523 ], [ %spec.select243, %bb.bq ] ; 2 uses
  %.not206 = icmp eq i64 %.6128.lcssa, %i.dk
  %.not207 = icmp eq i64 %.8, %i.ds
  %or.cond244 = select i1 %.not206, i1 %.not207, i1 false
  br i1 %or.cond244, label %bb.dp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1225 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  store ptr %i.mm, ptr %11, align 8, !tbaa !228
  %i.mn = icmp eq ptr %i.ml, null
  br i1 %i.mn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.127) #34
          to label %.noexc323 unwind label %bb.ch

.noexc323:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.mo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ml) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 %i.mo, ptr %i.c, align 8, !tbaa !230
  %i.mp = icmp ugt i64 %i.mo, 15
  br i1 %i.mp, label %.noexc.i322, label %._crit_edge.i.i321

.noexc.i322:                                      ; preds = %bb.bu
  %i.mq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc324 unwind label %bb.ch ; 2 uses

.noexc324:                                        ; preds = %.noexc.i322
  store ptr %i.mq, ptr %11, align 8, !tbaa !117
  %i.mr = load i64, ptr %i.c, align 8, !tbaa !230
  store i64 %i.mr, ptr %i.mm, align 8, !tbaa !33
  br label %._crit_edge.i.i321

._crit_edge.i.i321:                               ; preds = %.noexc324, %bb.bu
  %i.ms = phi ptr [ %i.mq, %.noexc324 ], [ %i.mm, %bb.bu ] ; 2 uses
  switch i64 %i.mo, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i321
  %i.mt = load i8, ptr %i.ml, align 1, !tbaa !33
  store i8 %i.mt, ptr %i.ms, align 1, !tbaa !33
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i321
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr nonnull align 1 %i.ml, i64 %i.mo, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i321
  %i.mu = load i64, ptr %i.c, align 8, !tbaa !230 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 %i.mu, ptr %i.mv, align 8, !tbaa !229
  %i.mw = load ptr, ptr %11, align 8, !tbaa !117
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mu
  store i8 0, ptr %i.mx, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.my = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.mz = load ptr, ptr %i.de, align 8, !tbaa !1228 ; 3 uses
  %i.na = load ptr, ptr %2, align 8, !tbaa !1231  ; 3 uses
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.my, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.mz, %i.na
  br i1 %.not.i.i.i.i.i, label %.noexc328, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ne = sdiv exact i64 %i.nd, 24
  %i.nf = icmp ugt i64 %i.ne, 384307168202282325
  br i1 %i.nf, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i.i:                                     ; preds = %bb.by
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc327 unwind label %bb.ci

.noexc327:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.by
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #35
          to label %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge unwind label %bb.ci

_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre534 = load ptr, ptr %2, align 8, !tbaa !1242
  %.pre535 = load ptr, ptr %i.de, align 8, !tbaa !1242
  br label %.noexc328

.noexc328:                                        ; preds = %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge, %bb.bx
  %i.nh = phi ptr [ %i.mz, %bb.bx ], [ %.pre535, %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge ] ; 2 uses
  %i.ni = phi ptr [ %i.na, %bb.bx ], [ %.pre534, %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge ] ; 2 uses
  %i.nj = phi ptr [ null, %bb.bx ], [ %i.ng, %_ZNSt15__new_allocatorIN4Luau21GenericTypeDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc328_crit_edge ] ; 5 uses
  store ptr %i.nj, ptr %i.my, align 8, !tbaa !1231
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.nj, ptr %i.nk, align 8, !tbaa !1228
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nd
  %i.nm = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !1243
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ni, %i.nh
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc328, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i.i ], [ %i.nj, %.noexc328 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i.i ], [ %i.ni, %.noexc328 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nn, %i.nh
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1244

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc328
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nj, %.noexc328 ], [ %i.no, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.nk, align 8, !tbaa !1228
  %i.np = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.nq = load ptr, ptr %i.dm, align 8, !tbaa !1232 ; 3 uses
  %i.nr = load ptr, ptr %i.dl, align 8, !tbaa !1235 ; 3 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.np, i8 0, i64 24, i1 false)
  %.not.i.i.i.i5.i = icmp eq ptr %i.nq, %i.nr
  br i1 %.not.i.i.i.i5.i, label %.noexc13.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i
  %i.nv = sdiv exact i64 %i.nu, 24
  %i.nw = icmp ugt i64 %i.nv, 384307168202282325
  br i1 %i.nw, label %.noexc.i.i12.i, label %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i12.i:                                   ; preds = %bb.bz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc.i326 unwind label %bb.ca

.noexc.i326:                                      ; preds = %.noexc.i.i12.i
  unreachable

_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nu) #35
          to label %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge unwind label %bb.ca

_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre536 = load ptr, ptr %i.dl, align 8, !tbaa !1245
  %.pre537 = load ptr, ptr %i.dm, align 8, !tbaa !1245
  br label %.noexc13.i

.noexc13.i:                                       ; preds = %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i
  %i.ny = phi ptr [ %i.nq, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i ], [ %.pre537, %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge ] ; 2 uses
  %i.nz = phi ptr [ %i.nr, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i ], [ %.pre536, %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge ] ; 2 uses
  %i.oa = phi ptr [ null, %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEC2ERKS3_.exit.i ], [ %i.nx, %_ZNSt15__new_allocatorIN4Luau25GenericTypePackDefinitionEE8allocateEmPKv.exit.i.i.i.i.i..noexc13.i_crit_edge ] ; 6 uses
  store ptr %i.oa, ptr %i.np, align 8, !tbaa !1235
  %i.ob = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !1232
end_hunk_0
