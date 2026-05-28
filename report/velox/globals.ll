inline.NumInlined: 172
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::base_internal::AtomicHook" = type { %"struct.std::atomic.2", ptr }
%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { ptr }
%"struct.std::atomic.4" = type { %"struct.std::__atomic_base.5" }
%"struct.std::__atomic_base.5" = type { ptr }
%"struct.std::atomic.6" = type { %"struct.std::__atomic_base.7" }
%"struct.std::__atomic_base.7" = type { ptr }
%"class.absl::lts_20240116::base_internal::AtomicHook.8" = type { %"struct.std::atomic.9", ptr }
%"struct.std::atomic.9" = type { %"struct.std::__atomic_base.10" }
%"struct.std::__atomic_base.10" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_ = comdat any

$_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm = comdat any

@_ZN4absl12lts_2024011612_GLOBAL__N_118prepend_log_prefixE.0 = internal unnamed_addr global i8 1, align 1
@_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE = internal global %"class.absl::lts_20240116::base_internal::AtomicHook" { %"struct.std::atomic.2" { %"struct.std::__atomic_base.3" { ptr @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv } }, ptr @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv }, align 8
@_ZN4absl12lts_2024011612_GLOBAL__N_115android_log_tagE = internal global %"struct.std::atomic.4" { %"struct.std::__atomic_base.5" { ptr @_ZN4absl12lts_2024011612_GLOBAL__N_118kDefaultAndroidTagE } }, align 8
@_ZZN4absl12lts_2024011619SetAndroidNativeTagEPKcE12user_log_tagB5cxx11 = internal unnamed_addr global %"struct.std::atomic.6" zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"Check tag failed: \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tag must be non-null.\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/log/globals.cc\00", align 1
@_ZN4absl12lts_2024011616raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20240116::base_internal::AtomicHook.8", align 8
@_ZN4absl12lts_2024011612_GLOBAL__N_118kDefaultAndroidTagE = internal constant [7 x i8] c"native\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"Check android_log_tag.exchange(tag_str->c_str(), std::memory_order_acq_rel) == kDefaultAndroidTag failed: \00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"SetAndroidNativeTag() must only be called once per process!\00", align 1
@_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 = internal unnamed_addr global i32 0, align 4
@_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 = internal unnamed_addr global i32 2, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN4absl12lts_2024011612_GLOBAL__N_121log_backtrace_at_hashE.0 = internal unnamed_addr global i64 0, align 8
@_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE = external constant ptr, align 8

@_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelC1ENS0_18LogSeverityAtLeastE = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelC2ENS0_18LogSeverityAtLeastE
@_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelD2Ev
@_ZN4absl12lts_2024011621ScopedStderrThresholdC1ENS0_18LogSeverityAtLeastE = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2024011621ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE
@_ZN4absl12lts_2024011621ScopedStderrThresholdD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011621ScopedStderrThresholdD2Ev

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011612log_internal17RawSetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 release, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011612log_internal21RawSetStderrThresholdENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 release, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011612log_internal18RawEnableLogPrefixEb(i1 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_118prepend_log_prefixE.0 release, align 1
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN4absl12lts_2024011612log_internal25SetLoggingGlobalsListenerEPFvvE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE, i64 8), align 8, !tbaa !7
  %i.b = cmpxchg ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZN4absl12lts_2024011611MinLogLevelEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.a, null
  %.not.i = or i1 %i.b, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(), !inline_history !12
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelC2ENS0_18LogSeverityAtLeastE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 acquire, align 4
  store i32 %i.a, ptr %0, align 4, !tbaa !13
  store atomic i32 %1, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !16
  br label %_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit

_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2024011612log_internal17ScopedMinLogLevelD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  store atomic i32 %i.a, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit unwind label %bb.c, !inline_history !17

_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i32 @_ZN4absl12lts_2024011615StderrThresholdEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.a, null
  %.not.i = or i1 %i.b, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(), !inline_history !12
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011621ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 acquire, align 4
  store i32 %i.a, ptr %0, align 4, !tbaa !18
  store atomic i32 %1, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !20
  br label %_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit

_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2024011621ScopedStderrThresholdD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !18
  store atomic i32 %i.a, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit unwind label %bb.c, !inline_history !21

_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #14
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN4absl12lts_2024011612log_internal19GetAndroidNativeTagEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115android_log_tagE acquire, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011619SetAndroidNativeTagEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.k, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.b = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.g = load atomic ptr, ptr @_ZN4absl12lts_2024011616raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.g(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.i, !inline_history !29

_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.h
  %i.n = load i64, ptr %i.l, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.g
  %.pn20 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.j, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn22 = phi { ptr, i32 } [ %i.p, %bb.i ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.t = load i64, ptr %i.r, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.f
  %.pn22.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn22, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !30
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 8 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %.noexc.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aa = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !22

.noexc11.i:                                       ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #18
          to label %.noexc33 unwind label %bb.u

.noexc33:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.m
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17
          to label %.noexc34 unwind label %bb.u   ; 2 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !23
  store i64 %i.x, ptr %i.w, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc34, %bb.k
  %i.ad = phi ptr [ %i.ac, %.noexc34 ], [ %i.w, %bb.k ] ; 3 uses
  switch i64 %i.x, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !28
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %0, i64 %i.x, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.x, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !28
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.ai = atomicrmw xchg ptr @_ZN4absl12lts_2024011612_GLOBAL__N_115android_log_tagE, ptr %i.ah acq_rel, align 8
  %.not14 = icmp eq ptr %i.ai, @_ZN4absl12lts_2024011612_GLOBAL__N_118kDefaultAndroidTagE
  br i1 %.not14, label %bb.aa, label %bb.q, !prof !32

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.t
  %i.an = load i64, ptr %i.al, align 8, !tbaa !28
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ap = load atomic ptr, ptr @_ZN4absl12lts_2024011616raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.ap(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit39 unwind label %bb.y, !inline_history !29

_ZNK4absl12lts_2024011613base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 32) #16
  br label %bb.ab

bb.v:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.w:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.x:                                             ; preds = %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.x
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !28
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.w
  %.pn = phi { ptr, i32 } [ %i.as, %bb.w ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.at, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn16 = phi { ptr, i32 } [ %i.az, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ] ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.z
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.v
  %.pn16.pn = phi { ptr, i32 } [ %i.ar, %bb.v ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn16, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ab

bb.aa:                                            ; preds = %bb.p
  store atomic ptr %i.v, ptr @_ZZN4absl12lts_2024011619SetAndroidNativeTagEPKcE12user_log_tagB5cxx11 monotonic, align 8
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn16.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.aq, %bb.u ]
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !22

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !23
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.a, align 1, !tbaa !28
  store i8 %i.p, ptr %i.o, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8, !tbaa !31
  %i.q = load ptr, ptr %0, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !28
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal20ShouldLogBacktraceAtESt17basic_string_viewIcSt11char_traitsIcEEi(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef %1, i64 noundef %0)
  %i.c = add i64 %i.b, %0
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw i128 %i.d, 11376068507788127593  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  %i.i = zext i32 %2 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw i128 %i.k, 11376068507788127593  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64
  %i.p = icmp eq i64 %i.a, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011623SetLogBacktraceLocationESt17basic_string_viewIcSt11char_traitsIcEEi(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), ptr noundef %1, i64 noundef %0)
  %i.b = add i64 %i.a, %0
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw i128 %i.c, 11376068507788127593  ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  %i.h = zext i32 %2 to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 11376068507788127593  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  store atomic i64 %i.n, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2024011625ClearLogBacktraceLocationEv() local_unnamed_addr #8 {
bb.a:
  store atomic i64 0, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011622ShouldPrependLogPrefixEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_118prepend_log_prefixE.0 acquire, align 1, !range !33, !noundef !34
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011615EnableLogPrefixEb(i1 noundef zeroext %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_118prepend_log_prefixE.0 release, align 1
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2024011612_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.b, null
  %.not.i = or i1 %i.c, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !12
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2024011612_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613base_internal10AtomicHookIPFvvEE13DummyFunctionEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !22

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #17 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !28
  store i8 %i.t, ptr %i.s, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !28
  store i8 %i.x, ptr %i.w, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !23
  store i64 %.0, ptr %i.h, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i = load i64, ptr %1, align 1  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i4.i.i = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i.i.i, i64 %.0.copyload.i.i.i, i64 11)
  %i.i = add i64 %0, -7070675565921424023         ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = xor i64 %.0.copyload.i4.i.i, %i.i
  %i.l = zext i64 %i.k to i128
  %i.m = zext i64 %i.j to i128
  %i.n = mul nuw i128 %i.l, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %2, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i32.i = load i32, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.0.copyload.i7.i.i = load i32, ptr %i.t, align 1
  %i.u = zext i32 %.0.copyload.i7.i.i to i64
  %i.v = shl nuw nsw i64 %2, 3
  %i.w = add nsw i64 %i.v, -32
  %i.x = shl nuw i64 %i.u, %i.w
  %i.y = zext i32 %.0.copyload.i.i32.i to i64
  %i.z = or i64 %i.x, %i.y
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %1, align 1, !tbaa !28
  %i.ab = lshr i64 %2, 1                          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = add nsw i64 %2, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.aa to i32
  %i.ai = zext i8 %i.ad to i32
  %i.aj = shl nuw nsw i64 %i.ab, 3
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ai, %i.ak
  %i.am = or i32 %i.al, %i.ah
  %i.an = zext i8 %i.ag to i32
  %.tr.i.i = trunc nuw nsw i64 %i.ae to i32
  %i.ao = shl nuw nsw i32 %.tr.i.i, 3
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %.030.i = phi i64 [ %i.d, %bb.d ], [ %i.z, %bb.h ], [ %i.ar, %bb.j ]
  %i.as = add i64 %.030.i, %0
  %i.at = zext i64 %i.as to i128
  %i.au = mul nuw i128 %i.at, 11376068507788127593 ; 2 uses
  %i.av = lshr i128 %i.au, 64
  %i.aw = xor i128 %i.av, %i.au
  %i.ax = trunc i128 %i.aw to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.c, %bb.f, %bb.i, %bb.k
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.ax, %bb.k ], [ %i.q, %bb.f ], [ %0, %bb.i ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

attributes #0 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 8}
!8 = !{!"_ZTSN4absl12lts_2024011613base_internal10AtomicHookIPFvvEEE", !9, i64 0, !11, i64 8}
!9 = !{!"_ZTSSt6atomicIPFvvEE", !10, i64 0}
!10 = !{!"_ZTSSt13__atomic_baseIPFvvEE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = distinct !{null}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4absl12lts_2024011612log_internal17ScopedMinLogLevelE", !15, i64 0}
!15 = !{!"_ZTSN4absl12lts_2024011618LogSeverityAtLeastE", !5, i64 0}
!16 = distinct !{ptr @_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE, null}
!17 = !{ptr @_ZN4absl12lts_2024011614SetMinLogLevelENS0_18LogSeverityAtLeastE}
!18 = !{!19, !15, i64 0}
!19 = !{!"_ZTSN4absl12lts_2024011621ScopedStderrThresholdE", !15, i64 0}
!20 = distinct !{ptr @_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE, null}
!21 = !{ptr @_ZN4absl12lts_2024011618SetStderrThresholdENS0_18LogSeverityAtLeastE}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!24, !26, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !27, i64 8, !5, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!5, !5, i64 0}
!29 = distinct !{null}
!30 = !{!25, !26, i64 0}
!31 = !{!24, !27, i64 8}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = !{i8 0, i8 2}
!34 = !{}
end_hunk_0
