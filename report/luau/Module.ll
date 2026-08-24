Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Module?download=true
inline.NumInlined: 2596
inline.NumDeleted: 1514
begin_hunk_0_@_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnMoveIS1R_EEvPvS1V_:bb.a
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !47
  %i.m = load i64, ptr %i.g, align 8, !tbaa !51
  store i64 %i.m, ptr %i.e, align 8, !tbaa !51
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !306
  store ptr %i.g, ptr %1, align 8, !tbaa !47
  store i64 0, ptr %i.n, align 8, !tbaa !306
  store i8 0, ptr %i.g, align 8, !tbaa !51
  store i8 1, ptr %i.b, align 8, !tbaa !156
  br label %_ZN4Luau30TypeInstantiationCountMismatchC2EOS0_.exit

_ZN4Luau30TypeInstantiationCountMismatchC2EOS0_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE6fnMoveIS1S_EEvPvS1V_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !792
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnMoveIS1_EEvPvS8_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !168
  store i64 %i.a, ptr %0, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnMoveIS2_EEvPvS8_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !308
  store i64 %i.a, ptr %0, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnMoveIS3_EEvPvS8_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !305
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4Luau12RuntimeErrorC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.i = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.i, ptr %i.a, align 8, !tbaa !51
  br label %_ZN4Luau12RuntimeErrorC2EOS0_.exit

_ZN4Luau12RuntimeErrorC2EOS0_.exit:               ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !306
  store ptr %i.c, ptr %1, align 8, !tbaa !47
  store i64 0, ptr %i.j, align 8, !tbaa !306
  store i8 0, ptr %i.c, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnMoveIS4_EEvPvS8_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !305
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.i = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.i, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !306
  store ptr %i.c, ptr %1, align 8, !tbaa !47
  store i64 0, ptr %i.j, align 8, !tbaa !306
  store i8 0, ptr %i.c, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !305
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !306  ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN4Luau15FailedToCompileC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !47
  %i.w = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.w, ptr %i.o, align 8, !tbaa !51
  br label %_ZN4Luau15FailedToCompileC2EOS0_.exit

_ZN4Luau15FailedToCompileC2EOS0_.exit:            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !306
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !306
  store ptr %i.q, ptr %i.n, align 8, !tbaa !47
  store i64 0, ptr %i.x, align 8, !tbaa !306
  store i8 0, ptr %i.q, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7VariantIJNS_15UnsupportedTypeENS_19UnsupportedTypePackENS_12RuntimeErrorENS_15FailedToCompileENS_19TypeFunctionMissingEEE6fnMoveIS5_EEvPvS8_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !305
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4Luau19TypeFunctionMissingC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.i = load i64, ptr %i.c, align 8, !tbaa !51
  store i64 %i.i, ptr %i.a, align 8, !tbaa !51
  br label %_ZN4Luau19TypeFunctionMissingC2EOS0_.exit

_ZN4Luau19TypeFunctionMissingC2EOS0_.exit:        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !306
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !306
  store ptr %i.c, ptr %1, align 8, !tbaa !47
  store i64 0, ptr %i.j, align 8, !tbaa !306
  store i8 0, ptr %i.c, align 8, !tbaa !51
  ret void
}

declare { ptr, i8 } @_ZN4Luau12Substitution10substituteEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSN_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !829
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 5 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !830
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !138

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %3 = phi i64 [ 1, %bb.c ], [ %.pre, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !33
  store i64 %3, ptr %i.a, align 8, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !831
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !831
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !832
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !592
  store ptr %i.u, ptr %2, align 8, !tbaa !834
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.v, align 8, !tbaa !838
  store ptr null, ptr %i.t, align 8, !tbaa !592
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSN_NSC_17_ReuseOrAllocNodeISaINSC_10_Hash_nodeISA_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = icmp eq ptr %.0, %i.w
  %or.cond = select i1 %.not18, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = shl i64 %i.b, 3
  call void @_ZdlPvm(ptr noundef nonnull %.0, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ab = call ptr @__cxa_begin_catch(ptr %i.aa) #24 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre.a = load ptr, ptr %0, align 8, !tbaa !33  ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.j
  %.pre21 = load i64, ptr %i.a, align 8, !tbaa !42
  br label %bb.p

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %2, align 8, !tbaa !834   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i
  %.06.i.i = phi ptr [ %i.ad, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i ], [ %i.ac, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit ] ; 8 uses
  %i.ad = load ptr, ptr %.06.i.i, align 8, !tbaa !64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #25
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZN4Luau7TypeFunD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !81
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN4Luau7TypeFunD2Ev.exit.i.i.i.i

_ZN4Luau7TypeFunD2Ev.exit.i.i.i.i:                ; preds = %bb.l, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4Luau7TypeFunD2Ev.exit.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !51
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i: ; preds = %_ZN4Luau7TypeFunD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 128) #25
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !593

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEED2Ev.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSC_15_Hash_node_baseEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.m:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = icmp eq ptr %.pre.a, %i.ay
  br i1 %i.az, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !42
  %i.bb = shl i64 %i.ba, 3
  call void @_ZdlPvm(ptr noundef %.pre.a, i64 noundef %i.bb) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.n, %bb.m
  store i64 %i.e, ptr %i.d, align 8, !tbaa !829
  store ptr %.0, ptr %0, align 8, !tbaa !33
  store i64 %i.b, ptr %i.a, align 8, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %._crit_edge, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.bd = phi i64 [ %i.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre21, %._crit_edge ]
  %i.be = phi ptr [ %.0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre.a, %._crit_edge ]
  %i.bf = shl i64 %i.bd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bf, i1 false)
  invoke void @__cxa_rethrow() #27
          to label %bb.s unwind label %bb.o

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.bc

bb.r:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSN_NSC_17_ReuseOrAllocNodeISaINSC_10_Hash_nodeISA_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !830
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !138

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau7TypeFunEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau7TypeFunEELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !33
  br label %bb.f
end_hunk_0
