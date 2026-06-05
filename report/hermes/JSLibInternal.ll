inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0
%"class.llvh::SmallVector.161" = type { %"class.llvh::SmallVectorImpl.162", %"struct.llvh::SmallVectorStorage.165" }
%"class.llvh::SmallVectorImpl.162" = type { %"class.llvh::SmallVectorTemplateBase.163" }
%"class.llvh::SmallVectorTemplateBase.163" = type { %"class.llvh::SmallVectorTemplateCommon.164" }
%"class.llvh::SmallVectorTemplateCommon.164" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.165" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.166"] }
%"struct.llvh::AlignedCharArrayUnion.166" = type { %"struct.llvh::AlignedCharArray.167" }
%"struct.llvh::AlignedCharArray.167" = type { [1 x i8] }
%"class.llvh::raw_svector_ostream" = type { %"class.llvh::raw_pwrite_stream.base", ptr }
%"class.llvh::raw_pwrite_stream.base" = type { %"class.llvh::raw_ostream.base" }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.hermes::StackOverflowGuard" = type { i64, i64 }
%"class.hermes::vm::CallResult.188" = type { %"class.llvh::Optional" }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.189", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.189" = type { %"struct.llvh::AlignedCharArray.190" }
%"struct.llvh::AlignedCharArray.190" = type { [24 x i8] }
%"struct.hermes::ScopeChain" = type { %"class.std::vector.192" }
%"class.std::vector.192" = type { %"struct.std::_Vector_base.193" }
%"struct.std::_Vector_base.193" = type { %"struct.std::_Vector_base<hermes::ScopeChainItem, std::allocator<hermes::ScopeChainItem>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::ScopeChainItem, std::allocator<hermes::ScopeChainItem>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::ScopeChainItem, std::allocator<hermes::ScopeChainItem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::ScopeChainItem, std::allocator<hermes::ScopeChainItem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.hermes::regex::RegexBytecodeHeader" = type { i16, i16, i8, i8 }
%"class.hermes::regex::RegexBytecodeStream" = type <{ %"class.std::vector.205", i8, [7 x i8] }>
%"class.hermes::regex::Regex" = type { %"struct.hermes::regex::UTF16RegexTraits", %"class.hermes::regex::SyntaxFlags", i16, i32, %"class.std::vector.214", %"class.std::vector.219", i32, i8, %"class.std::deque.224", %"class.llvh::DenseMap.230", i8, %"class.std::vector.233" }
%"struct.hermes::regex::UTF16RegexTraits" = type { %"class.llvh::SmallDenseMap" }
%"class.llvh::SmallDenseMap" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.212" }
%"struct.llvh::AlignedCharArrayUnion.212" = type { %"struct.llvh::AlignedCharArray.213" }
%"struct.llvh::AlignedCharArray.213" = type { [128 x i8] }
%"class.hermes::regex::SyntaxFlags" = type { i8 }
%"class.std::vector.214" = type { %"struct.std::_Vector_base.215" }
%"struct.std::_Vector_base.215" = type { %"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.219" = type { %"struct.std::_Vector_base.220" }
%"struct.std::_Vector_base.220" = type { %"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::deque.224" = type { %"class.std::_Deque_base.225" }
%"class.std::_Deque_base.225" = type { %"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl" }
%"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl" = type { %"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.229", %"struct.std::_Deque_iterator.229" }
%"struct.std::_Deque_iterator.229" = type { ptr, ptr, ptr, ptr }
%"class.llvh::DenseMap.230" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::vector.233" = type { %"struct.std::_Vector_base.234" }
%"struct.std::_Vector_base.234" = type { %"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::ArrayRef.238" = type { ptr, i64 }
%"class.std::vector.281" = type { %"struct.std::_Vector_base.282" }
%"struct.std::_Vector_base.282" = type { %"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<hermes::regex::Node *> *, std::allocator<std::vector<hermes::regex::Node *> *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector.263" = type { %"class.llvh::SmallVectorImpl.264", %"struct.llvh::SmallVectorStorage.267" }
%"class.llvh::SmallVectorImpl.264" = type { %"class.llvh::SmallVectorTemplateBase.265" }
%"class.llvh::SmallVectorTemplateBase.265" = type { %"class.llvh::SmallVectorTemplateCommon.266" }
%"class.llvh::SmallVectorTemplateCommon.266" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.267" = type { [1 x %"struct.llvh::AlignedCharArrayUnion.268"] }
%"struct.llvh::AlignedCharArrayUnion.268" = type { %"struct.llvh::AlignedCharArray.157" }
%"class.llvh::SmallVector.288" = type <{ %"class.llvh::SmallVectorImpl.289", %"struct.llvh::SmallVectorStorage.292", [4 x i8] }>
%"class.llvh::SmallVectorImpl.289" = type { %"class.llvh::SmallVectorTemplateBase.290" }
%"class.llvh::SmallVectorTemplateBase.290" = type { %"class.llvh::SmallVectorTemplateCommon.291" }
%"class.llvh::SmallVectorTemplateCommon.291" = type { %"class.llvh::SmallVectorBase" }
%"struct.llvh::SmallVectorStorage.292" = type { [5 x %"struct.llvh::AlignedCharArrayUnion.293"] }
%"struct.llvh::AlignedCharArrayUnion.293" = type { %"struct.llvh::AlignedCharArray.294" }
%"struct.llvh::AlignedCharArray.294" = type { [4 x i8] }
%"class.std::reverse_iterator.321" = type { %"class.__gnu_cxx::__normal_iterator.269" }
%"class.__gnu_cxx::__normal_iterator.269" = type { ptr }
%"class.std::reverse_iterator.319" = type { %"class.__gnu_cxx::__normal_iterator.296" }
%"class.__gnu_cxx::__normal_iterator.296" = type { ptr }

$_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE = comdat any

$_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

$_ZNSt6vectorIhSaIhEED2Ev = comdat any

$_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev = comdat any

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

$_ZN4llvh12DenseMapInfoINS_8ArrayRefIDsEEE7isEqualES2_S2_ = comdat any

$_ZN4llvh7hashing6detail23hash_combine_range_implIKDsEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_ = comdat any

$_ZN4llvh7hashing6detail10hash_shortEPKcmm = comdat any

$_ZN4llvh8DenseMapINS_8ArrayRefIDsEEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEE16shrink_and_clearEv = comdat any

$_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_ = comdat any

$_ZN6hermes5regex4Node7compileERKSt6vectorIPS1_SaIS3_EERNS0_19RegexBytecodeStreamE = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag = comdat any

$_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb = comdat any

$_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj = comdat any

$_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE = comdat any

$_ZTVN6hermes5regex4NodeE = comdat any

$_ZTVN6hermes5regex8GoalNodeE = comdat any

$_ZTVN6hermes5regex13MatchCharNodeE = comdat any

$_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@.str.2 = private unnamed_addr constant [12 x i8] c"(function (\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"(function*(\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"(async function (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"){\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\0A})\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@_ZTVN4llvh19raw_svector_ostreamE = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode = internal global %"class.std::vector.205" zeroinitializer, align 16
@_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.8 = private unnamed_addr constant [30 x i16] [i16 94, i16 92, i16 115, i16 42, i16 114, i16 101, i16 116, i16 117, i16 114, i16 110, i16 91, i16 32, i16 92, i16 116, i16 93, i16 43, i16 116, i16 104, i16 105, i16 115, i16 92, i16 115, i16 42, i16 59, i16 63, i16 92, i16 115, i16 42, i16 36, i16 0], align 2
@_ZTVN6hermes5regex4NodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex4NodeD2Ev, ptr @_ZN6hermes5regex4NodeD0Ev, ptr @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex4Node16matchConstraintsEv, ptr @_ZNK6hermes5regex4Node6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex4Node15reverseChildrenEv, ptr @_ZN6hermes5regex4Node8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN6hermes5regex8GoalNodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex4NodeD2Ev, ptr @_ZN6hermes5regex8GoalNodeD0Ev, ptr @_ZNK6hermes5regex4Node26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex4Node21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex4Node16matchConstraintsEv, ptr @_ZNK6hermes5regex8GoalNode6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex4Node15reverseChildrenEv, ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTVN6hermes5regex13MatchCharNodeE = linkonce_odr hidden unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr null, ptr @_ZN6hermes5regex13MatchCharNodeD2Ev, ptr @_ZN6hermes5regex13MatchCharNodeD0Ev, ptr @_ZNK6hermes5regex13MatchCharNode26matchesExactlyOneCharacterEv, ptr @_ZNK6hermes5regex13MatchCharNode21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE, ptr @_ZNK6hermes5regex13MatchCharNode16matchConstraintsEv, ptr @_ZNK6hermes5regex4Node6isGoalEv, ptr @_ZN6hermes5regex4Node11getChildrenEv, ptr @_ZN6hermes5regex13MatchCharNode15reverseChildrenEv, ptr @_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE] }, comdat, align 8
@.str.13 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"String length exceeds limit\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@switch.table._ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE = private unnamed_addr constant [3 x i64] [i64 208, i64 648, i64 616], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr noundef %2, ptr %3, ptr readonly captures(none) %4, i32 noundef %5, ptr noundef %6, i32 %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 48) #16
  br label %_ZN6hermes2vm17NativeConstructor6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEEjPFNS8_INS0_12PseudoHandleIS5_EELSB_6EEES3_S6_S7_ENS0_8CellKindE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes2vm17NativeConstructor6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEEjPFNS8_INS0_12PseudoHandleIS5_EELSB_6EEES3_S6_S7_ENS0_8CellKindE.exit

_ZN6hermes2vm17NativeConstructor6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEEjPFNS8_INS0_12PseudoHandleIS5_EELSB_6EEES3_S6_S7_ENS0_8CellKindE.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8, !tbaa !15 ; 2 uses
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 281474976710655
  %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !15 ; 2 uses
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i.i, 281474976710655
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.n = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.o = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %i.n
  %i.p = trunc i64 %i.o to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.p
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.m, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i4.i.i.i.i.i.i.i.i, %i.n
  %i.s = trunc i64 %i.r to i32
  %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.s
  store i32 %.sroa.0.0.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %6, ptr %i.v, align 8, !tbaa !30
  store i32 1174405168, ptr %i.h, align 8, !tbaa !32
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = or i64 %i.w, -281474976710656            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %_ZN6hermes2vm17NativeConstructor6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEEjPFNS8_INS0_12PseudoHandleIS5_EELSB_6EEES3_S6_S7_ENS0_8CellKindE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !36
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17NativeConstructorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm17NativeConstructor6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEEjPFNS8_INS0_12PseudoHandleIS5_EELSB_6EEES3_S6_S7_ENS0_8CellKindE.exit
  %i.ag = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.z, i64 %i.x) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17NativeConstructorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_17NativeConstructorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call noundef i32 @_ZN6hermes2vm8Callable28defineNameLengthAndPrototypeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDEjNS2_INS0_8JSObjectEEENS1_17WritablePrototypeEb(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, i32 noundef %5, ptr %3, i8 noundef zeroext 0, i1 noundef zeroext false) #16 ; 0 uses
  %i.ai = tail call ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #16
  %i.aj = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, i32 318, ptr %.0.i.i.i.i.i.i, i32 0) #16 ; 0 uses
  ret ptr %.0.i.i.i.i.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6hermes2vm8Callable28defineNameLengthAndPrototypeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDEjNS2_INS0_8JSObjectEEENS1_17WritablePrototypeEb(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32 noundef, ptr, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2, i32 %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %0, ptr %8, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !53
  store ptr %8, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.l, ptr noundef %4, ptr noundef %5, i32 %3, i32 noundef %6, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #16 ; 2 uses
  %i.n = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, i32 %7, ptr %i.m, i32 0) #16 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !15
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.0.0.copyload.i, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, ptr noundef, i32, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEEjPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr noundef %2, ptr %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = tail call ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr noundef %2, ptr %3, ptr nonnull %i.a, i32 noundef %4, ptr noundef %5, i32 poison)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !53
  store ptr %6, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.l, ptr noundef %3, ptr noundef %4, i32 %2, i32 noundef %5, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #16
  %i.n = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, i32 318, ptr %i.m, i32 0) #16 ; 0 uses
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2, i32 %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %12 = alloca %"class.hermes::vm::StringView", align 8 ; 6 uses
  %13 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  %14 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %15 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  %16 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %0, ptr %11, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb:bb.a
  %.0.i.i.i.i.i.i60 = phi ptr [ %i.bd, %bb.j ], [ %i.bi, %bb.k ] ; 2 uses
  %.not57 = icmp eq ptr %6, null
  br i1 %.not57, label %bb.q, label %_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE.exit67

_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE.exit67: ; preds = %_ZN6hermes2vm13MutableHandleINS0_14NativeFunctionEEC2ERNS0_15HandleRootOwnerEPS2_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.bj, ptr %15, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 32, ptr %i.bl, align 4, !tbaa !51
  store i32 544499059, ptr %i.bj, align 8
  store i32 4, ptr %i.bk, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 1, ptr %i.bm, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %16, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %15, ptr %i.bo, align 8, !tbaa !59
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef null, i64 noundef 0, i32 noundef 0) #16
  %i.bp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamERKNS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(16) %12) #16 ; 0 uses
  %i.bq = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !52 ; 2 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %.not.i68 = icmp ult i32 %i.br, 65536
  br i1 %.not.i68, label %bb.l, label %bb.m, !prof !47

bb.l:                                             ; preds = %_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE.exit67
  %i.bt = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bq, i64 %i.bs) #16
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit73

bb.m:                                             ; preds = %_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr %i.bq, i64 %i.bs)
  %i.bu = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  %i.bv = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.m
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !32
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit73

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit73: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70
  %.pn.i71 = phi { i32, i64 } [ %i.bt, %bb.l ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70 ] ; 2 uses
  %i.ca = extractvalue { i32, i64 } %.pn.i71, 0
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit74, !prof !14

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit73
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit74: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit73
  %i.cc = extractvalue { i32, i64 } %.pn.i71, 1
  %i.cd = and i64 %i.cc, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call ptr @_ZN6hermes2vm15IdentifierTable28getSymbolHandleFromPrimitiveERNS0_7RuntimeENS0_12PseudoHandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84) %i.l, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ce) #16 ; 2 uses
  %.not.i75 = icmp eq ptr %i.cf, inttoptr (i64 -1 to ptr)
  br i1 %.not.i75, label %bb.o, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76, !prof !14

bb.o:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit74
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76: ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit74
  %.sroa.0.0.copyload.i.i77 = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.cg = trunc i64 %.sroa.0.0.copyload.i.i77 to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ci = call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.ch, ptr noundef %4, ptr noundef nonnull %6, i32 %i.cg, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #16
  %.sroa.0.0.copyload.i.i78 = load i64, ptr %i.ci, align 8, !tbaa !15
  %i.cj = or i64 %.sroa.0.0.copyload.i.i78, -281474976710656
  store i64 %i.cj, ptr %.0.i.i.i.i.i.i60, align 8, !tbaa !64
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.ck = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bj
  br i1 %i.cl, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit79, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76
  call void @free(ptr noundef %i.ck) #16
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit79

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit79:         ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_6HandleINS0_8SymbolIDEEEEET_NS0_10CallResultIS6_Xsr6detail23GetCallResultSpecializeIS6_EE5valueEEE.exit76, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit79, %_ZN6hermes2vm13MutableHandleINS0_14NativeFunctionEEC2ERNS0_15HandleRootOwnerEPS2_.exit61
  %i.cm = call i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i60) #16
  %i.cn = or i64 %i.cm, -281474976710656          ; 2 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 192 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 200
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %bb.r, label %bb.s, !prof !47

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !36
  store i64 %i.cn, ptr %i.cq, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.s:                                             ; preds = %bb.q
  %i.cv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.co, i64 %i.cn) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16PropertyAccessorEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i.i.i.i80 = phi ptr [ %i.cq, %bb.r ], [ %i.cv, %bb.s ]
  %i.cw = zext i1 %7 to i32
  %i.cx = select i1 %8, i32 4, i32 0
  %i.cy = or disjoint i32 %i.cx, %i.cw
  %.sroa.082.0.insert.ext = or disjoint i32 %i.cy, 232
  %i.cz = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, i32 %.sroa.082.0.insert.ext, ptr %.0.i.i.i.i.i.i80, i32 0) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  ret void
}

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamERKNS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm15IdentifierTable28getSymbolHandleFromPrimitiveERNS0_7RuntimeENS0_12PseudoHandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #4

declare i64 @_ZN6hermes2vm16PropertyAccessor6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEES6_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEENS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, i32 %4, ptr %3, i32 0) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %2, i32 318, ptr %3, i32 0) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm23iteratorCloseAndRethrowERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !36
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.c, i64 %.sroa.0.0.copyload.i) #16 ; 2 uses
  %.sroa.0.0.copyload.i8.pre = load i64, ptr %i.j, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload.i8 = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i8.pre, %bb.c ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.j, %bb.c ]
  %i.k = tail call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i8) #16
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  store i64 -1970324836974592, ptr %i.a, align 8, !tbaa !64
  %i.l = tail call noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr nonnull %.0.i.i.i.i.i.i) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.d
  ret i32 0
}

declare noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef readonly captures(none) dead_on_return %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 6 uses
  %5 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 6 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::CallResult.188", align 8 ; 15 uses
  %8 = alloca %"struct.hermes::ScopeChain", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %0, ptr %6, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  store ptr %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !53
  store ptr %6, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66   ; 4 uses
  %i.n = call i32 @llvm.usub.sat.i32(i32 %i.m, i32 1) ; 7 uses
  %i.o = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.n, i32 noundef %i.n) #16 ; 3 uses
  %.not239 = icmp eq ptr %i.o, inttoptr (i64 -1 to ptr)
  br i1 %.not239, label %.critedge105, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !36
  store i64 -844424930131968, ptr %i.r, align 8, !tbaa !15
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.p, i64 -844424930131968) #16
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre257 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre259 = load ptr, ptr %.phi.trans.insert258, align 8, !tbaa !46
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.t, %bb.c ], [ %.pre259, %bb.d ]
  %i.y = phi ptr [ %i.v, %bb.c ], [ %.pre257, %bb.d ] ; 4 uses
  %i.z = phi ptr [ %i.p, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.w, %bb.d ] ; 6 uses
  %.not = icmp ult i32 %i.m, 2                    ; 2 uses
  %i.aa = add i32 %i.n, -1                        ; 2 uses
  %i.ab = select i1 %.not, i32 0, i32 %i.aa
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp ult ptr %i.y, %i.x
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !36
  store i64 -281474976710656, ptr %i.y, align 8, !tbaa !15
  br label %switch.lookup

bb.f:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ag = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.z, i64 -281474976710656) #16
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i107 = phi ptr [ %i.y, %bb.e ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE, i64 %i.ah
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %switch.load
  %.sroa.0.0.copyload.i.i.i.i109 = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.aj = or i64 %.sroa.0.0.copyload.i.i.i.i109, -281474976710656
  store i64 %i.aj, ptr %.0.i.i.i.i.i.i107, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = load i64, ptr %i.al, align 8, !tbaa !64
  %.mask.i = and i64 %i.am, -140737488355328
  %i.an = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.an, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  %i.ao = load ptr, ptr %1, align 8, !tbaa !70, !noalias !71
  %.sroa.049.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ap = and i64 %.sroa.049.0.copyload, 281474976710655
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ar, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.as = ptrtoint ptr %0 to i64
  %i.at = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.au = add i64 %i.at, %i.as
  %i.av = or i64 %i.au, -281474976710656
  %i.aw = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bc = icmp ult ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !36
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.be = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ax, i64 %i.aw) #16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %switch.lookup, %bb.i, %bb.h
  %storemerge.in = phi ptr [ %i.be, %bb.i ], [ %i.az, %bb.h ], [ %.0.i.i.i.i.i.i107, %switch.lookup ] ; 2 uses
  %i.bf = icmp eq i32 %i.m, 0
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.bh = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bg, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 14) #16
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = or i64 %i.bi, -844424930131968
  store i64 %i.bj, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.ap

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bl = load i32, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not103246.not = icmp eq i32 %i.m, 1           ; 2 uses
  br i1 %.not103246.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bm = zext i32 %i.bl to i64
  %umax = call i32 @llvm.umax.i32(i32 %i.n, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.sroa.14.0248 = phi i32 [ 0, %.lr.ph ], [ %i.cu, %bb.p ]
  %.sroa.0208.0247 = phi i64 [ %i.ac, %.lr.ph ], [ %i.cr, %bb.p ]
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 %i.bl, ptr %i.k, align 8, !tbaa !53
  store ptr %i.bq, ptr %i.j, align 8, !tbaa !46
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !36
  %i.br = load i32, ptr %i.l, align 8, !tbaa !66
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv, %i.bs
  %i.bu = load ptr, ptr %1, align 8
  %i.bv = sub nsw i64 0, %indvars.iv
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.02.0.i = select i1 %i.bt, ptr %i.bx, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.by = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i) #16 ; 2 uses
  %.not241 = icmp eq ptr %i.by, inttoptr (i64 -1 to ptr)
  br i1 %.not241, label %.critedge105, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = or i64 %i.bz, -844424930131968          ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 192 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 200
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !46
  %i.cg = icmp ult ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !36
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !15
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ci = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cb, i64 %i.ca) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
end_hunk_1
begin_hunk_2_@_ZN6hermes5regex13MatchCharNode8emitStepERNS0_19RegexBytecodeStreamE:bb.a
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
  br i1 %i.bx, label %._crit_edge, label %.lr.ph, !llvm.loop !587

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
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !588

bb.b:                                             ; preds = %.lr.ph97, %.loopexit
  %.sroa.8.096 = phi i64 [ %2, %.lr.ph97 ], [ %i.j, %.loopexit ] ; 2 uses
  %.sroa.073.095 = phi ptr [ %1, %.lr.ph97 ], [ %i.k, %.loopexit ] ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.096, i64 255) ; 3 uses
  %i.j = sub i64 %.sroa.8.096, %.sroa.speculated  ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.073.095, i64 %.idx ; 3 uses
  %i.l = load i8, ptr %i.f, align 8, !tbaa !558, !range !486, !noundef !583
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i64 %.sroa.speculated to i8
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !83   ; 7 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !81     ; 7 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 5 uses
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp ult i64 %i.s, -2                    ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i8 0, ptr %i.d, align 1, !tbaa !32
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !81  ; 2 uses
  %.pre120 = load ptr, ptr %i.g, align 8, !tbaa !83
  %.pre123 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 2        ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre123, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  %i.w = phi ptr [ %.pre120, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = phi ptr [ %.pre.i, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i8 11, ptr %i.y, align 1, !tbaa !580
  %i.z = and i64 %i.s, 4294967295                 ; 3 uses
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.aa, %.pre-phi                ; 2 uses
  %.not.i.i.i42 = icmp ugt i64 %i.ab, %i.z
  br i1 %.not.i.i.i42, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.z, i64 noundef %i.ab) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_20MatchNCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 0, ptr %i.c, align 1, !tbaa !32
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.o, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i46 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !83
  %.pre128 = ptrtoint ptr %.pre.i46 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.ad, i64 2      ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.o, %i.ae
  br i1 %.not.i.i.i43, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.pre-phi129 = phi i64 [ %.pre128, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ]
  %i.af = phi ptr [ %.pre, %bb.i ], [ %i.o, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i46, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.s
  store i8 10, ptr %i.ah, align 1, !tbaa !580
  %i.ai = and i64 %i.s, 4294967295                ; 3 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.aj, %.pre-phi129             ; 2 uses
  %.not.i.i.i47 = icmp ugt i64 %i.ak, %i.ai
  br i1 %.not.i.i.i47, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.ai, i64 noundef %i.ak) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15MatchNChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit
  %.sink178.a = phi ptr [ %i.ac, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.al, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.am = phi ptr [ %i.w, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_20MatchNCharICase8InsnEEptEv.exit ], [ %i.af, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15MatchNChar8InsnEEptEv.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink178.a, i64 1
  store i8 %i.n, ptr %i.an, align 1, !tbaa !32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit
  %i.ao = phi ptr [ %i.bf, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.094 = phi ptr [ %i.bg, %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit ], [ %.sroa.073.095, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load i32, ptr %.094, align 4, !tbaa !3
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !458
  %.not.i.i.i48 = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i.i48, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !32
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.g, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream9emitChar8Ec.exit

bb.n:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %3, align 8, !tbaa !81    ; 4 uses
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 8 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775807
  br i1 %i.ay, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.az = add i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ax
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 9223372036854775807)
  %i.bc = select i1 %i.ba, i64 9223372036854775807, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i, label %4

4:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i: ; preds = %4, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i
  %6 = phi ptr [ %5, %4 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.ax ; 2 uses
  store i8 %i.aq, ptr %7, align 1, !tbaa !32
  %8 = icmp sgt i64 %i.ax, 0
  br i1 %8, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %i.au, i64 %i.ax, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.p, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i
  store ptr %6, ptr %3, align 8, !tbaa !81
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 %i.bc
  store ptr %i.be, ptr %i.h, align 8, !tbaa !458
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
  %i.bl = load i8, ptr %i.bi, align 8, !tbaa !558, !range !486, !noundef !583
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = trunc i32 %i.bk to i8
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !83 ; 7 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !81    ; 7 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 5 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 7 uses
  %i.bt = icmp ult i64 %i.bs, -2                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i8 0, ptr %i.b, align 1, !tbaa !32
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i52 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre122 = load ptr, ptr %i.bj, align 8, !tbaa !83
  %.pre124 = ptrtoint ptr %.pre.i52 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 2      ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bo, %i.bv
  br i1 %.not.i.i.i49, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bv, ptr %i.bj, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %.pre-phi125 = phi i64 [ %.pre124, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %i.bw = phi ptr [ %.pre122, %bb.t ], [ %i.bo, %bb.u ], [ %i.bv, %bb.v ]
  %i.bx = phi ptr [ %.pre.i52, %bb.t ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bs
  store i8 12, ptr %i.by, align 1, !tbaa !580
  %i.bz = and i64 %i.bs, 4294967295               ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.ca, %.pre-phi125             ; 2 uses
  %.not.i.i.i53 = icmp ugt i64 %i.cb, %i.bz
  br i1 %.not.i.i.i53, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.bz, i64 noundef %i.cb) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19MatchCharICase8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !32
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.bo, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i57 = load ptr, ptr %3, align 8, !tbaa !81 ; 2 uses
  %.pre121 = load ptr, ptr %i.bj, align 8, !tbaa !83
  %.pre126 = ptrtoint ptr %.pre.i57 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.z:                                             ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %i.bp, i64 %i.bs
  %i.ce = getelementptr i8, ptr %i.cd, i64 2      ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.bo, %i.ce
  br i1 %.not.i.i.i54, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ce, ptr %i.bj, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.y, %bb.z, %bb.aa
  %.pre-phi127 = phi i64 [ %.pre126, %bb.y ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ]
  %i.cf = phi ptr [ %.pre121, %bb.y ], [ %i.bo, %bb.z ], [ %i.ce, %bb.aa ]
  %i.cg = phi ptr [ %.pre.i57, %bb.y ], [ %i.bp, %bb.z ], [ %i.bp, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bs
  store i8 7, ptr %i.ch, align 1, !tbaa !580
  %i.ci = and i64 %i.bs, 4294967295               ; 3 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.cj, %.pre-phi127             ; 2 uses
  %.not.i.i.i58 = icmp ugt i64 %i.ck, %i.ci
  br i1 %.not.i.i.i58, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, i64 noundef %i.ci, i64 noundef %i.ck) #18
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14MatchChar8InsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit
  %.sink179 = phi ptr [ %i.cl, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14MatchChar8InsnEEptEv.exit ], [ %i.cc, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19MatchCharICase8InsnEEptEv.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink179, i64 1
  store i8 %i.bn, ptr %i.cm, align 1, !tbaa !32
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
  %.pre74 = load i8, ptr %i.g, align 8, !tbaa !558, !range !486
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.f, align 1, !tbaa !565, !range !486, !noundef !583
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = and i32 %i.i, 63488
  %switch.selectcmp.i = icmp eq i32 %i.m, 55296
  %or.cond = and i1 %switch.selectcmp.i, %i.l
  %.pre75 = load i8, ptr %i.g, align 8, !tbaa !558, !range !486 ; 2 uses
  br i1 %or.cond, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread55

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread: ; preds = %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge, %bb.c
  %i.n = phi i8 [ %.pre74, %._ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread_crit_edge ], [ %.pre75, %bb.c ]
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !83   ; 7 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !81     ; 7 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 5 uses
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ult i64 %i.t, -5                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i8 0, ptr %i.d, align 1, !tbaa !32
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr %i.p, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !81  ; 2 uses
  %.pre77 = load ptr, ptr %i.h, align 8, !tbaa !83
  %.pre78 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_23U16MatchCharICase32InsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.q, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 5        ; 3 uses
end_hunk_2
