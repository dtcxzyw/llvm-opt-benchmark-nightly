inline.NumInlined: 667
inline.NumDeleted: 290
begin_hunk_0
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.Field = type { i32, ptr, i32 }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::set" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.13, [32 x i8] }
%struct.anon.13 = type { i16, i32, i32, ptr }
%"class.icu_78::CStr" = type { [8 x i8], %"class.icu_78::CharString" }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.23" = type { i8 }
%"class.std::tuple.31" = type { %"struct.std::_Tuple_impl.32" }
%"struct.std::_Tuple_impl.32" = type { %"struct.std::_Head_base.33" }
%"struct.std::_Head_base.33" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::map<std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::set<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEES8_SaISB_ISC_SF_EEEixERSC_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIS5_St4lessIS5_ESaIS5_EES8_SaISt4pairIKS5_SA_EEEixEOS5_ = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESQ_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESQ_IJEEEEEvPSt13_Rb_tree_nodeISH_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_St3setIS5_St4lessIS5_ESaIS5_EESB_SaIS6_IS7_SD_EEEESt10_Select1stISH_ESB_SaISH_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESM_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIS5_St4lessIS5_ESaIS5_EEESt10_Select1stISD_ESA_SaISD_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@_ZL12systemParams = internal constant [25 x %struct.USystemParams] [%struct.USystemParams { ptr @.str.75, ptr @paramStatic, ptr @.str.76, i32 0 }, %struct.USystemParams { ptr @.str.77, ptr @paramStatic, ptr @.str.78, i32 0 }, %struct.USystemParams { ptr @.str.79, ptr @paramStatic, ptr @.str.80, i32 0 }, %struct.USystemParams { ptr @.str.81, ptr @paramStatic, ptr @.str.82, i32 0 }, %struct.USystemParams { ptr @.str.83, ptr @paramStatic, ptr @.str.84, i32 0 }, %struct.USystemParams { ptr @.str.85, ptr @paramInteger, ptr @.str.86, i32 4000 }, %struct.USystemParams { ptr @.str.87, ptr @paramPlatform, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.88, ptr @paramLocaleDefault, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.89, ptr @paramLocaleDefaultBcp47, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.90, ptr @paramConverterDefault, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.91, ptr @paramStatic, ptr @.str.92, i32 0 }, %struct.USystemParams { ptr @.str.93, ptr @paramIcudataPath, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.94, ptr @paramCldrVersion, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.95, ptr @paramTimezoneVersion, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.96, ptr @paramTimezoneDefault, ptr null, i32 0 }, %struct.USystemParams { ptr @.str.97, ptr @paramInteger, ptr @.str.86, i32 64 }, %struct.USystemParams { ptr @.str.98, ptr @paramInteger, ptr @.str.99, i32 0 }, %struct.USystemParams { ptr @.str.100, ptr @paramInteger, ptr @.str.86, i32 4 }, %struct.USystemParams { ptr @.str.101, ptr @paramInteger, ptr @.str.86, i32 0 }, %struct.USystemParams { ptr @.str.102, ptr @paramStatic, ptr @.str.103, i32 0 }, %struct.USystemParams { ptr @.str.104, ptr @paramStatic, ptr @.str.103, i32 0 }, %struct.USystemParams { ptr @.str.105, ptr @paramStatic, ptr @.str.106, i32 0 }, %struct.USystemParams { ptr @.str.107, ptr @paramStatic, ptr @.str.108, i32 0 }, %struct.USystemParams { ptr @.str.109, ptr @paramInteger, ptr @.str.99, i32 1 }, %struct.USystemParams { ptr @.str.110, ptr @paramInteger, ptr @.str.99, i32 1 }], align 16
@.str.1 = private unnamed_addr constant [33 x i8] c" <icuSystemParams type=\22icu4c\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"    <param name=\22%s\22>%s</param>\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  <!-- n=\22%s\22 ERROR: %s -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" </icuSystemParams>\0A\00", align 1
@_ZL16gKnownIssuesLock = internal global %"class.icu_78::UMutex" zeroinitializer, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"KNOWN ISSUES\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ICU-\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CLDR-\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"https://unicode-org.atlassian.net/browse/\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@_ZL20names_UDebugEnumType = internal unnamed_addr constant [6 x %struct.Field] [%struct.Field { i32 5, ptr @.str.13, i32 0 }, %struct.Field { i32 5, ptr @.str.14, i32 1 }, %struct.Field { i32 5, ptr @.str.15, i32 2 }, %struct.Field { i32 5, ptr @.str.16, i32 3 }, %struct.Field { i32 5, ptr @.str.17, i32 4 }, %struct.Field { i32 5, ptr @.str.18, i32 5 }], align 16
@_ZL25names_UCalendarDateFields = internal unnamed_addr constant [24 x %struct.Field] [%struct.Field { i32 5, ptr @.str.19, i32 0 }, %struct.Field { i32 5, ptr @.str.20, i32 1 }, %struct.Field { i32 5, ptr @.str.21, i32 2 }, %struct.Field { i32 5, ptr @.str.22, i32 3 }, %struct.Field { i32 5, ptr @.str.23, i32 4 }, %struct.Field { i32 5, ptr @.str.24, i32 5 }, %struct.Field { i32 5, ptr @.str.25, i32 6 }, %struct.Field { i32 5, ptr @.str.26, i32 7 }, %struct.Field { i32 5, ptr @.str.27, i32 8 }, %struct.Field { i32 5, ptr @.str.28, i32 9 }, %struct.Field { i32 5, ptr @.str.29, i32 10 }, %struct.Field { i32 5, ptr @.str.30, i32 11 }, %struct.Field { i32 5, ptr @.str.31, i32 12 }, %struct.Field { i32 5, ptr @.str.32, i32 13 }, %struct.Field { i32 5, ptr @.str.33, i32 14 }, %struct.Field { i32 5, ptr @.str.34, i32 15 }, %struct.Field { i32 5, ptr @.str.35, i32 16 }, %struct.Field { i32 5, ptr @.str.36, i32 17 }, %struct.Field { i32 5, ptr @.str.37, i32 18 }, %struct.Field { i32 5, ptr @.str.38, i32 19 }, %struct.Field { i32 5, ptr @.str.39, i32 20 }, %struct.Field { i32 5, ptr @.str.40, i32 21 }, %struct.Field { i32 5, ptr @.str.41, i32 22 }, %struct.Field { i32 5, ptr @.str.42, i32 23 }], align 16
@_ZL21names_UCalendarMonths = internal unnamed_addr constant [13 x %struct.Field] [%struct.Field { i32 5, ptr @.str.43, i32 0 }, %struct.Field { i32 5, ptr @.str.44, i32 1 }, %struct.Field { i32 5, ptr @.str.45, i32 2 }, %struct.Field { i32 5, ptr @.str.46, i32 3 }, %struct.Field { i32 5, ptr @.str.47, i32 4 }, %struct.Field { i32 5, ptr @.str.48, i32 5 }, %struct.Field { i32 5, ptr @.str.49, i32 6 }, %struct.Field { i32 5, ptr @.str.50, i32 7 }, %struct.Field { i32 5, ptr @.str.51, i32 8 }, %struct.Field { i32 5, ptr @.str.52, i32 9 }, %struct.Field { i32 5, ptr @.str.53, i32 10 }, %struct.Field { i32 5, ptr @.str.54, i32 11 }, %struct.Field { i32 5, ptr @.str.55, i32 12 }], align 16
@_ZL22names_UDateFormatStyle = internal unnamed_addr constant [4 x %struct.Field] [%struct.Field { i32 5, ptr @.str.56, i32 0 }, %struct.Field { i32 5, ptr @.str.57, i32 1 }, %struct.Field { i32 5, ptr @.str.58, i32 2 }, %struct.Field { i32 5, ptr @.str.59, i32 3 }], align 16
@_ZL19names_UAcceptResult = internal unnamed_addr constant [3 x %struct.Field] [%struct.Field { i32 12, ptr @.str.60, i32 0 }, %struct.Field { i32 12, ptr @.str.61, i32 1 }, %struct.Field { i32 12, ptr @.str.62, i32 2 }], align 16
@_ZL24names_UColAttributeValue = internal unnamed_addr constant [11 x %struct.Field] [%struct.Field { i32 5, ptr @.str.63, i32 0 }, %struct.Field { i32 5, ptr @.str.64, i32 1 }, %struct.Field { i32 5, ptr @.str.65, i32 2 }, %struct.Field { i32 5, ptr @.str.66, i32 3 }, %struct.Field { i32 5, ptr @.str.67, i32 15 }, %struct.Field { i32 5, ptr @.str.68, i32 16 }, %struct.Field { i32 5, ptr @.str.69, i32 17 }, %struct.Field { i32 5, ptr @.str.70, i32 20 }, %struct.Field { i32 5, ptr @.str.71, i32 21 }, %struct.Field { i32 5, ptr @.str.72, i32 24 }, %struct.Field { i32 5, ptr @.str.73, i32 25 }], align 16
@.str.13 = private unnamed_addr constant [20 x i8] c"UDBG_UDebugEnumType\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"UDBG_UCalendarDateFields\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"UDBG_UCalendarMonths\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"UDBG_UDateFormatStyle\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"UDBG_UAcceptResult\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"UDBG_UColAttributeValue\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"UCAL_ERA\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"UCAL_YEAR\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"UCAL_MONTH\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"UCAL_WEEK_OF_YEAR\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"UCAL_WEEK_OF_MONTH\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"UCAL_DATE\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"UCAL_DAY_OF_YEAR\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"UCAL_DAY_OF_WEEK\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"UCAL_DAY_OF_WEEK_IN_MONTH\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"UCAL_AM_PM\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"UCAL_HOUR\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"UCAL_HOUR_OF_DAY\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"UCAL_MINUTE\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"UCAL_SECOND\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"UCAL_MILLISECOND\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"UCAL_ZONE_OFFSET\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"UCAL_DST_OFFSET\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"UCAL_YEAR_WOY\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"UCAL_DOW_LOCAL\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"UCAL_EXTENDED_YEAR\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"UCAL_JULIAN_DAY\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"UCAL_MILLISECONDS_IN_DAY\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"UCAL_IS_LEAP_MONTH\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"UCAL_ORDINAL_MONTH\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"UCAL_JANUARY\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"UCAL_FEBRUARY\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"UCAL_MARCH\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"UCAL_APRIL\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"UCAL_MAY\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"UCAL_JUNE\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"UCAL_JULY\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"UCAL_AUGUST\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"UCAL_SEPTEMBER\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"UCAL_OCTOBER\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"UCAL_NOVEMBER\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"UCAL_DECEMBER\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"UCAL_UNDECIMBER\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"UDAT_FULL\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"UDAT_LONG\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"UDAT_MEDIUM\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"UDAT_SHORT\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"ULOC_ACCEPT_FAILED\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"ULOC_ACCEPT_VALID\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"ULOC_ACCEPT_FALLBACK\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"UCOL_PRIMARY\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"UCOL_SECONDARY\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"UCOL_TERTIARY\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"UCOL_QUATERNARY\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"UCOL_IDENTICAL\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"UCOL_OFF\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"UCOL_ON\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"UCOL_SHIFTED\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"UCOL_NON_IGNORABLE\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"UCOL_LOWER_FIRST\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"UCOL_UPPER_FIRST\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.76 = private unnamed_addr constant [120 x i8] c" Copyright (C) 2016 and later: Unicode, Inc. and others. License & terms of use: http://www.unicode.org/copyright.html \00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"icu4c\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"product.full\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"International Components for Unicode for C/C++\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"78.3\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"version.unicode\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"17.0\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"platform.number\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"platform.type\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"locale.default\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"locale.default.bcp47\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"converter.default\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"icudata.name\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"icudt78l\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"icudata.path\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"cldr.version\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"tz.version\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"tz.default\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"cpu.bits\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"cpu.big_endian\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"os.wchar_width\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"os.charset_family\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"os.host\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"x86_64-pc-linux-gnu\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"build.build\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"build.cc\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"/opt-bench/work/icu/clang\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"build.cxx\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"/opt-bench/work/icu/clang++\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"uconfig.internal_digitlist\00", align 1
@.str.110 = private unnamed_addr constant [27 x i8] c"uconfig.have_parseallinput\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"cldrbug:\00", align 1
@.str.114 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8
@switch.table.udbg_enumExpectedCount = private unnamed_addr constant [6 x i8] c"\06\18\0D\04\03\1A", align 4
@switch.table.udbg_enumArrayValue = private unnamed_addr constant [6 x i8] c"\06\18\0D\04\03\0B", align 4
@switch.table.udbg_enumByName = private unnamed_addr constant [6 x ptr] [ptr @_ZL20names_UDebugEnumType, ptr @_ZL25names_UCalendarDateFields, ptr @_ZL21names_UCalendarMonths, ptr @_ZL22names_UDateFormatStyle, ptr @_ZL19names_UAcceptResult, ptr @_ZL24names_UColAttributeValue], align 8
@switch.table.udbg_enumByName.4 = private unnamed_addr constant [5 x i8] c"\06\18\0D\04\03", align 8

@_ZN11KnownIssuesC1Ev = unnamed_addr alias void (ptr), ptr @_ZN11KnownIssuesC2Ev
@_ZN11KnownIssuesD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11KnownIssuesD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 25) i32 @udbg_enumCount(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %_ZL15_udbg_enumCount14UDebugEnumTypea.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumArrayValue, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL15_udbg_enumCount14UDebugEnumTypea.exit

_ZL15_udbg_enumCount14UDebugEnumTypea.exit:       ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 27) i32 @udbg_enumExpectedCount(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %_ZL15_udbg_enumCount14UDebugEnumTypea.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumExpectedCount, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL15_udbg_enumCount14UDebugEnumTypea.exit

_ZL15_udbg_enumCount14UDebugEnumTypea.exit:       ; preds = %bb.a, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @udbg_enumName(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = icmp ult i32 %0, 6
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %switch.lookup, label %_ZL16_udbg_enumFields14UDebugEnumType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumArrayValue, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %.not = icmp samesign ult i32 %1, %switch.ext
  br i1 %.not, label %switch.lookup16, label %_ZL16_udbg_enumFields14UDebugEnumType.exit

switch.lookup16:                                  ; preds = %switch.lookup
  %i.d = zext nneg i32 %0 to i64
  %switch.gep17 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.udbg_enumByName, i64 %i.d
  %switch.load18 = load ptr, ptr %switch.gep17, align 8
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %switch.load18, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = load i32, ptr %i.f, align 8, !tbaa !12
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  br label %_ZL16_udbg_enumFields14UDebugEnumType.exit

_ZL16_udbg_enumFields14UDebugEnumType.exit:       ; preds = %switch.lookup16, %bb.a, %switch.lookup
  %.1 = phi ptr [ null, %bb.a ], [ null, %switch.lookup ], [ %i.k, %switch.lookup16 ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @udbg_enumArrayValue(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = icmp ult i32 %0, 6
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %switch.lookup, label %_ZL16_udbg_enumFields14UDebugEnumType.exit

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumArrayValue, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %.not = icmp samesign ult i32 %1, %switch.ext
  br i1 %.not, label %switch.lookup14, label %_ZL16_udbg_enumFields14UDebugEnumType.exit

switch.lookup14:                                  ; preds = %switch.lookup
  %i.d = zext nneg i32 %0 to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.udbg_enumByName, i64 %i.d
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %switch.load16, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !13
  br label %_ZL16_udbg_enumFields14UDebugEnumType.exit

_ZL16_udbg_enumFields14UDebugEnumType.exit:       ; preds = %switch.lookup14, %bb.a, %switch.lookup
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %switch.lookup ], [ %i.h, %switch.lookup14 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @udbg_enumByName(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ult i32 %0, 6
  br i1 %or.cond, label %switch.lookup, label %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread

switch.lookup:                                    ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.udbg_enumByName, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %.not = icmp eq i32 %0, 5
  %i.b = zext nneg i32 %0 to i64
  %switch.gep60 = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumByName.4, i64 %i.b
  br label %_ZL16_udbg_enumFields14UDebugEnumType.exit.split

_ZL16_udbg_enumFields14UDebugEnumType.exit.split: ; preds = %switch.lookup, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %switch.lookup ] ; 4 uses
  br i1 %.not, label %switch.lookup59, label %switch.lookup57

switch.lookup57:                                  ; preds = %_ZL16_udbg_enumFields14UDebugEnumType.exit.split
  %switch.load59 = load i8, ptr %switch.gep60, align 1
  %switch.ext = zext i8 %switch.load59 to i64
  br label %switch.lookup59

switch.lookup59:                                  ; preds = %_ZL16_udbg_enumFields14UDebugEnumType.exit.split, %switch.lookup57
  %indvars.iv.a = phi i64 [ %switch.ext, %switch.lookup57 ], [ 11, %_ZL16_udbg_enumFields14UDebugEnumType.exit.split ]
  %.not33 = icmp samesign ult i64 %indvars.iv, %indvars.iv.a
  br i1 %.not33, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %switch.lookup59
  %.not64 = icmp eq i32 %0, 5
  %i.c = zext nneg i32 %0 to i64
  %switch.gep63 = getelementptr inbounds nuw i8, ptr @switch.table.udbg_enumByName.4, i64 %i.c
  br label %.preheader

bb.b:                                             ; preds = %switch.lookup59
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %switch.load, i64 %indvars.iv ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !12
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.i) #21
  %.not32 = icmp eq i32 %i.j, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not32, label %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread.sink.split, label %_ZL16_udbg_enumFields14UDebugEnumType.exit.split, !llvm.loop !14

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.c ], [ 0, %.preheader.preheader ] ; 4 uses
  br i1 %.not64, label %.preheader.a, label %switch.lookup60

switch.lookup60:                                  ; preds = %.preheader
  %switch.load62 = load i8, ptr %switch.gep63, align 1
  %switch.ext63 = zext i8 %switch.load62 to i64
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader, %switch.lookup60
  %indvars.iv47.a = phi i64 [ %switch.ext63, %switch.lookup60 ], [ 11, %.preheader ]
  %.not35 = icmp samesign ult i64 %indvars.iv47, %indvars.iv47.a
  br i1 %.not35, label %bb.c, label %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread

bb.c:                                             ; preds = %.preheader.a
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %switch.load, i64 %indvars.iv47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.m) #21
  %.not34 = icmp eq i32 %i.n, 0
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br i1 %.not34, label %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread.sink.split, label %.preheader, !llvm.loop !16

_ZL16_udbg_enumFields14UDebugEnumType.exit.thread.sink.split: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %indvars.iv47, %bb.c ], [ %indvars.iv, %bb.b ]
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %switch.load, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13
  br label %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread

_ZL16_udbg_enumFields14UDebugEnumType.exit.thread: ; preds = %.preheader.a, %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread.sink.split, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %i.r, %_ZL16_udbg_enumFields14UDebugEnumType.exit.thread.sink.split ], [ -1, %.preheader.a ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @udbg_getPlatform() local_unnamed_addr #0 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define i32 @paramEmpty(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @u_terminateChars_78(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define i32 @paramStatic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = load i32, ptr %3, align 4, !tbaa !17
  %i.e = icmp slt i32 %i.d, 1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %paramEmpty.exit.sink.split, label %paramEmpty.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %paramEmpty.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %paramEmpty.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @uprv_min_78(i32 noundef %i.g, i32 noundef %2)
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @strncpy(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.i) #22 ; 0 uses
  br label %paramEmpty.exit.sink.split

paramEmpty.exit.sink.split:                       ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.k = tail call i32 @u_terminateChars_78(ptr noundef %1, i32 noundef %2, i32 noundef %.sink, ptr noundef nonnull %3)
  br label %paramEmpty.exit

paramEmpty.exit:                                  ; preds = %paramEmpty.exit.sink.split, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.k, %paramEmpty.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @paramInteger(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !21
  switch i8 %i.f, label %bb.h [
    i8 100, label %bb.d
    i8 120, label %bb.e
    i8 111, label %bb.f
    i8 98, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22
  %i.i = tail call fastcc noundef i32 @_ZL21integerToStringBufferPciiiP10UErrorCode(ptr noundef %1, i32 noundef %2, i32 noundef %i.h, i32 noundef 10, ptr noundef nonnull %3)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = tail call fastcc noundef i32 @_ZL21integerToStringBufferPciiiP10UErrorCode(ptr noundef %1, i32 noundef %2, i32 noundef %i.k, i32 noundef 16, ptr noundef nonnull %3)
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  %i.o = tail call fastcc noundef i32 @_ZL21integerToStringBufferPciiiP10UErrorCode(ptr noundef %1, i32 noundef %2, i32 noundef %i.n, i32 noundef 8, ptr noundef nonnull %3)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22
  %i.r = tail call fastcc noundef i32 @_ZL21integerToStringBufferPciiiP10UErrorCode(ptr noundef %1, i32 noundef %2, i32 noundef %i.q, i32 noundef 2, ptr noundef nonnull %3)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store i32 5, ptr %3, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.h ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL21integerToStringBufferPciiiP10UErrorCode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 2, 17) %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [300 x i8], align 16              ; 5 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !17
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = call i32 @T_CString_integerToString_78(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3) ; 0 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !17     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.not22.i = icmp eq ptr %0, null
  br i1 %.not22.i, label %_ZL20stringToStringBufferPciPKcP10UErrorCode.exit, label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.i = call ptr @u_errorName_78(i32 noundef %i.e) ; 2 uses
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #21
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %.not21.i = icmp eq ptr %0, null
  br i1 %.not21.i, label %_ZL20stringToStringBufferPciPKcP10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink26.i = phi i32 [ %i.h, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.sink.i = phi ptr [ %i.a, %bb.c ], [ %i.i, %bb.d ]
  %i.l = call i32 @uprv_min_78(i32 noundef %.sink26.i, i32 noundef %1)
  %i.m = sext i32 %i.l to i64
  %i.n = call ptr @strncpy(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i, i64 noundef %i.m) #22 ; 0 uses
  br label %_ZL20stringToStringBufferPciPKcP10UErrorCode.exit

_ZL20stringToStringBufferPciPKcP10UErrorCode.exit: ; preds = %bb.c, %bb.d, %.sink.split.i
  %.018.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ %.sink26.i, %.sink.split.i ]
  %i.o = call noundef i32 @u_terminateChars_78(ptr noundef %0, i32 noundef %1, i32 noundef %.018.i, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZL20stringToStringBufferPciPKcP10UErrorCode.exit
  %.0 = phi i32 [ %i.o, %_ZL20stringToStringBufferPciPKcP10UErrorCode.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @paramCldrVersion(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %i.b = alloca [4 x i8], align 1                 ; 4 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !17
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @ulocdata_getCLDRVersion_78(ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.e = load i32, ptr %3, align 4, !tbaa !17
end_hunk_0
