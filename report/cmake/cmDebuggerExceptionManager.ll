Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDebuggerExceptionManager?download=true
inline.NumInlined: 1009
inline.NumDeleted: 549
begin_hunk_0
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.cmDebugger::cmDebuggerExceptionFilter" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.dap::SetExceptionBreakpointsResponse" = type { %"class.dap::optional" }
%"class.dap::optional" = type <{ %"class.std::vector", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dap::Breakpoint, std::allocator<dap::Breakpoint>>::_Vector_impl" }
%"struct.std::_Vector_base<dap::Breakpoint, std::allocator<dap::Breakpoint>>::_Vector_impl" = type { %"struct.std::_Vector_base<dap::Breakpoint, std::allocator<dap::Breakpoint>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dap::Breakpoint, std::allocator<dap::Breakpoint>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.dap::ExceptionInfoResponse" = type { %"class.std::__cxx11::basic_string", %"class.dap::optional.48", %"class.dap::optional.50", %"class.std::__cxx11::basic_string" }
%"class.dap::optional.48" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.dap::optional.50" = type { %"struct.dap::ExceptionDetails", i8, [7 x i8] }
%"struct.dap::ExceptionDetails" = type { %"class.dap::optional.48", %"class.dap::optional.48", %"class.dap::optional.51", %"class.dap::optional.48", %"class.dap::optional.48", %"class.dap::optional.48" }
%"class.dap::optional.51" = type <{ %"class.std::vector.52", i8, [7 x i8] }>
%"class.std::vector.52" = type { %"struct.std::_Vector_base.53" }
%"struct.std::_Vector_base.53" = type { %"struct.std::_Vector_base<dap::ExceptionDetails, std::allocator<dap::ExceptionDetails>>::_Vector_impl" }
%"struct.std::_Vector_base<dap::ExceptionDetails, std::allocator<dap::ExceptionDetails>>::_Vector_impl" = type { %"struct.std::_Vector_base<dap::ExceptionDetails, std::allocator<dap::ExceptionDetails>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dap::ExceptionDetails, std::allocator<dap::ExceptionDetails>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.69" = type { %"struct.std::_Vector_base.70" }
%"struct.std::_Vector_base.70" = type { %"struct.std::_Vector_base<dap::ExceptionBreakpointsFilter, std::allocator<dap::ExceptionBreakpointsFilter>>::_Vector_impl" }
%"struct.std::_Vector_base<dap::ExceptionBreakpointsFilter, std::allocator<dap::ExceptionBreakpointsFilter>>::_Vector_impl" = type { %"struct.std::_Vector_base<dap::ExceptionBreakpointsFilter, std::allocator<dap::ExceptionBreakpointsFilter>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dap::ExceptionBreakpointsFilter, std::allocator<dap::ExceptionBreakpointsFilter>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.dap::ExceptionBreakpointsFilter" = type <{ %"class.dap::optional.48", %"class.dap::optional.75", [6 x i8], %"class.dap::optional.48", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.dap::optional.75", [6 x i8] }>
%"class.dap::optional.75" = type { %"class.dap::boolean", i8 }
%"class.dap::boolean" = type { i8 }
%"class.std::optional.83" = type { %"struct.std::_Optional_base.84" }
%"struct.std::_Optional_base.84" = type { %"struct.std::_Optional_payload.86" }
%"struct.std::_Optional_payload.86" = type { %"struct.std::_Optional_payload.base.99", [7 x i8] }
%"struct.std::_Optional_payload.base.99" = type { %"struct.std::_Optional_payload_base.base.98" }
%"struct.std::_Optional_payload_base.base.98" = type <{ %"union.std::_Optional_payload_base<dap::StoppedEvent>::_Storage", i8 }>
%"union.std::_Optional_payload_base<dap::StoppedEvent>::_Storage" = type { %"struct.dap::StoppedEvent" }
%"struct.dap::StoppedEvent" = type { %"class.dap::optional.75", [6 x i8], %"class.dap::optional.48", %"class.dap::optional.89", %"class.dap::optional.75", %"class.std::__cxx11::basic_string", %"class.dap::optional.48", %"class.dap::optional.96" }
%"class.dap::optional.89" = type <{ %"class.std::vector.90", i8, [7 x i8] }>
%"class.std::vector.90" = type { %"struct.std::_Vector_base.91" }
%"struct.std::_Vector_base.91" = type { %"struct.std::_Vector_base<dap::integer, std::allocator<dap::integer>>::_Vector_impl" }
%"struct.std::_Vector_base<dap::integer, std::allocator<dap::integer>>::_Vector_impl" = type { %"struct.std::_Vector_base<dap::integer, std::allocator<dap::integer>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dap::integer, std::allocator<dap::integer>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dap::optional.96" = type <{ %"class.dap::integer", i8, [7 x i8] }>
%"class.dap::integer" = type { i64 }
%"struct.cmDebugger::cmDebuggerException" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.dap::ResponseOrError" = type { %"struct.dap::SetExceptionBreakpointsResponse", %"struct.dap::Error" }
%"struct.dap::Error" = type { %"class.std::__cxx11::basic_string" }
%"struct.dap::ResponseOrError.139" = type { %"struct.dap::ExceptionInfoResponse", %"struct.dap::Error" }
%"struct.std::_Hashtable<MessageType, std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>, std::allocator<std::pair<const MessageType, cmDebugger::cmDebuggerExceptionFilter>>, std::__detail::_Select1st, std::equal_to<MessageType>, cmDebugger::cmDebuggerExceptionManager::MessageTypeHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, bool>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, bool>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::tuple.151" = type { %"struct.std::_Tuple_impl.152" }
%"struct.std::_Tuple_impl.152" = type { %"struct.std::_Head_base.153" }
%"struct.std::_Head_base.153" = type { ptr }
%"class.std::tuple.140" = type { i8 }

$_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_ = comdat any

$_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev = comdat any

$_ZNSt14_Optional_baseIN10cmDebugger19cmDebuggerExceptionELb0ELb0EED2Ev = comdat any

$_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev = comdat any

$_ZN3dap21ExceptionInfoResponseD2Ev = comdat any

$_ZN3dap26ExceptionBreakpointsFilterD2Ev = comdat any

$_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EED2Ev = comdat any

$_ZN3dap12StoppedEventD2Ev = comdat any

$_ZNSt14_Optional_baseIN3dap12StoppedEventELb0ELb0EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZNSt6vectorIN3dap10BreakpointESaIS1_EED2Ev = comdat any

$_ZN3dap6SourceD2Ev = comdat any

$_ZN3dap16ExceptionDetailsD2Ev = comdat any

$_ZN3dap15ResponseOrErrorINS_31SetExceptionBreakpointsResponseEED2Ev = comdat any

$_ZN3dap15ResponseOrErrorINS_21ExceptionInfoResponseEED2Ev = comdat any

$_ZN3dap21ExceptionInfoResponseC2EOS0_ = comdat any

$_ZN3dap16ExceptionDetailsC2EOS0_ = comdat any

$_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_ = comdat any

$_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm = comdat any

$_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_ = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESI_IJEEEEEPSB_DpOT_ = comdat any

$_ZSt8_DestroyIPN3dap26ExceptionBreakpointsFilterEEvT_S3_ = comdat any

$_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN3dap26ExceptionBreakpointsFilterC2ERKS0_ = comdat any

$_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIN3dap26ExceptionBreakpointsFilterESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS3_ = comdat any

$_ZN10cmDebugger19cmDebuggerExceptionaSEOS0_ = comdat any

$_ZN3dap12StoppedEventaSEOS0_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Fatal error\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"INTERNAL_ERROR\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Other messages\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LOG\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Debug log\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Pause on exception\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@"_ZTIZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_0NS_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_0NS_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_0NS_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" = internal constant [278 x i8] c"ZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_0NS_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_\00", align 1
@"_ZTIZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_1NS_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_1NS_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" }, align 8
@"_ZTSZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_1NS_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_" = internal constant [268 x i8] c"ZN3dap7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPS0_E3$_1NS_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_St8functionIFvNS_7RequestEEEEE5valueEvE4typeEOS8_EUlPKvRKS9_IFvPKNS_8TypeInfoESH_EERKS9_IFvSK_RKNS_5ErrorEEEE_\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN10cmDebugger26cmDebuggerExceptionManagerC1EPN3dap7SessionE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN10cmDebugger26cmDebuggerExceptionManagerC2EPN3dap7SessionE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10cmDebugger26cmDebuggerExceptionManagerC2EPN3dap7SessionE(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 48)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  %4 = alloca %"struct.cmDebugger::cmDebuggerExceptionFilter", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"struct.cmDebugger::cmDebuggerExceptionFilter", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.cmDebugger::cmDebuggerExceptionFilter", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"struct.cmDebugger::cmDebuggerExceptionFilter", align 8 ; 14 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"struct.cmDebugger::cmDebuggerExceptionFilter", align 8 ; 14 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr %1, ptr %0, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.h, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.n, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.s, align 8, !tbaa !31
  %i.t = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.u = invoke noundef ptr @_ZN3dap6TypeOfINS_30SetExceptionBreakpointsRequestEE4typeEv()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.x, align 8
  store i64 %i.t, ptr %3, align 8, !tbaa !33
  store ptr @"_ZNSt17_Function_handlerIFvPKvRKSt8functionIFvPKN3dap8TypeInfoES1_EERKS2_IFvS6_RKNS3_5ErrorEEEEZNS3_7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPSJ_E3$_0NS3_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_S2_IFvNS3_7RequestEEEEE5valueEvE4typeEOSR_EUlS1_SA_SH_E_E9_M_invokeERKSt9_Any_dataOS1_SA_SH_", ptr %i.w, align 8, !tbaa !138
  store ptr @"_ZNSt17_Function_handlerIFvPKvRKSt8functionIFvPKN3dap8TypeInfoES1_EERKS2_IFvS6_RKNS3_5ErrorEEEEZNS3_7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPSJ_E3$_0NS3_30SetExceptionBreakpointsRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_S2_IFvNS3_7RequestEEEEE5valueEvE4typeEOSR_EUlS1_SA_SH_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation", ptr %i.v, align 8, !tbaa !35
  %i.y = load ptr, ptr %1, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #18
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ag, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.body

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !135   ; 2 uses
  %i.al = invoke noundef ptr @_ZN3dap6TypeOfINS_20ExceptionInfoRequestEE4typeEv()
          to label %.noexc49 unwind label %bb.o

.noexc49:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8
  store i64 %i.t, ptr %2, align 8, !tbaa !33
  store ptr @"_ZNSt17_Function_handlerIFvPKvRKSt8functionIFvPKN3dap8TypeInfoES1_EERKS2_IFvS6_RKNS3_5ErrorEEEEZNS3_7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPSJ_E3$_1NS3_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_S2_IFvNS3_7RequestEEEEE5valueEvE4typeEOSR_EUlS1_SA_SH_E_E9_M_invokeERKSt9_Any_dataOS1_SA_SH_", ptr %i.an, align 8, !tbaa !138
  store ptr @"_ZNSt17_Function_handlerIFvPKvRKSt8functionIFvPKN3dap8TypeInfoES1_EERKS2_IFvS6_RKNS3_5ErrorEEEEZNS3_7Session15registerHandlerIZN10cmDebugger26cmDebuggerExceptionManagerC1EPSJ_E3$_1NS3_20ExceptionInfoRequestEEENSt9enable_ifIXsr6traits14CompatibleWithIT_S2_IFvNS3_7RequestEEEEE5valueEvE4typeEOSR_EUlS1_SA_SH_E_E10_M_managerERSt9_Any_dataRKS10_St18_Manager_operation", ptr %i.am, align 8, !tbaa !35
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %.noexc49
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.as, null
  br i1 %.not.i.i48, label %._crit_edge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %._crit_edge.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #18
  unreachable

bb.l:                                             ; preds = %.noexc49
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i4.i46 = icmp eq ptr %i.ax, null
  br i1 %.not.i4.i46, label %_ZNSt14_Function_baseD2Ev.exit5.i47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i47 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i47:              ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

._crit_edge.i.i:                                  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bb, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 11, ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.bd, align 1, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bf, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 11, ptr %i.bg, align 8, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 59
  store i8 0, ptr %i.bh, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !45
  %i.bi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit: ; preds = %._crit_edge.i.i
  %i.bj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bf
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit
  %i.bm = load i64, ptr %i.bf, align 8, !tbaa !43
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bq = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #19
  br label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit

_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bs, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 14, ptr %i.bt, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i8 0, ptr %i.bu, align 2, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bw, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 14, ptr %i.bx, align 8, !tbaa !42
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 62
  store i8 0, ptr %i.by, align 2, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 2, ptr %i.b, align 4, !tbaa !45
  %i.bz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit67 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit67: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull align 8 dereferenceable(64) %5) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bw
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit67
  %i.cd = load i64, ptr %i.bw, align 8, !tbaa !43
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
  %i.cf = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bs
  br i1 %i.cg, label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i70
end_hunk_0
begin_hunk_1_@_ZN10cmDebugger26cmDebuggerExceptionManagerC2EPN3dap7SessionE:bb.a
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !43
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #19
  br label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit73

_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cj, ptr %6, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cj, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.ck, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.cn, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, i64 14, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 14, ptr %i.co, align 8, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 62
  store i8 0, ptr %i.cp, align 2, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 3, ptr %i.c, align 4, !tbaa !45
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit83 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit83: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit73
  %i.cr = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %6) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !46 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cn
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit83
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  %i.cw = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cj
  br i1 %i.cx, label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85
  %i.cy = load i64, ptr %i.cj, align 8, !tbaa !43
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #19
  br label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit89

_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.da, ptr %7, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.da, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.db, align 8, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.dc, align 1, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.de, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 7, ptr %i.df, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 55
  store i8 0, ptr %i.dg, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 4, ptr %i.d, align 4, !tbaa !45
  %i.dh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit99 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit99: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit89
  %i.di = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %7) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !46 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.de
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit99
  %i.dl = load i64, ptr %i.de, align 8, !tbaa !43
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
  %i.dn = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.da
  br i1 %i.do, label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !43
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #19
  br label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit105

_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.dr, ptr %8, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dr, ptr noundef nonnull align 1 dereferenceable(3) @.str.8, i64 3, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.ds, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.dt, align 1, !tbaa !43
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dv, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 9, ptr %i.dw, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 57
  store i8 0, ptr %i.dx, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 5, ptr %i.e, align 4, !tbaa !45
  %i.dy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseI11MessageTypeSt4pairIKS1_N10cmDebugger25cmDebuggerExceptionFilterEESaIS6_ENS_10_Select1stESt8equal_toIS1_ENS4_26cmDebuggerExceptionManager15MessageTypeHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit115 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit115: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit105
  %i.dz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dy, ptr noundef nonnull align 8 dereferenceable(64) %8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !46 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dv
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit115
  %i.ec = load i64, ptr %i.dv, align 8, !tbaa !43
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117: ; preds = %_ZNSt13unordered_mapI11MessageTypeN10cmDebugger25cmDebuggerExceptionFilterENS1_26cmDebuggerExceptionManager15MessageTypeHashESt8equal_toIS0_ESaISt4pairIKS0_S2_EEEixEOS0_.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  %i.ee = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dr
  br i1 %i.ef, label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !43
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #19
  br label %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit121

_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ei, ptr %9, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ei, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.ej, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 27
  store i8 0, ptr %i.ek, align 1, !tbaa !43
  %i.el = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit unwind label %bb.p

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit121
  store i8 1, ptr %i.el, align 1, !tbaa !47
  %i.em = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ei
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !43
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.eq, ptr %10, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.eq, ptr noundef nonnull align 1 dereferenceable(14) @.str.2, i64 14, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 14, ptr %i.er, align 8, !tbaa !42
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 30
  store i8 0, ptr %i.es, align 2, !tbaa !43
  %i.et = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_bESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit132 unwind label %bb.q

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr %i.et, align 1, !tbaa !47
  %i.eu = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.eq
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit132
  %i.ew = load i64, ptr %i.eq, align 8, !tbaa !43
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEEixEOS5_.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret void

bb.o:                                             ; preds = %bb.a, %bb.h
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %._crit_edge.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit73
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit89
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit105
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.body

bb.p:                                             ; preds = %_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev.exit121
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %9, align 8, !tbaa !46    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ei
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.p
  %i.fh = load i64, ptr %i.ei, align 8, !tbaa !43
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.body

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.eq
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.q
  %i.fm = load i64, ptr %i.eq, align 8, !tbaa !43
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.body

.body:                                            ; preds = %bb.o, %_ZNSt14_Function_baseD2Ev.exit5.i47, %_ZNSt14_Function_baseD2Ev.exit5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.pn42.pn = phi { ptr, i32 } [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %i.af, %_ZNSt14_Function_baseD2Ev.exit5.i ], [ %i.aw, %_ZNSt14_Function_baseD2Ev.exit5.i47 ], [ %i.ey, %bb.o ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZNSt14_Optional_baseIN10cmDebugger19cmDebuggerExceptionELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.fo) #17
  call void @_ZNSt10_HashtableI11MessageTypeSt4pairIKS0_N10cmDebugger25cmDebuggerExceptionFilterEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ENS3_26cmDebuggerExceptionManager15MessageTypeHashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #17
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.g) #17
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN10cmDebugger25cmDebuggerExceptionFilteraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !46     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !43
  store i8 %i.j, ptr %i.a, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !43
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = load i64, ptr %i.e, align 8, !tbaa !43
  store i64 %i.r, ptr %i.b, align 8, !tbaa !43
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !43
  store ptr %i.d, ptr %0, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !42
  %i.w = load i64, ptr %i.e, align 8, !tbaa !43
  store i64 %i.w, ptr %i.b, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %1, align 8, !tbaa !46
  store i64 %i.s, ptr %i.e, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !42
  store i8 0, ptr %i.x, align 1, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !46  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !42 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i6 = icmp eq ptr %1, %0
  br i1 %.not21.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ai, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !43
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7: ; preds = %bb.k, %bb.j, %bb.i
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !43
  %.pre.i8 = load ptr, ptr %i.aa, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

.thread.i10:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !42
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !42
  %i.as = load i64, ptr %i.af, align 8, !tbaa !43
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !43
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !43
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !42
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !43
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !43
  %.not.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !46
  store i64 %i.at, ptr %i.af, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4, %.thread.i10
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit11: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7, %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7 ], [ %i.ab, %bb.l ], [ %i.af, %bb.m ], [ %i.ae, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !42
  store i8 0, ptr %i.ay, align 1, !tbaa !43
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cmDebugger25cmDebuggerExceptionFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !43
end_hunk_1
