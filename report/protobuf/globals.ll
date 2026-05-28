inline.NumInlined: 180
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::base_internal::AtomicHook" = type { %"struct.std::atomic.2", ptr }
%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { ptr }
%"struct.std::atomic.4" = type { %"struct.std::__atomic_base.5" }
%"struct.std::__atomic_base.5" = type { ptr }
%"struct.std::atomic.6" = type { %"struct.std::__atomic_base.7" }
%"struct.std::__atomic_base.7" = type { ptr }
%"class.absl::lts_20250512::base_internal::AtomicHook.8" = type { %"struct.std::atomic.9", ptr }
%"struct.std::atomic.9" = type { %"struct.std::__atomic_base.10" }
%"struct.std::__atomic_base.10" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv = comdat any

$_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE = comdat any

@_ZN4absl12lts_2025051212_GLOBAL__N_118prepend_log_prefixE.0 = internal unnamed_addr global i8 1, align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE = internal global %"class.absl::lts_20250512::base_internal::AtomicHook" { %"struct.std::atomic.2" { %"struct.std::__atomic_base.3" { ptr @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv } }, ptr @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv }, align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_115android_log_tagE = internal global %"struct.std::atomic.4" { %"struct.std::__atomic_base.5" { ptr @_ZN4absl12lts_2025051212_GLOBAL__N_118kDefaultAndroidTagE } }, align 8
@_ZZN4absl12lts_2025051219SetAndroidNativeTagEPKcE12user_log_tagB5cxx11 = internal unnamed_addr global %"struct.std::atomic.6" zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"Check tag failed: \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tag must be non-null.\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/log/globals.cc\00", align 1
@_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20250512::base_internal::AtomicHook.8", align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_118kDefaultAndroidTagE = internal constant [7 x i8] c"native\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"Check android_log_tag.exchange(tag_str->c_str(), std::memory_order_acq_rel) == kDefaultAndroidTag failed: \00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"SetAndroidNativeTag() must only be called once per process!\00", align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 = internal unnamed_addr global i32 0, align 4
@_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 = internal unnamed_addr global i32 2, align 4
@_ZN4absl12lts_2025051212_GLOBAL__N_121log_backtrace_at_hashE.0 = internal unnamed_addr global i64 0, align 8
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelC1ENS0_18LogSeverityAtLeastE = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelC2ENS0_18LogSeverityAtLeastE
@_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelD2Ev
@_ZN4absl12lts_2025051221ScopedStderrThresholdC1ENS0_18LogSeverityAtLeastE = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE
@_ZN4absl12lts_2025051221ScopedStderrThresholdD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2025051221ScopedStderrThresholdD2Ev

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051212log_internal17RawSetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 release, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051212log_internal21RawSetStderrThresholdENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051212log_internal18RawEnableLogPrefixEb(i1 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_118prepend_log_prefixE.0 release, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051212log_internal25SetLoggingGlobalsListenerEPFvvE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE, i64 8), align 8, !tbaa !7
  %i.b = cmpxchg ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN4absl12lts_2025051211MinLogLevelEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.a, null
  %.not.i = or i1 %i.b, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(), !inline_history !12
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelC2ENS0_18LogSeverityAtLeastE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 acquire, align 4
  store i32 %i.a, ptr %0, align 4, !tbaa !13
  store atomic i32 %1, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !16
  br label %_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit

_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051212log_internal17ScopedMinLogLevelD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  store atomic i32 %i.a, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_113min_log_levelE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit unwind label %bb.c, !inline_history !17

_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN4absl12lts_2025051215StderrThresholdEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.a, null
  %.not.i = or i1 %i.b, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(), !inline_history !12
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051221ScopedStderrThresholdC2ENS0_18LogSeverityAtLeastE(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 acquire, align 4
  store i32 %i.a, ptr %0, align 4, !tbaa !18
  store atomic i32 %1, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !20
  br label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit

_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051221ScopedStderrThresholdD2Ev(ptr noundef nonnull readonly align 4 captures(none) dead_on_return(4) dereferenceable(4) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !18
  store atomic i32 %i.a, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115stderrthresholdE.0 release, align 4
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i.i = icmp eq ptr %i.b, null
  %.not.i.i = or i1 %i.c, %.not2.i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b()
          to label %_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit unwind label %bb.c, !inline_history !21

_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4absl12lts_2025051212log_internal19GetAndroidNativeTagEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115android_log_tagE acquire, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219SetAndroidNativeTagEPKc(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.f = load i64, ptr %i.d, align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.h = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.h(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit unwind label %bb.i, !inline_history !29

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.h
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.g
  %.pn20 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn22 = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.j
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.f
  %.pn22.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn22, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !30
  %i.y = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.y, ptr %i.a, align 8, !tbaa !31
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.s   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !23
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32, %bb.k
  %i.ac = phi ptr [ %i.aa, %.noexc32 ], [ %i.x, %bb.k ] ; 2 uses
  switch i64 %i.y, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !28
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %0, i64 %i.y, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !32
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.aj = atomicrmw xchg ptr @_ZN4absl12lts_2025051212_GLOBAL__N_115android_log_tagE, ptr %i.ai acq_rel, align 8
  %.not14 = icmp eq ptr %i.aj, @_ZN4absl12lts_2025051212_GLOBAL__N_118kDefaultAndroidTagE
  br i1 %.not14, label %bb.y, label %bb.o, !prof !33

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.v       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.al = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.r
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.aq = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  invoke void %i.aq(i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit37 unwind label %bb.w, !inline_history !29

_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRSB_EEEvDpOT_.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  unreachable

bb.s:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #15
  br label %bb.z

bb.t:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.u:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.v:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.v
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !28
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.u
  %.pn = phi { ptr, i32 } [ %i.at, %bb.u ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.au, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.x
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.t
  %.pn16.pn = phi { ptr, i32 } [ %i.as, %bb.t ], [ %.pn16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %.pn16, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.z

bb.y:                                             ; preds = %bb.n
  store atomic ptr %i.w, ptr @_ZZN4absl12lts_2025051219SetAndroidNativeTagEPKcE12user_log_tagB5cxx11 monotonic, align 8
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn16.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ar, %bb.s ]
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !30
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.d, ptr %i.a, align 8, !tbaa !31
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.g, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.i, ptr %i.h, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !32
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal20ShouldLogBacktraceAtESt17basic_string_viewIcSt11char_traitsIcEEi(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %1, i64 noundef %0)
  %i.c = add i64 %0, 87
  %i.d = add i64 %i.c, %i.b
  %i.e = zext i32 %2 to i64
  %i.f = xor i64 %i.d, %i.e
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = icmp eq i64 %i.a, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051223SetLogBacktraceLocationESt17basic_string_viewIcSt11char_traitsIcEEi(i64 %0, ptr %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %1, i64 noundef %0)
  %i.b = add i64 %0, 87
  %i.c = add i64 %i.b, %i.a
  %i.d = zext i32 %2 to i64
  %i.e = xor i64 %i.c, %i.d
  %i.f = mul i64 %i.e, -2543921745674291987
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %i.f)
  store atomic i64 %i.g, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051225ClearLogBacktraceLocationEv() local_unnamed_addr #0 {
bb.a:
  store atomic i64 0, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_121log_backtrace_at_hashE.0 monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051222ShouldPrependLogPrefixEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_118prepend_log_prefixE.0 acquire, align 1, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051215EnableLogPrefixEb(i1 noundef zeroext %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_118prepend_log_prefixE.0 release, align 1
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_124logging_globals_listenerE acquire, align 8 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv
  %.not2.i = icmp eq ptr %i.b, null
  %.not.i = or i1 %i.c, %.not2.i
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !12
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit

_ZN4absl12lts_2025051212_GLOBAL__N_129TriggerLoggingGlobalsListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213base_internal10AtomicHookIPFvvEE13DummyFunctionEv() #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !28
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }

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
!8 = !{!"_ZTSN4absl12lts_2025051213base_internal10AtomicHookIPFvvEEE", !9, i64 0, !11, i64 8}
!9 = !{!"_ZTSSt6atomicIPFvvEE", !10, i64 0}
!10 = !{!"_ZTSSt13__atomic_baseIPFvvEE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = distinct !{null}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4absl12lts_2025051212log_internal17ScopedMinLogLevelE", !15, i64 0}
!15 = !{!"_ZTSN4absl12lts_2025051218LogSeverityAtLeastE", !5, i64 0}
!16 = distinct !{ptr @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE, null}
!17 = !{ptr @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE}
!18 = !{!19, !15, i64 0}
!19 = !{!"_ZTSN4absl12lts_2025051221ScopedStderrThresholdE", !15, i64 0}
!20 = distinct !{ptr @_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE, null}
!21 = !{ptr @_ZN4absl12lts_2025051218SetStderrThresholdENS0_18LogSeverityAtLeastE}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!24, !26, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !27, i64 8, !5, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!5, !5, i64 0}
!29 = distinct !{null}
!30 = !{!25, !26, i64 0}
!31 = !{!27, !27, i64 0}
!32 = !{!24, !27, i64 8}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{i8 0, i8 2}
!35 = !{}
end_hunk_0
