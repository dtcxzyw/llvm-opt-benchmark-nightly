Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_skills_fmt_format?download=true
inline.NumInlined: 1124
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0
%"class.std::locale" = type { ptr }
%"struct.fmt::v12::detail::format_arg_store" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.fmt::v12::detail::value" = type { %union.anon.7 }
%union.anon.7 = type { i128 }
%"class.pro::v4::proxy" = type { %"struct.pro::v4::detail::meta_ptr_direct_impl", [16 x i8] }
%"struct.pro::v4::detail::meta_ptr_direct_impl" = type { %"struct.pro::v4::detail::composite_meta" }
%"struct.pro::v4::detail::composite_meta" = type { %"struct.pro::v4::detail::conv_meta", %"struct.pro::v4::detail::conv_meta.0" }
%"struct.pro::v4::detail::conv_meta" = type { ptr }
%"struct.pro::v4::detail::conv_meta.0" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v12::formatter" = type { %"struct.fmt::v12::detail::native_formatter" }
%"struct.fmt::v12::detail::native_formatter" = type { %"struct.fmt::v12::detail::dynamic_format_specs" }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::parse_context" = type <{ %"class.fmt::v12::basic_string_view", i32, [4 x i8] }>
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%class.anon.17 = type { %"class.fmt::v12::basic_string_view" }
%class.anon.8 = type { i32, ptr }
%"class.fmt::v12::loc_value" = type { %"class.fmt::v12::basic_format_arg" }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"struct.fmt::v12::detail::dragonbox::decimal_fp" = type { i64, i32 }
%"class.fmt::v12::basic_memory_buffer" = type <{ %"class.fmt::v12::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v12::detail::big_decimal_fp" = type { ptr, i32, i32 }
%"struct.fmt::v12::detail::basic_fp.19" = type <{ i128, i32, [12 x i8] }>
%class.anon.9 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::dragonbox::decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%"class.fmt::v12::detail::digit_grouping" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.anon.12 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.13 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.fmt::v12::detail::thousands_sep_result" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.fmt::v12::basic_memory_buffer.14" = type { %"class.fmt::v12::detail::buffer.15", [500 x i32] }
%"class.fmt::v12::detail::buffer.15" = type { ptr, i64, i64, ptr }
%"class.fmt::v12::detail::bigint" = type <{ %"class.fmt::v12::basic_memory_buffer.22", i32, [4 x i8] }>
%"class.fmt::v12::basic_memory_buffer.22" = type { %"class.fmt::v12::detail::buffer.23", [32 x i32] }
%"class.fmt::v12::detail::buffer.23" = type { ptr, i64, i64, ptr }
%class.anon.25 = type <{ i32, [4 x i8], %"struct.fmt::v12::detail::big_decimal_fp", i32, i8, [3 x i8], i32, i8, [3 x i8], i32, [4 x i8] }>
%class.anon.28 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.29 = type { ptr, ptr, ptr, ptr, ptr, ptr }

$_ZZN3pro2v46detail9conv_metaINS0_5proxyI11FormattableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_ = comdat any

$__clang_call_terminate = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRKS5_SJ_SL_E_8__invokeESV_SJ_SL_ = comdat any

$_ZNK3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE6formatINS0_7contextEEEDTcldtfp0_3outEERKdRT_ = comdat any

$_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE = comdat any

$_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE = comdat any

$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_ = comdat any

$_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE = comdat any

$_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_ = comdat any

$_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE = comdat any

$_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_ = comdat any

$_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE = comdat any

$_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE = comdat any

$_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE = comdat any

$_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_ = comdat any

$_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb = comdat any

$_ZN3fmt3v126detail14digit_groupingIcED2Ev = comdat any

$_ZN3fmt3v126detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEmNS1_14digit_groupingIcEEEET0_S7_T1_iiRKT2_ = comdat any

$_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE = comdat any

$_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i = comdat any

$_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_ = comdat any

$_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_ = comdat any

$_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcmNS1_14digit_groupingIcEEEET_S7_T1_iiT0_RKT2_ = comdat any

$_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_ = comdat any

$_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_ = comdat any

$_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm = comdat any

$_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_ = comdat any

$_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi = comdat any

$_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc = comdat any

$_ZN3fmt3v1212format_errorD0Ev = comdat any

$_ZN3fmt3v126detail6bigint12assign_pow10Ei = comdat any

$_ZN3fmt3v126detail6bigint13divmod_assignERKS2_ = comdat any

$_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm = comdat any

$_ZN3fmt3v126detail6bigint6squareEv = comdat any

$_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE = comdat any

$_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE = comdat any

$_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_ = comdat any

$_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEPKcNS1_14digit_groupingIcEEEET0_S9_T1_iiRKT2_ = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESA_SA_SH_mmOSB_ = comdat any

$_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEcPKcNS1_14digit_groupingIcEEEET_S9_T1_iiT0_RKT2_ = comdat any

$_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_ = comdat any

$_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_ = comdat any

$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN3pro2v423proxy_indirect_accessorI11FormattableEEEEvPvRNS0_13parse_contextIcEERS3_ = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = comdat any

$_ZZN3fmt3v126detail7digits2EmE4data = comdat any

$_ZZN3fmt3v126detail15do_count_digitsEjE5table = comdat any

$_ZTIN3fmt3v1212format_errorE = comdat any

$_ZTSN3fmt3v1212format_errorE = comdat any

$_ZTVN3fmt3v1212format_errorE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [13 x i8] c"*p = {:.2f}\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10 = linkonce_odr dso_local local_unnamed_addr constant [64 x i8] c"\01\01\01\02\02\02\03\03\03\04\04\04\04\05\05\05\06\06\06\07\07\07\07\08\08\08\09\09\09\0A\0A\0A\0A\0B\0B\0B\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0F\0F\0F\10\10\10\10\11\11\11\12\12\12\13\13\13\13\14", comdat, align 16
@_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10 = linkonce_odr dso_local local_unnamed_addr constant [21 x i64] [i64 0, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000, i64 -8446744073709551616], comdat, align 16
@.str.17 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\00\1F\00\01\00", align 1
@_ZZN3fmt3v126detail7digits2EmE4data = linkonce_odr dso_local local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 2
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@_ZZN3fmt3v126detail15do_count_digitsEjE5table = linkonce_odr dso_local local_unnamed_addr constant [32 x i64] [i64 4294967296, i64 4294967296, i64 4294967296, i64 8589934582, i64 8589934582, i64 8589934582, i64 12884901788, i64 12884901788, i64 12884901788, i64 17179868184, i64 17179868184, i64 17179868184, i64 21474826480, i64 21474826480, i64 21474826480, i64 25769703776, i64 25769703776, i64 25769703776, i64 30063771072, i64 30063771072, i64 30063771072, i64 34349738368, i64 34349738368, i64 34349738368, i64 38554705664, i64 38554705664, i64 38554705664, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960, i64 41949672960], comdat, align 16
@_ZTIN3fmt3v1212format_errorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3fmt3v1212format_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3fmt3v1212format_errorE = linkonce_odr dso_local constant [25 x i8] c"N3fmt3v1212format_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN3fmt3v1212format_errorE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN3fmt3v1212format_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN3fmt3v1212format_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.26 = private unnamed_addr constant [9 x i32] [i32 -1717986918, i32 -2104533975, i32 -2143188680, i32 -2147054151, i32 -2147440698, i32 -2147479353, i32 -2147483218, i32 -2147483605, i32 0], align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc:
  %0 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %1 = alloca %"class.pro::v4::proxy", align 8    ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 3.141590e+00, ptr %i.a, align 8, !tbaa !10, !alias.scope !13
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyI11FormattableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_, ptr %1, align 8, !alias.scope !13
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRKS5_SJ_SL_E_8__invokeESV_SJ_SL_, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22, !noalias !18
  store ptr %1, ptr %0, align 16, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN3pro2v423proxy_indirect_accessorI11FormattableEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.b, align 8, !tbaa !21
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str, i64 12, i64 15, ptr nonnull %0)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22, !noalias !18
  %i.c = load ptr, ptr %2, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.l = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1) #22, !inline_history !31
  br label %_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit

_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 0

bb.c:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.t = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.t, null
  br i1 %.not.i.i8, label %_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit9, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %1) #22, !inline_history !31
  br label %_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit9

_ZN3pro2v45proxyI11FormattableED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyI11FormattableEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRS5_E_8__invokeESF_(ptr noundef nonnull align 8 dereferenceable(32) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRKS5_SJ_SL_E_8__invokeESV_SJ_SL_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #5 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v12::formatter", align 8 ; 10 uses
  %5 = alloca %"class.fmt::v12::parse_context", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 32768, ptr %4, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %i.a, align 4, !tbaa !21
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.b, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %2, ptr %5, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.g = icmp samesign eq i64 %1, 0
  br i1 %i.g, label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENKUlRKS5_SJ_SL_E_clESV_SJ_SL_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %2, align 1, !tbaa !21
  %i.i = icmp eq i8 %i.h, 125
  br i1 %i.i, label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENKUlRKS5_SJ_SL_E_clESV_SJ_SL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(20) %5, i32 noundef 10) ; 0 uses
  br label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENKUlRKS5_SJ_SL_E_clESV_SJ_SL_.exit

_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorI11FormattableEENS1_13format_traitsIN3fmt3v129formatterESt17basic_string_viewNS8_26basic_format_parse_contextENS1_20fmt_buffered_contextEE8dispatchEKFNS8_14basic_appenderIcEESA_IcSt11char_traitsIcEERNS8_7contextEEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENKUlRKS5_SJ_SL_E_clESV_SJ_SL_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = call ptr @_ZNK3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE6formatINS0_7contextEEEDTcldtfp0_3outEERKdRT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK3fmt3v126detail16native_formatterIdcLNS1_4typeE10EE6formatINS0_7contextEEEDTcldtfp0_3outEERKdRT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::format_specs", align 8 ; 8 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !32
  %i.b = and i32 %i.a, 960
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !41
  %i.c = load double, ptr %1, align 8, !tbaa !43
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.e = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i, double noundef %i.c, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, ptr %.sroa.0.0.copyload.i16)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.f = load i32, ptr %3, align 8, !tbaa !32
  %i.g = lshr i32 %i.f, 6
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.k = load i32, ptr %3, align 8, !tbaa !32
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.sroa.0.0.copyload.i17 = load ptr, ptr %2, align 8, !tbaa !41
  %i.p = load double, ptr %1, align 8, !tbaa !43
  %.sroa.01.0.copyload = load i64, ptr %3, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i18 = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.r = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i17, double noundef %i.p, i64 %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr %.sroa.0.0.copyload.i18)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.015.0 = phi ptr [ %i.r, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  switch i8 %i.f, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 62, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
    i8 94, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit155, label %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split

_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split: ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !21
  br label %_ZN3fmt3v126detail11parse_alignEc.exit.thread

_ZN3fmt3v126detail11parse_alignEc.exit.thread:    ; preds = %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split, %bb.b, %bb.b, %bb.b
  %.045 = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.h, %_ZN3fmt3v126detail11parse_alignEc.exit.thread.sink.split ]
  %i.i = add i32 %4, -1
  %i.j = icmp ult i32 %i.i, 11                    ; 3 uses
  %i.k = lshr i32 15872, %4
  %i.l = trunc i32 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.r = lshr i32 3626, %4
  %i.s = trunc i32 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 7
  br label %bb.d

bb.d:                                             ; preds = %bb.bl, %_ZN3fmt3v126detail11parse_alignEc.exit.thread
  %.0145 = phi ptr [ %0, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %.1146, %bb.bl ] ; 17 uses
  %.sroa.0113.0 = phi i32 [ 0, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %.sroa.0113.1, %bb.bl ] ; 8 uses
  %.146 = phi i8 [ %.045, %_ZN3fmt3v126detail11parse_alignEc.exit.thread ], [ %i.fs, %bb.bl ] ; 3 uses
  switch i8 %.146, label %bb.bb [
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 94, label %bb.e
    i8 43, label %bb.j
    i8 32, label %bb.j
    i8 45, label %bb.k
    i8 35, label %bb.m
    i8 48, label %bb.o
    i8 49, label %bb.u
    i8 50, label %bb.u
    i8 51, label %bb.u
    i8 52, label %bb.u
    i8 53, label %bb.u
    i8 54, label %bb.u
    i8 55, label %bb.u
    i8 56, label %bb.u
    i8 57, label %bb.u
    i8 123, label %bb.u
    i8 46, label %bb.w
    i8 76, label %bb.z
    i8 100, label %bb.ab
    i8 88, label %bb.ad
    i8 120, label %.loopexit
    i8 111, label %bb.af
    i8 66, label %bb.ah
    i8 98, label %.loopexit150
    i8 69, label %bb.aj
    i8 101, label %.loopexit151
    i8 70, label %bb.al
    i8 102, label %.loopexit152
    i8 71, label %bb.an
    i8 103, label %.loopexit153
    i8 65, label %bb.ap
    i8 97, label %.loopexit154
    i8 99, label %bb.ar
    i8 115, label %bb.av
    i8 112, label %bb.ax
    i8 63, label %bb.az
    i8 125, label %.loopexit155
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.y = icmp eq i32 %.sroa.0113.0, 0
  br i1 %i.y, label %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit: ; preds = %bb.e
  switch i8 %.146, label %bb.i [
    i8 60, label %_ZN3fmt3v126detail11parse_alignEc.exit52
    i8 62, label %bb.g
    i8 94, label %bb.h
  ]

bb.g:                                             ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v126detail11parse_alignEc.exit52

bb.h:                                             ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v126detail11parse_alignEc.exit52

bb.i:                                             ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v126detail11parse_alignEc.exit52

_ZN3fmt3v126detail11parse_alignEc.exit52:         ; preds = %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, %bb.g, %bb.h, %bb.i
  %.0.i51 = phi i32 [ 0, %bb.i ], [ 24, %bb.h ], [ 16, %bb.g ], [ 8, %_ZZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit ]
  %i.z = load i32, ptr %2, align 8, !tbaa !32
  %i.aa = and i32 %i.z, -57
  %i.ab = or disjoint i32 %i.aa, %.0.i51
  store i32 %i.ab, ptr %2, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  br label %bb.bk

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %4, ptr %5, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !44
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !21
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !47
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.6) #25
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !21      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !49

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !21    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !49

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !49

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !21
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !21
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.6) #25
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55, !nonnull !57, !align !58
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59, !nonnull !57, !align !60
  store i32 1, ptr %i.am, align 4, !tbaa !47
  %i.an = load ptr, ptr %2, align 8, !tbaa !61, !nonnull !57, !align !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !38
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.6) #25
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !62

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !62

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !62

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55, !nonnull !57, !align !58 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59, !nonnull !57, !align !60
  store i32 2, ptr %i.bl, align 4, !tbaa !47
  %i.bm = load ptr, ptr %2, align 8, !tbaa !61, !nonnull !57, !align !58
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %0, double noundef %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.17, align 8             ; 5 uses
  %6 = alloca %"struct.fmt::v12::format_specs", align 16 ; 6 uses
  %7 = alloca %class.anon.8, align 8              ; 5 uses
  %8 = alloca %"struct.fmt::v12::format_specs", align 16 ; 15 uses
  %9 = alloca %"class.fmt::v12::loc_value", align 16 ; 3 uses
  %10 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 5 uses
  %11 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 14 uses
  %12 = alloca %"struct.fmt::v12::detail::big_decimal_fp", align 8 ; 7 uses
  store i64 %2, ptr %8, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = trunc i64 %2 to i32                      ; 2 uses
  %i.c = and i32 %i.b, 16384
  %.not58 = icmp eq i32 %i.c, 0
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double %1, ptr %9, align 16, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 10, ptr %i.d, align 16, !tbaa !63
  %i.e = call noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr %0, ptr noundef nonnull byval(%"class.fmt::v12::loc_value") align 16 %9, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr %4)
  br i1 %i.e, label %bb.ai, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %8, align 16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = bitcast double %1 to i64
  %i.h = icmp slt i64 %i.g, 0
  %i.i = lshr i32 %i.f, 10
  %i.j = and i32 %i.i, 3
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 5 uses
  %i.l = call double @llvm.fabs.f64(double %1)
  %i.m = fcmp ueq double %i.l, +inf
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.o = load <2 x i64>, ptr %8, align 16
  %.sroa.014.0.copyload = load i64, ptr %8, align 16 ; 2 uses
  store <2 x i64> %i.o, ptr %6, align 16
  %i.p = trunc i64 %.sroa.014.0.copyload to i32   ; 2 uses
  %i.q = and i64 %.sroa.014.0.copyload, 1095216889856
  %or.cond.i = icmp eq i64 %i.q, 206158462976
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 32, ptr %i.r, align 4, !tbaa !21
  store i32 %i.p, ptr %6, align 16, !tbaa !32
  br label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.d, %bb.e
  %i.s = and i32 %i.p, 4096
  %.not7.i = icmp eq i32 %i.s, 0                  ; 2 uses
  %.str.12..str.13.i = select i1 %.not7.i, ptr @.str.13, ptr @.str.12
  %.str.14..str.15.i = select i1 %.not7.i, ptr @.str.15, ptr @.str.14
  %i.t = select i1 %i.n, ptr %.str.12..str.13.i, ptr %.str.14..str.15.i
  %.not.not.i = icmp eq i32 %i.k, 0
  %i.u = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 %i.k, ptr %7, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !70
  %i.w = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef %i.u, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ai

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %i.f, 56
  %i.y = icmp eq i32 %i.x, 32
  %i.z = icmp ne i32 %i.k, 0
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = shl nuw nsw i32 %i.k, 3
  %i.ab = lshr i32 539700480, %i.aa
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !73
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !75
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.af, %bb.g ], [ %.pre2.i.i, %bb.h ]
  %i.al = phi i64 [ %i.ae, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.am = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %.pre-phi.i.i, ptr %i.ad, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 %i.ac, ptr %i.an, align 1, !tbaa !21
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.a, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %i.k, %bb.f ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34 ; 4 uses
  %i.as = icmp slt i32 %i.ar, 0
  %.pre59 = load i32, ptr %8, align 16, !tbaa !32 ; 4 uses
  br i1 %i.as, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.at = and i32 %.pre59, 7
  %.not43 = icmp eq i32 %i.at, 0
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.au = call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #22 ; 2 uses
  %i.av = extractvalue { i64, i32 } %i.au, 0
  store i64 %i.av, ptr %10, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = extractvalue { i64, i32 } %i.au, 1
  store i32 %i.ax, ptr %i.aw, align 8
  %i.ay = call ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 16, ptr %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ai

bb.m:                                             ; preds = %bb.k, %bb.j
  %.035 = phi i32 [ %i.ar, %bb.j ], [ 6, %bb.k ]  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bb, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ba, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !76
  store i64 500, ptr %i.az, align 8, !tbaa !73
  %i.bd = trunc i32 %.pre59 to i8
  %i.be = and i8 %i.bd, 7
  switch i8 %i.be, label %bb.z [
    i8 4, label %bb.n
    i8 1, label %bb.s
    i8 2, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  %.not47 = icmp eq i32 %.0, 0
  br i1 %.not47, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = shl nuw nsw i32 %.0, 3
  %i.bg = lshr i32 539700480, %i.bf
  %i.bh = trunc i32 %i.bg to i8
  store i64 1, ptr %i.bb, align 8, !tbaa !71
  store i8 %i.bh, ptr %i.bc, align 8, !tbaa !21
  br label %bb.q

bb.p:                                             ; preds = %bb.r, %bb.t, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.copyload = load i64, ptr %8, align 16
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  invoke void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %1, i64 %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %11, align 8, !tbaa !76
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !71 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.bj, ptr %5, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bk, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37
  %i.bl = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.bk, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.p

_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ae

bb.s:                                             ; preds = %bb.m
  %i.bm = icmp eq i32 %.035, 2147483647
  br i1 %i.bm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.5) #25
          to label %bb.u unwind label %bb.p

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bn = add nuw nsw i32 %.035, 1                ; 2 uses
  %.not45 = icmp eq i32 %i.ar, 0
  br i1 %.not45, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = or i32 %.pre59, 8192
  store i32 %i.bo, ptr %8, align 16, !tbaa !32
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %.not44 = icmp eq i32 %i.ar, 0
  br i1 %.not44, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = or i32 %.pre59, 8192
  store i32 %i.bp, ptr %8, align 16, !tbaa !32
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.035, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.w
  %.1 = phi i32 [ %i.bn, %bb.w ], [ %i.bn, %bb.v ], [ %.035, %bb.y ], [ %.035, %bb.x ], [ %spec.store.select, %bb.z ] ; 2 uses
  %i.bq = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.1, ptr %i.aq, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.br = load ptr, ptr %11, align 8, !tbaa !76
  store ptr %i.br, ptr %12, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !71
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !81
  %i.bw = invoke ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 16, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.ad

_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.034.0 = phi ptr [ %i.bw, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bl, %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bz = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, %i.bc
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bz) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.p
  %.pn48 = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.bx, %bb.ac ], [ %i.by, %bb.ad ]
  %i.ca = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.ca, %i.bc
  br i1 %.not.i.i52, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit53, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.ca) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit53

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit53: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  resume { ptr, i32 } %.pn48

bb.ai:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %bb.l
  %.sroa.034.3 = phi ptr [ %i.ay, %bb.l ], [ %i.w, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.034.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.034.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.ag
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !21     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82, !noalias !85 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.d, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21, !noalias !85
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i
  br label %_ZNK3fmt3v127context3argEi.exit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i32 %i.a, 14
  br i1 %i.k, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i32 %i.a, 2
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.c, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 15                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21, !noalias !85
  br label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !37 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82, !noalias !90 ; 5 uses
  %i.u = and i64 %i.t, 4611686018427387904
  %.not13.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not13.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !90 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !95, !noalias !90 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !98, !noalias !90
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !99

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !100, !noalias !90 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #22, !noalias !90 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !90
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !102, !noalias !90 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE:bb.a
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !71 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !21
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !134

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not31.i.i = icmp eq i32 %i.c, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i.preheader

.lr.ph34.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !71
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bf, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bx, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bg, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !73
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !135
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !71  ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !73
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.026.i.i, %i.al
  %i.ao = sub i64 %i.ab, %i.an
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !21
  %wide.load32 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !tbaa !21
  store <16 x i8> %wide.load32, ptr %i.at, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.av, align 1, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.aw, align 1, !tbaa !21
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %.025.i.i, %n.vec33
  br i1 %cmp.n37, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !21
  %i.bb = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !138

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.prol ]
  %i.bc = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !71
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.be = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.h ]
  %i.bf = add i64 %i.be, %.025.i.i                ; 3 uses
  store i64 %i.bf, ptr %i.u, align 8, !tbaa !71
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !115

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !21
  %i.bk = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !21
  %i.bo = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !21
  %i.bs = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !21
  %i.bw = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bw, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !139

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bx = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !140

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #6 comdat {
bb.a:
  %6 = alloca %class.anon.9, align 8              ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !32     ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.g = or i64 %i.f, 1
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %i.p = icmp ult i64 %i.f, %i.o
  %.neg.i.i.i = sext i1 %i.p to i32
  %i.q = add nsw i32 %.neg.i.i.i, %i.l            ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !143
  %i.t = add nsw i32 %i.q, %i.s                   ; 3 uses
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = trunc i32 %i.d to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %. = select i1 %i.z, i32 %i.y, i32 %4
  %i.aa = icmp sgt i32 %i.t, -4
  %i.ab = icmp sle i32 %i.t, %.
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %7 = ptrtoint ptr %5 to i64
  %i.ad = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %7)
  br label %bb.q

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.ae = zext i1 %.not51 to i32
  %i.af = add nsw i32 %i.q, %i.ae
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = and i32 %i.d, 8192
  %.not53 = icmp eq i32 %i.ah, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.ak = sub nsw i32 %i.aj, %i.q
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nsw i64 %i.am, %i.ag
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp eq i32 %i.q, 1
  %spec.select = select i1 %i.ao, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.al, %bb.g ], [ 0, %bb.h ]
  %.048 = phi i64 [ %i.an, %bb.g ], [ %i.ag, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ap = zext i1 %.not52 to i64
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 100
  %i.as = icmp samesign ugt i32 %i.aq, 999
  %i.at = select i1 %i.as, i64 6, i64 5
  %.0.i = select i1 %i.ar, i64 4, i64 %i.at
  %i.au = add nsw i64 %.048, %.0.i
  %i.av = add nuw nsw i64 %i.au, %i.ap            ; 3 uses
  %i.aw = and i32 %i.d, 4096
  %.not54 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %3, ptr %6, align 8, !tbaa !144
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !146
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.q, ptr %i.az, align 8, !tbaa !147
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %.0, ptr %i.ba, align 4, !tbaa !148
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.049, ptr %i.bb, align 8, !tbaa !149
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 %i.ax, ptr %i.bc, align 4, !tbaa !150
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.u, ptr %i.bd, align 8, !tbaa !151
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %i.av) ; 4 uses
  %i.bj = lshr i32 %i.d, 3
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bo = sext i8 %i.bn to i64
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = lshr i64 %i.bi, %i.bp                   ; 4 uses
  %i.br = sub nsw i64 %i.bi, %i.bq
  %i.bs = lshr i32 %i.d, 15
  %i.bt = and i32 %i.bs, 7
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = mul nuw nsw i64 %i.bi, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !71
  %i.by = add nuw nsw i64 %i.bv, %i.av
  %i.bz = add i64 %i.by, %i.bx                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !73
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bz), !inline_history !152
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.k, %bb.j
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.cf = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.cf, %bb.l ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.cg = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bi, %i.bq
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.cg, i64 noundef %i.br, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.o:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !71
  %i.ck = add i64 %i.cj, %i.av                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !73
  %i.cn = icmp ugt i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.p, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !74
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !126
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.o, %bb.p
  %i.cq = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %bb.n, %bb.m, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.cq, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.ch, %bb.n ], [ %i.cg, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, %bb.e
  %.sroa.047.1 = phi ptr [ %i.ad, %bb.e ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.12, align 8             ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.13, align 8            ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !50
  store i8 %3, ptr %i.b, align 1, !tbaa !21
  store i32 %5, ptr %i.c, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !143  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !50
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !32     ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint6squareEv:bb.a

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !50
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !284

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph143, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph143
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph143, label %.critedge.i, !llvm.loop !279

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !50
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !279

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !279

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !224
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !285

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !227
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cq = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cr = sub i32 %indvar, %i.c
  %i.cs = and i32 %i.cr, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cq, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !50
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !50
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = zext i64 %i.cy to i128
  %i.da = add nsw i128 %.256, %i.cz               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa147.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %i.db = icmp eq i32 %i.ar, %indvar
  br i1 %i.db, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa147.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.dc = trunc i128 %.3.lcssa to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !50
  %i.de = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !286

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dy, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !50
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.dh
  %i.dn = zext i64 %i.dm to i128
  %i.do = add i128 %.352, %i.dn
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !50
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !50
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.ds
  %i.dx = zext i64 %i.dw to i128
  %i.dy = add i128 %i.do, %i.dx                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !287

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dz = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ea = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dz)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !235
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !228
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !228
  %i.ee = load ptr, ptr %1, align 8, !tbaa !226   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ee) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.t:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.at, %bb.l ]
  %i.eh = load ptr, ptr %1, align 8, !tbaa !226   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eh) #22
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #6 comdat {
bb.a:
  %6 = alloca %class.anon.25, align 8             ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !32     ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !80   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !81
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %i.l = trunc i32 %i.d to i8
  %i.m = and i8 %i.l, 7
  switch i8 %i.m, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %. = select i1 %i.p, i32 %i.o, i32 %4
  %i.q = icmp sgt i32 %i.j, -4
  %i.r = icmp sle i32 %i.j, %.
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %7 = ptrtoint ptr %5 to i64
  %i.t = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.g, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %7)
  br label %bb.q

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0
  %i.u = zext i1 %.not51 to i32
  %i.v = add nsw i32 %i.g, %i.u
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = and i32 %i.d, 8192
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = sub nsw i32 %i.z, %i.g
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 0) ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.g, 1
  %spec.select = select i1 %i.ae, i8 0, i8 %i.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.049 = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.h ]
  %.048 = phi i64 [ %i.ad, %bb.g ], [ %i.w, %bb.h ]
  %.0 = phi i8 [ %i.e, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.af = zext i1 %.not52 to i64
  %i.ag = tail call i32 @llvm.abs.i32(i32 %i.k, i1 true) ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 100
  %i.ai = icmp samesign ugt i32 %i.ag, 999
  %i.aj = select i1 %i.ai, i64 6, i64 5
  %.0.i = select i1 %i.ah, i64 4, i64 %i.aj
  %i.ak = add nsw i64 %.048, %.0.i
  %i.al = add nsw i64 %i.ak, %i.af                ; 3 uses
  %i.am = and i32 %i.d, 4096
  %.not54 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %3, ptr %6, align 8, !tbaa !288
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !290
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.g, ptr %i.ap, align 8, !tbaa !291
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 %.0, ptr %i.aq, align 4, !tbaa !292
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %.049, ptr %i.ar, align 8, !tbaa !293
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 %i.an, ptr %i.as, align 4, !tbaa !294
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.k, ptr %i.at, align 8, !tbaa !295
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !77 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %i.ax, i64 %i.al) ; 4 uses
  %i.az = lshr i32 %i.d, 3
  %i.ba = and i32 %i.az, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = sext i8 %i.bd to i64
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = lshr i64 %i.ay, %i.bf                   ; 4 uses
  %i.bh = sub nsw i64 %i.ay, %i.bg
  %i.bi = lshr i32 %i.d, 15
  %i.bj = and i32 %i.bi, 7
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = mul nuw nsw i64 %i.ay, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !71
  %i.bo = add nsw i64 %i.bl, %i.al
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !73
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.k, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bp), !inline_history !296
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.k, %bb.j
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.bv = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.bv, %bb.l ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.bw = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ay, %i.bg
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bw, i64 noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit

bb.o:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !71
  %i.ca = add i64 %i.bz, %i.al                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73
  %i.cd = icmp ugt i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.p, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !74
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ca), !inline_history !126
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.o, %bb.p
  %i.cg = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit: ; preds = %bb.n, %bb.m, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.cg, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.bx, %bb.n ], [ %i.bw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit, %bb.e
  %.sroa.047.1 = phi ptr [ %i.t, %bb.e ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESA_SA_SG_mOSB_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.28, align 8             ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.29, align 8            ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !50
  store i8 %3, ptr %i.b, align 1, !tbaa !21
  store i32 %5, ptr %i.c, align 4, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81   ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !50
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !32     ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not48 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not48, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
end_hunk_3
