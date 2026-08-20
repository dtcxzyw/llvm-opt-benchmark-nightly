inline.NumInlined: 1282
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::time_internal::cctz::PosixTimeZone" = type { %"class.std::__cxx11::basic_string", i64, %"class.std::__cxx11::basic_string", i64, %"struct.absl::lts_20250512::time_internal::cctz::PosixTransition", %"struct.absl::lts_20250512::time_internal::cctz::PosixTransition" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::lts_20250512::time_internal::cctz::PosixTransition" = type { %"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Date", %"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Time" }
%"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Date" = type { i32, %union.anon.9 }
%union.anon.9 = type { %"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Date::NonLeapDay" }
%"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Date::NonLeapDay" = type { i64 }
%"struct.absl::lts_20250512::time_internal::cctz::PosixTransition::Time" = type { i64 }
%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup" = type { %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", i32, i8, ptr }
%"class.absl::lts_20250512::time_internal::cctz::detail::civil_time" = type { %"struct.absl::lts_20250512::time_internal::cctz::detail::fields" }
%"struct.absl::lts_20250512::time_internal::cctz::detail::fields" = type <{ i64, i8, i8, i8, i8, i8, [3 x i8] }>
%"struct.absl::lts_20250512::time_internal::cctz::Transition" = type { i64, i8, [7 x i8], %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time" }
%struct.tzhead = type { [4 x i8], [1 x i8], [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%"struct.absl::lts_20250512::time_internal::cctz::(anonymous namespace)::Header" = type { i64, i64, i64, i64, i64, i64 }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.5" = type { i8 }
%"struct.absl::lts_20250512::time_internal::cctz::Transition::ByCivilTime" = type { i8 }
%"class.std::chrono::duration" = type { i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.15" }
%"struct.std::_Head_base.15" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::unique_ptr.18" = type { %"struct.std::__uniq_ptr_data.19" }
%"struct.std::__uniq_ptr_data.19" = type { %"class.std::__uniq_ptr_impl.20" }
%"class.std::__uniq_ptr_impl.20" = type { %"class.std::tuple.21" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.25" }
%"struct.std::_Head_base.25" = type { ptr }
%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup" = type { i32, %"class.std::chrono::time_point", %"class.std::chrono::time_point", %"class.std::chrono::time_point" }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.39 }
%union.anon.39 = type { i32 }

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7reserveEm = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEES6_ = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz13PosixTimeZoneD2Ev = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_ = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEEl = comdat any

$_ZNSt6vectorIcSaIcEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE6resizeEm = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7reserveEm = comdat any

$_ZNK4absl12lts_2025051213time_internal4cctz10Transition11ByCivilTimeclERKS3_S6_ = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD2Ev = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt19__shrink_to_fit_auxISt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS5_EELb1EE8_S_do_itERS7_ = comdat any

$_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm = comdat any

@_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kSecsPerYearE = internal unnamed_addr constant [2 x i32] [i32 31536000, i32 31622400], align 4
@_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kDaysPerYearE = internal unnamed_addr constant [2 x i32] [i32 365, i32 366], align 4
@constinit = private unnamed_addr constant [12 x i64] [i64 -576460752303423488, i64 1420070400, i64 1451606400, i64 1483228800, i64 1514764800, i64 1546300800, i64 1577836800, i64 1609459200, i64 1640995200, i64 1672531200, i64 1704067200, i64 1735689600], align 8
@_ZN4absl12lts_2025051213time_internal14cctz_extension24zone_info_source_factoryB5cxx11E = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"#trans=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" #types=\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" spec='\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTVN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE = unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE, ptr @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD2Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD0Ev, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo9BreakTimeERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo7VersionB5cxx11Ev, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo11DescriptionB5cxx11Ev] }, align 8
@_ZTIN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz10TimeZoneIfE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE = constant [56 x i8] c"N4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE\00", align 1
@_ZTIN4absl12lts_2025051213time_internal4cctz10TimeZoneIfE = external constant ptr
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month = private unnamed_addr constant [13 x i32] [i32 -1, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off = private unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets = private unnamed_addr constant [13 x i32] [i32 -1, i32 0, i32 3, i32 2, i32 5, i32 0, i32 3, i32 5, i32 1, i32 4, i32 6, i32 2, i32 4], align 16
@_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE = internal unnamed_addr constant [2 x [14 x i16]] [[14 x i16] [i16 -1, i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [14 x i16] [i16 -1, i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"/usr/share/zoneinfo\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"TZDIR\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev] }, align 8
@_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceE }, align 8
@_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE = internal constant [76 x i8] c"N4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE\00", align 1
@_ZTIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceE = external constant ptr
@.str.16 = private unnamed_addr constant [39 x i8] c"/apex/com.android.tzdata/etc/tz/tzdata\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"/data/misc/zoneinfo/current/tzdata\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"/system/usr/share/zoneinfo/tzdata\00", align 1
@constinit.19 = private unnamed_addr constant [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource7VersionB5cxx11Ev] }, align 8
@_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE }, align 8
@_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE = internal constant [79 x i8] c"N4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"/config/data/tzdata/\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"/pkg/data/tzdata/\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"/data/tzdata/\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"/config/tzdata/\00", align 1
@constinit.27 = private unnamed_addr constant [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"zoneinfo/tzif2/\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"revision.txt\00", align 1
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev] }, align 8
@_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE }, align 8
@_ZTSN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE = internal constant [79 x i8] c"N4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE\00", align 1
@"_ZTIZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0" = internal constant [121 x i8] c"ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 10 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16   ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = sdiv exact i64 %i.k, 48                  ; 4 uses
  %.not60 = icmp eq ptr %i.g, %i.h
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !7
  %.fr73 = freeze i64 %i.o                        ; 3 uses
  %i.p = icmp eq i64 %.fr73, 0
  %i.q = load ptr, ptr %3, align 8
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.02962.us = phi i64 [ %spec.select, %bb.c ], [ %i.d, %.lr.ph ]
  %.03061.us = phi i64 [ %i.ae, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03061.us ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 41
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = zext i8 %i.t to i64                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %char0 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %char0, 0
  %spec.select = select i1 %i.w, i64 %i.u, i64 %.02962.us ; 3 uses
  %i.x = load i32, ptr %i.r, align 8, !tbaa !23
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i64 %1, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !24, !range !25, !noundef !26
  %i.ac = icmp eq i8 %i.ab, %i.a
  %i.ad = icmp eq i64 %spec.select, %i.u
  %or.cond.us = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.us, label %.thread38, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.ae = add i64 %.03061.us, 1                   ; 2 uses
  %.not.us = icmp eq i64 %i.ae, %i.l
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.02962 = phi i64 [ %.1, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %.03061 = phi i64 [ %i.au, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03061 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = zext i8 %i.ah to i64                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #24
  %i.al = icmp eq i64 %.fr73, %i.ak
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %.lr.ph.split
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %i.aj, i64 %.fr73)
  %i.am = icmp eq i32 %bcmp.i.i, 0
  %spec.select72 = select i1 %i.am, i64 %i.ai, i64 %.02962
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread36

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %.lr.ph.split
  %.1 = phi i64 [ %.02962, %.lr.ph.split ], [ %spec.select72, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ] ; 3 uses
  %i.an = load i32, ptr %i.af, align 8, !tbaa !23
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i64 %1, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !24, !range !25, !noundef !26
  %i.as = icmp eq i8 %i.ar, %i.a
  %i.at = icmp eq i64 %.1, %i.ai
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.thread38, label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread36, %bb.d
  %i.au = add i64 %.03061, 1                      ; 2 uses
  %.not = icmp eq i64 %i.au, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ], [ %i.l, %bb.e ] ; 2 uses
  %.029.lcssa = phi i64 [ %i.d, %bb.a ], [ %spec.select, %bb.c ], [ %.1, %bb.e ] ; 4 uses
  %i.av = icmp ult i64 %.030.lcssa, 256
  %i.aw = icmp ult i64 %.029.lcssa, 256
  %or.cond.not = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.not, label %bb.f, label %bb.l

.thread38:                                        ; preds = %bb.d, %bb.b
  %.us-phi = phi i64 [ %.03061.us, %bb.b ], [ %.03061, %bb.d ] ; 2 uses
  %i.ax = icmp ult i64 %.us-phi, 256
  br i1 %i.ax, label %.thread44, label %bb.l

bb.f:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.g, %i.az
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1970, ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 1, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 1, ptr %i.bc, align 1, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1970, ptr %i.bd, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 1, ptr %i.be, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  store i8 1, ptr %i.bf, align 1, !tbaa !32
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !13
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  tail call void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.bi)
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit: ; preds = %bb.g, %bb.h
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.k ; 3 uses
  %i.bl = trunc i64 %1 to i32
  store i32 %i.bl, ptr %i.bk, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i8 %i.a, ptr %i.bm, align 8, !tbaa !24
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !7
  %i.bo = icmp eq i64 %.029.lcssa, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !7  ; 2 uses
  %i.br = sub nuw nsw i64 4611686018427387903, %.029.lcssa
  %i.bs = icmp ult i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i
  %i.bt = load ptr, ptr %3, align 8, !tbaa !17
  %i.bu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.bt, i64 noundef %i.bq) ; 0 uses
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !7
  %i.bw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.bv, i64 noundef 0, i64 noundef 1, i8 noundef signext 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit
  %i.bx = trunc nuw i64 %.029.lcssa to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 41
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !18
  br label %.thread44

.thread44:                                        ; preds = %.thread38, %bb.k
  %.03059 = phi i64 [ %.us-phi, %.thread38 ], [ %.030.lcssa, %bb.k ]
  %i.bz = trunc nuw i64 %.03059 to i8
  store i8 %i.bz, ptr %4, align 1, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %.thread38, %._crit_edge, %.thread44
  %or.cond.not42 = phi i1 [ false, %.thread38 ], [ false, %._crit_edge ], [ true, %.thread44 ]
  ret i1 %or.cond.not42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, %2
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = zext i8 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.f = zext i8 %2 to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !23
  %i.i = load i32, ptr %i.g, align 8, !tbaa !23
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !24, !range !25, !noundef !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !24, !range !25, !noundef !26
  %.not11 = icmp eq i8 %i.k, %i.m
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %.not12 = icmp eq i8 %i.o, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %.not12, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17ExtendTransitionsEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((160, 161)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20250512::time_internal::cctz::PosixTimeZone", align 8 ; 26 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 6 uses
  %4 = alloca %"struct.absl::lts_20250512::time_internal::cctz::Transition", align 8 ; 14 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::Transition", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !7
  store i8 0, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !7
  store i8 0, ptr %i.k, align 8, !tbaa !33
  %i.m = invoke noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz14ParsePosixSpecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS2_13PosixTimeZoneE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.e, label %bb.aw

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = invoke noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.p, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.h, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.h:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.l, align 8, !tbaa !7
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -40
  %i.x = load i8, ptr %i.w, align 8, !tbaa !55    ; 2 uses
  %i.y = load i8, ptr %i.a, align 1, !tbaa !33    ; 2 uses
  %i.z = icmp eq i8 %i.x, %i.y
  br i1 %i.z, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = zext i8 %i.x to i64
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ab ; 3 uses
  %i.ae = zext i8 %i.y to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !23
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !23
  %.not.i = icmp eq i32 %i.ag, %i.ah
  br i1 %.not.i, label %bb.k, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !24, !range !25, !noundef !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !24, !range !25, !noundef !26
  %.not11.i = icmp eq i8 %i.aj, %i.al
  br i1 %.not11.i, label %bb.l, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %.not12.i = icmp eq i8 %i.an, %i.ap
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.as = invoke noundef zeroext i1 @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %i.ar, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.p, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit54

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.p:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !58
  %.not.i46 = icmp eq i32 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %.not9.i = icmp eq i64 %i.ax, 0
  %or.cond.i = select i1 %.not.i46, i1 %.not9.i, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %.not10.i = icmp eq i64 %i.az, 0
  %or.cond16.i = select i1 %or.cond.i, i1 %.not10.i, i1 false
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %.not11.i47 = icmp eq i32 %i.bb, 0
  %or.cond18.i = select i1 %or.cond16.i, i1 %.not11.i47, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %.not12.i48 = icmp eq i64 %i.bd, 365
  %or.cond20.i = select i1 %or.cond18.i, i1 %.not12.i48, i1 false
  br i1 %or.cond20.i, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit: ; preds = %bb.p
  %i.be = load i64, ptr %i.o, align 8, !tbaa !48
  %i.bf = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !59
  %i.bj = add nsw i64 %i.bg, %i.bi
  %.not13.i = icmp eq i64 %i.bj, 86400
  br i1 %.not13.i, label %bb.q, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_110AllYearDSTERKNS2_13PosixTimeZoneE.exit.thread

end_hunk_0
