inline.NumInlined: 394
inline.NumDeleted: 218
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::str_format_internal::ConvTag" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::lts_20250512::str_format_internal::ParsedFormatBase::ParsedFormatConsumer" = type { ptr, ptr }
%"struct.absl::lts_20250512::str_format_internal::UnboundConversion" = type <{ i32, %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", i8, i8, i8, i8 }>
%"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue" = type { i32 }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }

$_ZN4absl12lts_2025051219str_format_internal17ParseFormatStringINS1_16ParsedFormatBase20ParsedFormatConsumerEEEbSt17basic_string_viewIcSt11char_traitsIcEET_ = comdat any

$_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev = comdat any

$_ZN4absl12lts_2025051219str_format_internal17ConsumeConversionILb1EEEPKcS4_S4_PNS1_17UnboundConversionEPi = comdat any

$_ZN4absl12lts_2025051219str_format_internal17ConsumeConversionILb0EEEPKcS4_S4_PNS1_17UnboundConversionEPi = comdat any

$_ZN4absl12lts_2025051219str_format_internal11ParseDigitsERcRPKcS4_ = comdat any

$_ZN4absl12lts_2025051219str_format_internal29FormatConversionCharToConvIntEc = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051219str_format_internal13ConvTagHolder5valueE = comdat any

@_ZN4absl12lts_2025051219str_format_internal13ConvTagHolder5valueE = weak_odr local_unnamed_addr constant [256 x %"class.absl::lts_20250512::str_format_internal::ConvTag"] [%"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -60 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -56 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -62 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -63 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -48 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 15 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 11 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 9 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 13 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -124 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 7 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 14 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" zeroinitializer, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 2 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 10 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 8 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 12 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -128 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 3 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -123 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -126 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 16 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 4 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 17 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -120 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -121 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 5 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 18 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 6 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -122 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }], comdat, align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZNK4absl12lts_2025051219str_format_internal16ParsedFormatBase18MatchesConversionsEbSt16initializer_listINS0_23FormatConversionCharSetEE = private unnamed_addr constant [19 x i8] c"csdiouxXfFeEgGaAnpv", align 1

@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBaseC1ESt17basic_string_viewIcSt11char_traitsIcEEbSt16initializer_listINS0_23FormatConversionCharSetEE = unnamed_addr alias void (ptr, i64, ptr, i1, ptr, i64), ptr @_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBaseC2ESt17basic_string_viewIcSt11char_traitsIcEEbSt16initializer_listINS0_23FormatConversionCharSetEE

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN4absl12lts_2025051219str_format_internal32ConsumeUnboundConversionNoInlineEPKcS3_PNS1_17UnboundConversionEPi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !3
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4absl12lts_2025051219str_format_internal17ConsumeConversionILb1EEEPKcS4_S4_PNS1_17UnboundConversionEPi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal24ConsumeUnboundConversionEPKcS3_PNS1_17UnboundConversionEPi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4absl12lts_2025051219str_format_internal17ConsumeConversionILb0EEEPKcS4_S4_PNS1_17UnboundConversionEPi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_2025051219str_format_internal24ConsumeUnboundConversionEPKcS3_PNS1_17UnboundConversionEPi.exit

_ZN4absl12lts_2025051219str_format_internal24ConsumeUnboundConversionEPKcS3_PNS1_17UnboundConversionEPi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4absl12lts_2025051219str_format_internal17LengthModToStringB5cxx11ENS0_9LengthModE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  switch i8 %1, label %._crit_edge.i.i40 [
    i8 0, label %._crit_edge.i.i
    i8 1, label %._crit_edge.i.i4
    i8 2, label %._crit_edge.i.i8
    i8 3, label %._crit_edge.i.i12
    i8 4, label %._crit_edge.i.i16
    i8 5, label %._crit_edge.i.i20
    i8 6, label %._crit_edge.i.i24
    i8 7, label %._crit_edge.i.i28
    i8 8, label %._crit_edge.i.i32
    i8 9, label %._crit_edge.i.i36
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store i8 104, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  store i16 26728, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.e, align 2, !tbaa !11
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  store i8 108, ptr %i.a, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.g, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  store i16 27756, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.i, align 2, !tbaa !11
  br label %bb.b

._crit_edge.i.i16:                                ; preds = %bb.a
  store i8 76, ptr %i.a, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i20:                                ; preds = %bb.a
  store i8 106, ptr %i.a, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i24:                                ; preds = %bb.a
  store i8 122, ptr %i.a, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.o, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i28:                                ; preds = %bb.a
  store i8 116, ptr %i.a, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i32:                                ; preds = %bb.a
  store i8 113, ptr %i.a, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !11
  br label %bb.b

._crit_edge.i.i36:                                ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !11
  br label %bb.b

._crit_edge.i.i40:                                ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i40, %._crit_edge.i.i36, %._crit_edge.i.i32, %._crit_edge.i.i28, %._crit_edge.i.i24, %._crit_edge.i.i20, %._crit_edge.i.i16, %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBaseC2ESt17basic_string_viewIcSt11char_traitsIcEEbSt16initializer_listINS0_23FormatConversionCharSetEE(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 40)) %0, i64 %1, ptr %2, i1 noundef zeroext %3, ptr readonly captures(none) %4, i64 %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal17ParseFormatStringINS1_16ParsedFormatBase20ParsedFormatConsumerEEEbSt17basic_string_viewIcSt11char_traitsIcEET_(i64 %1, ptr %2, ptr nonnull %0, ptr %i.d)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef zeroext i1 @_ZNK4absl12lts_2025051219str_format_internal16ParsedFormatBase18MatchesConversionsEbSt16initializer_listINS0_23FormatConversionCharSetEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %3, ptr %4, i64 %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.j = phi i8 [ 1, %bb.d ], [ %i.i, %bb.f ]
  store i8 %i.j, ptr %0, align 8, !tbaa !16
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #17
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  resume { ptr, i32 } %i.k
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal17ConsumeConversionILb0EEEPKcS4_S4_PNS1_17UnboundConversionEPi:bb.a
  %or.cond10 = and i1 %i.cw, %i.cq
  br i1 %or.cond10, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !36
  %i.cz = or i8 %i.cy, 32
  store i8 %i.cz, ptr %i.cx, align 4, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge, %bb.af, %bb.ae
  %i.da = phi ptr [ %.pre, %.critedge._crit_edge ], [ %i.cp, %bb.ae ], [ %i.cp, %bb.af ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.copyload.i72, %.critedge._crit_edge ], [ %.sroa.0.0.copyload.i73, %bb.ae ], [ %.sroa.0.0.copyload.i73, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %.sroa.0.1, ptr %i.db, align 2, !tbaa !42
  %i.dc = load i32, ptr %3, align 4, !tbaa !3
  %i.dd = add nsw i32 %i.dc, 1                    ; 2 uses
  store i32 %i.dd, ptr %3, align 4, !tbaa !3
  store i32 %i.dd, ptr %2, align 4, !tbaa !43
  br label %.thread

.thread.loopexit:                                 ; preds = %bb.d
  store ptr %i.m, ptr %i.a, align 8
  store i8 %i.l, ptr %i.b, align 1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad, %bb.aa, %bb.v, %bb.x, %bb.g, %bb.f, %bb.ag, %bb.t, %bb.u, %bb.q, %bb.m, %bb.j, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ null, %bb.u ], [ null, %bb.j ], [ null, %bb.q ], [ null, %bb.m ], [ null, %bb.ad ], [ %i.ad, %bb.g ], [ null, %bb.t ], [ %i.da, %bb.ag ], [ null, %bb.f ], [ null, %bb.x ], [ null, %bb.v ], [ null, %bb.aa ], [ null, %.thread.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret ptr %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051219str_format_internal11ParseDigitsERcRPKcS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11
  %i.b = sext i8 %i.a to i32
  %.01114 = add nsw i32 %i.b, -48                 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %._crit_edge, label %.lr.ph.preheader, !prof !70

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.e, ptr %1, align 8, !tbaa !15
  %i.f = load i8, ptr %i.c, align 1, !tbaa !11    ; 3 uses
  store i8 %i.f, ptr %0, align 1, !tbaa !11
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.h = zext nneg i8 %i.f to i32
  %i.i = mul nsw i32 %.01114, 10
  %i.j = add nsw i32 %i.i, %i.h
  %.011 = add nsw i32 %i.j, -48                   ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %._crit_edge, label %.lr.ph.1, !prof !71

.lr.ph.1:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.m, ptr %1, align 8, !tbaa !15
  %i.n = load i8, ptr %i.k, align 1, !tbaa !11    ; 3 uses
  store i8 %i.n, ptr %0, align 1, !tbaa !11
  %i.o = add i8 %i.n, -58
  %or.cond.1 = icmp ult i8 %i.o, -10
  br i1 %or.cond.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.p = zext nneg i8 %i.n to i32
  %i.q = mul nsw i32 %.011, 10
  %i.r = add nsw i32 %i.q, %i.p
  %.011.1 = add nsw i32 %i.r, -48                 ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %._crit_edge, label %.lr.ph.2, !prof !71

.lr.ph.2:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %1, align 8, !tbaa !15
  %i.v = load i8, ptr %i.s, align 1, !tbaa !11    ; 3 uses
  store i8 %i.v, ptr %0, align 1, !tbaa !11
  %i.w = add i8 %i.v, -58
  %or.cond.2 = icmp ult i8 %i.w, -10
  br i1 %or.cond.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.2
  %i.x = zext nneg i8 %i.v to i32
  %i.y = mul nsw i32 %.011.1, 10
  %i.z = add nsw i32 %i.y, %i.x
  %.011.2 = add nsw i32 %i.z, -48                 ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.3, !prof !71

.lr.ph.3:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !15
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !11  ; 3 uses
  store i8 %i.ad, ptr %0, align 1, !tbaa !11
  %i.ae = add i8 %i.ad, -58
  %or.cond.3 = icmp ult i8 %i.ae, -10
  br i1 %or.cond.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.3
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = mul nsw i32 %.011.2, 10
  %i.ah = add nsw i32 %i.ag, %i.af
  %.011.3 = add nsw i32 %i.ah, -48                ; 3 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %2
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.4, !prof !71

.lr.ph.4:                                         ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %1, align 8, !tbaa !15
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !11  ; 3 uses
  store i8 %i.al, ptr %0, align 1, !tbaa !11
  %i.am = add i8 %i.al, -58
  %or.cond.4 = icmp ult i8 %i.am, -10
  br i1 %or.cond.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.4
  %i.an = zext nneg i8 %i.al to i32
  %i.ao = mul nsw i32 %.011.3, 10
  %i.ap = add nsw i32 %i.ao, %i.an
  %.011.4 = add nsw i32 %i.ap, -48                ; 3 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.ar = icmp eq ptr %i.aq, %2
  br i1 %i.ar, label %._crit_edge, label %.lr.ph.5, !prof !71

.lr.ph.5:                                         ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.as, ptr %1, align 8, !tbaa !15
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !11  ; 3 uses
  store i8 %i.at, ptr %0, align 1, !tbaa !11
  %i.au = add i8 %i.at, -58
  %or.cond.5 = icmp ult i8 %i.au, -10
  br i1 %or.cond.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.5
  %i.av = zext nneg i8 %i.at to i32
  %i.aw = mul nsw i32 %.011.4, 10
  %i.ax = add nsw i32 %i.aw, %i.av
  %.011.5 = add nsw i32 %i.ax, -48                ; 3 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.az = icmp eq ptr %i.ay, %2
  br i1 %i.az, label %._crit_edge, label %.lr.ph.6, !prof !71

.lr.ph.6:                                         ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %1, align 8, !tbaa !15
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !11  ; 3 uses
  store i8 %i.bb, ptr %0, align 1, !tbaa !11
  %i.bc = add i8 %i.bb, -58
  %or.cond.6 = icmp ult i8 %i.bc, -10
  br i1 %or.cond.6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.6
  %i.bd = zext nneg i8 %i.bb to i32
  %i.be = mul nsw i32 %.011.5, 10
  %i.bf = add nsw i32 %i.be, %i.bd
  %.011.6 = add nsw i32 %i.bf, -48                ; 3 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.bh = icmp eq ptr %i.bg, %2
  br i1 %i.bh, label %._crit_edge, label %.lr.ph.7, !prof !71

.lr.ph.7:                                         ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bi, ptr %1, align 8, !tbaa !15
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !11  ; 3 uses
  store i8 %i.bj, ptr %0, align 1, !tbaa !11
  %i.bk = add i8 %i.bj, -58
  %or.cond.7 = icmp ult i8 %i.bk, -10
  br i1 %or.cond.7, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.7
  %i.bl = zext nneg i8 %i.bj to i32
  %i.bm = mul nsw i32 %.011.6, 10
  %i.bn = add nsw i32 %i.bm, %i.bl
  %.011.7 = add nsw i32 %i.bn, -48                ; 2 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.bp = icmp eq ptr %i.bo, %2
  br i1 %i.bp, label %._crit_edge, label %.lr.ph.8, !prof !71

.lr.ph.8:                                         ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bq, ptr %1, align 8, !tbaa !15
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !11
  store i8 %i.br, ptr %0, align 1, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.8, %bb.b, %.lr.ph.preheader, %.lr.ph.1, %bb.c, %.lr.ph.2, %bb.d, %.lr.ph.3, %bb.e, %.lr.ph.4, %bb.f, %.lr.ph.5, %bb.g, %.lr.ph.6, %bb.h, %.lr.ph.7, %bb.i, %bb.a
  %.011.lcssa = phi i32 [ %.01114, %bb.a ], [ %.011, %bb.b ], [ %.01114, %.lr.ph.preheader ], [ %.011.5, %.lr.ph.6 ], [ %.011, %.lr.ph.1 ], [ %.011.5, %bb.g ], [ %.011.1, %bb.c ], [ %.011.1, %.lr.ph.2 ], [ %.011.7, %.lr.ph.8 ], [ %.011.2, %bb.d ], [ %.011.2, %.lr.ph.3 ], [ %.011.7, %bb.i ], [ %.011.3, %bb.e ], [ %.011.3, %.lr.ph.4 ], [ %.011.6, %bb.h ], [ %.011.4, %bb.f ], [ %.011.4, %.lr.ph.5 ], [ %.011.6, %.lr.ph.7 ]
  ret i32 %.011.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051219str_format_internal29FormatConversionCharToConvIntEc(i8 noundef signext %0) local_unnamed_addr #3 comdat {
  switch i8 %0, label %bb.d [
    i8 99, label %bb.e
    i8 115, label %2
    i8 100, label %3
    i8 105, label %4
    i8 111, label %5
    i8 117, label %6
    i8 120, label %7
    i8 88, label %8
    i8 102, label %9
    i8 70, label %10
    i8 101, label %11
    i8 69, label %12
    i8 103, label %13
    i8 71, label %14
    i8 97, label %15
    i8 65, label %16
    i8 110, label %bb.a
    i8 112, label %bb.b
    i8 118, label %bb.c
  ]

2:                                                ; preds = %1
  br label %bb.e

3:                                                ; preds = %1
  br label %bb.e

4:                                                ; preds = %1
  br label %bb.e

5:                                                ; preds = %1
  br label %bb.e

6:                                                ; preds = %1
  br label %bb.e

7:                                                ; preds = %1
  br label %bb.e

8:                                                ; preds = %1
  br label %bb.e

9:                                                ; preds = %1
  br label %bb.e

10:                                               ; preds = %1
  br label %bb.e

11:                                               ; preds = %1
  br label %bb.e

12:                                               ; preds = %1
  br label %bb.e

13:                                               ; preds = %1
  br label %bb.e

14:                                               ; preds = %1
  br label %bb.e

15:                                               ; preds = %1
  br label %bb.e

16:                                               ; preds = %1
  br label %bb.e

bb.a:                                             ; preds = %1
  br label %bb.e

bb.b:                                             ; preds = %1
  br label %bb.e

bb.c:                                             ; preds = %1
  br label %bb.e

bb.d:                                             ; preds = %1
  %17 = icmp eq i8 %0, 42
  %18 = zext i1 %17 to i64
  br label %bb.e

bb.e:                                             ; preds = %1, %2, %4, %6, %8, %10, %12, %14, %16, %bb.b, %bb.d, %bb.c, %bb.a, %15, %13, %11, %9, %7, %5, %3
  %19 = phi i64 [ %18, %bb.d ], [ 4, %2 ], [ 8, %3 ], [ 16, %4 ], [ 32, %5 ], [ 64, %6 ], [ 128, %7 ], [ 256, %8 ], [ 512, %9 ], [ 1024, %10 ], [ 2048, %11 ], [ 4096, %12 ], [ 8192, %13 ], [ 16384, %14 ], [ 32768, %15 ], [ 65536, %16 ], [ 131072, %bb.a ], [ 262144, %bb.b ], [ 524288, %bb.c ], [ 2, %1 ]
  ret i64 %19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !3      ; 6 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !67 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !73

bb.e:                                             ; preds = %bb.c
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !67   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !74

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !67 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !74

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = phi i32 [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 4 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.af, ptr %i.ah, align 8, !tbaa !3
  %i.ai = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 16) #17
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #18 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !75
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !54
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  store ptr %i.w, ptr %3, align 8, !tbaa !67
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !72
  store ptr %3, ptr %i.x, align 8, !tbaa !67
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  store ptr %i.z, ptr %3, align 8, !tbaa !67
  store ptr %3, ptr %i.y, align 8, !tbaa !66
  %i.aa = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !54
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
end_hunk_1
