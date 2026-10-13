Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSRegExp?download=true
inline.NumInlined: 2625
inline.NumDeleted: 1367
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"struct.hermes::regex::RegexBytecodeHeader" = type { i16, i16, i8, i8 }
%"class.hermes::regex::RegexBytecodeStream" = type <{ %"class.std::vector.205", i8, [7 x i8] }>
%"class.std::vector.205" = type { %"struct.std::_Vector_base.206" }
%"struct.std::_Vector_base.206" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::SmallVector.176" = type <{ %"class.llvh::SmallVectorImpl.166", %"struct.llvh::SmallVectorStorage.177", [4 x i8] }>
%"struct.llvh::SmallVectorStorage.177" = type { [6 x %"struct.llvh::AlignedCharArrayUnion.170"] }
%"class.hermes::regex::Regex" = type { %"struct.hermes::regex::UTF16RegexTraits", %"class.hermes::regex::SyntaxFlags", i16, i32, %"class.std::vector.181", %"class.std::vector.186", i32, i8, %"class.std::deque.191", %"class.llvh::DenseMap.197", i8, %"class.std::vector.200" }
%"struct.hermes::regex::UTF16RegexTraits" = type { %"class.llvh::SmallDenseMap" }
%"class.llvh::SmallDenseMap" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion.179" }
%"struct.llvh::AlignedCharArrayUnion.179" = type { %"struct.llvh::AlignedCharArray.180" }
%"struct.llvh::AlignedCharArray.180" = type { [128 x i8] }
%"class.hermes::regex::SyntaxFlags" = type { i8 }
%"class.std::vector.181" = type { %"struct.std::_Vector_base.182" }
%"struct.std::_Vector_base.182" = type { %"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::regex::Node *, std::allocator<hermes::regex::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.186" = type { %"struct.std::_Vector_base.187" }
%"struct.std::_Vector_base.187" = type { %"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<hermes::regex::Node>, std::allocator<std::unique_ptr<hermes::regex::Node>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::deque.191" = type { %"class.std::_Deque_base.192" }
%"class.std::_Deque_base.192" = type { %"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl" }
%"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl" = type { %"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<llvh::SmallVector<char16_t, 5>, std::allocator<llvh::SmallVector<char16_t, 5>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.196", %"struct.std::_Deque_iterator.196" }
%"struct.std::_Deque_iterator.196" = type { ptr, ptr, ptr, ptr }
%"class.llvh::DenseMap.197" = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"class.std::vector.200" = type { %"struct.std::_Vector_base.201" }
%"struct.std::_Vector_base.201" = type { %"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>, std::allocator<std::pair<llvh::SmallVector<char16_t, 5>, hermes::regex::BackRefNode *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.210", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.210" = type { %"class.llvh::SmallVectorImpl.211", %"struct.llvh::SmallVectorStorage.214" }
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
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"u2028\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\\u2028\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"u2029\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\\u2029\00", align 1
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @_ZN6hermes2vm6GCBase9IDTracker13untrackNativeEPKv(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull %i.b) #19
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !24
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !183, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 5, ptr %i.d, align 8, !tbaa !9
  store i8 1, ptr %i.a, align 4, !tbaa !29
  br label %_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit

_ZN6hermes2vm8Metadata7Builder23addJSObjectOverlapSlotsEj.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6hermes2vm17JSObjectBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) %1) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm8JSRegExp2vtE, ptr %i.e, align 8, !tbaa !198
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
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !31
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !31 ; 2 uses
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = and i64 %i.g, 562949949227008
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = icmp eq ptr %i.f, %i.i
  br i1 %i.j, label %_ZN6hermes2vm9GCPointerINS0_15StringPrimitiveEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !35

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
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.c, align 4, !tbaa !9
  %i.p = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 342, i32 314, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, i32 0) #19 ; 0 uses
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %0, align 8, !tbaa !31
  %i.q = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38
  %.sroa.0.6.i.i = and i8 %i.t, 127
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  store i8 %.sroa.0.6.i.i, ptr %i.u, align 4, !tbaa !39
  %i.v = trunc i64 %5 to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %5) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr readonly align 1 %4, i64 %5, i1 false)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSRegExp13escapePatternENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE:bb.a
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
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !31
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp ugt i32 %i.u, 150994943
  br i1 %i.v, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143
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
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !143
  br label %bb.q

bb.j:                                             ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %.not.i1.i = icmp samesign ult i32 %i.o, 1073741824
  br i1 %.not.i1.i, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.l, align 8, !tbaa !31
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr               ; 8 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = icmp ugt i32 %i.ah, 150994943
  br i1 %i.ai, label %bb.x, label %bb.l, !prof !104

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
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.al, align 8, !tbaa !31
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !146
  br label %bb.y

bb.p:                                             ; preds = %bb.c
  %i.aq = and i64 %i.n, 1073741823                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.q:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i.sink.i.i.ph = phi ptr [ %i.ae, %bb.i ], [ %i.z, %bb.h ], [ %i.y, %bb.g ], [ %i.x, %bb.e ]
  %i.as = and i64 %i.n, 1073741823                ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.as ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %i.l, align 8, !tbaa !31
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i.i24, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr               ; 5 uses
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 150994943
  br i1 %i.ax, label %bb.r, label %bb.s, !prof !104

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !143
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
  %.sroa.0.0.copyload.i.i.i2.i.i28 = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i2.i.i28, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !143
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !146 ; 2 uses
  %i.bp = and i64 %i.n, 1073741823                ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.y:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.sink.i4.i.ph.ph = phi ptr [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.ap, %bb.o ]
  %i.br = and i64 %i.n, 1073741823                ; 4 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph.ph, i64 %i.br ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i15 = and i32 %i.ah, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i15, label %bb.ab [
    i32 117440512, label %bb.z
    i32 50331648, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.aa:                                            ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.ab:                                            ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i22 = load i64, ptr %i.bv, align 8, !tbaa !31
  %i.bw = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i22, 281474976710655
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !146
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16: ; preds = %bb.w, %bb.ab, %bb.aa, %bb.z, %bb.x
  %.pre-phi111 = phi i64 [ %.pre110, %bb.w ], [ %i.br, %bb.ab ], [ %i.br, %bb.aa ], [ %i.br, %bb.z ], [ %i.bp, %bb.x ]
  %i.ca = phi ptr [ %i.bm, %bb.w ], [ %i.bs, %bb.ab ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.z ], [ %i.bq, %bb.x ]
  %.0.i.sink.i4.i17 = phi ptr [ %i.l, %bb.w ], [ %i.bz, %bb.ab ], [ %i.bu, %bb.aa ], [ %i.bt, %bb.z ], [ %i.bo, %bb.x ]
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i17, i64 %.pre-phi111
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.q
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16
  %.sroa.0.0.i100 = phi ptr [ %i.bh, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.3.0.i98 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ %i.ca, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.3.0.i18 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ %i.cc, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.0.0.i19 = phi ptr [ %i.bk, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, %_ZNK6hermes2vm10StringView3endEv.exit
  %.sroa.086.0 = phi ptr [ %.sroa.0.0.i100, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %.sroa.086.0.be, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.3.0.i98, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %.sroa.7.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 3 uses
  %.0 = phi i1 [ false, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %i.fs, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 16 uses
  %.not.i.i29 = icmp eq ptr %.sroa.086.0, null    ; 3 uses
  br i1 %.not.i.i29, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit: ; preds = %bb.ac
  %.not108 = icmp eq ptr %.sroa.7.0, %.sroa.3.0.i18
  br i1 %.not108, label %bb.ad, label %bb.ae

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread: ; preds = %bb.ac
  %.not = icmp eq ptr %.sroa.086.0, %.sroa.0.0.i19
  br i1 %.not, label %bb.ad, label %.thread107

bb.ad:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.cd = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EEC2EPKDs.exit, label %bb.as

.thread107:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.ce = load i8, ptr %.sroa.086.0, align 1, !tbaa !39
  %i.cf = sext i8 %i.ce to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

bb.ae:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.cg = load i16, ptr %.sroa.7.0, align 2, !tbaa !45
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit: ; preds = %.thread107, %bb.ae
  %i.ch = phi i16 [ %i.cf, %.thread107 ], [ %i.cg, %bb.ae ] ; 3 uses
  switch i16 %i.ch, label %bb.ap [
    i16 47, label %bb.af
    i16 10, label %bb.ah
    i16 13, label %bb.aj
    i16 8232, label %bb.al
    i16 8233, label %bb.an
  ]

bb.af:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %7 = select i1 %.0, ptr @.str.2, ptr @.str.3    ; 2 uses
  %i.ci = select i1 %.0, i64 1, i64 2             ; 3 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !43
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = sub nsw i64 %i.ck, %i.cm
  %i.co = icmp ugt i64 %i.ci, %i.cn
  br i1 %i.co, label %bb.ag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nuw nsw i64 %i.ci, %i.cm
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef %i.cp, i64 noundef 2) #19
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.pre7.i.i = zext i32 %.pre.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ag, %bb.af
  %.pre-phi.i.i = phi i64 [ %.pre7.i.i, %bb.ag ], [ %i.cm, %bb.af ]
  %i.cq = phi i32 [ %.pre.i.i, %bb.ag ], [ %i.cl, %bb.af ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %.pre-phi.i.i ; 2 uses
  %8 = load i8, ptr %7, align 1, !tbaa !39
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %i.cs, align 2, !tbaa !45
  br i1 %.0, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !39
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %i.ct, align 2, !tbaa !45
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cu = trunc nuw nsw i64 %i.ci to i32
  %i.cv = add i32 %i.cq, %i.cu
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.ah:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %13 = select i1 %.0, ptr @.str.4, ptr @.str.5   ; 2 uses
  %i.cw = select i1 %.0, i64 1, i64 2             ; 3 uses
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !43
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 3 uses
  %i.db = sub nsw i64 %i.cy, %i.da
  %i.dc = icmp ugt i64 %i.cw, %i.db
  br i1 %i.dc, label %bb.ai, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33

bb.ai:                                            ; preds = %bb.ah
  %i.dd = add nuw nsw i64 %i.cw, %i.da
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef %i.dd, i64 noundef 2) #19
  %.pre.i.i37 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.pre7.i.i38 = zext i32 %.pre.i.i37 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i.i.i.i33:                     ; preds = %bb.ai, %bb.ah
  %.pre-phi.i.i31 = phi i64 [ %.pre7.i.i38, %bb.ai ], [ %i.da, %bb.ah ]
  %i.de = phi i32 [ %.pre.i.i37, %bb.ai ], [ %i.cz, %bb.ah ]
  %i.df = load ptr, ptr %3, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %.pre-phi.i.i31 ; 2 uses
  %14 = load i8, ptr %13, align 1, !tbaa !39
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %i.dg, align 2, !tbaa !45
  br i1 %.0, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit39, label %.lr.ph.i.i.i.i.i.i.i.i.i.i33.1

.lr.ph.i.i.i.i.i.i.i.i.i.i33.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !39
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %i.dh, align 2, !tbaa !45
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit39

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit39: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i33.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i33
  %i.di = trunc nuw nsw i64 %i.cw to i32
  %i.dj = add i32 %i.de, %i.di
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.aj:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %19 = select i1 %.0, ptr @.str.6, ptr @.str.7   ; 2 uses
  %i.dk = select i1 %.0, i64 1, i64 2             ; 3 uses
  %i.dl = load i32, ptr %i.c, align 4, !tbaa !43
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 3 uses
  %i.dp = sub nsw i64 %i.dm, %i.do
  %i.dq = icmp ugt i64 %i.dk, %i.dp
  br i1 %i.dq, label %bb.ak, label %.lr.ph.i.i.i.i.i.i.i.i.i.i42

bb.ak:                                            ; preds = %bb.aj
  %i.dr = add nuw nsw i64 %i.dk, %i.do
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef %i.dr, i64 noundef 2) #19
  %.pre.i.i46 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.pre7.i.i47 = zext i32 %.pre.i.i46 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i.i.i42:                     ; preds = %bb.ak, %bb.aj
  %.pre-phi.i.i40 = phi i64 [ %.pre7.i.i47, %bb.ak ], [ %i.do, %bb.aj ]
  %i.ds = phi i32 [ %.pre.i.i46, %bb.ak ], [ %i.dn, %bb.aj ]
  %i.dt = load ptr, ptr %3, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %.pre-phi.i.i40 ; 2 uses
  %20 = load i8, ptr %19, align 1, !tbaa !39
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %i.du, align 2, !tbaa !45
  br i1 %.0, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit48, label %.lr.ph.i.i.i.i.i.i.i.i.i.i42.1

.lr.ph.i.i.i.i.i.i.i.i.i.i42.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i42
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !39
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %i.dv, align 2, !tbaa !45
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit48

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit48: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i42.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i42
  %i.dw = trunc nuw nsw i64 %i.dk to i32
  %i.dx = add i32 %i.ds, %i.dw
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %25 = select i1 %.0, ptr @.str.8, ptr @.str.9   ; 6 uses
  %i.dy = select i1 %.0, i64 5, i64 6             ; 3 uses
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !43
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.ec = zext i32 %i.eb to i64                   ; 3 uses
  %i.ed = sub nsw i64 %i.ea, %i.ec
  %i.ee = icmp ugt i64 %i.dy, %i.ed
  br i1 %i.ee, label %bb.am, label %.lr.ph.i.i.i.i.i.i.i.i.i.i51

bb.am:                                            ; preds = %bb.al
  %i.ef = add nuw nsw i64 %i.dy, %i.ec
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef %i.ef, i64 noundef 2) #19
  %.pre.i.i55 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.pre7.i.i56 = zext i32 %.pre.i.i55 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i.i.i51:                     ; preds = %bb.am, %bb.al
  %.pre-phi.i.i49 = phi i64 [ %.pre7.i.i56, %bb.am ], [ %i.ec, %bb.al ]
  %i.eg = phi i32 [ %.pre.i.i55, %bb.am ], [ %i.eb, %bb.al ]
  %i.eh = load ptr, ptr %3, align 8, !tbaa !41
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %.pre-phi.i.i49 ; 6 uses
  %26 = load i8, ptr %25, align 1, !tbaa !39
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %i.ei, align 2, !tbaa !45
  %28 = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %25, i64 1
  %29 = load i8, ptr %i.ej, align 1, !tbaa !39
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %28, align 2, !tbaa !45
  %31 = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %25, i64 2
  %32 = load i8, ptr %i.ek, align 1, !tbaa !39
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %31, align 2, !tbaa !45
  %34 = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.el = getelementptr inbounds nuw i8, ptr %25, i64 3
  %35 = load i8, ptr %i.el, align 1, !tbaa !39
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %34, align 2, !tbaa !45
  %37 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %25, i64 4
  %38 = load i8, ptr %i.em, align 1, !tbaa !39
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %37, align 2, !tbaa !45
  br i1 %.0, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit57, label %.lr.ph.i.i.i.i.i.i.i.i.i.i51.5

.lr.ph.i.i.i.i.i.i.i.i.i.i51.5:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i51
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 10
  %40 = getelementptr inbounds nuw i8, ptr %25, i64 5
  %41 = load i8, ptr %40, align 1, !tbaa !39
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %i.en, align 2, !tbaa !45
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit57

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit57: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i51.5, %.lr.ph.i.i.i.i.i.i.i.i.i.i51
  %i.eo = trunc nuw nsw i64 %i.dy to i32
  %i.ep = add i32 %i.eg, %i.eo
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %43 = select i1 %.0, ptr @.str.10, ptr @.str.11 ; 6 uses
  %i.eq = select i1 %.0, i64 5, i64 6             ; 3 uses
  %i.er = load i32, ptr %i.c, align 4, !tbaa !43
  %i.es = zext i32 %i.er to i64
  %i.et = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 3 uses
  %i.ev = sub nsw i64 %i.es, %i.eu
  %i.ew = icmp ugt i64 %i.eq, %i.ev
  br i1 %i.ew, label %bb.ao, label %.lr.ph.i.i.i.i.i.i.i.i.i.i60

bb.ao:                                            ; preds = %bb.an
  %i.ex = add nuw nsw i64 %i.eq, %i.eu
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef %i.ex, i64 noundef 2) #19
  %.pre.i.i64 = load i32, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %.pre7.i.i65 = zext i32 %.pre.i.i64 to i64
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i.i60:                     ; preds = %bb.ao, %bb.an
  %.pre-phi.i.i58 = phi i64 [ %.pre7.i.i65, %bb.ao ], [ %i.eu, %bb.an ]
  %i.ey = phi i32 [ %.pre.i.i64, %bb.ao ], [ %i.et, %bb.an ]
  %i.ez = load ptr, ptr %3, align 8, !tbaa !41
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %.pre-phi.i.i58 ; 6 uses
  %44 = load i8, ptr %43, align 1, !tbaa !39
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %i.fa, align 2, !tbaa !45
  %46 = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fb = getelementptr inbounds nuw i8, ptr %43, i64 1
  %47 = load i8, ptr %i.fb, align 1, !tbaa !39
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 2, !tbaa !45
  %49 = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %43, i64 2
  %50 = load i8, ptr %i.fc, align 1, !tbaa !39
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %49, align 2, !tbaa !45
  %52 = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  %i.fd = getelementptr inbounds nuw i8, ptr %43, i64 3
  %53 = load i8, ptr %i.fd, align 1, !tbaa !39
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %52, align 2, !tbaa !45
  %55 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %43, i64 4
  %56 = load i8, ptr %i.fe, align 1, !tbaa !39
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %55, align 2, !tbaa !45
  br i1 %.0, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit66, label %.lr.ph.i.i.i.i.i.i.i.i.i.i60.5

.lr.ph.i.i.i.i.i.i.i.i.i.i60.5:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 10
  %58 = getelementptr inbounds nuw i8, ptr %43, i64 5
  %59 = load i8, ptr %58, align 1, !tbaa !39
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %i.ff, align 2, !tbaa !45
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit66

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit66: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i60.5, %.lr.ph.i.i.i.i.i.i.i.i.i.i60
  %i.fg = trunc nuw nsw i64 %i.eq to i32
  %i.fh = add i32 %i.ey, %i.fg
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

bb.ap:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.fi = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.fj = load i32, ptr %i.c, align 4, !tbaa !43
  %.not.i.i67 = icmp ult i32 %i.fi, %i.fj
  br i1 %.not.i.i67, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit, label %bb.aq, !prof !35

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 2) #19
  %.pre.i.i68 = load i32, ptr %i.b, align 8, !tbaa !42
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit: ; preds = %bb.ap, %bb.aq
  %i.fk = phi i32 [ %.pre.i.i68, %bb.aq ], [ %i.fi, %bb.ap ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !41
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fm
  store i16 %i.ch, ptr %i.fn, align 1
  %i.fo = load i32, ptr %i.b, align 8, !tbaa !42
  %i.fp = add i32 %i.fo, 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

_ZN6hermes2vm10StringView14const_iteratorppEv.exit: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit66, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit57, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit48, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit39, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit
  %.sink = phi i32 [ %i.fp, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit ], [ %i.fh, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit66 ], [ %i.ep, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit57 ], [ %i.dx, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit48 ], [ %i.dj, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit39 ], [ %i.cv, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit ]
  store i32 %.sink, ptr %i.b, align 8, !tbaa !42
  %i.fq = icmp eq i16 %i.ch, 92
  %i.fr = xor i1 %.0, true
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.086.0, i64 1
  %.sroa.7.1.idx = select i1 %.not.i.i29, i64 2, i64 0
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.7.1.idx
  %.sroa.086.0.be = select i1 %.not.i.i29, ptr null, ptr %i.ft
  br label %bb.ac

_ZN6hermes2vm12SmallXStringIDsLj32EEC2EPKDs.exit: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.fu, ptr %5, align 8, !tbaa !41
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.fw, align 4, !tbaa !43
  store i64 11540723157368872, ptr %i.fu, align 8
  store i32 4, ptr %i.fv, align 8, !tbaa !42
  %i.fx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIDsEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %5) ; 0 uses
  %i.fy = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fu
  br i1 %i.fz, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EEC2EPKDs.exit
  call void @free(ptr noundef %i.fy) #19
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EEC2EPKDs.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre = load i32, ptr %i.b, align 8, !tbaa !42
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, %bb.ad
  %i.ga = phi i32 [ %.pre, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ %i.cd, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.gb = load ptr, ptr %3, align 8, !tbaa !41
  %i.gc = zext i32 %i.ga to i64
  store ptr %i.gb, ptr %6, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gc, ptr %i.gd, align 8
  %i.ge = call noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIDsEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !tbaa !31
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.gf = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.gg = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %.not.i73 = icmp ult i32 %i.gg, 65536
  br i1 %.not.i73, label %bb.av, label %bb.aw, !prof !35

bb.av:                                            ; preds = %bb.au
  %i.gi = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.gf, i64 %i.gh) #19
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.267") align 8 %2, ptr %i.gf, i64 %i.gh)
  %i.gj = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %i.gk = load ptr, ptr %2, align 8, !tbaa !146   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !39
  %i.go = shl i64 %i.gn, 1
  %i.gp = add i64 %i.go, 2
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gp) #21
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.gi, %bb.av ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.gq = extractvalue { i32, i64 } %.pn.i, 0
  %i.gr = extractvalue { i32, i64 } %.pn.i, 1
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %bb.at
  %.sroa.093.0 = phi i32 [ 1, %bb.at ], [ %i.gq, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ]
  %.sroa.3.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.at ], [ %i.gr, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gs = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.a
  br i1 %i.gt, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit74, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef %i.gs) #19
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit74

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit74:        ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.093.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes2vm10StringView6equalsIDsEEbRKN4llvh8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741824
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !31
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp ugt i32 %i.h, 150994943
  br i1 %i.i, label %bb.d, label %bb.e, !prof !104

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.h, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.n, align 8, !tbaa !31
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !143
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !253  ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !31
  %.not.i6 = icmp eq i64 %.sroa.22.0.copyload, %i.u
  br i1 %.not.i6, label %bb.i, label %_ZN6hermes2vm15stringRefEqualsIcDsEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %i.v = and i32 %i.b, 1073741823
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.w ; 2 uses
end_hunk_1
