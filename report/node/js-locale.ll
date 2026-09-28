Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-locale?download=true
inline.NumInlined: 1255
inline.NumDeleted: 604
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::array" = type { [4 x %"class.std::basic_string_view"] }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.std::array.527" = type { [3 x %"class.std::basic_string_view"] }
%"struct.std::array.540" = type { [8 x %"struct.v8::internal::(anonymous namespace)::ValueAndType"] }
%"struct.v8::internal::(anonymous namespace)::ValueAndType" = type { ptr, ptr }
%"class.v8::internal::DirectHandle.503" = type { %"class.v8::internal::Handle.504" }
%"class.v8::internal::Handle.504" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::DirectHandle.0" = type { %"class.v8::internal::Handle.1" }
%"class.v8::internal::Handle.1" = type { %"class.v8::internal::HandleBase" }
%"struct.std::array.528" = type { [7 x %"struct.v8::internal::(anonymous namespace)::OptionData"] }
%"struct.v8::internal::(anonymous namespace)::OptionData" = type <{ { i64, i64 }, ptr, %"class.std::span.529", i8, [7 x i8] }>
%"class.std::span.529" = type { ptr, %"class.std::__detail::__extent_storage" }
%"class.std::__detail::__extent_storage" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.v8::String::Utf8Value" = type { ptr, i64 }
%"class.icu_78::Locale" = type { %"class.icu_78::UObject", %"union.icu_78::Locale::Payload" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::Locale::Payload" = type { %"struct.icu_78::Locale::Heap" }
%"struct.icu_78::Locale::Heap" = type { i8, [12 x i8], [6 x i8], [4 x i8], ptr }
%"class.icu_78::LocaleBuilder" = type { %"class.icu_78::UObject", i32, [9 x i8], [5 x i8], [4 x i8], ptr, ptr }
%"class.std::shared_ptr.455" = type { %"class.std::__shared_ptr.456" }
%"class.std::__shared_ptr.456" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.icu_78::StringByteSink" = type { %"class.icu_78::ByteSink", ptr }
%"class.icu_78::ByteSink" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.v8::Maybe.518" = type { i8, %"class.std::__cxx11::basic_string" }
%"class.v8::internal::SharedStringAccessGuardIfNeeded" = type { %"class.std::optional.541" }
%"class.std::optional.541" = type { %"struct.std::_Optional_base.542" }
%"struct.std::_Optional_base.542" = type { %"struct.std::_Optional_payload.544" }
%"struct.std::_Optional_payload.544" = type { %"struct.std::_Optional_payload.base.548", [7 x i8] }
%"struct.std::_Optional_payload.base.548" = type { %"struct.std::_Optional_payload_base.base.547" }
%"struct.std::_Optional_payload_base.base.547" = type <{ %"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::base::LockGuard<v8::base::Mutex>>::_Storage" = type { %"class.v8::base::LockGuard" }
%"class.v8::base::LockGuard" = type { ptr }
%"class.v8::internal::ConsStringIterator" = type <{ [32 x %"class.v8::internal::Tagged.571"], %"class.v8::internal::Tagged.571", i32, i32, i32, [4 x i8] }>
%"class.v8::internal::Tagged.571" = type { %"class.v8::internal::Tagged.4" }
%"class.v8::internal::Tagged.4" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }

$_ZN2v88internal7ManagedIN6icu_786LocaleEE4FromEPNS0_7IsolateEmSt10shared_ptrIS3_ENS0_14AllocationTypeE = comdat any

$_ZN2v88internal26GetKeywordValuesFromLocaleIN6icu_788CollatorEEENS0_17MaybeDirectHandleINS0_7JSArrayEEEPNS0_7IsolateEPKcSA_RKNS2_6LocaleEPFbSA_Ebb = comdat any

$_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE = comdat any

$_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN2v88internal26GetKeywordValuesFromLocaleIN6icu_788CalendarEEENS0_17MaybeDirectHandleINS0_7JSArrayEEEPNS0_7IsolateEPKcSA_RKNS2_6LocaleEPFbSA_Ebb = comdat any

$_ZNSt17_Function_handlerIFbPKcEPS2_E9_M_invokeERKSt9_Any_dataOS1_ = comdat any

$_ZNSt17_Function_handlerIFbPKcEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev = comdat any

$_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6AppendEPKci = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@.str = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"collations\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"hc\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c"JSReceiver::CreateDataProperty( isolate, info, factory->direction_string(), dir, Just(kDontThrow)) .FromJust()\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"length <= 2\00", align 1
@.str.8 = private unnamed_addr constant [136 x i8] c"JSReceiver::CreateDataProperty( isolate, info, factory->firstDay_string(), factory->NewNumberFromInt(fd), Just(kDontThrow)) .FromJust()\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"JSReceiver::CreateDataProperty(isolate, info, factory->weekend_string(), we, Just(kDontThrow)) .FromJust()\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"kf\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"kn\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ApplyOptionsToTag\00", align 1
@_ZZN2v88internal12_GLOBAL__N_123InsertOptionsIntoLocaleEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPN6icu_7813LocaleBuilderEE17hour_cycle_values = internal constant %"struct.std::array" { [4 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 3, ptr @.str.19 }, %"class.std::basic_string_view" { i64 3, ptr @.str.20 }, %"class.std::basic_string_view" { i64 3, ptr @.str.21 }, %"class.std::basic_string_view" { i64 3, ptr @.str.22 }] }, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"h11\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"h12\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"h23\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"h24\00", align 1
@_ZZN2v88internal12_GLOBAL__N_123InsertOptionsIntoLocaleEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPN6icu_7813LocaleBuilderEE17case_first_values = internal constant %"struct.std::array.527" { [3 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 5, ptr @.str.23 }, %"class.std::basic_string_view" { i64 5, ptr @.str.24 }, %"class.std::basic_string_view" { i64 5, ptr @.str.25 }] }, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"tue\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"wed\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"thu\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"fri\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@__const._ZN2v88internal12_GLOBAL__N_123InsertOptionsIntoLocaleEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPN6icu_7813LocaleBuilderE.kFirstDayValuesAndTypes = private unnamed_addr constant %"struct.std::array.540" { [8 x %"struct.v8::internal::(anonymous namespace)::ValueAndType"] [%"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.27, ptr @.str.28 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.29, ptr @.str.30 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.31, ptr @.str.32 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.33, ptr @.str.34 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.35, ptr @.str.36 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.37, ptr @.str.38 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.39, ptr @.str.40 }, %"struct.v8::internal::(anonymous namespace)::ValueAndType" { ptr @.str.41, ptr @.str.28 }] }, align 8
@.str.42 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"calendar\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@_ZTVN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN6icu_788ByteSinkD2Ev, ptr @_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZN6icu_7814StringByteSinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6AppendEPKci, ptr @_ZN6icu_788ByteSink15GetAppendBufferEiiPciPi, ptr @_ZN6icu_788ByteSink5FlushEv] }, comdat, align 8
@.str.49 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6icu_786LocaleELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8JSLocale16Is38AlphaNumListESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not44 = icmp eq i64 %0, 0
  br i1 %.not44, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit
  %.sroa.0.046 = phi i64 [ %i.bt, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit ], [ %0, %bb.a ] ; 13 uses
  %.sroa.8.045 = phi ptr [ %i.bu, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit ], [ %1, %bb.a ] ; 13 uses
  %i.a = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.8.045, i32 noundef 45, i64 noundef %.sroa.0.046) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %.sroa.8.045 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.f = add i64 %.sroa.0.046, -9
  %.not.i.i = icmp ult i64 %i.f, -6
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.g = load i8, ptr %.sroa.8.045, align 1       ; 2 uses
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %or.cond.i.i.i = icmp ult i8 %i.i, 26
  %i.j = add i8 %i.g, -48
  %i.k = icmp ult i8 %i.j, 10
  %i.l = or i1 %i.k, %or.cond.i.i.i               ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %.sroa.0.046, 1
  %or.cond.not = and i1 %i.l, %exitcond.not.i.i
  br i1 %or.cond.not, label %.lr.ph.i.i.1, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 1
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = and i8 %i.n, -33
  %i.p = add i8 %i.o, -65
  %or.cond.i.i.i.1 = icmp ult i8 %i.p, 26
  %i.q = add i8 %i.n, -48
  %i.r = icmp ult i8 %i.q, 10
  %i.s = or i1 %i.r, %or.cond.i.i.i.1             ; 2 uses
  %exitcond.not.i.i.1 = icmp ne i64 %.sroa.0.046, 2
  %or.cond.not.1 = and i1 %i.s, %exitcond.not.i.i.1
  br i1 %or.cond.not.1, label %.lr.ph.i.i.2, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 2
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = and i8 %i.u, -33
  %i.w = add i8 %i.v, -65
  %or.cond.i.i.i.2 = icmp ult i8 %i.w, 26
  %i.x = add i8 %i.u, -48
  %i.y = icmp ult i8 %i.x, 10
  %i.z = or i1 %i.y, %or.cond.i.i.i.2             ; 2 uses
  %exitcond.not.i.i.2 = icmp ne i64 %.sroa.0.046, 3
  %or.cond.not.2 = and i1 %i.z, %exitcond.not.i.i.2
  br i1 %or.cond.not.2, label %.lr.ph.i.i.3, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 3
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, -33
  %i.ad = add i8 %i.ac, -65
  %or.cond.i.i.i.3 = icmp ult i8 %i.ad, 26
  %i.ae = add i8 %i.ab, -48
  %i.af = icmp ult i8 %i.ae, 10
  %i.ag = or i1 %i.af, %or.cond.i.i.i.3           ; 2 uses
  %exitcond.not.i.i.3 = icmp ne i64 %.sroa.0.046, 4
  %or.cond.not.3 = and i1 %i.ag, %exitcond.not.i.i.3
  br i1 %or.cond.not.3, label %.lr.ph.i.i.4, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 4
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %or.cond.i.i.i.4 = icmp ult i8 %i.ak, 26
  %i.al = add i8 %i.ai, -48
  %i.am = icmp ult i8 %i.al, 10
  %i.an = or i1 %i.am, %or.cond.i.i.i.4           ; 2 uses
  %exitcond.not.i.i.4 = icmp ne i64 %.sroa.0.046, 5
  %or.cond.not.4 = and i1 %i.an, %exitcond.not.i.i.4
  br i1 %or.cond.not.4, label %.lr.ph.i.i.5, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 5
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = and i8 %i.ap, -33
  %i.ar = add i8 %i.aq, -65
  %or.cond.i.i.i.5 = icmp ult i8 %i.ar, 26
  %i.as = add i8 %i.ap, -48
  %i.at = icmp ult i8 %i.as, 10
  %i.au = or i1 %i.at, %or.cond.i.i.i.5           ; 2 uses
  %exitcond.not.i.i.5 = icmp ne i64 %.sroa.0.046, 6
  %or.cond.not.5 = and i1 %i.au, %exitcond.not.i.i.5
  br i1 %or.cond.not.5, label %.lr.ph.i.i.6, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 6
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %or.cond.i.i.i.6 = icmp ult i8 %i.ay, 26
  %i.az = add i8 %i.aw, -48
  %i.ba = icmp ult i8 %i.az, 10
  %i.bb = or i1 %i.ba, %or.cond.i.i.i.6           ; 2 uses
  %exitcond.not.i.i.6 = icmp ne i64 %.sroa.0.046, 7
  %or.cond.not.6 = and i1 %i.bb, %exitcond.not.i.i.6
  br i1 %or.cond.not.6, label %.lr.ph.i.i.7, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 7
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = and i8 %i.bd, -33
  %i.bf = add i8 %i.be, -65
  %or.cond.i.i.i.7 = icmp ult i8 %i.bf, 26
  %i.bg = add i8 %i.bd, -48
  %i.bh = icmp ult i8 %i.bg, 10
  %i.bi = or i1 %i.bh, %or.cond.i.i.i.7
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.046, i64 %i.d) ; 2 uses
  %i.bj = add i64 %.sroa.speculated.i, -9
  %.not.i.i11 = icmp ult i64 %i.bj, -6
  br i1 %.not.i.i11, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %.preheader.i.i12

.preheader.i.i12:                                 ; preds = %bb.b
  %2 = icmp eq ptr %i.a, %.sroa.8.045
  br i1 %2, label %.loopexit, label %.lr.ph.i.i13

bb.c:                                             ; preds = %.lr.ph.i.i13
  %i.bk = add nuw i64 %.0710.i.i14, 1             ; 2 uses
  %exitcond.not.i.i17 = icmp eq i64 %i.bk, %.sroa.speculated.i
  br i1 %exitcond.not.i.i17, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !0

.lr.ph.i.i13:                                     ; preds = %.preheader.i.i12, %bb.c
  %.0710.i.i14 = phi i64 [ %i.bk, %bb.c ], [ 0, %.preheader.i.i12 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 %.0710.i.i14
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = and i8 %i.bm, -33
  %i.bo = add i8 %i.bn, -65
  %or.cond.i.i.i15 = icmp ult i8 %i.bo, 26
  %i.bp = add i8 %i.bm, -48
  %i.bq = icmp ult i8 %i.bp, 10
  %i.br = or i1 %i.bq, %or.cond.i.i.i15
  br i1 %i.br, label %bb.c, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread

.loopexit:                                        ; preds = %bb.c, %.preheader.i.i12
  %i.bs = add nuw i64 %i.d, 1                     ; 3 uses
  %.not35 = icmp ult i64 %i.d, %.sroa.0.046
  br i1 %.not35, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i64 noundef %i.bs, i64 noundef %.sroa.0.046) #18
  unreachable

_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit: ; preds = %.loopexit
  %i.bt = sub nuw i64 %.sroa.0.046, %i.bs         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.8.045, i64 %i.bs
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, !llvm.loop !17

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread.thread: ; preds = %bb.b, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit, %.lr.ph.i.i13, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %.1.ph = phi i1 [ false, %.lr.ph.i.i13 ], [ %i.bi, %.lr.ph.i.i.7 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread ], [ false, %bb.a ], [ %i.l, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i.i.1 ], [ %i.z, %.lr.ph.i.i.2 ], [ %i.ag, %.lr.ph.i.i.3 ], [ %i.an, %.lr.ph.i.i.4 ], [ %i.au, %.lr.ph.i.i.5 ], [ %i.bb, %.lr.ph.i.i.6 ], [ false, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit ], [ false, %bb.b ]
  ret i1 %.1.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8JSLocale8Is3AlphaESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not.i.i.not = icmp eq i64 %0, 3
  br i1 %.not.i.i.not, label %.lr.ph.i.i, label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = and i8 %i.a, -33
  %i.c = add i8 %i.b, -65
  %i.d = icmp ult i8 %i.c, 26
  br i1 %i.d, label %.lr.ph.i.i.1, label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  br i1 %i.i, label %.lr.ph.i.i.2, label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  br label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit

_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %bb.a
  %.1.i.i = phi i1 [ false, %bb.a ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i.1 ], [ %i.n, %.lr.ph.i.i.2 ]
  ret i1 %.1.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8JSLocale27StartsWithUnicodeLanguageIdESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.031132 = phi i64 [ %.132, %bb.g ], [ 0, %bb.a ] ; 3 uses
  %.033131 = phi i64 [ %.pre-phi, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %.sroa.29.0130 = phi ptr [ %.sroa.29.1, %bb.g ], [ null, %bb.a ] ; 6 uses
  %.sroa.18.0129 = phi ptr [ %.sroa.18.1, %bb.g ], [ null, %bb.a ] ; 5 uses
  %.sroa.0.0128 = phi ptr [ %.sroa.0.1, %bb.g ], [ null, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.033131
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 45
  br i1 %i.d, label %bb.b, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre146 = add nuw i64 %.033131, 1
  br label %bb.g

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.031132 ; 2 uses
  %i.f = sub i64 %.033131, %.031132               ; 2 uses
  %.not.i = icmp eq ptr %.sroa.18.0129, %.sroa.29.0130
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.f, ptr %.sroa.18.0129, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.18.0129, i64 8
  store ptr %i.e, ptr %i.g, align 8
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %.sroa.29.0130 to i64
  %i.i = ptrtoint ptr %.sroa.0.0128 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.e, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 2 uses
  store i64 %i.f, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.e, ptr %i.t, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.0128, %.sroa.29.0130
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0128, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !27
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %.sroa.29.0130
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %.not.i24.i.i = icmp eq ptr %.sroa.0.0128, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0128, i64 noundef %i.j) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0.3 = phi ptr [ %i.r, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0.0128, %bb.c ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.18.0129, %bb.c ]
  %.sroa.29.3 = phi ptr [ %i.w, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.29.0130, %bb.c ]
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16
  %i.x = add nuw i64 %.033131, 1                  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader._crit_edge, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit
  %.pre-phi = phi i64 [ %.pre146, %.preheader._crit_edge ], [ %i.x, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0128, %.preheader._crit_edge ], [ %.sroa.0.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit ] ; 8 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0129, %.preheader._crit_edge ], [ %.sroa.18.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit ] ; 9 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0130, %.preheader._crit_edge ], [ %.sroa.29.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit ] ; 4 uses
  %.132 = phi i64 [ %.031132, %.preheader._crit_edge ], [ %i.x, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit ] ; 4 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %0
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i64 %.132, %0
  br i1 %.not, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.132 ; 2 uses
  %i.z = sub i64 %0, %.132                        ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.18.1, %.sroa.29.1
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.z, ptr %.sroa.18.1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.18.1, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51

bb.k:                                             ; preds = %bb.i
  %i.ac = ptrtoint ptr %.sroa.18.1 to i64
  %i.ad = ptrtoint ptr %.sroa.0.1 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.l, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39: ; preds = %bb.k
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i40 = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i40, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i41 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i41)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #19 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %i.z, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.y, ptr %i.ao, align 8
  %.not10.i.i.i.i.i42 = icmp eq ptr %.sroa.0.1, %.sroa.18.1
  br i1 %.not10.i.i.i.i.i42, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i47, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39, %.lr.ph.i.i.i.i.i43
  %.012.i.i.i.i.i44 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i43 ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39 ] ; 2 uses
  %.0911.i.i.i.i.i45 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i43 ], [ %.sroa.0.1, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i44, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i45, i64 16, i1 false), !alias.scope !28
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i45, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i44, i64 16 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.ap, %.sroa.18.1
  br i1 %.not.i.i.i.i.i46, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i47, label %.lr.ph.i.i.i.i.i43, !llvm.loop !21

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i47: ; preds = %.lr.ph.i.i.i.i.i43, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39
  %.0.lcssa.i.i.i.i.i48 = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i39 ], [ %i.aq, %.lr.ph.i.i.i.i.i43 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i48, i64 16
  %.not.i24.i.i49 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i24.i.i49, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50: ; preds = %bb.m, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i47
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50, %bb.j, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.h ], [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50 ], [ %.sroa.0.1, %bb.j ] ; 10 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.1, %bb.h ], [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50 ], [ %i.ab, %bb.j ]
  %.sroa.29.2 = phi ptr [ %.sroa.29.1, %bb.h ], [ %i.as, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i50 ], [ %.sroa.29.1, %bb.j ]
  %.sroa.017.0.copyload = load i64, ptr %.sroa.0.2, align 8 ; 10 uses
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %.sroa.218.0.copyload = load ptr, ptr %.sroa.218.0..sroa_idx, align 8 ; 9 uses
  %i.at = and i64 %.sroa.017.0.copyload, -2
  %.not.i.i.not.i = icmp eq i64 %i.at, 2
  br i1 %.not.i.i.not.i, label %.lr.ph.i.i.i, label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %.sroa.017.0.copyload
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51, %bb.n
  %.0710.i.i.i = phi i64 [ %i.au, %bb.n ], [ 0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 %.0710.i.i.i
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %i.az = icmp ult i8 %i.ay, 26
  br i1 %i.az, label %bb.n, label %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJPKcmEEERS3_DpOT_.exit51
  %i.ba = add i64 %.sroa.017.0.copyload, -9
  %.not.i.i5.i = icmp ult i64 %i.ba, -4
  br i1 %.not.i.i5.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %.lr.ph.i.i7.i

2:                                                ; preds = %.lr.ph.i.i7.i
  %exitcond.not.i.i10.i = icmp eq i64 %.sroa.017.0.copyload, 1
  br i1 %exitcond.not.i.i10.i, label %.loopexit, label %.lr.ph.i.i7.i.1

.lr.ph.i.i7.i.1:                                  ; preds = %2
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = and i8 %i.bc, -33
  %i.be = add i8 %i.bd, -65
  %i.bf = icmp ult i8 %i.be, 26
  br i1 %i.bf, label %3, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

3:                                                ; preds = %.lr.ph.i.i7.i.1
  %exitcond.not.i.i10.i.1 = icmp eq i64 %.sroa.017.0.copyload, 2
  br i1 %exitcond.not.i.i10.i.1, label %.loopexit, label %.lr.ph.i.i7.i.2

.lr.ph.i.i7.i.2:                                  ; preds = %3
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = and i8 %i.bh, -33
  %i.bj = add i8 %i.bi, -65
  %i.bk = icmp ult i8 %i.bj, 26
  br i1 %i.bk, label %4, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

4:                                                ; preds = %.lr.ph.i.i7.i.2
  %exitcond.not.i.i10.i.2 = icmp eq i64 %.sroa.017.0.copyload, 3
  br i1 %exitcond.not.i.i10.i.2, label %.loopexit, label %.lr.ph.i.i7.i.3

.lr.ph.i.i7.i.3:                                  ; preds = %4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 3
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = and i8 %i.bm, -33
  %i.bo = add i8 %i.bn, -65
  %i.bp = icmp ult i8 %i.bo, 26
  br i1 %i.bp, label %5, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

5:                                                ; preds = %.lr.ph.i.i7.i.3
  %exitcond.not.i.i10.i.3 = icmp eq i64 %.sroa.017.0.copyload, 4
  br i1 %exitcond.not.i.i10.i.3, label %.loopexit, label %.lr.ph.i.i7.i.4

.lr.ph.i.i7.i.4:                                  ; preds = %5
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, -33
  %i.bt = add i8 %i.bs, -65
  %i.bu = icmp ult i8 %i.bt, 26
  br i1 %i.bu, label %bb.o, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

bb.o:                                             ; preds = %.lr.ph.i.i7.i.4
  %exitcond.not.i.i10.i.4 = icmp eq i64 %.sroa.017.0.copyload, 5
  br i1 %exitcond.not.i.i10.i.4, label %.loopexit, label %.lr.ph.i.i7.i.5

.lr.ph.i.i7.i.5:                                  ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 5
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bw, -33
  %i.by = add i8 %i.bx, -65
  %i.bz = icmp ult i8 %i.by, 26
  br i1 %i.bz, label %bb.p, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

bb.p:                                             ; preds = %.lr.ph.i.i7.i.5
  %exitcond.not.i.i10.i.5 = icmp eq i64 %.sroa.017.0.copyload, 6
  br i1 %exitcond.not.i.i10.i.5, label %.loopexit, label %.lr.ph.i.i7.i.6

.lr.ph.i.i7.i.6:                                  ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 6
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = and i8 %i.cb, -33
  %i.cd = add i8 %i.cc, -65
  %i.ce = icmp ult i8 %i.cd, 26
  br i1 %i.ce, label %bb.q, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

bb.q:                                             ; preds = %.lr.ph.i.i7.i.6
  %exitcond.not.i.i10.i.6 = icmp eq i64 %.sroa.017.0.copyload, 7
  br i1 %exitcond.not.i.i10.i.6, label %.loopexit, label %.lr.ph.i.i7.i.7

.lr.ph.i.i7.i.7:                                  ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.218.0.copyload, i64 7
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = and i8 %i.cg, -33
  %i.ci = add i8 %i.ch, -65
  %i.cj = icmp ult i8 %i.ci, 26
  br i1 %i.cj, label %.loopexit, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

.lr.ph.i.i7.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i
  %i.ck = load i8, ptr %.sroa.218.0.copyload, align 1
  %i.cl = and i8 %i.ck, -33
  %i.cm = add i8 %i.cl, -65
  %i.cn = icmp ult i8 %i.cm, 26
  br i1 %i.cn, label %2, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

.loopexit:                                        ; preds = %bb.n, %2, %3, %4, %5, %bb.o, %bb.p, %bb.q, %.lr.ph.i.i7.i.7
  %i.co = ptrtoint ptr %.sroa.18.2 to i64
  %i.cp = ptrtoint ptr %.sroa.0.2 to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp eq i64 %i.cq, 16
  br i1 %i.cs, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 16
  %.sroa.015.0.copyload = load i64, ptr %i.ct, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 24
  %.sroa.216.0.copyload = load ptr, ptr %.sroa.216.0..sroa_idx, align 8 ; 5 uses
  switch i64 %.sroa.015.0.copyload, label %.split37 [
    i64 1, label %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit
    i64 4, label %.lr.ph.i.i.i57.preheader
  ]

.lr.ph.i.i.i57.preheader:                         ; preds = %bb.r
  %i.cu = load i8, ptr %.sroa.216.0.copyload, align 1
  %i.cv = and i8 %i.cu, -33
  %i.cw = add i8 %i.cv, -65
  %i.cx = icmp ult i8 %i.cw, 26
  br i1 %i.cx, label %.lr.ph.i.i.i57.1, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.r
  %i.cy = load i8, ptr %.sroa.216.0.copyload, align 1 ; 2 uses
  %i.cz = and i8 %i.cy, -33
  %i.da = add i8 %i.cz, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.da, 26
  %i.db = add i8 %i.cy, -48
  %i.dc = icmp ult i8 %i.db, 10
  %i.dd = or i1 %i.dc, %or.cond.i.i.i.i
  br i1 %i.dd, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i.i57.1:                                 ; preds = %.lr.ph.i.i.i57.preheader
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.216.0.copyload, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = and i8 %i.df, -33
  %i.dh = add i8 %i.dg, -65
  %i.di = icmp ult i8 %i.dh, 26
  br i1 %i.di, label %.lr.ph.i.i.i57.2, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i.i57.2:                                 ; preds = %.lr.ph.i.i.i57.1
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.216.0.copyload, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = and i8 %i.dk, -33
  %i.dm = add i8 %i.dl, -65
  %i.dn = icmp ult i8 %i.dm, 26
  br i1 %i.dn, label %.lr.ph.i.i.i57.3, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i.i57.3:                                 ; preds = %.lr.ph.i.i.i57.2
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.216.0.copyload, i64 3
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = and i8 %i.dp, -33
  %i.dr = add i8 %i.dq, -65
  %i.ds = icmp ult i8 %i.dr, 26
  br i1 %i.ds, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeScriptSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN2v88internal12_GLOBAL__N_121IsUnicodeScriptSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i57.3
  %i.dt = icmp eq i64 %i.cq, 32
  br i1 %i.dt, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %.split

.split:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_121IsUnicodeScriptSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 32
  %.sroa.03.0.copyload.pre = load i64, ptr %i.du, align 8
  br label %.split37

.split37:                                         ; preds = %bb.r, %.split
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pre, %.split ], [ %.sroa.015.0.copyload, %bb.r ]
  %i.dv = phi i64 [ 32, %.split ], [ 16, %bb.r ]
  %.034 = phi i64 [ 2, %.split ], [ 1, %bb.r ]    ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 %i.dv
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8 ; 5 uses
  switch i64 %.sroa.03.0.copyload, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread [
    i64 2, label %.lr.ph.i.i.i60.preheader
    i64 3, label %.lr.ph.i.i6.preheader.i
  ]

.lr.ph.i.i.i60.preheader:                         ; preds = %.split37
  %i.dx = load i8, ptr %.sroa.24.0.copyload, align 1
  %.fr117.peel = freeze i8 %i.dx
  %i.dy = and i8 %.fr117.peel, -33
  %i.dz = add i8 %i.dy, -91
  %i.ea = icmp ult i8 %i.dz, -26
  br i1 %i.ea, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.i6.preheader.i:                          ; preds = %.split37
  %i.eb = load i8, ptr %.sroa.24.0.copyload, align 1
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %.lr.ph.i.i6.1.i, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i6.1.i:                                  ; preds = %.lr.ph.i.i6.preheader.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 1
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = add i8 %i.ef, -48
  %i.eh = icmp ult i8 %i.eg, 10
  br i1 %i.eh, label %.lr.ph.i.i6.2.i, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i6.2.i:                                  ; preds = %.lr.ph.i.i6.1.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 2
  %i.ej = load i8, ptr %i.ei, align 1
  %.fr115 = freeze i8 %i.ej
  %i.ek = add i8 %.fr115, -48
  %i.el = icmp ult i8 %i.ek, 10
  br i1 %i.el, label %bb.s, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i60.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  %.fr117 = freeze i8 %.pre
  %i.em = and i8 %.fr117, -33
  %i.en = add i8 %i.em, -91
  %i.eo = icmp ult i8 %i.en, -26
  br i1 %i.eo, label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i6.2.i, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ep = add nuw nsw i64 %.034, 1
  br label %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %.lr.ph.i.i.i60.preheader, %.lr.ph.i.i.i57.preheader, %.lr.ph.i.i.i57.1, %.lr.ph.i.i.i57.2, %.lr.ph.i.i.i57.3, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.lr.ph.i.i6.preheader.i, %.lr.ph.i.i6.1.i, %.split37, %.lr.ph.i.i6.2.i, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.s
  %i.eq = phi i64 [ %i.ep, %bb.s ], [ %.034, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.034, %.lr.ph.i.i6.2.i ], [ %.034, %.split37 ], [ %.034, %.lr.ph.i.i6.1.i ], [ %.034, %.lr.ph.i.i6.preheader.i ], [ 1, %.lr.ph.i.i.i57.preheader ], [ 1, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 1, %.lr.ph.i.i.i57.3 ], [ 1, %.lr.ph.i.i.i57.2 ], [ 1, %.lr.ph.i.i.i57.1 ], [ %.034, %.lr.ph.i.i.i60.preheader ] ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.cr
  br i1 %i.er, label %.lr.ph, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114
  %.236133 = phi i64 [ %i.ic, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114 ], [ %i.eq, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.2, i64 %.236133 ; 2 uses
  %.sroa.01.0.copyload = load i64, ptr %i.es, align 8 ; 9 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8 ; 13 uses
  %.not.i.i.not.i63 = icmp eq i64 %.sroa.01.0.copyload, 1
  br i1 %.not.i.i.not.i63, label %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit67, label %bb.t

_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit67: ; preds = %.lr.ph
  %i.et = load i8, ptr %.sroa.22.0.copyload, align 1 ; 2 uses
  %i.eu = and i8 %i.et, -33
  %i.ev = add i8 %i.eu, -65
  %or.cond.i.i.i.i66 = icmp ult i8 %i.ev, 26
  %i.ew = add i8 %i.et, -48
  %i.ex = icmp ult i8 %i.ew, 10
  %i.ey = or i1 %i.ex, %or.cond.i.i.i.i66
  br i1 %i.ey, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.t:                                             ; preds = %.lr.ph
  %i.ez = add i64 %.sroa.01.0.copyload, -9
  %.not.i.i.i68 = icmp ult i64 %i.ez, -4
  br i1 %.not.i.i.i68, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i, label %.lr.ph.i.i.i69

.lr.ph.i.i.i69.1:                                 ; preds = %.lr.ph.i.i.i69
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 1
  %i.fb = load i8, ptr %i.fa, align 1             ; 2 uses
  %i.fc = and i8 %i.fb, -33
  %i.fd = add i8 %i.fc, -65
  %or.cond.i.i.i.i71.1 = icmp ult i8 %i.fd, 26
  %i.fe = add i8 %i.fb, -48
  %i.ff = icmp ult i8 %i.fe, 10
  %i.fg = or i1 %i.ff, %or.cond.i.i.i.i71.1
  br i1 %i.fg, label %6, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

6:                                                ; preds = %.lr.ph.i.i.i69.1
  %exitcond.not.i.i.i72.1 = icmp eq i64 %.sroa.01.0.copyload, 2
  br i1 %exitcond.not.i.i.i72.1, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.2

.lr.ph.i.i.i69.2:                                 ; preds = %6
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 2
  %i.fi = load i8, ptr %i.fh, align 1             ; 2 uses
  %i.fj = and i8 %i.fi, -33
  %i.fk = add i8 %i.fj, -65
  %or.cond.i.i.i.i71.2 = icmp ult i8 %i.fk, 26
  %i.fl = add i8 %i.fi, -48
  %i.fm = icmp ult i8 %i.fl, 10
  %i.fn = or i1 %i.fm, %or.cond.i.i.i.i71.2
  br i1 %i.fn, label %7, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

7:                                                ; preds = %.lr.ph.i.i.i69.2
  %exitcond.not.i.i.i72.2 = icmp eq i64 %.sroa.01.0.copyload, 3
  br i1 %exitcond.not.i.i.i72.2, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.3

.lr.ph.i.i.i69.3:                                 ; preds = %7
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 3
  %i.fp = load i8, ptr %i.fo, align 1             ; 2 uses
  %i.fq = and i8 %i.fp, -33
  %i.fr = add i8 %i.fq, -65
  %or.cond.i.i.i.i71.3 = icmp ult i8 %i.fr, 26
  %i.fs = add i8 %i.fp, -48
  %i.ft = icmp ult i8 %i.fs, 10
  %i.fu = or i1 %i.ft, %or.cond.i.i.i.i71.3
  br i1 %i.fu, label %8, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

8:                                                ; preds = %.lr.ph.i.i.i69.3
  %exitcond.not.i.i.i72.3 = icmp eq i64 %.sroa.01.0.copyload, 4
  br i1 %exitcond.not.i.i.i72.3, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.4

.lr.ph.i.i.i69.4:                                 ; preds = %8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 4
  %i.fw = load i8, ptr %i.fv, align 1             ; 2 uses
  %i.fx = and i8 %i.fw, -33
  %i.fy = add i8 %i.fx, -65
  %or.cond.i.i.i.i71.4 = icmp ult i8 %i.fy, 26
  %i.fz = add i8 %i.fw, -48
  %i.ga = icmp ult i8 %i.fz, 10
  %i.gb = or i1 %i.ga, %or.cond.i.i.i.i71.4
  br i1 %i.gb, label %bb.u, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.i69.4
  %exitcond.not.i.i.i72.4 = icmp eq i64 %.sroa.01.0.copyload, 5
  br i1 %exitcond.not.i.i.i72.4, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.5

.lr.ph.i.i.i69.5:                                 ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 5
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.ge = and i8 %i.gd, -33
  %i.gf = add i8 %i.ge, -65
  %or.cond.i.i.i.i71.5 = icmp ult i8 %i.gf, 26
  %i.gg = add i8 %i.gd, -48
  %i.gh = icmp ult i8 %i.gg, 10
  %i.gi = or i1 %i.gh, %or.cond.i.i.i.i71.5
  br i1 %i.gi, label %bb.v, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i.i69.5
  %exitcond.not.i.i.i72.5 = icmp eq i64 %.sroa.01.0.copyload, 6
  br i1 %exitcond.not.i.i.i72.5, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.6

.lr.ph.i.i.i69.6:                                 ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 6
  %i.gk = load i8, ptr %i.gj, align 1             ; 2 uses
  %i.gl = and i8 %i.gk, -33
  %i.gm = add i8 %i.gl, -65
  %or.cond.i.i.i.i71.6 = icmp ult i8 %i.gm, 26
  %i.gn = add i8 %i.gk, -48
  %i.go = icmp ult i8 %i.gn, 10
  %i.gp = or i1 %i.go, %or.cond.i.i.i.i71.6
  br i1 %i.gp, label %bb.w, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

bb.w:                                             ; preds = %.lr.ph.i.i.i69.6
  %exitcond.not.i.i.i72.6 = icmp eq i64 %.sroa.01.0.copyload, 7
  br i1 %exitcond.not.i.i.i72.6, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %.lr.ph.i.i.i69.7

.lr.ph.i.i.i69.7:                                 ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 7
  %i.gr = load i8, ptr %i.gq, align 1             ; 2 uses
  %i.gs = and i8 %i.gr, -33
  %i.gt = add i8 %i.gs, -65
  %or.cond.i.i.i.i71.7 = icmp ult i8 %i.gt, 26
  %i.gu = add i8 %i.gr, -48
  %i.gv = icmp ult i8 %i.gu, 10
  %i.gw = or i1 %i.gv, %or.cond.i.i.i.i71.7
  br i1 %i.gw, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

.lr.ph.i.i.i69:                                   ; preds = %bb.t
  %i.gx = load i8, ptr %.sroa.22.0.copyload, align 1 ; 2 uses
  %i.gy = and i8 %i.gx, -33
  %i.gz = add i8 %i.gy, -65
  %or.cond.i.i.i.i71 = icmp ult i8 %i.gz, 26
  %i.ha = add i8 %i.gx, -48
  %i.hb = icmp ult i8 %i.ha, 10
  %i.hc = or i1 %i.hb, %or.cond.i.i.i.i71
  br i1 %i.hc, label %.lr.ph.i.i.i69.1, label %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i

_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i: ; preds = %.lr.ph.i.i.i69, %.lr.ph.i.i.i69.1, %.lr.ph.i.i.i69.2, %.lr.ph.i.i.i69.3, %.lr.ph.i.i.i69.4, %.lr.ph.i.i.i69.5, %.lr.ph.i.i.i69.6, %.lr.ph.i.i.i69.7, %bb.t
  %i.hd = icmp eq i64 %.sroa.01.0.copyload, 4
  br i1 %i.hd, label %bb.x, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.x:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i
  %i.he = load i8, ptr %.sroa.22.0.copyload, align 1
  %i.hf = add i8 %i.he, -48
  %i.hg = icmp ult i8 %i.hf, 10
  br i1 %i.hg, label %.preheader.i.i.i.i, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.preheader.i.i.i.i:                               ; preds = %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 1
  %i.hi = load i8, ptr %i.hh, align 1             ; 2 uses
  %i.hj = and i8 %i.hi, -33
  %i.hk = add i8 %i.hj, -65
  %or.cond.i.i.i.i.i = icmp ult i8 %i.hk, 26
  %i.hl = add i8 %i.hi, -48
  %i.hm = icmp ult i8 %i.hl, 10
  %i.hn = or i1 %i.hm, %or.cond.i.i.i.i.i
  br i1 %i.hn, label %.lr.ph.i.i.i.1.i, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i.i.1.i:                                 ; preds = %.preheader.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 2
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  %i.hq = and i8 %i.hp, -33
  %i.hr = add i8 %i.hq, -65
  %or.cond.i.i.i.i.1.i = icmp ult i8 %i.hr, 26
  %i.hs = add i8 %i.hp, -48
  %i.ht = icmp ult i8 %i.hs, 10
  %i.hu = or i1 %i.ht, %or.cond.i.i.i.i.1.i
  br i1 %i.hu, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.x, %_ZN2v88internal12_GLOBAL__N_110IsAlphanumESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i, %.preheader.i.i.i.i, %.lr.ph.i.i.i.1.i, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit67
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i.i.1.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 3
  %i.hw = load i8, ptr %i.hv, align 1             ; 2 uses
  %i.hx = and i8 %i.hw, -33
  %i.hy = add i8 %i.hx, -65
  %or.cond.i.i.i.i.2.i = icmp ult i8 %i.hy, 26
  %i.hz = add i8 %i.hw, -48
  %i.ia = icmp ult i8 %i.hz, 10
  %i.ib = or i1 %i.ia, %or.cond.i.i.i.i.2.i
  br i1 %i.ib, label %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114: ; preds = %6, %7, %8, %bb.u, %bb.v, %bb.w, %.lr.ph.i.i.i69.7, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ic = add nuw i64 %.236133, 1                 ; 2 uses
  %exitcond144.not = icmp eq i64 %i.ic, %i.cr
  br i1 %exitcond144.not, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %.lr.ph, !llvm.loop !26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i7.i, %.lr.ph.i.i7.i.1, %.lr.ph.i.i7.i.2, %.lr.ph.i.i7.i.3, %.lr.ph.i.i7.i.4, %.lr.ph.i.i7.i.5, %.lr.ph.i.i7.i.6, %.lr.ph.i.i7.i.7, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeScriptSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit67, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.loopexit
  %.1 = phi i1 [ true, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeRegionSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ true, %.loopexit ], [ true, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread ], [ true, %_ZN2v88internal12_GLOBAL__N_121IsUnicodeScriptSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %_ZN2v88internal12_GLOBAL__N_120IsExtensionSingletonESt17basic_string_viewIcSt11char_traitsIcEE.exit67 ], [ false, %_ZN2v88internal12_GLOBAL__N_17IsAlphaESt17basic_string_viewIcSt11char_traitsIcEEmm.exit.i ], [ false, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %_ZN2v88internal12_GLOBAL__N_122IsUnicodeVariantSubtagESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread114 ], [ false, %.lr.ph.i.i7.i.7 ], [ false, %.lr.ph.i.i7.i.6 ], [ false, %.lr.ph.i.i7.i.5 ], [ false, %.lr.ph.i.i7.i.4 ], [ false, %.lr.ph.i.i7.i.3 ], [ false, %.lr.ph.i.i7.i.2 ], [ false, %.lr.ph.i.i7.i.1 ], [ false, %.lr.ph.i.i7.i ]
  %i.id = ptrtoint ptr %.sroa.29.2 to i64
  %i.ie = ptrtoint ptr %.sroa.0.2 to i64
  %i.if = sub i64 %i.id, %i.ie
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.if) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %.2 = phi i1 [ %.1, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8JSLocale3NewEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_6StringEEENS4_INS0_10JSReceiverEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [3 x %"class.v8::internal::DirectHandle.503"], align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::DirectHandle.0", align 8 ; 10 uses
  %6 = alloca %"struct.std::array.528", align 8   ; 37 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.v8::internal::DirectHandle.0", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %12 = alloca %"class.v8::String::Utf8Value", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %13 = alloca %"class.icu_78::Locale", align 8   ; 6 uses
  %14 = alloca %"class.v8::internal::DirectHandle.0", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.icu_78::Locale", align 8   ; 6 uses
  %17 = alloca %"class.v8::internal::DirectHandle.0", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.icu_78::Locale", align 8   ; 6 uses
  %20 = alloca %"class.v8::internal::DirectHandle.0", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.icu_78::Locale", align 8   ; 6 uses
  %23 = alloca %"class.icu_78::LocaleBuilder", align 8 ; 16 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %24 = alloca %"class.icu_78::Locale", align 8   ; 9 uses
  %25 = alloca %"class.std::shared_ptr.455", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @_ZN6icu_7813LocaleBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.d = load i64, ptr %2, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN2v88internal12_GLOBAL__N_117ApplyOptionsToTagEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_10JSReceiverEEEPN6icu_7813LocaleBuilderE.exit.thread, label %bb.b

_ZN2v88internal12_GLOBAL__N_117ApplyOptionsToTagEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_10JSReceiverEEEPN6icu_7813LocaleBuilderE.exit.thread: ; preds = %bb.a
  %i.j = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 99, ptr null, i64 0) #17
  %i.k = load i64, ptr %i.j, align 8
  %i.l = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.k, ptr noundef null) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.be

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZN2v86String9Utf8ValueC1EPNS_7IsolateENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %0, ptr nonnull %2) #17
  %i.m = load ptr, ptr %12, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder14setLanguageTagENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr %i.m, i32 %i.p) #17 ; 0 uses
  %i.r = load ptr, ptr %12, align 8               ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #17
  %i.t = call noundef zeroext i1 @_ZN2v88internal8JSLocale27StartsWithUnicodeLanguageIdESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.s, ptr nonnull %i.r)
  br i1 %i.t, label %bb.c, label %_ZNKR2v85MaybeIbE8FromJustEv.exit27.thread

_ZNKR2v85MaybeIbE8FromJustEv.exit27.thread:       ; preds = %bb.b
  call void @_ZN2v86String9Utf8ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  call void @_ZN6icu_786Locale12canonicalizeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  %i.u = load i32, ptr %i.b, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117ApplyOptionsToTagEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_10JSReceiverEEEPN6icu_7813LocaleBuilderE.exit

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder9setLocaleERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(40) %13) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store ptr null, ptr %14, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.y = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr %3, ptr nonnull %i.x, ptr noundef nonnull @.str.18, ptr noundef nonnull %14) #17 ; 2 uses
  %i.z = trunc i16 %i.y to i1
  br i1 %i.z, label %_ZNKR2v85MaybeIbE8FromJustEv.exit44.i, label %bb.q

_ZNKR2v85MaybeIbE8FromJustEv.exit44.i:            ; preds = %bb.d
  %i.aa = and i16 %i.y, 256
  %.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit44.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %.sroa.0.0.copyload.i46.i = load ptr, ptr %14, align 8
  %i.ab = load i64, ptr %.sroa.0.0.copyload.i46.i, align 8
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(16) %i.ad) #17
  %i.ae = load ptr, ptr %15, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder11setLanguageENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr %i.ae, i32 %i.ah) #17 ; 0 uses
  call void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #17
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %15, align 8
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.af, align 8            ; 2 uses
  %.pre140.i = load ptr, ptr %15, align 8         ; 8 uses
  switch i64 %i.al, label %.loopexit.i [
    i64 0, label %.critedge.i
    i64 4, label %.lr.ph.i.i.i.preheader
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.am = load i8, ptr %.pre140.i, align 1
  %i.an = and i8 %i.am, -33
  %i.ao = add i8 %i.an, -65
  %i.ap = icmp ult i8 %i.ao, 26
  br i1 %i.ap, label %.lr.ph.i.i.i.1, label %.loopexit.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre140.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, -33
  %i.at = add i8 %i.as, -65
  %i.au = icmp ult i8 %i.at, 26
  br i1 %i.au, label %.lr.ph.i.i.i.2, label %.loopexit.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.av = getelementptr inbounds nuw i8, ptr %.pre140.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, -33
  %i.ay = add i8 %i.ax, -65
  %i.az = icmp ult i8 %i.ay, 26
  br i1 %i.az, label %.lr.ph.i.i.i.3, label %.loopexit.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre140.i, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, -33
  %i.bd = add i8 %i.bc, -65
  %i.be = icmp ult i8 %i.bd, 26
  br i1 %i.be, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %.lr.ph.i.i.i.3, %bb.f, %..critedge_crit_edge.i
  %i.bf = phi ptr [ %.pre.i, %..critedge_crit_edge.i ], [ %.pre140.i, %bb.f ], [ %.pre140.i, %.lr.ph.i.i.i.3 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge.i
  %i.bi = load i64, ptr %i.bg, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.q

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %.pre140.i, %i.bk
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55.i: ; preds = %.loopexit.i
  %i.bm = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %.loopexit.i
end_hunk_0
