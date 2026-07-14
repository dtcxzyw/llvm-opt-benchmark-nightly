inline.NumInlined: 1273
inline.NumDeleted: 541
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::time_internal::cctz::PosixTimeZone" = type { %"class.std::__cxx11::basic_string", i64, %"class.std::__cxx11::basic_string", i64, %"struct.absl::time_internal::cctz::PosixTransition", %"struct.absl::time_internal::cctz::PosixTransition" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::time_internal::cctz::PosixTransition" = type { %"struct.absl::time_internal::cctz::PosixTransition::Date", %"struct.absl::time_internal::cctz::PosixTransition::Time" }
%"struct.absl::time_internal::cctz::PosixTransition::Date" = type { i32, %union.anon.9 }
%union.anon.9 = type { %"struct.absl::time_internal::cctz::PosixTransition::Date::NonLeapDay" }
%"struct.absl::time_internal::cctz::PosixTransition::Date::NonLeapDay" = type { i64 }
%"struct.absl::time_internal::cctz::PosixTransition::Time" = type { i64 }
%"struct.absl::time_internal::cctz::time_zone::absolute_lookup" = type { %"class.absl::time_internal::cctz::detail::civil_time", i32, i8, ptr }
%"class.absl::time_internal::cctz::detail::civil_time" = type { %"struct.absl::time_internal::cctz::detail::fields" }
%"struct.absl::time_internal::cctz::detail::fields" = type <{ i64, i8, i8, i8, i8, i8, [3 x i8] }>
%"struct.absl::time_internal::cctz::Transition" = type { i64, i8, [7 x i8], %"class.absl::time_internal::cctz::detail::civil_time", %"class.absl::time_internal::cctz::detail::civil_time" }
%struct.tzhead = type { [4 x i8], [1 x i8], [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%"struct.absl::time_internal::cctz::(anonymous namespace)::Header" = type { i64, i64, i64, i64, i64, i64 }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.5" = type { i8 }
%"struct.absl::time_internal::cctz::Transition::ByCivilTime" = type { i8 }
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
%"struct.absl::time_internal::cctz::time_zone::civil_lookup" = type { i32, %"class.std::chrono::time_point", %"class.std::chrono::time_point", %"class.std::chrono::time_point" }
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
%struct.__mbstate_t = type { i32, %union.anon.40 }
%union.anon.40 = type { i32 }

$_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7reserveEm = comdat any

$_ZN4absl13time_internal4cctz6detailmiENS2_10civil_timeINS2_10second_tagEEES5_ = comdat any

$_ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE6resizeEm = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_ = comdat any

$_ZN4absl13time_internal4cctz6detailmiENS2_10civil_timeINS2_10second_tagEEEl = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_ = comdat any

$_ZNSt6vectorIcSaIcEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE6resizeEm = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc = comdat any

$_ZNK4absl13time_internal4cctz10Transition11ByCivilTimeclERKS2_S5_ = comdat any

$_ZN4absl13time_internal4cctz12TimeZoneInfoD2Ev = comdat any

$_ZN4absl13time_internal4cctz12TimeZoneInfoD0Ev = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN4absl13time_internal4cctz6detail4impl5n_secEllllll = comdat any

$_ZN4absl13time_internal4cctz6detail4impl5n_dayElallaaa = comdat any

$_ZN4absl13time_internal4cctz6detail4impl14day_differenceElaalaa = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@_ZN4absl13time_internal4cctz12_GLOBAL__N_112kSecsPerYearE = internal unnamed_addr constant [2 x i32] [i32 31536000, i32 31622400], align 4
@_ZN4absl13time_internal4cctz12_GLOBAL__N_112kDaysPerYearE = internal unnamed_addr constant [2 x i32] [i32 365, i32 366], align 4
@constinit = private unnamed_addr constant [12 x i64] [i64 -576460752303423488, i64 1420070400, i64 1451606400, i64 1483228800, i64 1514764800, i64 1546300800, i64 1577836800, i64 1609459200, i64 1640995200, i64 1672531200, i64 1704067200, i64 1735689600], align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"bp == tbuf.data() + tbuf.size()\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/time/internal/cctz/src/time_zone_info.cc\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13time_internal4cctz12TimeZoneInfo4LoadEPNS1_14ZoneInfoSourceE = private unnamed_addr constant [69 x i8] c"bool absl::time_internal::cctz::TimeZoneInfo::Load(ZoneInfoSource *)\00", align 1
@_ZN4absl13time_internal14cctz_extension24zone_info_source_factoryB5cxx11E = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"last_year_ - 400 < cs.year() && cs.year() <= last_year_\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13time_internal4cctz12TimeZoneInfo9TimeLocalERKNS1_6detail10civil_timeINS3_10second_tagEEEl = private unnamed_addr constant [111 x i8] c"time_zone::civil_lookup absl::time_internal::cctz::TimeZoneInfo::TimeLocal(const civil_second &, year_t) const\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"timecnt != 0\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13time_internal4cctz12TimeZoneInfo9BreakTimeERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE = private unnamed_addr constant [121 x i8] c"virtual time_zone::absolute_lookup absl::time_internal::cctz::TimeZoneInfo::BreakTime(const time_point<seconds> &) const\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13time_internal4cctz12TimeZoneInfo8MakeTimeERKNS1_6detail10civil_timeINS3_10second_tagEEE = private unnamed_addr constant [110 x i8] c"virtual time_zone::civil_lookup absl::time_internal::cctz::TimeZoneInfo::MakeTime(const civil_second &) const\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"#trans=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" #types=\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" spec='\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTVN4absl13time_internal4cctz12TimeZoneInfoE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4absl13time_internal4cctz12TimeZoneInfoD2Ev, ptr @_ZN4absl13time_internal4cctz12TimeZoneInfoD0Ev, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo9BreakTimeERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo8MakeTimeERKNS1_6detail10civil_timeINS3_10second_tagEEE, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEPNS1_9time_zone16civil_transitionE, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEEPNS1_9time_zone16civil_transitionE, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo7VersionB5cxx11Ev, ptr @_ZNK4absl13time_internal4cctz12TimeZoneInfo11DescriptionB5cxx11Ev] }, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@__const._ZN4absl13time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month = private unnamed_addr constant [13 x i32] [i32 -1, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const._ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE.k_weekday_by_mon_off = private unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@__const._ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE.k_weekday_offsets = private unnamed_addr constant [13 x i32] [i32 -1, i32 0, i32 3, i32 2, i32 5, i32 0, i32 3, i32 5, i32 1, i32 4, i32 6, i32 2, i32 4], align 16
@_ZN4absl13time_internal4cctz12_GLOBAL__N_113kMonthOffsetsE = internal unnamed_addr constant [2 x [14 x i16]] [[14 x i16] [i16 -1, i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [14 x i16] [i16 -1, i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"/usr/share/zoneinfo\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"TZDIR\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev] }, align 8
@.str.23 = private unnamed_addr constant [39 x i8] c"/apex/com.android.tzdata/etc/tz/tzdata\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"/data/misc/zoneinfo/current/tzdata\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"/system/usr/share/zoneinfo/tzdata\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource7VersionB5cxx11Ev] }, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"/config/data/tzdata/\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"/pkg/data/tzdata/\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"/data/tzdata/\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"/config/tzdata/\00", align 1
@constinit.34 = private unnamed_addr constant [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 8
@.str.35 = private unnamed_addr constant [16 x i8] c"zoneinfo/tzif2/\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"revision.txt\00", align 1
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev] }, align 8
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl13time_internal4cctz12TimeZoneInfo17GetTransitionTypeElbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 10 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = sdiv exact i64 %i.k, 48                  ; 4 uses
  %.not62 = icmp eq ptr %i.g, %i.h
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.fr75 = freeze i64 %i.o                        ; 3 uses
  %i.p = icmp eq i64 %.fr75, 0
  %i.q = load ptr, ptr %3, align 8
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.03064.us = phi i64 [ %i.ae, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %.03163.us = phi i64 [ %spec.select, %bb.c ], [ %i.d, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03064.us ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 41
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %char0 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %char0, 0
  %spec.select = select i1 %i.w, i64 %i.u, i64 %.03163.us ; 3 uses
  %i.x = load i32, ptr %i.r, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i64 %1, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ab = load i8, ptr %i.aa, align 8, !range !5, !noundef !6
  %i.ac = icmp eq i8 %i.ab, %i.a
  %i.ad = icmp eq i64 %spec.select, %i.u
  %or.cond.us = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.us, label %.thread40, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.ae = add i64 %.03064.us, 1                   ; 2 uses
  %.not.us = icmp eq i64 %i.ae, %i.l
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.03064 = phi i64 [ %i.au, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.03163 = phi i64 [ %.1, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03064 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #24
  %i.al = icmp eq i64 %.fr75, %i.ak
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph.split
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %i.aj, i64 %.fr75)
  %i.am = icmp eq i32 %bcmp.i, 0
  %spec.select74 = select i1 %i.am, i64 %i.ai, i64 %.03163
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread38: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.lr.ph.split
  %.1 = phi i64 [ %.03163, %.lr.ph.split ], [ %spec.select74, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %i.an = load i32, ptr %i.af, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i64 %1, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ar = load i8, ptr %i.aq, align 8, !range !5, !noundef !6
  %i.as = icmp eq i8 %i.ar, %i.a
  %i.at = icmp eq i64 %.1, %i.ai
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.thread40, label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread38, %bb.d
  %i.au = add i64 %.03064, 1                      ; 2 uses
  %.not = icmp eq i64 %i.au, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %.031.lcssa = phi i64 [ %i.d, %bb.a ], [ %spec.select, %bb.c ], [ %.1, %bb.e ] ; 8 uses
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ], [ %i.l, %bb.e ] ; 2 uses
  %i.av = icmp ult i64 %.030.lcssa, 256
  %i.aw = icmp ult i64 %.031.lcssa, 256
  %or.cond.not = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.not, label %bb.f, label %bb.s

.thread40:                                        ; preds = %bb.d, %bb.b
  %.us-phi = phi i64 [ %.03064.us, %bb.b ], [ %.03064, %bb.d ] ; 2 uses
  %i.ax = icmp ult i64 %.us-phi, 256
  br i1 %i.ax, label %.thread46, label %bb.s

bb.f:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i.i = icmp eq ptr %i.g, %i.az
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1970, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 1, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1970, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  store i8 1, ptr %i.bf, align 1
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.bh, ptr %i.f, align 8
  br label %_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  tail call void @_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.bi)
  br label %_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_.exit

_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_.exit: ; preds = %bb.g, %bb.h
  %i.bj = load ptr, ptr %i.e, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.k ; 3 uses
  %i.bl = trunc i64 %1 to i32
  store i32 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i8 %i.a, ptr %i.bm, align 8
  %i.bn = load i64, ptr %i.c, align 8
  %i.bo = icmp eq i64 %.031.lcssa, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.r

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS3_S5_EENS8_IPKS3_S5_EEDpOT_.exit
  %i.bp = load ptr, ptr %3, align 8               ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8            ; 6 uses
  %i.bs = sub nuw nsw i64 9223372036854775807, %.031.lcssa
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.i
  %i.bu = add nuw i64 %i.br, %.031.lcssa          ; 3 uses
  %i.bv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.by = icmp samesign ult i64 %.031.lcssa, 16
  tail call void @llvm.assume(i1 %i.by)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bz = load i64, ptr %i.bw, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ca = phi i64 [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bu, %i.ca
  br i1 %.not.i.i.i, label %bb.o, label %bb.k

end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz12TimeZoneInfo4LoadEPNS1_14ZoneInfoSourceE:bb.a
  %i.aq = icmp slt i8 %.07.val.i24.i, 0
  br i1 %i.aq, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = zext nneg i8 %.07.val.i24.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 24
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 41
  %.07.val.1.i25.i = load i8, ptr %i.at, align 1
  %i.au = zext i8 %.07.val.1.i25.i to i64
  %i.av = shl nuw nsw i64 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 42
  %.07.val.2.i26.i = load i8, ptr %i.aw, align 1
  %i.ax = zext i8 %.07.val.2.i26.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 43
  %.07.val.3.i27.i = load i8, ptr %i.az, align 1
  %i.ba = zext i8 %.07.val.3.i27.i to i64
  %i.bb = or disjoint i64 %i.av, %i.as
  %i.bc = or disjoint i64 %i.bb, %i.ay
  %i.bd = or disjoint i64 %i.bc, %i.ba            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.07.val.i29.i = load i8, ptr %i.bf, align 1    ; 2 uses
  %i.bg = icmp slt i8 %.07.val.i29.i, 0
  br i1 %i.bg, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = zext nneg i8 %.07.val.i29.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 29
  %.07.val.1.i30.i = load i8, ptr %i.bj, align 1
  %i.bk = zext i8 %.07.val.1.i30.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 30
  %.07.val.2.i31.i = load i8, ptr %i.bm, align 1
  %i.bn = zext i8 %.07.val.2.i31.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 31
  %.07.val.3.i32.i = load i8, ptr %i.bp, align 1
  %i.bq = zext i8 %.07.val.3.i32.i to i64
  %i.br = or disjoint i64 %i.bl, %i.bi
  %i.bs = or disjoint i64 %i.br, %i.bo
  %i.bt = or disjoint i64 %i.bs, %i.bq            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.07.val.i34.i = load i8, ptr %i.bv, align 1    ; 2 uses
  %i.bw = icmp slt i8 %.07.val.i34.i, 0
  br i1 %i.bw, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = zext nneg i8 %.07.val.i34.i to i64
  %i.by = shl nuw nsw i64 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 25
  %.07.val.1.i35.i = load i8, ptr %i.bz, align 1
  %i.ca = zext i8 %.07.val.1.i35.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 26
  %.07.val.2.i36.i = load i8, ptr %i.cc, align 1
  %i.cd = zext i8 %.07.val.2.i36.i to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 27
  %.07.val.3.i37.i = load i8, ptr %i.cf, align 1
  %i.cg = zext i8 %.07.val.3.i37.i to i64
  %i.ch = or disjoint i64 %i.cb, %i.by
  %i.ci = or disjoint i64 %i.ch, %i.ce
  %i.cj = or disjoint i64 %i.ci, %i.cg            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.07.val.i39.i = load i8, ptr %i.cl, align 1    ; 2 uses
  %i.cm = icmp slt i8 %.07.val.i39.i, 0
  br i1 %i.cm, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = zext nneg i8 %.07.val.i39.i to i64
  %i.co = shl nuw nsw i64 %i.cn, 24
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 21
  %.07.val.1.i40.i = load i8, ptr %i.cp, align 1
  %i.cq = zext i8 %.07.val.1.i40.i to i64
  %i.cr = shl nuw nsw i64 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 22
  %.07.val.2.i41.i = load i8, ptr %i.cs, align 1
  %i.ct = zext i8 %.07.val.2.i41.i to i64
  %i.cu = shl nuw nsw i64 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 23
  %.07.val.3.i42.i = load i8, ptr %i.cv, align 1
  %i.cw = zext i8 %.07.val.3.i42.i to i64
  %i.cx = or disjoint i64 %i.cr, %i.co
  %i.cy = or disjoint i64 %i.cx, %i.cu
  %i.cz = or disjoint i64 %i.cy, %i.cw            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 1
  %.not135 = icmp eq i8 %i.dc, 0                  ; 2 uses
  br i1 %.not135, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = mul nuw nsw i64 %i.y, 5
  %i.de = mul nuw nsw i64 %i.an, 6
  %i.df = add nuw nsw i64 %i.de, %i.dd
  %i.dg = add nuw nsw i64 %i.df, %i.bd
  %i.dh = shl nuw nsw i64 %i.bt, 3
  %i.di = add nuw nsw i64 %i.dg, %i.dh
  %i.dj = add nuw nsw i64 %i.di, %i.cj
  %i.dk = add nuw nsw i64 %i.dj, %i.cz
  %i.dl = load ptr, ptr %1, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.dk) #24
  %.not136 = icmp eq i32 %i.do, 0
  br i1 %.not136, label %bb.k, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dp = load ptr, ptr %1, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 44) #24
  %.not137 = icmp eq i64 %i.ds, 44
  br i1 %.not137, label %bb.l, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dt = load i32, ptr %2, align 1
  %i.du = icmp ne i32 %i.dt, 1718180436           ; 2 uses
  %i.dv = zext i1 %i.du to i32                    ; 0 uses
  %i.dw = load i8, ptr %i.db, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  %or.cond171 = select i1 %i.du, i1 true, i1 %i.dx
  br i1 %or.cond171, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = call fastcc noundef zeroext i1 @_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 1 dereferenceable(44) %2)
  br i1 %i.dy, label %._crit_edge253, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

._crit_edge253:                                   ; preds = %bb.m
  %.pre = load i64, ptr %i.ao, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge253, %bb.i
  %i.dz = phi i64 [ %i.an, %bb.i ], [ %.pre, %._crit_edge253 ] ; 10 uses
  %.0113 = phi i64 [ 4, %bb.i ], [ 8, %._crit_edge253 ] ; 3 uses
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = load i64, ptr %i.bu, align 8
  %.not140 = icmp eq i64 %i.eb, 0
  %or.cond288 = select i1 %i.ea, i1 %.not140, i1 false
  br i1 %or.cond288, label %bb.o, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ec = load i64, ptr %i.ck, align 8            ; 3 uses
  %.not141 = icmp eq i64 %i.ec, 0
  %.not142 = icmp eq i64 %i.ec, %i.dz
  %or.cond160 = or i1 %.not141, %.not142
  br i1 %or.cond160, label %bb.p, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ed = load i64, ptr %i.da, align 8            ; 3 uses
  %.not143 = icmp eq i64 %i.ed, 0
  %.not144 = icmp eq i64 %i.ed, %i.dz
  %or.cond161 = or i1 %.not143, %.not144
  br i1 %or.cond161, label %bb.q, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ee = or disjoint i64 %.0113, 1
  %i.ef = load i64, ptr %3, align 8               ; 7 uses
  %i.eg = mul i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.dz, 6
  %i.ei = load i64, ptr %i.be, align 8            ; 4 uses
  %i.ej = add nuw nsw i64 %.0113, 4
  %i.ek = add i64 %i.ec, %i.eh
  %i.el = add i64 %i.ek, %i.ed
  %i.em = add i64 %i.el, %i.eg
  %i.en = add i64 %i.em, %i.ei                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt6vectorIcSaIcEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.en, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.eo = load ptr, ptr %4, align 8
  %i.ep = load ptr, ptr %1, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.eo, i64 noundef %i.en) #24
  %.not145 = icmp eq i64 %i.es, %i.en
  br i1 %.not145, label %bb.r, label %.critedge163

bb.r:                                             ; preds = %bb.q
  %i.et = load ptr, ptr %4, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.ev = add i64 %i.ef, 2
  call void @_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 noundef %i.ev)
  call void @_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 noundef %i.ef)
  %.not146214 = icmp eq i64 %i.ef, 0
  br i1 %.not146214, label %._crit_edge, label %.lr.ph

.lr.ph221.preheader:                              ; preds = %bb.w
  %.pre254 = load ptr, ptr %i.eu, align 8
  br label %.lr.ph221

.lr.ph:                                           ; preds = %bb.r, %bb.w
  %.0114216 = phi ptr [ %i.fd, %bb.w ], [ %i.et, %bb.r ] ; 4 uses
  %.0120215 = phi i64 [ %i.fk, %bb.w ], [ 0, %bb.r ] ; 4 uses
  br i1 %.not135, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %.07.val.i = load i8, ptr %.0114216, align 1
  %12 = load i32, ptr %.0114216, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %i.ew = zext i32 %13 to i64                     ; 2 uses
  %i.ex = or disjoint i64 %i.ew, -4294967296
  %i.ey = icmp slt i8 %.07.val.i, 0
  %.0.i173 = select i1 %i.ey, i64 %i.ex, i64 %i.ew
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.ez = call fastcc noundef i64 @_ZN4absl13time_internal4cctz12_GLOBAL__N_18Decode64EPKc(ptr noundef %.0114216)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fa = phi i64 [ %.0.i173, %bb.s ], [ %i.ez, %bb.t ]
  %i.fb = load ptr, ptr %i.eu, align 8
  %i.fc = getelementptr inbounds nuw [48 x i8], ptr %i.fb, i64 %.0120215
  store i64 %i.fa, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0114216, i64 %.0113 ; 2 uses
  %.not147 = icmp eq i64 %.0120215, 0
  br i1 %.not147, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = load ptr, ptr %i.eu, align 8
  %i.ff = getelementptr [48 x i8], ptr %i.fe, i64 %.0120215 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 -48
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = load i64, ptr %i.ff, align 8
  %i.fj = icmp slt i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.w, label %.critedge163

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.fk = add nuw i64 %.0120215, 1                ; 2 uses
  %.not146 = icmp eq i64 %i.fk, %i.ef
  br i1 %.not146, label %.lr.ph221.preheader, label %.lr.ph, !llvm.loop !34

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %bb.x
  %i.fl = phi ptr [ %i.fo, %bb.x ], [ %.pre254, %.lr.ph221.preheader ]
  %.2116220 = phi ptr [ %i.ft, %bb.x ], [ %i.fd, %.lr.ph221.preheader ] ; 2 uses
  %.0121219 = phi i1 [ %spec.select, %bb.x ], [ false, %.lr.ph221.preheader ]
  %.0123218 = phi i64 [ %i.fv, %bb.x ], [ 0, %.lr.ph221.preheader ] ; 3 uses
  %.2116.val = load i8, ptr %.2116220, align 1
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %.0123218
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %.2116.val, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %.0123218
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i8, ptr %i.fq, align 8             ; 2 uses
  %i.fs = zext i8 %i.fr to i64
  %.not149 = icmp ugt i64 %i.dz, %i.fs
  br i1 %.not149, label %bb.x, label %.critedge163

bb.x:                                             ; preds = %.lr.ph221
  %i.ft = getelementptr inbounds nuw i8, ptr %.2116220, i64 1 ; 2 uses
  %i.fu = icmp eq i8 %i.fr, 0
  %spec.select = select i1 %i.fu, i1 true, i1 %.0121219 ; 2 uses
  %i.fv = add nuw i64 %.0123218, 1                ; 2 uses
  %.not148 = icmp eq i64 %i.fv, %i.ef
  br i1 %.not148, label %._crit_edge, label %.lr.ph221, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.x, %bb.r
  %.0121.lcssa = phi i1 [ false, %bb.r ], [ %spec.select, %bb.x ]
  %.2116.lcssa = phi ptr [ %i.et, %bb.r ], [ %i.ft, %bb.x ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.fx = add i64 %i.dz, 2
  call void @_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i64 noundef %i.fx)
  call void @_ZNSt6vectorIN4absl13time_internal4cctz14TransitionTypeESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i64 noundef %i.dz)
  %.pre255 = load ptr, ptr %i.fw, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.aa
  %i.fy = phi ptr [ %.pre255, %._crit_edge ], [ %i.go, %bb.aa ]
  %.4118225 = phi ptr [ %.2116.lcssa, %._crit_edge ], [ %i.gt, %bb.aa ] ; 4 uses
  %.0126224 = phi i64 [ 0, %._crit_edge ], [ %i.gu, %bb.aa ] ; 5 uses
  %i.fz = load i32, ptr %.4118225, align 1
  %i.ga = call i32 @llvm.bswap.i32(i32 %i.fz)
  %i.gb = getelementptr inbounds nuw [48 x i8], ptr %i.fy, i64 %.0126224
  store i32 %i.ga, ptr %i.gb, align 8
  %i.gc = load ptr, ptr %i.fw, align 8
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.0126224 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = add i32 %i.ge, -86400
  %or.cond200 = icmp ult i32 %i.gf, -172799
  br i1 %or.cond200, label %.critedge163, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gg = getelementptr inbounds nuw i8, ptr %.4118225, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.4118225, i64 5
  %.val172 = load i8, ptr %i.gg, align 1
  %i.gi = icmp ne i8 %.val172, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %i.gk = zext i1 %i.gi to i8
  store i8 %i.gk, ptr %i.gj, align 8
  %.val = load i8, ptr %i.gh, align 1
  %i.gl = load ptr, ptr %i.fw, align 8
  %i.gm = getelementptr inbounds nuw [48 x i8], ptr %i.gl, i64 %.0126224
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 41
  store i8 %.val, ptr %i.gn, align 1
  %i.go = load ptr, ptr %i.fw, align 8            ; 5 uses
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %.0126224
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 41
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i64
  %.not151 = icmp ugt i64 %i.ei, %i.gs
  br i1 %.not151, label %bb.aa, label %.critedge163

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %.4118225, i64 6 ; 3 uses
  %i.gu = add i64 %.0126224, 1                    ; 2 uses
  %.not150 = icmp eq i64 %i.gu, %i.dz
  br i1 %.not150, label %bb.ab, label %bb.y, !llvm.loop !36

bb.ab:                                            ; preds = %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.gv, align 8
  %i.gw = icmp ne i64 %i.ef, 0
  %or.cond = and i1 %i.gw, %.0121.lcssa
  br i1 %or.cond, label %bb.ac, label %.critedge10.thread

bb.ac:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gy = load i8, ptr %i.gx, align 8, !range !5, !noundef !6
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.ha = load ptr, ptr %i.eu, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i8, ptr %i.hb, align 8             ; 2 uses
  %.not152226 = icmp eq i8 %i.hc, 0
  br i1 %.not152226, label %.critedge, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %bb.ad
  %i.hd = zext i8 %i.hc to i64
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %bb.ae
  %indvars.iv = phi i64 [ %i.hd, %.lr.ph229.preheader ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %indvars.iv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load i8, ptr %i.hf, align 8, !range !5, !noundef !6
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.ae, label %.critedge.loopexit.split.loop.exit

bb.ae:                                            ; preds = %.lr.ph229
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.hi = and i64 %indvars.iv.next, 255
  %.not152 = icmp eq i64 %i.hi, 0
  br i1 %.not152, label %.critedge, label %.lr.ph229, !llvm.loop !37

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph229
  %i.hj = trunc nuw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %.critedge.loopexit.split.loop.exit, %bb.ad, %bb.ac
  %.1128 = phi i8 [ 0, %bb.ac ], [ 0, %bb.ad ], [ %i.hj, %.critedge.loopexit.split.loop.exit ], [ 0, %bb.ae ] ; 2 uses
  %i.hk = zext i8 %.1128 to i64                   ; 2 uses
  %.not153233 = icmp eq i64 %i.dz, %i.hk
  br i1 %.not153233, label %.critedge10.thread, label %.lr.ph235

.lr.ph235:                                        ; preds = %.critedge, %bb.af
  %i.hl = phi i64 [ %i.hr, %bb.af ], [ %i.hk, %.critedge ]
  %.2129234 = phi i8 [ %i.hq, %bb.af ], [ %.1128, %.critedge ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load i8, ptr %i.hn, align 8, !range !5, !noundef !6
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.af, label %.critedge10

bb.af:                                            ; preds = %.lr.ph235
  %i.hq = add i8 %.2129234, 1                     ; 2 uses
  %i.hr = zext i8 %i.hq to i64                    ; 2 uses
  %.not153 = icmp eq i64 %i.dz, %i.hr
  br i1 %.not153, label %.critedge10.thread, label %.lr.ph235, !llvm.loop !38

.critedge10:                                      ; preds = %.lr.ph235
  store i8 %.2129234, ptr %i.gv, align 8
  br label %.critedge10.thread

.critedge10.thread:                               ; preds = %bb.af, %.critedge, %.critedge10, %bb.ab
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ht = add i64 %i.ei, 10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 noundef %i.ht)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hs, i64 noundef 0, i64 noundef %i.hv, ptr noundef nonnull %i.gt, i64 noundef %i.ei) ; 0 uses
  %i.hx = load i64, ptr %i.be, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hx
  %i.hz = load i64, ptr %i.bu, align 8
  %i.ia = mul i64 %i.hz, %i.ej
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia
  %i.ic = load i64, ptr %i.ck, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic
  %i.ie = load i64, ptr %i.da, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = icmp eq ptr %i.if, %i.ih
  br i1 %i.ii, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge10.thread
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 729, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13time_internal4cctz12TimeZoneInfo4LoadEPNS1_14ZoneInfoSourceE) #25
  unreachable

bb.ah:                                            ; preds = %.critedge10.thread
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE17_M_default_appendEm:bb.a
  store i64 1970, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i25.prol.loopexit

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i25.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bq, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 15 uses
  %.057.i.i.i27 = phi i64 [ %i.bp, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i26, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 16
  store i64 1970, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  store i8 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 25
  store i8 1, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 32
  store i64 1970, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 40
  store i8 1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 41
  store i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 64
  store i64 1970, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  store i8 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 73
  store i8 1, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 80
  store i64 1970, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 88
  store i8 1, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 89
  store i8 1, ptr %i.bo, align 1
  %i.bp = add i64 %.057.i.i.i27, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  %.not.i.i.i28.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i28.1, label %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !133

_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i31 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !alias.scope !134
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i32 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i31, !llvm.loop !13

_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4absl13time_internal4cctz10TransitionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl13time_internal4cctz10TransitionEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl13time_internal4cctz10TransitionESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !32

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [4 x ptr], align 8                ; 6 uses
  %i.b = alloca [1 x ptr], align 8                ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [24 x i8], align 16               ; 20 uses
  %i.d = alloca [52 x i8], align 16               ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !150 ; 5 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 5)
  %i.h = load ptr, ptr %2, align 8, !noalias !150
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr nonnull @.str.17, i64 %spec.select.i.i.i.i.i.i), !noalias !150
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.f, 5
  %i.i = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !150
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 16 uses
  store ptr %i.j, ptr %11, align 8, !noalias !150
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.k, align 8, !noalias !150
  store i8 0, ptr %i.j, align 8, !noalias !150
  %i.l = icmp eq i64 %.0.i.i.i.i.i, %i.f
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !noalias !150
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !noalias !150
  %.not.i.i.i.i = icmp eq i8 %i.o, 47
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = call ptr @getenv(ptr noundef nonnull @.str.19) #24, !noalias !150 ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not12.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.p, align 1, !noalias !150
  %.not13.i.i.i.i = icmp eq i8 %i.q, 0
  %spec.select.i.i.i.i = select i1 %.not13.i.i.i.i, ptr @.str.18, ptr %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.18, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !150 ; 10 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.r, 15
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %.0.i.i.i.i, align 1, !noalias !150
  store i8 %i.t, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.u = icmp samesign ult i64 %i.r, 30
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.v = add nuw i64 %i.r, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, !prof !151

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !150
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.x = phi i64 [ %i.v, %bb.j ], [ 31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %.0.i532.i.i.i = phi i64 [ %i.r, %bb.j ], [ 30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26, !noalias !150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.0.i.i.i.i, i64 %i.r, i1 false), !noalias !150
  store ptr %i.y, ptr %11, align 8, !noalias !150
  store i64 %.0.i532.i.i.i, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.z = phi ptr [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i ]
  store i64 %i.r, ptr %i.k, align 8, !noalias !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !noalias !150
  %i.ab = load i64, ptr %i.k, align 8, !noalias !150 ; 6 uses
  %i.ac = add i64 %i.ab, 1                        ; 9 uses
  %i.ad = load ptr, ptr %11, align 8, !noalias !150 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.j                 ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.af = icmp samesign ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ugt i64 %i.ac, 15
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ah = load i64, ptr %i.j, align 8, !noalias !150 ; 2 uses
  %i.ai = icmp ugt i64 %i.ac, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.aj = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i ] ; 2 uses
  %i.ak = icmp slt i64 %i.ac, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !150
  unreachable

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.al = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.al, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.am = shl nuw i64 %i.aj, 1                    ; 2 uses
  %i.an = icmp ult i64 %i.ac, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 9223372036854775807)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0.i27.i.i.i.i = phi i64 [ %spec.store.select.i.i.i.i.i.i, %bb.o ], [ %i.ac, %bb.n ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ao = add nuw i64 %.0.i27.i.i.i.i, 1          ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !33

bb.q:                                             ; preds = %bb.p
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !150
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.p
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26, !noalias !150 ; 4 uses
  switch i64 %i.ab, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %i.ar = load i8, ptr %i.ad, align 1, !noalias !150
  store i8 %i.ar, ptr %i.aq, align 1, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ad, i64 %i.ab, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
  %i.as = icmp samesign ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i.i.i
  %i.at = load i64, ptr %i.j, align 8, !noalias !150
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.au) #27, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i.i.i
  store ptr %i.aq, ptr %11, align 8, !noalias !150
  store i64 %.0.i27.i.i.i.i, ptr %i.j, align 8, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.av = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ab
  store i8 47, ptr %i.aw, align 1, !noalias !150
  store i64 %i.ac, ptr %i.k, align 8, !noalias !150
  %i.ax = load ptr, ptr %11, align 8, !noalias !150
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ac
  store i8 0, ptr %i.ay, align 1, !noalias !150
  %.pre31.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !150
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.az = phi i64 [ %.pre31.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.ba = icmp ugt i64 %.0.i.i.i.i.i, %i.az
  br i1 %i.ba, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.az) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.t
  %i.bb = load ptr, ptr %2, align 8, !noalias !150
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0.i.i.i.i.i ; 3 uses
  %i.bd = sub nuw i64 %i.az, %.0.i.i.i.i.i        ; 5 uses
  %i.be = load i64, ptr %i.k, align 8, !noalias !150 ; 5 uses
  %i.bf = sub i64 9223372036854775807, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !150
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.bh = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bi = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.j
  br i1 %i.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.bk = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.i.i.i.i
  %i.bl = load i64, ptr %i.j, align 8, !noalias !150
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i.i.i.i
  %i.bm = phi i64 [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i21.i.i.i.i ]
  %.not.i.i.i18.i.i.i.i = icmp ugt i64 %i.bh, %i.bm
  br i1 %.not.i.i.i18.i.i.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17.i.i.i.i
  %.not8.i.i.i19.i.i.i.i = icmp eq i64 %i.az, %.0.i.i.i.i.i
  br i1 %.not8.i.i.i19.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.be ; 2 uses
  %cond.i.i.i20.i.i.i.i = icmp eq i64 %i.bd, 1
  br i1 %cond.i.i.i20.i.i.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bo = load i8, ptr %i.bc, align 1, !noalias !150
  store i8 %i.bo, ptr %i.bn, align 1, !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bc, i64 %i.bd, i1 false), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.be, i64 noundef 0, ptr noundef %i.bc, i64 noundef %i.bd), !noalias !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  store i64 %i.bh, ptr %i.k, align 8, !noalias !150
  %i.bp = load ptr, ptr %11, align 8, !noalias !150
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store i8 0, ptr %i.bq, align 1, !noalias !150
  %i.br = load ptr, ptr %11, align 8, !noalias !150
  %i.bs = call noalias ptr @fopen64(ptr noundef readonly %i.br, ptr noundef nonnull @.str.20), !noalias !152 ; 2 uses
  %.not.i22.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i22.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit25.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i
  %i.bt = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26, !noalias !150 ; 5 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.bt, align 8, !noalias !150
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.bv, align 8, !noalias !150
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.bu, ptr %i.bw, align 8, !noalias !150
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 -1, ptr %i.bx, align 8, !noalias !150
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit25.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit25.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i
  %storemerge.i.i.i.i = phi ptr [ %i.bt, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !alias.scope !150
  %i.by = load ptr, ptr %11, align 8, !noalias !150 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.j
  br i1 %i.bz, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit25.i.i.i.i
  %i.ca = load i64, ptr %i.j, align 8, !noalias !150
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #27, !noalias !150
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit25.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !150
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ab, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.ab:                                            ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !158
  %i.cc = load i64, ptr %i.e, align 8, !noalias !159 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i: ; preds = %bb.ab
  %spec.select.i.i.i15.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 5)
  %i.ce = load ptr, ptr %2, align 8, !noalias !159
  %bcmp122.i.i.i.i = call i32 @bcmp(ptr %i.ce, ptr nonnull @.str.17, i64 %spec.select.i.i.i15.i.i.i), !noalias !159
  %.not.i.i16.i.i.i = icmp eq i32 %bcmp122.i.i.i.i, 0
  br i1 %.not.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i, %bb.ab
  %.inv.i24.i.i.i = icmp ult i64 %i.cc, 5
  %i.cf = select i1 %.inv.i24.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i
  %.0.i.i18.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i ], [ %i.cf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i23.i.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 6 uses
  %12 = call noalias ptr @fopen64(ptr noundef nonnull readonly @.str.23, ptr noundef nonnull @.str.20), !noalias !160 ; 7 uses
  %.not.i50.i.i.i.i = icmp eq ptr %12, null
  br i1 %.not.i50.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.cl = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %12), !noalias !159
  %.not43.i.i.i.i = icmp eq i64 %i.cl, 24
  br i1 %.not43.i.i.i.i, label %bb.ad, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cm = load i32, ptr %i.c, align 16
  %i.cn = xor i32 %i.cm, 1633974900
  %i.co = getelementptr i8, ptr %i.c, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32
  %i.cr = xor i32 %i.cq, 24948
  %i.cs = or i32 %i.cn, %i.cr
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %.not44.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not44.i.i.i.i, label %bb.ae, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load i8, ptr %i.cg, align 1, !noalias !159
  %.07.val.i.i.i.i.i = load i8, ptr %i.ch, align 4, !noalias !159
  %13 = load i32, ptr %i.ch, align 4, !noalias !159
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %i.cw = zext i32 %14 to i64                     ; 4 uses
  %i.cx = or disjoint i64 %i.cw, -4294967296
  %i.cy = icmp slt i8 %.07.val.i.i.i.i.i, 0       ; 2 uses
  %.0.i51.i.i.i.i = select i1 %i.cy, i64 %i.cx, i64 %i.cw
  %.07.val.i52.i.i.i.i = load i8, ptr %i.ci, align 16, !noalias !159
  %15 = load i32, ptr %i.ci, align 16, !noalias !159
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %i.cz = zext i32 %16 to i64                     ; 2 uses
  %i.da = or disjoint i64 %i.cz, -4294967296
  %i.db = icmp slt i8 %.07.val.i52.i.i.i.i, 0
  %.0.i56.i.i.i.i = select i1 %i.db, i64 %i.da, i64 %i.cz ; 3 uses
  %i.dc = icmp slt i64 %.0.i56.i.i.i.i, %.0.i51.i.i.i.i
  %or.cond.i.i.i.i = or i1 %i.cy, %i.dc
  br i1 %or.cond.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = call i32 @fseek(ptr noundef nonnull %12, i64 noundef %i.cw, i32 noundef 0), !noalias !159
  %.not45.i.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not45.i.i.i.i, label %bb.ag, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !159
  %i.de = sub nsw i64 %.0.i56.i.i.i.i, %i.cw      ; 3 uses
  %i.df = udiv i64 %i.de, 52                      ; 2 uses
  %i.dg = mul nuw i64 %i.df, 52
  %.not46.i.i.i.i = icmp ne i64 %i.dg, %i.de
  %.not47125.i.i.i.i = icmp ult i64 %i.de, 52
  %or.cond146.i.i.i.i = or i1 %.not47125.i.i.i.i, %.not46.i.i.i.i
  br i1 %or.cond146.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ah:                                            ; preds = %bb.aj
  %i.dh = add i64 %.038126.i.i.i.i, 1             ; 2 uses
  %.not47.i.i.i.i = icmp eq i64 %i.dh, %i.df
  br i1 %.not47.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !163

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.038126.i.i.i.i = phi i64 [ %i.dh, %bb.ah ], [ 0, %bb.ag ]
  %i.di = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %12), !noalias !159
  %.not48.i.i.i.i = icmp eq i64 %i.di, 52
  br i1 %.not48.i.i.i.i, label %bb.ai, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %.07.val.i57.i.i.i.i = load i8, ptr %i.cj, align 8, !noalias !159
  %17 = load i32, ptr %i.cj, align 8, !noalias !159
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %i.dj = zext i32 %18 to i64                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, -4294967296
  %i.dl = icmp slt i8 %.07.val.i57.i.i.i.i, 0
  %.0.i61.i.i.i.i = select i1 %i.dl, i64 %i.dk, i64 %i.dj
  %i.dm = add nsw i64 %.0.i61.i.i.i.i, %.0.i56.i.i.i.i ; 2 uses
  %.07.val.i62.i.i.i.i = load i8, ptr %i.ck, align 4, !noalias !159
  %19 = load i32, ptr %i.ck, align 4, !noalias !159
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %i.dn = zext i32 %20 to i64                     ; 2 uses
  %i.do = or disjoint i64 %i.dn, -4294967296
  %i.dp = icmp slt i8 %.07.val.i62.i.i.i.i, 0
  %.0.i66.i.i.i.i = select i1 %i.dp, i64 %i.do, i64 %i.dn ; 2 uses
  %i.dq = or i64 %.0.i66.i.i.i.i, %i.dm
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.dq, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.aj, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  store i8 0, ptr %i.cj, align 8, !noalias !159
  %i.dr = load ptr, ptr %2, align 8, !noalias !159
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0.i.i18.i.i.i
  %i.dt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ds, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ak, label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  %i.dv = call i32 @fseek(ptr noundef nonnull %12, i64 noundef %i.dm, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not49.i.i.i.i, label %bb.al, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i

bb.al:                                            ; preds = %126, %72, %bb.ak
  %.lcssa100 = phi ptr [ %12, %bb.ak ], [ %21, %72 ], [ %75, %126 ]
  %.lcssa99 = phi i8 [ %i.cv, %bb.ak ], [ %35, %72 ], [ %87, %126 ]
  %.0.i66.i.i.i.i.lcssa.lcssa = phi i64 [ %.0.i66.i.i.i.i, %bb.ak ], [ %.0.i66.i.i.i.i.1, %72 ], [ %.0.i66.i.i.i.i.2, %126 ]
  %i.dw = icmp eq i8 %.lcssa99, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.dy = select i1 %i.dw, ptr %i.dx, ptr @.str.28 ; 3 uses
  %i.dz = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !159 ; 8 uses
  %i.ea = ptrtoint ptr %.lcssa100 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.eb, ptr %10, align 8, !noalias !159
  %i.ec = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dy) #24, !noalias !159 ; 8 uses
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %bb.am, label %._crit_edge.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ee = icmp slt i64 %i.ec, 0
  br i1 %i.ee, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !159
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ef = add nuw i64 %i.ec, 1                    ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !33

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !159
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.ao
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #26, !noalias !159 ; 2 uses
  store ptr %i.eh, ptr %10, align 8, !noalias !159
  store i64 %i.ec, ptr %i.eb, align 8, !noalias !159
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.al
  %i.ei = phi ptr [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.eb, %bb.al ] ; 3 uses
  switch i64 %i.ec, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ej = load i8, ptr %i.dy, align 1, !noalias !159
  store i8 %i.ej, ptr %i.ei, align 1, !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull align 1 %i.dy, i64 %i.ec, i1 false), !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.ec, ptr %i.ek, align 8, !noalias !159
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !noalias !159
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.em, align 8, !noalias !159
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.ea, ptr %i.en, align 8, !noalias !159
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %.0.i66.i.i.i.i.lcssa.lcssa, ptr %i.eo, align 8, !noalias !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.dz, align 8, !noalias !159
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 3 uses
  store ptr %i.eq, ptr %i.ep, align 8, !noalias !159
  %i.er = load ptr, ptr %10, align 8, !noalias !159 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eb
  br i1 %i.es, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  %i.et = load i64, ptr %i.ek, align 8, !noalias !159 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add nuw nsw i64 %i.et, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.ev, i1 false), !noalias !159
  br label %129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i.i
  store ptr %i.er, ptr %i.ep, align 8, !noalias !159
  %i.ew = load i64, ptr %i.eb, align 8, !noalias !159
  store i64 %i.ew, ptr %i.eq, align 8, !noalias !159
  %.pre.i22.i.i.i = load i64, ptr %i.ek, align 8, !noalias !159
  br label %129

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i, %bb.ah, %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %i.ex = call noundef i32 @fclose(ptr noundef nonnull %12) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  %21 = call noalias ptr @fopen64(ptr noundef nonnull readonly @.str.24, ptr noundef nonnull @.str.20), !noalias !160 ; 7 uses
  %.not.i50.i.i.i.i.1 = icmp eq ptr %21, null
  br i1 %.not.i50.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.1, label %22

22:                                               ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !159
  %23 = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %21), !noalias !159
  %.not43.i.i.i.i.1 = icmp eq i64 %23, 24
  br i1 %.not43.i.i.i.i.1, label %24, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1

24:                                               ; preds = %22
  %25 = load i32, ptr %i.c, align 16
  %26 = xor i32 %25, 1633974900
  %27 = getelementptr i8, ptr %i.c, i64 4
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, 24948
  %31 = or i32 %26, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %.not44.i.i.i.i.1 = icmp eq i32 %33, 0
  br i1 %.not44.i.i.i.i.1, label %34, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1

34:                                               ; preds = %24
  %35 = load i8, ptr %i.cg, align 1, !noalias !159
  %.07.val.i.i.i.i.i.1 = load i8, ptr %i.ch, align 4, !noalias !159
  %36 = load i32, ptr %i.ch, align 4, !noalias !159
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = zext i32 %37 to i64                       ; 4 uses
  %39 = or disjoint i64 %38, -4294967296
  %40 = icmp slt i8 %.07.val.i.i.i.i.i.1, 0       ; 2 uses
  %.0.i51.i.i.i.i.1 = select i1 %40, i64 %39, i64 %38
  %.07.val.i52.i.i.i.i.1 = load i8, ptr %i.ci, align 16, !noalias !159
  %41 = load i32, ptr %i.ci, align 16, !noalias !159
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = zext i32 %42 to i64                       ; 2 uses
  %44 = or disjoint i64 %43, -4294967296
  %45 = icmp slt i8 %.07.val.i52.i.i.i.i.1, 0
  %.0.i56.i.i.i.i.1 = select i1 %45, i64 %44, i64 %43 ; 3 uses
  %46 = icmp slt i64 %.0.i56.i.i.i.i.1, %.0.i51.i.i.i.i.1
  %or.cond.i.i.i.i.1 = or i1 %40, %46
  br i1 %or.cond.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1, label %47

47:                                               ; preds = %34
  %48 = call i32 @fseek(ptr noundef nonnull %21, i64 noundef %38, i32 noundef 0), !noalias !159
  %.not45.i.i.i.i.1 = icmp eq i32 %48, 0
  br i1 %.not45.i.i.i.i.1, label %49, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !159
  %50 = sub nsw i64 %.0.i56.i.i.i.i.1, %38        ; 3 uses
  %51 = udiv i64 %50, 52                          ; 2 uses
  %52 = mul nuw i64 %51, 52
  %.not46.i.i.i.i.1 = icmp ne i64 %52, %50
  %.not47125.i.i.i.i.1 = icmp ult i64 %50, 52
  %or.cond146.i.i.i.i.1 = or i1 %.not47125.i.i.i.i.1, %.not46.i.i.i.i.1
  br i1 %or.cond146.i.i.i.i.1, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %49, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.a
  %.038126.i.i.i.i.1 = phi i64 [ %.0.add.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.a ], [ 0, %49 ]
  %53 = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %21), !noalias !159
  %.not48.i.i.i.i.1 = icmp eq i64 %53, 52
  br i1 %.not48.i.i.i.i.1, label %54, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1

54:                                               ; preds = %.lr.ph.i.i.i.i.1
  %.07.val.i57.i.i.i.i.1 = load i8, ptr %i.cj, align 8, !noalias !159
  %55 = load i32, ptr %i.cj, align 8, !noalias !159
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %57 = zext i32 %56 to i64                       ; 2 uses
  %58 = or disjoint i64 %57, -4294967296
  %59 = icmp slt i8 %.07.val.i57.i.i.i.i.1, 0
  %.0.i61.i.i.i.i.1 = select i1 %59, i64 %58, i64 %57
  %60 = add nsw i64 %.0.i61.i.i.i.i.1, %.0.i56.i.i.i.i.1 ; 2 uses
  %.07.val.i62.i.i.i.i.1 = load i8, ptr %i.ck, align 4, !noalias !159
  %61 = load i32, ptr %i.ck, align 4, !noalias !159
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %63 = zext i32 %62 to i64                       ; 2 uses
  %64 = or disjoint i64 %63, -4294967296
  %65 = icmp slt i8 %.07.val.i62.i.i.i.i.1, 0
  %.0.i66.i.i.i.i.1 = select i1 %65, i64 %64, i64 %63 ; 2 uses
  %66 = or i64 %.0.i66.i.i.i.i.1, %60
  %or.cond.not.i.i.i.i.1 = icmp sgt i64 %66, -1
  br i1 %or.cond.not.i.i.i.i.1, label %67, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1

67:                                               ; preds = %54
  store i8 0, ptr %i.cj, align 8, !noalias !159
  %68 = load ptr, ptr %2, align 8, !noalias !159
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %.0.i.i18.i.i.i
  %70 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.a

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.a: ; preds = %67
  %.0.add.i.i.i.i = add i64 %.038126.i.i.i.i.1, 1 ; 2 uses
  %.not.i19.i.i.i = icmp eq i64 %.0.add.i.i.i.i, %51
  br i1 %.not.i19.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !163

72:                                               ; preds = %67
  %73 = call i32 @fseek(ptr noundef nonnull %21, i64 noundef %60, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i.1 = icmp eq i32 %73, 0
  br i1 %.not49.i.i.i.i.1, label %bb.al, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %54, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.a, %72, %49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.1, %47, %34, %24, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %74 = call noundef i32 @fclose(ptr noundef nonnull %21) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.1

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.1: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.1, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i
  %75 = call noalias ptr @fopen64(ptr noundef nonnull readonly @.str.25, ptr noundef nonnull @.str.20), !noalias !160 ; 7 uses
  %.not.i50.i.i.i.i.2 = icmp eq ptr %75, null
  br i1 %.not.i50.i.i.i.i.2, label %bb.au, label %76

76:                                               ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !159
  %77 = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %75), !noalias !159
  %.not43.i.i.i.i.2 = icmp eq i64 %77, 24
  br i1 %.not43.i.i.i.i.2, label %bb.at, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2

bb.at:                                            ; preds = %76
  %78 = load i32, ptr %i.c, align 16
  %79 = xor i32 %78, 1633974900
  %i.ey = getelementptr i8, ptr %i.c, i64 4
  %80 = load i16, ptr %i.ey, align 4
  %81 = zext i16 %80 to i32
  %82 = xor i32 %81, 24948
  %83 = or i32 %79, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i32
  %.not44.i.i.i.i.2 = icmp eq i32 %85, 0
  br i1 %.not44.i.i.i.i.2, label %86, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2

86:                                               ; preds = %bb.at
  %87 = load i8, ptr %i.cg, align 1, !noalias !159
  %.07.val.i.i.i.i.i.2 = load i8, ptr %i.ch, align 4, !noalias !159
  %88 = load i32, ptr %i.ch, align 4, !noalias !159
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %90 = zext i32 %89 to i64                       ; 4 uses
  %91 = or disjoint i64 %90, -4294967296
  %92 = icmp slt i8 %.07.val.i.i.i.i.i.2, 0       ; 2 uses
  %.0.i51.i.i.i.i.2 = select i1 %92, i64 %91, i64 %90
  %.07.val.i52.i.i.i.i.2 = load i8, ptr %i.ci, align 16, !noalias !159
  %93 = load i32, ptr %i.ci, align 16, !noalias !159
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %95 = zext i32 %94 to i64                       ; 2 uses
  %96 = or disjoint i64 %95, -4294967296
  %97 = icmp slt i8 %.07.val.i52.i.i.i.i.2, 0
  %.0.i56.i.i.i.i.2 = select i1 %97, i64 %96, i64 %95 ; 3 uses
  %98 = icmp slt i64 %.0.i56.i.i.i.i.2, %.0.i51.i.i.i.i.2
  %or.cond.i.i.i.i.2 = or i1 %92, %98
  br i1 %or.cond.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2, label %99

99:                                               ; preds = %86
  %100 = call i32 @fseek(ptr noundef nonnull %75, i64 noundef %90, i32 noundef 0), !noalias !159
  %.not45.i.i.i.i.2 = icmp eq i32 %100, 0
  br i1 %.not45.i.i.i.i.2, label %101, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2

101:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !159
  %102 = sub nsw i64 %.0.i56.i.i.i.i.2, %90       ; 3 uses
  %103 = udiv i64 %102, 52                        ; 2 uses
  %104 = mul nuw i64 %103, 52
  %.not46.i.i.i.i.2 = icmp ne i64 %104, %102
  %.not47125.i.i.i.i.2 = icmp ult i64 %102, 52
  %or.cond146.i.i.i.i.2 = or i1 %.not47125.i.i.i.i.2, %.not46.i.i.i.i.2
  br i1 %or.cond146.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %101, %124
  %.038126.i.i.i.i.2 = phi i64 [ %125, %124 ], [ 0, %101 ]
  %105 = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %75), !noalias !159
  %.not48.i.i.i.i.2 = icmp eq i64 %105, 52
  br i1 %.not48.i.i.i.i.2, label %106, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2

106:                                              ; preds = %.lr.ph.i.i.i.i.2
  %.07.val.i57.i.i.i.i.2 = load i8, ptr %i.cj, align 8, !noalias !159
  %107 = load i32, ptr %i.cj, align 8, !noalias !159
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  %109 = zext i32 %108 to i64                     ; 2 uses
  %110 = or disjoint i64 %109, -4294967296
  %111 = icmp slt i8 %.07.val.i57.i.i.i.i.2, 0
  %.0.i61.i.i.i.i.2 = select i1 %111, i64 %110, i64 %109
  %112 = add nsw i64 %.0.i61.i.i.i.i.2, %.0.i56.i.i.i.i.2 ; 2 uses
  %.07.val.i62.i.i.i.i.2 = load i8, ptr %i.ck, align 4, !noalias !159
  %113 = load i32, ptr %i.ck, align 4, !noalias !159
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64                     ; 2 uses
  %116 = or disjoint i64 %115, -4294967296
  %117 = icmp slt i8 %.07.val.i62.i.i.i.i.2, 0
  %.0.i66.i.i.i.i.2 = select i1 %117, i64 %116, i64 %115 ; 2 uses
  %118 = or i64 %.0.i66.i.i.i.i.2, %112
  %or.cond.not.i.i.i.i.2 = icmp sgt i64 %118, -1
  br i1 %or.cond.not.i.i.i.i.2, label %119, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2

119:                                              ; preds = %106
  store i8 0, ptr %i.cj, align 8, !noalias !159
  %120 = load ptr, ptr %2, align 8, !noalias !159
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 %.0.i.i18.i.i.i
  %122 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !159
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = add i64 %.038126.i.i.i.i.2, 1            ; 2 uses
  %.not47.i.i.i.i.2 = icmp eq i64 %125, %103
  br i1 %.not47.i.i.i.i.2, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !163

126:                                              ; preds = %119
  %127 = call i32 @fseek(ptr noundef nonnull %75, i64 noundef %112, i32 noundef 0), !noalias !159
  %.not49.i.i.i.i.2 = icmp eq i32 %127, 0
  br i1 %.not49.i.i.i.i.2, label %bb.al, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2, %106, %124, %126, %101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.sink.split.i.i.i.i.2, %99, %86, %bb.at, %76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  %128 = call noundef i32 @fclose(ptr noundef nonnull %75) #24, !noalias !159, !inline_history !164 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.i.i.i.i.2, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit70.thread.i.i.i.i.1
  store ptr null, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !158
  %i.ez = load i64, ptr %i.e, align 8, !noalias !168 ; 4 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i

129:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i, %bb.as
  %130 = phi i64 [ %.pre.i22.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i.i.i ], [ %i.et, %bb.as ]
  %131 = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store i64 %130, ptr %131, align 8, !noalias !159
  store ptr %i.dz, ptr %0, align 8, !alias.scope !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i: ; preds = %bb.au
  %spec.select.i.i.i29.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ez, i64 5)
  %i.fb = load ptr, ptr %2, align 8, !noalias !168
  %bcmp.i30.i.i.i = call i32 @bcmp(ptr %i.fb, ptr nonnull @.str.17, i64 %spec.select.i.i.i29.i.i.i), !noalias !168
  %.not.i.i31.i.i.i = icmp eq i32 %bcmp.i30.i.i.i, 0
  br i1 %.not.i.i31.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i, %bb.au
  %.inv.i48.i.i.i = icmp ult i64 %i.ez, 5
  %i.fc = select i1 %.inv.i48.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i
  %.0.i.i33.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i28.i.i.i ], [ %i.fc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i47.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @constinit.34, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !168
  store ptr @.str.28, ptr %i.b, align 8, !noalias !168
  %.not.i34.i.i.i = icmp eq i64 %.0.i.i33.i.i.i, %i.ez
  br i1 %.not.i34.i.i.i, label %.lr.ph.i35.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %i.fd = load ptr, ptr %2, align 8, !noalias !168
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.0.i.i33.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !168
  %i.fg = icmp eq i8 %i.ff, 47                    ; 2 uses
  %i.fh = select i1 %i.fg, ptr %i.b, ptr %i.a
  %i.fi = select i1 %i.fg, i64 8, i64 32
  br label %.lr.ph.i35.i.i.i

.lr.ph.i35.i.i.i:                                 ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i
  %.sroa.5.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %i.fi, %bb.av ]
  %.sroa.062.0.copyload.i.i.i.i = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i32.i.i.i ], [ %i.fh, %bb.av ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.062.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i, %.lr.ph.i35.i.i.i
  %.01692.i.i.i.i = phi ptr [ %.sroa.062.0.copyload.i.i.i.i, %.lr.ph.i35.i.i.i ], [ %i.kw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !168
  %i.fo = load ptr, ptr %.01692.i.i.i.i, align 8, !noalias !168 ; 4 uses
  store ptr %i.fk, ptr %4, align 8, !noalias !168
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #25, !noalias !168
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fo) #24, !noalias !168 ; 8 uses
  %i.fr = icmp ugt i64 %i.fq, 15
  br i1 %i.fr, label %bb.az, label %._crit_edge.i.i.i36.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.fs = icmp slt i64 %i.fq, 0
  br i1 %i.fs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ft = add nuw i64 %i.fq, 1                    ; 2 uses
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, !prof !33

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i: ; preds = %bb.bb
  %i.fv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #26, !noalias !168 ; 2 uses
  store ptr %i.fv, ptr %4, align 8, !noalias !168
  store i64 %i.fq, ptr %i.fk, align 8, !noalias !168
  br label %._crit_edge.i.i.i36.i.i.i

._crit_edge.i.i.i36.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i, %bb.ay
  %i.fw = phi ptr [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i46.i.i.i ], [ %i.fk, %bb.ay ] ; 3 uses
  switch i64 %i.fq, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  %i.fx = load i8, ptr %i.fo, align 1, !noalias !168
  store i8 %i.fx, ptr %i.fw, align 1, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

bb.be:                                            ; preds = %._crit_edge.i.i.i36.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fw, ptr nonnull align 1 %i.fo, i64 %i.fq, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i36.i.i.i
  store i64 %i.fq, ptr %i.fl, align 8, !noalias !168
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fq
  store i8 0, ptr %i.fy, align 1, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !168
  store ptr %i.fm, ptr %5, align 8, !noalias !168
  %i.fz = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.ga = load i64, ptr %i.fl, align 8, !noalias !168 ; 8 uses
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %bb.bf, label %._crit_edge.i.i21.i.i.i.i

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.gc = icmp slt i64 %i.ga, 0
  br i1 %i.gc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25, !noalias !168
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gd = add nuw i64 %i.ga, 1                    ; 2 uses
  %i.ge = icmp slt i64 %i.gd, 0
  br i1 %i.ge, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, !prof !33

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt17__throw_bad_allocv() #25, !noalias !168
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i: ; preds = %bb.bh
  %i.gf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #26, !noalias !168 ; 2 uses
  store ptr %i.gf, ptr %5, align 8, !noalias !168
  store i64 %i.ga, ptr %i.fm, align 8, !noalias !168
  br label %._crit_edge.i.i21.i.i.i.i

._crit_edge.i.i21.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i
  %i.gg = phi ptr [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22.i.i.i.i ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i37.i.i.i ] ; 4 uses
  switch i64 %i.ga, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  %i.gh = load i8, ptr %i.fz, align 1, !noalias !168
  store i8 %i.gh, ptr %i.gg, align 1, !noalias !168
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i21.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gg, ptr align 1 %i.fz, i64 %i.ga, i1 false), !noalias !168
  br label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %._crit_edge.i.i21.i.i.i.i
  store i64 0, ptr %i.fn, align 8, !noalias !168
  store i8 0, ptr %i.gg, align 1, !noalias !168
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  store i64 %i.ga, ptr %i.fn, align 8, !noalias !168
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ga
  store i8 0, ptr %i.gi, align 1, !noalias !168
  %i.gj = load i64, ptr %i.fn, align 8, !noalias !168 ; 5 uses
  %i.gk = icmp sgt i64 %i.gj, 9223372036854775792
  br i1 %i.gk, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i: ; preds = %bb.bl
  %i.gl = add nsw i64 %i.gj, 15                   ; 3 uses
  %i.gm = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.fm
  br i1 %i.gn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.go = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.go)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i
  %i.gp = load i64, ptr %i.fm, align 8, !noalias !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.gq = phi i64 [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i44.i.i.i = icmp ugt i64 %i.gl, %i.gq
  br i1 %.not.i.i.i.i44.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.gr, ptr noundef nonnull align 1 dereferenceable(15) @.str.35, i64 15, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i43.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.gj, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 15), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i: ; preds = %bb.bo, %bb.bn
  store i64 %i.gl, ptr %i.fn, align 8, !noalias !168
  %i.gs = load ptr, ptr %5, align 8, !noalias !168
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gl
  store i8 0, ptr %i.gt, align 1, !noalias !168
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i45.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E9_M_invokeERKSt9_Any_dataSF_":bb.a
  %i.id = load ptr, ptr %7, align 8, !noalias !168
  %i.ie = getelementptr i8, ptr %i.id, i64 -24
  %i.if = load i64, ptr %i.ie, align 8, !noalias !168
  %i.ig = getelementptr inbounds i8, ptr %7, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 240
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !168 ; 6 uses
  %.not.i.i.i32.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i32.i.i.i.i, label %bb.ca, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  call void @_ZSt16__throw_bad_castv() #25, !noalias !168
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i: ; preds = %bb.bz
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.ik = load i8, ptr %i.ij, align 8, !noalias !168
  %.not.i1.i.i.i.i.i.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 67
  %i.im = load i8, ptr %i.il, align 1, !noalias !168
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

bb.cc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ii) #24, !noalias !168
  %i.in = load ptr, ptr %i.ii, align 8, !noalias !168
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !168
  %i.iq = call noundef signext i8 %i.ip(ptr noundef nonnull align 8 dereferenceable(570) %i.ii, i8 noundef signext 10) #24, !noalias !168, !inline_history !175
  br label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i.i.i = phi i8 [ %i.im, %bb.cb ], [ %i.iq, %bb.cc ]
  %i.ir = call noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %.0.i.i.i.i.i.i.i) #24, !noalias !168 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.is = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8, !noalias !168 ; 2 uses
  store ptr %i.is, ptr %7, align 8, !noalias !168
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8, !noalias !168
  %i.iu = getelementptr i8, ptr %i.is, i64 -24
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !168
  %i.iw = getelementptr inbounds i8, ptr %7, i64 %i.iv
  store ptr %i.it, ptr %i.iw, align 8, !noalias !168
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ix, align 8, !noalias !168
  %i.iy = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ix) #24, !noalias !168 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ib) #24, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ix, align 8, !noalias !168
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.iz) #24, !noalias !168
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8, !noalias !168 ; 2 uses
  store ptr %i.ja, ptr %7, align 8, !noalias !168
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8, !noalias !168
  %i.jc = getelementptr i8, ptr %i.ja, i64 -24
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !168
  %i.je = getelementptr inbounds i8, ptr %7, i64 %i.jd
  store ptr %i.jb, ptr %i.je, align 8, !noalias !168
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.jf, align 8, !noalias !168
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jg) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !168
  %.pre.i41.i.i.i = load ptr, ptr %6, align 8, !noalias !168 ; 3 uses
  %i.jh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26, !noalias !168 ; 2 uses
  %i.ji = ptrtoint ptr %i.hn to i64               ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.jj, ptr %9, align 8, !noalias !168
  %i.jk = icmp eq ptr %.pre.i41.i.i.i, %i.ho
  %.pre.i.i.i = load i64, ptr %i.hp, align 8, !noalias !168 ; 2 uses
  br i1 %i.jk, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cd, %.thread.i.i.i.i
  %i.jl = phi i64 [ 0, %.thread.i.i.i.i ], [ %.pre.i.i.i, %bb.cd ] ; 3 uses
  %i.jm = phi ptr [ %i.hu, %.thread.i.i.i.i ], [ %i.jj, %bb.cd ] ; 3 uses
  %i.jn = phi i64 [ %i.ht, %.thread.i.i.i.i ], [ %i.ji, %bb.cd ]
  %i.jo = phi ptr [ %i.hs, %.thread.i.i.i.i ], [ %i.jh, %bb.cd ]
  %i.jp = icmp ult i64 %i.jl, 16
  call void @llvm.assume(i1 %i.jp)
  %i.jq = add nuw nsw i64 %i.jl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jm, ptr noundef nonnull align 8 dereferenceable(1) %i.ho, i64 %i.jq, i1 false), !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cd
  store ptr %.pre.i41.i.i.i, ptr %9, align 8, !noalias !168
  %i.jr = load i64, ptr %i.ho, align 8, !noalias !168
  store i64 %i.jr, ptr %i.jj, align 8, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ce
  %i.js = phi ptr [ %i.jm, %bb.ce ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 5 uses
  %i.jt = phi i64 [ %i.jn, %bb.ce ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %.pr.i.i.i = phi ptr [ %i.jo, %bb.ce ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 8 uses
  %i.ju = phi ptr [ %i.jm, %bb.ce ], [ %.pre.i41.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 2 uses
  %i.jv = phi i64 [ %i.jl, %bb.ce ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.jv, ptr %i.jw, align 8, !noalias !168
  store ptr %i.ho, ptr %6, align 8, !noalias !168
  store i64 0, ptr %i.hp, align 8, !noalias !168
  store i8 0, ptr %i.ho, align 8, !noalias !168
  %i.jx = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.jx, align 8, !noalias !168
  %i.jy = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 16
  store i64 %i.jt, ptr %i.jy, align 8, !noalias !168
  %i.jz = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 24
  store i64 -1, ptr %i.jz, align 8, !noalias !168
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %.pr.i.i.i, align 8, !noalias !168
  %i.ka = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 32 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 48 ; 3 uses
  store ptr %i.kb, ptr %i.ka, align 8, !noalias !168
  %i.kc = icmp eq ptr %i.ju, %i.js
  br i1 %i.kc, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.kd = icmp ult i64 %i.jv, 16
  call void @llvm.assume(i1 %i.kd)
  %i.ke = add nuw nsw i64 %i.jv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kb, ptr noundef nonnull align 8 dereferenceable(1) %i.js, i64 %i.ke, i1 false), !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit42.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.ju, ptr %i.ka, align 8, !noalias !168
  %i.kf = load i64, ptr %i.js, align 8, !noalias !168
  store i64 %i.kf, ptr %i.kb, align 8, !noalias !168
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit42.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit42.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i, %bb.cf
  %i.kg = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 40
  store i64 %i.jv, ptr %i.kg, align 8, !noalias !168
  store ptr %i.js, ptr %9, align 8, !noalias !168
  store i64 0, ptr %i.jw, align 8, !noalias !168
  store i8 0, ptr %i.js, align 1, !noalias !168
  store ptr %.pr.i.i.i, ptr %0, align 8, !alias.scope !168
  %.pre105.i.i.i.i = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !168
  %i.kh = icmp eq ptr %.pre105.i.i.i.i, %i.fm
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit42.i.i.i.i
  %i.ki = load i64, ptr %i.fm, align 8, !noalias !168
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %.pre105.i.i.i.i, i64 noundef %i.kj) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit42.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.kk = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.fk
  br i1 %i.kl, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i
  %i.km = load i64, ptr %i.fk, align 8, !noalias !168
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #27, !noalias !168
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit50.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_mm.exit.i39.i.i.i
  %i.ko = load ptr, ptr %5, align 8, !noalias !168 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.fm
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit50.i.i.i.i
  %i.kq = load i64, ptr %i.fm, align 8, !noalias !168
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #27, !noalias !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit50.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !168
  %i.ks = load ptr, ptr %4, align 8, !noalias !168 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.fk
  br i1 %i.kt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i.i.i
  %i.ku = load i64, ptr %i.fk, align 8, !noalias !168
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #27, !noalias !168
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  %i.kw = getelementptr inbounds nuw i8, ptr %.01692.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i = icmp eq ptr %i.kw, %i.fj
  br i1 %.not18.i.i.i.i, label %bb.cg, label %bb.aw

_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !158
  store ptr null, ptr %0, align 8, !alias.scope !158
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

"_ZSt10__invoke_rISt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERZNS3_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %129, %_ZN4absl13time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, %bb.cg
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl13time_internal4cctz14ZoneInfoSourceESt14default_deleteIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS3_12TimeZoneInfo4LoadESF_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4absl13time_internal4cctz12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !164 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull %i.b) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i64 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %.sroa.speculated, ptr noundef %i.d) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @fseek(ptr noundef %i.d, i64 noundef %.sroa.speculated, i32 noundef 1) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  %i.h = sub i64 %i.g, %.sroa.speculated
  store i64 %i.h, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !176 ; 0 uses
  br label %_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit

_ZN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl13time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !177
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl13time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl13time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %i.h) #24, !inline_history !179 ; 0 uses
end_hunk_3
