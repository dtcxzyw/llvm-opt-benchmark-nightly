inline.NumInlined: 6273
inline.NumDeleted: 2546
begin_hunk_0
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_regex" = type { i32, %"class.std::locale", %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__detail::_Compiler" = type { i32, %"class.std::__detail::_Scanner", %"class.std::shared_ptr.999", %"class.std::__cxx11::basic_string", %"class.std::stack.1002", ptr, ptr }
%"class.std::__detail::_Scanner" = type { %"struct.std::__detail::_ScannerBase.base", ptr, ptr, ptr, %"class.std::__cxx11::basic_string", { i64, i64 } }
%"struct.std::__detail::_ScannerBase.base" = type <{ [9 x %"struct.std::pair.995"], [8 x %"struct.std::pair.997"], [11 x %"struct.std::pair.997"], [2 x i8], ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr, ptr, i8 }>
%"struct.std::pair.995" = type { i8, i32 }
%"struct.std::pair.997" = type { i8, i8 }
%"class.std::shared_ptr.999" = type { %"class.std::__shared_ptr.1000" }
%"class.std::__shared_ptr.1000" = type { ptr, %"class.std::__shared_count" }
%"class.std::stack.1002" = type { %"class.std::deque.1003" }
%"class.std::deque.1003" = type { %"class.std::_Deque_base.1004" }
%"class.std::_Deque_base.1004" = type { %"struct.std::_Deque_base<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>, std::allocator<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>, std::allocator<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>, std::allocator<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>, std::allocator<std::__detail::_StateSeq<std::__cxx11::regex_traits<char>>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.1008", %"struct.std::_Deque_iterator.1008" }
%"struct.std::_Deque_iterator.1008" = type { ptr, ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.v8::internal::compiler::JSONEscaped" = type { %"class.std::__cxx11::basic_string" }
%"class.v8::internal::detail::TaggedOperatorArrowRef.43" = type { %"class.v8::internal::SharedFunctionInfo" }
%"class.v8::internal::SharedFunctionInfo" = type { %"class.v8::internal::TorqueGeneratedSharedFunctionInfo" }
%"class.v8::internal::TorqueGeneratedSharedFunctionInfo" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::PerThreadAssertScopeEmpty" = type { i8 }
%"class.v8::internal::SubStringRange::iterator" = type <{ %"class.v8::internal::String::FlatContent", i32, [4 x i8] }>
%"class.v8::internal::String::FlatContent" = type { %union.anon.46, i32, i32, ptr }
%union.anon.46 = type { ptr }
%"struct.v8::internal::AsEscapedUC16ForJSON" = type { i16 }
%"struct.std::_Sp_locker" = type { i8, i8 }
%"class.v8::internal::compiler::SourceIdAssigner" = type { %"class.std::vector.166", %"class.std::vector.171" }
%"class.std::vector.166" = type { %"struct.std::_Vector_base.167" }
%"struct.std::_Vector_base.167" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::SharedFunctionInfo>, std::allocator<v8::internal::Handle<v8::internal::SharedFunctionInfo>>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::SharedFunctionInfo>, std::allocator<v8::internal::Handle<v8::internal::SharedFunctionInfo>>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::Handle<v8::internal::SharedFunctionInfo>, std::allocator<v8::internal::Handle<v8::internal::SharedFunctionInfo>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::Handle<v8::internal::SharedFunctionInfo>, std::allocator<v8::internal::Handle<v8::internal::SharedFunctionInfo>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.171" = type { %"struct.std::_Vector_base.172" }
%"struct.std::_Vector_base.172" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.v8::internal::SourcePosition" = type { i64 }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"struct.v8::internal::WasmInliningPosition" = type { i32, i8, %"class.v8::internal::SourcePosition" }
%"class.std::optional.348" = type { %"struct.std::_Optional_base.349" }
%"struct.std::_Optional_base.349" = type { %"struct.std::_Optional_payload.351" }
%"struct.std::_Optional_payload.351" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<v8::internal::wasm::ModuleWireBytes>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::wasm::ModuleWireBytes>::_Storage" = type { %"struct.v8::internal::wasm::ModuleWireBytes" }
%"struct.v8::internal::wasm::ModuleWireBytes" = type { %"class.v8::base::Vector.165" }
%"class.v8::base::Vector.165" = type { ptr, i64 }
%"class.v8::internal::AccountingAllocator" = type { ptr, ptr, %"struct.std::atomic.59", %"struct.std::atomic.59" }
%"struct.std::atomic.59" = type { %"struct.std::__atomic_base.60" }
%"struct.std::__atomic_base.60" = type { i64 }
%"class.v8::internal::Zone" = type <{ %"struct.std::atomic.59", %"struct.std::atomic.59", i64, i64, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.v8::internal::compiler::AllNodes" = type <{ %"class.v8::internal::ZoneVector", %"class.v8::internal::BitVector", i8, [7 x i8] }>
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::BitVector" = type { i32, %"union.v8::internal::BitVector::DataStorage", ptr, ptr }
%"union.v8::internal::BitVector::DataStorage" = type { ptr }
%"class.v8::internal::compiler::NodeOrigin" = type { ptr, ptr, i32, i64 }
%"class.std::optional.360" = type { %"struct.std::_Optional_base.361" }
%"struct.std::_Optional_base.361" = type { %"struct.std::_Optional_payload.363" }
%"struct.std::_Optional_payload.363" = type { %"struct.std::_Optional_payload_base.base.365", [7 x i8] }
%"struct.std::_Optional_payload_base.base.365" = type <{ %"union.std::_Optional_payload_base<v8::internal::compiler::Type>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::compiler::Type>::_Storage" = type { %"class.v8::internal::compiler::Type" }
%"class.v8::internal::compiler::Type" = type { i64 }
%"class.v8::internal::compiler::JSONGraphWriter" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.v8::internal::compiler::GraphC1Visualizer::Tag" = type { ptr, ptr }
%"class.v8::internal::compiler::GraphC1Visualizer" = type { ptr, i32, ptr }
%"class.v8::internal::ZoneStack" = type { %"class.std::stack" }
%"class.std::stack" = type { %"class.v8::internal::ZoneDeque" }
%"class.v8::internal::ZoneDeque" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<v8::internal::compiler::Node *, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::Node *>>::_Deque_impl" }
%"struct.std::_Deque_base<v8::internal::compiler::Node *, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::Node *>>::_Deque_impl" = type { %"class.v8::internal::RecyclingZoneAllocator", %"struct.std::_Deque_base<v8::internal::compiler::Node *, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::Node *>>::_Deque_impl_data" }
%"class.v8::internal::RecyclingZoneAllocator" = type { %"class.v8::internal::ZoneAllocator.418", ptr }
%"class.v8::internal::ZoneAllocator.418" = type { ptr }
%"struct.std::_Deque_base<v8::internal::compiler::Node *, v8::internal::RecyclingZoneAllocator<v8::internal::compiler::Node *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::compiler::InstructionOperand" = type { i64 }
%"struct.v8::internal::compiler::InstructionOperandAsJSON" = type { ptr, ptr }
%"class.v8::internal::compiler::Constant" = type { i32, i8, i64 }
%"struct.v8::internal::compiler::LiveRangeAsJSON" = type { ptr, ptr }
%"struct.v8::internal::compiler::TopLevelLiveRangeAsJSON" = type { ptr, ptr }
%"class.v8::internal::compiler::RpoNumber" = type { i32 }
%"struct.v8::internal::compiler::InstructionAsJSON" = type { i32, ptr, ptr }
%"struct.v8::internal::compiler::InstructionBlockAsJSON" = type { ptr, ptr }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.927" }
%"class.std::optional.927" = type { %"struct.std::_Optional_base.928" }
%"struct.std::_Optional_base.928" = type { %"struct.std::_Optional_payload.930" }
%"struct.std::_Optional_payload.930" = type { %"struct.std::_Optional_payload.base.934", [7 x i8] }
%"struct.std::_Optional_payload.base.934" = type { %"struct.std::_Optional_payload_base.base.933" }
%"struct.std::_Optional_payload_base.base.933" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard" }
%"class.v8::base::LockGuard" = type { ptr }
%"struct.std::__detail::_State" = type { %"struct.std::__detail::_State_base" }
%"struct.std::__detail::_State_base" = type { i32, i64, %union.anon.1026 }
%union.anon.1026 = type { %struct.anon.1027, [16 x i8] }
%struct.anon.1027 = type { i64, i8 }
%"class.std::allocator.1019" = type { i8 }
%"class.std::__detail::_StateSeq" = type { ptr, i64, i64 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::stack.1109" = type { %"class.std::deque.1110" }
%"class.std::deque.1110" = type { %"class.std::_Deque_base.1111" }
%"class.std::_Deque_base.1111" = type { %"struct.std::_Deque_base<long, std::allocator<long>>::_Deque_impl" }
%"struct.std::_Deque_base<long, std::allocator<long>>::_Deque_impl" = type { %"struct.std::_Deque_base<long, std::allocator<long>>::_Deque_impl_data" }
%"struct.std::_Deque_base<long, std::allocator<long>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.1115", %"struct.std::_Deque_iterator.1115" }
%"struct.std::_Deque_iterator.1115" = type { ptr, ptr, ptr, ptr }
%"struct.std::__detail::_BracketMatcher" = type { %"class.std::vector.1050", %"class.std::vector.1052", %"class.std::vector.1057", %"class.std::vector.1062", %"struct.std::__cxx11::regex_traits<char>::_RegexMask", ptr, i8, %"class.std::bitset" }
%"class.std::vector.1050" = type { %"struct.std::_Vector_base.1051" }
%"struct.std::_Vector_base.1051" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.1052" = type { %"struct.std::_Vector_base.1053" }
%"struct.std::_Vector_base.1053" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.1057" = type { %"struct.std::_Vector_base.1058" }
%"struct.std::_Vector_base.1058" = type { %"struct.std::_Vector_base<std::pair<char, char>, std::allocator<std::pair<char, char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<char, char>, std::allocator<std::pair<char, char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<char, char>, std::allocator<std::pair<char, char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<char, char>, std::allocator<std::pair<char, char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.1062" = type { %"struct.std::_Vector_base.1063" }
%"struct.std::_Vector_base.1063" = type { %"struct.std::_Vector_base<std::__cxx11::regex_traits<char>::_RegexMask, std::allocator<std::__cxx11::regex_traits<char>::_RegexMask>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::regex_traits<char>::_RegexMask, std::allocator<std::__cxx11::regex_traits<char>::_RegexMask>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::regex_traits<char>::_RegexMask, std::allocator<std::__cxx11::regex_traits<char>::_RegexMask>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::regex_traits<char>::_RegexMask, std::allocator<std::__cxx11::regex_traits<char>::_RegexMask>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__cxx11::regex_traits<char>::_RegexMask" = type <{ i16, i8, i8 }>
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"struct.std::__detail::_BracketMatcher.1079" = type { %"class.std::vector.1050", %"class.std::vector.1052", %"class.std::vector.1080", %"class.std::vector.1062", %"struct.std::__cxx11::regex_traits<char>::_RegexMask", %"class.std::__detail::_RegexTranslator.1034", ptr, i8, %"class.std::bitset" }
%"class.std::vector.1080" = type { %"struct.std::_Vector_base.1081" }
%"struct.std::_Vector_base.1081" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__detail::_RegexTranslator.1034" = type { %"class.std::__detail::_RegexTranslatorBase" }
%"class.std::__detail::_RegexTranslatorBase" = type { ptr }
%"struct.std::__detail::_BracketMatcher.1091" = type { %"class.std::vector.1050", %"class.std::vector.1052", %"class.std::vector.1057", %"class.std::vector.1062", %"struct.std::__cxx11::regex_traits<char>::_RegexMask", %"class.std::__detail::_RegexTranslator.1036", ptr, i8, %"class.std::bitset" }
%"class.std::__detail::_RegexTranslator.1036" = type { %"class.std::__detail::_RegexTranslatorBase.1037" }
%"class.std::__detail::_RegexTranslatorBase.1037" = type { ptr }
%"struct.std::__detail::_BracketMatcher.1094" = type { %"class.std::vector.1050", %"class.std::vector.1052", %"class.std::vector.1080", %"class.std::vector.1062", %"struct.std::__cxx11::regex_traits<char>::_RegexMask", %"class.std::__detail::_RegexTranslator.1039", ptr, i8, %"class.std::bitset" }
%"class.std::__detail::_RegexTranslator.1039" = type { %"class.std::__detail::_RegexTranslatorBase.1040" }
%"class.std::__detail::_RegexTranslatorBase.1040" = type { ptr }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%class.anon.1074 = type <{ ptr, i8, [7 x i8] }>
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%class.anon.1085 = type <{ ptr, i8, [7 x i8] }>
%class.anon.1092 = type <{ ptr, i8, [7 x i8] }>
%class.anon.1095 = type <{ ptr, i8, [7 x i8] }>
%"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState" = type { i8, i8 }
%class.anon.1097 = type { ptr, ptr }
%class.anon.1098 = type { ptr, ptr }
%class.anon.1101 = type { ptr, ptr }
%class.anon.1102 = type { ptr, ptr }
%"struct.std::pair.1088" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::map.1116" = type { %"class.std::_Rb_tree.1117" }
%"class.std::_Rb_tree.1117" = type { %"struct.std::_Rb_tree<long, std::pair<const long, long>, std::_Select1st<std::pair<const long, long>>, std::less<long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<long, std::pair<const long, long>, std::_Select1st<std::pair<const long, long>>, std::less<long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::regex_iterator" = type { %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893", ptr, i32, %"class.std::__cxx11::match_results" }
%"class.__gnu_cxx::__normal_iterator.893" = type { ptr }
%"class.std::__cxx11::match_results" = type { %"class.std::vector.1138", %"class.__gnu_cxx::__normal_iterator.893" }
%"class.std::vector.1138" = type { %"struct.std::_Vector_base.1139" }
%"struct.std::_Vector_base.1139" = type { %"struct.std::_Vector_base<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::regex_traits" = type { %"class.std::locale" }
%"class.std::__cxx11::sub_match" = type <{ %"struct.std::pair.1143", i8, [7 x i8] }>
%"struct.std::pair.1143" = type { %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893" }
%"class.std::__detail::_Executor" = type <{ %"class.std::vector.1138", %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893", ptr, ptr, ptr, %"class.std::vector.1145", %"struct.std::__detail::_Executor<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>, std::__cxx11::regex_traits<char>, false>::_State_info", i32, i8, [3 x i8] }>
%"class.std::vector.1145" = type { %"struct.std::_Vector_base.1146" }
%"struct.std::_Vector_base.1146" = type { %"struct.std::_Vector_base<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>, std::allocator<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>, std::allocator<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>, std::allocator<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>, std::allocator<std::pair<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::__detail::_Executor<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>, std::__cxx11::regex_traits<char>, false>::_State_info" = type { %"class.std::vector.1150", ptr, i64 }
%"class.std::vector.1150" = type { %"struct.std::_Vector_base.1151" }
%"struct.std::_Vector_base.1151" = type { %"struct.std::_Vector_base<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>, std::allocator<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>, std::allocator<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>, std::allocator<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>, std::allocator<std::pair<long, std::vector<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__detail::_Executor.1155" = type <{ %"class.std::vector.1138", %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893", %"class.__gnu_cxx::__normal_iterator.893", ptr, ptr, ptr, %"class.std::vector.1145", %"struct.std::__detail::_Executor<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>, std::__cxx11::regex_traits<char>, true>::_State_info", i32, i8, [3 x i8] }>
%"struct.std::__detail::_Executor<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>, std::allocator<std::__cxx11::sub_match<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char>>>>, std::__cxx11::regex_traits<char>, true>::_State_info" = type { i64, %"class.__gnu_cxx::__normal_iterator.893" }
%"struct.std::__detail::_Backref_matcher" = type { i8, ptr }

$_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE = comdat any

$_ZNK2v88internal4wasm12NativeModule10wire_bytesEv = comdat any

$_ZN2v88internal8compiler17GraphC1Visualizer3TagD2Ev = comdat any

$_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_ = comdat any

$_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_ = comdat any

$_ZN2v88internallsINS0_11YMMRegisterEPKcEERSoS5_T_ = comdat any

$_ZN2v88internal9ZoneStackIPNS0_8compiler4NodeEEC2EPNS0_4ZoneE = comdat any

$_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE = comdat any

$_ZN2v88internal8compiler11JSONEscaped13PipeCharacterERSoc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN2v88internal14SubStringRange8iteratorC2ENS0_6TaggedINS0_6StringEEEiRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev = comdat any

$_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv = comdat any

$_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE = comdat any

$_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv = comdat any

$_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc = comdat any

$_ZNSt8__detail8_ScannerIcE17_M_eat_escape_awkEv = comdat any

$_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv = comdat any

$_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv = comdat any

$_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv = comdat any

$_ZNSt8__detail8_ScannerIcE12_M_eat_classEc = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE19_M_insert_lookaheadElb = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb0EEEvv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE22_M_insert_char_matcherILb1ELb1EEEvv = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv = comdat any

$_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv = comdat any

$_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb0EE8_M_applyEcSt17integral_constantIbLb1EE = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNKSt8__detail11_AnyMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1ELb1EE8_M_applyEcSt17integral_constantIbLb1EE = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail12_CharMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNKSt7__cxx1112regex_traitsIcE5valueEci = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv = comdat any

$_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag = comdat any

$_ZNKSt7__cxx1112regex_traitsIcE9transformIPcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_S9_ = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev = comdat any

$_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc = comdat any

$_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_ = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb = comdat any

$_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv = comdat any

$_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv = comdat any

end_hunk_0
begin_hunk_1_@_ZN2v88internal9ZoneStackIPNS0_8compiler4NodeEEC2EPNS0_4ZoneE:bb.a
  %i.aa = load i64, ptr %i.z, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.aa, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 64, ptr %i.ab, align 8
  store ptr %.sroa.6.0, ptr %i.y, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.6.1 = phi ptr [ %i.y, %bb.g ], [ %.sroa.6.0, %bb.f ]
  %i.ac = phi ptr [ %i.y, %bb.g ], [ %i.x, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ae = icmp ult ptr %.06.i.i.i, %i.u
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, !llvm.loop !134

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, %bb.e
  %i.af = and i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, 2305843009213693950
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, i64 8
  store i64 %.sroa.0.i.i.i.i.i.i.sroa.4.0.copyload, ptr %i.ah, align 8
  store ptr null, ptr %.sroa.0.i.i.i.i.i.i.sroa.0.0.copyload, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_allocate_nodeEv.exit.i.i, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_15LiveRangeAsJSONE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 5 uses
  %4 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !28 ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.50, i64 noundef 6) #24 ; 0 uses
  %i.c = load i32, ptr %i.a, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.c) #24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.142, i64 noundef 8) #24 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 8064
  %.not58 = icmp eq i32 %i.h, 4096
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.i = tail call i64 @_ZNK2v88internal8compiler9LiveRange18GetAssignedOperandEv(ptr noundef nonnull align 8 dereferenceable(100) %i.a) #24
  store i64 %i.i, ptr %2, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.143, i64 noundef 16) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !align !28
  store ptr %i.m, ptr %i.k, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.o = trunc i32 %i.g to i1
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 96
  switch i32 %i.t, label %bb.f [
    i32 0, label %bb.i
    i32 32, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.143, i64 noundef 16) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.w = load ptr, ptr %i.v, align 8
  store ptr %i.w, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !align !28
  store ptr %i.z, ptr %i.x, align 8
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.144, i64 noundef 15) #24 ; 0 uses
  %i.ag = load i32, ptr %i.r, align 4
  %i.ah = and i32 %i.ag, 1966080
  %.not59 = icmp eq i32 %i.ah, 0
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.145, i64 noundef 10) #24 ; 0 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ae) #24
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.146, i64 noundef 7) #24 ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ae) #24
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.147, i64 noundef 6) #24 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.i, %bb.b
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.148, i64 noundef 14) #24 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %.not60 = icmp eq ptr %i.ar, %i.at
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  %.sroa.0.0.copyload.i51.peel = load i32, ptr %i.ar, align 4
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.0.0.copyload.i51.peel) #24 ; 2 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.0.0.copyload.i52.peel = load i32, ptr %i.ax, align 4
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %.sroa.0.0.copyload.i52.peel) #24
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.ba, %i.at
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.j
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.150, i64 noundef 10) #24 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %.idx = shl nuw nsw i64 %.sroa.2.0.copyload.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %.not5063 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not5063, label %._crit_edge68, label %.lr.ph67.preheader._crit_edge

.lr.ph67.preheader._crit_edge:                    ; preds = %._crit_edge
  %i.be = load ptr, ptr %.sroa.0.0.copyload.i, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.0.0.copyload.i53.peel.pre = load i32, ptr %.phi.trans.insert, align 8
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.0.0.copyload.i53.peel.pre) #24 ; 0 uses
  %.not50.peel = icmp eq i64 %.sroa.2.0.copyload.i, 1
  br i1 %.not50.peel, label %._crit_edge68, label %.lr.ph67.peel.next

.lr.ph67.peel.next:                               ; preds = %.lr.ph67.preheader._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  br label %bb.k

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %.04861 = phi ptr [ %i.bo, %.lr.ph.peel.next ], [ %i.ba, %.lr.ph.preheader ] ; 3 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  %.sroa.0.0.copyload.i51 = load i32, ptr %.04861, align 4
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.0.0.copyload.i51) #24 ; 2 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04861, i64 4
  %.sroa.0.0.copyload.i52 = load i32, ptr %i.bl, align 4
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %.sroa.0.0.copyload.i52) #24
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.04861, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.at
  br i1 %.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !135

._crit_edge68:                                    ; preds = %bb.k, %.lr.ph67.preheader._crit_edge, %._crit_edge
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.48, i64 noundef 2) #24 ; 0 uses
  ret ptr %0

bb.k:                                             ; preds = %.lr.ph67.peel.next, %bb.k
  %.04964 = phi ptr [ %i.bu, %bb.k ], [ %i.bg, %.lr.ph67.peel.next ] ; 2 uses
  %i.bq = load ptr, ptr %.04964, align 8
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.0.0.copyload.i53 = load i32, ptr %i.bs, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.0.0.copyload.i53) #24 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04964, i64 8 ; 2 uses
  %.not50 = icmp eq ptr %i.bu, %i.bd
  br i1 %.not50, label %._crit_edge68, label %bb.k, !llvm.loop !136
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  %3 = alloca %"class.v8::internal::compiler::Constant", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.v8::internal::AsEscapedUC16ForJSON", align 2 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  %7 = alloca %"class.v8::internal::compiler::Constant", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"struct.v8::internal::AsEscapedUC16ForJSON", align 2 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.154, i64 noundef 1) #24 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 7
  switch i32 %i.g, label %bb.aq [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 3, label %bb.r
    i32 5, label %bb.x
    i32 4, label %bb.ap
    i32 0, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.158, i64 noundef 23) #24 ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.159, i64 noundef 10) #24 ; 0 uses
  %i.j = load i64, ptr %i.a, align 8
  %i.k = lshr i64 %i.j, 3
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.l) #24
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8              ; 2 uses
  %i.p = and i64 %i.o, 34359738368
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.160, i64 noundef 25) #24 ; 0 uses
  %i.s = load i64, ptr %i.a, align 8
  %i.t = ashr i64 %i.s, 36
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.u) #24
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  %i.x = lshr i64 %i.o, 36
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 7
  switch i32 %i.z, label %default.unreachable124 [
    i32 2, label %bb.k
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 1, label %bb.j
    i32 0, label %bb.aq
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.161, i64 noundef 29) #24 ; 0 uses
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = lshr i64 %i.ab, 41
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 63                        ; 2 uses
  %i.af = icmp samesign ult i8 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.ae)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.162, i64 noundef 32) #24 ; 0 uses
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = lshr i64 %i.aj, 41
  %i.al = trunc i64 %i.ak to i8
  %i.am = and i8 %i.al, 63                        ; 2 uses
  %i.an = icmp samesign ult i8 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.am)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.g:                                             ; preds = %bb.d
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.163, i64 noundef 32) #24 ; 0 uses
  br label %bb.aq

bb.h:                                             ; preds = %bb.d
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.164, i64 noundef 28) #24 ; 0 uses
  br label %bb.aq

bb.i:                                             ; preds = %bb.d
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.165, i64 noundef 28) #24 ; 0 uses
  %i.at = load i64, ptr %i.a, align 8
  %i.au = lshr i64 %i.at, 50
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = and i32 %i.av, 7
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aw) #24
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.j:                                             ; preds = %bb.d
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.166, i64 noundef 30) #24 ; 0 uses
  br label %bb.aq

bb.k:                                             ; preds = %bb.d
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.167, i64 noundef 42) #24 ; 0 uses
  br label %bb.aq

bb.l:                                             ; preds = %bb.a
  %i.bb = lshr i64 %i.e, 3
  %i.bc = trunc i64 %i.bb to i32                  ; 6 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.168, i64 noundef 20) #24 ; 0 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.159, i64 noundef 10) #24 ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bc) #24
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.169, i64 noundef 2) #24 ; 0 uses
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.170, i64 noundef 12) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bi) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.bn, ptr %2, align 8
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24    ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %2, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %2, i64 %i.bv
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bw, ptr noundef null) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.by, ptr %i.bx, align 8
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 %i.cb
  store ptr %i.bz, ptr %i.cc, align 8
  %i.cd = load ptr, ptr %i.bx, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 %i.cf
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cg, ptr noundef null) #24
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ch, ptr %2, align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %2, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.bi, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.cr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.cs, align 8
  store i8 0, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %2, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cw, ptr noundef nonnull %i.cm) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.not.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.not.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.cz, %bb.m ], [ %.sroa.06.0.i.i.i, %bb.n ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp eq i32 %i.db, %i.bc
  br i1 %i.dc, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %bb.n, !llvm.loop !137

bb.o:                                             ; preds = %bb.l
  %i.dd = xor i32 %i.bc, -1
  %i.de = shl i32 %i.bc, 15
  %i.df = add i32 %i.de, %i.dd                    ; 2 uses
  %i.dg = lshr i32 %i.df, 12
  %i.dh = xor i32 %i.dg, %i.df
  %i.di = mul i32 %i.dh, 5                        ; 2 uses
  %i.dj = lshr i32 %i.di, 4
  %i.dk = xor i32 %i.dj, %i.di
  %i.dl = mul i32 %i.dk, 2057                     ; 2 uses
  %i.dm = lshr i32 %i.dl, 16
  %i.dn = xor i32 %i.dm, %i.dl
  %i.do = zext i32 %i.dn to i64                   ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = urem i64 %i.do, %i.dq                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !6, !noundef !6
  %i.dw = load ptr, ptr %i.dv, align 8            ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp eq i64 %i.dz, %i.do
  %i.eb = load i32, ptr %i.dx, align 8
  %i.ec = icmp eq i32 %i.eb, %i.bc
  %i.ed = select i1 %i.ea, i1 %i.ec, i1 false
  br i1 %i.ed, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.dw, %bb.o ]
  %i.ee = load ptr, ptr %.020.i.i.i.i.i, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load i64, ptr %i.ef, align 8            ; 2 uses
  %i.eh = urem i64 %i.eg, %i.dq
  %.not19.i.i.i.i.i = icmp eq i64 %i.eh, %i.dr
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ej = icmp eq i64 %i.eg, %i.do
  %i.ek = load i32, ptr %i.ei, align 8
  %i.el = icmp eq i32 %i.ek, %i.bc
  %i.em = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %i.em, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !138

_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.n, %bb.o
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.n ], [ %i.dw, %bb.o ], [ %i.ee, %.lr.ph.i.i.i.i.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.eo = load <2 x i64>, ptr %i.en, align 8
  store <2 x i64> %i.eo, ptr %3, align 16
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8ConstantE(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %3) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.eq, ptr %4, align 8, !alias.scope !145
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.er, align 8, !alias.scope !145
  store i8 0, ptr %i.eq, align 8, !alias.scope !145
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !noalias !145 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.et, null
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !145 ; 2 uses
  %i.ew = icmp ugt ptr %i.et, %i.ev
  %.08.i.i.i = select i1 %i.ew, ptr %i.et, ptr %i.ev ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !145 ; 2 uses
  %i.ez = ptrtoint ptr %.08.i.i.i to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.ey, i64 noundef %i.fb) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.q:                                             ; preds = %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.q
  %i.fd = load ptr, ptr %4, align 8               ; 3 uses
  %i.fe = load i64, ptr %i.er, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  %i.fg = icmp samesign eq i64 %i.fe, 0
  br i1 %i.fg, label %._crit_edge113, label %.lr.ph112

._crit_edge113.loopexit:                          ; preds = %.lr.ph112
  %.pre115 = load ptr, ptr %4, align 8
  br label %._crit_edge113

._crit_edge113:                                   ; preds = %._crit_edge113.loopexit, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fh = phi ptr [ %.pre115, %._crit_edge113.loopexit ], [ %i.fd, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.eq
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge113
  %i.fj = load i64, ptr %i.eq, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  %i.fm = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fm, ptr %2, align 8
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fo = getelementptr i8, ptr %i.fm, i64 -24
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  store ptr %i.fn, ptr %i.fq, align 8
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fr, ptr %i.bx, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cm, align 8
  %i.fs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.cr
  br i1 %i.ft, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fu = load i64, ptr %i.cr, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cm, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #24
  store ptr %i.bn, ptr %2, align 8
  %i.fw = load i64, ptr %i.bp, align 8
  %i.fx = getelementptr inbounds i8, ptr %2, i64 %i.fw
  store ptr %i.bo, ptr %i.fx, align 8
  store i64 0, ptr %i.bs, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bi) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.aq

.lr.ph112:                                        ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %.lr.ph112
  %.sroa.0106.0111 = phi ptr [ %i.gb, %.lr.ph112 ], [ %i.fd, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fy = load i8, ptr %.sroa.0106.0111, align 1
  %i.fz = sext i8 %i.fy to i16
  store i16 %i.fz, ptr %5, align 2
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_20AsEscapedUC16ForJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %5) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0106.0111, i64 1 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ff
  br i1 %i.gc, label %._crit_edge113.loopexit, label %.lr.ph112

bb.r:                                             ; preds = %bb.a
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.171, i64 noundef 21) #24 ; 0 uses
  %i.ge = load i64, ptr %i.a, align 8             ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %10 = and i32 %i.gf, 24
  %11 = sub i32 %10, 0                            ; 2 uses
  %12 = call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 29)
  switch i32 %12, label %default.unreachable [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.gg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.172, i64 noundef 10) #24 ; 0 uses
  %i.gh = load i64, ptr %i.a, align 8
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc nuw i64 %i.gi to i32
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gj) #24
  %i.gl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.t:                                             ; preds = %bb.r
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.172, i64 noundef 10) #24 ; 0 uses
  %i.gn = load i64, ptr %i.a, align 8
  %i.go = ashr i64 %i.gn, 32
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.go) #24
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.u:                                             ; preds = %bb.r, %bb.r
  %i.gr = lshr i64 %i.ge, 32
  %i.gs = trunc nuw i64 %i.gr to i32
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.173, i64 noundef 13) #24 ; 0 uses
  %i.gu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gs) #24
  %i.gv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.169, i64 noundef 2) #24 ; 0 uses
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.170, i64 noundef 12) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gx) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 344
  store ptr null, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 352
  store i8 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 353
  store i8 0, ptr %i.ha, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, i8 0, i64 32, i1 false)
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.hc, ptr %6, align 8
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hc, i64 -24    ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %6, i64 %i.hf
  store ptr %i.hd, ptr %i.hg, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %6, align 8
  %i.hj = getelementptr i8, ptr %i.hi, i64 -24
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds i8, ptr %6, i64 %i.hk
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hl, ptr noundef null) #24
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.hn, ptr %i.hm, align 8
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.hp = getelementptr i8, ptr %i.hn, i64 -24
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds i8, ptr %i.hm, i64 %i.hq
  store ptr %i.ho, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.hm, align 8
  %i.ht = getelementptr i8, ptr %i.hs, i64 -24
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds i8, ptr %i.hm, i64 %i.hu
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hv, ptr noundef null) #24
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.hw, ptr %6, align 8
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.hy = getelementptr i8, ptr %i.hw, i64 -24
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds i8, ptr %6, i64 %i.hz
  store ptr %i.hx, ptr %i.ia, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %6, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.gx, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.hm, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ic, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.id) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ib, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 24, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  store ptr %i.ig, ptr %i.if, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 0, ptr %i.ih, align 8
  store i8 0, ptr %i.ig, align 8
  %i.ii = load ptr, ptr %6, align 8
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds i8, ptr %6, i64 %i.ik
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.il, ptr noundef nonnull %i.ib) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %13 = call { i64, i64 } @_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef nonnull %i.a) ; 2 uses
  %14 = extractvalue { i64, i64 } %13, 0
  store i64 %14, ptr %7, align 8
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %16 = extractvalue { i64, i64 } %13, 1
  store i64 %16, ptr %15, align 8
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8ConstantE(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %7) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %18, ptr %8, align 8, !alias.scope !152
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %19, align 8, !alias.scope !152
  store i8 0, ptr %18, align 8, !alias.scope !152
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %21 = load ptr, ptr %20, align 8, !noalias !152 ; 3 uses
  %.not.i.not.i.i88 = icmp eq ptr %21, null
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %23 = load ptr, ptr %22, align 8, !noalias !152 ; 2 uses
  %24 = icmp ugt ptr %21, %23
  %.08.i.i.i89 = select i1 %24, ptr %21, ptr %23  ; 2 uses
  %.not4.i.i90 = icmp eq ptr %.08.i.i.i89, null
  %.not.i.i91 = select i1 %.not.i.not.i.i88, i1 true, i1 %.not4.i.i90
  br i1 %.not.i.i91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.in = load ptr, ptr %i.im, align 8, !noalias !152 ; 2 uses
  %i.io = ptrtoint ptr %.08.i.i.i89 to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.in, i64 noundef %i.iq) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95

bb.w:                                             ; preds = %bb.u
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.if)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95: ; preds = %bb.v, %bb.w
  %i.is = load ptr, ptr %8, align 8               ; 3 uses
  %i.it = load i64, ptr %19, align 8              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.it
  %i.iv = icmp samesign eq i64 %i.it, 0
  br i1 %i.iv, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %8, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95
  %i.iw = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.is, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95 ] ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %18
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %._crit_edge
  %i.iy = load i64, ptr %18, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  %i.jb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.jb, ptr %6, align 8
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.jd = getelementptr i8, ptr %i.jb, i64 -24
  %i.je = load i64, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds i8, ptr %6, i64 %i.je
  store ptr %i.jc, ptr %i.jf, align 8
  %i.jg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.jg, ptr %i.hm, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ib, align 8
  %i.jh = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.ig
  br i1 %i.ji, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.jj = load i64, ptr %i.ig, align 8
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit101

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ib, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.id) #24
  store ptr %i.hc, ptr %6, align 8
  %i.jl = load i64, ptr %i.he, align 8
  %i.jm = getelementptr inbounds i8, ptr %6, i64 %i.jl
  store ptr %i.hd, ptr %i.jm, align 8
  store i64 0, ptr %i.hh, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aq

.lr.ph:                                           ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95, %.lr.ph
  %.sroa.0102.0110 = phi ptr [ %i.jq, %.lr.ph ], [ %i.is, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit95 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.jn = load i8, ptr %.sroa.0102.0110, align 1
  %i.jo = sext i8 %i.jn to i16
  store i16 %i.jo, ptr %9, align 2
  %i.jp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_20AsEscapedUC16ForJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %9) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0102.0110, i64 1 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.iu
  br i1 %i.jr, label %._crit_edge.loopexit, label %.lr.ph

bb.x:                                             ; preds = %bb.a
  %i.js = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.174, i64 noundef 21) #24 ; 0 uses
  %i.jt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.175, i64 noundef 9) #24 ; 0 uses
  %i.ju = load i64, ptr %i.a, align 8             ; 10 uses
  %i.jv = and i64 %i.ju, 7
  %i.jw = icmp samesign ugt i64 %i.jv, 4          ; 6 uses
  %i.jx = and i64 %i.ju, 3848                     ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 8
  %i.jz = and i1 %i.jw, %i.jy
  br i1 %i.jz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ka = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.176, i64 noundef 6) #24 ; 0 uses
  %i.kb = load i64, ptr %i.a, align 8
  %i.kc = lshr i64 %i.kb, 32
  %i.kd = trunc nuw i64 %i.kc to i32
  %i.ke = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.kd) #24 ; 0 uses
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.kf = and i64 %i.ju, 8
  %i.kg = icmp ne i64 %i.kf, 0
  %i.kh = and i64 %i.ju, 3840
  %i.ki = icmp ne i64 %i.kh, 0
  %i.kj = and i1 %i.kg, %i.ki
  %i.kk = and i1 %i.jw, %i.kj
  br i1 %i.kk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.kl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.177, i64 noundef 9) #24 ; 0 uses
  %i.km = load i64, ptr %i.a, align 8
  %i.kn = lshr i64 %i.km, 32
  %i.ko = trunc nuw i64 %i.kn to i32
  %i.kp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ko) #24 ; 0 uses
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.kq = icmp eq i64 %i.jx, 0
  %i.kr = and i1 %i.jw, %i.kq
  br i1 %i.kr, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ks = lshr i64 %i.ju, 32                      ; 2 uses
  %i.kt = trunc nuw i64 %i.ks to i32
  %i.ku = icmp slt i32 %i.kt, 16
  br i1 %i.ku, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kv = trunc i64 %i.ks to i8                   ; 2 uses
  %i.kw = icmp samesign ult i8 %i.kv, 16
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.kv) ; 0 uses
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.ky = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.446, i64 noundef 7) #24 ; 0 uses
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.kz = and i64 %i.ju, 4088                     ; 3 uses
  %i.la = icmp eq i64 %i.kz, 288
  %i.lb = and i1 %i.jw, %i.la
  br i1 %i.lb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lc = lshr i64 %i.ju, 32
  %i.ld = trunc i64 %i.lc to i8                   ; 2 uses
  %i.le = icmp samesign ult i8 %i.ld, 16
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.ld) ; 0 uses
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.lg = icmp eq i64 %i.kz, 272
  %i.lh = and i1 %i.jw, %i.lg
  br i1 %i.lh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.li = lshr i64 %i.ju, 32
  %i.lj = trunc i64 %i.li to i8                   ; 2 uses
  %i.lk = icmp samesign ult i8 %i.lj, 16
  tail call void @llvm.assume(i1 %i.lk)
  %i.ll = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.lj) ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.lm = icmp eq i64 %i.kz, 320
  %i.ln = and i1 %i.jw, %i.lm
  %i.lo = lshr i64 %i.ju, 32                      ; 2 uses
  br i1 %i.ln, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lp = icmp ult i64 %i.ju, 68719476736
  tail call void @llvm.assume(i1 %i.lp)
  %i.lq = trunc nuw nsw i64 %i.lo to i8
  %i.lr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11YMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.lq) ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ls = trunc i64 %i.lo to i8                   ; 2 uses
  %i.lt = icmp samesign ult i8 %i.ls, 16
  tail call void @llvm.assume(i1 %i.lt)
  %i.lu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.ls) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.aa, %bb.ag, %bb.ak, %bb.al, %bb.ai, %bb.ad, %bb.ae, %bb.y
  %i.lv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.169, i64 noundef 2) #24 ; 0 uses
  %i.lw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.170, i64 noundef 12) #24 ; 0 uses
  %i.lx = load i64, ptr %i.a, align 8
  %i.ly = lshr i64 %i.lx, 4
  %i.lz = trunc i64 %i.ly to i8
  %i.ma = tail call noundef ptr @_ZN2v88internal19MachineReprToStringENS0_21MachineRepresentationE(i8 noundef zeroext %i.lz) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.ma, null
  br i1 %.not.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mb = load ptr, ptr %0, align 8
  %i.mc = getelementptr i8, ptr %i.mb, i64 -24
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %0, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = or i32 %i.mg, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.me, i32 noundef %i.mh) #24
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.ao:                                            ; preds = %bb.am
  %i.mi = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ma) #24
  %i.mj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ma, i64 noundef %i.mi) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.an, %bb.ao
  %i.mk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.178) #26
  unreachable

default.unreachable:                              ; preds = %bb.r
  unreachable

default.unreachable124:                           ; preds = %bb.d
  unreachable

bb.aq:                                            ; preds = %bb.d, %bb.s, %bb.t, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit101, %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.a
  %i.ml = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 1) #24 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_23TopLevelLiveRangeAsJSONE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.v8::internal::compiler::LiveRangeAsJSON", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !nonnull !6, !align !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #24 ; 0 uses
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e) #24
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.151, i64 noundef 20) #24 ; 0 uses
  %.03347 = load ptr, ptr %1, align 8             ; 4 uses
  %.not48 = icmp eq ptr %.03347, null
  br i1 %.not48, label %._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.03347, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.03347, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %._crit_edge, label %.lr.ph53.split

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph53, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 2147483647, %bb.a ], [ 2147483647, %.lr.ph53 ], [ %.sroa.0.3, %.loopexit ]
  %.sroa.6.0.lcssa = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph53 ], [ %.sroa.6.3, %.loopexit ]
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  %i.p = load ptr, ptr %1, align 8, !nonnull !6, !align !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph53.split:                                   ; preds = %.lr.ph53, %.loopexit
  %.03352 = phi ptr [ %.033, %.loopexit ], [ %.03347, %.lr.ph53 ] ; 4 uses
  %.051 = phi i1 [ %.2, %.loopexit ], [ true, %.lr.ph53 ] ; 2 uses
  %.sroa.6.050 = phi i32 [ %.sroa.6.3, %.loopexit ], [ -1, %.lr.ph53 ] ; 4 uses
  %.sroa.0.049 = phi i32 [ %.sroa.0.3, %.loopexit ], [ 2147483647, %.lr.ph53 ] ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !nonnull !6, !align !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph53.split
  br i1 %.051, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %.03352, ptr %2, align 8
  %i.aa = load ptr, ptr %i.i, align 8, !nonnull !6, !align !28
  store ptr %i.aa, ptr %i.h, align 8
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_15LiveRangeAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %.03352, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03352, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not3442 = icmp eq ptr %i.ad, %i.af
  br i1 %.not3442, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = add i64 %i.ag, -8
  %i.aj = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 56
  br i1 %min.iters.check, label %.lr.ph.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.al, 4611686018427387896     ; 3 uses
  %i.am = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.6.050, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <4 x i32> poison, i32 %.sroa.0.049, i64 0
  %broadcast.splat60 = shufflevector <4 x i32> %broadcast.splatinsert59, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi61 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi62 = phi <4 x i32> [ %broadcast.splat60, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ %broadcast.splat60, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ao
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao
  %next.gep64 = getelementptr i8, ptr %i.ap, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec66 = load <8 x i32>, ptr %next.gep64, align 4 ; 2 uses
  %strided.vec67 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec68 = shufflevector <8 x i32> %wide.vec66, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec, <4 x i32> %vec.phi62) ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %strided.vec67, <4 x i32> %vec.phi63) ; 2 uses
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec65, <4 x i32> %vec.phi) ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %strided.vec68, <4 x i32> %vec.phi61) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.as, <4 x i32> %i.at)
  %i.av = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax69 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aq, <4 x i32> %i.ar)
  %i.aw = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax69) ; 2 uses
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader71

.lr.ph.preheader71:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.6.145.ph = phi i32 [ %.sroa.6.050, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.03244.ph = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.sroa.0.143.ph = phi i32 [ %.sroa.0.049, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader71, %.lr.ph
  %.sroa.6.145 = phi i32 [ %.sroa.6.2, %.lr.ph ], [ %.sroa.6.145.ph, %.lr.ph.preheader71 ]
  %.03244 = phi ptr [ %i.ay, %.lr.ph ], [ %.03244.ph, %.lr.ph.preheader71 ] ; 3 uses
  %.sroa.0.143 = phi i32 [ %spec.select, %.lr.ph ], [ %.sroa.0.143.ph, %.lr.ph.preheader71 ]
  %.sroa.0.0.copyload.i = load i32, ptr %.03244, align 4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.143) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03244, i64 4
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ax, align 4
  %.sroa.6.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.copyload.i36, i32 %.sroa.6.145) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03244, i64 8 ; 2 uses
  %.not34 = icmp eq ptr %i.ay, %i.af
  br i1 %.not34, label %.loopexit, label %.lr.ph, !llvm.loop !154

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.d, %.lr.ph53.split
  %.sroa.0.3 = phi i32 [ %.sroa.0.049, %.lr.ph53.split ], [ %.sroa.0.049, %bb.d ], [ %i.aw, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.sroa.6.3 = phi i32 [ %.sroa.6.050, %.lr.ph53.split ], [ %.sroa.6.050, %bb.d ], [ %i.av, %middle.block ], [ %.sroa.6.2, %.lr.ph ] ; 2 uses
  %.2 = phi i1 [ %.051, %.lr.ph53.split ], [ false, %bb.d ], [ false, %middle.block ], [ false, %.lr.ph ]
  %i.az = getelementptr inbounds nuw i8, ptr %.03352, i64 64
  %.033 = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not = icmp eq ptr %.033, null
  br i1 %.not, label %._crit_edge, label %.lr.ph53.split, !llvm.loop !155

bb.e:                                             ; preds = %._crit_edge
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.152, i64 noundef 17) #24 ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !nonnull !6, !align !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 268435456
  %.not41 = icmp eq i32 %i.be, 0                  ; 2 uses
  %i.bf = select i1 %.not41, ptr @.str.55, ptr @.str.54
  %i.bg = select i1 %.not41, i64 5, i64 4
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bf, i64 noundef %i.bg) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.153, i64 noundef 24) #24 ; 0 uses
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.sroa.0.0.lcssa) #24 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 noundef %.sroa.6.0.lcssa) #24
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.48, i64 noundef 2) #24 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler23PrintTopLevelLiveRangesERSoNS0_10ZoneVectorIPNS1_17TopLevelLiveRangeEEERKNS1_19InstructionSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(352) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::TopLevelLiveRangeAsJSON", align 8 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.154, i64 noundef 1) #24 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.c, %i.e
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 1) #24 ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.019 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.g ] ; 3 uses
  %.01418 = phi ptr [ %i.c, %.lr.ph ], [ %i.p, %bb.g ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compilerlsERSoRKNS1_16AsScheduledGraphE:bb.a
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i8, ptr %i.ap, align 8
  %.not.i1.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i1.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 67
  %i.as = load i8, ptr %i.ar, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ao) #24
  %i.at = load ptr, ptr %i.ao, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ao, i8 noundef signext 10) #24, !inline_history !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i8 [ %i.as, %bb.g ], [ %i.aw, %bb.h ]
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i.i) #24
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #24 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not5976.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not5976.i, label %._crit_edge79.i, label %.lr.ph78.i

._crit_edge79.i:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not60.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not60.i, label %bb.s, label %bb.l

.lr.ph78.i:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i
  %.05777.i = phi ptr [ %i.by, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i ], [ %i.ba, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i ] ; 2 uses
  %i.bh = load ptr, ptr %.05777.i, align 8
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_118PrintScheduledNodeERSoiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.j, ptr noundef %i.bh)
  %i.bi = load ptr, ptr %0, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8            ; 6 uses
  %.not.i.i.i63.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i63.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64.i

bb.i:                                             ; preds = %.lr.ph78.i
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64.i: ; preds = %.lr.ph78.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8
  %.not.i1.i.i65.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i65.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn) #24
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10) #24, !inline_history !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i66.i = phi i8 [ %i.br, %bb.j ], [ %i.bv, %bb.k ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i66.i) #24
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #24 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05777.i, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.bb, align 8
  %.not59.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not59.i, label %._crit_edge79.i, label %.lr.ph78.i, !llvm.loop !158

bb.l:                                             ; preds = %._crit_edge79.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not61.i = icmp eq ptr %i.cb, null
  br i1 %.not61.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_118PrintScheduledNodeERSoiPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.j, ptr noundef nonnull %i.cb)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.227, i64 noundef 5) #24 ; 0 uses
  %i.cd = icmp sgt i32 %i.j, 0
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_111PrintIndentERSoi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.04.i.i = phi i32 [ %i.cf, %.lr.ph.i.i ], [ 0, %bb.n ]
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.228, i64 noundef 2) #24 ; 0 uses
  %i.cf = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cf, %i.j
  br i1 %exitcond.not.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_111PrintIndentERSoi.exit.i, label %.lr.ph.i.i, !llvm.loop !159

_ZN2v88internal8compiler12_GLOBAL__N_111PrintIndentERSoi.exit.i: ; preds = %.lr.ph.i.i, %bb.n
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.226, i64 noundef 4) #24 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_111PrintIndentERSoi.exit.i, %bb.m
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.125, i64 noundef 3) #24 ; 0 uses
  %i.ci = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.cj = load ptr, ptr %i.bd, align 8            ; 3 uses
  %.not6280.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not6280.i, label %._crit_edge85.i, label %.lr.ph84.preheader.i

.lr.ph84.preheader.i:                             ; preds = %bb.o
  %i.ck = load ptr, ptr %i.ci, align 8
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.126, i64 noundef 2) #24 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cn) #24 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %.not62.peel.i = icmp eq ptr %i.cp, %i.cj
  br i1 %.not62.peel.i, label %._crit_edge85.i, label %.lr.ph84.peel.next.i

._crit_edge85.i:                                  ; preds = %.lr.ph84.peel.next.i, %.lr.ph84.preheader.i, %bb.o
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8            ; 6 uses
  %.not.i.i.i68.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i68.i, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69.i

bb.p:                                             ; preds = %._crit_edge85.i
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69.i: ; preds = %._crit_edge85.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8
  %.not.i1.i.i70.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i70.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv) #24
  %i.da = load ptr, ptr %i.cv, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10) #24, !inline_history !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i71.i = phi i8 [ %i.cz, %bb.q ], [ %i.dd, %bb.r ]
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i71.i) #24
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #24 ; 0 uses
  br label %bb.s

.lr.ph84.peel.next.i:                             ; preds = %.lr.ph84.preheader.i, %.lr.ph84.peel.next.i
  %.05482.i = phi ptr [ %i.dm, %.lr.ph84.peel.next.i ], [ %i.cp, %.lr.ph84.preheader.i ] ; 2 uses
  %i.dg = load ptr, ptr %.05482.i, align 8
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.126, i64 noundef 2) #24 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.dk) #24 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05482.i, i64 8 ; 2 uses
  %.not62.i = icmp eq ptr %i.dm, %i.cj
  br i1 %.not62.i, label %._crit_edge85.i, label %.lr.ph84.peel.next.i, !llvm.loop !160

bb.s:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72.i, %._crit_edge79.i
  %i.dn = add nuw i64 %.086.i, 1                  ; 2 uses
  %i.do = load ptr, ptr %i.b, align 8
  %i.dp = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = icmp ult i64 %i.dn, %i.dt
  br i1 %i.du, label %.lr.ph88.i, label %_ZN2v88internal8compiler12_GLOBAL__N_119PrintScheduledGraphERSoPKNS1_8ScheduleE.exit, !llvm.loop !161

_ZN2v88internal8compiler12_GLOBAL__N_119PrintScheduledGraphERSoPKNS1_8ScheduleE.exit: ; preds = %bb.s, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_8ConstantE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.v8::internal::compiler::Constant", align 8 ; 10 uses
  %4 = load i64, ptr %1, align 8                  ; 5 uses
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 24
  %7 = sub i32 %6, 0                              ; 2 uses
  %8 = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 29)
  switch i32 %8, label %default.unreachable [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %16
    i32 3, label %24
  ]

9:                                                ; preds = %2
  %10 = lshr i64 %4, 32
  %11 = trunc nuw i64 %10 to i32
  call void @_ZN2v88internal8compiler8ConstantC1Ei(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %11) #24
  br label %29

12:                                               ; preds = %2
  %13 = ashr i64 %4, 32
  store i32 1, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %13, ptr %15, align 8
  br label %29

16:                                               ; preds = %2
  %17 = ashr i64 %4, 32
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %17
  %.sroa.0.0.copyload = load i32, ptr %20, align 4
  store i32 7, ptr %3, align 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %23 = sext i32 %.sroa.0.0.copyload to i64
  store i64 %23, ptr %22, align 8
  br label %29

24:                                               ; preds = %2
  %25 = ashr i64 %4, 32
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw [16 x i8], ptr %27, i64 %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %28, i64 16, i1 false)
  br label %29

default.unreachable:                              ; preds = %2
  unreachable

29:                                               ; preds = %24, %16, %12, %9
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare noundef ptr @_ZN2v88internal19MachineReprToStringENS0_21MachineRepresentationE(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_17InstructionAsJSONE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 9 uses
  %3 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 9 uses
  %4 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 9 uses
  %5 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 9 uses
  %6 = alloca %"struct.v8::internal::compiler::InstructionOperandAsJSON", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.154, i64 noundef 1) #24 ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.179, i64 noundef 6) #24 ; 0 uses
  %i.i = load i32, ptr %1, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.i) #24
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.180, i64 noundef 11) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.m = load i32, ptr %i.f, align 8
  %i.n = and i32 %i.m, 511
  store i32 %i.n, ptr %i.a, align 4
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_10ArchOpcodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #24
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.169, i64 noundef 2) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.181, i64 noundef 10) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.r = load i32, ptr %i.f, align 8              ; 2 uses
  %i.s = lshr i32 %i.r, 14
  %i.t = and i32 %i.s, 7                          ; 2 uses
  store i32 %i.t, ptr %i.b, align 4
  %i.u = and i32 %i.r, 15872
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.182, i64 noundef 3) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.w = load i32, ptr %i.f, align 8
  %i.x = lshr i32 %i.w, 9
  %i.y = trunc i32 %i.x to i8
  %i.z = and i8 %i.y, 31
  store i8 %i.z, ptr %i.c, align 1
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_14AddressingModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = phi i32 [ %.pre, %bb.b ], [ %i.t, %bb.a ]
  %.not85 = icmp eq i32 %i.ab, 0
  br i1 %.not85, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.183, i64 noundef 4) #24 ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_9FlagsModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #24 ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.184, i64 noundef 4) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.af = load i32, ptr %i.f, align 8
  %i.ag = lshr i32 %i.af, 17
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 31
  store i8 %i.ai, ptr %i.d, align 1
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_14FlagsConditionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %i.d) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre119 = load ptr, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.ak, ptr %4, align 8
  store ptr %.pre119, ptr %i.al, align 8
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.an = load i32, ptr %i.cr, align 4
  %i.ao = and i32 %i.an, 254
  %.not137 = icmp eq i32 %i.ao, 0
  br i1 %.not137, label %._crit_edge96, label %.peel.next

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.169, i64 noundef 2) #24 ; 0 uses
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.185, i64 noundef 9) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  %i.aw = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not8788 = icmp eq ptr %i.az, %i.bb
  br i1 %.not8788, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.k
  %.08090 = phi ptr [ %i.bp, %bb.k ], [ %i.az, %bb.g ] ; 2 uses
  %.08189 = phi i1 [ %.283, %bb.k ], [ true, %bb.g ] ; 2 uses
  %i.bc = load ptr, ptr %.08090, align 8          ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 7
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  br i1 %.08189, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bi, ptr %2, align 8
  %i.bj = load ptr, ptr %i.as, align 8
  store ptr %i.bj, ptr %i.ar, align 8
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.bc, ptr %3, align 8
  %i.bm = load ptr, ptr %i.as, align 8
  store ptr %i.bm, ptr %i.at, align 8
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.283 = phi i1 [ false, %bb.j ], [ %.08189, %.lr.ph ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.08090, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.bp, %i.bb
  br i1 %.not87, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.g, %bb.f
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %._crit_edge.1, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not8788.1 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not8788.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.l, %bb.p
  %.08090.1 = phi ptr [ %i.cn, %bb.p ], [ %i.bx, %bb.l ] ; 2 uses
  %.08189.1 = phi i1 [ %.283.1, %bb.p ], [ true, %bb.l ] ; 2 uses
  %i.ca = load ptr, ptr %.08090.1, align 8        ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, 7
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  br i1 %.08189.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cg, ptr %2, align 8
  %i.ch = load ptr, ptr %i.as, align 8
  store ptr %i.ch, ptr %i.ar, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.149, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.ca, ptr %3, align 8
  %i.ck = load ptr, ptr %i.as, align 8
  store ptr %i.ck, ptr %i.at, align 8
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_24InstructionOperandAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.58, i64 noundef 1) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.p
end_hunk_2
begin_hunk_3_@_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  %i.k = add i64 %i.j, %1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = shl i64 %i.k, 1
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = sub i64 %i.m, %i.k
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = select i1 %2, i64 %1, i64 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.v = icmp ult ptr %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
  store ptr %i.ab, ptr %i.u, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.g                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.al = load ptr, ptr %i.e, align 8
  store ptr %i.al, ptr %i.ak, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %1)
  %i.am = add i64 %i.m, 2
  %i.an = add i64 %i.am, %.sroa.speculated        ; 4 uses
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = icmp ult i64 %i.an, 2305843009213693951
  br i1 %i.ap, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.445) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %i.an, 3                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.n, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit, !prof !40

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %i.aq) #24
  %.pre.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = sub i64 %i.an, %i.k
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = select i1 %2, i64 %1, i64 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !7

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bf, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE15_M_allocate_mapEm.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.q, label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.be, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bp = and i64 %i.bo, 2305843009213693950
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bo, ptr %i.bs, align 8
  store ptr null, ptr %i.br, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit: ; preds = %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit24, %bb.r
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %i.an, ptr %i.l, align 8
  br label %_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit

_ZSt4copyIPPPN2v88internal8compiler4NodeES6_ET0_T_S8_S7_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit
  %.0 = phi ptr [ %i.be, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_deallocate_mapEPPS4_m.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.d, align 8
  %i.bt = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.j
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cb, ptr %i.cc, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !11, !10}
!15 = distinct !{!15, !9, !10, !11}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !9, !11, !10}
!18 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!19 = distinct !{!19, !9, !10, !11}
!20 = distinct !{!20, !9, !10, !11}
!21 = distinct !{!21, !9, !11, !10}
!22 = !{ptr @_ZN2v88internal8compiler13TurboJsonFileD1Ev}
!23 = !{ptr @_ZN2v88internal8compiler13TurboJsonFileD0Ev, ptr @_ZN2v88internal8compiler13TurboJsonFileD1Ev}
!24 = !{ptr @_ZN2v88internal8compiler13TurboJsonFileD0Ev}
!25 = !{ptr @_ZN2v88internal8compiler12TurboCfgFileD1Ev}
!26 = !{ptr @_ZN2v88internal8compiler12TurboCfgFileD0Ev, ptr @_ZN2v88internal8compiler12TurboCfgFileD1Ev}
!27 = !{ptr @_ZN2v88internal8compiler12TurboCfgFileD0Ev}
!28 = !{i64 8}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!31 = distinct !{!31, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!34 = distinct !{!34, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!35 = !{!33, !30}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE: argument 0"}
!38 = distinct !{!38, !"_ZSt13regex_replaceINSt7__cxx1112regex_traitsIcEEcSt11char_traitsIcESaIcEENS0_12basic_stringIT0_T1_T2_EERKSA_RKNS0_11basic_regexIS7_T_EEPKS7_NSt15regex_constants15match_flag_typeE"}
!39 = distinct !{null, null, null, null}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE10_M_get_nfaEv: argument 0"}
!43 = distinct !{!43, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE10_M_get_nfaEv"}
!44 = distinct !{null, null, null, null, null, null}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = distinct !{!47, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!50 = distinct !{!50, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!51 = !{!49, !46}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!56, !53}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order: argument 0"}
!61 = distinct !{!61, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order"}
!62 = distinct !{!62, !63, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_: argument 0"}
!63 = distinct !{!63, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_"}
!64 = distinct !{null, null, null}
!65 = distinct !{!65, !9}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_18SharedFunctionInfoEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_18SharedFunctionInfoEEES4_SaIS4_EEvPT_PT0_RT1_"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_ZSt19__relocate_object_aIN2v88internal6HandleINS1_18SharedFunctionInfoEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !9, !10, !11}
!72 = distinct !{!72, !9, !10}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9, !76}
!76 = !{!"llvm.loop.peeled.count", i32 1}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = distinct !{!79, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!82 = distinct !{!82, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!83 = !{!81, !78}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = distinct !{null}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!93 = distinct !{!93, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!96 = distinct !{!96, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!97 = !{!95, !92}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!100 = distinct !{!100, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!103 = distinct !{!103, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!104 = !{!102, !99}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!107 = distinct !{!107, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!110 = distinct !{!110, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!111 = !{!109, !106}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!114 = distinct !{!114, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!117 = distinct !{!117, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!118 = !{!116, !113}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !9}
!121 = distinct !{!121, !9}
!122 = distinct !{!122, !9}
!123 = distinct !{!123, !9}
!124 = distinct !{!124, !9}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !9}
!127 = !{!"branch_weights", i32 2001, i32 2000}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE3endEv: argument 0"}
!130 = distinct !{!130, !"_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE3endEv"}
!131 = distinct !{!131, !76}
!132 = distinct !{null, null, null, null}
!133 = distinct !{!133, !9}
!134 = distinct !{!134, !9}
!135 = distinct !{!135, !76}
!136 = distinct !{!136, !76}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !9}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!141 = distinct !{!141, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!144 = distinct !{!144, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!145 = !{!143, !140}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!148 = distinct !{!148, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!151 = distinct !{!151, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!152 = !{!150, !147}
!153 = distinct !{!153, !10, !11}
!154 = distinct !{!154, !11, !10}
!155 = distinct !{!155, !9, !156}
end_hunk_3
