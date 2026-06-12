inline.NumInlined: 1281
inline.NumDeleted: 547
begin_hunk_0
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
  %.not62 = icmp eq ptr %i.g, %i.h
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !7
  %.fr75 = freeze i64 %i.o                        ; 3 uses
  %i.p = icmp eq i64 %.fr75, 0
  %i.q = load ptr, ptr %3, align 8
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.03064.us = phi i64 [ %i.ae, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %.03163.us = phi i64 [ %spec.select, %bb.c ], [ %i.d, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03064.us ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 41
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = zext i8 %i.t to i64                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %char0 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %char0, 0
  %spec.select = select i1 %i.w, i64 %i.u, i64 %.03163.us ; 3 uses
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
  br i1 %or.cond.us, label %.thread40, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.ae = add i64 %.03064.us, 1                   ; 2 uses
  %.not.us = icmp eq i64 %i.ae, %i.l
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !27

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.03064 = phi i64 [ %i.av, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %.03163 = phi i64 [ %i.an, %bb.e ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.03064 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = zext i8 %i.ah to i64                    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #24
  %i.al = icmp eq i64 %.fr75, %i.ak
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread37

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %.lr.ph.split
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr nonnull %i.aj, i64 %.fr75)
  %i.am = icmp eq i32 %bcmp.i.i, 0
  %spec.select74 = select i1 %i.am, i64 %i.ai, i64 %.03163
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread37

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread37: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %.lr.ph.split
  %i.an = phi i64 [ %.03163, %.lr.ph.split ], [ %spec.select74, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ] ; 3 uses
  %i.ao = load i32, ptr %i.af, align 8, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i64 %1, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !24, !range !25, !noundef !26
  %i.at = icmp eq i8 %i.as, %i.a
  %i.au = icmp eq i64 %i.an, %i.ai
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %.thread40, label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread37, %bb.d
  %i.av = add i64 %.03064, 1                      ; 2 uses
  %.not = icmp eq i64 %i.av, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %.031.lcssa = phi i64 [ %i.d, %bb.a ], [ %spec.select, %bb.c ], [ %i.an, %bb.e ] ; 4 uses
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ], [ %i.l, %bb.e ] ; 2 uses
  %i.aw = icmp ult i64 %.030.lcssa, 256
  %i.ax = icmp ult i64 %.031.lcssa, 256
  %or.cond.not = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.not, label %bb.f, label %bb.l

.thread40:                                        ; preds = %bb.d, %bb.b
  %.us-phi = phi i64 [ %.03064.us, %bb.b ], [ %.03064, %bb.d ] ; 2 uses
  %i.ay = icmp ult i64 %.us-phi, 256
  br i1 %i.ay, label %.thread46, label %bb.l

bb.f:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.g, %i.ba
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1970, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 1, ptr %i.bd, align 1, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1970, ptr %i.be, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 1, ptr %i.bf, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  store i8 1, ptr %i.bg, align 1, !tbaa !32
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.bi, ptr %i.f, align 8, !tbaa !13
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  tail call void @_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.bj)
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit: ; preds = %bb.g, %bb.h
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.k ; 3 uses
  %i.bm = trunc i64 %1 to i32
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i8 %i.a, ptr %i.bn, align 8, !tbaa !24
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !7
  %i.bp = icmp eq i64 %.031.lcssa, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !7  ; 2 uses
  %i.bs = sub nuw nsw i64 4611686018427387903, %.031.lcssa
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i
  %i.bu = load ptr, ptr %3, align 8, !tbaa !17
  %i.bv = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.bu, i64 noundef %i.br) ; 0 uses
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !7
  %i.bx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.bw, i64 noundef 0, i64 noundef 1, i8 noundef signext 0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EE7emplaceIJEEEN9__gnu_cxx17__normal_iteratorIPS4_S6_EENS9_IPKS4_S6_EEDpOT_.exit
  %i.by = trunc nuw i64 %.031.lcssa to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 41
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !18
  br label %.thread46

.thread46:                                        ; preds = %.thread40, %bb.k
  %.03060 = phi i64 [ %.us-phi, %.thread40 ], [ %.030.lcssa, %bb.k ]
  %i.ca = trunc nuw i64 %.03060 to i8
  store i8 %i.ca, ptr %4, align 1, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %.thread40, %._crit_edge, %.thread46
  %or.cond.not44 = phi i1 [ false, %.thread40 ], [ false, %._crit_edge ], [ true, %.thread46 ]
  ret i1 %or.cond.not44
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
  br i1 %i.f, label %bb.aw, label %bb.b

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
  br i1 %i.m, label %bb.e, label %bb.au

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo7VersionB5cxx11Ev:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !7
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo11DescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.i)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.2, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZNSolsEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.s)
          to label %_ZNSolsEm.exit3 unwind label %bb.e ; 0 uses

_ZNSolsEm.exit3:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZNSolsEm.exit3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !7
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !47, !alias.scope !217
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !7, !alias.scope !217
  store i8 0, ptr %i.ab, align 8, !tbaa !33, !alias.scope !217
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !218, !noalias !217 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !217 ; 2 uses
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  %.08.i.i.i = select i1 %i.ah, ptr %i.ae, ptr %i.ag ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !222, !noalias !217 ; 2 uses
  %i.ak = ptrtoint ptr %.08.i.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.aj, i64 noundef %i.am)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !217 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !33, !alias.scope !217
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #27
  br label %.body

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !112
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !112
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %_ZNSolsEm.exit3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.e ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !62
  %i.g = icmp slt i64 %i.f, -576460752303423487
  %spec.select.idx = select i1 %i.g, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 4 uses
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %1, align 8, !tbaa !72
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %spec.select to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit

_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.l = udiv exact i64 %i.j, 48
  br label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi ptr [ %spec.select, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.m = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.017.i.i, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = xor i64 %i.m, -1
  %i.s = add nsw i64 %.01116.i.i, %i.r
  %.112.i.i = select i1 %i.p, i64 %i.m, i64 %i.s  ; 2 uses
  %.1.i.i = select i1 %i.p, ptr %.017.i.i, ptr %i.q ; 2 uses
  %i.t = icmp sgt i64 %.112.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, !llvm.loop !165

_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.0.lcssa.i.i = phi ptr [ %spec.select, %bb.b ], [ %.1.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not33 = icmp eq ptr %.0.lcssa.i.i, %i.d
  br i1 %.not33, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30
  %.02534 = phi ptr [ %.0.lcssa.i.i, %.lr.ph ], [ %i.ap, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ] ; 7 uses
  %i.v = icmp eq ptr %.02534, %spec.select
  %i.w = getelementptr inbounds i8, ptr %.02534, i64 -40
  %.in = select i1 %i.v, ptr %i.u, ptr %i.w
  %i.x = load i8, ptr %.in, align 8, !tbaa !33    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02534, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !55    ; 2 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i8 %i.x to i64
  %4 = load ptr, ptr %3, align 8, !tbaa !16       ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ab ; 3 uses
  %i.ad = zext i8 %i.z to i64
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ad ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !23
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.e, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !24, !range !25, !noundef !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !24, !range !25, !noundef !26
  %.not11.i = icmp eq i8 %i.ai, %i.ak
  br i1 %.not11.i, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 41
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 41
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !18
  %.not12.i = icmp eq i8 %i.am, %i.ao
  br i1 %.not12.i, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30: ; preds = %bb.c, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.02534, i64 48 ; 3 uses
  %.not = icmp eq ptr %i.ap, %i.d
  br i1 %.not, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, label %bb.c, !llvm.loop !223

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit, %bb.e, %bb.d, %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
  %.025.lcssa = phi ptr [ %.0.lcssa.i.i, %_ZSt11upper_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit ], [ %.02534, %bb.d ], [ %.02534, %bb.e ], [ %.02534, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit ], [ %i.ap, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread30 ] ; 4 uses
  %.not32 = icmp eq ptr %.025.lcssa, %i.d
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %sext.i.i = shl i64 %.sroa.2.0.copyload, 56
  %i.ar = ashr exact i64 %sext.i.i, 56
  %i.as = shl i64 %.sroa.2.0.copyload, 48
  %i.at = ashr i64 %i.as, 56
  %i.au = shl i64 %.sroa.2.0.copyload, 40
  %i.av = ashr i64 %i.au, 56
  %i.aw = shl i64 %.sroa.2.0.copyload, 32
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.2.0.copyload, 24
  %i.az = ashr i64 %i.ay, 56
  %i.ba = add nsw i64 %i.az, 1
  %i.bb = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.ar, i64 noundef %i.at, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.ba) #24 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.bb, 1
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i, 1099511627775
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  store i64 %i.bc, ptr %2, align 8, !tbaa !72
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !130
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread ], [ true, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !62
  %i.g = icmp slt i64 %i.f, -576460752303423487
  %spec.select.idx = select i1 %i.g, i64 48, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.idx ; 5 uses
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %1, align 8, !tbaa !72
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %spec.select to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread

_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.b
  %i.l = udiv exact i64 %i.j, 48
  br label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi ptr [ %spec.select, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.01116.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.112.i.i, %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.m = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.017.i.i, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !62
  %i.p = icmp slt i64 %i.o, %.sroa.0.0.copyload.i.i1.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = xor i64 %i.m, -1
  %i.s = add nsw i64 %.01116.i.i, %i.r
  %.112.i.i = select i1 %i.p, i64 %i.s, i64 %i.m  ; 2 uses
  %.1.i.i = select i1 %i.p, ptr %i.q, ptr %.017.i.i ; 3 uses
  %i.t = icmp sgt i64 %.112.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, !llvm.loop !224

_ZSt11lower_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIPKN4absl12lts_2025051213time_internal4cctz10TransitionElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not53 = icmp eq ptr %.1.i.i, %spec.select
  br i1 %.not53, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt11lower_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge
  %.04154 = phi ptr [ %.1.i.i, %.lr.ph ], [ %i.v, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge ] ; 7 uses
  %i.v = getelementptr inbounds i8, ptr %.04154, i64 -48 ; 2 uses
  %i.w = icmp eq ptr %i.v, %spec.select           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.04154, i64 -88
  %.in = select i1 %i.w, ptr %i.u, ptr %i.x
  %i.y = load i8, ptr %.in, align 8, !tbaa !33    ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.04154, i64 -40
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !55   ; 2 uses
  %i.ab = icmp eq i8 %i.y, %i.aa
  br i1 %i.ab, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i8 %i.y to i64
  %4 = load ptr, ptr %3, align 8, !tbaa !16       ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ac ; 3 uses
  %i.ae = zext i8 %i.aa to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !23
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !23
  %.not.i = icmp eq i32 %i.ag, %i.ah
  br i1 %.not.i, label %bb.e, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !24, !range !25, !noundef !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !24, !range !25, !noundef !26
  %.not11.i = icmp eq i8 %i.aj, %i.al
  br i1 %.not11.i, label %bb.f, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 41
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %.not12.i = icmp eq i8 %i.an, %i.ap
  br i1 %.not12.i, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge: ; preds = %bb.f, %bb.c
  br i1 %i.w, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.c

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread: ; preds = %bb.f, %bb.e, %bb.d
  %.not52 = icmp eq ptr %.04154, %spec.select
  br i1 %.not52, label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread
  %i.aq = getelementptr inbounds i8, ptr %.04154, i64 -16
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %.04154, i64 -8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %sext.i.i44 = shl i64 %.sroa.2.0.copyload, 56
  %i.ar = ashr exact i64 %sext.i.i44, 56
  %i.as = shl i64 %.sroa.2.0.copyload, 48
  %i.at = ashr i64 %i.as, 56
  %i.au = shl i64 %.sroa.2.0.copyload, 40
  %i.av = ashr i64 %i.au, 56
  %i.aw = shl i64 %.sroa.2.0.copyload, 32
  %i.ax = ashr i64 %i.aw, 56
  %i.ay = shl i64 %.sroa.2.0.copyload, 24
  %i.az = ashr i64 %i.ay, 56
  %i.ba = add nsw i64 %i.az, 1
  %i.bb = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.ar, i64 noundef %i.at, i64 noundef %i.av, i64 noundef %i.ax, i64 noundef %i.ba) #24 ; 2 uses
  %.fca.1.extract.i.i45 = extractvalue { i64, i64 } %i.bb, 1
  %.sroa.2.8.insert.ext.i46 = and i64 %.fca.1.extract.i.i45, 1099511627775
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  store i64 %i.bc, ptr %2, align 8, !tbaa !72
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.8.insert.ext.i46, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds i8, ptr %.04154, i64 -32
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !130
  br label %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread

_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread.thread: ; preds = %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge, %bb.b, %_ZSt11lower_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit, %bb.g, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.thread ], [ true, %bb.g ], [ false, %_ZSt11lower_boundIPKN4absl12lts_2025051213time_internal4cctz10TransitionES4_NS4_10ByUnixTimeEET_S8_S8_RKT0_T1_.exit ], [ false, %bb.b ], [ false, %_ZNK4absl12lts_2025051213time_internal4cctz12TimeZoneInfo16EquivTransitionsEhh.exit.backedge ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoE, i64 16), ptr %0, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #27
  br label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz14TransitionTypeESaIS4_EED2Ev.exit, %bb.c
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213time_internal4cctz12TimeZoneInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #27
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ult i64 %5, 60
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i64 %5 to i8               ; 3 uses
  %or.cond3 = icmp ult i64 %4, 60
  br i1 %or.cond3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw nsw i64 %4 to i8               ; 2 uses
  %or.cond5 = icmp ult i64 %3, 24
  br i1 %or.cond5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i64 %3 to i8
  %i.d = add i64 %2, -1
  %or.cond7 = icmp ult i64 %i.d, 28
  %i.e = add i64 %1, -1
  %i.f = icmp ult i64 %i.e, 12
  %or.cond11 = and i1 %i.f, %or.cond7
  br i1 %or.cond11, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 12
  br i1 %.not.i, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = sdiv i64 %1, 12
  %i.h = add nsw i64 %i.g, %0                     ; 2 uses
  %i.i = srem i64 %1, 12                          ; 3 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_monEllllaaa.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i64 %i.h, -1
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE17_M_default_appendEm:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #25
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ao = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 192153584101141162) ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 48
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 10 uses
  %xtraiter44 = and i64 %1, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 1970, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 25
  store i8 1, ptr %i.av, align 1, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 1970, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i8 1, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 41
  store i8 1, ptr %i.ay, align 1, !tbaa !32
  %i.az = add nsw i64 %1, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  br label %.lr.ph.i.i.i30.prol.loopexit

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.as, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.ba, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.az, %.lr.ph.i.i.i30.prol ]
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 15 uses
  %.057.i.i.i32 = phi i64 [ %i.bp, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.08.i.i.i31, i8 0, i64 48, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store i64 1970, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i8 1, ptr %i.bd, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 25
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store i64 1970, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store i8 1, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 41
  store i8 1, ptr %i.bh, align 1, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store i64 1970, ptr %i.bj, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store i8 1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 73
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i64 1970, ptr %i.bm, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i8 1, ptr %i.bn, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 89
  store i8 1, ptr %i.bo, align 1, !tbaa !32
  %i.bp = add i64 %.057.i.i.i32, -2               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %.not.i.i.i33.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i33.1, label %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !247

_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i37 ], [ %i.ar, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !71, !alias.scope !248
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i38 = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i37, !llvm.loop !77

_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.bt = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #27
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41

_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41: ; preds = %_ZNSt6vectorIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.ar, ptr %0, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4absl12lts_2025051213time_internal4cctz10TransitionEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4absl12lts_2025051213time_internal4cctz10TransitionESaIS4_EE13_M_deallocateEPS4_m.exit41, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4 x ptr], align 8                ; 8 uses
  %i.d = alloca [1 x ptr], align 8                ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 18 uses
  %i.g = alloca [52 x i8], align 16               ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !264 ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %spec.select.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 5)
  %i.k = load ptr, ptr %2, align 8, !tbaa !17, !noalias !264
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull @.str.10, i64 %spec.select.i.i.i.i.i.i), !noalias !264
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %.inv.i.i.i.i = icmp ult i64 %i.i, 5
  %i.l = select i1 %.inv.i.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !264
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.m, ptr %10, align 8, !tbaa !47, !noalias !264
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.n, align 8, !tbaa !7, !noalias !264
  store i8 0, ptr %i.m, align 8, !tbaa !33, !noalias !264
  %i.o = icmp eq i64 %.0.i.i.i.i.i, %i.i
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !17, !noalias !264
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.i.i.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33, !noalias !264
  %.not.i.i.i.i = icmp eq i8 %i.r, 47
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.s = call ptr @getenv(ptr noundef nonnull @.str.12) #24, !noalias !264 ; 3 uses
  %.not17.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not17.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.s, align 1, !tbaa !33, !noalias !264
  %.not18.i.i.i.i = icmp eq i8 %i.t, 0
  %spec.select.i.i.i.i = select i1 %.not18.i.i.i.i, ptr @.str.11, ptr %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ @.str.11, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i.i) #24, !noalias !264 ; 2 uses
  %i.v = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc.i.i.i.i unwind label %bb.i, !noalias !264

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i: ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %.0.i.i.i.i, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i unwind label %bb.i, !noalias !264 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !7, !noalias !264 ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ab = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %11 = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !264
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %12 = phi i64 [ %11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %bb.g ]
  %i.ac = icmp ugt i64 %i.y, %12
  br i1 %i.ac, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc22.i.i.i.i unwind label %bb.i, !noalias !264

.noexc22.i.i.i.i:                                 ; preds = %bb.h
  %.pre.i.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %.noexc22.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.ad = phi ptr [ %.pre.i.i.i.i.i.i, %.noexc22.i.i.i.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 47, ptr %i.ae, align 1, !tbaa !33, !noalias !264
  store i64 %i.y, ptr %i.n, align 8, !tbaa !7, !noalias !264
  %i.af = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.y
  store i8 0, ptr %i.ag, align 1, !tbaa !33, !noalias !264
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !264
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.ai = phi i64 [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.aj = icmp ugt i64 %.0.i.i.i.i.i, %i.ai
  br i1 %i.aj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.ai) #25
          to label %.noexc24.i.i.i.i unwind label %bb.n, !noalias !264

.noexc24.i.i.i.i:                                 ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ak = sub nuw i64 %i.ai, %.0.i.i.i.i.i        ; 2 uses
  %i.al = load i64, ptr %i.n, align 8, !tbaa !7, !noalias !264
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc25.i.i.i.i unwind label %bb.n, !noalias !264

.noexc25.i.i.i.i:                                 ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.ao = load ptr, ptr %2, align 8, !tbaa !17, !noalias !264
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.0.i.i.i.i.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ap, i64 noundef %i.ak)
          to label %bb.m unwind label %bb.n, !noalias !264 ; 0 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264
  %i.as = call noalias ptr @fopen(ptr noundef readonly %i.ar, ptr noundef nonnull @.str.13), !noalias !265 ; 3 uses
  %.not.i27.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i, %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.au = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i unwind label %bb.p, !noalias !264 ; 5 uses

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.o
  %i.av = ptrtoint ptr %i.as to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.au, align 8, !tbaa !112, !noalias !264
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.aw, align 8, !tbaa !144, !noalias !264
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !268, !noalias !264
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 -1, ptr %i.ay, align 8, !tbaa !270, !noalias !264
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = call noundef i32 @fclose(ptr noundef nonnull %i.as), !noalias !264 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %bb.m
  %storemerge.i.i.i.i = phi ptr [ %i.au, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %bb.m ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !tbaa !149, !alias.scope !264
  %i.bb = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.m
  br i1 %i.bc, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !264
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27, !noalias !264
  br label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i: ; preds = %bb.p, %bb.n, %bb.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.at, %bb.n ], [ %i.az, %bb.p ]
  %i.bf = load ptr, ptr %10, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.m
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !264
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27, !noalias !264
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i, %bb.ah, %.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i ], [ %.pn33.pn.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i ], [ %i.gc, %.thread.i.i.i.i ], [ %i.gf, %bb.ah ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !264
  br label %common.resume.i.i.i

_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !264
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.q, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2025051213time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !284
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !7, !noalias !285 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i: ; preds = %bb.q
  %spec.select.i.i.i15.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 5)
  %i.bl = load ptr, ptr %2, align 8, !tbaa !17, !noalias !285
  %bcmp145.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr nonnull @.str.10, i64 %spec.select.i.i.i15.i.i.i), !noalias !285
  %.not.i.i16.i.i.i = icmp eq i32 %bcmp145.i.i.i.i, 0
  br i1 %.not.i.i16.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i, %bb.q
  %.inv.i25.i.i.i = icmp ult i64 %i.bj, 5
  %i.bm = select i1 %.inv.i25.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i
  %.0.i.i18.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i14.i.i.i ], [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i24.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 46
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i
  %.0.idx155.i.i.i.i = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i17.i.i.i ], [ %.0.add.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i ] ; 2 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr @constinit.19, i64 %.0.idx155.i.i.i.i
  %i.ce = load ptr, ptr %.0.ptr.i.i.i.i, align 8, !tbaa !286, !noalias !285
  %i.cf = call noalias ptr @fopen(ptr noundef readonly %i.ce, ptr noundef nonnull @.str.13), !noalias !287 ; 9 uses
  %.not.i65.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i65.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !285
  %i.cg = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.cf), !noalias !285
  %.not54.i.i.i.i = icmp eq i64 %i.cg, 24
  br i1 %.not54.i.i.i.i, label %bb.t, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.ch = load i32, ptr %i.f, align 16
  %i.ci = xor i32 %i.ch, 1633974900
  %i.cj = getelementptr i8, ptr %i.f, i64 4
  %i.ck = load i16, ptr %i.cj, align 4
  %i.cl = zext i16 %i.ck to i32
  %i.cm = xor i32 %i.cl, 24948
  %i.cn = or i32 %i.ci, %i.cm
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not55.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not55.i.i.i.i, label %bb.u, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cq = load i8, ptr %i.bn, align 1, !tbaa !33, !noalias !285
  %.07.val.i.i.i.i.i = load i8, ptr %i.bo, align 4, !tbaa !33, !noalias !285 ; 2 uses
  %i.cr = zext i8 %.07.val.i.i.i.i.i to i64
end_hunk_2
