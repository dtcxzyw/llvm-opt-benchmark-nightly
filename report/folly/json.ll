Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/json?download=true
inline.NumInlined: 4902
inline.NumDeleted: 1766
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 60
begin_hunk_0
%"struct.folly::json::parse_range" = type { %"struct.folly::json::parse_location" }
%"struct.folly::json::parse_location" = type { i32 }
%class.anon.255 = type { ptr }
%"struct.std::pair.211" = type <{ %"class.folly::f14::detail::F14ItemIter", i8, [7 x i8] }>
%"class.folly::f14::detail::F14ItemIter" = type { ptr, i64 }
%"class.std::tuple.246" = type { %"struct.std::_Tuple_impl.247" }
%"struct.std::_Tuple_impl.247" = type { %"struct.std::_Head_base.248" }
%"struct.std::_Head_base.248" = type { ptr }
%"class.folly::detail::ScopeGuardImpl" = type { %"class.folly::detail::ScopeGuardImplBase", %class.anon.224 }
%"class.folly::detail::ScopeGuardImplBase" = type { i8 }
%class.anon.224 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.std::array.225" = type { [256 x i8] }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"struct.folly::json::(anonymous namespace)::Input.273" = type <{ %"class.folly::Range", ptr, i32, i32, i32, [4 x i8] }>
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<folly::dynamic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<folly::dynamic>::_Storage" = type { %"struct.folly::dynamic" }
%class.anon.277 = type { ptr }

$__clang_call_terminate = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_ = comdat any

$_ZNK5folly7dynamic6asImplIdEET_v = comdat any

$_ZN5folly2toIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessIvED0Ev = comdat any

$_ZNK5folly17BadExpectedAccessIvE4whatEv = comdat any

$_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_ = comdat any

$_ZN5folly15ConversionErrorC2EOS0_ = comdat any

$_ZN5folly15ConversionErrorD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ = comdat any

$_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev = comdat any

$_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_ = comdat any

$_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5folly9TypeErrorC2EOS0_ = comdat any

$_ZN5folly9TypeErrorD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN5folly6detail8function14FunctionTraitsIKFbRKNS_7dynamicES5_EE10uninitCallES5_S5_RNS1_4DataE = comdat any

$_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN5folly4json11print_errorD0Ev = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_15write_nonfiniteIcSC_EET0_SE_bNS0_18basic_format_specsIT_EERKNS1_11float_specsEEUlPcE_EESE_SE_RKNSF_IT1_EEmmOT2_ = comdat any

$_ZN3fmt2v96detail4fillIPccEET_S4_mRKNS1_6fill_tIT0_EE = comdat any

$_ZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE = comdat any

$_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlPcE_clESR_ = comdat any

$_ZN3fmt2v96detail14digit_groupingIcEC2ENS1_10locale_refEb = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS1_10locale_refE = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE0_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIcPcmNS1_14digit_groupingIcEEEET0_S6_T1_iiRKT2_ = comdat any

$_ZNK3fmt2v96detail14digit_groupingIcE5applyIPccEET_S6_NS0_17basic_string_viewIT0_EE = comdat any

$_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEE4growEm = comdat any

$_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_ = comdat any

$_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEE4growEm = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE1_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIPccmNS1_14digit_groupingIcEEEET_S6_T1_iiT0_RKT2_ = comdat any

$_ZN3fmt2v96detail17copy_str_noinlineIcPcS3_EET1_T0_S5_S4_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE2_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_15write_nonfiniteIcS9_EET0_SB_bNS0_18basic_format_specsIT_EERKNS1_11float_specsEEUlS9_E_EESB_SB_RKNSC_IT1_EEmmOT2_ = comdat any

$_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE = comdat any

$_ZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE = comdat any

$_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E_clES7_ = comdat any

$_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E0_EESH_SH_SO_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_ = comdat any

$_ZNK3fmt2v96detail14digit_groupingIcE5applyINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_SA_NS0_17basic_string_viewIT0_EE = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E1_EESH_SH_SO_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcmNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_ = comdat any

$_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E2_clES7_ = comdat any

$_ZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE = comdat any

$_ZZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlPcE_clESR_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE0_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIcPcjNS1_14digit_groupingIcEEEET0_S6_T1_iiRKT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE1_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIPccjNS1_14digit_groupingIcEEEET_S6_T1_iiT0_RKT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SJ_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE2_EESK_SK_SR_mmOT2_ = comdat any

$_ZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE = comdat any

$_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E_clES7_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E0_EESH_SH_SO_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E1_EESH_SH_SO_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcjNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_ = comdat any

$_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E2_clES7_ = comdat any

$_ZN3fmt2v96detail19handle_dynamic_specINS1_13width_checkerENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEvRiNS1_7arg_refINT0_9char_typeEEERSG_ = comdat any

$_ZN3fmt2v96detail19handle_dynamic_specINS1_17precision_checkerENS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEEvRiNS1_7arg_refINT0_9char_typeEEERSG_ = comdat any

$_ZN3fmt2v96detail5writeIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_SF_SC_NS0_18basic_format_specsIT_EENS1_10locale_refE = comdat any

$_ZN3fmt2v96detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEENS1_13error_handlerEEEiT0_T1_ = comdat any

$_ZN3fmt2v96detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_20basic_format_contextISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcEEEENS1_13error_handlerEEEiT0_T1_ = comdat any

$_ZN3fmt2v96detail21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_ = comdat any

$_ZN3fmt2v96detail14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE = comdat any

$_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_11write_bytesILS4_2EcSC_EET1_SE_NS0_17basic_string_viewIcEERKNS0_18basic_format_specsIT0_EEEUlPcE_EESI_SI_RKNSH_ISE_EEmmOT2_ = comdat any

$_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi = comdat any

$_ZN3fmt2v912format_errorC2EPKc = comdat any

$_ZN3fmt2v96detail6bigintlSEi = comdat any

$_ZN3fmt2v96detail6bigint12assign_pow10Ei = comdat any

$_ZN3fmt2v96detail6bigint13divmod_assignERKS2_ = comdat any

$_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm = comdat any

$_ZN3fmt2v96detail6bigint6squareEv = comdat any

$_ZN3fmt2v96detail14do_write_floatISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SE_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE_EESI_SI_SP_mmOT2_ = comdat any

$_ZN3fmt2v96detail17copy_str_noinlineIcPKcPcEET1_T0_S7_S6_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE0_EESI_SI_SP_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIcPcPKcNS1_14digit_groupingIcEEEET0_S8_T1_iiRKT2_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE1_EESI_SI_SP_mmOT2_ = comdat any

$_ZN3fmt2v96detail17write_significandIPccPKcNS1_14digit_groupingIcEEEET_S8_T1_iiT0_RKT2_ = comdat any

$_ZN3fmt2v96detail17copy_str_noinlineIcPKcNS0_8appenderEEET1_T0_S7_S6_ = comdat any

$_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_14do_write_floatISC_NS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_SH_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlPcE2_EESI_SI_SP_mmOT2_ = comdat any

$_ZNK5folly7dynamic6asImplIlEET_v = comdat any

$_ZN5folly2toIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_ = comdat any

$_ZZN5folly2toIldEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_cdPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_ = comdat any

$_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_ = comdat any

$_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_ = comdat any

$_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZNSt6vectorISt17reference_wrapperIKSt4pairIKN5folly7dynamicES3_EESaIS7_EE19_M_range_initializeINS3_19const_item_iteratorEEEvT_SC_St20forward_iterator_tag = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA87_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v = comdat any

$_ZNK5folly7dynamic4findENS_5RangeIPKcEE = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKN5folly5RangeIPKcEEEclINS_17__normal_iteratorIPKNS2_7dynamicESt6vectorISB_SaISB_EEEEEEbT_ = comdat any

$_ZN5folly11toAppendFitIJA87_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_ = comdat any

$_ZN5folly4json16escapeStringImplILb0EEEvNS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18serialization_optsE = comdat any

$_ZN5folly4json16escapeStringImplILb1EEEvNS_5RangeIPKcEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18serialization_optsE = comdat any

$_ZN6google17MakeCheckOpStringIPKhS2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc = comdat any

$_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt12out_of_rangeEEvOT_ = comdat any

$_ZNSt12out_of_rangeC2EOS_ = comdat any

$_ZN5folly7dynamicC2EPKc = comdat any

$_ZNR5folly7dynamicixIRmEENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS4_S0_EE5valueERS0_E4typeEOS4_ = comdat any

$_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplImJRmDnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSC_IKS4_S4_EEEEEbESC_ImmERKT_DpOT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRmDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESE_ImmEDpOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmm = comdat any

$_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_19NodeContainerPolicyINS_7dynamicES6_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESC_ImmE = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA11_cccETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5EEEE4callIJA26_cjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA3_cSC_PSC_EEEvDpRKT_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSC_EEEvDpRKT_ = comdat any

$_ZN5folly4json11parse_errorD0Ev = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA11_cccPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSH_IKS4_S4_EEEEEbESH_ImmERKT_DpOT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESG_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESJ_ImmEDpOT_ = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA16_ciA11_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA16_ciA11_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZN5follyleINS_5RangeIPKcEES3_EENSt9enable_ifIXsr6detail23ComparableAsStringPieceIT_T0_EE5valueEbE4typeERKS6_RKS7_ = comdat any

$_ZNSt10_HashtableIPKN5folly7dynamicESt4pairIKS3_NS0_4json14parse_metadataEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJPS1_S7_EEES4_INSA_14_Node_iteratorIS8_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIPKN5folly7dynamicESt4pairIKS3_NS0_4json14parse_metadataEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm = comdat any

$_ZNSt10_HashtableIPKN5folly7dynamicESt4pairIKS3_NS0_4json14parse_metadataEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZTIN5folly4json11print_errorE = comdat any

$_ZTSN5folly4json11print_errorE = comdat any

$_ZTIN5folly17BadExpectedAccessIvEE = comdat any

$_ZTSN5folly17BadExpectedAccessIvEE = comdat any

$_ZTVN5folly17BadExpectedAccessIvEE = comdat any

$_ZTIN5folly15ConversionErrorE = comdat any

$_ZTSN5folly15ConversionErrorE = comdat any

$_ZTIN5folly19ConversionErrorBaseE = comdat any

$_ZTSN5folly19ConversionErrorBaseE = comdat any

$_ZTVN5folly15ConversionErrorE = comdat any

$_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE = comdat any

$_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTIN5folly9TypeErrorE = comdat any

$_ZTSN5folly9TypeErrorE = comdat any

$_ZTVN5folly9TypeErrorE = comdat any

$_ZTVN5folly4json11print_errorE = comdat any

$_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = comdat any

$_ZTIN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = comdat any

$_ZTSN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE = comdat any

$_ZTIN3fmt2v96detail6bufferIcEE = comdat any

$_ZTSN3fmt2v96detail6bufferIcEE = comdat any

$_ZTVN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = comdat any

$_ZTIN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = comdat any

$_ZTSN3fmt2v919basic_memory_bufferIiLm500ESaIiEEE = comdat any

$_ZTIN3fmt2v96detail6bufferIiEE = comdat any

$_ZTSN3fmt2v96detail6bufferIiEE = comdat any

$_ZN3fmt2v96detail10basic_dataIvE18pow10_significandsE = comdat any

$_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE = comdat any

$_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = comdat any

$_ZTIN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = comdat any

$_ZTSN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE = comdat any

$_ZTIN3fmt2v96detail6bufferIjEE = comdat any

$_ZTSN3fmt2v96detail6bufferIjEE = comdat any

end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.2.1 = phi i32 [ %i.m, %bb.c ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !308
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i16
  %i.r = or i16 %.lobit, %i.q
  %i.s = zext nneg i16 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 19
  %i.u = and i32 %.sroa.2.1, -524290
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, 1
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.x = or disjoint i32 %i.i, 65536
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.sroa.2.2 = phi i32 [ %i.x, %bb.e ], [ %i.i, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !308
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i16
  %i.ac = or i16 %.lobit, %i.ab
  %i.ad = zext nneg i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 19
  %i.af = and i32 %.sroa.2.2, -524291
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = or disjoint i32 %i.ag, 2
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ai = or disjoint i32 %i.i, 65536
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.sroa.2.3 = phi i32 [ %i.ai, %bb.g ], [ %i.i, %bb.a ]
  %i.aj = or i32 %.sroa.2.3, 3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.46) #36
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.a, %bb.h, %bb.f, %bb.d
  %.sroa.2.4 = phi i32 [ %i.aj, %bb.h ], [ %i.i, %bb.a ], [ %i.w, %bb.d ], [ %i.ah, %bb.f ], [ %i.l, %bb.b ], [ %i.i, %bb.a ]
  %.sroa.2.0.insert.ext = zext nneg i32 %.sroa.2.4 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  ret i64 %.sroa.2.0.insert.shift
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 7 uses
  %.sroa.1.0.extract.shift = lshr i64 %2, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 37, ptr %i.a, align 1, !tbaa !37
  %i.e = and i32 %.sroa.1.0.extract.trunc, 524288
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 35, ptr %i.d, align 1, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.040 = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = icmp sgt i32 %1, -1                      ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.040, i64 1
  store i8 46, ptr %.040, align 1, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %.040, i64 2
  store i8 42, ptr %i.h, align 1, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.141 = phi ptr [ %i.i, %bb.d ], [ %.040, %bb.c ] ; 2 uses
  %i.j = and i32 %.sroa.1.0.extract.trunc, 65536
  %.not46 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not46, i8 97, i8 65
  %i.l = getelementptr inbounds nuw i8, ptr %.141, i64 1
  store i8 %i.k, ptr %.141, align 1, !tbaa !37
  store i8 0, ptr %i.l, align 1, !tbaa !37
  %i.m = load i64, ptr %i.c, align 8, !tbaa !184  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = add i64 %i.m, 1                          ; 2 uses
  br i1 %i.g, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %.split.us.backedge
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.r = load i64, ptr %i.b, align 8, !tbaa !183
  %i.s = sub i64 %i.r, %i.m                       ; 2 uses
  %i.t = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %i.a, i32 noundef %1, double noundef %0) ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.v = zext nneg i32 %i.t to i64                ; 3 uses
  %i.w = icmp ugt i64 %i.s, %i.v
  br i1 %i.w, label %.split51.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add i64 %i.o, %i.v                       ; 2 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !183
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.us.sink.split, label %.split.us.backedge

bb.h:                                             ; preds = %.split.us
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !183 ; 2 uses
  %.not49.us = icmp eq i64 %i.aa, -1
  br i1 %.not49.us, label %.split.us.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.aa, 1
  br label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.us.sink.split, !llvm.loop !926

_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.us.sink.split: ; preds = %bb.g, %bb.i
  %.sink = phi i64 [ %i.ab, %bb.i ], [ %i.x, %bb.g ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !69
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sink)
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.us.sink.split, %bb.h, %bb.g
  br label %.split.us, !llvm.loop !926

.split:                                           ; preds = %bb.e, %.split.backedge
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.m
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !183
  %i.ah = sub i64 %i.ag, %i.m                     ; 2 uses
  %i.ai = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, double noundef %0) ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !183 ; 2 uses
  %.not49 = icmp eq i64 %i.ak, -1
  br i1 %.not49, label %.split.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i64 %i.ak, 1
  br label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.sink.split, !llvm.loop !926

bb.l:                                             ; preds = %.split
  %i.am = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.an = icmp ugt i64 %i.ah, %i.am
  br i1 %i.an, label %.split51.us, label %bb.n

.split51.us:                                      ; preds = %bb.l, %bb.f
  %.us-phi = phi i64 [ %i.v, %bb.f ], [ %i.am, %bb.l ]
  %i.ao = add i64 %.us-phi, %i.m                  ; 3 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !183 ; 2 uses
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.split51.us
  %i.ar = load ptr, ptr %3, align 8, !tbaa !69
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ao), !call_target !196, !inline_history !14
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !183
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = add i64 %i.o, %i.am                     ; 2 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !183
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.sink.split, label %.split.backedge

_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.sink.split: ; preds = %bb.n, %bb.k
  %.sink69 = phi i64 [ %i.al, %bb.k ], [ %i.at, %bb.n ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !69
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sink69)
  br label %.split.backedge

.split.backedge:                                  ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.sink.split, %bb.n, %bb.j
  br label %.split, !llvm.loop !926

bb.o:                                             ; preds = %bb.m, %.split51.us
  %i.ay = phi i64 [ %i.ap, %.split51.us ], [ %.pre.i, %bb.m ]
  %..i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ay)
  store i64 %..i, ptr %i.c, align 8, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %0, i32 noundef %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [20 x i8], align 16                 ; 4 uses
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %5 = alloca %"struct.fmt::v9::detail::basic_fp.84", align 16 ; 3 uses
  %.sroa.1.0.extract.shift = lshr i64 %2, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 3 uses
  %i.c = and i64 %2, 1095216660480
  %i.d = icmp eq i64 %i.c, 8589934592             ; 6 uses
  %i.e = fcmp ugt double %0, 0.000000e+00
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = select i1 %i.f, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %3, align 8, !tbaa !69
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.i), !call_target !196, !inline_history !927
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !184 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit

_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit:   ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !182
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 48, ptr %i.r, align 1, !tbaa !37
  br label %bb.bp

bb.e:                                             ; preds = %bb.b
  %i.s = zext nneg i32 %1 to i64                  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !183  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.f, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %3, align 8, !tbaa !69
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.s), !call_target !196, !inline_history !14
  %.pre.i91 = load i64, ptr %i.t, align 8, !tbaa !183
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit:   ; preds = %bb.e, %bb.f
  %i.y = phi i64 [ %i.u, %bb.e ], [ %.pre.i91, %bb.f ]
  %..i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i, ptr %i.z, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 48, i64 %i.s, i1 false)
  %i.ac = sub nsw i32 0, %1
  br label %bb.bp

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ad = icmp slt i32 %1, 0
  br i1 %i.ad, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not88 = icmp eq i32 %i.ae, 0
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %.not88, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = fptrunc double %0 to float
  %i.ag = tail call i64 @_ZN3fmt2v96detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %i.af) #34 ; 3 uses
  %.sroa.036.0.extract.trunc = trunc i64 %i.ag to i32 ; 7 uses
  %.sroa.437.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.437.0.extract.trunc = trunc nuw i64 %.sroa.437.0.extract.shift to i32 ; 3 uses
  %i.ah = or i32 %.sroa.036.0.extract.trunc, 1
  %i.ai = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.aj = xor i32 %i.ai, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = and i64 %i.ag, 4294967295
  %i.ao = add i64 %i.am, %i.an
  %i.ap = ashr i64 %i.ao, 32                      ; 3 uses
  %i.aq = load i64, ptr %6, align 8, !tbaa !184   ; 2 uses
  %i.ar = load i64, ptr %7, align 8, !tbaa !183
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i: ; preds = %bb.i
  store i64 %i.as, ptr %6, align 8, !tbaa !184
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !182 ; 2 uses
  %.not.i92 = icmp eq ptr %i.av, null
  br i1 %.not.i92, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ap ; 2 uses
  %i.ay = icmp ugt i32 %.sroa.036.0.extract.trunc, 99
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.021.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.sroa.036.0.extract.trunc, %bb.j ] ; 3 uses
  %.01920.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.ax, %bb.j ]
  %i.az = getelementptr inbounds i8, ptr %.01920.i.i, i64 -2 ; 3 uses
  %i.ba = urem i32 %.021.i.i, 100
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 1
  store i16 %i.be, ptr %i.az, align 1
  %i.bf = udiv i32 %.021.i.i, 100                 ; 2 uses
  %i.bg = icmp ugt i32 %.021.i.i, 9999
  br i1 %i.bg, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.j
  %.019.lcssa.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.az, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %bb.j ], [ %i.bf, %.lr.ph.i.i ] ; 3 uses
  %i.bh = icmp samesign ult i32 %.0.lcssa.i.i, 10
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bi = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bj = or disjoint i8 %i.bi, 48
  %i.bk = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bl = getelementptr inbounds i8, ptr %.019.lcssa.i.i, i64 -2
  %i.bm = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 1
  store i16 %i.bp, ptr %i.bl, align 1
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 %i.ap ; 3 uses
  %i.br = icmp ugt i32 %.sroa.036.0.extract.trunc, 99
  br i1 %i.br, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i, %.lr.ph.i.i.i
  %.021.i.i.i = phi i32 [ %i.by, %.lr.ph.i.i.i ], [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %i.bq, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ]
  %i.bs = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.bt = urem i32 %.021.i.i.i, 100
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 1
  store i16 %i.bx, ptr %i.bs, align 1
  %i.by = udiv i32 %.021.i.i.i, 100               ; 2 uses
  %i.bz = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.bz, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i
  %.019.lcssa.i.i.i = phi ptr [ %i.bq, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %.sroa.036.0.extract.trunc, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i ], [ %i.by, %.lr.ph.i.i.i ] ; 3 uses
  %i.ca = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cb = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.cc = or disjoint i8 %i.cb, 48
  %i.cd = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.cf = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 1
  store i16 %i.ci, ptr %i.ce, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %bb.n, %bb.m
  %i.cj = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bq, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.o:                                             ; preds = %bb.h
  %i.ck = tail call { i64, i32 } @_ZN3fmt2v96detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) #34 ; 2 uses
  %i.cl = extractvalue { i64, i32 } %i.ck, 0      ; 8 uses
  %i.cm = extractvalue { i64, i32 } %i.ck, 1      ; 3 uses
  %8 = or i64 %i.cl, 1
  %9 = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %8, i1 true)
  %10 = xor i64 %9, 63
  %11 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt2v96detail15do_count_digitsEmE9bsr2log10.const, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !37
  %13 = zext i8 %12 to i64                        ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !39
  %16 = icmp ult i64 %i.cl, %15
  %.neg.i.i.i = sext i1 %16 to i64
  %17 = add nsw i64 %.neg.i.i.i, %13              ; 3 uses
  %18 = load i64, ptr %6, align 8, !tbaa !184     ; 2 uses
  %19 = load i64, ptr %7, align 8, !tbaa !183
  %20 = add i64 %17, %18                          ; 2 uses
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i93

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i93: ; preds = %bb.o
  store i64 %20, ptr %6, align 8, !tbaa !184
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !182    ; 2 uses
  %.not.i94 = icmp eq ptr %23, null
  br i1 %.not.i94, label %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102, label %24

24:                                               ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i93
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %18
  %26 = getelementptr inbounds i8, ptr %25, i64 %17 ; 2 uses
  %27 = icmp ugt i64 %i.cl, 99
  br i1 %27, label %.lr.ph.i.i99, label %._crit_edge.i.i95

.lr.ph.i.i99:                                     ; preds = %24, %.lr.ph.i.i99
  %.021.i.i100 = phi i64 [ %33, %.lr.ph.i.i99 ], [ %i.cl, %24 ] ; 3 uses
  %.01920.i.i101 = phi ptr [ %28, %.lr.ph.i.i99 ], [ %26, %24 ]
  %28 = getelementptr inbounds i8, ptr %.01920.i.i101, i64 -2 ; 3 uses
  %29 = urem i64 %.021.i.i100, 100
  %30 = shl nuw nsw i64 %29, 1
  %31 = getelementptr inbounds nuw i8, ptr @.str.38, i64 %30
  %32 = load i16, ptr %31, align 1
  store i16 %32, ptr %28, align 1
  %33 = udiv i64 %.021.i.i100, 100                ; 2 uses
  %34 = icmp ugt i64 %.021.i.i100, 9999
  br i1 %34, label %.lr.ph.i.i99, label %._crit_edge.i.i95, !llvm.loop !3

._crit_edge.i.i95:                                ; preds = %.lr.ph.i.i99, %24
  %.019.lcssa.i.i96 = phi ptr [ %26, %24 ], [ %28, %.lr.ph.i.i99 ] ; 2 uses
  %.0.lcssa.i.i97 = phi i64 [ %i.cl, %24 ], [ %33, %.lr.ph.i.i99 ] ; 3 uses
  %35 = icmp samesign ult i64 %.0.lcssa.i.i97, 10
  br i1 %35, label %36, label %40

36:                                               ; preds = %._crit_edge.i.i95
  %37 = trunc nuw nsw i64 %.0.lcssa.i.i97 to i8
  %38 = or disjoint i8 %37, 48
  %39 = getelementptr inbounds i8, ptr %.019.lcssa.i.i96, i64 -1
  store i8 %38, ptr %39, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

40:                                               ; preds = %._crit_edge.i.i95
  %41 = getelementptr inbounds i8, ptr %.019.lcssa.i.i96, i64 -2
  %42 = shl nuw nsw i64 %.0.lcssa.i.i97, 1
  %43 = getelementptr inbounds nuw i8, ptr @.str.38, i64 %42
  %44 = load i16, ptr %43, align 1
  store i16 %44, ptr %41, align 1
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102: ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.i93, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %45 = getelementptr inbounds i8, ptr %4, i64 %17 ; 3 uses
  %46 = icmp ugt i64 %i.cl, 99
  br i1 %46, label %.lr.ph.i.i.i106, label %._crit_edge.i.i.i103

.lr.ph.i.i.i106:                                  ; preds = %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102, %.lr.ph.i.i.i106
  %.021.i.i.i107 = phi i64 [ %52, %.lr.ph.i.i.i106 ], [ %i.cl, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102 ] ; 3 uses
  %.01920.i.i.i108 = phi ptr [ %47, %.lr.ph.i.i.i106 ], [ %45, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102 ]
  %47 = getelementptr inbounds i8, ptr %.01920.i.i.i108, i64 -2 ; 3 uses
  %48 = urem i64 %.021.i.i.i107, 100
  %49 = shl nuw nsw i64 %48, 1
  %50 = getelementptr inbounds nuw i8, ptr @.str.38, i64 %49
  %51 = load i16, ptr %50, align 1
  store i16 %51, ptr %47, align 1
  %52 = udiv i64 %.021.i.i.i107, 100              ; 2 uses
  %53 = icmp ugt i64 %.021.i.i.i107, 9999
  br i1 %53, label %.lr.ph.i.i.i106, label %._crit_edge.i.i.i103, !llvm.loop !3

._crit_edge.i.i.i103:                             ; preds = %.lr.ph.i.i.i106, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102
  %.019.lcssa.i.i.i104 = phi ptr [ %45, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102 ], [ %47, %.lr.ph.i.i.i106 ] ; 2 uses
  %.0.lcssa.i.i.i105 = phi i64 [ %i.cl, %_ZN3fmt2v96detail10to_pointerIcEEPT_NSt11conditionalIXsr3std7is_sameIS3_cEE5valueENS0_8appenderESt20back_insert_iteratorINS1_6bufferIS3_EEEE4typeEm.exit.thread.i102 ], [ %52, %.lr.ph.i.i.i106 ] ; 3 uses
  %54 = icmp samesign ult i64 %.0.lcssa.i.i.i105, 10
  br i1 %54, label %55, label %59

55:                                               ; preds = %._crit_edge.i.i.i103
  %56 = trunc nuw nsw i64 %.0.lcssa.i.i.i105 to i8
  %57 = or disjoint i8 %56, 48
  %58 = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i104, i64 -1
  store i8 %57, ptr %58, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail14format_decimalIcmNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

59:                                               ; preds = %._crit_edge.i.i.i103
  %60 = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i104, i64 -2
  %61 = shl nuw nsw i64 %.0.lcssa.i.i.i105, 1
  %62 = getelementptr inbounds nuw i8, ptr @.str.38, i64 %61
  %63 = load i16, ptr %62, align 1
  store i16 %63, ptr %60, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcmNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcmNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %59, %55
  %64 = call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %4, ptr noundef nonnull %45, ptr nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

bb.p:                                             ; preds = %bb.g
  %i.cn = bitcast double %0 to i64                ; 2 uses
  %i.co = and i64 %i.cn, 4503599627370495         ; 4 uses
  %i.cp = and i64 %i.cn, 9218868437227405312      ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0                    ; 3 uses
  %i.cr = lshr exact i64 %i.cp, 52
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = or disjoint i64 %i.co, 4503599627370496
  %i.cu = add nsw i32 %i.cs, -1075                ; 2 uses
  %.0.i.i = select i1 %i.cq, i32 -1074, i32 %i.cu
  br i1 %i.cq, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.sroa.7.06.i = phi i32 [ %i.cw, %.lr.ph.i ], [ -1074, %bb.p ]
  %.sroa.0.05.i = phi i64 [ %i.cv, %.lr.ph.i ], [ %i.co, %bb.p ] ; 2 uses
  %i.cv = shl i64 %.sroa.0.05.i, 1                ; 2 uses
  %i.cw = add nsw i32 %.sroa.7.06.i, -1           ; 2 uses
  %i.cx = and i64 %.sroa.0.05.i, 2251799813685248
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i, label %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit, !llvm.loop !928

_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit: ; preds = %.lr.ph.i, %bb.p
  %.sroa.0.0.lcssa.i = phi i64 [ %i.ct, %bb.p ], [ %i.cv, %.lr.ph.i ]
  %.sroa.7.0.lcssa.i = phi i32 [ %i.cu, %bb.p ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %i.cz = shl i64 %.sroa.0.0.lcssa.i, 11
  %i.da = sub i32 -50, %.sroa.7.0.lcssa.i
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %i.db, 1292913986
  %i.dd = add nsw i64 %i.dc, 4294967294
  %i.de = lshr i64 %i.dd, 32
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = add nsw i32 %i.df, 347
  %i.dh = sdiv i32 %i.dg, 8
  %i.di = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dj = shl nsw i32 %i.di, 3                    ; 4 uses
  %i.dk = sext i32 %i.di to i64                   ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE18pow10_significandsE, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr inbounds [2 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE15pow10_exponentsE, i64 %i.dk
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !111
  %i.dp = sext i16 %i.do to i32
  %i.dq = zext i64 %i.cz to i128
  %i.dr = zext i64 %i.dm to i128
  %i.ds = mul nuw i128 %i.dr, %i.dq               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = trunc nuw i128 %i.dt to i64
  %i.dv = trunc i128 %i.ds to i64
  %i.dw = lshr i64 %i.dv, 63
  %i.dx = add nuw i64 %i.dw, %i.du                ; 4 uses
  %i.dy = add i32 %.sroa.7.0.lcssa.i, %i.dp
  %.neg271 = sub i32 -53, %i.dy
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !182 ; 15 uses
  %i.eb = sub nsw i32 348, %i.dj                  ; 9 uses
  %i.ec = zext nneg i32 %.neg271 to i64           ; 6 uses
  %i.ed = shl nuw i64 1, %i.ec                    ; 6 uses
  %i.ee = lshr i64 %i.dx, %i.ec                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = and i64 %i.ee, 4294967295
  %i.eh = add i64 %i.ed, -1                       ; 2 uses
  %i.ei = and i64 %i.eh, %i.dx                    ; 2 uses
  %i.ej = or i32 %i.ef, 1
  %i.ek = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true)
  %i.el = xor i32 %i.ek, 31
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt2v96detail15do_count_digitsEjE5table.const, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !39
  %i.ep = add i64 %i.eg, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 32
  %i.er = trunc nuw i64 %i.eq to i32              ; 6 uses
  br i1 %i.d, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %i.es = add nsw i32 %i.eb, %i.er                ; 3 uses
  %i.et = icmp sgt i32 %i.es, 0
  %i.eu = sub nuw nsw i32 2147483647, %i.es
  %i.ev = icmp samesign ugt i32 %1, %i.eu
  %or.cond.i = select i1 %i.et, i1 %i.ev, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZN3fmt2v96detail16adjust_precisionERii.exit

bb.r:                                             ; preds = %bb.q
  %i.ew = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.41)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTIN3fmt2v912format_errorE, ptr nonnull @_ZN3fmt2v912format_errorD1Ev) #36
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ex = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ew) #34
  resume { ptr, i32 } %i.ex

_ZN3fmt2v96detail16adjust_precisionERii.exit:     ; preds = %bb.q
  %i.ey = add nsw i32 %i.es, %1                   ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 1
  br i1 %i.ez, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit
  %i.fa = icmp slt i32 %i.ey, 0
  br i1 %i.fa, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = ashr i64 %i.ep, 32
  %i.fc = getelementptr [8 x i8], ptr @_ZN3fmt2v96detail10basic_dataIvE14power_of_10_64E.const, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !39
  %i.ff = shl i64 %i.fe, %i.ec                    ; 3 uses
  %i.fg = udiv i64 %i.dx, 10                      ; 4 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %.not.i114 = icmp ugt i64 %i.fg, %i.fh
  br i1 %.not.i114, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = shl nuw nsw i64 %i.fg, 1
  %i.fj = sub i64 %i.ff, %i.fi
  %.not23.i = icmp ult i64 %i.fj, 20
  br i1 %.not23.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not24.i = icmp ult i64 %i.dx, 100
  br i1 %.not24.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = add nsw i64 %i.fg, -10                  ; 2 uses
  %i.fl = sub i64 %i.ff, %i.fk
  %.not25.i = icmp ult i64 %i.fk, %i.fl
  br i1 %.not25.i, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.fm = phi i8 [ 48, %bb.w ], [ 49, %bb.y ]
  store i8 %i.fm, ptr %i.ea, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.aa:                                            ; preds = %_ZN3fmt2v96detail16adjust_precisionERii.exit, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit
  %.sroa.33.0 = phi i32 [ %i.ey, %_ZN3fmt2v96detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt2v96detail9normalizeILi0EyEENS1_8basic_fpIT0_EES5_.exit ] ; 7 uses
  %i.fn = tail call i32 @llvm.umax.i32(i32 %.sroa.33.0, i32 1) ; 2 uses
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fo to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.au, %bb.aa
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %bb.au ], [ 1, %bb.aa ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %bb.aa ] ; 4 uses
  %i.fp = phi i32 [ %i.gi, %bb.au ], [ %i.er, %bb.aa ] ; 3 uses
  %.0223 = phi i32 [ %.1224, %bb.au ], [ %i.ef, %bb.aa ] ; 20 uses
  switch i32 %i.fp, label %bb.al [
    i32 10, label %bb.ac
    i32 9, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.af
    i32 6, label %bb.ag
    i32 5, label %bb.ah
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fq = udiv i32 %.0223, 1000000000
  %i.fr = urem i32 %.0223, 1000000000
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fs = udiv i32 %.0223, 100000000
  %i.ft = urem i32 %.0223, 100000000
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.fu = udiv i32 %.0223, 10000000
  %i.fv = urem i32 %.0223, 10000000
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.fw = udiv i32 %.0223, 1000000
  %i.fx = urem i32 %.0223, 1000000
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.fy = udiv i32 %.0223, 100000
  %i.fz = urem i32 %.0223, 100000
  br label %bb.am

bb.ah:                                            ; preds = %bb.ab
  %i.ga = udiv i32 %.0223, 10000
  %i.gb = urem i32 %.0223, 10000
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.gc = udiv i32 %.0223, 1000
  %i.gd = urem i32 %.0223, 1000
  br label %bb.am

bb.aj:                                            ; preds = %bb.ab
  %i.ge = udiv i32 %.0223, 100
end_hunk_1
begin_hunk_2_@_ZN3fmt2v96detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  %i.he = icmp sgt i8 %i.hd, 57
  br i1 %i.he, label %bb.aq, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aq, %.lr.ph.i117, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i
  %i.hf = load i8, ptr %i.ea, align 1, !tbaa !37
  %i.hg = icmp sgt i8 %i.hf, 57
  br i1 %i.hg, label %bb.ar, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.aq:                                            ; preds = %.lr.ph.i117
  store i8 48, ptr %i.hc, align 1, !tbaa !37
  %i.hh = getelementptr i8, ptr %i.ea, i64 %indvars.iv.i
  %i.hi = getelementptr i8, ptr %i.hh, i64 -2     ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !37
  %i.hk = add i8 %i.hj, 1
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !37
  %i.hl = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.hl, label %.lr.ph.i117, label %.critedge.i, !llvm.loop !929

bb.ar:                                            ; preds = %.critedge.i
  store i8 49, ptr %i.ea, align 1, !tbaa !37
  br i1 %i.d, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hm = add nuw nsw i32 %i.fn, 1
  store i8 48, ptr %i.gz, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.at:                                            ; preds = %bb.ar
  %i.hn = sub nsw i32 349, %i.dj
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.au:                                            ; preds = %bb.am
  %i.ho = icmp sgt i32 %i.fp, 1
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1
  br i1 %i.ho, label %bb.ab, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131, !llvm.loop !930

_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131: ; preds = %bb.au, %bb.av
  %i.hp = phi i32 [ %i.hw, %bb.av ], [ %i.gi, %bb.au ]
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %bb.av ], [ %indvars.iv333, %bb.au ] ; 4 uses
  %.045.i = phi i64 [ %i.hr, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %.042.i = phi i64 [ %i.hv, %bb.av ], [ %i.ei, %bb.au ]
  %i.hq = mul i64 %.042.i, 10                     ; 2 uses
  %i.hr = mul i64 %.045.i, 10                     ; 6 uses
  %i.hs = lshr i64 %i.hq, %i.ec
  %i.ht = trunc i64 %i.hs to i8                   ; 2 uses
  %i.hu = add i8 %i.ht, 48
  %i.hv = and i64 %i.hq, %i.eh                    ; 6 uses
  %i.hw = add nsw i32 %i.hp, -1                   ; 8 uses
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv336
  store i8 %i.hu, ptr %i.hx, align 1, !tbaa !37
  %.not.i118 = icmp ult i64 %i.hr, %i.hv
  %i.hy = trunc nuw i64 %indvars.iv.next337 to i32 ; 7 uses
  br i1 %.not.i118, label %bb.av, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.av:                                            ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131
  %i.hz = icmp sgt i32 %.sroa.33.0, %i.hy
  br i1 %i.hz, label %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131, label %bb.aw, !llvm.loop !931

bb.aw:                                            ; preds = %bb.av
  %i.ia = trunc nuw nsw i64 %indvars.iv336 to i32
  %.not29.i = icmp ult i64 %i.hr, %i.ed
  %i.ib = sub nuw i64 %i.ed, %i.hr
  %.not30.i = icmp ult i64 %i.hr, %i.ib
  %or.cond32.i = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond32.i, label %bb.ax, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ic = sub i64 %i.ed, %i.hv
  %.not.i.i121 = icmp ugt i64 %i.hv, %i.ic
  br i1 %.not.i.i121, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.id = mul i64 %.045.i, 20
  %i.ie = shl nuw i64 %i.hv, 1
  %i.if = sub i64 %i.ed, %i.ie
  %.not23.i.i122 = icmp ugt i64 %i.id, %i.if
  br i1 %.not23.i.i122, label %bb.az, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ig = sub nuw nsw i64 %i.hv, %i.hr            ; 2 uses
  %i.ih = sub i64 %i.ed, %i.ig
  %.not25.i.i124 = icmp ult i64 %i.ig, %i.ih
  br i1 %.not25.i.i124, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread, label %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i125

_ZN3fmt2v96detail19get_round_directionEmmm.exit.i125: ; preds = %bb.az
  %i.ii = getelementptr i8, ptr %i.ea, i64 %indvars.iv.next337
  %i.ij = getelementptr i8, ptr %i.ea, i64 %indvars.iv336
  %i.ik = add i8 %i.ht, 49
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !37
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.ba, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i125
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next337, %_ZN3fmt2v96detail19get_round_directionEmmm.exit.i125 ], [ %indvars.iv.next.i130, %bb.ba ] ; 3 uses
  %indvars.iv.next.i130 = add nsw i64 %indvars.iv.i129, -1 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next.i130 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !37
  %i.in = icmp sgt i8 %i.im, 57
  br i1 %i.in, label %bb.ba, label %.critedge.i126

.critedge.i126:                                   ; preds = %bb.ba, %.lr.ph.i128
  %i.io = load i8, ptr %i.ea, align 1, !tbaa !37
  %i.ip = icmp sgt i8 %i.io, 57
  br i1 %i.ip, label %bb.bb, label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.ba:                                            ; preds = %.lr.ph.i128
  store i8 48, ptr %i.il, align 1, !tbaa !37
  %i.iq = getelementptr i8, ptr %i.ea, i64 %indvars.iv.i129
  %i.ir = getelementptr i8, ptr %i.iq, i64 -2     ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !37
  %i.it = add i8 %i.is, 1
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !37
  %i.iu = icmp samesign ugt i64 %indvars.iv.i129, 2
  br i1 %i.iu, label %.lr.ph.i128, label %.critedge.i126, !llvm.loop !929

bb.bb:                                            ; preds = %.critedge.i126
  store i8 49, ptr %i.ea, align 1, !tbaa !37
  br i1 %i.d, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iv = add nuw nsw i32 %i.ia, 2
  store i8 48, ptr %i.ii, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

bb.bd:                                            ; preds = %bb.bb
  %i.iw = sub nsw i32 349, %i.dj
  br label %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251: ; preds = %.critedge.i126, %bb.bc, %bb.bd, %bb.ay, %bb.ao, %.critedge.i, %bb.as, %bb.at, %bb.z, %bb.u
  %i.ix = phi i32 [ %i.er, %bb.u ], [ %i.er, %bb.z ], [ %i.hw, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hw, %.critedge.i126 ], [ %i.hw, %bb.ay ], [ %i.gi, %bb.as ], [ %i.gi, %bb.at ], [ %i.gi, %.critedge.i ], [ %i.gi, %bb.ao ]
  %.sroa.16.2258 = phi i32 [ 0, %bb.u ], [ 1, %bb.z ], [ %i.iv, %bb.bc ], [ %i.hy, %bb.bd ], [ %i.hy, %.critedge.i126 ], [ %i.hy, %bb.ay ], [ %i.hm, %bb.as ], [ %i.gm, %bb.at ], [ %i.gm, %.critedge.i ], [ %i.gm, %bb.ao ]
  %.sroa.40.2257 = phi i32 [ %i.eb, %bb.u ], [ %i.eb, %bb.z ], [ %i.eb, %bb.bc ], [ %i.iw, %bb.bd ], [ %i.eb, %.critedge.i126 ], [ %i.eb, %bb.ay ], [ %i.eb, %bb.as ], [ %i.hn, %bb.at ], [ %i.eb, %.critedge.i ], [ %i.eb, %bb.ao ]
  %i.iy = add nsw i32 %i.ix, %.sroa.40.2257
  store i32 %i.iy, ptr %i.b, align 4, !tbaa !76
  %i.iz = zext i32 %.sroa.16.2258 to i64          ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !183 ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.iz
  br i1 %i.jc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251
  %i.jd = load ptr, ptr %3, align 8, !tbaa !69
  %i.je = load ptr, ptr %i.jd, align 8
  tail call void %i.je(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.iz), !call_target !196, !inline_history !14
  %.pre.i133 = load i64, ptr %i.ja, align 8, !tbaa !183
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251
  %i.jf = phi i64 [ %i.jb, %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread251 ], [ %.pre.i133, %bb.be ]
  %..i132 = tail call i64 @llvm.umin.i64(i64 %i.iz, i64 %i.jf)
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %..i132, ptr %i.jg, align 8, !tbaa !184
  br label %bb.bj

_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread: ; preds = %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131, %bb.ap, %.thread229, %bb.aw, %bb.az, %bb.y, %bb.x
  %i.jh = phi i32 [ %i.er, %bb.y ], [ %i.er, %bb.x ], [ %i.gi, %bb.ap ], [ %i.gi, %.thread229 ], [ %i.hw, %bb.aw ], [ %i.hw, %bb.az ], [ %i.hw, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131 ]
  %.sroa.16.2247 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.gm, %bb.ap ], [ %i.gm, %.thread229 ], [ %i.hy, %bb.aw ], [ %i.hy, %bb.az ], [ %i.hy, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131 ]
  %.sroa.33.1246 = phi i32 [ 0, %bb.y ], [ 0, %bb.x ], [ %.sroa.33.0, %bb.ap ], [ %.sroa.33.0, %.thread229 ], [ %.sroa.33.0, %bb.aw ], [ %.sroa.33.0, %bb.az ], [ %.sroa.33.0, %_ZN3fmt2v96detail18gen_digits_handler8on_digitEcmmmb.exit131 ]
  %reass.sub308 = sub i32 %.sroa.16.2247, %i.dj
  %i.ji = add i32 %reass.sub308, 347
  %i.jj = add nsw i32 %i.ji, %i.jh
  store i32 %i.jj, ptr %i.b, align 4, !tbaa !76
  %i.jk = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not85 = icmp eq i32 %i.jk, 0
  br i1 %.not85, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jl = fptrunc double %0 to float
  %i.jm = bitcast float %i.jl to i32              ; 2 uses
  %i.jn = and i32 %i.jm, 8388607                  ; 2 uses
  %i.jo = zext nneg i32 %i.jn to i128             ; 2 uses
  %i.jp = and i32 %i.jm, 2139095040               ; 3 uses
  %i.jq = icmp eq i32 %i.jp, 0                    ; 2 uses
  %i.jr = lshr exact i32 %i.jp, 23
  %i.js = or disjoint i128 %i.jo, 8388608
  %i.jt = add nsw i32 %i.jr, -150
  %storemerge.i = select i1 %i.jq, i128 %i.jo, i128 %i.js
  %.0.i135 = select i1 %i.jq, i32 -149, i32 %i.jt
  %i.ju = icmp eq i32 %i.jn, 0
  %i.jv = icmp samesign ugt i32 %i.jp, 16777215
  %i.jw = and i1 %i.ju, %i.jv
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN3fmt2v96detail16grisu_gen_digitsENS1_8basic_fpIyEEmRiRNS1_18gen_digits_handlerE.exit.thread
  %i.jx = zext nneg i64 %i.co to i128             ; 2 uses
  %i.jy = or disjoint i128 %i.jx, 4503599627370496
  %storemerge.i136 = select i1 %i.cq, i128 %i.jx, i128 %i.jy
  %i.jz = icmp eq i64 %i.co, 0
  %i.ka = icmp samesign ugt i64 %i.cp, 9007199254740991
  %i.kb = and i1 %i.jz, %i.ka
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.0.0 = phi i128 [ %storemerge.i136, %bb.bh ], [ %storemerge.i, %bb.bg ]
  %.sroa.6.0 = phi i32 [ %.0.i.i, %bb.bh ], [ %.0.i135, %bb.bg ]
  %i.kc = phi i1 [ %i.kb, %bb.bh ], [ %i.jw, %bb.bg ]
  %spec.select = zext i1 %i.kc to i32             ; 2 uses
  %i.kd = or disjoint i32 %spec.select, 4
  %.181 = select i1 %i.d, i32 %i.kd, i32 %spec.select
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.sroa.33.1246, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !933
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !76
  call void @_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v9::detail::basic_fp.84") align 16 %5, i32 noundef %.181, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %i.ke = and i32 %.sroa.1.0.extract.trunc, 524288
  %.not86 = icmp ne i32 %i.ke, 0
  %or.cond90.not = select i1 %i.d, i1 true, i1 %.not86
  br i1 %or.cond90.not, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !184 ; 2 uses
  %.not87304 = icmp eq i64 %i.kg, 0
  br i1 %.not87304, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %.promoted = load i32, ptr %i.b, align 4
  %i.kh = load ptr, ptr %i.dz, align 8, !tbaa !182
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bm
  %.0305 = phi i64 [ %i.kg, %.lr.ph ], [ %i.kj, %bb.bm ] ; 5 uses
  %i.ki = phi i32 [ %.promoted, %.lr.ph ], [ %i.kn, %bb.bm ]
  %i.kj = add i64 %.0305, -1                      ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !37
  %i.km = icmp eq i8 %i.kl, 48
  br i1 %i.km, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.kn = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.kn, ptr %i.b, align 4, !tbaa !76
  %.not87 = icmp eq i64 %i.kj, 0
  br i1 %.not87, label %.critedge.thread, label %bb.bl, !llvm.loop !932

.critedge.thread:                                 ; preds = %bb.bm, %bb.bk
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !183
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit140

.critedge:                                        ; preds = %bb.bl
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !183 ; 2 uses
  %i.ks = icmp ugt i64 %.0305, %i.kr
  br i1 %i.ks, label %bb.bn, label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit140

bb.bn:                                            ; preds = %.critedge
  %i.kt = load ptr, ptr %3, align 8, !tbaa !69
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.0305), !call_target !196, !inline_history !14
  %.pre.i139 = load i64, ptr %i.kq, align 8, !tbaa !183
  br label %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit140

_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit140: ; preds = %.critedge.thread, %.critedge, %bb.bn
  %.0.lcssa367 = phi i64 [ %.0305, %.critedge ], [ %.0305, %bb.bn ], [ 0, %.critedge.thread ]
  %i.kv = phi i64 [ %i.kr, %.critedge ], [ %.pre.i139, %bb.bn ], [ %i.kp, %.critedge.thread ]
  %..i138 = call i64 @llvm.umin.i64(i64 %.0.lcssa367, i64 %i.kv)
  store i64 %..i138, ptr %i.kf, align 8, !tbaa !184
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit140, %bb.bj
  %i.kw = load i32, ptr %i.b, align 4, !tbaa !76
  br label %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit

_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit: ; preds = %_ZN3fmt2v96detail14format_decimalIcmNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i, %40, %36, %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i, %bb.l, %bb.k, %bb.bo
  %.077 = phi i32 [ %i.kw, %bb.bo ], [ %.sroa.437.0.extract.trunc, %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i ], [ %.sroa.437.0.extract.trunc, %bb.k ], [ %.sroa.437.0.extract.trunc, %bb.l ], [ %i.cm, %36 ], [ %i.cm, %40 ], [ %i.cm, %_ZN3fmt2v96detail14format_decimalIcmNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit
  %.1 = phi i32 [ %i.ac, %_ZN3fmt2v96detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt2v96detail6bufferIcE9push_backERKc.exit ], [ %.077, %_ZN3fmt2v96detail5writeIcNS0_8appenderEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS5_bEE5valuentsr3std7is_sameIS5_T_EE5valueEiE4typeELi0EEET0_S9_S5_.exit ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEcRZNS1_11write_bytesILS4_2EcSC_EET1_SE_NS0_17basic_string_viewIcEERKNS0_18basic_format_specsIT0_EEEUlPcE_EESI_SI_RKNSH_ISE_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !151
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %3) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !152
  %i.q = zext i8 %i.p to i64
  %i.r = mul nuw nsw i64 %i.c, %i.q
  %i.s = add i64 %i.r, %2                         ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45   ; 8 uses
  %i.v = add i64 %i.s, %i.u                       ; 5 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.x = sub i64 9223372036854775807, %i.u
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #36
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.b
  %i.z = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.ac = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.v, %i.ae
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.af = phi ptr [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ], [ %.pre.i.i.i, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.u ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.s, 1
  br i1 %cond.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  store i8 0, ptr %i.ag, align 1, !tbaa !37
  br label %.sink.split.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.s, i1 false)
  br label %.sink.split.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.ah = icmp ult i64 %i.v, %i.u
  br i1 %i.ah, label %.sink.split.i.i.i, label %_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit

.sink.split.i.i.i:                                ; preds = %bb.g, %bb.f, %bb.e
  store i64 %i.v, ptr %i.t, align 8, !tbaa !45
  %i.ai = load ptr, ptr %0, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v
  store i8 0, ptr %i.aj, align 1, !tbaa !37
  br label %_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit

_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit: ; preds = %bb.g, %.sink.split.i.i.i
  %i.ak = load ptr, ptr %0, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.u ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit
  %i.am = tail call noundef ptr @_ZN3fmt2v96detail4fillIPccEET_S4_mRKNS1_6fill_tIT0_EE(ptr noundef %i.al, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit
  %.0 = phi ptr [ %i.am, %bb.h ], [ %i.al, %_ZN3fmt2v96detail7reserveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNSA_10value_typeESt20back_insert_iteratorISA_Em.exit ] ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !935
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !936 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.an, i64 %i.ap, i1 false)
  %.not26 = icmp eq i64 %i.c, %i.l
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ap
  %i.ar = tail call noundef ptr @_ZN3fmt2v96detail4fillIPccEET_S4_mRKNS1_6fill_tIT0_EE(ptr noundef %i.aq, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef byval(%"struct.fmt::v9::detail::basic_fp.84") align 16 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v9::detail::bigint", align 8 ; 24 uses
  %6 = alloca %"class.fmt::v9::detail::bigint", align 8 ; 21 uses
  %7 = alloca %"class.fmt::v9::detail::bigint", align 8 ; 20 uses
  %8 = alloca %"class.fmt::v9::detail::bigint", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 23 uses
  store i64 0, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %5, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !315
  store i64 32, ptr %i.b, align 8, !tbaa !316
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store i64 0, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %6, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !315
  store i64 32, ptr %i.g, align 8, !tbaa !316
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 7 uses
  store i32 0, ptr %i.j, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 13 uses
  store i64 0, ptr %i.m, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %7, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !315
  store i64 32, ptr %i.l, align 8, !tbaa !316
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store i64 0, ptr %i.r, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %8, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !315
  store i64 32, ptr %i.q, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !320
  %i.u = and i32 %1, 1                            ; 2 uses
  %.not = icmp eq i32 %i.u, 0                     ; 3 uses
  %i.v = add nuw nsw i32 %i.u, 1                  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 16, !tbaa !952 ; 5 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.z = load i128, ptr %0, align 16, !tbaa !953  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.05.i.i = phi i128 [ %i.z, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.c ] ; 3 uses
  %i.aa = trunc i128 %.05.i.i to i32
  %i.ab = add nuw nsw i64 %.0.i.i, 1              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !76
  %i.ad = lshr i128 %.05.i.i, 32                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.ad, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !937

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp samesign ult i64 %.0.i.i, 32
  br i1 %.not8.i.i, label %bb.h, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #38
          to label %.noexc684 unwind label %.loopexit.split-lp ; 3 uses

.noexc684:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.af = load i64, ptr %i.c, align 8, !tbaa !321 ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !82

bb.e:                                             ; preds = %.noexc684
  %.idx.i681 = shl nuw nsw i64 %i.af, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 8 %i.d, i64 %.idx.i681, i1 false)
  br label %.noexc

bb.f:                                             ; preds = %.noexc684
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !76
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %bb.f, %bb.e
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !315
  store i64 48, ptr %i.b, align 8, !tbaa !316
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.d
  %i.aj = phi i64 [ 32, %bb.d ], [ 48, %.noexc ]
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.c, align 8, !tbaa !321
  store i32 0, ptr %i.e, align 8, !tbaa !320
  %i.ak = add nuw nsw i32 %i.x, %i.v
  %i.al = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ak)
          to label %bb.i unwind label %.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !315
  store i32 1, ptr %i.am, align 4, !tbaa !76
  %i.an = load i64, ptr %i.l, align 8, !tbaa !316
  %.not8.i.i116.not = icmp eq i64 %i.an, 0
  br i1 %.not8.i.i116.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %7, align 8, !tbaa !69
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc119 unwind label %.loopexit.split-lp, !inline_history !938

.noexc119:                                        ; preds = %bb.j
  %.pre.i.i.i.i117 = load i64, ptr %i.l, align 8, !tbaa !316
  %i.aq = icmp ne i64 %.pre.i.i.i.i117, 0
  %i.ar = zext i1 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %.noexc119, %bb.i
  %..i.i.i.i118 = phi i64 [ 1, %bb.i ], [ %i.ar, %.noexc119 ]
  store i64 %..i.i.i.i118, ptr %i.m, align 8, !tbaa !321
  store i32 0, ptr %i.o, align 8, !tbaa !320
  %i.as = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.x)
          to label %bb.l unwind label %.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !315
  store i32 1, ptr %i.at, align 4, !tbaa !76
  %i.au = load i64, ptr %i.q, align 8, !tbaa !316
  %.not8.i.i123.not = icmp eq i64 %i.au, 0
  br i1 %.not8.i.i123.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %8, align 8, !tbaa !69
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc126 unwind label %.loopexit.split-lp, !inline_history !938

.noexc126:                                        ; preds = %bb.n
  %.pre.i.i.i.i124 = load i64, ptr %i.q, align 8, !tbaa !316
  %i.ax = icmp ne i64 %.pre.i.i.i.i124, 0
  %i.ay = zext i1 %i.ax to i64
  br label %bb.o

bb.o:                                             ; preds = %.noexc126, %bb.m
  %..i.i.i.i125 = phi i64 [ 1, %bb.m ], [ %i.ay, %.noexc126 ]
  store i64 %..i.i.i.i125, ptr %i.r, align 8, !tbaa !321
  store i32 0, ptr %i.t, align 8, !tbaa !320
  %i.az = add nuw nsw i32 %i.x, 1
  %i.ba = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %8, i32 noundef %i.az)
          to label %bb.p unwind label %.loopexit.split-lp ; 0 uses

.loopexit434:                                     ; preds = %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i686, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.h, %bb.k, %bb.o, %bb.p, %bb.q, %bb.s, %bb.ae, %_ZN3fmt2v96detail6bigintmLIoEERS2_T_.exit, %bb.ak, %bb.ar, %bb.as, %bb.at, %bb.j, %bb.n, %bb.u, %bb.aa, %bb.aj, %bb.av, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.o, %bb.l
  %.076 = phi ptr [ null, %bb.l ], [ %8, %bb.o ]
  %i.bb = load i32, ptr %4, align 4, !tbaa !76
  invoke void @_ZN3fmt2v96detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bb)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %extract.t = trunc i128 %i.z to i32
  %i.bc = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.v)
          to label %bb.az unwind label %.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %bb.a
  %i.bd = load i32, ptr %4, align 4, !tbaa !76    ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.bf = sub nsw i32 0, %i.bd
  invoke void @_ZN3fmt2v96detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.bf)
end_hunk_2
