Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ipv4_address?download=true
inline.NumInlined: 608
inline.NumDeleted: 418
begin_hunk_0
%"struct.boost::urls::grammar::detail::tuple_element_impl.36" = type { %"class.boost::empty_::empty_value.31" }
%"struct.std::array" = type { [4 x i8] }
%"class.boost::system::result" = type { %"class.boost::variant2::variant" }
%"class.boost::variant2::variant" = type { %"struct.boost::variant2::detail::variant_ma_base_impl.base", [7 x i8] }
%"struct.boost::variant2::detail::variant_ma_base_impl.base" = type { %"struct.boost::variant2::detail::variant_mc_base_impl.base" }
%"struct.boost::variant2::detail::variant_mc_base_impl.base" = type { %"struct.boost::variant2::detail::variant_ca_base_impl.base" }
%"struct.boost::variant2::detail::variant_ca_base_impl.base" = type { %"struct.boost::variant2::detail::variant_cc_base_impl.base" }
%"struct.boost::variant2::detail::variant_cc_base_impl.base" = type { %"struct.boost::variant2::detail::variant_base_impl.base" }
%"struct.boost::variant2::detail::variant_base_impl.base" = type <{ %"union.boost::variant2::detail::variant_storage_impl", i8 }>
%"union.boost::variant2::detail::variant_storage_impl" = type { %"union.boost::variant2::detail::variant_storage_impl.1" }
%"union.boost::variant2::detail::variant_storage_impl.1" = type { %"union.boost::variant2::detail::variant_storage_impl.2" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.boost::system::system_error" = type { %"class.std::runtime_error", %"class.boost::system::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.6 }
%union.anon.6 = type { ptr }
%"class.std::tuple.110" = type { %"struct.std::_Tuple_impl.111" }
%"struct.std::_Tuple_impl.111" = type { %"struct.std::_Tuple_impl.112", %"struct.std::_Head_base.118" }
%"struct.std::_Tuple_impl.112" = type { %"struct.std::_Tuple_impl.113", %"struct.std::_Head_base.117" }
%"struct.std::_Tuple_impl.113" = type { %"struct.std::_Tuple_impl.114", %"struct.std::_Head_base.116" }
%"struct.std::_Tuple_impl.114" = type { %"struct.std::_Head_base.115" }
%"struct.std::_Head_base.115" = type { ptr }
%"struct.std::_Head_base.116" = type { ptr }
%"struct.std::_Head_base.117" = type { ptr }
%"struct.std::_Head_base.118" = type { ptr }
%"struct.boost::urls::grammar::detail::parse_sequence<true, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t>::deref" = type { i8 }
%"struct.std::is_same" = type { i8 }
%"struct.boost::urls::grammar::detail::parse_sequence" = type { %"class.boost::system::error_code", ptr, %"class.std::tuple.38" }
%"class.std::tuple.38" = type { %"struct.std::_Tuple_impl.39" }
%"struct.std::_Tuple_impl.39" = type { %"struct.std::_Tuple_impl.40", %"struct.std::_Head_base.61" }
%"struct.std::_Tuple_impl.40" = type { %"struct.std::_Tuple_impl.41", %"struct.std::_Head_base.60" }
%"struct.std::_Tuple_impl.41" = type { %"struct.std::_Tuple_impl.42", %"struct.std::_Head_base.59" }
%"struct.std::_Tuple_impl.42" = type { %"struct.std::_Head_base.43" }
%"struct.std::_Head_base.43" = type { %"class.boost::system::result.44" }
%"class.boost::system::result.44" = type { %"class.boost::variant2::variant.45" }
%"class.boost::variant2::variant.45" = type { %"struct.boost::variant2::detail::variant_ma_base_impl.base.57", [7 x i8] }
%"struct.boost::variant2::detail::variant_ma_base_impl.base.57" = type { %"struct.boost::variant2::detail::variant_mc_base_impl.base.56" }
%"struct.boost::variant2::detail::variant_mc_base_impl.base.56" = type { %"struct.boost::variant2::detail::variant_ca_base_impl.base.55" }
%"struct.boost::variant2::detail::variant_ca_base_impl.base.55" = type { %"struct.boost::variant2::detail::variant_cc_base_impl.base.54" }
%"struct.boost::variant2::detail::variant_cc_base_impl.base.54" = type { %"struct.boost::variant2::detail::variant_base_impl.base.53" }
%"struct.boost::variant2::detail::variant_base_impl.base.53" = type <{ %"union.boost::variant2::detail::variant_storage_impl.51", i8 }>
%"union.boost::variant2::detail::variant_storage_impl.51" = type { %"union.boost::variant2::detail::variant_storage_impl.52" }
%"union.boost::variant2::detail::variant_storage_impl.52" = type { %"union.boost::variant2::detail::variant_storage_impl.2" }
%"struct.std::_Head_base.59" = type { %"class.boost::system::result.44" }
%"struct.std::_Head_base.60" = type { %"class.boost::system::result.44" }
%"struct.std::_Head_base.61" = type { %"class.boost::system::result.44" }
%"struct.std::integral_constant" = type { i8 }
%"struct.std::integral_constant.7" = type { i8 }
%"struct.std::integral_constant.5" = type { i8 }
%"struct.std::integral_constant.106" = type { i8 }

$__clang_call_terminate = comdat any

$_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE = comdat any

$_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE = comdat any

$_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE = comdat any

$_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE = comdat any

$_ZN5boost6detail19with_throw_locationINS_6system12system_errorEED0Ev = comdat any

$_ZN5boost6system12system_errorD0Ev = comdat any

$_ZNK5boost6system10error_code4whatB5cxx11Ev = comdat any

$_ZNK5boost6system10error_code7messageB5cxx11Ev = comdat any

$_ZNK5boost6system10error_code9to_stringB5cxx11Ev = comdat any

$_ZNK5boost15source_location9to_stringB5cxx11Ev = comdat any

$_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_ = comdat any

$_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE = comdat any

$_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_ = comdat any

$_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE = comdat any

$_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE = comdat any

$_ZN5boost4mp116detail20tuple_transform_implINS_4urls7grammar6detail14parse_sequenceILb1ENS4_22implementation_defined16dec_octet_rule_tEJNS7_14squelch_rule_tINS7_13ch_delim_ruleEEES8_SB_S8_SB_S8_EE5derefEJRSt5tupleIJNS_6system6resultIhNSF_10error_codeEEESI_SI_SI_EEEJLm0ELm1ELm2ELm3EEEEDTcl12tp_forward_vspcl11tuple_applyfp0_cl10tp_extractIXT1_EEspclsr3stdE7forwardIT0_Efp1_EEEEENS0_16integer_sequenceImJXspT1_EEEERKT_DpOSL_ = comdat any

$_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE = comdat any

$_ZTSN5boost6detail19with_throw_locationINS_6system12system_errorEEE = comdat any

$_ZTIN5boost6system12system_errorE = comdat any

$_ZTSN5boost6system12system_errorE = comdat any

$_ZTIN5boost6detail14throw_locationE = comdat any

$_ZTSN5boost6detail14throw_locationE = comdat any

$_ZTVN5boost6detail19with_throw_locationINS_6system12system_errorEEE = comdat any

$_ZTVN5boost6system12system_errorE = comdat any

$_ZZNK5boost6system10error_code8locationEvE3loc = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE__ = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___0 = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___1 = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___2 = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___3 = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___4 = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ = comdat any

$_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 = comdat any

@.str = private unnamed_addr constant [58 x i8] c"/opt-bench/work/boost/boost/libs/url/src/ipv4_address.cpp\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ipv4_address\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"to_buffer\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost6detail19with_throw_locationINS_6system12system_errorEEE, i32 0, i32 2, ptr @_ZTIN5boost6system12system_errorE, i64 2, ptr @_ZTIN5boost6detail14throw_locationE, i64 10242 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6detail19with_throw_locationINS_6system12system_errorEEE = linkonce_odr constant [64 x i8] c"N5boost6detail19with_throw_locationINS_6system12system_errorEEE\00", comdat, align 1
@_ZTIN5boost6system12system_errorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6system12system_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5boost6system12system_errorE = linkonce_odr constant [30 x i8] c"N5boost6system12system_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTIN5boost6detail14throw_locationE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost6detail14throw_locationE }, comdat, align 8
@_ZTSN5boost6detail14throw_locationE = linkonce_odr constant [32 x i8] c"N5boost6detail14throw_locationE\00", comdat, align 1
@_ZTVN5boost6detail19with_throw_locationINS_6system12system_errorEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEED0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTVN5boost6system12system_errorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost6system12system_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5boost6system12system_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@_ZZNK5boost6system10error_code8locationEvE3loc = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.13, ptr @.str.13, i32 0, i32 0 }, comdat, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"(unknown source location)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c":%lu\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c" in function '\00", align 1
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE__ = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 37, i32 28 }, comdat, align 8
@.str.17 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/boost/boost/libs/url/include/boost/url/grammar/impl/dec_octet_rule.hpp\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___0 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 43, i32 28 }, comdat, align 8
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___1 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 57, i32 27 }, comdat, align 8
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___2 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 71, i32 27 }, comdat, align 8
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___3 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 78, i32 27 }, comdat, align 8
@_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___4 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.17, ptr @.str.18, i32 86, i32 27 }, comdat, align 8
@_ZN5boost4urls7grammar6detail9error_catE = external global %"struct.boost::urls::grammar::detail::error_cat_type", align 8
@_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.19, ptr @.str.18, i32 32, i32 29 }, comdat, align 8
@.str.19 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/boost/boost/libs/url/include/boost/url/grammar/impl/delim_rule.hpp\00", align 1
@_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 = linkonce_odr hidden constant %"struct.boost::source_location" { ptr @.str.19, ptr @.str.18, i32 38, i32 28 }, comdat, align 8
@.str.20 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/boost/boost/libs/system/include/boost/system/result.hpp\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"operator*\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN5boost4urls12ipv4_addressC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN5boost4urls12ipv4_addressC2Ej
@_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost4urls12ipv4_addressC2ERKSt5arrayIhLm4EE
@_ZN5boost4urls12ipv4_addressC1ENS_4core17basic_string_viewIcEE = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN5boost4urls12ipv4_addressC2ENS_4core17basic_string_viewIcEE

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost4urls12ipv4_addressC2Ej(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5boost4urls12ipv4_addressC2ERKSt5arrayIhLm4EE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(4) %1) unnamed_addr #4 align 2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !9
  %2 = load i8, ptr %1, align 1, !tbaa !10
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !10
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  store i32 %18, ptr %0, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost4urls12ipv4_addressC2ENS_4core17basic_string_viewIcEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, ptr %1, i64 %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::result.8", align 8 ; 7 uses
  %4 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t", align 4 ; 4 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"struct.std::array", align 4       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %"class.boost::system::result", align 8 ; 8 uses
  %8 = alloca %"class.boost::system::result", align 8 ; 10 uses
  %9 = alloca %"struct.boost::source_location", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !81
  store ptr %1, ptr %i.a, align 8, !tbaa !13, !noalias !81
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !83
  store i32 3026478, ptr %4, align 4, !noalias !83
  call void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.8") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !83
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !15, !noalias !83 ; 2 uses
  %.not7.i.i = icmp eq i8 %i.d, 1
  br i1 %.not7.i.i, label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 24, i1 false), !tbaa.struct !18, !noalias !83
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !84, !noalias !83
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !18, !noalias !81
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 2, ptr %i.f, align 8, !tbaa !20, !alias.scope !82, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !83
  br label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !83
  %i.g = load <4 x i8>, ptr %3, align 8, !tbaa !10, !noalias !83
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.h, ptr %6, align 4, !tbaa !10, !noalias !83
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(4) %6) #23, !noalias !81
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.i, align 8, !tbaa !20, !alias.scope !82, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !83
  %i.j = load ptr, ptr %i.a, align 8, !noalias !81
  %.not.i.i = icmp eq ptr %i.j, %i.b
  br i1 %.not.i.i, label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !85
  %i.l = and i64 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i: ; preds = %bb.e
  %i.m = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !85
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !85
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 4) #23, !noalias !85, !inline_history !78
  %spec.select.i.i = select i1 %i.p, i64 3, i64 2
  br label %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread

_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread: ; preds = %bb.e, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i
  %i.q = phi i64 [ %spec.select.i.i, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i.i ], [ 3, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 4, ptr %8, align 8, !alias.scope !81
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10, !alias.scope !81
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17, !alias.scope !81
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 2, ptr %i.s, align 8, !tbaa !20, !alias.scope !81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr @.str, ptr %9, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 44, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 21, ptr %i.v, align 4, !tbaa !32
  br label %bb.f

_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit: ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i.i, %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !20
  %i.w = icmp eq i8 %.pre, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr @.str, ptr %9, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.x, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 44, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 21, ptr %i.z, align 4, !tbaa !32
  br i1 %i.w, label %_ZNO5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueIS3_EENSt9enable_ifIXsr3std21is_move_constructibleIT_EE5valueES3_E4typeERKNS_15source_locationE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit.thread, %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  unreachable

_ZNO5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEE5valueIS3_EENSt9enable_ifIXsr3std21is_move_constructibleIT_EE5valueES3_E4typeERKNS_15source_locationE.exit: ; preds = %_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE.exit
  %.sroa.0.0.copyload.i = load i32, ptr %8, align 8, !tbaa !33
  store i32 %.sroa.0.0.copyload.i, ptr %0, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::system::result") align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::system::result.8", align 8 ; 7 uses
  %4 = alloca %"class.boost::urls::grammar::implementation_defined::tuple_rule_t", align 4 ; 4 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %6 = alloca %"struct.std::array", align 4       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.boost::system::result", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !95
  store ptr %1, ptr %i.a, align 8, !tbaa !13, !noalias !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !95
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !97
  store i32 3026478, ptr %4, align 4, !noalias !97
  call void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.8") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !97
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !15, !noalias !97 ; 2 uses
  %.not7.i = icmp eq i8 %i.d, 1
  br i1 %.not7.i, label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 24, i1 false), !tbaa.struct !18, !noalias !97
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !98, !noalias !97
  br label %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !18, !noalias !95
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 2, ptr %i.f, align 8, !tbaa !20, !alias.scope !96, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !97
  br label %bb.f

_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !97
  %i.g = load <4 x i8>, ptr %3, align 8, !tbaa !10, !noalias !97
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.h, ptr %6, align 4, !tbaa !10, !noalias !97
  call void @_ZN5boost4urls12ipv4_addressC1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 8 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(4) %6) #23, !noalias !95
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.i, align 8, !tbaa !20, !alias.scope !96, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !97
  %i.j = load ptr, ptr %i.a, align 8, !noalias !95
  %.not.i = icmp eq ptr %i.j, %i.b
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !99
  %i.l = and i64 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i, label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i: ; preds = %bb.e
  %i.m = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !99
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 4) #23, !noalias !99, !inline_history !94
  %spec.select.i = select i1 %i.p, i64 3, i64 2
  br label %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i

_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i: ; preds = %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i, %bb.e
  %i.q = phi i64 [ %spec.select.i, %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.i ], [ 3, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %0, align 8, !alias.scope !95
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !10, !alias.scope !95
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17, !alias.scope !95
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.s, align 8, !tbaa !20, !alias.scope !95
  br label %_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit

bb.f:                                             ; preds = %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.i, %_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  br label %_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit

_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_.exit: ; preds = %_ZN5boost6system6resultINS_4urls12ipv4_addressENS0_10error_codeEEC2INS2_7grammar5errorEvTnNSt9enable_ifIXaasr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISA_S3_EE5valueEiE4typeELi0EEEOSA_.exit.thread.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZNK5boost4urls12ipv4_address8to_bytesEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %.sroa.0.0.insert.insert = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5boost4urls12ipv4_address7to_uintEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZNK5boost4urls12ipv4_address9to_bufferEPcm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 6 uses
  %i.a = icmp ult i64 %2, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr @.str, ptr %3, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 76, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 9, ptr %i.d, align 4, !tbaa !32
  call void @_ZN5boost4urls6detail18throw_length_errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1) #23
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.e, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZN5boost4urls6detail18throw_length_errorERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 6 uses
  %i.b = lshr i32 %i.a, 24
  %i.c = trunc nuw i32 %i.b to i8                 ; 4 uses
  %i.d = icmp ugt i32 %i.a, 1677721599
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i8 %i.c, 100
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !10
  %i.h = urem i8 %i.c, 100
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %i.a, 167772159
  br i1 %i.i, label %.sink.split.i, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %1, %bb.c ]    ; 2 uses
  %.sink7.i = phi i8 [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = udiv i8 %.sink7.i, 10
  %i.k = or disjoint i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.k, ptr %.0, align 1, !tbaa !10
  %i.m = urem i8 %.sink7.i, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit": ; preds = %bb.c, %.sink.split.i
  %.1 = phi ptr [ %i.l, %.sink.split.i ], [ %1, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.m, %.sink.split.i ], [ %i.c, %bb.c ]
  %i.n = or disjoint i8 %.0.i, 48
  %i.o = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.n, ptr %.1, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 3 uses
  store i8 46, ptr %i.o, align 1, !tbaa !10
  %i.q = lshr i32 %i.a, 16
  %i.r = trunc i32 %i.q to i8                     ; 6 uses
  %i.s = icmp ugt i8 %i.r, 99
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"
  %i.t = udiv i8 %i.r, 100
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !10
  %i.w = urem i8 %i.r, 100
  br label %.sink.split.i6

bb.e:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit"
  %i.x = icmp samesign ugt i8 %i.r, 9
  br i1 %i.x, label %.sink.split.i6, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"

.sink.split.i6:                                   ; preds = %bb.e, %bb.d
  %.2 = phi ptr [ %i.v, %bb.d ], [ %i.p, %bb.e ]  ; 2 uses
  %.sink7.i7 = phi i8 [ %i.w, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = udiv i8 %.sink7.i7, 10
  %i.z = or disjoint i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.z, ptr %.2, align 1, !tbaa !10
  %i.ab = urem i8 %.sink7.i7, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8": ; preds = %bb.e, %.sink.split.i6
  %.3 = phi ptr [ %i.aa, %.sink.split.i6 ], [ %i.p, %bb.e ] ; 4 uses
  %.0.i5 = phi i8 [ %i.ab, %.sink.split.i6 ], [ %i.r, %bb.e ]
  %i.ac = or disjoint i8 %.0.i5, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.ac, ptr %.3, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  store i8 46, ptr %i.ad, align 1, !tbaa !10
  %i.af = lshr i32 %i.a, 8
  %i.ag = trunc i32 %i.af to i8                   ; 6 uses
  %i.ah = icmp ugt i8 %i.ag, 99
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"
  %i.ai = udiv i8 %i.ag, 100
  %i.aj = or disjoint i8 %i.ai, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.3, i64 3
  store i8 %i.aj, ptr %i.ae, align 1, !tbaa !10
  %i.al = urem i8 %i.ag, 100
  br label %.sink.split.i10

bb.g:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit8"
  %i.am = icmp samesign ugt i8 %i.ag, 9
  br i1 %i.am, label %.sink.split.i10, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"

.sink.split.i10:                                  ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %i.ak, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %.sink7.i11 = phi i8 [ %i.al, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %i.an = udiv i8 %.sink7.i11, 10
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 %i.ao, ptr %.4, align 1, !tbaa !10
  %i.aq = urem i8 %.sink7.i11, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12": ; preds = %bb.g, %.sink.split.i10
  %.5 = phi ptr [ %i.ap, %.sink.split.i10 ], [ %i.ae, %bb.g ] ; 4 uses
  %.0.i9 = phi i8 [ %i.aq, %.sink.split.i10 ], [ %i.ag, %bb.g ]
  %i.ar = or disjoint i8 %.0.i9, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.ar, ptr %.5, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 3 uses
  store i8 46, ptr %i.as, align 1, !tbaa !10
  %i.au = trunc i32 %i.a to i8                    ; 6 uses
  %i.av = icmp ugt i8 %i.au, 99
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"
  %i.aw = udiv i8 %i.au, 100
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !10
  %i.az = urem i8 %i.au, 100
  br label %.sink.split.i14

bb.i:                                             ; preds = %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit12"
  %i.ba = icmp samesign ugt i8 %i.au, 9
  br i1 %i.ba, label %.sink.split.i14, label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16"

.sink.split.i14:                                  ; preds = %bb.i, %bb.h
  %.6 = phi ptr [ %i.ay, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.sink7.i15 = phi i8 [ %i.az, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %i.bb = udiv i8 %.sink7.i15, 10
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.bc, ptr %.6, align 1, !tbaa !10
  %i.be = urem i8 %.sink7.i15, 10
  br label %"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16"

"_ZZNK5boost4urls12ipv4_address10print_implEPcENK3$_0clERS2_h.exit16": ; preds = %bb.i, %.sink.split.i14
  %.7 = phi ptr [ %i.bd, %.sink.split.i14 ], [ %i.at, %bb.i ] ; 2 uses
  %.0.i13 = phi i8 [ %i.be, %.sink.split.i14 ], [ %i.au, %bb.i ]
  %i.bf = or disjoint i8 %.0.i13, 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.bf, ptr %.7, align 1, !tbaa !10
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  ret i64 %i.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address11is_loopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = and i32 %i.a, -16777216
  %i.c = icmp eq i32 %i.b, 2130706432
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address14is_unspecifiedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5boost4urls12ipv4_address12is_multicastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = and i32 %i.a, -268435456
  %i.c = icmp eq i32 %i.b, -536870912
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv4_address13write_ostreamERSo(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr noundef nonnull readonly align 4 dereferenceable(4) %0, ptr noundef nonnull %i.a) #23
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.a, i64 %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost4corelsIcEERSt13basic_ostreamIT_St11char_traitsIS3_EES7_NS0_17basic_string_viewIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  %.not = icmp slt i64 %2, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109
  %i.j = and i32 %i.i, 176
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !27
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = sub nsw i64 %i.f, %2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !108
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = sub nsw i64 %i.f, %2
  store i64 %i.t, ptr %i.e, align 8, !tbaa !108
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 0) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.w = load ptr, ptr %0, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 0, ptr %i.aa, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5boost4urls12ipv4_address14to_string_implERNS0_12string_token3argE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call noundef i64 @_ZNK5boost4urls12ipv4_address10print_implEPc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %i.a, i64 %i.b, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr hidden void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.boost::system::system_error", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !10
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %3, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !18
  invoke void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  unreachable

bb.e:                                             ; preds = %_ZN5boost6system12system_errorC2ERKNS0_10error_codeE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost19throw_with_locationINS_6system12system_errorEEEvOT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #23 ; 3 uses
  invoke void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost6detail19with_throw_locationINS_6system12system_errorEEE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEEC2EOS3_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6system12system_errorE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6detail19with_throw_locationINS_6system12system_errorEEE, i64 16), ptr %0, align 8, !tbaa !27
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail19with_throw_locationINS_6system12system_errorEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6system12system_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code4whatB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, -2
  %i.d = icmp eq i64 %i.c, 4611686018427387902
  br i1 %i.d, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNK5boost6system10error_code9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !36
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, i64 noundef %i.g)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.a, align 8, !tbaa !37
  %i.v = and i64 %i.u, -4
  %i.w = icmp eq i64 %i.v, 4611686018427387900
  br i1 %i.w, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14: ; preds = %bb.d
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.y = load i64, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %i.z = icmp ugt i64 %i.y, 3
  %i.aa = and i64 %i.y, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = select i1 %i.z, ptr %i.ab, ptr @_ZZNK5boost6system10error_code8locationEvE3loc
  invoke void @_ZNK5boost15source_location9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ag = sub i64 4611686018427387903, %i.af
  %i.ah = icmp ult i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc19 unwind label %bb.k

.noexc19:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18: ; preds = %bb.e
  %i.ai = load ptr, ptr %3, align 8, !tbaa !36
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ai, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit21 unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18
  %i.ak = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit21
  %i.an = load i64, ptr %i.al, align 8, !tbaa !10
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.g:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !10
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i18, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.ay, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.a, align 8, !tbaa !37
  %i.bf = icmp eq i64 %i.be, 4611686018427387903
  br i1 %i.bf, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

.invoke:                                          ; preds = %bb.a, %bb.d, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %bb.l
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34 unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %.pn7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %i.bh = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !10
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  resume { ptr, i32 } %.pn9
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  switch i64 %i.d, label %_ZNK5boost6system10error_code8categoryEv.exit.thread [
    i64 1, label %bb.b
    i64 0, label %_ZNK5boost6system10error_code5valueEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42, !noalias !118 ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !43, !noalias !118
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27, !noalias !118
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !118
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g), !inline_history !113
  br label %bb.f

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !121
  %i.l = call ptr @strerror_r(i32 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 128) #23, !noalias !121 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !44, !alias.scope !121
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

bb.c:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !121
  store i64 %i.o, ptr %i.a, align 8, !tbaa !17, !noalias !121
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !36, !alias.scope !121
  %i.r = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !121
  store i64 %i.r, ptr %i.m, align 8, !tbaa !10, !alias.scope !121
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !10
  store i8 %i.t, ptr %i.s, align 1, !tbaa !10
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !17, !noalias !121 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !37, !alias.scope !121
  %i.w = load ptr, ptr %0, align 8, !tbaa !36, !alias.scope !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !121
  br label %bb.f

_ZNK5boost6system10error_code8categoryEv.exit.thread: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !10
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %i.z, i32 noundef %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.thread, %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  switch i64 %i.e, label %_ZNK5boost6system10error_code13category_nameEv.exit [
    i64 1, label %._crit_edge.i.i
    i64 0, label %_ZNK5boost6system10error_code13category_nameEv.exit.thread
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !44
  store i32 979661939, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 4, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23 ; 2 uses
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #23 ; 2 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !37
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.o
  br i1 %i.r, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n, i64 noundef %i.o)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.t = load i32, ptr %1, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %i.t) #23 ; 0 uses
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !37
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, i64 noundef %i.v)
          to label %_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit unwind label %bb.b ; 0 uses

_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.j

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.f
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNK5boost6system10error_code13category_nameEv.exit.thread: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !44
  br label %bb.c

_ZNK5boost6system10error_code13category_nameEv.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(52) %i.af) #23, !inline_history !122 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !44
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %.noexc16, label %bb.c

.noexc16:                                         ; preds = %_ZNK5boost6system10error_code13category_nameEv.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

bb.c:                                             ; preds = %_ZNK5boost6system10error_code13category_nameEv.exit.thread, %_ZNK5boost6system10error_code13category_nameEv.exit
  %i.al = phi ptr [ %i.ad, %_ZNK5boost6system10error_code13category_nameEv.exit.thread ], [ %i.aj, %_ZNK5boost6system10error_code13category_nameEv.exit ] ; 4 uses
  %.0.i29 = phi ptr [ @.str.11, %_ZNK5boost6system10error_code13category_nameEv.exit.thread ], [ %i.ai, %_ZNK5boost6system10error_code13category_nameEv.exit ] ; 3 uses
  %i.am = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i29) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.am, ptr %i.b, align 8, !tbaa !17
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i15, label %._crit_edge.i.i14

.noexc.i15:                                       ; preds = %bb.c
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !36
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !10
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %.noexc.i15, %bb.c
  %i.aq = phi ptr [ %i.ao, %.noexc.i15 ], [ %i.al, %bb.c ] ; 2 uses
  switch i64 %i.am, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i14
  %i.ar = load i8, ptr %.0.i29, align 1, !tbaa !10
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %.0.i29, i64 %i.am, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i14
  %i.as = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !37
  %i.au = load ptr, ptr %0, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.aw, 1
  %i.ax = load i32, ptr %1, align 8, !tbaa !10    ; 2 uses
  br i1 %.not.i, label %bb.g, label %_ZNK5boost6system10error_code5valueEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = urem i64 %i.ba, 2097143
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.bc, 1000
  %i.be = add i32 %i.bd, %i.ax
  br label %_ZNK5boost6system10error_code5valueEv.exit

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %bb.f, %bb.g
  %.0.i19 = phi i32 [ %i.be, %bb.g ], [ %i.ax, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %.0.i19) #23 ; 0 uses
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23 ; 2 uses
  %i.bh = load i64, ptr %i.at, align 8, !tbaa !37
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i20

bb.h:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i20: ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i64 noundef %i.bg)
          to label %_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit23 unwind label %bb.i ; 0 uses

_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i20, %bb.h
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.al
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

bb.j:                                             ; preds = %_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit23, %_ZN5boost6system6detail10append_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %bb.i, %bb.b
  %.sink38.in = phi ptr [ %i.f, %bb.b ], [ %i.al, %bb.i ]
  %.sink = phi ptr [ %i.ab, %bb.b ], [ %i.bm, %bb.i ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.aa, %bb.b ], [ %i.bl, %bb.i ]
  %.sink38 = load i64, ptr %.sink38.in, align 8, !tbaa !10
  %i.bo = add i64 %.sink38, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %bb.i, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.b ], [ %i.bl, %bb.i ], [ %.pn.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost15source_location9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 25, ptr %i.b, align 8, !tbaa !17
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !36
  %i.j = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.i, ptr noundef nonnull align 1 dereferenceable(25) @.str.14, i64 25, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !37
  %i.l = load ptr, ptr %0, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !44
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %.noexc21, label %bb.c

.noexc21:                                         ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.q, ptr %i.a, align 8, !tbaa !17
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i20, label %._crit_edge.i.i19

.noexc.i20:                                       ; preds = %bb.c
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !36
  %i.t = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.t, ptr %i.o, align 8, !tbaa !10
  br label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %.noexc.i20, %bb.c
  %i.u = phi ptr [ %i.s, %.noexc.i20 ], [ %i.o, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i19
  %i.v = load i8, ptr %i.n, align 1, !tbaa !10
  store i8 %i.v, ptr %i.u, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i19
  %i.w = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = load ptr, ptr %0, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.15, i64 noundef %i.f) #23 ; 0 uses
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 2 uses
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !37
  %i.ad = sub i64 4611686018427387903, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc24 unwind label %bb.j

.noexc24:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.f
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, i64 noundef %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.j ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.15, i64 noundef %i.ai) #23 ; 0 uses
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #23 ; 2 uses
  %i.al = load i64, ptr %i.x, align 8, !tbaa !37
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.noexc27 unwind label %bb.k

.noexc27:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %bb.h
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29 unwind label %bb.k ; 0 uses

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %.not14 = icmp eq i8 %i.at, 0
  br i1 %.not14, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29
  %i.au = load i64, ptr %i.x, align 8, !tbaa !37
  %i.av = add i64 %i.au, -4611686018427387890
  %i.aw = icmp ult i64 %i.av, 14
  br i1 %i.aw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30: ; preds = %bb.l
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.16, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #23 ; 2 uses
  %i.az = load i64, ptr %i.x, align 8, !tbaa !37
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.as, i64 noundef %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !37  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.bi = load i64, ptr %i.o, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc38 unwind label %bb.n

.noexc38:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc38
  %i.bl = phi ptr [ %.pre.i.i, %.noexc38 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 39, ptr %i.bm, align 1, !tbaa !10
  store i64 %i.be, ptr %i.x, align 8, !tbaa !37
  %i.bn = load ptr, ptr %0, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !10
  br label %bb.o

bb.n:                                             ; preds = %.invoke, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i30
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.k, %bb.n, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bp, %bb.n ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bq = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.o
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !10
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.o, %.noexc.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls7grammar22implementation_defined12tuple_rule_tINS2_16dec_octet_rule_tEJNS2_14squelch_rule_tINS2_13ch_delim_ruleEEES4_S7_S4_S7_S4_EE5parseERPKcSA_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.8") align 8 %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.110", align 8    ; 7 uses
  %5 = alloca %"struct.boost::urls::grammar::detail::parse_sequence<true, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t, boost::urls::grammar::implementation_defined::squelch_rule_t<boost::urls::grammar::implementation_defined::ch_delim_rule>, boost::urls::grammar::implementation_defined::dec_octet_rule_t>::deref", align 1 ; 3 uses
  %6 = alloca %"struct.std::is_same", align 1     ; 3 uses
  %7 = alloca %"struct.boost::urls::grammar::detail::parse_sequence", align 8 ; 16 uses
  %8 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %9 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 2, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i8 2, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i8 2, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 152
  store i8 2, ptr %i.i, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39, !noalias !126 ; 2 uses
  %i.n = and i64 %i.m, 1
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread2.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit
  %i.o = icmp ne i64 %i.m, 1
  %i.p = load i32, ptr %7, align 8, !noalias !126
  %i.q = icmp ne i32 %i.p, 0
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread.i, label %_ZNK5boost6system10error_code6failedEv.exit.thread2.i

_ZNK5boost6system10error_code6failedEv.exit.thread.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(160) %7, i64 24, i1 false), !tbaa.struct !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.r, align 8, !tbaa !15, !alias.scope !126
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE11make_resultEv.exit

_ZNK5boost6system10error_code6failedEv.exit.thread2.i: ; preds = %bb.c, %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !126
  invoke void @_ZN5boost4mp116detail20tuple_transform_implINS_4urls7grammar6detail14parse_sequenceILb1ENS4_22implementation_defined16dec_octet_rule_tEJNS7_14squelch_rule_tINS7_13ch_delim_ruleEEES8_SB_S8_SB_S8_EE5derefEJRSt5tupleIJNS_6system6resultIhNSF_10error_codeEEESI_SI_SI_EEEJLm0ELm1ELm2ELm3EEEEDTcl12tp_forward_vspcl11tuple_applyfp0_cl10tp_extractIXT1_EEspclsr3stdE7forwardIT0_Efp1_EEEEENS0_16integer_sequenceImJXspT1_EEEERKT_DpOSL_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.110") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %_ZN5boost4mp1115tuple_transformINS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefEJRSt5tupleIJNS_6system6resultIhNSE_10error_codeEEESH_SH_SH_EEENS0_7mp_listIJSt17integral_constantImLm4EEEEESM_NS0_16integer_sequenceImJLm0ELm1ELm2ELm3EEEEEEDTclsr6detailE20tuple_transform_implcvT3__Efp_spclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSR_.exit.i unwind label %bb.d, !noalias !126

_ZN5boost4mp1115tuple_transformINS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefEJRSt5tupleIJNS_6system6resultIhNSE_10error_codeEEESH_SH_SH_EEENS0_7mp_listIJSt17integral_constantImLm4EEEEESM_NS0_16integer_sequenceImJLm0ELm1ELm2ELm3EEEEEEDTclsr6detailE20tuple_transform_implcvT3__Efp_spclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSR_.exit.i: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.thread2.i
  %i.s = load ptr, ptr %4, align 8, !tbaa !128, !noalias !126, !nonnull !48
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10, !noalias !126
  store i8 %i.t, ptr %0, align 8, !tbaa !130, !alias.scope !126
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132, !noalias !126, !nonnull !48
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10, !noalias !126
  store i8 %i.x, ptr %i.u, align 1, !tbaa !134, !alias.scope !126
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136, !noalias !126, !nonnull !48
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10, !noalias !126
  store i8 %i.ab, ptr %i.y, align 2, !tbaa !138, !alias.scope !126
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !140, !noalias !126, !nonnull !48
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10, !noalias !126
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !142, !alias.scope !126
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ag, align 8, !tbaa !15, !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !126
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE11make_resultEv.exit

bb.d:                                             ; preds = %_ZNK5boost6system10error_code6failedEv.exit.thread2.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #24, !noalias !126
  unreachable

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE11make_resultEv.exit: ; preds = %_ZNK5boost6system10error_code6failedEv.exit.thread.i, %_ZN5boost4mp1115tuple_transformINS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefEJRSt5tupleIJNS_6system6resultIhNSE_10error_codeEEESH_SH_SH_EEENS0_7mp_listIJSt17integral_constantImLm4EEEEESM_NS0_16integer_sequenceImJLm0ELm1ELm2ELm3EEEEEEDTclsr6detailE20tuple_transform_implcvT3__Efp_spclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSR_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm0ELm0EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::is_same", align 1     ; 3 uses
  %7 = alloca %"struct.std::integral_constant.7", align 1 ; 3 uses
  %8 = alloca %"struct.std::integral_constant.5", align 1 ; 3 uses
  %9 = alloca %"class.boost::system::result.44", align 8 ; 4 uses
  %10 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !48
  call void @_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.44") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47    ; 2 uses
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.g = icmp eq i8 %i.e, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 24, i1 false), !tbaa.struct !18
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !156
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm1ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !13, !noalias !157 ; 3 uses
  %i.i = icmp eq ptr %i.h, %2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !158
  %i.k = and i64 %i.j, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i: ; preds = %bb.f
  %i.l = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !158
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !158
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 1) #23, !noalias !158, !inline_history !153
  br i1 %i.o, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i, %bb.f
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i
  %i.p = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i ]
  %i.q = or disjoint i64 %i.p, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !48
  %i.s = load i8, ptr %i.h, align 1, !tbaa !10, !noalias !157
  %i.t = load i8, ptr %i.r, align 1, !tbaa !67, !noalias !157
  %.not.i.i.i.i.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !159
  %i.v = and i64 %i.u, -2
  %switch.i.i.i.i5.i.i.i.i.i = icmp eq i64 %i.v, -5572340897628102704
  br i1 %switch.i.i.i.i5.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i: ; preds = %bb.h
  %i.w = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !noalias !159
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #23, !noalias !159, !inline_history !153
  br i1 %i.z, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i, %bb.h
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i
  %i.aa = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i ]
  %i.ab = or disjoint i64 %i.aa, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !13, !noalias !157
  br label %bb.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i
  %.sroa.07.sroa.0.0.ph.i.i.i.i = phi i64 [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ 1, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ]
  %.sink24.i.ph.i.i.i.i = phi i64 [ %i.ab, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ %i.q, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ] ; 2 uses
  %i.ad = and i64 %.sink24.i.ph.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i

_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i: ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i
  store i64 %.sroa.07.sroa.0.0.ph.i.i.i.i, ptr %0, align 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !10
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink24.i.ph.i.i.i.i, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !tbaa !17
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm1ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.i:                                             ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm1ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm1ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit: ; preds = %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i, %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i, %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_(ptr dead_on_unwind noalias writable sret(%"class.boost::system::result.44") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !13     ; 5 uses
  %i.b = icmp eq ptr %i.a, %3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !173
  %i.d = and i64 %i.c, -2
  %switch.i.i.i.i = icmp eq i64 %i.d, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !173
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !173
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #23, !noalias !173, !inline_history !162
  br i1 %i.h, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.b, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.i = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.j = or disjoint i64 %i.i, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE__ to i64)
  store i64 2, ptr %0, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !10
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.a, align 1, !tbaa !10    ; 2 uses
  %i.l = add i8 %i.k, -48
  %i.m = icmp ult i8 %i.l, 10
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !174
  %i.o = and i64 %i.n, -2
  %switch.i.i.i.i32 = icmp eq i64 %i.o, -5572340897628102704
  br i1 %switch.i.i.i.i32, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35: ; preds = %bb.d
  %i.p = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !174
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !noalias !174
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #23, !noalias !174, !inline_history !162
  br i1 %i.s, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit37

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35.thread: ; preds = %bb.d, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit37

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit37: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35.thread
  %i.t = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit35 ]
  %i.u = or disjoint i64 %i.t, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___0 to i64)
  store i64 2, ptr %0, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !10
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.690.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.v = zext nneg i8 %i.k to i32
  %i.w = add nsw i32 %i.v, -48                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !13
  %i.y = icmp eq ptr %i.x, %3
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.x, align 1, !tbaa !10    ; 2 uses
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = trunc nuw nsw i32 %i.w to i8
  store i8 %i.ac, ptr %0, align 8, !tbaa !10
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %i.w, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !175
  %i.af = and i64 %i.ae, -2
  %switch.i.i.i.i38 = icmp eq i64 %i.af, -5572340897628102704
  br i1 %switch.i.i.i.i38, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41: ; preds = %bb.i
  %i.ag = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !175
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #23, !noalias !175, !inline_history !162
  br i1 %i.aj, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit43

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread: ; preds = %bb.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit43

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit43: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread
  %i.ak = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit41 ]
  %i.al = or disjoint i64 %i.ak, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___1 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !10
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.683.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.am = mul nuw nsw i32 %i.w, 10
  %i.an = zext nneg i8 %i.z to i32
  %i.ao = add nuw nsw i32 %i.am, %i.an            ; 2 uses
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !13
  %i.ar = icmp eq ptr %i.aq, %3
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !10  ; 2 uses
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = trunc nuw nsw i32 %i.ap to i8
  store i8 %i.av, ptr %0, align 8, !tbaa !10
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.aw = icmp samesign ugt i32 %i.ao, 73
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !176
  %i.ay = and i64 %i.ax, -2
  %switch.i.i.i.i44 = icmp eq i64 %i.ay, -5572340897628102704
  br i1 %switch.i.i.i.i44, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47: ; preds = %bb.n
  %i.az = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !176
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !176
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #23, !noalias !176, !inline_history !162
  br i1 %i.bc, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit49

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47.thread: ; preds = %bb.n, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit49

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit49: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47.thread
  %i.bd = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit47 ]
  %i.be = or disjoint i64 %i.bd, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___2 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.575.0..sroa_idx, align 8, !tbaa !10
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.676.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bf = mul nuw nsw i32 %i.ap, 10
  %i.bg = zext nneg i8 %i.as to i32
  %i.bh = add nuw nsw i32 %i.bf, %i.bg            ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.bh, 303
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !177
  %i.bk = and i64 %i.bj, -2
  %switch.i.i.i.i50 = icmp eq i64 %i.bk, -5572340897628102704
  br i1 %switch.i.i.i.i50, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53: ; preds = %bb.p
  %i.bl = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !177
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !177
  %i.bo = tail call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #23, !noalias !177, !inline_history !162
  br i1 %i.bo, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit55

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53.thread: ; preds = %bb.p, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit55

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit55: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53.thread
  %i.bp = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit53 ]
  %i.bq = or disjoint i64 %i.bp, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___3 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.569.0..sroa_idx, align 8, !tbaa !10
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.670.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  store ptr %i.br, ptr %2, align 8, !tbaa !13
  %.not = icmp eq ptr %i.br, %3
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = add i8 %i.bs, -48
  %i.bu = icmp ult i8 %i.bt, 10
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !178
  %i.bw = and i64 %i.bv, -2
  %switch.i.i.i.i56 = icmp eq i64 %i.bw, -5572340897628102704
  br i1 %switch.i.i.i.i56, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59.thread, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59: ; preds = %bb.s
  %i.bx = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !178
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !178
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 5) #23, !noalias !178, !inline_history !162
  br i1 %i.ca, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59.thread, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit61

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59.thread: ; preds = %bb.s, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit61

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit61: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59.thread
  %i.cb = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit59 ]
  %i.cc = or disjoint i64 %i.cb, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_E11loc__LINE___4 to i64)
  store i64 5, ptr %0, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.563.0..sroa_idx, align 8, !tbaa !10
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cc, ptr %.sroa.664.0..sroa_idx, align 8, !tbaa !17
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.cd = trunc i32 %i.bh to i8
  %i.ce = add i8 %i.cd, -48
  store i8 %i.ce, ptr %0, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit43, %bb.l, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit49, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit55, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit61, %bb.t, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit37, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit
  %.sink = phi i8 [ 1, %bb.g ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit43 ], [ 1, %bb.l ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit49 ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit55 ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit61 ], [ 1, %bb.t ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit37 ], [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.cf, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm2ELm1EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::is_same", align 1     ; 3 uses
  %7 = alloca %"struct.std::integral_constant.106", align 1 ; 3 uses
  %8 = alloca %"struct.std::integral_constant.7", align 1 ; 3 uses
  %9 = alloca %"class.boost::system::result.44", align 8 ; 4 uses
  %10 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.44") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47    ; 2 uses
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.h = icmp eq i8 %i.f, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 24, i1 false), !tbaa.struct !18
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !192
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm3ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !13, !noalias !193 ; 3 uses
  %i.j = icmp eq ptr %i.i, %2
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !194
  %i.l = and i64 %i.k, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.l, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i: ; preds = %bb.f
  %i.m = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !194
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 1) #23, !noalias !194, !inline_history !189
  br i1 %i.p, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i, %bb.f
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i
  %i.q = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i ]
  %i.r = or disjoint i64 %i.q, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.i, align 1, !tbaa !10, !noalias !193
  %i.v = load i8, ptr %i.t, align 1, !tbaa !67, !noalias !193
  %.not.i.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !195
  %i.x = and i64 %i.w, -2
  %switch.i.i.i.i5.i.i.i.i.i = icmp eq i64 %i.x, -5572340897628102704
  br i1 %switch.i.i.i.i5.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i: ; preds = %bb.h
  %i.y = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !195
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !195
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #23, !noalias !195, !inline_history !189
  br i1 %i.ab, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i, %bb.h
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i
  %i.ac = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i ]
  %i.ad = or disjoint i64 %i.ac, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.ae, ptr %1, align 8, !tbaa !13, !noalias !193
  br label %bb.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i
  %.sroa.07.sroa.0.0.ph.i.i.i.i = phi i64 [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ 1, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ]
  %.sink24.i.ph.i.i.i.i = phi i64 [ %i.ad, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ %i.r, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ] ; 2 uses
  %i.af = and i64 %.sink24.i.ph.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i

_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i: ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i
  store i64 %.sroa.07.sroa.0.0.ph.i.i.i.i, ptr %0, align 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !10
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink24.i.ph.i.i.i.i, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !tbaa !17
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm3ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.i:                                             ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm3ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm3ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit: ; preds = %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit.i.i, %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i, %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm4ELm2EEEvRPKcSC_RKSt17integral_constantImXT_EERKSE_ImXT0_EERKSE_IbLb0EE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::system::result.44", align 8 ; 4 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %8 = alloca %"class.boost::system::result.44", align 8 ; 4 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.44") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47    ; 2 uses
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.i = icmp eq i8 %i.g, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 24, i1 false), !tbaa.struct !18
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !211
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit

_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm5ELm3EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !13, !noalias !212 ; 3 uses
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !213
  %i.m = and i64 %i.l, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i: ; preds = %bb.f
  %i.n = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !213
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !213
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 1) #23, !noalias !213, !inline_history !206
  br i1 %i.q, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i, %bb.f
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i
  %i.r = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i.i.i.i.i ]
  %i.s = or disjoint i64 %i.r, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE__ to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !65, !nonnull !48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.j, align 1, !tbaa !10, !noalias !212
  %i.w = load i8, ptr %i.u, align 1, !tbaa !67, !noalias !212
  %.not.i.i.i.i.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4urls7grammar6detail9error_catE, i64 8), align 8, !tbaa !25, !noalias !214
  %i.y = and i64 %i.x, -2
  %switch.i.i.i.i5.i.i.i.i.i = icmp eq i64 %i.y, -5572340897628102704
  br i1 %switch.i.i.i.i5.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i: ; preds = %bb.h
  %i.z = load ptr, ptr @_ZN5boost4urls7grammar6detail9error_catE, align 8, !tbaa !27, !noalias !214
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !214
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost4urls7grammar6detail9error_catE, i32 noundef 2) #23, !noalias !214, !inline_history !206
  br i1 %i.ac, label %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i, %bb.h
  br label %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i

_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i
  %i.ad = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.thread.i.i.i.i.i ], [ 0, %_ZN5boost6system10error_codeC2INS_4urls7grammar5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit8.i.i.i.i.i ]
  %i.ae = or disjoint i64 %i.ad, ptrtoint (ptr @_ZZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_E11loc__LINE___0 to i64)
  br label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !13, !noalias !212
  br label %bb.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i: ; preds = %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i
  %.sroa.07.sroa.0.0.ph.i.i.i.i = phi i64 [ 2, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ 1, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ]
  %.sink24.i.ph.i.i.i.i = phi i64 [ %i.ae, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit10.i.i.i.i.i ], [ %i.s, %_ZN5boost6system10error_codeC2ERKS1_PKNS_15source_locationE.exit.i.i.i.i.i ] ; 2 uses
  %i.ag = and i64 %.sink24.i.ph.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i._crit_edge.i.i, label %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i

_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i._crit_edge.i.i: ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !65
  br label %bb.i

_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i: ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i.i.i
  store i64 %.sroa.07.sroa.0.0.ph.i.i.i.i, ptr %0, align 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN5boost4urls7grammar6detail9error_catE, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !tbaa !10
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink24.i.ph.i.i.i.i, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !tbaa !17
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm5ELm3EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

bb.i:                                             ; preds = %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i._crit_edge.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i
  %i.ah = phi ptr [ %.pre.i.i, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.i.i._crit_edge.i.i ], [ %i.t, %_ZNKR5boost6system6resultINS_4core17basic_string_viewIcEENS0_10error_codeEE5errorEv.exit.thread.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  call void @_ZNK5boost4urls7grammar22implementation_defined16dec_octet_rule_t5parseERPKcS5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::result.44") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !47  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm5ELm3EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.am = icmp eq i8 %i.ak, 2
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 24, i1 false), !tbaa.struct !18
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !215
  br label %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit.i.i.i.i

_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm5ELm3EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit

_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE5applyILm5ELm3EEENSt9enable_ifIXltT_plLi1EsZT1_EvE4typeERPKcSF_RKSt17integral_constantImXT_EERKSH_ImXT0_EE.exit: ; preds = %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit.i.i.i.i, %bb.i, %_ZNKR5boost6system6resultIvNS0_10error_codeEE5errorEv.exit.i.i, %_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail20tuple_transform_implINS_4urls7grammar6detail14parse_sequenceILb1ENS4_22implementation_defined16dec_octet_rule_tEJNS7_14squelch_rule_tINS7_13ch_delim_ruleEEES8_SB_S8_SB_S8_EE5derefEJRSt5tupleIJNS_6system6resultIhNSF_10error_codeEEESI_SI_SI_EEEJLm0ELm1ELm2ELm3EEEEDTcl12tp_forward_vspcl11tuple_applyfp0_cl10tp_extractIXT1_EEspclsr3stdE7forwardIT0_Efp1_EEEEENS0_16integer_sequenceImJXspT1_EEEERKT_DpOSL_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.110") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr @.str.20, ptr %6, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.21, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 353, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 16, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  unreachable

_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr @.str.20, ptr %5, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.21, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 353, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 16, ptr %i.k, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = load i8, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit8, label %bb.c

bb.c:                                             ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  unreachable

_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit8: ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr @.str.20, ptr %4, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.21, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 353, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 16, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !47
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit9, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit8
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  unreachable

_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit9: ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr @.str.20, ptr %3, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.21, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 353, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 16, ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !47
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit10, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit9
  call void @_ZN5boost6system26throw_exception_from_errorERKNS0_10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  unreachable

_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit10: ; preds = %_ZN5boost4mp1111tuple_applyIRKNS_4urls7grammar6detail14parse_sequenceILb1ENS3_22implementation_defined16dec_octet_rule_tEJNS6_14squelch_rule_tINS6_13ch_delim_ruleEEES7_SA_S7_SA_S7_EE5derefESt5tupleIJRNS_6system6resultIhNSG_10error_codeEEEEENS0_16integer_sequenceImJLm0EEEEEEDTclsr6detailE16tuple_apply_implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvT1__EEEOSO_OSP_.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr %2, ptr %0, align 8, !tbaa !13, !alias.scope !218
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.ab, align 8, !tbaa !13, !alias.scope !218
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.ac, align 8, !tbaa !13, !alias.scope !218
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.ad, align 8, !tbaa !13, !alias.scope !218
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

attributes #0 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN5boost4urls12ipv4_addressE", !5, i64 0}
!9 = !{!8, !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN5boost8variant26detail17variant_base_implILb1ELb1EJSt5tupleIJhhhhEENS_6system10error_codeEEEE", !4, i64 0, !4, i64 24}
!15 = !{!14, !4, i64 24}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{i64 0, i64 16, !10, i64 16, i64 8, !17}
!19 = !{!"_ZTSN5boost8variant26detail17variant_base_implILb1ELb1EJNS_4urls12ipv4_addressENS_6system10error_codeEEEE", !4, i64 0, !4, i64 24}
!20 = !{!19, !4, i64 24}
!21 = !{!"long long", !4, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIjE", !5, i64 0}
!23 = !{!"_ZTSSt6atomicIjE", !22, i64 0}
!24 = !{!"_ZTSN5boost6system14error_categoryE", !21, i64 8, !4, i64 16, !23, i64 48}
!25 = !{!24, !21, i64 8}
!26 = !{!"vtable pointer", !3, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN5boost15source_locationE", !12, i64 0, !12, i64 8, !5, i64 16, !5, i64 20}
!29 = !{!28, !12, i64 0}
!30 = !{!28, !12, i64 8}
!31 = !{!28, !5, i64 16}
!32 = !{!28, !5, i64 20}
!33 = !{!5, !5, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !16, i64 8, !4, i64 16}
!36 = !{!35, !12, i64 0}
!37 = !{!35, !16, i64 8}
!38 = !{!"_ZTSN5boost6system10error_codeE", !4, i64 0, !16, i64 16}
!39 = !{!38, !16, i64 16}
!40 = !{!"p1 _ZTSNSt3_V214error_categoryE", !11, i64 0}
!41 = !{!"_ZTSSt10error_code", !5, i64 0, !40, i64 8}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !5, i64 0}
!44 = !{!34, !12, i64 0}
!45 = !{!"p1 _ZTSN5boost4urls7grammar6detail5tupleIJNS1_22implementation_defined16dec_octet_rule_tENS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EEE", !11, i64 0}
!46 = !{!"_ZTSN5boost8variant26detail17variant_base_implILb1ELb1EJhNS_6system10error_codeEEEE", !4, i64 0, !4, i64 24}
!47 = !{!46, !4, i64 24}
!48 = !{}
!49 = !{!"_ZTSN5boost8variant26detail20variant_cc_base_implILb1ELb1EJhNS_6system10error_codeEEEE", !46, i64 0}
!50 = !{!"_ZTSN5boost8variant26detail20variant_ca_base_implILb1ELb1EJhNS_6system10error_codeEEEE", !49, i64 0}
!51 = !{!"_ZTSN5boost8variant26detail20variant_mc_base_implILb1ELb1EJhNS_6system10error_codeEEEE", !50, i64 0}
!52 = !{!"_ZTSN5boost8variant26detail20variant_ma_base_implILb1ELb1EJhNS_6system10error_codeEEEE", !51, i64 0}
!53 = !{!"_ZTSN5boost8variant27variantIJhNS_6system10error_codeEEEE", !52, i64 0}
!54 = !{!"_ZTSN5boost6system6resultIhNS0_10error_codeEEE", !53, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm3EN5boost6system6resultIhNS1_10error_codeEEELb0EE", !54, i64 0}
!56 = !{!"_ZTSSt11_Tuple_implILm3EJN5boost6system6resultIhNS1_10error_codeEEEEE", !55, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm2EN5boost6system6resultIhNS1_10error_codeEEELb0EE", !54, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm2EJN5boost6system6resultIhNS1_10error_codeEEES4_EE", !56, i64 0, !57, i64 32}
!59 = !{!"_ZTSSt10_Head_baseILm1EN5boost6system6resultIhNS1_10error_codeEEELb0EE", !54, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm1EJN5boost6system6resultIhNS1_10error_codeEEES4_S4_EE", !58, i64 0, !59, i64 64}
!61 = !{!"_ZTSSt10_Head_baseILm0EN5boost6system6resultIhNS1_10error_codeEEELb0EE", !54, i64 0}
!62 = !{!"_ZTSSt11_Tuple_implILm0EJN5boost6system6resultIhNS1_10error_codeEEES4_S4_S4_EE", !60, i64 0, !61, i64 96}
!63 = !{!"_ZTSSt5tupleIJN5boost6system6resultIhNS1_10error_codeEEES4_S4_S4_EE", !62, i64 0}
!64 = !{!"_ZTSN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EEE", !38, i64 0, !45, i64 24, !63, i64 32}
!65 = !{!64, !45, i64 24}
!66 = !{!"_ZTSN5boost4urls7grammar22implementation_defined13ch_delim_ruleE", !4, i64 0}
!67 = !{!66, !4, i64 0}
!68 = distinct !{!68, i1 false, !"_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE"}
!69 = distinct !{!69, !68, !"_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_"}
!71 = distinct !{!71, !70, !"_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_: argument 0"}
!72 = distinct !{!72, i1 false, !"_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_"}
!73 = distinct !{!73, !72, !"_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv"}
!75 = distinct !{!75, !74, !"_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!77 = distinct !{!77, !76, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!78 = distinct !{ptr @_ZN5boost4urls18parse_ipv4_addressENS_4core17basic_string_viewIcEE, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!79 = !{!69}
!80 = !{!71}
!81 = !{!71, !69}
!82 = !{!73}
!83 = !{!73, !71, !69}
!84 = !{!75}
!85 = !{!77, !71, !69}
!86 = distinct !{!86, i1 false, !"_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_"}
!87 = distinct !{!87, !86, !"_ZN5boost4urls7grammar5parseINS0_22implementation_defined19ipv4_address_rule_tEEENS_6system6resultINT_10value_typeENS5_10error_codeEEENS_4core17basic_string_viewIcEERKS7_: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_"}
!89 = distinct !{!89, !88, !"_ZNK5boost4urls22implementation_defined19ipv4_address_rule_t5parseERPKcS4_: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv"}
!91 = distinct !{!91, !90, !"_ZNKR5boost6system6resultISt5tupleIJhhhhEENS0_10error_codeEE5errorEv: argument 0"}
!92 = distinct !{!92, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!93 = distinct !{!93, !92, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!94 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!95 = !{!87}
!96 = !{!89}
!97 = !{!89, !87}
!98 = !{!91}
!99 = !{!93, !87}
!100 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!101 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!102 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!103 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !16, i64 8}
!104 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!105 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!106 = !{!"_ZTSSt6locale", !105, i64 0}
!107 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !100, i64 24, !101, i64 28, !101, i64 32, !102, i64 40, !103, i64 48, !4, i64 64, !5, i64 192, !104, i64 200, !106, i64 208}
!108 = !{!107, !16, i64 16}
!109 = !{!107, !100, i64 24}
!110 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 4, !33, i64 20, i64 4, !33}
!111 = distinct !{!111, i1 false, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!112 = distinct !{!112, !111, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!113 = distinct !{null}
!114 = distinct !{!114, i1 false, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei"}
!115 = distinct !{!115, !114, !"_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei"}
!117 = distinct !{!117, !116, !"_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei: argument 0"}
!118 = !{!112}
!119 = !{!115}
!120 = !{!117}
!121 = !{!117, !115}
!122 = distinct !{null}
!123 = distinct !{!123, i1 false, !"_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE11make_resultEv"}
!124 = distinct !{!124, !123, !"_ZN5boost4urls7grammar6detail14parse_sequenceILb1ENS1_22implementation_defined16dec_octet_rule_tEJNS4_14squelch_rule_tINS4_13ch_delim_ruleEEES5_S8_S5_S8_S5_EE11make_resultEv: argument 0"}
!125 = !{!45, !45, i64 0}
!126 = !{!124}
!127 = !{!"_ZTSSt10_Head_baseILm3ERKhLb0EE", !12, i64 0}
!128 = !{!127, !12, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm3EhLb0EE", !4, i64 0}
!130 = !{!129, !4, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm2ERKhLb0EE", !12, i64 0}
!132 = !{!131, !12, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm2EhLb0EE", !4, i64 0}
!134 = !{!133, !4, i64 0}
!135 = !{!"_ZTSSt10_Head_baseILm1ERKhLb0EE", !12, i64 0}
!136 = !{!135, !12, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm1EhLb0EE", !4, i64 0}
!138 = !{!137, !4, i64 0}
!139 = !{!"_ZTSSt10_Head_baseILm0ERKhLb0EE", !12, i64 0}
!140 = !{!139, !12, i64 0}
!141 = !{!"_ZTSSt10_Head_baseILm0EhLb0EE", !4, i64 0}
!142 = !{!141, !4, i64 0}
!143 = distinct !{!143, i1 false, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv"}
!144 = distinct !{!144, !143, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv: argument 0"}
!145 = distinct !{!145, i1 false, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_"}
!146 = distinct !{!146, !145, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_: argument 0"}
!147 = distinct !{!147, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_"}
!148 = distinct !{!148, !147, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_: argument 0"}
!149 = distinct !{!149, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_"}
!150 = distinct !{!150, !149, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_: argument 0"}
!151 = distinct !{!151, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!152 = distinct !{!152, !151, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!153 = distinct !{null, null, null, null, null, null, null, null, null}
!154 = distinct !{!154, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!155 = distinct !{!155, !154, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!156 = !{!144}
!157 = !{!150, !148, !146}
!158 = !{!152, !150, !148, !146}
!159 = !{!155, !150, !148, !146}
!160 = distinct !{!160, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!161 = distinct !{!161, !160, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!162 = distinct !{null, null, null, null}
!163 = distinct !{!163, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!164 = distinct !{!164, !163, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!165 = distinct !{!165, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!166 = distinct !{!166, !165, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!167 = distinct !{!167, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!168 = distinct !{!168, !167, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!169 = distinct !{!169, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!170 = distinct !{!170, !169, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!172 = distinct !{!172, !171, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!173 = !{!161}
!174 = !{!164}
!175 = !{!166}
!176 = !{!168}
!177 = !{!170}
!178 = !{!172}
!179 = distinct !{!179, i1 false, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv"}
!180 = distinct !{!180, !179, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv: argument 0"}
!181 = distinct !{!181, i1 false, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_"}
!182 = distinct !{!182, !181, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_: argument 0"}
!183 = distinct !{!183, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_"}
!184 = distinct !{!184, !183, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_: argument 0"}
!185 = distinct !{!185, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_"}
!186 = distinct !{!186, !185, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_: argument 0"}
!187 = distinct !{!187, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!188 = distinct !{!188, !187, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!189 = distinct !{null, null, null, null, null, null, null, null, null}
!190 = distinct !{!190, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!191 = distinct !{!191, !190, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!192 = !{!180}
!193 = !{!186, !184, !182}
!194 = !{!188, !186, !184, !182}
!195 = !{!191, !186, !184, !182}
!196 = distinct !{!196, i1 false, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv"}
!197 = distinct !{!197, !196, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv: argument 0"}
!198 = distinct !{!198, i1 false, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_"}
!199 = distinct !{!199, !198, !"_ZN5boost4urls7grammar5parseINS1_22implementation_defined14squelch_rule_tINS3_13ch_delim_ruleEEEEENS_6system6resultINT_10value_typeENS7_10error_codeEEERPKcSE_RKS9_: argument 0"}
!200 = distinct !{!200, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_"}
!201 = distinct !{!201, !200, !"_ZNK5boost4urls7grammar22implementation_defined14squelch_rule_tINS2_13ch_delim_ruleEE5parseERPKcS7_: argument 0"}
!202 = distinct !{!202, i1 false, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_"}
!203 = distinct !{!203, !202, !"_ZNK5boost4urls7grammar22implementation_defined13ch_delim_rule5parseERPKcS5_: argument 0"}
!204 = distinct !{!204, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!205 = distinct !{!205, !204, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!206 = distinct !{null, null, null, null, null, null, null, null, null}
!207 = distinct !{!207, i1 false, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE"}
!208 = distinct !{!208, !207, !"_ZN5boost4urls7grammar15make_error_codeENS1_5errorE: argument 0"}
!209 = distinct !{!209, i1 false, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv"}
!210 = distinct !{!210, !209, !"_ZNKR5boost6system6resultIhNS0_10error_codeEE5errorEv: argument 0"}
!211 = !{!197}
!212 = !{!203, !201, !199}
!213 = !{!205, !203, !201, !199}
!214 = !{!208, !203, !201, !199}
!215 = !{!210}
!216 = distinct !{!216, i1 false, !"_ZN5boost4mp116detail12tp_forward_vIJRKhS4_S4_S4_EEESt5tupleIJDpT_EEDpOS6_"}
!217 = distinct !{!217, !216, !"_ZN5boost4mp116detail12tp_forward_vIJRKhS4_S4_S4_EEESt5tupleIJDpT_EEDpOS6_: argument 0"}
!218 = !{!217}
end_hunk_0
