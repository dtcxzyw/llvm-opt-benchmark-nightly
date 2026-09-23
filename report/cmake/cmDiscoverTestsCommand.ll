Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDiscoverTestsCommand?download=true
inline.NumInlined: 838
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.cmsys::SystemToolsManager" = type { i8 }
%"class.cm::enum_set" = type { %"class.std::bitset" }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { i64 }
%class.cmArgumentParser = type { %"class.ArgumentParser::Base" }
%"class.ArgumentParser::Base" = type { %"class.ArgumentParser::ActionMap" }
%"class.ArgumentParser::ActionMap" = type { %"class.ArgumentParser::KeywordActionMap", %"class.std::function", %"class.std::function", %"class.ArgumentParser::PositionActionMap", %"class.std::function.5" }
%"class.ArgumentParser::KeywordActionMap" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>, std::allocator<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>, std::allocator<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>, std::allocator<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>, std::allocator<std::pair<std::basic_string_view<char>, std::function<void (ArgumentParser::Instance &)>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.ArgumentParser::PositionActionMap" = type { %"class.std::vector.0" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>, std::allocator<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>, std::allocator<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>, std::allocator<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>, std::allocator<std::pair<unsigned long, std::function<void (ArgumentParser::Instance &, unsigned long, std::basic_string_view<char>)>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::function.5" = type { %"class.std::_Function_base", ptr }
%"struct.(anonymous namespace)::Arguments" = type { %struct.cmTestDiscoveryArgs, i8, %"struct.ArgumentParser::MaybeEmpty" }
%struct.cmTestDiscoveryArgs = type { %"class.ArgumentParser::ParseResult", %"struct.ArgumentParser::NonEmpty", %"struct.ArgumentParser::NonEmpty", %"struct.ArgumentParser::NonEmpty.15", %"struct.ArgumentParser::MaybeEmpty", %"struct.ArgumentParser::NonEmpty.15", %"struct.ArgumentParser::NonEmpty", %"struct.ArgumentParser::MaybeEmpty" }
%"class.ArgumentParser::ParseResult" = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string_view<char>, std::pair<const std::basic_string_view<char>, std::set<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::basic_string_view<char>, std::set<std::__cxx11::basic_string<char>>>>, std::less<std::basic_string_view<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string_view<char>, std::pair<const std::basic_string_view<char>, std::set<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::basic_string_view<char>, std::set<std::__cxx11::basic_string<char>>>>, std::less<std::basic_string_view<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.ArgumentParser::NonEmpty.15" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.ArgumentParser::NonEmpty" = type { %"class.std::vector.7" }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ArgumentParser::MaybeEmpty" = type { %"class.std::vector.7" }
%class.cmListFileBacktrace = type { %class.cmConstStack }
%class.cmConstStack = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.ArgumentParser::Instance" = type { %"class.std::vector.200", ptr, ptr }
%"class.std::vector.200" = type { %"struct.std::_Vector_base.201" }
%"struct.std::_Vector_base.201" = type { %"struct.std::_Vector_base<ArgumentParser::ParserState, std::allocator<ArgumentParser::ParserState>>::_Vector_impl" }
%"struct.std::_Vector_base<ArgumentParser::ParserState, std::allocator<ArgumentParser::ParserState>>::_Vector_impl" = type { %"struct.std::_Vector_base<ArgumentParser::ParserState, std::allocator<ArgumentParser::ParserState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ArgumentParser::ParserState, std::allocator<ArgumentParser::ParserState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.170" = type { %"struct.std::__uniq_ptr_data.171" }
%"struct.std::__uniq_ptr_data.171" = type { %"class.std::__uniq_ptr_impl.172" }
%"class.std::__uniq_ptr_impl.172" = type { %"class.std::tuple.173" }
%"class.std::tuple.173" = type { %"struct.std::_Tuple_impl.174" }
%"struct.std::_Tuple_impl.174" = type { %"struct.std::_Head_base.177" }
%"struct.std::_Head_base.177" = type { ptr }
%class.cmGeneratorExpression = type { ptr, %class.cmListFileBacktrace }
%class.cmScriptGeneratorQuoted = type <{ %"class.std::basic_string_view", i32, [4 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::unique_ptr.276" = type { %"struct.std::__uniq_ptr_data.277" }
%"struct.std::__uniq_ptr_data.277" = type { %"class.std::__uniq_ptr_impl.278" }
%"class.std::__uniq_ptr_impl.278" = type { %"class.std::tuple.279" }
%"class.std::tuple.279" = type { %"struct.std::_Tuple_impl.280" }
%"struct.std::_Tuple_impl.280" = type { %"struct.std::_Head_base.283" }
%"struct.std::_Head_base.283" = type { ptr }

$_ZN14ArgumentParser4BaseD2Ev = comdat any

$_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN14ArgumentParser9ActionMapC2ERKS0_ = comdat any

$_ZNSt6vectorISt4pairImSt8functionIFvRN14ArgumentParser8InstanceEmSt17basic_string_viewIcSt11char_traitsIcEEEEESaISB_EED2Ev = comdat any

$_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN14ArgumentParser8InstanceEEEESaISB_EED2Ev = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN14ArgumentParser8InstanceEEEESt6vectorISD_SaISD_EEEEPSD_ET0_T_SM_SL_ = comdat any

$_ZSt8_DestroyIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN14ArgumentParser8InstanceEEEEEvT_SD_ = comdat any

$__clang_call_terminate = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairImSt8functionIFvRN14ArgumentParser8InstanceEmSt17basic_string_viewIcSt11char_traitsIcEEEEESt6vectorISD_SaISD_EEEEPSD_ET0_T_SM_SL_ = comdat any

$_ZSt8_DestroyIPSt4pairImSt8functionIFvRN14ArgumentParser8InstanceEmSt17basic_string_viewIcSt11char_traitsIcEEEEEEvT_SD_ = comdat any

$_ZN14ArgumentParser9ActionMapD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN19cmTestDiscoveryArgsD2Ev = comdat any

$_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE = comdat any

$_ZN14ArgumentParser8Instance5ParseIKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRT_m = comdat any

$_ZN14ArgumentParser8InstanceD2Ev = comdat any

$_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt10unique_ptrI29cmCompiledGeneratorExpressionSt14default_deleteIS0_EED2Ev = comdat any

@_ZN5cmsysL26SystemToolsManagerInstanceE = internal global %"class.cmsys::SystemToolsManager" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12cmStateEnumsL16AllTargetDomainsE = internal global %"class.cm::enum_set" zeroinitializer, align 8
@_ZZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser = internal global %class.cmArgumentParser zeroinitializer, align 8
@_ZGVZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"COMMAND_EXPAND_LISTS\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CONFIGURATIONS\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c" given unknown argument \22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c" DISCOVERY_PROPERTIES must be key-value pairs.\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c" TEST_PROPERTIES must be key-value pairs.\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"COMMAND\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"DISCOVERY_ARGS\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"DISCOVERY_MATCH\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DISCOVERY_PROPERTIES\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"TEST_NAME\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"TEST_ARGS\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"TEST_PROPERTIES\00", align 1
@_ZTIZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant [237 x i8] c"ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_\00", align 1
@_ZTIZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_SD_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_SD_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ }, align 8
@_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_SD_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant [219 x i8] c"ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_SD_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_\00", align 1
@_ZTIZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ }, align 8
@_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_ = internal constant [240 x i8] c"ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIM19cmTestDiscoveryArgsN14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEES4_SG_vvEERS2_N2cm18static_string_viewET_EUlRNS5_8InstanceEE_\00", align 1
@_ZTIZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_bS1_bvvEERS2_N2cm18static_string_viewET_EUlRN14ArgumentParser8InstanceEE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_bS1_bvvEERS2_N2cm18static_string_viewET_EUlRN14ArgumentParser8InstanceEE_ }, align 8
@_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_bS1_bvvEERS2_N2cm18static_string_viewET_EUlRN14ArgumentParser8InstanceEE_ = internal constant [132 x i8] c"ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_bS1_bvvEERS2_N2cm18static_string_viewET_EUlRN14ArgumentParser8InstanceEE_\00", align 1
@_ZTIZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_N14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEES1_SF_vvEERS2_N2cm18static_string_viewET_EUlRNS4_8InstanceEE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_N14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEES1_SF_vvEERS2_N2cm18static_string_viewET_EUlRNS4_8InstanceEE_ }, align 8
@_ZTSZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_N14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEES1_SF_vvEERS2_N2cm18static_string_viewET_EUlRNS4_8InstanceEE_ = internal constant [222 x i8] c"ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_N14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEES1_SF_vvEERS2_N2cm18static_string_viewET_EUlRNS4_8InstanceEE_\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN12_GLOBAL__N_118DiscoveryGeneratorE = internal constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_118DiscoveryGeneratorE, ptr @_ZN12_GLOBAL__N_118DiscoveryGeneratorD2Ev, ptr @_ZN12_GLOBAL__N_118DiscoveryGeneratorD0Ev, ptr @_ZN17cmScriptGenerator14GenerateScriptERSo, ptr @_ZN17cmScriptGenerator21GenerateScriptConfigsERSo23cmScriptGeneratorIndent, ptr @_ZN15cmTestGenerator21GenerateScriptActionsERSo23cmScriptGeneratorIndent, ptr @_ZN12_GLOBAL__N_118DiscoveryGenerator23GenerateScriptForConfigERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndent, ptr @_ZN15cmTestGenerator22GenerateScriptNoConfigERSo23cmScriptGeneratorIndent, ptr @_ZNK15cmTestGenerator19NeedsScriptNoConfigEv] }, align 8
@_ZTIN12_GLOBAL__N_118DiscoveryGeneratorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_118DiscoveryGeneratorE, ptr @_ZTI15cmTestGenerator }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12_GLOBAL__N_118DiscoveryGeneratorE = internal constant [37 x i8] c"N12_GLOBAL__N_118DiscoveryGeneratorE\00", align 1
@_ZTI15cmTestGenerator = external constant ptr
@.str.19 = private unnamed_addr constant [24 x i8] c"discover_tests(COMMAND \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"DISCOVERY_MATCH \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"TEST_NAME \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmDiscoverTestsCommand.cxx, ptr null }]

declare void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5cmsys18SystemToolsManagerD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::Arguments", align 8 ; 30 uses
  %3 = alloca %class.cmListFileBacktrace, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.ArgumentParser::Instance", align 8 ; 14 uses
  %5 = alloca %class.cmArgumentParser, align 8    ; 9 uses
  %6 = alloca %"class.std::vector.7", align 8     ; 12 uses
  %7 = alloca %"struct.(anonymous namespace)::Arguments", align 8 ; 35 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::unique_ptr.170", align 8 ; 4 uses
  %13 = alloca %class.cmListFileBacktrace, align 8 ; 8 uses
  %i.d = load atomic i8, ptr @_ZGVZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.g, !prof !128

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser) #20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke fastcc void @_Z21cmTestDiscoveryParserIN12_GLOBAL__N_19ArgumentsEE16cmArgumentParserIT_Ev(ptr dead_on_unwind noalias writable align 8 %5)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.g = invoke fastcc noundef nonnull align 8 dereferenceable(144) ptr @_ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_bS1_bvvEERS2_N2cm18static_string_viewET_(ptr noundef nonnull align 8 dereferenceable(144) %5, i64 20, ptr nonnull @.str)
          to label %bb.e unwind label %bb.q       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.h = invoke fastcc noundef nonnull align 8 dereferenceable(144) ptr @_ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEE4BindIMS1_N14ArgumentParser10MaybeEmptyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEES1_SF_vvEERS2_N2cm18static_string_viewET_(ptr noundef nonnull align 8 dereferenceable(144) %5, i64 14, ptr nonnull @.str.2)
          to label %bb.f unwind label %bb.q       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14ArgumentParser9ActionMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) @_ZZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %_ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEEC2ERKS2_.exit unwind label %bb.q

_ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEEC2ERKS2_.exit: ; preds = %bb.f
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN14ArgumentParser4BaseD2Ev, ptr nonnull @_ZZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser, ptr nonnull @__dso_handle) #20 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZN16cmArgumentParserIN12_GLOBAL__N_19ArgumentsEEC2ERKS2_.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !130, !alias.scope !129
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !21, !alias.scope !129
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !131, !alias.scope !129
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !132, !alias.scope !129
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false), !alias.scope !129
  store ptr %i.p, ptr %i.o, align 8, !tbaa !24, !alias.scope !129
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !26, !alias.scope !129
  store i8 0, ptr %i.p, align 8, !tbaa !27, !alias.scope !129
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !alias.scope !129
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !24, !alias.scope !129
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 4 uses
  store i64 0, ptr %i.u, align 8, !tbaa !26, !alias.scope !129
  store i8 0, ptr %i.t, align 8, !tbaa !27, !alias.scope !129
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !alias.scope !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.v, i8 0, i64 49, i1 false), !alias.scope !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 24, i1 false), !noalias !129
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %7, ptr %i.x, align 8, !tbaa !138, !noalias !129
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %6, ptr %i.y, align 8, !tbaa !139, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !129
  store ptr %7, ptr %i.c, align 8, !tbaa !31, !noalias !129
  invoke void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr null, ptr noundef nonnull align 8 dereferenceable(144) @_ZZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %4) #20
  br label %.body

_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !129
  invoke void @_ZN14ArgumentParser8Instance5ParseIKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !32, !noalias !129 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33, !noalias !129 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i ], [ %i.aa, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ag = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3)
          to label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable

_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ac
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !32, !noalias !129
  br label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.i
  %i.ak = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.aa, %bb.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37, !noalias !129
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #22
  br label %bb.n

bb.m:                                             ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser8InstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !129
  br label %.body

bb.n:                                             ; preds = %bb.l, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !129
  %i.ar = load ptr, ptr %1, align 8, !tbaa !145, !nonnull !45, !align !46
  %i.as = invoke noundef zeroext i1 @_ZNK14ArgumentParser11ParseResult16MaybeReportErrorER10cmMakefile(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(2952) %i.ar)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.bf, label %bb.t

bb.p:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.at, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE6parser) #20
  br label %bb.bi

bb.s:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %6, align 8, !tbaa !47    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !48, !noalias !146
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26, !noalias !146 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.bd, ptr %9, align 8, !tbaa !24, !alias.scope !147
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.be, align 8, !tbaa !26, !alias.scope !147
  store i8 0, ptr %i.bd, align 8, !tbaa !27, !alias.scope !147
end_hunk_0
begin_hunk_1_@_Z22cmDiscoverTestsCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %9, align 8, !tbaa !48, !alias.scope !147 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %.body40, label %.body40.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.br = load i64, ptr %i.be, align 8, !tbaa !26, !noalias !148
  %i.bs = and i64 %i.br, -2
  %i.bt = icmp eq i64 %i.bs, 4611686018427387902
  br i1 %i.bt, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %.noexc42 unwind label %bb.aa  ; 6 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bv, ptr %8, align 8, !tbaa !24, !alias.scope !148
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 5 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.y:                                             ; preds = %.noexc42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !26 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc42
  store ptr %i.bw, ptr %8, align 8, !tbaa !48, !alias.scope !148
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !27
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !27, !alias.scope !148
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.y
  %i.ce = phi i64 [ %i.ca, %bb.y ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !26, !alias.scope !148
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !48
  store i64 0, ptr %i.cf, align 8, !tbaa !26
  store i8 0, ptr %i.bx, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.ab

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.z
  %i.ci = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bv
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ck = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.cm = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bd
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.bf

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.ab:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bv
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.ab
  %i.cu = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.aa
  %.pn24 = phi { ptr, i32 } [ %i.cq, %bb.aa ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.cr, %bb.ab ] ; 2 uses
  %i.cw = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.bd
  br i1 %i.cx, label %.body40, label %.body40.sink.split

.body40.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.w
  %.sink = phi ptr [ %i.bp, %bb.w ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  %.pn24.pn.ph = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  %i.cy = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cz) #22
  br label %.body40

.body40:                                          ; preds = %.body40.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.w
  %.pn24.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn24.pn.ph, %.body40.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.ac:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !49
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = and i64 %i.df, 32
  %.not27 = icmp eq i64 %i.dg, 0
  br i1 %.not27, label %bb.af, label %.noexc.i

.noexc.i:                                         ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dh, ptr %10, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 46, ptr %i.b, align 8, !tbaa !51
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ad  ; 3 uses

.noexc54:                                         ; preds = %.noexc.i
  store ptr %i.di, ptr %10, align 8, !tbaa !48
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !51  ; 3 uses
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.di, ptr noundef nonnull align 1 dereferenceable(46) @.str.5, i64 46, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56 unwind label %bb.ae

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56: ; preds = %.noexc54
  %i.dn = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dh
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56
  %i.dp = load i64, ptr %i.dh, align 8, !tbaa !27
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bf

bb.ad:                                            ; preds = %.noexc.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ae:                                            ; preds = %.noexc54
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dh
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ae
  %i.dv = load i64, ptr %i.dh, align 8, !tbaa !27
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ad
  %.pn34 = phi { ptr, i32 } [ %i.dr, %bb.ad ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ds, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.af:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 216 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !50
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = and i64 %i.ed, 32
  %.not28 = icmp eq i64 %i.ee, 0
  br i1 %.not28, label %bb.ai, label %.noexc.i64

.noexc.i64:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ef, ptr %11, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 41, ptr %i.a, align 8, !tbaa !51
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc65 unwind label %bb.ag  ; 3 uses

.noexc65:                                         ; preds = %.noexc.i64
  store ptr %i.eg, ptr %11, align 8, !tbaa !48
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.eg, ptr noundef nonnull align 1 dereferenceable(41) @.str.6, i64 41, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !26
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  store i8 0, ptr %i.ej, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit68 unwind label %bb.ah

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit68: ; preds = %.noexc65
  %i.el = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ef
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit68
  %i.en = load i64, ptr %i.ef, align 8, !tbaa !27
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bf

bb.ag:                                            ; preds = %.noexc.i64
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ah:                                            ; preds = %.noexc65
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ef
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ah
  %i.et = load i64, ptr %i.ef, align 8, !tbaa !27
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ag
  %.pn32 = phi { ptr, i32 } [ %i.ep, %bb.ag ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.eq, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.body

bb.ai:                                            ; preds = %bb.af
  %i.ev = load ptr, ptr %1, align 8, !tbaa !145, !nonnull !45, !align !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZNK10cmMakefile12GetBacktraceEv(ptr dead_on_unwind nonnull writable sret(%class.cmListFileBacktrace) align 8 %13, ptr noundef nonnull align 8 dereferenceable(2952) %i.ev)
          to label %bb.aj unwind label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ew = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #24
          to label %.noexc78 unwind label %bb.bc  ; 27 uses

.noexc78:                                         ; preds = %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ey = load ptr, ptr %i.k, align 8, !tbaa !21, !noalias !149 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc78
  %i.ez = load i32, ptr %i.j, align 8, !tbaa !130, !noalias !149
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !21, !noalias !149
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !131, !noalias !149
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !132, !noalias !149
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ex, ptr %i.fd, align 8, !tbaa !150, !noalias !149
  %i.fe = load i64, ptr %i.n, align 8, !tbaa !151, !noalias !149
  store ptr null, ptr %i.k, align 8, !tbaa !21, !noalias !149
  store ptr %i.j, ptr %i.l, align 8, !tbaa !131, !noalias !149
  store ptr %i.j, ptr %i.m, align 8, !tbaa !132, !noalias !149
  store i64 0, ptr %i.n, align 8, !tbaa !151, !noalias !149
  br label %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i.i

bb.al:                                            ; preds = %.noexc78
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !21, !noalias !149
  br label %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i.i

_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i.i: ; preds = %bb.al, %bb.ak
  %.sink13.i = phi ptr [ %i.ex, %bb.al ], [ %i.fb, %bb.ak ]
  %.sink12.i = phi ptr [ %i.ex, %bb.al ], [ %i.fc, %bb.ak ]
  %.sink.i = phi i64 [ 0, %bb.al ], [ %i.fe, %bb.ak ]
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.al ], [ %i.ez, %bb.ak ]
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %.sink13.i, ptr %i.fg, align 8, !tbaa !131, !noalias !149
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %.sink12.i, ptr %i.fh, align 8, !tbaa !132, !noalias !149
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 %.sink.i, ptr %i.fi, align 8, !tbaa !151, !noalias !149
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.ex, align 8, !tbaa !130, !noalias !149
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.fl, ptr %i.fj, align 8, !tbaa !47, !noalias !149
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 64
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 80
  %17 = load ptr, ptr %i.fn, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false), !noalias !149
  %18 = load ptr, ptr %15, align 8, !tbaa !50, !noalias !149
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !47, !noalias !149
  %19 = insertelement <4 x ptr> poison, ptr %17, i64 0
  %20 = insertelement <4 x ptr> %19, ptr %18, i64 1
  %21 = shufflevector <2 x ptr> %i.fp, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x ptr> %20, <4 x ptr> %21, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %22, ptr %i.fm, align 8, !tbaa !47, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !149
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 8 uses
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !24, !noalias !149
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !48, !noalias !149 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.p
  br i1 %i.ft, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75

bb.am:                                            ; preds = %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i.i
  %i.fu = load i64, ptr %i.q, align 8, !tbaa !26, !noalias !149 ; 3 uses
  %i.fv = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nuw nsw i64 %i.fu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.fw, i1 false), !noalias !149
  br label %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75: ; preds = %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i.i
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !48, !noalias !149
  %i.fx = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !149
  store i64 %i.fx, ptr %i.fr, align 8, !tbaa !27, !noalias !149
  %.pre.i77 = load i64, ptr %i.q, align 8, !tbaa !26, !noalias !149
  br label %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i

_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.am
  %i.fy = phi i64 [ %.pre.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ], [ %i.fu, %bb.am ]
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !26, !noalias !149
  store ptr %i.p, ptr %i.o, align 8, !tbaa !48, !noalias !149
  store i64 0, ptr %i.q, align 8, !tbaa !26, !noalias !149
  store i8 0, ptr %i.p, align 8, !tbaa !27, !noalias !149
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.gb = load <2 x ptr>, ptr %i.r, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.gb, ptr %i.ga, align 8, !tbaa !47, !noalias !149
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !52, !noalias !149
  store ptr %i.ge, ptr %i.gc, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !149
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 8 uses
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !24, !noalias !149
  %i.gh = load ptr, ptr %i.s, align 8, !tbaa !48, !noalias !149 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.t
  br i1 %i.gi, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

bb.an:                                            ; preds = %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i
  %i.gj = load i64, ptr %i.u, align 8, !tbaa !26, !noalias !149 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  %i.gl = add nuw nsw i64 %i.gj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gg, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.gl, i1 false), !noalias !149
  br label %_ZN19cmTestDiscoveryArgsC2EOS_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !48, !noalias !149
  %i.gm = load i64, ptr %i.t, align 8, !tbaa !27, !noalias !149
  store i64 %i.gm, ptr %i.gg, align 8, !tbaa !27, !noalias !149
  %.pre18.i = load i64, ptr %i.u, align 8, !tbaa !26, !noalias !149
  br label %_ZN19cmTestDiscoveryArgsC2EOS_.exit.i

_ZN19cmTestDiscoveryArgsC2EOS_.exit.i:            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i, %bb.an
  %i.gn = phi i64 [ %i.gj, %bb.an ], [ %.pre18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 4 uses
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !26, !noalias !149
  store ptr %i.t, ptr %i.s, align 8, !tbaa !48, !noalias !149
  store i64 0, ptr %i.u, align 8, !tbaa !26, !noalias !149
  store i8 0, ptr %i.t, align 8, !tbaa !27, !noalias !149
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.gq = load <2 x ptr>, ptr %i.v, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.gq, ptr %i.gp, align 8, !tbaa !47, !noalias !149
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 216
  %25 = load ptr, ptr %i.gr, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !noalias !149
  %26 = load ptr, ptr %i.dx, align 8, !tbaa !50, !noalias !149
  %i.gt = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !47, !noalias !149
  %27 = insertelement <4 x ptr> poison, ptr %25, i64 0
  %28 = insertelement <4 x ptr> %27, ptr %26, i64 1
  %29 = shufflevector <2 x ptr> %i.gt, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x ptr> %28, <4 x ptr> %29, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %30, ptr %23, align 8, !tbaa !47, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false), !noalias !149
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 232
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !152, !range !64, !noalias !149, !noundef !45
  store i8 %i.gw, ptr %i.gu, align 8, !tbaa !152, !noalias !149
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 4 uses
  %i.gy = load <2 x ptr>, ptr %i.w, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.gy, ptr %i.gx, align 8, !tbaa !47, !noalias !149
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !52, !noalias !149
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false), !noalias !149
  %i.hc = load ptr, ptr %13, align 8, !tbaa !153, !noalias !149 ; 2 uses
  store ptr %i.hc, ptr %3, align 8, !tbaa !153, !noalias !149
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !69, !noalias !149 ; 2 uses
  store ptr null, ptr %i.he, align 8, !tbaa !69, !noalias !149
  store ptr %i.hf, ptr %i.hd, align 8, !tbaa !69, !noalias !149
  store ptr null, ptr %13, align 8, !tbaa !153, !noalias !149
  invoke void @_ZN15cmTestGeneratorC2EP6cmTestRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(416) %i.ew, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_ZN12_GLOBAL__N_118DiscoveryGeneratorC2ENS_9ArgumentsE19cmListFileBacktrace.exit.i unwind label %bb.as, !noalias !149

_ZN12_GLOBAL__N_118DiscoveryGeneratorC2ENS_9ArgumentsE19cmListFileBacktrace.exit.i: ; preds = %_ZN19cmTestDiscoveryArgsC2EOS_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_118DiscoveryGeneratorE, i64 16), ptr %i.ew, align 8, !tbaa !71, !noalias !149
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ew, i64 144 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !21, !noalias !149 ; 3 uses
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i.i.i5.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN12_GLOBAL__N_118DiscoveryGeneratorC2ENS_9ArgumentsE19cmListFileBacktrace.exit.i
  %i.hj = load i32, ptr %i.ex, align 8, !tbaa !130, !noalias !149
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !21, !noalias !149
  %i.hl = load ptr, ptr %i.fg, align 8, !tbaa !131, !noalias !149
  %i.hm = load ptr, ptr %i.fh, align 8, !tbaa !132, !noalias !149
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hg, ptr %i.hn, align 8, !tbaa !150, !noalias !149
  %i.ho = load i64, ptr %i.fi, align 8, !tbaa !151, !noalias !149
  store ptr null, ptr %i.hh, align 8, !tbaa !21, !noalias !149
  store ptr %i.ex, ptr %i.fg, align 8, !tbaa !131, !noalias !149
  store ptr %i.ex, ptr %i.fh, align 8, !tbaa !132, !noalias !149
  store i64 0, ptr %i.fi, align 8, !tbaa !151, !noalias !149
  br label %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i6.i

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_118DiscoveryGeneratorC2ENS_9ArgumentsE19cmListFileBacktrace.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  store ptr null, ptr %i.hp, align 8, !tbaa !21, !noalias !149
  br label %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i6.i

_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i6.i: ; preds = %bb.ap, %bb.ao
  %.sink16.i = phi ptr [ %i.hg, %bb.ap ], [ %i.hl, %bb.ao ]
  %.sink15.i = phi ptr [ %i.hg, %bb.ap ], [ %i.hm, %bb.ao ]
  %.sink14.i = phi i64 [ 0, %bb.ap ], [ %i.ho, %bb.ao ]
  %.sink.i.i.i.i.i.i7.i = phi i32 [ 0, %bb.ap ], [ %i.hj, %bb.ao ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ew, i64 160
  store ptr %.sink16.i, ptr %i.hq, align 8, !tbaa !131, !noalias !149
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ew, i64 168
  store ptr %.sink15.i, ptr %i.hr, align 8, !tbaa !132, !noalias !149
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ew, i64 176
  store i64 %.sink14.i, ptr %i.hs, align 8, !tbaa !151, !noalias !149
  store i32 %.sink.i.i.i.i.i.i7.i, ptr %i.hg, align 8, !tbaa !130, !noalias !149
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ew, i64 184
  %i.hu = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.hu, ptr %i.ht, align 8, !tbaa !47, !noalias !149
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ew, i64 200
  %i.hw = load ptr, ptr %i.fm, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false), !noalias !149
  %31 = load ptr, ptr %14, align 8, !tbaa !50, !noalias !149
  %i.hx = load <2 x ptr>, ptr %16, align 8, !tbaa !47, !noalias !149
  %32 = insertelement <4 x ptr> poison, ptr %i.hw, i64 0
  %33 = insertelement <4 x ptr> %32, ptr %31, i64 1
  %34 = shufflevector <2 x ptr> %i.hx, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %35 = shufflevector <4 x ptr> %33, <4 x ptr> %34, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %35, ptr %i.hv, align 8, !tbaa !47, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !noalias !149
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ew, i64 232 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ew, i64 248 ; 3 uses
  store ptr %i.hz, ptr %i.hy, align 8, !tbaa !24, !noalias !149
  %i.ia = load ptr, ptr %i.fq, align 8, !tbaa !48, !noalias !149 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.fr
  br i1 %i.ib, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i

bb.aq:                                            ; preds = %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i6.i
  %i.ic = load i64, ptr %i.fz, align 8, !tbaa !26, !noalias !149 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.fr, i64 %i.ie, i1 false), !noalias !149
  br label %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i: ; preds = %_ZN14ArgumentParser11ParseResultC2EOS0_.exit.i6.i
  store ptr %i.ia, ptr %i.hy, align 8, !tbaa !48, !noalias !149
  %i.if = load i64, ptr %i.fr, align 8, !tbaa !27, !noalias !149
  store i64 %i.if, ptr %i.hz, align 8, !tbaa !27, !noalias !149
  %.pre19.i = load i64, ptr %i.fz, align 8, !tbaa !26, !noalias !149
  br label %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i9.i

_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i, %bb.aq
  %i.ig = phi i64 [ %.pre19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i ], [ %i.ic, %bb.aq ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ew, i64 240
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !26, !noalias !149
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !48, !noalias !149
  store i64 0, ptr %i.fz, align 8, !tbaa !26, !noalias !149
  store i8 0, ptr %i.fr, align 8, !tbaa !27, !noalias !149
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ew, i64 264
  %i.ij = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.ij, ptr %i.ii, align 8, !tbaa !47, !noalias !149
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ew, i64 280
  %i.il = load ptr, ptr %i.gc, align 8, !tbaa !52, !noalias !149
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i8 0, i64 24, i1 false), !noalias !149
  %i.im = getelementptr inbounds nuw i8, ptr %i.ew, i64 288 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ew, i64 304 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !24, !noalias !149
  %i.io = load ptr, ptr %i.gf, align 8, !tbaa !48, !noalias !149 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gg
  br i1 %i.ip, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i10.i

bb.ar:                                            ; preds = %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i9.i
  %i.iq = load i64, ptr %i.go, align 8, !tbaa !26, !noalias !149 ; 3 uses
  %i.ir = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.ir)
  %i.is = add nuw nsw i64 %i.iq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.in, ptr noundef nonnull align 8 dereferenceable(1) %i.gg, i64 %i.is, i1 false), !noalias !149
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i10.i: ; preds = %_ZN14ArgumentParser8NonEmptyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i9.i
  store ptr %i.io, ptr %i.im, align 8, !tbaa !48, !noalias !149
  %i.it = load i64, ptr %i.gg, align 8, !tbaa !27, !noalias !149
  store i64 %i.it, ptr %i.in, align 8, !tbaa !27, !noalias !149
  %.pre20.i = load i64, ptr %i.go, align 8, !tbaa !26, !noalias !149
  br label %bb.at

bb.as:                                            ; preds = %_ZN19cmTestDiscoveryArgsC2EOS_.exit.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20, !noalias !149
  call fastcc void @_ZN12_GLOBAL__N_19ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %2) #20, !noalias !149
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 416) #22, !noalias !149
  br label %.body79

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i10.i, %bb.ar
  %i.iv = phi i64 [ %i.iq, %bb.ar ], [ %.pre20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i10.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ew, i64 296
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !26, !noalias !149
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !48, !noalias !149
  store i64 0, ptr %i.go, align 8, !tbaa !26, !noalias !149
  store i8 0, ptr %i.gg, align 8, !tbaa !27, !noalias !149
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ew, i64 320
  %i.iy = load <2 x ptr>, ptr %i.gp, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.iy, ptr %i.ix, align 8, !tbaa !47, !noalias !149
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ew, i64 336
  %i.ja = load ptr, ptr %23, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, i8 0, i64 24, i1 false), !noalias !149
  %36 = load ptr, ptr %i.gs, align 8, !tbaa !50, !noalias !149
  %i.jb = load <2 x ptr>, ptr %24, align 8, !tbaa !47, !noalias !149
  %37 = insertelement <4 x ptr> poison, ptr %i.ja, i64 0
  %38 = insertelement <4 x ptr> %37, ptr %36, i64 1
  %39 = shufflevector <2 x ptr> %i.jb, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = shufflevector <4 x ptr> %38, <4 x ptr> %39, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %40, ptr %i.iz, align 8, !tbaa !47, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false), !noalias !149
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ew, i64 368
  %i.jd = load i8, ptr %i.gu, align 8, !tbaa !152, !range !64, !noalias !149, !noundef !45
  store i8 %i.jd, ptr %i.jc, align 8, !tbaa !152, !noalias !149
  %i.je = getelementptr inbounds nuw i8, ptr %i.ew, i64 376
  %i.jf = load <2 x ptr>, ptr %i.gx, align 8, !tbaa !47, !noalias !149
  store <2 x ptr> %i.jf, ptr %i.je, align 8, !tbaa !47, !noalias !149
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ew, i64 392
  %i.jh = load ptr, ptr %i.gz, align 8, !tbaa !52, !noalias !149
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !52, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, i8 0, i64 24, i1 false), !noalias !149
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ew, i64 400
  store ptr %i.hc, ptr %i.ji, align 8, !tbaa !153, !noalias !149
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ew, i64 408
  store ptr %i.hf, ptr %i.jj, align 8, !tbaa !69, !noalias !149
  call void @_ZN19cmTestDiscoveryArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(264) %2) #20, !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.ew, ptr %12, align 8, !tbaa !156
  invoke void @_ZN10cmMakefile16AddTestGeneratorESt10unique_ptrI15cmTestGeneratorSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(2952) %i.ev, ptr noundef nonnull align 8 %12)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.jk = load ptr, ptr %12, align 8, !tbaa !157  ; 3 uses
  %.not.i = icmp eq ptr %i.jk, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_118DiscoveryGeneratorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i

_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i: ; preds = %bb.au
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !71
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(129) %i.jk) #20, !inline_history !127
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_118DiscoveryGeneratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_118DiscoveryGeneratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i, %bb.au
  %i.jo = load ptr, ptr %i.he, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_118DiscoveryGeneratorESt14default_deleteIS1_EED2Ev.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.jp, align 8, !tbaa !73
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !74
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !71
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #20, !inline_history !1
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !71
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #20, !inline_history !1
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !75
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i = phi i32 [ %i.js, %bb.ay ], [ %i.kc, %bb.az ]
  %i.kd = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kd, label %bb.ba, label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, !prof !76

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #20
  br label %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit

_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_118DiscoveryGeneratorESt14default_deleteIS1_EED2Ev.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bf

bb.bb:                                            ; preds = %bb.ai
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bc:                                            ; preds = %bb.aj
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body79

bb.bd:                                            ; preds = %bb.at
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %12, align 8, !tbaa !157  ; 3 uses
  %.not.i82 = icmp eq ptr %i.kh, null
  br i1 %.not.i82, label %.body79, label %_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i83

_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i83: ; preds = %bb.bd
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !71
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(129) %i.kh) #20, !inline_history !127
  br label %.body79

.body79:                                          ; preds = %bb.bd, %_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i83, %bb.bc, %bb.as
  %.pn29 = phi { ptr, i32 } [ %i.iu, %bb.as ], [ %i.kf, %bb.bc ], [ %i.kg, %_ZNKSt14default_deleteI15cmTestGeneratorEclEPS0_.exit.i83 ], [ %i.kg, %bb.bd ]
  call void @_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #20
  br label %bb.be

bb.be:                                            ; preds = %.body79, %bb.bb
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body79 ], [ %i.ke, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body

bb.bf:                                            ; preds = %bb.o, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ true, %_ZN12cmConstStackI17cmListFileContext19cmListFileBacktraceED2Ev.exit ], [ true, %bb.o ]
  %i.kl = load ptr, ptr %i.w, align 8, !tbaa !50  ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %7, i64 248
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kl, %i.kn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.kl, %bb.bf ] ; 3 uses
  %i.ko = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !27
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.kt, %i.kn
  br i1 %.not.i.i.i.i88, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.w, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.bf
  %i.ku = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kl, %bb.bf ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i1.i.i, label %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 256
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !52
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.ku to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kz) #22
  br label %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit

_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit:             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bg
  call void @_ZN19cmTestDiscoveryArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(264) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.la = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.la, %i.lc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.li, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.la, %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit ] ; 3 uses
  %i.ld = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !27
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.li, %i.lc
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit
  %i.lj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.la, %_ZN12_GLOBAL__N_19ArgumentsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bh

end_hunk_1
