inline.NumInlined: 2484
inline.NumDeleted: 1106
begin_hunk_0
%"struct.std::_Head_base.61" = type { ptr }
%"struct.facebook::velox::tzdb::__continuation" = type { ptr, %"class.std::chrono::duration", %"class.std::variant.77", i8, %"struct.std::pair.101", %"class.std::__cxx11::basic_string", %"class.facebook::velox::date::year", %"class.facebook::velox::date::month", [3 x i8], %"class.std::variant", [4 x i8], %"struct.facebook::velox::tzdb::__at" }
%"struct.std::pair.101" = type { %"class.__gnu_cxx::__normal_iterator.103", %"class.__gnu_cxx::__normal_iterator.103" }
%"class.__gnu_cxx::__normal_iterator.103" = type { ptr }
%"class.facebook::velox::date::year" = type { i64 }
%"class.facebook::velox::date::month" = type { i8 }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [3 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type { %"union.std::__detail::__variant::_Variadic_union", i8 }
%"union.std::__detail::__variant::_Variadic_union" = type { %"union.std::__detail::__variant::_Variadic_union.34" }
%"union.std::__detail::__variant::_Variadic_union.34" = type { %"union.std::__detail::__variant::_Variadic_union.36" }
%"union.std::__detail::__variant::_Variadic_union.36" = type { %"struct.std::__detail::__variant::_Uninitialized.37" }
%"struct.std::__detail::__variant::_Uninitialized.37" = type { %"struct.facebook::velox::tzdb::__constrained_weekday" }
%"struct.facebook::velox::tzdb::__constrained_weekday" = type <{ %"class.facebook::velox::date::weekday", [3 x i8], i32, %"class.facebook::velox::date::day", [3 x i8] }>
%"class.facebook::velox::date::weekday" = type { i8 }
%"class.facebook::velox::date::day" = type { i8 }
%"struct.facebook::velox::tzdb::__at" = type <{ %"class.std::chrono::duration", i32, [4 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.facebook::velox::tzdb::time_zone" = type { %"class.std::unique_ptr.54" }
%"class.std::vector.40" = type { %"struct.std::_Vector_base.41" }
%"struct.std::_Vector_base.41" = type { %"struct.std::_Vector_base<facebook::velox::tzdb::__rule, std::allocator<facebook::velox::tzdb::__rule>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::velox::tzdb::__rule, std::allocator<facebook::velox::tzdb::__rule>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::velox::tzdb::__rule, std::allocator<facebook::velox::tzdb::__rule>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::velox::tzdb::__rule, std::allocator<facebook::velox::tzdb::__rule>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
%"struct.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value" = type { ptr, %"union.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value::_Storage" }
%"union.std::vector<std::pair<std::__cxx11::basic_string<char>, std::vector<facebook::velox::tzdb::__rule>>>::_Temporary_value::_Storage" = type { %"struct.std::pair" }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.40" }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"class.facebook::velox::tzdb::time_zone_link" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA10_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA18_cS1_EERKT_NS1_6formatE = comdat any

$_ZN8facebook5velox4tzdb9tzdb_list6__implC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2ERKS1_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag = comdat any

$_ZNSt6vectorIN8facebook5velox4tzdb6__ruleESaIS3_EED2Ev = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN8facebook5velox4tzdb6__ruleESaISA_EEESaISD_EE14_M_emplace_auxIJRKS6_SC_EEEN9__gnu_cxx17__normal_iteratorIPSD_SF_EENSK_IPKSD_SF_EEDpOT_ = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN8facebook5velox4tzdb6__ruleESaISA_EEESaISD_EE17_M_realloc_insertIJRKS6_SC_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN8facebook5velox4tzdb6__ruleESaISA_EEEaSEOSD_Qcl13_S_assignableIT_T0_EE = comdat any

$_ZNSt6vectorIN8facebook5velox4tzdb6__ruleESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN8facebook5velox4tzdb14__continuationD2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt6vectorIN8facebook5velox4tzdb9time_zoneESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN8facebook5velox4tzdb9time_zone6__implD2Ev = comdat any

$_ZNSt6vectorIN8facebook5velox4tzdb14time_zone_linkESaIS3_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZN8facebook5velox4tzdb14time_zone_linkC2ESt17basic_string_viewIcSt11char_traitsIcEES6_ = comdat any

$_ZN8facebook5velox4tzdb14time_zone_linkD2Ev = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb9time_zoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZN8facebook5velox4tzdb14time_zone_linkaSEOS2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt4swapIN8facebook5velox4tzdb14time_zone_linkEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox4tzdb14time_zone_linkESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_ = comdat any

$_ZNSt14_Fwd_list_baseISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_IN8facebook5velox4tzdb6__ruleESaISB_EEESaISE_EESaISG_EED2Ev = comdat any

$_ZNSt14_Fwd_list_baseIN8facebook5velox4tzdb4tzdbESaIS3_EED2Ev = comdat any

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN8facebook5velox4tzdb6__ruleESaISA_EEESaISD_EED2Ev = comdat any

$_ZN8facebook5velox4tzdb4tzdbD2Ev = comdat any

$_ZNK8facebook5velox4tzdb4tzdb13__locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA15_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathaSEOS1_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA21_cS1_EERKT_NS1_6formatE = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNK8facebook5velox4tzdb4tzdb14__find_in_zoneESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

@.str = private unnamed_addr constant [20 x i8] c"/usr/share/zoneinfo\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"/usr/share/zoneinfo/uclibc\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"discover_tz_dir failed to find zoneinfo\0A\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [10 x i8] c"tzdata.zi\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"leap-seconds.list\00", align 1
@_ZZN8facebook5velox4tzdb13get_tzdb_listEvE8__result = internal global %"class.facebook::velox::tzdb::tzdb_list" zeroinitializer, align 8
@_ZGVZN8facebook5velox4tzdb13get_tzdb_listEvE8__result = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"lowercase characters only here!\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"corrupt tzdb: expected character '\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"', got '\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"' instead\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"lowercase strings only here!\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"' from string '\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"corrupt tzdb: expected whitespace\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"corrupt tzdb: expected a string\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"corrupt tzdb year: expected 'min' or 'max'\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"corrupt tzdb year: year is less than the minimum\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"corrupt tzdb year: year is greater than the maximum\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"corrupt tzdb: expected a digit\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"corrupt tzdb: expected a non-zero digit\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"corrupt tzdb: integral too large\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"corrupt tzdb month: invalid name\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"corrupt tzdb day: value too large\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"corrupt tzdb weekday: invalid name\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"corrupt tzdb on: expected '>=' or '<='\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"corrupt tzdb: unexpected input\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"corrupt tzdb: rule '{}' does not exist\00", align 1
@.str.56 = private unnamed_addr constant [57 x i8] c"Found {} forever rules for time zone rule {}, expected 2\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"/etc/localtime\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"tzdb: the symlink '/etc/localtime' does not exist\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"tzdb: the path '/etc/localtime' is not a symlink\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"/usr/share/zoneinfo/\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"tzdb: the time zone '\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"' is not found in the database\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4tzdb23__libcpp_tzdb_directoryB5cxx11Ev(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = call i32 @stat(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #26
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 16384
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call noalias noundef nonnull dereferenceable(27) ptr @_Znwm(i64 noundef 27) #27 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i64 26, ptr %i.g, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.1, i64 26, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 26, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 26
  store i8 0, ptr %i.j, align 1, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call i32 @stat(ptr noundef nonnull @.str, ptr noundef nonnull %1) #26
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !7
  %i.o = and i32 %i.n, 61440
  %i.p = icmp eq i32 %i.o, 16384
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6, label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #27 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !11
  store i64 19, ptr %i.q, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.r, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 19, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  store i8 0, ptr %i.t, align 1, !tbaa !16
  br label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !19

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !11
  store i64 %i.c, ptr %i.a, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4tzdb11__init_tzdbERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.__entry, align 8            ; 4 uses
  %3 = alloca %struct.__entry, align 8            ; 4 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::basic_ifstream", align 8 ; 8 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::basic_ifstream", align 8 ; 17 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 11 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN8facebook5velox4tzdb23__libcpp_tzdb_directoryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !18
  %i.b = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !11
  %i.i = load i64, ptr %i.c, align 8, !tbaa !16
  store i64 %i.i, ptr %i.a, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
          to label %.noexc61.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit62.i.i: ; preds = %.noexc60.i.i
  %.sroa.017.0.copyload.i.i = load i64, ptr %i.fl, align 8, !tbaa !35 ; 2 uses
  %i.ft = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc63.i.i unwind label %bb.bf

.noexc63.i.i:                                     ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit62.i.i
  %i.fu = call i32 @tolower(i32 noundef %i.ft) #30
  %.not.i.i.i = icmp eq i32 %i.fu, 111
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc63.i.i
  %i.fv = invoke fastcc i64 @_ZN8facebook5velox4tzdbL12__parse_yearERSi(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i unwind label %bb.bf

.lr.ph.i.i.i.i:                                   ; preds = %.noexc63.i.i
  %i.fw = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc65.i.i unwind label %bb.bf ; 0 uses

.noexc65.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.fx = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc66.i.i unwind label %bb.bf

.noexc66.i.i:                                     ; preds = %.noexc65.i.i
  %i.fy = call i32 @tolower(i32 noundef %i.fx) #30
  %i.fz = icmp eq i32 %i.fy, 110
  br i1 %i.fz, label %bb.z, label %.lr.ph.i.1.i.i.i

bb.z:                                             ; preds = %.noexc66.i.i
  %i.ga = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.lr.ph.i.1.i.i.i unwind label %bb.bf ; 0 uses

.lr.ph.i.1.i.i.i:                                 ; preds = %bb.z, %.noexc66.i.i
  %i.gb = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc68.i.i unwind label %bb.bf

.noexc68.i.i:                                     ; preds = %.lr.ph.i.1.i.i.i
  %i.gc = call i32 @tolower(i32 noundef %i.gb) #30
  %i.gd = icmp eq i32 %i.gc, 108
  br i1 %i.gd, label %bb.aa, label %.lr.ph.i.2.i.i.i

bb.aa:                                            ; preds = %.noexc68.i.i
  %i.ge = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.lr.ph.i.2.i.i.i unwind label %bb.bf ; 0 uses

.lr.ph.i.2.i.i.i:                                 ; preds = %bb.aa, %.noexc68.i.i
  %i.gf = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc70.i.i unwind label %bb.bf

.noexc70.i.i:                                     ; preds = %.lr.ph.i.2.i.i.i
  %i.gg = call i32 @tolower(i32 noundef %i.gf) #30
  %i.gh = icmp eq i32 %i.gg, 121
  br i1 %i.gh, label %bb.ab, label %_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i

bb.ab:                                            ; preds = %.noexc70.i.i
  %i.gi = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i unwind label %bb.bf ; 0 uses

_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i: ; preds = %bb.ab, %.noexc70.i.i, %bb.y
  %.sroa.04.0.i.i.i = phi i64 [ %.sroa.017.0.copyload.i.i, %.noexc70.i.i ], [ %i.fv, %bb.y ], [ %.sroa.017.0.copyload.i.i, %bb.ab ]
  %i.gj = getelementptr inbounds i8, ptr %.sink.i, i64 -96
  store i64 %.sroa.04.0.i.i.i, ptr %i.gj, align 8, !tbaa !35
  %i.gk = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc72.i.i:                                     ; preds = %_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i
  switch i32 %i.gk, label %.invoke87.i.i [
    i32 32, label %.noexc75.i.i.preheader
    i32 9, label %.noexc75.i.i.preheader
  ]

.noexc75.i.i.preheader:                           ; preds = %.noexc72.i.i, %.noexc72.i.i
  br label %.noexc75.i.i

.noexc75.i.i:                                     ; preds = %.noexc75.i.i.preheader, %bb.ac
  %i.gl = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc74.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc74.i.i:                                     ; preds = %.noexc75.i.i
  switch i32 %i.gl, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit76.i.i [
    i32 32, label %bb.ac
    i32 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %.noexc74.i.i, %.noexc74.i.i
  %i.gm = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit76.i.i: ; preds = %.noexc74.i.i
  invoke fastcc void @_ZN8facebook5velox4tzdbL9__matchesERSic(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 noundef signext 45)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

bb.ad:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit76.i.i
  %i.gn = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc77.i.i:                                     ; preds = %bb.ad
  switch i32 %i.gn, label %.invoke87.i.i [
    i32 32, label %.noexc80.i.i.preheader
    i32 9, label %.noexc80.i.i.preheader
  ]

.noexc80.i.i.preheader:                           ; preds = %.noexc77.i.i, %.noexc77.i.i
  br label %.noexc80.i.i

.noexc80.i.i:                                     ; preds = %.noexc80.i.i.preheader, %bb.ae
  %i.go = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc79.i.i:                                     ; preds = %.noexc80.i.i
  switch i32 %i.go, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit81.i.i [
    i32 32, label %bb.ae
    i32 9, label %bb.ae
  ]

bb.ae:                                            ; preds = %.noexc79.i.i, %.noexc79.i.i
  %i.gp = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc80.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit81.i.i: ; preds = %.noexc79.i.i
  %i.gq = invoke fastcc i8 @_ZN8facebook5velox4tzdbL13__parse_monthERSi(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.af unwind label %bb.bg

bb.af:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit81.i.i
  %i.gr = getelementptr inbounds i8, ptr %.sink.i, i64 -88
  store i8 %i.gq, ptr %i.gr, align 8, !tbaa !16
  %i.gs = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc82.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc82.i.i:                                     ; preds = %bb.af
  switch i32 %i.gs, label %.invoke87.i.i [
    i32 32, label %.noexc85.i.i.preheader
    i32 9, label %.noexc85.i.i.preheader
  ]

.noexc85.i.i.preheader:                           ; preds = %.noexc82.i.i, %.noexc82.i.i
  br label %.noexc85.i.i

.noexc85.i.i:                                     ; preds = %.noexc85.i.i.preheader, %bb.ag
  %i.gt = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc84.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc84.i.i:                                     ; preds = %.noexc85.i.i
  switch i32 %i.gt, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit86.i.i [
    i32 32, label %bb.ag
    i32 9, label %bb.ag
  ]

bb.ag:                                            ; preds = %.noexc84.i.i, %.noexc84.i.i
  %i.gu = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc85.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit86.i.i: ; preds = %.noexc84.i.i
  %i.gv = invoke fastcc { i64, i64 } @_ZN8facebook5velox4tzdbL10__parse_onERSi(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.ah unwind label %bb.bh     ; 2 uses

bb.ah:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit86.i.i
  %.fca.0.extract9.i.i = extractvalue { i64, i64 } %i.gv, 0
  %.fca.1.extract10.i.i = extractvalue { i64, i64 } %i.gv, 1
  %.sroa.212.0.extract.trunc.i.i = trunc i64 %.fca.1.extract10.i.i to i40
  %i.gw = getelementptr inbounds i8, ptr %.sink.i, i64 -84
  store i64 %.fca.0.extract9.i.i, ptr %i.gw, align 4
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sink.i, i64 -76
  store i40 %.sroa.212.0.extract.trunc.i.i, ptr %.sroa.514.0..sroa_idx.i.i, align 4
  %i.gx = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc87.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc87.i.i:                                     ; preds = %bb.ah
  switch i32 %i.gx, label %.invoke87.i.i [
    i32 32, label %.noexc90.i.i.preheader
    i32 9, label %.noexc90.i.i.preheader
  ]

.noexc90.i.i.preheader:                           ; preds = %.noexc87.i.i, %.noexc87.i.i
  br label %.noexc90.i.i

.noexc90.i.i:                                     ; preds = %.noexc90.i.i.preheader, %bb.ai
  %i.gy = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc89.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc89.i.i:                                     ; preds = %.noexc90.i.i
  switch i32 %i.gy, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit91.i.i [
    i32 32, label %bb.ai
    i32 9, label %bb.ai
  ]

bb.ai:                                            ; preds = %.noexc89.i.i, %.noexc89.i.i
  %i.gz = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc90.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit91.i.i: ; preds = %.noexc89.i.i
  %i.ha = invoke fastcc i64 @_ZN8facebook5velox4tzdbL16__parse_durationERSi(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc92.i.i unwind label %bb.bi

.noexc92.i.i:                                     ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit91.i.i
  %i.hb = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc93.i.i unwind label %bb.bi

.noexc93.i.i:                                     ; preds = %.noexc92.i.i
  switch i32 %i.hb, label %33 [
    i32 119, label %bb.al
    i32 115, label %bb.aj
    i32 117, label %bb.ak
    i32 103, label %bb.ak
    i32 122, label %bb.ak
  ]

bb.aj:                                            ; preds = %.noexc93.i.i
  br label %bb.al

bb.ak:                                            ; preds = %.noexc93.i.i, %.noexc93.i.i, %.noexc93.i.i
  br label %bb.al

33:                                               ; preds = %.noexc93.i.i
  %34 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.al unwind label %bb.bi     ; 0 uses

bb.al:                                            ; preds = %33, %bb.ak, %bb.aj, %.noexc93.i.i
  %.0.i.i.i.i = phi i32 [ 0, %.noexc93.i.i ], [ 2, %bb.ak ], [ 1, %bb.aj ], [ 0, %33 ]
  %i.hc = getelementptr inbounds i8, ptr %.sink.i, i64 -64
  store i64 %i.ha, ptr %i.hc, align 8, !tbaa !35
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sink.i, i64 -56
  store i32 %.0.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !84
  %i.hd = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc95.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc95.i.i:                                     ; preds = %bb.al
  switch i32 %i.hd, label %.invoke87.i.i [
    i32 32, label %.noexc98.i.i.preheader
    i32 9, label %.noexc98.i.i.preheader
  ]

.noexc98.i.i.preheader:                           ; preds = %.noexc95.i.i, %.noexc95.i.i
  br label %.noexc98.i.i

.noexc98.i.i:                                     ; preds = %.noexc98.i.i.preheader, %bb.am
  %i.he = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc97.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc97.i.i:                                     ; preds = %.noexc98.i.i
  switch i32 %i.he, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit99.i.i [
    i32 32, label %bb.am
    i32 9, label %bb.am
  ]

bb.am:                                            ; preds = %.noexc97.i.i, %.noexc97.i.i
  %i.hf = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc98.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit99.i.i: ; preds = %.noexc97.i.i
  %i.hg = invoke fastcc i64 @_ZN8facebook5velox4tzdbL16__parse_durationERSi(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc103.i.i unwind label %bb.bj ; 2 uses

.noexc103.i.i:                                    ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit99.i.i
  %i.hh = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc104.i.i unwind label %bb.bj

.noexc104.i.i:                                    ; preds = %.noexc103.i.i
  switch i32 %i.hh, label %bb.ao [
    i32 115, label %bb.ap
    i32 100, label %bb.an
  ]

bb.an:                                            ; preds = %.noexc104.i.i
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc104.i.i
  %i.hi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc105.i.i unwind label %bb.bj ; 0 uses

.noexc105.i.i:                                    ; preds = %bb.ao
  %i.hj = icmp ne i64 %i.hg, 0
  %i.hk = zext i1 %i.hj to i8
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc105.i.i, %bb.an, %.noexc104.i.i
  %.0.i.i100.i.i = phi i8 [ %i.hk, %.noexc105.i.i ], [ 1, %bb.an ], [ 0, %.noexc104.i.i ]
  %i.hl = getelementptr inbounds i8, ptr %.sink.i, i64 -48
  store i64 %i.hg, ptr %i.hl, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sink.i, i64 -40
  store i8 %.0.i.i100.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !86
  %i.hm = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc106.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

.noexc106.i.i:                                    ; preds = %bb.ap
  switch i32 %i.hm, label %.invoke87.i.i [
    i32 32, label %.noexc109.i.i.preheader
    i32 9, label %.noexc109.i.i.preheader
  ]

.noexc109.i.i.preheader:                          ; preds = %.noexc106.i.i, %.noexc106.i.i
  br label %.noexc109.i.i

.noexc109.i.i:                                    ; preds = %.noexc109.i.i.preheader, %bb.aq
  %i.hn = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc108.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc108.i.i:                                    ; preds = %.noexc109.i.i
  switch i32 %i.hn, label %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit110.i.i [
    i32 32, label %bb.aq
    i32 9, label %bb.aq
  ]

bb.aq:                                            ; preds = %.noexc108.i.i, %.noexc108.i.i
  %i.ho = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc109.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit110.i.i: ; preds = %.noexc108.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !87
  invoke fastcc void @_ZN8facebook5velox4tzdbL14__parse_stringB5cxx11ERSi(ptr dead_on_unwind noalias nonnull writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc111.i.i unwind label %bb.bk

.noexc111.i.i:                                    ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit110.i.i
  %i.hp = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !87 ; 10 uses
  %i.hq = icmp eq i64 %i.hp, 1
  %.pre.i.i.i = load ptr, ptr %26, align 8, !tbaa !11, !noalias !87 ; 6 uses
  br i1 %i.hq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread21.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %.noexc111.i.i
  %lhsc.i.i.i = load i8, ptr %.pre.i.i.i, align 1, !noalias !87
  %i.hr = icmp eq i8 %lhsc.i.i.i, 45
  store ptr %i.n, ptr %28, align 8, !tbaa !18, !alias.scope !87
  br i1 %i.hr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i, label %._crit_edge.i.i.thread.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread21.i.i.i: ; preds = %.noexc111.i.i
  store ptr %i.n, ptr %28, align 8, !tbaa !18, !alias.scope !87
  %i.hs = icmp ugt i64 %i.hp, 15
  br i1 %i.hs, label %bb.ar, label %._crit_edge.i.i.i.i.i

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread21.i.i.i
  %i.ht = icmp slt i64 %i.hp, 0
  br i1 %i.ht, label %.noexc.i.i.i.i, label %bb.as

.noexc.i.i.i.i:                                   ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.hu = add nuw i64 %i.hp, 1                    ; 2 uses
  %i.hv = icmp slt i64 %i.hu, 0
  br i1 %i.hv, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !19

.noexc6.i.i.i.i:                                  ; preds = %bb.as
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.i

.noexc10.i.i.i:                                   ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.as
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #27
          to label %._crit_edge.i.i.i.i.thread.i unwind label %.loopexit11.i ; 2 uses

._crit_edge.i.i.i.i.thread.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.hw, ptr %28, align 8, !tbaa !11, !alias.scope !87
  store i64 %i.hp, ptr %i.n, align 8, !tbaa !16, !alias.scope !87
  br label %bb.at

._crit_edge.i.i.i.i.i:                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread21.i.i.i
  %cond.i.i = icmp eq i64 %i.hp, 0
  br i1 %cond.i.i, label %bb.au, label %bb.at

._crit_edge.i.i.thread.i.i.i:                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  %i.hx = load i8, ptr %.pre.i.i.i, align 1, !tbaa !16
  store i8 %i.hx, ptr %i.n, align 8, !tbaa !16
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.thread.i
  %i.hy = phi ptr [ %i.hw, %._crit_edge.i.i.i.i.thread.i ], [ %i.n, %._crit_edge.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hy, ptr align 1 %.pre.i.i.i, i64 %i.hp, i1 false)
  br label %bb.au

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  store i64 0, ptr %i.o, align 8, !tbaa !17, !alias.scope !87
  store i8 0, ptr %i.n, align 8, !tbaa !16, !alias.scope !87
  br label %.critedge.i.i.i

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %i.hz = phi ptr [ %i.hy, %bb.at ], [ %i.n, %._crit_edge.i.i.thread.i.i.i ], [ %i.n, %._crit_edge.i.i.i.i.i ]
  store i64 %i.hp, ptr %i.o, align 8, !tbaa !17, !alias.scope !87
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hp
  store i8 0, ptr %i.ia, align 1, !tbaa !16
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i
  %i.ib = icmp eq ptr %.pre.i.i.i, %i.p
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %.critedge.i.i.i
  %i.ic = icmp samesign ult i64 %i.hp, 16
  call void @llvm.assume(i1 %i.ic)
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge.i.i.i
  %i.id = load i64, ptr %i.p, align 8, !tbaa !16, !noalias !87
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.i.i, i64 noundef %i.ie) #29
  br label %bb.aw

.loopexit11.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %lpad.loopexit12.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp.i:                             ; preds = %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp13.i = landingpad { ptr, i32 }
          cleanup
  %.pre.i = load ptr, ptr %26, align 8, !tbaa !11, !noalias !87
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp.i, %.loopexit11.i
  %i.if = phi ptr [ %.pre.i.i.i, %.loopexit11.i ], [ %.pre.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi14.i = phi { ptr, i32 } [ %lpad.loopexit12.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp13.i, %.loopexit.split-lp.i ]
  %i.ig = icmp eq ptr %i.if, %i.p
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !87
  br label %.body.i.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !87
  %i.ij = getelementptr inbounds i8, ptr %.sink.i, i64 -32 ; 5 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !11 ; 6 uses
  %i.il = getelementptr inbounds i8, ptr %.sink.i, i64 -16 ; 4 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  %i.in = load ptr, ptr %28, align 8, !tbaa !11   ; 6 uses
  %i.io = icmp eq ptr %i.in, %i.n                 ; 2 uses
  %.pre46.i = load i64, ptr %i.o, align 8, !tbaa !17 ; 5 uses
  br i1 %i.im, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  br i1 %i.io, label %bb.ax, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.aw
  br i1 %i.io, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ip = icmp ult i64 %.pre46.i, 16
  call void @llvm.assume(i1 %i.ip)
  %.not21.i.i.i = icmp eq ptr %28, %i.ij
  br i1 %.not21.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %bb.ay, !prof !19

bb.ay:                                            ; preds = %bb.ax
  switch i64 %.pre46.i, label %bb.ba [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.iq = load i8, ptr %i.in, align 1, !tbaa !16
  store i8 %i.iq, ptr %i.ik, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ik, ptr align 1 %i.in, i64 %.pre46.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ir = load i64, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %.sink.i, i64 -24
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !17
  %i.it = load ptr, ptr %i.ij, align 8, !tbaa !11
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ir
  store i8 0, ptr %i.iu, align 1, !tbaa !16
  %.pre.i113.i.i = load ptr, ptr %28, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.iv = getelementptr inbounds i8, ptr %.sink.i, i64 -24
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !11
  store i64 %.pre46.i, ptr %i.iv, align 8, !tbaa !17
  %i.iw = load i64, ptr %i.n, align 8, !tbaa !16
  store i64 %i.iw, ptr %i.il, align 8, !tbaa !16
  br label %bb.bc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ix = load i64, ptr %i.il, align 8, !tbaa !16
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !11
  %i.iy = getelementptr inbounds i8, ptr %.sink.i, i64 -24
  store i64 %.pre46.i, ptr %i.iy, align 8, !tbaa !17
  %i.iz = load i64, ptr %i.n, align 8, !tbaa !16
  store i64 %i.iz, ptr %i.il, align 8, !tbaa !16
  %.not.i112.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i112.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ik, ptr %28, align 8, !tbaa !11
  store i64 %i.ix, ptr %i.n, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.n, ptr %28, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.bc, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.ax
  %i.ja = phi ptr [ %.pre.i113.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ik, %bb.bb ], [ %i.n, %bb.bc ], [ %i.in, %bb.ax ]
  store i64 0, ptr %i.o, align 8, !tbaa !17
  store i8 0, ptr %i.ja, align 1, !tbaa !16
  %i.jb = load ptr, ptr %28, align 8, !tbaa !11   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.n
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.jd = load i64, ptr %i.n, align 8, !tbaa !16
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc115.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.jf = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc114.i.i unwind label %.loopexit.i.i

.noexc114.i.i:                                    ; preds = %bb.bd
  %i.jg = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc115.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc115.i.i:                                    ; preds = %.noexc114.i.i
  switch i32 %i.jf, label %bb.bd [
    i32 -1, label %_ZN8facebook5velox4tzdbL11__skip_lineERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL11__skip_lineERSi.exit.i.i
  ], !llvm.loop !33

_ZN8facebook5velox4tzdbL11__skip_lineERSi.exit.i.i: ; preds = %.noexc115.i.i, %.noexc115.i.i
  %i.jh = load ptr, ptr %27, align 8, !tbaa !11   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.q
  br i1 %i.ji, label %_ZN8facebook5velox4tzdbL12__parse_ruleERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i: ; preds = %_ZN8facebook5velox4tzdbL11__skip_lineERSi.exit.i.i
  %i.jj = load i64, ptr %i.q, align 8, !tbaa !16
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #29
  br label %_ZN8facebook5velox4tzdbL12__parse_ruleERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.exit.i

.loopexit.i.i:                                    ; preds = %.noexc114.i.i, %bb.bd
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.aq, %.noexc109.i.i
  %lpad.loopexit1.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.am, %.noexc98.i.i
  %lpad.loopexit4.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ai, %.noexc90.i.i
  %lpad.loopexit6.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ag, %.noexc85.i.i
  %lpad.loopexit9.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ae, %.noexc80.i.i
  %lpad.loopexit11.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ac, %.noexc75.i.i
  %lpad.loopexit14.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.x, %.noexc61.i.i
  %lpad.loopexit16.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.v, %.noexc56.i.i
  %lpad.loopexit19.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i: ; preds = %bb.ap, %bb.al, %bb.ah, %bb.af, %bb.ad, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit76.i.i, %_ZN8facebook5velox4tzdbL10__parse_toERSiNS0_4date4yearE.exit.i.i, %bb.w, %_ZN8facebook5velox4tzdbL14__create_entryERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERKS9_.exit.i.i, %bb.u, %bb.n, %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i: ; preds = %.invoke87.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.be:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit57.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bf:                                            ; preds = %bb.ab, %.lr.ph.i.2.i.i.i, %bb.aa, %.lr.ph.i.1.i.i.i, %bb.z, %.noexc65.i.i, %.lr.ph.i.i.i.i, %bb.y, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit62.i.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bg:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit81.i.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bh:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit86.i.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bi:                                            ; preds = %33, %.noexc92.i.i, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit91.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bj:                                            ; preds = %bb.ao, %.noexc103.i.i, %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit99.i.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bk:                                            ; preds = %_ZN8facebook5velox4tzdbL27__skip_mandatory_whitespaceERSi.exit110.i.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.jr, %bb.bk ], [ %lpad.phi14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.body.i.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.jl, %bb.be ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.jq, %bb.bj ], [ %i.jp, %bb.bi ], [ %i.jo, %bb.bh ], [ %i.jn, %bb.bg ], [ %i.jm, %bb.bf ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit1.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit4.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit6.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit9.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit11.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit14.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit16.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit19.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %i.by, %bb.j ], [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i ]
  %i.js = load ptr, ptr %27, align 8, !tbaa !11   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.q
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i: ; preds = %.loopexit.split-lp.i.i
  %i.ju = load i64, ptr %i.q, align 8, !tbaa !16
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i.i: ; preds = %.loopexit.split-lp.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %.body

_ZN8facebook5velox4tzdbL12__parse_ruleERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.exit.i: ; preds = %_ZN8facebook5velox4tzdbL11__skip_lineERSi.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %.loopexit.i.backedge

.loopexit.i.backedge:                             ; preds = %.noexc36, %.noexc36, %.noexc34, %.noexc34, %.noexc22, %.noexc22, %.noexc38, %.noexc38, %_ZN8facebook5velox4tzdbL12__parse_ruleERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi.exit.i, %.noexc, %.noexc, %.noexc
  br label %.loopexit.i

.preheader7.i:                                    ; preds = %.noexc, %.noexc34
  %i.jw = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc33 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %.preheader7.i
  %i.jx = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc34 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc34:                                         ; preds = %.noexc33
  switch i32 %i.jw, label %.preheader7.i [
    i32 -1, label %.loopexit.i.backedge
    i32 10, label %.loopexit.i.backedge
  ], !llvm.loop !33

.preheader9.i:                                    ; preds = %.noexc, %.noexc36
  %i.jy = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc35 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc35:                                         ; preds = %.preheader9.i
  %i.jz = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc36 unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc36:                                         ; preds = %.noexc35
  switch i32 %i.jy, label %.preheader9.i [
    i32 -1, label %.loopexit.i.backedge
    i32 10, label %.loopexit.i.backedge
  ], !llvm.loop !33

.preheader.i:                                     ; preds = %.noexc, %.noexc38
  %i.ka = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc37 unwind label %.loopexit251

.noexc37:                                         ; preds = %.preheader.i
  %i.kb = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %.noexc38 unwind label %.loopexit251 ; 0 uses

.noexc38:                                         ; preds = %.noexc37
  switch i32 %i.ka, label %.preheader.i [
    i32 -1, label %.loopexit.i.backedge
    i32 10, label %.loopexit.i.backedge
  ], !llvm.loop !33

_ZN8facebook5velox4tzdbL26__parse_tzdata_record_typeILi114EEEvRNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS1_6__ruleESaISD_EEESaISG_EERSi.exit: ; preds = %.noexc
  %i.kc = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.kc, ptr %30, align 8, !tbaa !57
  %i.kd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kc, i64 -24    ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds i8, ptr %30, i64 %i.kf
  store ptr %i.kd, ptr %i.kg, align 8, !tbaa !57
  %i.kh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kh, align 8, !tbaa !57
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 88
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !11 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %30, i64 104 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %_ZN8facebook5velox4tzdbL26__parse_tzdata_record_typeILi114EEEvRNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS1_6__ruleESaISD_EEESaISG_EERSi.exit
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !16
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #29
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN8facebook5velox4tzdbL26__parse_tzdata_record_typeILi114EEEvRNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS1_6__ruleESaISD_EEESaISG_EERSi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kh, align 8, !tbaa !57
  %i.ko = getelementptr inbounds nuw i8, ptr %30, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ko) #26
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 4 uses
  store ptr %i.kp, ptr %30, align 8, !tbaa !57
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.kr = getelementptr i8, ptr %i.kp, i64 -24    ; 3 uses
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds i8, ptr %30, i64 %i.ks
  store ptr %i.kq, ptr %i.kt, align 8, !tbaa !57
  %i.ku = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.ku, align 8, !tbaa !90
  %i.kv = getelementptr inbounds nuw i8, ptr %30, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kv) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %31, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 8)
          to label %bb.bl unwind label %bb.iq

bb.bl:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 13 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 11 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 20 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 10 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %14, i64 124 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %14, i64 136
  %i.lh = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 17 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 20 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 25 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 12 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 16 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 72
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 132
  %i.lu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.loopexit.i65

.loopexit.i65:                                    ; preds = %.loopexit.i65.backedge, %bb.bl
  %i.ml = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc74 unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc74:                                         ; preds = %.loopexit.i65
  %i.mm = call i32 @tolower(i32 noundef %i.ml) #30
  switch i32 %i.mm, label %.invoke [
    i32 -1, label %_ZN8facebook5velox4tzdbL26__parse_tzdata_record_typeILi122EEEvRNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_INS1_6__ruleESaISD_EEESaISG_EERSi.exit
    i32 32, label %.loopexit.i65.backedge
    i32 9, label %.loopexit.i65.backedge
    i32 10, label %.loopexit.i65.backedge
    i32 35, label %.preheader.i73
    i32 114, label %.preheader13.i
    i32 108, label %.preheader15.i
    i32 122, label %.lr.ph.i.preheader.i41
  ]

.lr.ph.i.preheader.i41:                           ; preds = %.noexc74
  %i.mn = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc75 unwind label %.loopexit.split-lp224.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc75:                                         ; preds = %.lr.ph.i.preheader.i41
  %i.mo = call i32 @tolower(i32 noundef %i.mn) #30
  %i.mp = icmp eq i32 %i.mo, 111
  br i1 %i.mp, label %bb.bm, label %.lr.ph.i.1.i42

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4tzdbL14__parse_tzdataERNS1_4tzdbERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_INS1_6__ruleESaISC_EEESaISF_EERSi:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt19istreambuf_iteratorIcS2_EvEET_S8_RKS3_.exit

._crit_edge.i.i.i:                                ; preds = %bb.ej
  switch i64 %.1.i.i.i, label %.noexc63.i.i.i [
    i64 0, label %._crit_edge.thread181.i.i.i
    i64 2, label %bb.eo
  ]

.noexc63.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %bb.eg
  %.2180.i.i.i = phi i64 [ 3, %bb.eg ], [ %.1.i.i.i, %._crit_edge.i.i.i ]
  %i.vm = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !147
  store i64 %.2180.i.i.i, ptr %6, align 16, !tbaa !16, !noalias !99
  %i.vn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.vo = load ptr, ptr %i.lo, align 8, !tbaa !11, !alias.scope !99
  %i.vp = load i64, ptr %i.lq, align 8, !tbaa !17, !alias.scope !99
  store ptr %i.vo, ptr %i.vn, align 16, !tbaa !16, !noalias !99
  %i.vq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !16, !noalias !99
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.56, i64 56, i64 212, ptr nonnull %6)
          to label %bb.ek unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i

bb.ek:                                            ; preds = %.noexc63.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !147
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vm, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  invoke void @__cxa_throw(ptr nonnull %i.vm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
          to label %bb.fl unwind label %bb.em

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i: ; preds = %.noexc63.i.i.i
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br label %bb.en

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.051.i.i.i = phi i1 [ false, %bb.el ], [ true, %bb.ek ] ; 2 uses
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vt = load ptr, ptr %11, align 8, !tbaa !11, !noalias !99 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.vv = icmp eq ptr %i.vt, %i.vu
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i: ; preds = %bb.em
  %i.vw = load i64, ptr %i.vu, align 8, !tbaa !16, !noalias !99
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vx) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br i1 %.051.i.i.i, label %bb.en, label %.loopexit.split-lp.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !99
  br i1 %.051.i.i.i, label %bb.en, label %.loopexit.split-lp.i.i.i

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i
  %.pn132.i.i.i = phi { ptr, i32 } [ %i.vr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread.i.i.i ], [ %i.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i ], [ %i.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i ]
  call void @__cxa_free_exception(ptr %i.vm) #26
  br label %.loopexit.split-lp.i.i.i

bb.eo:                                            ; preds = %._crit_edge.i.i.i
  store i8 1, ptr %i.ky, align 8, !tbaa !104, !alias.scope !99
  br label %._crit_edge.thread181.i.i.i

._crit_edge.thread181.i.i.i:                      ; preds = %bb.eo, %._crit_edge.i.i.i, %bb.ef, %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit.i.i.i
  %i.vy = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.ep:                                            ; preds = %._crit_edge.thread181.i.i.i
  switch i32 %i.vy, label %bb.eq [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.vz = invoke fastcc i64 @_ZN8facebook5velox4tzdbL12__parse_yearERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %bb.eq
  store i64 %i.vz, ptr %i.ld, align 8, !tbaa !35, !alias.scope !99
  br label %.noexc100.i.i.i

.noexc100.i.i.i:                                  ; preds = %bb.es, %bb.er
  %i.wa = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc99.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc99.i.i.i:                                   ; preds = %.noexc100.i.i.i
  switch i32 %i.wa, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i [
    i32 32, label %bb.es
    i32 9, label %bb.es
  ]

bb.es:                                            ; preds = %.noexc99.i.i.i, %.noexc99.i.i.i
  %i.wb = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc100.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i: ; preds = %.noexc99.i.i.i
  %i.wc = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.et unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.et:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit101.i.i.i
  switch i32 %i.wc, label %bb.ev [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.eu:                                            ; preds = %bb.eq
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.we = invoke fastcc i8 @_ZN8facebook5velox4tzdbL13__parse_monthERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ew unwind label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  store i8 %i.we, ptr %i.le, align 8, !tbaa !16, !alias.scope !99
  br label %.noexc104.i.i.i

.noexc104.i.i.i:                                  ; preds = %bb.ex, %bb.ew
  %i.wf = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc103.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i

.noexc103.i.i.i:                                  ; preds = %.noexc104.i.i.i
  switch i32 %i.wf, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i [
    i32 32, label %bb.ex
    i32 9, label %bb.ex
  ]

bb.ex:                                            ; preds = %.noexc103.i.i.i, %.noexc103.i.i.i
  %i.wg = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc104.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i: ; preds = %.noexc103.i.i.i
  %i.wh = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ey unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.ey:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit105.i.i.i
  switch i32 %i.wh, label %bb.fa [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.ez:                                            ; preds = %bb.ev
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.wj = invoke fastcc { i64, i64 } @_ZN8facebook5velox4tzdbL10__parse_onERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.fb unwind label %bb.fe     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %.fca.0.extract2.i.i.i = extractvalue { i64, i64 } %i.wj, 0
  %.fca.1.extract3.i.i.i = extractvalue { i64, i64 } %i.wj, 1
  %.sroa.25.0.extract.trunc.i.i.i = trunc i64 %.fca.1.extract3.i.i.i to i40
  store i64 %.fca.0.extract2.i.i.i, ptr %i.lf, align 4, !alias.scope !99
  store i40 %.sroa.25.0.extract.trunc.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i, align 4, !alias.scope !99
  br label %.noexc108.i.i.i

.noexc108.i.i.i:                                  ; preds = %bb.fc, %bb.fb
  %i.wk = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc107.i.i.i unwind label %.loopexit.i.i.i

.noexc107.i.i.i:                                  ; preds = %.noexc108.i.i.i
  switch i32 %i.wk, label %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i [
    i32 32, label %bb.fc
    i32 9, label %bb.fc
  ]

bb.fc:                                            ; preds = %.noexc107.i.i.i, %.noexc107.i.i.i
  %i.wl = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc108.i.i.i unwind label %.loopexit.i.i.i, !llvm.loop !34 ; 0 uses

_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i: ; preds = %.noexc107.i.i.i
  %i.wm = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i

bb.fd:                                            ; preds = %_ZN8facebook5velox4tzdbL26__skip_optional_whitespaceERSi.exit109.i.i.i
  switch i32 %i.wm, label %bb.ff [
    i32 -1, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
    i32 10, label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  ]

bb.fe:                                            ; preds = %bb.fa
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.wo = invoke fastcc i64 @_ZN8facebook5velox4tzdbL16__parse_durationERSi(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc111.i.i.i unwind label %bb.fj

.noexc111.i.i.i:                                  ; preds = %bb.ff
  %i.wp = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc112.i.i.i unwind label %bb.fj

.noexc112.i.i.i:                                  ; preds = %.noexc111.i.i.i
  switch i32 %i.wp, label %35 [
    i32 119, label %bb.fi
    i32 115, label %bb.fg
    i32 117, label %bb.fh
    i32 103, label %bb.fh
    i32 122, label %bb.fh
  ]

bb.fg:                                            ; preds = %.noexc112.i.i.i
  br label %bb.fi

bb.fh:                                            ; preds = %.noexc112.i.i.i, %.noexc112.i.i.i, %.noexc112.i.i.i
  br label %bb.fi

35:                                               ; preds = %.noexc112.i.i.i
  %36 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5ungetEv(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.fi unwind label %bb.fj     ; 0 uses

bb.fi:                                            ; preds = %35, %bb.fh, %bb.fg, %.noexc112.i.i.i
  %.0.i.i.i.i.i = phi i32 [ 0, %.noexc112.i.i.i ], [ 2, %bb.fh ], [ 1, %bb.fg ], [ 0, %35 ]
  store i64 %i.wo, ptr %i.lh, align 8, !tbaa !35, !alias.scope !99
  store i32 %.0.i.i.i.i.i, ptr %i.li, align 8, !tbaa !84, !alias.scope !99
  br label %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i

bb.fj:                                            ; preds = %35, %.noexc111.i.i.i, %bb.ff
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.fj, %bb.fe, %bb.ez, %bb.eu, %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i, %.body138.i.i, %.body168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %bb.eb
  %.pn56.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.us, %bb.eb ], [ %i.wq, %bb.fj ], [ %i.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i.i.i ], [ %i.wn, %bb.fe ], [ %i.wi, %bb.ez ], [ %i.wd, %bb.eu ], [ %lpad.phi.i.i.i, %.body138.i.i ], [ %eh.lpad-body169, %.body168 ], [ %.pn56.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.i.i.i ], [ %i.vs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.i.i ], [ %.pn132.i.i.i, %bb.en ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit133.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit136.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit138.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit141.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit143.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit151.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp152.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 3 uses
  %i.wr = load ptr, ptr %i.la, align 8, !tbaa !11 ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.lb
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i: ; preds = %.loopexit.split-lp.i.i.i
  %i.wt = load i64, ptr %i.lb, align 8, !tbaa !16
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i: ; preds = %.loopexit.split-lp.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123.i.i
  %i.wv = load i8, ptr %i.kx, align 8, !tbaa !102
  %i.ww = icmp eq i8 %i.wv, 2
  br i1 %i.ww, label %bb.fk, label %.body.i.i52

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i124.i.i
  %i.wx = load ptr, ptr %i.lo, align 8, !tbaa !11 ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.lp
  br i1 %i.wy, label %.body.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i126.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i126.i.i: ; preds = %bb.fk
  %i.wz = load i64, ptr %i.lp, align 8, !tbaa !16
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #29
  br label %.body.i.i52

bb.fl:                                            ; preds = %bb.el
  unreachable

_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i: ; preds = %bb.fi, %bb.fd, %bb.fd, %bb.ey, %bb.ey, %bb.et, %bb.et, %bb.ep, %bb.ep
  %i.xb = load ptr, ptr %i.ny, align 8, !tbaa !150 ; 14 uses
  %i.xc = load ptr, ptr %i.nz, align 8, !tbaa !153
  %.not.i51.i.i = icmp eq ptr %i.xb, %i.xc
  br i1 %.not.i51.i.i, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.xb, ptr noundef nonnull align 8 dereferenceable(160) %14, i64 16, i1 false)
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 16 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 48 ; 2 uses
  store i8 -1, ptr %i.xe, align 8, !tbaa !102
  %i.xf = load i8, ptr %i.kx, align 8, !tbaa !102
  switch i8 %i.xf, label %bb.fq [
    i8 0, label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i
    i8 1, label %bb.fn
    i8 2, label %bb.fo
  ]

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.xd, ptr noundef nonnull align 8 dereferenceable(33) %i.lo, i64 16, i1 false), !tbaa.struct !137
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 32 ; 3 uses
  store ptr %i.xg, ptr %i.xd, align 8, !tbaa !18
  %i.xh = load ptr, ptr %i.lo, align 8, !tbaa !11 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.lp
  br i1 %i.xi, label %bb.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fp:                                            ; preds = %bb.fo
  %i.xj = load i64, ptr %i.lq, align 8, !tbaa !17 ; 3 uses
  %i.xk = icmp ult i64 %i.xj, 16
  call void @llvm.assume(i1 %i.xk)
  %i.xl = add nuw nsw i64 %i.xj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xg, ptr noundef nonnull align 8 dereferenceable(1) %i.lp, i64 %i.xl, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fo
  store ptr %i.xh, ptr %i.xd, align 8, !tbaa !11
  %i.xm = load i64, ptr %i.lp, align 8, !tbaa !16
  store i64 %i.xm, ptr %i.xg, align 8, !tbaa !16
  %.pre.i.i = load i64, ptr %i.lq, align 8, !tbaa !17
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp
  %i.xn = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.xj, %bb.fp ]
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !17
  store ptr %i.lp, ptr %i.lo, align 8, !tbaa !11
  store i64 0, ptr %i.lq, align 8, !tbaa !17
  store i8 0, ptr %i.lp, align 8, !tbaa !16
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i

bb.fq:                                            ; preds = %bb.fm
  unreachable

_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fn, %bb.fm
  %i.xp = load i8, ptr %i.kx, align 8, !tbaa !102
  store i8 %i.xp, ptr %i.xe, align 8, !tbaa !102
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xb, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xq, ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i64 24, i1 false)
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xb, i64 80 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xb, i64 96 ; 3 uses
  store ptr %i.xs, ptr %i.xr, align 8, !tbaa !18
  %i.xt = load ptr, ptr %i.la, align 8, !tbaa !11 ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.lb
  br i1 %i.xu, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.fr:                                            ; preds = %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i
  %i.xv = load i64, ptr %i.lc, align 8, !tbaa !17 ; 3 uses
  %i.xw = icmp ult i64 %i.xv, 16
  call void @llvm.assume(i1 %i.xw)
  %i.xx = add nuw nsw i64 %i.xv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xs, ptr noundef nonnull align 8 dereferenceable(1) %i.lb, i64 %i.xx, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i.i.i
  store ptr %i.xt, ptr %i.xr, align 8, !tbaa !11
  %i.xy = load i64, ptr %i.lb, align 8, !tbaa !16
  store i64 %i.xy, ptr %i.xs, align 8, !tbaa !16
  %.pre363.i.i = load i64, ptr %i.lc, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread.i.i

_ZNSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.fr
  %i.xz = phi i64 [ %.pre363.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.xv, %bb.fr ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xb, i64 88
  store i64 %i.xz, ptr %i.ya, align 8, !tbaa !17
  store ptr %i.lb, ptr %i.la, align 8, !tbaa !11
  store i64 0, ptr %i.lc, align 8, !tbaa !17
  store i8 0, ptr %i.lb, align 8, !tbaa !16
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xb, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.yb, ptr noundef nonnull align 8 dereferenceable(44) %i.ld, i64 44, i1 false)
  %i.yc = load ptr, ptr %i.ny, align 8, !tbaa !150
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 160
  store ptr %i.yd, ptr %i.ny, align 8, !tbaa !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i55.i.i

bb.fs:                                            ; preds = %_ZN8facebook5velox4tzdbL20__parse_continuationERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_INS1_6__ruleESaISA_EEESaISD_EERSi.exit.i.i
  %i.ye = load ptr, ptr %i.nt, align 8, !tbaa !154 ; 5 uses
  %i.yf = ptrtoint ptr %i.xb to i64
  %i.yg = ptrtoint ptr %i.ye to i64               ; 2 uses
  %i.yh = sub i64 %i.yf, %i.yg                    ; 3 uses
  %i.yi = icmp eq i64 %i.yh, 9223372036854775680
  br i1 %i.yi, label %bb.ft, label %_ZNKSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
          to label %.noexc148 unwind label %.loopexit.split-lp241

.noexc148:                                        ; preds = %bb.ft
  unreachable

_ZNKSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.fs
  %i.yj = sdiv exact i64 %i.yh, 160               ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.yj, i64 1)
  %i.yk = add nsw i64 %.sroa.speculated.i.i, %i.yj ; 2 uses
  %i.yl = icmp ult i64 %i.yk, %i.yj
  %i.ym = call i64 @llvm.umin.i64(i64 %i.yk, i64 57646075230342348)
  %i.yn = select i1 %i.yl, i64 57646075230342348, i64 %i.ym ; 3 uses
  %.not.i.i = icmp ne i64 %i.yn, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.yo = mul nuw nsw i64 %i.yn, 160
  %i.yp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yo) #27
          to label %.noexc149 unwind label %.loopexit240 ; 5 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorIN8facebook5velox4tzdb14__continuationESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yh ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.yq, ptr noundef nonnull align 8 dereferenceable(160) %14, i64 16, i1 false)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  %i.yt = load i8, ptr %i.kx, align 8, !tbaa !102 ; 2 uses
  switch i8 %i.yt, label %bb.fx [
    i8 0, label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i
    i8 1, label %bb.fu
    i8 2, label %bb.fv
  ]

bb.fu:                                            ; preds = %.noexc149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.yr, ptr noundef nonnull align 8 dereferenceable(33) %i.lo, i64 16, i1 false), !tbaa.struct !137
  br label %_ZNSt7variantIJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOSB_.exit.i.i.i

bb.fv:                                            ; preds = %.noexc149
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32 ; 3 uses
  store ptr %i.yu, ptr %i.yr, align 8, !tbaa !18
  %i.yv = load ptr, ptr %i.lo, align 8, !tbaa !11 ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.lp
  br i1 %i.yw, label %bb.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fw:                                            ; preds = %bb.fv
  %i.yx = load i64, ptr %i.lq, align 8, !tbaa !17 ; 3 uses
  %i.yy = icmp ult i64 %i.yx, 16
  call void @llvm.assume(i1 %i.yy)
  %i.yz = add nuw nsw i64 %i.yx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yu, ptr noundef nonnull align 8 dereferenceable(1) %i.lp, i64 %i.yz, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  store ptr %i.yv, ptr %i.yr, align 8, !tbaa !11
  %i.za = load i64, ptr %i.lp, align 8, !tbaa !16
  store i64 %i.za, ptr %i.yu, align 8, !tbaa !16
  %.pre.i146 = load i64, ptr %i.lq, align 8, !tbaa !17
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJSt9monostateN8facebook5velox4tzdb6__saveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC1EOSG_EUlOT_T0_E_OSt7variantIJS5_S9_SF_EEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SP_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fw
  %i.zb = phi i64 [ %.pre.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yx, %bb.fw ]
end_hunk_3
