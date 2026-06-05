inline.NumInlined: 2625
inline.NumDeleted: 1367
begin_hunk_0
%"class.llvh::SmallVectorImpl.211" = type { %"class.llvh::SmallVectorTemplateBase.212" }
%"class.llvh::SmallVectorTemplateBase.212" = type { %"class.llvh::SmallVectorTemplateCommon.213" }
%"class.llvh::SmallVectorTemplateCommon.213" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.214" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.215"] }
%"struct.llvh::AlignedCharArrayUnion.215" = type { %"struct.llvh::AlignedCharArray.216" }
%"struct.llvh::AlignedCharArray.216" = type { [8 x i8] }
%"class.llvh::ArrayRef.174" = type { ptr, i64 }
%"class.hermes::vm::CallResult.222" = type { %"class.llvh::Optional.223" }
%"class.llvh::Optional.223" = type { %"struct.llvh::optional_detail::OptionalStorage.224" }
%"struct.llvh::optional_detail::OptionalStorage.224" = type { %"struct.llvh::AlignedCharArrayUnion.225", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.225" = type { %"struct.llvh::AlignedCharArray.226" }
%"struct.llvh::AlignedCharArray.226" = type { [64 x i8] }
%"class.std::vector.350" = type { %"struct.std::_Vector_base.351" }
%"struct.std::_Vector_base.351" = type { %"struct.std::_Vector_base<hermes::regex::CapturedRange, std::allocator<hermes::regex::CapturedRange>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::regex::CapturedRange, std::allocator<hermes::regex::CapturedRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::regex::CapturedRange, std::allocator<hermes::regex::CapturedRange>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::regex::CapturedRange, std::allocator<hermes::regex::CapturedRange>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::StackOverflowGuard" = type { i64, i64 }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage" = type { [4 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [12 x i8] }
%"class.std::__cxx11::basic_string.267" = type { %"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider", i64, %union.anon.271 }
%"struct.std::__cxx11::basic_string<char16_t>::_Alloc_hider" = type { ptr }
%union.anon.271 = type { i64, [8 x i8] }
%"class.hermes::vm::SmallXString" = type { %"class.llvh::SmallVector.230" }
%"class.llvh::SmallVector.230" = type { %"class.llvh::SmallVectorImpl.166", %"struct.llvh::SmallVectorStorage.231" }
%"struct.llvh::SmallVectorStorage.231" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.170"] }
%"class.hermes::vm::StringView" = type { %union.anon.227, i32, i32 }
%union.anon.227 = type { ptr }
%"class.std::vector.309" = type { %"struct.std::_Vector_base.310" }
%"struct.std::_Vector_base.310" = type { %"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector.290" = type { %"class.llvh::SmallVectorImpl.291", %"struct.llvh::SmallVectorStorage.294" }
%"class.llvh::SmallVectorImpl.291" = type { %"class.llvh::SmallVectorTemplateBase.292" }
%"class.llvh::SmallVectorTemplateBase.292" = type { %"class.llvh::SmallVectorTemplateCommon.293" }
%"class.llvh::SmallVectorTemplateCommon.293" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.294" = type { [1 x %"struct.llvh::AlignedCharArrayUnion.295"] }
%"struct.llvh::AlignedCharArrayUnion.295" = type { %"struct.llvh::AlignedCharArray.216" }
%"class.llvh::SmallVector.316" = type <{ %"class.llvh::SmallVectorImpl.317", %"struct.llvh::SmallVectorStorage.320", [4 x i8] }>
%"class.llvh::SmallVectorImpl.317" = type { %"class.llvh::SmallVectorTemplateBase.318" }
%"class.llvh::SmallVectorTemplateBase.318" = type { %"class.llvh::SmallVectorTemplateCommon.319" }
%"class.llvh::SmallVectorTemplateCommon.319" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.320" = type { [5 x %"struct.llvh::AlignedCharArrayUnion.321"] }
%"struct.llvh::AlignedCharArrayUnion.321" = type { %"struct.llvh::AlignedCharArray.322" }
%"struct.llvh::AlignedCharArray.322" = type { [4 x i8] }
%"class.std::reverse_iterator.345" = type { %"class.__gnu_cxx::__normal_iterator.297" }
%"class.__gnu_cxx::__normal_iterator.297" = type { ptr }
%"class.std::reverse_iterator" = type { %"class.__gnu_cxx::__normal_iterator.324" }
%"class.__gnu_cxx::__normal_iterator.324" = type { ptr }

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEEC2EN4llvh8ArrayRefIDsEES6_ = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev = comdat any

$_ZN6hermes2vm13performSearchIcNS_5regex16ASCIIRegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE = comdat any

$_ZN6hermes2vm13performSearchIDsNS_5regex16UTF16RegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE = comdat any

$_ZNK6hermes2vm10StringView6equalsIDsEEbRKN4llvh8ArrayRefIT_EE = comdat any

$_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_ = comdat any

$_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_ = comdat any

$_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_ = comdat any

$_ZN4llvh15SmallVectorImplIDsEaSEOS1_ = comdat any

$_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

$_ZN6hermes2vm7HadesGC5makeAINS0_8JSRegExpELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEEEEEPT_jDpOT3_ = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE5parseIPKDsEENS0_9constants9ErrorTypeET_S9_ = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE21parseWithBackRefLimitIPKDsEENS0_9constants9ErrorTypeET_S9_jbPj = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_4NodeEJEEEPT_DpOT0_ = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_8GoalNodeEJEEEPT_DpOT0_ = comdat any

$_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE = comdat any

$_ZN6hermes5regex4NodeD0Ev = comdat any

$_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv = comdat any

$_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE = comdat any

$_ZNK6hermes5regex4Node16matchConstraintsEv = comdat any

$_ZNK6hermes5regex4Node6isGoalEv = comdat any

$_ZN6hermes5regex4Node11getChildrenEv = comdat any

$_ZN6hermes5regex4Node15reverseChildrenEv = comdat any

$_ZN6hermes5regex4Node8emitStepERNS0_19RegexBytecodeStreamE = comdat any

$_ZN6hermes5regex4NodeD2Ev = comdat any

$_ZN6hermes5regex8GoalNodeD0Ev = comdat any

$_ZNK6hermes5regex8GoalNode6isGoalEv = comdat any

$_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE = comdat any

$_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh = comdat any

$_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE15_M_range_insertIPS6_EEvN9__gnu_cxx17__normal_iteratorISA_S8_EET_SE_St20forward_iterator_tag = comdat any

$_ZN6hermes5regex13MatchCharNodeD2Ev = comdat any

$_ZN6hermes5regex13MatchCharNodeD0Ev = comdat any

$_ZNK6hermes5regex13MatchCharNode26matchesExactlyOneCharacterEv = comdat any

$_ZNK6hermes5regex13MatchCharNode21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE = comdat any

$_ZNK6hermes5regex13MatchCharNode16matchConstraintsEv = comdat any

$_ZN6hermes5regex13MatchCharNode15reverseChildrenEv = comdat any

$_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE = comdat any

$_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE = comdat any

$_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE = comdat any

$_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_ = comdat any

$_ZN4llvh7hashing6detail23hash_combine_range_implIKDsEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_ = comdat any

$_ZN4llvh7hashing6detail10hash_shortEPKcmm = comdat any

$_ZN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE16shrink_and_clearEv = comdat any

$_ZN6hermes5regex4Node7compileERKSt6vectorIPS1_SaIS3_EERNS0_19RegexBytecodeStreamE = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E20InsertIntoBucketImplIS3_EEPS8_RKS3_RKT_SC_ = comdat any

$_ZN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE4growEj = comdat any

$_ZTVN6hermes5regex4NodeE = comdat any

$_ZTVN6hermes5regex8GoalNodeE = comdat any

$_ZTVN6hermes5regex13MatchCharNodeE = comdat any

$_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@_ZN6hermes2vm8JSRegExp2vtE = hidden constant { i64, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i64 -47381121442796770, i32 62, i32 48, ptr @_ZN6hermes2vm8JSRegExp13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE, ptr @_ZN6hermes2vm8JSRegExp15_mallocSizeImplEPNS0_6GCCellE, ptr null, ptr @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE, ptr @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE, ptr @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj, ptr @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE }, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid RegExp: Invalid flags\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid RegExp: \00", align 1
@_ZN6hermes2vm15HandleRootOwner10zeroValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"Escaped value too large\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Incomplete escape\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Invalid escape\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Character class not closed\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Parenthesized expression not closed\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Quantifier range out of order\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Character class range out of order\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Invalid quantifier bracket\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Quantifier has nothing to repeat\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Pattern exceeds parse limits\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Invalid flags\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Invalid capture group name\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Duplicate capture group name\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Invalid named reference\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Nonexistent named capture reference\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Invalid property name\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN6hermes5regex4NodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex4NodeD2Ev, ptr @_ZN6hermes5regex4NodeD0Ev, ptr @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex4Node16matchConstraintsEv, ptr @_ZNK6hermes5regex4Node6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex4Node15reverseChildrenEv, ptr @_ZN6hermes5regex4Node8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@_ZTVN6hermes5regex8GoalNodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex4NodeD2Ev, ptr @_ZN6hermes5regex8GoalNodeD0Ev, ptr @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex4Node16matchConstraintsEv, ptr @_ZNK6hermes5regex8GoalNode6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex4Node15reverseChildrenEv, ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@.str.32 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTVN6hermes5regex13MatchCharNodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex13MatchCharNodeD2Ev, ptr @_ZN6hermes5regex13MatchCharNodeD0Ev, ptr @_ZNK6hermes5regex13MatchCharNode26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex13MatchCharNode21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex13MatchCharNode16matchConstraintsEv, ptr @_ZNK6hermes5regex4Node6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex13MatchCharNode15reverseChildrenEv, ptr @_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@.str.34 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.35 = private unnamed_addr constant [34 x i8] c"Maximum regex stack depth reached\00", align 1
@switch.table._ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_ = private unnamed_addr constant [16 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 8

@_ZN6hermes2vm8JSRegExpD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes2vm8JSRegExpD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp13_finalizeImplEPNS0_6GCCellERNS0_7HadesGCE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull %i.b) #19
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  tail call void @free(ptr noundef %i.d) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_ZN6hermes2vm8JSRegExp15_mallocSizeImplEPNS0_6GCCellE(ptr nofree noundef readonly captures(none) %0) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

declare i64 @_ZN6hermes2vm8JSObject23_getOwnIndexedRangeImplEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject19_haveOwnIndexedImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject31_getOwnIndexedPropertyFlagsImplEPS1_RNS0_7RuntimeEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i64 @_ZN6hermes2vm8JSObject18_getOwnIndexedImplENS0_12PseudoHandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare i32 @_ZN6hermes2vm8JSObject18_setOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject21_deleteOwnIndexedImplENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

declare noundef zeroext i1 @_ZN6hermes2vm8JSObject23_checkAllOwnIndexedImplEPS1_RNS0_7RuntimeENS0_12ObjectVTable22CheckAllOwnIndexedModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm17JSRegExpBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !23, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !3
  store i8 1, ptr %i.a, align 4, !tbaa !28
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm8JSRegExp2vtE, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.f) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull %i.g) #19
  ret void
}

declare void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6hermes2vm8Metadata7Builder8addFieldEPKNS0_13GCPointerBaseE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes2vm8JSRegExp6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::Handle", align 8 ; 2 uses
  %3 = alloca %"class.hermes::vm::Handle.159", align 8 ; 4 uses
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9536
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.c = call noundef ptr @_ZN6hermes2vm7HadesGC5makeAINS0_8JSRegExpELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJRNS0_7RuntimeERNS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.b, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm8JSRegExp16createMatchClassERNS0_7RuntimeENS0_6HandleINS0_11HiddenClassEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::CallResult.232", align 8 ; 4 uses
  %3 = alloca %"class.hermes::vm::CallResult.232", align 8 ; 4 uses
  %4 = alloca %"class.hermes::vm::CallResult.232", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.232") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 329, i16 14) #19
  %.sroa.04.0.copyload.i = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.232") align 8 %3, ptr %.sroa.04.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 330, i16 14) #19
  %.sroa.04.0.copyload.i9 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6hermes2vm11HiddenClass11addPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.232") align 8 %2, ptr %.sroa.04.0.copyload.i9, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 334, i16 14) #19
  %.sroa.04.0.copyload.i10 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.sroa.04.0.copyload.i10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readonly captures(none) %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !45
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !45 ; 2 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = and i64 %i.g, 562949949227008
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = icmp eq ptr %i.f, %i.i
  br i1 %i.j, label %_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.k = inttoptr i64 %i.d to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef %i.k) #19
  br label %_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %.sroa.0.0.copyload.i.i.i, %i.m
  %i.o = trunc i64 %i.n to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.o
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.c, align 4, !tbaa !3
  %i.p = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 342, i32 314, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, i32 0) #19 ; 0 uses
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %0, align 8, !tbaa !45
  %i.q = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !50
  %.sroa.0.6.i.i = and i8 %i.t, 127
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i8 %.sroa.0.6.i.i, ptr %i.u, align 4, !tbaa !53
  %i.v = trunc i64 %5 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %5) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr readonly align 1 %4, i64 %5, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp18initializeBytecodeEN4llvh8ArrayRefIhEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((24, 37)) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !50
  %.sroa.0.6.i = and i8 %i.b, 127
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %.sroa.0.6.i, ptr %i.c, align 4, !tbaa !53
  %i.d = trunc i64 %2 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.d, ptr %i.e, align 8, !tbaa !22
  %i.f = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %2) #19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %1, i64 %2, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeES3_NS2_INS0_15StringPrimitiveEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::SmallVector.165", align 8 ; 9 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.c, align 4, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !45
  %i.d = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  %i.f = load ptr, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not36.i = icmp eq i32 %i.g, 0
  br i1 %.not36.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.i
  %.038.i = phi ptr [ %i.s, %bb.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.0.037.i = phi i8 [ %i.r, %bb.i ], [ 0, %bb.a ] ; 8 uses
  %i.j = load i16, ptr %.038.i, align 2, !tbaa !58
  switch i16 %i.j, label %.critedge [
    i16 105, label %bb.b
    i16 109, label %bb.c
    i16 103, label %bb.d
    i16 117, label %bb.e
    i16 121, label %bb.f
    i16 115, label %bb.g
    i16 100, label %bb.h
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = and i8 %.sroa.0.037.i, 1
  %.not24.i = icmp eq i8 %i.k, 0
  br i1 %.not24.i, label %bb.i, label %.critedge

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %.sroa.0.037.i, 4
  %.not23.i = icmp eq i8 %i.l, 0
  br i1 %.not23.i, label %bb.i, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = and i8 %.sroa.0.037.i, 2
  %.not22.i = icmp eq i8 %i.m, 0
  br i1 %.not22.i, label %bb.i, label %.critedge

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = and i8 %.sroa.0.037.i, 8
  %.not21.i = icmp eq i8 %i.n, 0
  br i1 %.not21.i, label %bb.i, label %.critedge

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = and i8 %.sroa.0.037.i, 32
  %.not20.i = icmp eq i8 %i.o, 0
  br i1 %.not20.i, label %bb.i, label %.critedge

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = and i8 %.sroa.0.037.i, 16
  %.not19.i = icmp eq i8 %i.p, 0
  br i1 %.not19.i, label %bb.i, label %.critedge

bb.h:                                             ; preds = %.lr.ph.i
  %i.q = and i8 %.sroa.0.037.i, 64
  %.not18.i = icmp eq i8 %i.q, 0
  br i1 %.not18.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i8 [ 16, %bb.g ], [ 32, %bb.f ], [ 8, %bb.e ], [ 2, %bb.d ], [ 4, %bb.c ], [ 1, %bb.b ], [ 64, %bb.h ]
  %i.r = or disjoint i8 %.sink.i, %.sroa.0.037.i  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.038.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.i
  br i1 %.not.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 29, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !64
  store ptr @.str, ptr %5, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !65
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread: ; preds = %bb.i, %bb.a
  %.sroa.022.0.extract.trunc32 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.i ]
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %2, align 8, !tbaa !45
  %i.y = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.ab = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = or i64 %i.ad, -844424930131968
  %i.af = select i1 %.not.i.i.i.i.i, i64 -844424930131968, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !66 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.k, !prof !49

bb.j:                                             ; preds = %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !69
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !45
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.af) #19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %2, align 8, !tbaa !45
  %i.ap = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %.sroa.0.0.copyload.i = load i8, ptr %i.ar, align 4, !tbaa !53
  %i.as = xor i8 %.sroa.0.0.copyload.i, %.sroa.022.0.extract.trunc32
  %i.at = and i8 %i.as, 127
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.n, !prof !49

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %0, align 8, !tbaa !45
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i17, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !45 ; 2 uses
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = and i64 %i.bg, 562949949227008
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = icmp eq ptr %i.bf, %i.bi
  br i1 %i.bj, label %_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE.exit, label %bb.m, !prof !49

bb.m:                                             ; preds = %bb.l
  %i.bk = inttoptr i64 %i.bd to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef %i.bk) #19
  br label %_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE.exit

_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE.exit: ; preds = %bb.l, %bb.m
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  %i.bm = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.ab
  %i.bn = trunc i64 %i.bm to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.bn
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bc, align 4, !tbaa !3
  %i.bo = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 342, i32 314, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, i32 0) #19 ; 0 uses
  %.sroa.0.0.copyload.i.i12.i = load i64, ptr %0, align 8, !tbaa !45
  %i.bp = and i64 %.sroa.0.0.copyload.i.i12.i, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !50
  %.sroa.0.6.i.i.i = and i8 %i.bs, 127
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  store i8 %.sroa.0.6.i.i.i, ptr %i.bt, align 4, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i32 %i.ay, ptr %i.bu, align 8, !tbaa !22
  %i.bv = call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %i.az) #19 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr readonly align 1 %i.aw, i64 %i.az, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bx = call noundef i32 @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr nonnull %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE.exit, %bb.n, %.critedge
  %.1 = phi i32 [ %i.x, %.critedge ], [ 1, %_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE.exit ], [ %i.bx, %bb.n ]
  %i.by = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.a
  br i1 %i.bz, label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef %i.by) #19
  br label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit:          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.1
}

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @_ZN6hermes2vm8JSRegExp10getPatternEPS1_RNS0_11PointerBaseE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.d = add i64 %i.c, %i.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = select i1 %.not.i.i.i.i, ptr null, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.hermes::regex::RegexBytecodeHeader", align 2 ; 8 uses
  %5 = alloca %"class.hermes::regex::RegexBytecodeStream", align 8 ; 8 uses
  %6 = alloca %"class.llvh::SmallVector.176", align 8 ; 9 uses
  %7 = alloca %"class.llvh::SmallVector.165", align 8 ; 9 uses
  %8 = alloca %"class.hermes::regex::Regex", align 8 ; 12 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !45
  %i.d = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.h, align 4, !tbaa !57
  %.sroa.0.0.copyload.i.i7 = load i64, ptr %2, align 8, !tbaa !45
  %i.i = and i64 %.sroa.0.0.copyload.i.i7, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.k = load ptr, ptr %7, align 8, !tbaa !54
  %i.l = load i32, ptr %i.g, align 8, !tbaa !56
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %6, align 8, !tbaa !54
  %i.o = load i32, ptr %i.b, align 8, !tbaa !56
  %i.p = zext i32 %i.o to i64
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEEC2EN4llvh8ArrayRefIDsEES6_(ptr noundef nonnull align 8 dereferenceable(336) %8, ptr %i.k, i64 %i.m, ptr %i.n, i64 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr [8 x i8], ptr @switch.table._ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_, i64 %i.t
  %switch.gep = getelementptr i8, ptr %i.u, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #20 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  store ptr @.str.1, ptr %9, align 8, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  br i1 %i.w, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit, label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %switch.load, ptr %i.x, align 8, !tbaa !53, !alias.scope !112
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %.thread
  %.sink34 = phi i32 [ 3, %.thread ], [ 1, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sink = phi i64 [ %i.v, %.thread ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sink34, ptr %.sroa.628.0..sroa_idx, align 8, !tbaa !111
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 16, ptr %.sroa.729.0..sroa_idx, align 8, !tbaa !45
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sink, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !45
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime16raiseSyntaxErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !117
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 138
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !120, !noalias !117
  store i16 %i.aa, ptr %4, align 2, !tbaa !121, !noalias !117
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 140
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !122, !noalias !117
  %i.ae = trunc i32 %i.ad to i16
  store i16 %i.ae, ptr %i.ab, align 2, !tbaa !123, !noalias !117
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.ah = load i8, ptr %i.ag, align 8, !noalias !117
  %.6.i.i = and i8 %i.ah, 127
  store i8 %.6.i.i, ptr %i.af, align 2, !tbaa !50, !noalias !117
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 196
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !124, !noalias !117
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !125, !noalias !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !117
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, i8 0, i64 25, i1 false), !noalias !117
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr null, ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef nonnull %i.al), !noalias !117
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @_ZN6hermes5regex4Node7compileERKSt6vectorIPS1_SaIS3_EERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(25) %5), !noalias !117
  %i.an = load ptr, ptr %5, align 8, !tbaa !126, !noalias !128 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !131, !noalias !128
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !132, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !117
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.au = call noundef i32 @_ZN6hermes2vm8JSRegExp29initializeGroupNameMappingObjERNS0_7RuntimeENS0_6HandleIS1_EERSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS9_EERNS7_8DenseMapINS7_8ArrayRefIDsEEjNS7_12DenseMapInfoISF_EENS7_6detail12DenseMapPairISF_jEEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %0, ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(20) %i.at)
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %bb.c, !prof !133

bb.c:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !45
  %i.az = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %2, align 8, !tbaa !45 ; 2 uses
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = and i64 %i.bf, 562949949227008
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = icmp eq ptr %i.be, %i.bh
  br i1 %i.bi, label %.thread23, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.bj = inttoptr i64 %i.bc to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef %i.bj) #19
  br label %.thread23

.thread23:                                        ; preds = %bb.d, %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.bn
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.bb, align 4, !tbaa !3
  %i.bo = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 342, i32 314, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, i32 0) #19 ; 0 uses
  %.sroa.0.0.copyload.i.i12.i = load i64, ptr %0, align 8, !tbaa !45
  %i.bp = and i64 %.sroa.0.0.copyload.i.i12.i, 281474976710655
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !50
  %.sroa.0.6.i.i.i = and i8 %i.bs, 127
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  store i8 %.sroa.0.6.i.i.i, ptr %i.bt, align 4, !tbaa !53
  %i.bu = trunc i64 %i.ay to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !22
  %i.bw = call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %i.ay) #19 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr readonly align 1 %i.an, i64 %i.ay, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = ptrtoint ptr %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread23
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ax, %.thread23 ]
  %.026 = phi i32 [ 0, %._crit_edge ], [ 1, %.thread23 ]
  %i.by = ptrtoint ptr %i.ar to i64
  %i.bz = sub i64 %i.by, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bz) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.f, %bb.e, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %.1 = phi i32 [ %i.y, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ], [ 0, %bb.e ], [ %.026, %bb.f ]
  call void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ca = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.f
  br i1 %i.cb, label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @free(ptr noundef %i.ca) #19
  br label %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cc = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit
  call void @free(ptr noundef %i.cc) #19
  br label %_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj6EED2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIDsLj16EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEEC2EN4llvh8ArrayRefIDsEES6_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !134
  %.06.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %.06.i.i.i.ptr.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %.06.i.i.i.ptr.1.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %.06.i.i.i.ptr.2.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.06.i.i.i.ptr.3.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %.06.i.i.i.ptr.4.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 -1, ptr %.06.i.i.i.ptr.5.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.6.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 -1, ptr %.06.i.i.i.ptr.6.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.7.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %.06.i.i.i.ptr.7.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %.06.i.i.i.ptr.8.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.9.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %.06.i.i.i.ptr.9.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.10.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %.06.i.i.i.ptr.10.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.11.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %.06.i.i.i.ptr.11.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 -1, ptr %.06.i.i.i.ptr.12.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.13.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 -1, ptr %.06.i.i.i.ptr.13.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.14.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 -1, ptr %.06.i.i.i.ptr.14.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.15.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 -1, ptr %.06.i.i.i.ptr.15.i, align 8, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, -128
  store i8 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(59) %i.e, i8 0, i64 59, i1 false)
  store i64 8, ptr %i.g, align 8, !tbaa !135
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !136
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22 ; 6 uses
  store ptr %i.i, ptr %.06.i.i.ptr.i.i, align 8, !tbaa !137
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.06.i.i.ptr.i.i, ptr %i.k, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.i, ptr %i.l, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 512 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.m, ptr %i.n, align 8, !tbaa !140
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.06.i.i.ptr.i.i, ptr %i.p, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.i, ptr %i.q, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.m, ptr %i.r, align 8, !tbaa !140
  store ptr %i.i, ptr %i.j, align 8, !tbaa !141
  store ptr %i.i, ptr %i.o, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.t, align 8, !tbaa !143
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.idx.i = shl nuw nsw i64 %4, 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i
  %.not36.i = icmp eq i64 %4, 0
  br i1 %.not36.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.i
  %.038.i = phi ptr [ %i.af, %bb.i ], [ %3, %bb.a ] ; 2 uses
  %.sroa.0.037.i = phi i8 [ %i.ae, %bb.i ], [ 0, %bb.a ] ; 8 uses
  %i.w = load i16, ptr %.038.i, align 2, !tbaa !58
  switch i16 %i.w, label %.critedge [
    i16 105, label %bb.b
    i16 109, label %bb.c
    i16 103, label %bb.d
    i16 117, label %bb.e
    i16 121, label %bb.f
    i16 115, label %bb.g
    i16 100, label %bb.h
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = and i8 %.sroa.0.037.i, 1
  %.not24.i = icmp eq i8 %i.x, 0
  br i1 %.not24.i, label %bb.i, label %.critedge

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = and i8 %.sroa.0.037.i, 4
  %.not23.i = icmp eq i8 %i.y, 0
  br i1 %.not23.i, label %bb.i, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = and i8 %.sroa.0.037.i, 2
  %.not22.i = icmp eq i8 %i.z, 0
  br i1 %.not22.i, label %bb.i, label %.critedge

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = and i8 %.sroa.0.037.i, 8
  %.not21.i = icmp eq i8 %i.aa, 0
  br i1 %.not21.i, label %bb.i, label %.critedge

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = and i8 %.sroa.0.037.i, 32
  %.not20.i = icmp eq i8 %i.ab, 0
  br i1 %.not20.i, label %bb.i, label %.critedge

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = and i8 %.sroa.0.037.i, 16
  %.not19.i = icmp eq i8 %i.ac, 0
  br i1 %.not19.i, label %bb.i, label %.critedge

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = and i8 %.sroa.0.037.i, 64
  %.not18.i = icmp eq i8 %i.ad, 0
  br i1 %.not18.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i8 [ 16, %bb.g ], [ 32, %bb.f ], [ 8, %bb.e ], [ 2, %bb.d ], [ 4, %bb.c ], [ 1, %bb.b ], [ 64, %bb.h ]
  %i.ae = or disjoint i8 %.sink.i, %.sroa.0.037.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.038.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.v
  br i1 %.not.i, label %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread, label %.lr.ph.i

_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread: ; preds = %bb.i, %bb.a
  %.sroa.0.0.extract.trunc9 = phi i8 [ 0, %bb.a ], [ %i.ae, %bb.i ]
  store i8 %.sroa.0.0.extract.trunc9, ptr %i.b, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.ah = tail call noundef i32 @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE5parseIPKDsEENS0_9constants9ErrorTypeET_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr noundef %i.ag)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread
  %storemerge = phi i32 [ %i.ah, %_ZN6hermes5regex11SyntaxFlags10fromStringEN4llvh8ArrayRefIDsEE.exit.thread ], [ 11, %bb.h ], [ 11, %bb.g ], [ 11, %bb.f ], [ 11, %bb.e ], [ 11, %bb.d ], [ 11, %bb.c ], [ 11, %bb.b ], [ 11, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %storemerge, ptr %i.ai, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSRegExp29initializeGroupNameMappingObjERNS0_7RuntimeENS0_6HandleIS1_EERSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS9_EERNS7_8DenseMapINS7_8ArrayRefIDsEEjNS7_12DenseMapInfoISF_EENS7_6detail12DenseMapPairISF_jEEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.llvh::ArrayRef.174", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store ptr %i.d, ptr %i.b, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !57
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 3 uses
  store ptr %i.e, ptr %i.k, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  store i32 0, ptr %i.l, align 8, !tbaa !146
  store ptr %4, ptr %i.c, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !147  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.n) #19
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = or i64 %i.q, -281474976710656            ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !66   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !69
  store i64 %i.r, ptr %i.u, align 8, !tbaa !45
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %i.r) #19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !66  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre71 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !69
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8, !tbaa !78
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi ptr [ %i.w, %bb.c ], [ %.pre73, %bb.d ]
  %i.ab = phi ptr [ %i.y, %bb.c ], [ %.pre71, %bb.d ] ; 4 uses
  %i.ac = phi ptr [ %i.s, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  %i.ad = icmp ult ptr %i.ab, %i.aa
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !49

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !69
  store i64 -1688849860263936, ptr %i.ab, align 8, !tbaa !45
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.ag = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 -1688849860263936) #19
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i34 = phi ptr [ %i.ab, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !148, !noalias !149 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !148, !noalias !152 ; 2 uses
  %.not61 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not61, label %.critedge33, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !138, !noalias !149
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140, !noalias !149
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre74 = load ptr, ptr %i.j, align 8, !tbaa !69 ; 2 uses
  %.pre75 = load i32, ptr %i.l, align 8, !tbaa !146 ; 4 uses
  %i.ar = zext i32 %.pre75 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit
  %.sroa.14.064 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.11.063 = phi ptr [ %i.ao, %.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.047.062 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.047.1, %_ZNSt15_Deque_iteratorIN4llvh11SmallVectorIDsLj5EEERS2_PS2_EppEv.exit ] ; 4 uses
  %i.as = load ptr, ptr %.sroa.047.062, align 8, !tbaa !54 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.047.062, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %.not10.i.i = icmp eq i32 %i.au, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.aw = add nuw i64 %i.av, 9223372036854775807
  %i.ax = and i64 %i.aw, 9223372036854775807      ; 2 uses
  %i.ay = add nuw i64 %i.ax, 1                    ; 2 uses
  %xtraiter = and i64 %i.ay, 3                    ; 3 uses
  %i.az = icmp samesign ult i64 %i.ax, 3
  br i1 %i.az, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ay, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ca, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.as, %.lr.ph.i.i.preheader.new ], [ %i.cb, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ba = load i16, ptr %.0811.i.i, align 2, !tbaa !58
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add i32 %.012.i.i, %i.bb
  %i.bd = mul i32 %i.bc, 1025                     ; 2 uses
  %i.be = lshr i32 %i.bd, 6
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !58
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = mul i32 %i.bj, 1025                     ; 2 uses
  %i.bl = lshr i32 %i.bk, 6
  %i.bm = xor i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !58
  %i.bp = zext i16 %i.bo to i32
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = mul i32 %i.bq, 1025                     ; 2 uses
  %i.bs = lshr i32 %i.br, 6
  %i.bt = xor i32 %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !58
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add i32 %i.bt, %i.bw
  %i.by = mul i32 %i.bx, 1025                     ; 2 uses
  %i.bz = lshr i32 %i.by, 6
  %i.ca = xor i32 %i.bz, %i.by                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ca, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.as, %.lr.ph.i.i.preheader ], [ %i.cb, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.ch, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.ci, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cc = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !58
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add i32 %.012.i.i.epil, %i.cd
  %i.cf = mul i32 %i.ce, 1025                     ; 2 uses
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = xor i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !155

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g
  %.0.lcssa.i.i = phi i32 [ 0, %bb.g ], [ %i.ca, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i.i.epil ]
  %i.cj = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ap, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.as, i64 %i.av, i32 noundef %.0.lcssa.i.i) #19 ; 2 uses
  %.not55 = icmp eq ptr %i.cj, inttoptr (i64 -1 to ptr)
  br i1 %.not55, label %.critedge, label %bb.h, !prof !133

bb.h:                                             ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ck = load ptr, ptr %.sroa.047.062, align 8, !tbaa !54
  store ptr %i.ck, ptr %5, align 8, !tbaa !157
  %i.cl = load i32, ptr %i.at, align 8, !tbaa !56
  %i.cm = zext i32 %i.cl to i64
  store i64 %i.cm, ptr %i.aq, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cn = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !161 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSRegExp29initializeGroupNameMappingObjERNS0_7RuntimeENS0_6HandleIS1_EERSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS9_EERNS7_8DenseMapINS7_8ArrayRefIDsEEjNS7_12DenseMapInfoISF_EENS7_6detail12DenseMapPairISF_jEEEE:bb.a
  %i.dv = ptrtoint ptr %0 to i64
  %i.dw = sub i64 %.sroa.0.0.copyload.i.i.i, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.dx
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.dl, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit, %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, %.critedge, %bb.a
  %.5 = phi i32 [ 1, %bb.a ], [ 1, %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit ], [ 0, %.critedge ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_EixEOS3_.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.196", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.196", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.e) #19
  br label %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !169

_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  tail call void @_ZdlPv(ptr noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !137, !noalias !173
  store <2 x ptr> %i.v, ptr %1, align 16, !tbaa !137
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load <2 x ptr>, ptr %i.s, align 8, !tbaa !176, !noalias !173
  store <2 x ptr> %i.x, ptr %i.w, align 16, !tbaa !176
  %i.y = load <2 x ptr>, ptr %i.t, align 8, !tbaa !137, !noalias !177
  store <2 x ptr> %i.y, ptr %2, align 16, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load <2 x ptr>, ptr %i.u, align 8, !tbaa !176, !noalias !177
  store <2 x ptr> %i.aa, ptr %i.z, align 16, !tbaa !176
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !180 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !181 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i1:                                    ; preds = %bb.d, %.lr.ph.i.i.i1
  %.06.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i1 ], [ %i.ae, %bb.d ] ; 3 uses
  %i.ai = load ptr, ptr %.06.i.i.i, align 8, !tbaa !137
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ak = icmp ult ptr %.06.i.i.i, %i.af
  br i1 %i.ak, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !182

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i1
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !136
  br label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.ab, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i64, ptr %i.am, align 8, !tbaa !135
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !183 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ax, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 2 uses
  %i.at = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !187
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i3
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !190

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ap, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !191
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !193
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #21
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.f
  %i.bl = load i32, ptr %0, align 8
  %i.bm = and i32 %i.bl, 1
  %.not.i.i.i9 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i9, label %bb.g, label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !194
  call void @_ZdlPv(ptr noundef %i.bo) #19
  br label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit:      ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.g
  ret void
}

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm8JSRegExp20getGroupNameMappingsERNS0_7RuntimeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %.not.not7 = icmp eq i64 %i.d, 0
  %.not.not = or i1 %.not.i.i.i.i, %.not.not7
  br i1 %.not.not, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %i.d, -281474976710656            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !69
  store i64 %i.e, ptr %i.i, align 8, !tbaa !45
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %i.n, %bb.d ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp20setGroupNameMappingsERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = and i64 %i.d, -4194304
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = icmp eq ptr %i.c, %i.f
  br i1 %i.g, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %2) #19
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %2, null
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.l
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !3
  ret void
}

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp6searchENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEEj(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::CallResult.222") align 8 initializes((64, 65)) %0, ptr nofree readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 21 uses
  %6 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 9 uses
  %7 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 9 uses
  %i.a = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %3) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  %i.d = zext i32 %4 to i64
  %.sroa.5.12.extract.shift = lshr i64 %i.c, 32   ; 2 uses
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32 ; 2 uses
  %i.e = icmp samesign ult i64 %.sroa.5.12.extract.shift, %i.d
  br i1 %i.e, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %0, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.i, align 4, !tbaa !57
  br label %bb.ay

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !45
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i8, ptr %i.l, align 4
  %i.n = lshr i8 %i.m, 2
  %i.o = and i8 %i.n, 8
  %spec.select = zext nneg i8 %i.o to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  store i8 1, ptr %i.p, align 8, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 4, ptr %i.s, align 4, !tbaa !57
  %.sroa.5.8.extract.trunc = trunc i64 %i.c to i32 ; 3 uses
  %i.t = icmp slt i32 %.sroa.5.8.extract.trunc, 0
  br i1 %i.t, label %bb.b, label %bb.r

bb.b:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13
  %i.u = or disjoint i32 %spec.select, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !22
  %i.z = zext i32 %i.y to i64
  %i.aa = and i32 %.sroa.5.8.extract.trunc, 1073741824
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !45
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 150994943
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.ad, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %i.b, %bb.b ], [ %i.ag, %bb.d ], [ %i.ah, %bb.f ], [ %i.ai, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = and i64 %i.c, 1073741823
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.ao
  call void @_ZN6hermes2vm13performSearchIcNS_5regex16ASCIIRegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.222") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %i.w, i64 %i.z, ptr noundef %i.ap, i32 noundef %.sroa.5.12.extract.trunc, i32 noundef %4, i32 noundef %i.u)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !197, !range !26, !noundef !27
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr %i.p, align 8, !tbaa !197, !range !26, !noundef !27
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  br i1 %i.au, label %bb.j, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.q
  br i1 %i.aw, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.av) #19
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.l:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6) ; 0 uses
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.n:                                             ; preds = %bb.l
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 4, ptr %i.s, align 4, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6) ; 0 uses
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit: ; preds = %bb.i, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i, %bb.m, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i
  %i.bb = load i8, ptr %i.aq, align 8, !tbaa !197, !range !26, !noundef !27
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit

bb.p:                                             ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit
  %i.bd = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.bd) #19
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit: ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ah

bb.r:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !22
  %i.bk = zext i32 %i.bj to i64
  %.not.i20 = icmp samesign ult i32 %.sroa.5.8.extract.trunc, 1073741824
  br i1 %.not.i20, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i.i21 = load i64, ptr %i.b, align 8, !tbaa !45
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i21, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 150994943
  br i1 %i.bo, label %bb.t, label %bb.u, !prof !133

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !204
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.u:                                             ; preds = %bb.s
  %.mask.i.i.i.i.i.i.i.i.i22 = and i32 %i.bn, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i22, label %bb.x [
    i32 117440512, label %bb.v
    i32 50331648, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm13performSearchIcNS_5regex16ASCIIRegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE:bb.a

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13performSearchIDsNS_5regex16UTF16RegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::CallResult.222") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i64 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.std::vector.350", align 8   ; 9 uses
  %9 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 3 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.llvh::SmallVector", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !45
  %i.b = mul i64 %.sroa.2.0.copyload.i, 5
  store i64 %.sroa.0.0.copyload.i, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = call noundef i32 @_ZN6hermes5regex18searchWithBytecodeEN4llvh8ArrayRefIhEEPKDsjjPSt6vectorINS0_13CapturedRangeESaIS7_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %2, i64 %3, ptr noundef %4, i32 noundef %6, i32 noundef %5, ptr noundef nonnull %8, i32 noundef %7, ptr noundef nonnull byval(%"class.hermes::StackOverflowGuard") align 8 %9) #19
  switch i32 %i.d, label %bb.b [
    i32 2, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i32 1, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit
  ]

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 33, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !64
  store ptr @.str.35, ptr %10, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !65
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #19 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.j, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.k

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.k, align 8, !tbaa !197
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.n, align 4, !tbaa !57
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !210  ; 2 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !213    ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.v, ptr %11, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 4, ptr %i.x, align 4, !tbaa !57
  %i.y = icmp ugt i64 %i.u, 4
  br i1 %i.y, label %bb.c, label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 12) #19
  br label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit

_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  %.not30 = icmp eq ptr %i.p, %i.q
  br i1 %.not30, label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge: ; preds = %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge
  %i.z = phi i32 [ %.pre, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge ], [ %i.ba, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.aa, align 8, !tbaa !197
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %0, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.ad, align 4, !tbaa !57
  %.not.i.i.i.i.i21 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i21, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %11) ; 0 uses
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22: ; preds = %._crit_edge, %bb.d
  %i.af = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22
  call void @free(ptr noundef %i.af) #19
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23: ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.k

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit, %bb.j
  %.029 = phi i64 [ %i.bb, %bb.j ], [ 0, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit ] ; 2 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !213
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.029 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !214 ; 3 uses
  %.not = icmp eq i32 %i.aj, -1
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 12) #19
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !56
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %.pre.i, %bb.g ], [ %i.ak, %bb.f ]
  %i.an = load ptr, ptr %11, align 8, !tbaa !54
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ap, i8 0, i64 9, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !216
  %i.as = sub i32 %i.ar, %i.aj
  %.sroa.4.0.insert.ext = zext i32 %i.as to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %i.at = load i32, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %i.au = load i32, ptr %i.x, align 4, !tbaa !57
  %.not.i24 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i24, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 12) #19
  %.pre.i25 = load i32, ptr %i.w, align 8, !tbaa !56
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26: ; preds = %bb.h, %bb.i
  %i.av = phi i32 [ %.pre.i25, %bb.i ], [ %i.at, %bb.h ]
  %i.aw = load ptr, ptr %11, align 8, !tbaa !54
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store i64 %.sroa.0.0.insert.insert, ptr %i.ay, align 1
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.428.0..sroa_idx, align 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit
  %i.az = load i32, ptr %i.w, align 8, !tbaa !56
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.w, align 8, !tbaa !56
  %i.bb = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !219

bb.k:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %i.bc = load ptr, ptr %8, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #21
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm8JSRegExpD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  tail call void @free(ptr noundef %i.b) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSRegExp13escapePatternENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.267", align 8 ; 6 uses
  %3 = alloca %"class.hermes::vm::SmallXString", align 8 ; 23 uses
  %4 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %5 = alloca %"class.hermes::vm::SmallXString", align 8 ; 8 uses
  %6 = alloca %"class.llvh::ArrayRef.174", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 18 uses
  store i32 0, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  store i32 32, ptr %i.c, align 4, !tbaa !57
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !45
  %i.d = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !220
  %i.h = and i32 %i.g, 2147483647                 ; 2 uses
  %i.i = icmp samesign ugt i32 %i.h, 32
  br i1 %i.i, label %bb.b, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef 2) #19
  br label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit:     ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.k = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %0) #19 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 8 uses
  store ptr %i.l, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = extractvalue { ptr, i64 } %i.k, 1        ; 9 uses
  store i64 %i.n, ptr %i.m, align 8
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = lshr i64 %i.n, 32                        ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.r = and i32 %i.o, 1073741824
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !45
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp ugt i32 %i.u, 150994943
  br i1 %i.v, label %bb.e, label %bb.f, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !201
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.i [
    i32 134217728, label %bb.g
    i32 67108864, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.aa, align 8, !tbaa !45
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !201
  br label %bb.q

bb.j:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %.not.i1.i = icmp samesign ult i32 %i.o, 1073741824
  br i1 %.not.i1.i, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.l, align 8, !tbaa !45
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = icmp ugt i32 %i.ah, 150994943
  br i1 %i.ai, label %bb.x, label %bb.l, !prof !133

bb.l:                                             ; preds = %bb.k
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ah, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.o [
    i32 117440512, label %bb.m
    i32 50331648, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.y

bb.o:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.al, align 8, !tbaa !45
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !204
  br label %bb.y

bb.p:                                             ; preds = %bb.c
  %i.aq = and i64 %i.n, 1073741823                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.q:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.sink.i.i.ph = phi ptr [ %i.ae, %bb.i ], [ %i.z, %bb.h ], [ %i.y, %bb.g ], [ %i.x, %bb.e ]
  %i.as = and i64 %i.n, 1073741823                ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.as ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %i.l, align 8, !tbaa !45
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i.i24, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr               ; 5 uses
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 150994943
  br i1 %i.ax, label %bb.r, label %bb.s, !prof !133

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.s:                                             ; preds = %bb.q
  %.mask.i.i.i.i.i.i.i.i.i.i25 = and i32 %i.aw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i25, label %bb.v [
    i32 134217728, label %bb.t
    i32 67108864, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.v:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i28 = load i64, ptr %i.bc, align 8, !tbaa !45
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i2.i.i28, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26: ; preds = %bb.p, %bb.v, %bb.u, %bb.t, %bb.r
  %i.bh = phi ptr [ %i.ar, %bb.p ], [ %i.at, %bb.r ], [ %i.at, %bb.t ], [ %i.at, %bb.u ], [ %i.at, %bb.v ]
  %i.bi = phi i64 [ %i.aq, %bb.p ], [ %i.as, %bb.r ], [ %i.as, %bb.t ], [ %i.as, %bb.u ], [ %i.as, %bb.v ]
  %.0.i.sink.i.i27 = phi ptr [ %i.l, %bb.p ], [ %i.az, %bb.r ], [ %i.ba, %bb.t ], [ %i.bb, %bb.u ], [ %i.bg, %bb.v ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i27, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.q
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.w:                                             ; preds = %bb.j
  %i.bl = and i64 %i.n, 1073741823
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bl
  %.pre110 = and i64 %i.n, 1073741823
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.x:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !204 ; 2 uses
  %i.bp = and i64 %i.n, 1073741823                ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.y:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.sink.i4.i.ph.ph = phi ptr [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.ap, %bb.o ]
end_hunk_2
begin_hunk_3_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
  %.2.i.i.i.i.i18 = phi ptr [ %i.bm, %bb.s ], [ %.029.lcssa.i.i.i.i.i17, %._crit_edge.i.i.i.i.i15 ] ; 2 uses
  %i.bn = load i32, ptr %.2.i.i.i.i.i18, align 4, !tbaa !3
  %i.bo = icmp ult i32 %i.bn, 128
  br i1 %i.bo, label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i15
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 4
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74: ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 8
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76: ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i11, i64 12
  br label %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit

_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit: ; preds = %.lr.ph.i.i.i.i.i9, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76, %bb.p, %bb.r, %bb.t, %bb.u
  %.028.i.i.i.i.i19 = phi ptr [ %.1.i.i.i.i.i22, %bb.r ], [ %i.ap, %bb.u ], [ %.2.i.i.i.i.i18, %bb.t ], [ %.029.lcssa.i.i.i.i.i17, %bb.p ], [ %i.br, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit76 ], [ %i.bq, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit74 ], [ %i.bp, %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i11, %.lr.ph.i.i.i.i.i9 ]
  %i.bs = ptrtoint ptr %.028.i.i.i.i.i19 to i64
  %i.bt = sub i64 %i.bs, %i.aj                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 2                 ; 2 uses
  tail call void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %i.ao, i64 %i.bu, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.bv = sub i64 %i.an, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bt
  %i.bx = icmp eq i64 %i.bv, 0
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !335

._crit_edge:                                      ; preds = %_ZNK4llvh8ArrayRefIjE10take_untilIPFbjEEES1_T_.exit, %bb.a
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode13emitASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = icmp ugt i64 %2, 2
  br i1 %i.e, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.i = icmp ugt i64 %i.j, 2
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !336

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 3 uses
  %i.j = sub i64 %.sroa.8.096, %.sroa.speculated  ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx ; 3 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !307, !range !26, !noundef !27
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !131  ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !126    ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i8 0, ptr %i.d, align 1, !tbaa !53
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !131
  %.pre123 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.g, align 8, !tbaa !131
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  %i.w = phi ptr [ %.pre120, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i8 11, ptr %i.y, align 1, !tbaa !329
  %i.z = and i64 %i.s, 4294967295                 ; 3 uses
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.aa, %.pre-phi                ; 2 uses
  %.not.i.i.i42 = icmp ugt i64 %i.ab, %i.z
  br i1 %.not.i.i.i42, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.34, i64 noundef %i.z, i64 noundef %i.ab) #23
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i8 0, ptr %i.c, align 1, !tbaa !53
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !131
  %.pre128 = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.o, %i.ae
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !131
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129 = phi i64 [ %.pre128, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ]
  %i.af = phi ptr [ %.pre, %bb.i ], [ %i.o, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i46, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 10, ptr %i.ah, align 1, !tbaa !329
  %i.ai = and i64 %i.s, 4294967295                ; 3 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.aj, %.pre-phi129             ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.ak, %i.ai
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.34, i64 noundef %i.ai, i64 noundef %i.ak) #23
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink178.a = phi ptr [ %i.ac, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.al, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = phi ptr [ %i.w, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.af, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink178.a, i64 1
  store i8 %i.n, ptr %i.an, align 1, !tbaa !53
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.ao = phi ptr [ %i.bf, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.094 = phi ptr [ %i.bg, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load i32, ptr %.094, align 4, !tbaa !3
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !132
  %.not.i.i.i48 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !53
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !131
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %3, align 8, !tbaa !126   ; 4 uses
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 8 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %4 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #22 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax ; 2 uses
  store i8 %i.aq, ptr %5, align 1, !tbaa !53
  %6 = icmp sgt i64 %i.ax, 0
  br i1 %6, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %4, ptr %3, align 8, !tbaa !126
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  store ptr %i.be, ptr %i.h, align 8, !tbaa !132
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i
  %i.bf = phi ptr [ %i.at, %bb.m ], [ %i.bd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.094, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.bg, %i.k
  br i1 %.not40, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.sroa.073.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.j, %.loopexit ] ; 2 uses
  %.idx104 = shl nuw nsw i64 %.sroa.8.0.lcssa, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.073.0.lcssa, i64 %.idx104
  %.not99 = icmp eq i64 %.sroa.8.0.lcssa, 0
  br i1 %.not99, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br label %bb.r

._crit_edge103:                                   ; preds = %bb.ac, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph102, %bb.ac
  %.039100 = phi ptr [ %.sroa.073.0.lcssa, %.lr.ph102 ], [ %i.cn, %bb.ac ] ; 2 uses
  %i.bk = load i32, ptr %.039100, align 4, !tbaa !3
  %i.bl = load i8, ptr %i.bi, align 8, !tbaa !307, !range !26, !noundef !27
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc i32 %i.bk to i8
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !131 ; 7 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !126   ; 7 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 5 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 7 uses
  %i.bt = icmp ult i64 %i.bs, -2                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !53
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %.pre122 = load ptr, ptr %i.bj, align 8, !tbaa !131
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bo, %i.bv
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !131
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %i.bw = phi ptr [ %.pre122, %bb.t ], [ %i.bo, %bb.u ], [ %i.bv, %bb.v ]
  %i.bx = phi ptr [ %.pre.i52, %bb.t ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  store i8 12, ptr %i.by, align 1, !tbaa !329
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.ca, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.34, i64 noundef %i.bz, i64 noundef %i.cb) #23
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %i.a, align 1, !tbaa !53
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %.pre121 = load ptr, ptr %i.bj, align 8, !tbaa !131
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.ce = getelementptr i8, ptr %i.cd, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bo, %i.ce
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !131
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ]
  %i.cf = phi ptr [ %.pre121, %bb.y ], [ %i.bo, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cg = phi ptr [ %.pre.i57, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bs
  store i8 7, ptr %i.ch, align 1, !tbaa !329
  %i.ci = and i64 %i.bs, 4294967295               ; 3 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.cj, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.ck, %i.ci
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.34, i64 noundef %i.ci, i64 noundef %i.ck) #23
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink179 = phi ptr [ %i.cl, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.cc, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink179, i64 1
  store i8 %i.bn, ptr %i.cm, align 1, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %.039100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cn, %i.bh
  br i1 %.not, label %._crit_edge103, label %bb.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex13MatchCharNode16emitNonASCIIListEN4llvh8ArrayRefIjEERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not64 = icmp eq i64 %2, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.x, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.065 = phi ptr [ %1, %.lr.ph ], [ %i.br, %bb.x ] ; 2 uses
  %i.i = load i32, ptr %.065, align 4, !tbaa !3   ; 5 uses
  %i.j = icmp ult i32 %i.i, 65536
  br i1 %i.j, label %bb.c, label %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge

._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge: ; preds = %bb.b
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !307, !range !26
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !314, !range !26, !noundef !27
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !307, !range !26 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !131  ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !126    ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i8 0, ptr %i.d, align 1, !tbaa !53
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !131
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
end_hunk_3
