inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0
%"class.hermes::vm::StringView" = type { %union.anon.159, i32, i32 }
%union.anon.159 = type { ptr }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.161" }
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
@switch.table._ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE = private unnamed_addr constant [3 x i16] [i16 208, i16 648, i16 616], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm23defineSystemConstructorERNS0_7RuntimeENS0_8SymbolIDEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvS2_NS0_10NativeArgsEENS0_6HandleINS0_8JSObjectEEESF_jPFNS4_INS0_12PseudoHandleISE_EELS7_6EEES2_SF_S9_ENS0_8CellKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr noundef %2, ptr %3, ptr nofree readonly captures(none) %4, i32 noundef %5, ptr noundef %6, i32 %7) local_unnamed_addr #0 {
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
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm14defineAccessorERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEESF_bb:bb.a

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
define hidden { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE, i64 %i.ah
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
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
  %.0.i.i.i.i.i.i111 = phi ptr [ %i.cd, %bb.n ], [ %i.ci, %bb.o ] ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv to i32
  %i.ck = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.o, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.cj, ptr %.0.i.i.i.i.i.i111) #16 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i111, align 8, !tbaa !15
  %i.cl = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !75
  %i.cp = and i32 %i.co, 2147483647
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add i64 %.sroa.0208.0247, %i.cq         ; 3 uses
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = or i32 %.sroa.14.0248, %i.ct            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.l, !llvm.loop !78

.critedge:                                        ; preds = %bb.p, %bb.k
  %.sroa.0208.0.lcssa = phi i64 [ %i.ac, %bb.k ], [ %i.cr, %bb.p ]
  %.sroa.14.0.lcssa = phi i32 [ 0, %bb.k ], [ %i.cu, %bb.p ]
  %i.cv = load i32, ptr %i.l, align 8, !tbaa !66
  %i.cw = icmp ult i32 %i.n, %i.cv
  %i.cx = load ptr, ptr %1, align 8
  %i.cy = zext i32 %i.n to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %.sroa.02.0.i112 = select i1 %i.cw, ptr %i.db, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.dc = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i112) #16 ; 2 uses
  %.not240 = icmp eq ptr %i.dc, inttoptr (i64 -1 to ptr)
  br i1 %.not240, label %.critedge105, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.dd = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.de = or i64 %i.dd, -844424930131968
  store i64 %i.de, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !64
  %i.df = and i64 %i.dd, 281474976710655
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !75
  %i.dj = and i32 %i.di, 2147483647
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add i64 %.sroa.0208.0.lcssa, %i.dk      ; 3 uses
  %i.dm = lshr i64 %i.dl, 32
  %i.dn = trunc nuw i64 %i.dm to i32
  %i.do = or i32 %.sroa.14.0.lcssa, %i.dn         ; 2 uses
  %i.dp = icmp eq i32 %2, 0
  %or.cond = and i1 %i.dp, %.not103246.not
  br i1 %or.cond, label %bb.r, label %bb.ap

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.dr = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.dq, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 447) #16
  %.sroa.0.0.copyload.i.i.i114 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ds = and i64 %.sroa.0.0.copyload.i.i.i114, 281474976710655
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8) %i.dt, ptr noundef %i.dr) #16
  br i1 %i.du, label %_ZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE.exit.thread, label %bb.s

_ZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.dv = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i) #16 ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0      ; 4 uses
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1      ; 5 uses
  %i.dy = load atomic i8, ptr @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode acquire, align 8
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.v, !prof !80

bb.t:                                             ; preds = %bb.s
  %i.ea = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode) #16
  %.not.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call fastcc void @_ZN6hermes2vmL26getReturnThisRegexBytecodeEv()
  %i.eb = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIhSaIhEED2Ev, ptr nonnull @_ZZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode, ptr nonnull @__dso_handle) #16 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes2vmL12isReturnThisENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeEE8bytecode) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.5.8.extract.trunc.i = trunc i64 %i.dx to i32 ; 3 uses
  %i.ec = icmp slt i32 %.sroa.5.8.extract.trunc.i, 0
end_hunk_1
