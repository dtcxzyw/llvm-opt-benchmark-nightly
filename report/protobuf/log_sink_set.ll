inline.NumInlined: 289
inline.NumDeleted: 175
begin_hunk_0

$_ZN4absl12lts_202505127LogSink5FlushEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_ = comdat any

$_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_ = comdat any

@_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_121ThreadIsLoggingStatusEvE17thread_is_logging = internal thread_local unnamed_addr global i8 0, align 1
@_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks = internal global %"class.absl::lts_20250512::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks = internal global i64 0, align 8
@_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSetC1EvE15stderr_log_sink = internal global %"class.absl::lts_20250512::NoDestructor.4" zeroinitializer, align 8
@_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSetC1EvE15stderr_log_sink = internal global i64 0, align 8
@_ZTVN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE, ptr @_ZN4absl12lts_202505127LogSinkD2Ev, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkD0Ev, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryE, ptr @_ZN4absl12lts_202505127LogSink5FlushEv, ptr @_ZNK4absl12lts_202505127LogSink11KeyFunctionEv] }, align 8
@_ZTIN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE, ptr @_ZTIN4absl12lts_202505127LogSinkE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE = internal constant [65 x i8] c"N4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSinkE\00", align 1
@_ZTIN4absl12lts_202505127LogSinkE = external constant ptr
@_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEE23warn_if_not_initialized = internal global { { i32 } } zeroinitializer, align 4
@_ZZN4absl12lts_2025051213base_internal12CallOnceImplIZNS0_12log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEEUlvE_JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans = internal constant [3 x %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition"] [%"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 0, i32 1707250555, i8 1 }, %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 1707250555, i32 94570706, i8 0 }, %"struct.absl::lts_20250512::base_internal::SpinLockWaitTransition" { i32 221, i32 221, i8 1 }], align 16
@__const._ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEENKUlvE_clEv.w = private unnamed_addr constant [88 x i8] c"WARNING: All log messages before absl::InitializeLog() is called are written to STDERR\0A\00", align 16
@.str = private unnamed_addr constant [89 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/log/internal/log_sink_set.cc\00", align 1
@_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E = external global %"class.absl::lts_20250512::base_internal::AtomicHook", align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Duplicate log sinks are not supported\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Mismatched log sink being removed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal24ThreadIsLoggingToLogSinkEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 1 dereferenceable(1) ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_121ThreadIsLoggingStatusEvE17thread_is_logging)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr readonly captures(address) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN4absl12lts_2025051212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS5_EEE5valueEiE4typeELi0EEEDpOS9_()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit

common.resume:                                    ; preds = %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.ad, %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  br label %common.resume

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %.idx.i.i = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  %.not9.i.i = icmp eq i64 %2, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet11SendToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit ] ; 2 uses
  %i.f = load ptr, ptr %.010.i.i, align 8, !tbaa !12 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(136) %0), !inline_history !17
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet11SendToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEE.exit.i, label %.lr.ph.i.i

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet11SendToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEE.exit.i: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit
  br i1 %3, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet11SendToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEE.exit.i
  %i.k = tail call noundef nonnull align 1 dereferenceable(1) ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_121ThreadIsLoggingStatusEvE17thread_is_logging) ; 4 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !7, !range !9, !noundef !10
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = add i64 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !23
  tail call void @_ZN4absl12lts_2025051212log_internal13WriteToStderrESt17basic_string_viewIcSt11char_traitsIcEENS0_11LogSeverityE(i64 %i.r, ptr %i.o, i32 noundef %i.t)
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  store i8 1, ptr %i.k, align 1, !tbaa !7
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !32 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !36 ; 2 uses
  %.not9.i16.i = icmp eq ptr %i.v, %i.u
  br i1 %.not9.i16.i, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %bb.h, %.noexc.i
  %.010.i18.i = phi ptr [ %i.aa, %.noexc.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %.010.i18.i, align 8, !tbaa !12 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %.noexc.i unwind label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i, !inline_history !37

.noexc.i:                                         ; preds = %.lr.ph.i17.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i18.i, i64 8 ; 2 uses
  %.not.i19.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i19.i, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit.i, label %.lr.ph.i17.i

_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit.i: ; preds = %.noexc.i, %bb.h
  store i8 0, ptr %i.k, align 1, !tbaa !7
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
          to label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #17
  unreachable

_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i: ; preds = %.lr.ph.i17.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.k, align 1, !tbaa !7
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #17
  unreachable

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet11SendToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEE.exit.i, %bb.g, %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal10AddLogSinkEPNS0_7LogSinkE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN4absl12lts_2025051212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS5_EEE5valueEiE4typeELi0EEEDpOS9_()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  tail call fastcc void @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE(ptr noundef %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !38 ; 7 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !38 ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = and i64 %i.h, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 9 uses
  %i.l = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !12
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.x = add nsw i64 %.052.i.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !39

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.f, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !12
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.032.1.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !12
  %i.ae = icmp eq ptr %i.ad, %0
  br i1 %i.ae, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.af, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !12
  %i.ah = icmp eq ptr %i.ag, %0
  %spec.select.i.i.i = select i1 %i.ah, ptr %.sroa.032.2.i.i.i, ptr %i.e
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit24: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit24, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit26, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.g
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.ak, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit26 ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit24 ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ]
  %i.al = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.e
  br i1 %i.al, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.e, %i.am
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  store ptr %0, ptr %i.e, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !36
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.ao = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.h, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #19
          to label %.noexc4 unwind label %bb.o    ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.aw, align 8, !tbaa !12
  %i.ax = icmp sgt i64 %i.h, 0
  br i1 %i.ax, label %bb.m, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %.noexc4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.h) #20
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !32
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !41
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
          to label %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #17
  unreachable

_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit: ; preds = %bb.o
  resume { ptr, i32 } %i.ba

_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.bd = phi i1 [ true, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ false, %bb.j ], [ false, %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
          to label %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5 unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #17
  unreachable

_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5: ; preds = %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr @.str, ptr %i.a, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 3, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 215, ptr %i.c, align 4, !tbaa !3
  call void @_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(38) @.str.1)
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal13RemoveLogSinkEPNS0_7LogSinkE(ptr noundef readnone captures(address) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN4absl12lts_2025051212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS5_EEE5valueEiE4typeELi0EEEDpOS9_()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks) #16
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !38 ; 5 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !38 ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr i64 %i.l, 5                         ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit
  %i.o = and i64 %i.l, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.h, i64 %i.o ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.j ] ; 9 uses
  %i.p = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !12
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = icmp eq ptr %i.v, %0
  br i1 %i.w, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.ab = add nsw i64 %.052.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ac, label %bb.f, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !39

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.j, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.l, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.h, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit ] ; 5 uses
  %i.ad = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.ad, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread.i [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !12
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.l, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ag, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ah = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !12
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.aj, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !12
  %i.al = icmp eq ptr %i.ak, %0
  %spec.select.i.i.i.i = select i1 %i.al, ptr %.sroa.032.2.i.i.i.i, ptr %i.i
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit18: ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit20: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i: ; preds = %bb.f, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit18, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit20, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.k ], [ %i.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit20 ], [ %i.am, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit18 ], [ %.sroa.032.051.i.i.i.i, %bb.f ] ; 2 uses
  %.not.i1 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.i
  br i1 %.not.i1, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.i
  %i.ap = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.k
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.j, %i.at                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 8
end_hunk_0
