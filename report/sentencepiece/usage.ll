Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/usage?download=true
inline.NumInlined: 1220
inline.NumDeleted: 485
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.absl::lts_20260526::NoDestructor" = type { %"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" }
%"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" = type { [8 x i8] }
%"class.absl::lts_20260526::flags_internal::(anonymous namespace)::FlagHelpPrettyPrinter" = type <{ ptr, i64, i64, i64, i64, i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20260526::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::function.6" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"struct.absl::lts_20260526::FlagsUsageConfig" = type { %"class.std::function", %"class.std::function", %"class.std::function", %"class.std::function.0", %"class.std::function.2" }
%"class.std::function.0" = type { %"class.std::_Function_base", ptr }
%"class.std::function.2" = type { %"class.std::_Function_base", ptr }
%"class.absl::lts_20260526::flags_internal::(anonymous namespace)::XMLElement" = type { %"class.std::basic_string_view", %"class.std::basic_string_view" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::function.21" = type { %"class.std::_Function_base", ptr }
%"class.absl::lts_20260526::strings_internal::Splitter" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20260526::ByAnyChar", [8 x i8] }>
%"class.absl::lts_20260526::ByAnyChar" = type { %"class.std::__cxx11::basic_string" }
%"class.absl::lts_20260526::strings_internal::SplitIterator" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20260526::ByAnyChar", [8 x i8] }>
%"class.absl::lts_20260526::strings_internal::Splitter.12" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20260526::ByAnyChar", [8 x i8] }>
%"class.absl::lts_20260526::strings_internal::SplitIterator.14" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20260526::ByAnyChar", [8 x i8] }>
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.40" = type { i8 }
%"class.std::tuple.48" = type { %"struct.std::_Tuple_impl.49" }
%"struct.std::_Tuple_impl.49" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<const absl::lts_20260526::CommandLineFlag *>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZN4absl12lts_2026052616FlagsUsageConfigD2Ev = comdat any

$_ZN4absl12lts_202605268StrSplitINS0_9ByAnyCharEEENS0_16strings_internal8SplitterINS3_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS3_23ConvertibleToStringViewES6_ = comdat any

$_ZN4absl12lts_202605268StrSplitINS0_9ByAnyCharENS0_9SkipEmptyEEENS0_16strings_internal8SplitterINS4_15SelectDelimiterIT_E4typeET0_St17basic_string_viewIcSt11char_traitsIcEEEENS4_23ConvertibleToStringViewES7_SA_ = comdat any

$_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_ = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEEixEOS5_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESV_IJEEEEESt17_Rb_tree_iteratorISM_ESt23_Rb_tree_const_iteratorISM_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISM_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESR_IJEEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISG_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESR_IJEEEEEvPSt13_Rb_tree_nodeISG_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E = comdat any

$_ZN4absl12lts_2026052613base_internal11FastTypeTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9kDummyVarE = comdat any

$_ZSt19piecewise_construct = comdat any

@FLAGS_help = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_helpfull = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_helpshort = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_helppackage = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_version = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_only_check_args = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_helpon = dso_local local_unnamed_addr global i8 0, align 1
@FLAGS_helpmatch = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_112match_substrB5cxx11E = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE = internal unnamed_addr global i32 0, align 4
@_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_111help_formatE = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"default: \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"currently: \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@_ZN4absl12lts_2026052613base_internal11FastTypeTagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9kDummyVarE = linkonce_odr dso_local constant i8 0, comdat, align 1
@"_ZTIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEENS1_10HelpFormatES8_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEENS1_10HelpFormatES8_E3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEENS1_10HelpFormatES8_E3$_0" = internal constant [154 x i8] c"ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEENS1_10HelpFormatES8_E3$_0\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"<?xml version=\221.0\22?>\0A\00", align 1
@.str.27 = private unnamed_addr constant [110 x i8] c"<!-- This output should be used with care. We do not report type names for flags with user defined types -->\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"<!-- Prefer flag only_check_args for validating flag inputs -->\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"<AllFlags>\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"  Flags from \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"No flags matched.\0A\00", align 1
@.str.35 = private unnamed_addr constant [165 x i8] c"Try --helpfull to get a list of all flags or --help=substring shows help for flags which include specified substring in either in the name, or description or path.\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"</AllFlags>\0A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@_ZN4absl12lts_2026052614flags_internal17kStrippedFlagHelpE = external constant [0 x i8], align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@"_ZTIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0" }, align 8
@"_ZTSZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0" = internal constant [175 x i8] c"ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0\00", align 1
@_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex = internal global %"class.absl::lts_20260526::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex = internal global i64 0, align 8
@"_ZTIZN4absl12lts_2026052614flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS1_10HelpFormatES6_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2026052614flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS1_10HelpFormatES6_E3$_0" }, align 8
@"_ZTSZN4absl12lts_2026052614flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS1_10HelpFormatES6_E3$_0" = internal constant [119 x i8] c"ZN4absl12lts_2026052614flags_internal9FlagsHelpERSoSt17basic_string_viewIcSt11char_traitsIcEENS1_10HelpFormatES6_E3$_0\00", align 1
@"_ZTIZN4absl12lts_2026052614flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2026052614flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0" }, align 8
@"_ZTSZN4absl12lts_2026052614flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0" = internal constant [107 x i8] c"ZN4absl12lts_2026052614flags_internal16HandleUsageFlagsERSoSt17basic_string_viewIcSt11char_traitsIcEEE3$_0\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal8FlagHelpERSoRKNS0_15CommandLineFlagENS1_10HelpFormatE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::flags_internal::(anonymous namespace)::FlagHelpPrettyPrinter", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %24 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %28 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %29 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 80, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.g, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 2, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.11, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.i = load ptr, ptr %1, align 8, !tbaa !24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { i64, ptr } %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !117 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  store i64 %i.l, ptr %6, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.m, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27
  call void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.n = load ptr, ptr %4, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  invoke fastcc void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(41) %3, i64 %i.p, ptr %i.n, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 1, ptr %8, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.12, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.w = load ptr, ptr %1, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !117
  %i.z = load ptr, ptr %10, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31
  store i64 %i.ab, ptr %9, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i64 2, ptr %11, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.13, ptr %i.ad, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ae = load ptr, ptr %7, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  invoke fastcc void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(41) %3, i64 %i.ag, ptr %i.ae, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.am = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ar = load ptr, ptr %1, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !117
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

_ZNSt14_Function_baseD2Ev.exit70:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap, %bb.u, %bb.t
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bv, %bb.t ], [ %i.hl, %bb.ap ], [ %lpad.loopexit.split-lp291, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hz = load ptr, ptr %i.bk, align 8, !tbaa !69
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISE_EESt4lessIS5_ESaIS6_IS7_SG_EEEESt10_Select1stISM_ESI_SaISM_EE8_M_eraseEPSt13_Rb_tree_nodeISM_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.hz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEED2Ev.exit92 unwind label %bb.ax

bb.ax:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit70
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #25
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEED2Ev.exit92: ; preds = %_ZNSt14_Function_baseD2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEED2Ev.exit92 ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal23SetFlagsHelpMatchSubstrESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_112match_substrB5cxx11E, align 8, !tbaa !63 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit._crit_edge

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit._crit_edge: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !31
  br label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.e unwind label %bb.f       ; 5 uses

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !31
  store i8 0, ptr %i.g, align 8, !tbaa !32
  store ptr %i.f, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_112match_substrB5cxx11E, align 8, !tbaa !63
  br label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit._crit_edge, %bb.e
  %i.l = phi i64 [ 0, %bb.e ], [ %.pre, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit._crit_edge ]
  %i.m = phi ptr [ %i.f, %bb.e ], [ %i.d, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit._crit_edge ]
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, i64 noundef %i.l, ptr noundef %1, i64 noundef %0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit1 unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit1:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 %0, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal18SetFlagsHelpFormatENS1_10HelpFormatE(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 %0, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_111help_formatE, align 4, !tbaa !61
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal16DeduceUsageFlagsESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %i.a = icmp ult i64 %0, 4
  br i1 %i.a, label %bb.w, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = icmp ne i32 %i.b, 1886152040
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.w

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %8 = add i64 %0, -4                             ; 5 uses
  switch i64 %8, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit [
    i64 0, label %bb.c
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i49
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  %i.h = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.e, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 1, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

bb.h:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.i, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i23 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i23, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22: ; preds = %bb.j, %bb.i, %bb.h
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 5, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit24 unwind label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit24: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i22
  tail call void @_ZN4absl12lts_2026052614flags_internal23SetFlagsHelpMatchSubstrESt17basic_string_viewIcSt11char_traitsIcEE(i64 %2, ptr %3)
  br label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.p = load i32, ptr %i.f, align 1
  %i.q = xor i32 %i.p, 1668571501
  %i.r = getelementptr i8, ptr %i.f, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = xor i32 %i.t, 104
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i45

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.z = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.l, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25, !prof !55

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.ab = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i26 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i26, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25: ; preds = %bb.m, %bb.l, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 5, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit27 unwind label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #25
  unreachable

_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit27: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i25
  tail call void @_ZN4absl12lts_2026052614flags_internal23SetFlagsHelpMatchSubstrESt17basic_string_viewIcSt11char_traitsIcEE(i64 %2, ptr %3)
  br label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28: ; preds = %bb.b
  %bcmp.i29 = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull @.str.3, i64 %8)
  %i.ae = icmp eq i32 %bcmp.i29, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28
  %i.af = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.o, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32, !prof !55

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i33 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i33, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32: ; preds = %bb.p, %bb.o, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit31
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 5, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit34 unwind label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit34: ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 1, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.4, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %2, ptr %6, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 1, ptr %7, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.5, ptr %i.al, align 8
  call void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  %i.am = load ptr, ptr %4, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  invoke void @_ZN4absl12lts_2026052614flags_internal23SetFlagsHelpMatchSubstrESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ao, ptr %i.am)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit34
  %i.ap = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

bb.s:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit34
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.s
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !32
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.au

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38: ; preds = %bb.b
  %bcmp.i39 = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull @.str.6, i64 %8)
  %i.ba = icmp eq i32 %bcmp.i39, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit41, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
  %i.bb = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42, !prof !55

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit41
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i43 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i43, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42: ; preds = %bb.u, %bb.t, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit41
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 3, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit unwind label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #25
  unreachable

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp.i46 = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull @.str.7, i64 %8)
  %i.bg = icmp eq i32 %bcmp.i46, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit48, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i45
  tail call void @_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE(i32 noundef 2)
  br label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i49: ; preds = %bb.b
  %bcmp.i50 = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull @.str.8, i64 %8)
  %i.bh = icmp eq i32 %bcmp.i50, 0
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit52, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i49
  tail call void @_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE(i32 noundef 4)
  br label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

bb.w:                                             ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.a
  switch i64 %0, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit [
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53
    i64 15, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i60
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53: ; preds = %bb.w
  %i.bi = load i32, ptr %1, align 1
  %i.bj = xor i32 %i.bi, 1936876918
  %i.bk = getelementptr i8, ptr %1, i64 3
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 1852795251
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit56, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit56: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53
  %i.br = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.x, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57, !prof !55

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit56
  %i.bt = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i58 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i58, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57: ; preds = %bb.y, %bb.x, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit56
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 6, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #25
  unreachable

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i60: ; preds = %bb.w
  %i.bw = load i64, ptr %1, align 1
  %i.bx = xor i64 %i.bw, 7307199657118821999
  %i.by = getelementptr i8, ptr %1, i64 7
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = xor i64 %i.bz, 8315740999501177701
  %i.cb = or i64 %i.bx, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit63, label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit63: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i60
  %i.cf = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex acquire, align 8
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.aa, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64, !prof !55

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit63
  %i.ch = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  %.not.i.i65 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i65, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex, align 8, !tbaa !57
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex) #23
  br label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64: ; preds = %bb.ab, %bb.aa, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit63
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
  store i32 7, ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19help_modeE, align 4, !tbaa !59
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEvE5mutex)
          to label %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #25
  unreachable

_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53, %bb.w, %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i49, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i, %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit24, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit52, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit27
  %.0 = phi i1 [ true, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i64 ], [ true, %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit27 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i ], [ true, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit48 ], [ true, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit52 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i49 ], [ true, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i42 ], [ true, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_119HelpAttributesMutexEv.exit.i57 ], [ true, %_ZN4absl12lts_2026052614flags_internal16SetFlagsHelpModeENS1_8HelpModeE.exit24 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38 ], [ false, %bb.w ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i60 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28 ], [ false, %bb.b ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i45 ]
  ret i1 %.0
}

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal9MaybeExitENS1_8HelpModeE(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 0, label %bb.b
    i32 7, label %bb.c
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void @exit(i32 noundef 0) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #29
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_121FlagHelpPrettyPrinter5WriteESt17basic_string_viewIcSt11char_traitsIcEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %0, i64 %1, ptr %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.absl::lts_20260526::strings_internal::Splitter", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20260526::ByAnyChar", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 18 uses
  %8 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 11 uses
  %9 = alloca %"class.absl::lts_20260526::strings_internal::Splitter.12", align 8 ; 8 uses
  %10 = alloca %"class.absl::lts_20260526::ByAnyChar", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator.14", align 8 ; 15 uses
  %12 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator.14", align 8 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN4absl12lts_202605269ByAnyCharC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 2, ptr nonnull @.str.18)
  invoke void @_ZN4absl12lts_202605268StrSplitINS0_9ByAnyCharEEENS0_16strings_internal8SplitterINS3_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS3_23ConvertibleToStringViewES6_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::strings_internal::Splitter") align 8 %5, i64 %1, ptr %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4absl12lts_202605269ByAnyCharD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !32
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZN4absl12lts_202605269ByAnyCharD2Ev.exit

_ZN4absl12lts_202605269ByAnyCharD2Ev.exit:        ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %7, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit unwind label %bb.f

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %_ZN4absl12lts_202605269ByAnyCharD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEC2ENSB_5StateEPKSA_(ptr noundef nonnull align 8 dereferenceable(73) %8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader unwind label %bb.g

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader: ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !88
  %i.m = load i32, ptr %i.k, align 8, !tbaa !88
  %i.n = icmp ne i32 %i.l, %i.m
  %i.o = load i64, ptr %7, align 8
  %i.p = load i64, ptr %8, align 8
  %i.q = icmp ne i64 %i.o, %i.p
  %.not3.i267 = select i1 %i.n, i1 true, i1 %i.q
  br i1 %.not3.i267, label %.lr.ph271, label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit._crit_edge

.lr.ph271:                                        ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_9ByAnyCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE3endEv.exit.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
end_hunk_1
