inline.NumInlined: 17
inline.NumDeleted: 11
begin_hunk_0
@_ZN4absl12lts_20250512L19failure_signal_dataE = internal global [7 x %"struct.absl::lts_20250512::FailureSignalData"] [%"struct.absl::lts_20250512::FailureSignalData" { i32 11, ptr @.str.1, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 4, ptr @.str.2, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 8, ptr @.str.3, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 6, ptr @.str.4, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 15, ptr @.str.5, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 7, ptr @.str.6, %struct.sigaction zeroinitializer }, %"struct.absl::lts_20250512::FailureSignalData" { i32 5, ptr @.str.7, %struct.sigaction zeroinitializer }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4absl12lts_20250512L11fsh_optionsE = internal unnamed_addr global %"struct.absl::lts_20250512::FailureSignalHandlerOptions" { i8 1, i8 1, i32 3, i8 0, ptr null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SIGBUS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"SIGTRAP\00", align 1
@.str.8 = private unnamed_addr constant [96 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/debugging/failure_signal_handler.cc\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"sigaction(data->signo, &act, &data->previous_action) == 0\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"sigaction() failed\00", align 1
@_ZZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce = internal global i8 0, align 1
@_ZGVZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce = internal global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"mmap() for alternate signal stack failed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"sigaltstack() failed with errno=%d\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"absl-signalstack\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"Signal %d raised at PC=%p while already in AbslFailureSignalHandler()\00", align 1
@_ZN4absl12lts_20250512L10failed_tidE = internal global { i32 } zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c" on cpu %d\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"*** %s received at time=%ld%s ***\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"*** Signal %d received at time=%ld%s ***\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, align 16, !tbaa !7
  %.not12 = icmp eq i32 %i.a, %0
  br i1 %.not12, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), align 8, !tbaa !7
  %.not12.1 = icmp eq i32 %i.b, %0
  br i1 %.not12.1, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), align 16, !tbaa !7
  %.not12.2 = icmp eq i32 %i.c, %0
  br i1 %.not12.2, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), align 8, !tbaa !7
  %.not12.3 = icmp eq i32 %i.d, %0
  br i1 %.not12.3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), align 16, !tbaa !7
  %.not12.4 = icmp eq i32 %i.e, %0
  br i1 %.not12.4, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), align 8, !tbaa !7
  %.not12.5 = icmp eq i32 %i.f, %0
  br i1 %.not12.5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), align 16, !tbaa !7
  %.not12.6 = icmp eq i32 %i.g, %0
  br i1 %.not12.6, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.011.ptr19.lcssa = phi ptr [ @_ZN4absl12lts_20250512L19failure_signal_dataE, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %.011.ptr19.lcssa, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h
  %i.j = phi ptr [ %i.i, %bb.h ], [ @.str, %bb.g ]
  ret ptr %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051227InstallFailureSignalHandlerERKNS0_27FailureSignalHandlerOptionsE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4absl12lts_20250512L11fsh_optionsE, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_20250512L24InstallOneFailureHandlerEPNS0_17FailureSignalDataEPFviP9siginfo_tPvE.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4absl12lts_20250512L24InstallOneFailureHandlerEPNS0_17FailureSignalDataEPFviP9siginfo_tPvE.exit
  %.0.idx6 = phi i64 [ 0, %bb.a ], [ %.0.add, %_ZN4absl12lts_20250512L24InstallOneFailureHandlerEPNS0_17FailureSignalDataEPFviP9siginfo_tPvE.exit ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 %.0.idx6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 152, i1 false)
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !18
  %i.e = or i32 %i.d, 1073741828
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 1), align 1, !tbaa !19, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = load atomic i8, ptr @_ZGVZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4absl12lts_20250512L24MaybeSetupAlternateStackEv.exit.i, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce) #14
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512L24MaybeSetupAlternateStackEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN4absl12lts_20250512L23SetupAlternateStackOnceEv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr @_ZZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce, align 1, !tbaa !15
  %i.k = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce) #14
  br label %_ZN4absl12lts_20250512L24MaybeSetupAlternateStackEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_20250512L24MaybeSetupAlternateStackEvE5kOnce) #14
  resume { ptr, i32 } %i.l

_ZN4absl12lts_20250512L24MaybeSetupAlternateStackEv.exit.i: ; preds = %bb.g, %bb.e, %bb.d
  %i.m = load i32, ptr %i.b, align 8, !tbaa !18
  %i.n = or i32 %i.m, 134217728
  store i32 %i.n, ptr %i.b, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_20250512L24MaybeSetupAlternateStackEv.exit.i, %bb.c
  store ptr @_ZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPv, ptr %1, align 8, !tbaa !24
  %i.o = load i32, ptr %.0.ptr, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 16
  %i.q = call i32 @sigaction(i32 noundef %i.o, ptr noundef nonnull %1, ptr noundef nonnull %i.p) #14
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN4absl12lts_20250512L24InstallOneFailureHandlerEPNS0_17FailureSignalDataEPFviP9siginfo_tPvE.exit, label %bb.j, !prof !25

bb.j:                                             ; preds = %bb.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 70), i32 noundef 244, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
  unreachable

_ZN4absl12lts_20250512L24InstallOneFailureHandlerEPNS0_17FailureSignalDataEPFviP9siginfo_tPvE.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.0.add = add nuw nsw i64 %.0.idx6, 168         ; 2 uses
  %.not = icmp eq i64 %.0.add, 1176
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPv(i32 noundef %0, ptr readnone captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %3 = alloca %"struct.absl::lts_20250512::WriterFnStruct", align 8 ; 4 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %4 = alloca %"struct.absl::lts_20250512::WriterFnStruct", align 8 ; 4 uses
  %5 = alloca %struct.timespec, align 8           ; 6 uses
  %i.e = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal6GetTIDEv() ; 2 uses
  %i.f = cmpxchg ptr @_ZN4absl12lts_20250512L10failed_tidE, i32 0, i32 %i.e acq_rel monotonic, align 4 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i1 } %i.f, 0
  %i.i = tail call noundef ptr @_ZN4absl12lts_2025051218debugging_internal17GetProgramCounterEPv(ptr noundef %2)
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 70), i32 noundef 380, ptr noundef nonnull @.str.15, i32 noundef %0, ptr noundef %i.i)
  %.not = icmp eq i32 %i.e, %i.h
  br i1 %.not, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i64 3, ptr %5, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = call i32 @nanosleep(ptr noundef nonnull %5, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN4absl12lts_20250512L23PortableSleepForSecondsEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #15
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.d, label %_ZN4absl12lts_20250512L23PortableSleepForSecondsEi.exit, !llvm.loop !30

_ZN4absl12lts_20250512L23PortableSleepForSecondsEi.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %6 = call ptr @signal(i32 noundef %0, ptr noundef null) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L22RaiseToPreviousHandlerEi.exit

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %bb.b
  %i.o = tail call noundef i32 @sched_getcpu() #14 ; 3 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 4), align 4, !tbaa !32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.thread
  %i.r = tail call i32 @alarm(i32 noundef 0) #14  ; 0 uses
  %i.s = tail call ptr @signal(i32 noundef 14, ptr noundef nonnull @_ZN4absl12lts_20250512L27ImmediateAbortSignalHandlerEi) #14 ; 0 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 4), align 4, !tbaa !32
  %i.u = tail call i32 @alarm(i32 noundef %i.t) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr @"_ZZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPvEN3$_08__invokeEPKc", ptr %4, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %.not.i.i = icmp eq i32 %i.o, -1                ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.o) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, align 16, !tbaa !7
  %.not12.i.i.i = icmp eq i32 %i.w, %0
  br i1 %.not12.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), align 8, !tbaa !7
  %.not12.1.i.i.i = icmp eq i32 %i.x, %0
  br i1 %.not12.1.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), align 16, !tbaa !7
  %.not12.2.i.i.i = icmp eq i32 %i.y, %0
  br i1 %.not12.2.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), align 8, !tbaa !7
  %.not12.3.i.i.i = icmp eq i32 %i.z, %0
  br i1 %.not12.3.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), align 16, !tbaa !7
  %.not12.4.i.i.i = icmp eq i32 %i.aa, %0
  br i1 %.not12.4.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), align 8, !tbaa !7
  %.not12.5.i.i.i = icmp eq i32 %i.ab, %0
  br i1 %.not12.5.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), align 16, !tbaa !7
  %.not12.6.i.i.i = icmp eq i32 %i.ac, %0
  br i1 %.not12.6.i.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i

_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.011.ptr19.lcssa.i.i.i = phi ptr [ @_ZN4absl12lts_20250512L19failure_signal_dataE, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), %bb.o ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.ptr19.lcssa.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i.i, label %bb.q, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i

_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i, %bb.o
  %i.af = phi ptr [ %i.ae, %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i ], [ @.str, %bb.o ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !24
  %.not9.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i
  %i.ah = tail call i64 @time(ptr noundef null) #14
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 96, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i, %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i
  %i.aj = tail call i64 @time(ptr noundef null) #14
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 96, ptr noundef nonnull @.str.19, i32 noundef %0, i64 noundef %i.aj, ptr noundef nonnull %i.d) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit

_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit: ; preds = %bb.p, %bb.q
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  call void @_ZN4absl12lts_2025051216raw_log_internal25AsyncSignalSafeWriteErrorEPKcm(ptr noundef nonnull %i.c, i64 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.am = load i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, align 8, !tbaa !35, !range !21, !noundef !22
  %i.an = trunc nuw i8 %i.am to i1
  call fastcc void @_ZN4absl12lts_20250512L15WriteStackTraceEPvbPFvPKcS1_ES1_(ptr noundef %2, i1 noundef zeroext %i.an, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 16), align 8, !tbaa !36 ; 3 uses
  %.not12 = icmp eq ptr %i.ao, null
  br i1 %.not12, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.ao, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %i.o) #14 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aq = load i32, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, align 16, !tbaa !7
  %.not12.i.i.i14 = icmp eq i32 %i.aq, %0
  br i1 %.not12.i.i.i14, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), align 8, !tbaa !7
  %.not12.1.i.i.i15 = icmp eq i32 %i.ar, %0
  br i1 %.not12.1.i.i.i15, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), align 16, !tbaa !7
  %.not12.2.i.i.i16 = icmp eq i32 %i.as, %0
  br i1 %.not12.2.i.i.i16, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), align 8, !tbaa !7
  %.not12.3.i.i.i17 = icmp eq i32 %i.at, %0
  br i1 %.not12.3.i.i.i17, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), align 16, !tbaa !7
  %.not12.4.i.i.i18 = icmp eq i32 %i.au, %0
  br i1 %.not12.4.i.i.i18, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), align 8, !tbaa !7
  %.not12.5.i.i.i19 = icmp eq i32 %i.av, %0
  br i1 %.not12.5.i.i.i19, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), align 16, !tbaa !7
  %.not12.6.i.i.i20 = icmp eq i32 %i.aw, %0
  br i1 %.not12.6.i.i.i20, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i21

_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.011.ptr19.lcssa.i.i.i24 = phi ptr [ @_ZN4absl12lts_20250512L19failure_signal_dataE, %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), %bb.z ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.ptr19.lcssa.i.i.i24, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %.not8.i.i25 = icmp eq ptr %i.ay, null
  br i1 %.not8.i.i25, label %bb.ab, label %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i21

_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i21: ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23, %bb.z
  %i.az = phi ptr [ %i.ay, %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23 ], [ @.str, %bb.z ] ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24
  %.not9.i.i22 = icmp eq i8 %i.ba, 0
  br i1 %.not9.i.i22, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i21
  %i.bb = call i64 @time(ptr noundef null) #14
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 96, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.az, i64 noundef %i.bb, ptr noundef nonnull %i.b) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.thread.i.i21, %_ZN4absl12lts_2025051218debugging_internal21FailureSignalToStringEi.exit.i.i23
  %i.bd = call i64 @time(ptr noundef null) #14
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 96, ptr noundef nonnull @.str.19, i32 noundef %0, i64 noundef %i.bd, ptr noundef nonnull %i.b) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26

_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26: ; preds = %bb.aa, %bb.ab
  call void %i.ao(ptr noundef nonnull %i.a), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bf = load i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, align 8, !tbaa !35, !range !21, !noundef !22
  %i.bg = trunc nuw i8 %i.bf to i1
  call fastcc void @_ZN4absl12lts_20250512L15WriteStackTraceEPvbPFvPKcS1_ES1_(ptr noundef %2, i1 noundef zeroext %i.bg, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 16), align 8, !tbaa !36
  call void %i.bh(ptr noundef null)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit26, %_ZN4absl12lts_20250512L16WriteFailureInfoEiPviPFvPKcE.exit
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L11fsh_optionsE, i64 8), align 8, !tbaa !38, !range !21, !noundef !22
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bk = load i32, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, align 16, !tbaa !7
  %.not13.i = icmp eq i32 %i.bk, %0
  br i1 %.not13.i, label %bb.ae, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.ad
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), align 8, !tbaa !7
  %.not13.1.i = icmp eq i32 %i.bl, %0
  br i1 %.not13.1.i, label %bb.ae, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.critedge.1.i
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), align 16, !tbaa !7
  %.not13.2.i = icmp eq i32 %i.bm, %0
  br i1 %.not13.2.i, label %bb.ae, label %.critedge.3.i

.critedge.3.i:                                    ; preds = %.critedge.2.i
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), align 8, !tbaa !7
  %.not13.3.i = icmp eq i32 %i.bn, %0
  br i1 %.not13.3.i, label %bb.ae, label %.critedge.4.i

.critedge.4.i:                                    ; preds = %.critedge.3.i
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), align 16, !tbaa !7
  %.not13.4.i = icmp eq i32 %i.bo, %0
  br i1 %.not13.4.i, label %bb.ae, label %.critedge.5.i

.critedge.5.i:                                    ; preds = %.critedge.4.i
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), align 8, !tbaa !7
  %.not13.5.i = icmp eq i32 %i.bp, %0
  br i1 %.not13.5.i, label %bb.ae, label %.critedge.6.i

.critedge.6.i:                                    ; preds = %.critedge.5.i
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), align 16, !tbaa !7
  %.not13.6.i = icmp eq i32 %i.bq, %0
  br i1 %.not13.6.i, label %bb.ae, label %7

7:                                                ; preds = %.critedge.6.i
  %8 = call ptr @signal(i32 noundef %0, ptr noundef null) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L22RaiseToPreviousHandlerEi.exit

bb.ae:                                            ; preds = %.critedge.6.i, %.critedge.5.i, %.critedge.4.i, %.critedge.3.i, %.critedge.2.i, %.critedge.1.i, %bb.ad
  %.0.ptr17.lcssa.i = phi ptr [ @_ZN4absl12lts_20250512L19failure_signal_dataE, %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 168), %.critedge.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 336), %.critedge.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 504), %.critedge.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 672), %.critedge.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 840), %.critedge.5.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_20250512L19failure_signal_dataE, i64 1008), %.critedge.6.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.ptr17.lcssa.i, i64 16
  %i.bs = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %i.br, ptr noundef null) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L22RaiseToPreviousHandlerEi.exit

bb.af:                                            ; preds = %bb.ac
  %i.bt = call ptr @signal(i32 noundef %0, ptr noundef null) #14 ; 0 uses
  br label %_ZN4absl12lts_20250512L22RaiseToPreviousHandlerEi.exit

_ZN4absl12lts_20250512L22RaiseToPreviousHandlerEi.exit: ; preds = %bb.ae, %7, %bb.af, %_ZN4absl12lts_20250512L23PortableSleepForSecondsEi.exit
  %i.bu = call i32 @raise(i32 noundef %0) #14     ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_20250512L23SetupAlternateStackOnceEv() unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.stack_t, align 8            ; 7 uses
  %i.a = tail call i64 @sysconf(i32 noundef 30) #14 ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = tail call i64 @sysconf(i32 noundef 250) #14
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.c, i64 65536)
  %i.d = add i64 %i.b, %.sroa.speculated
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.h, align 8, !tbaa !39
  %i.i = tail call ptr @mmap(ptr noundef null, i64 noundef %i.f, i32 noundef 3, i32 noundef 131106, i32 noundef -1, i64 noundef 0) #14 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 70), i32 noundef 185, ptr noundef nonnull @.str.12)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = call i32 @sigaltstack(ptr noundef nonnull %0, ptr noundef null) #14
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #15
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.8, i64 70), i32 noundef 195, ptr noundef nonnull @.str.13, i32 noundef %i.m)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = load i64, ptr %i.h, align 8, !tbaa !39
  %i.p = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.14) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sigaltstack(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @prctl(i32 noundef, ...) local_unnamed_addr #4

declare noundef i32 @_ZN4absl12lts_2025051213base_internal6GetTIDEv() local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2025051218debugging_internal17GetProgramCounterEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @alarm(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_20250512L27ImmediateAbortSignalHandlerEi(i32 %0) #8 {
bb.a:
  %i.a = tail call ptr @signal(i32 noundef 6, ptr noundef null) #14 ; 0 uses
  %i.b = tail call i32 @raise(i32 noundef 6) #14  ; 0 uses
  ret void
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_20250512L15WriteStackTraceEPvbPFvPKcS1_ES1_(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull %2) unnamed_addr #9 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 4 uses
  %i.b = alloca [32 x i32], align 16              ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = call noundef i32 @_ZN4absl12lts_2025051219internal_stacktrace25GetStackFramesWithContextEPPvPmPiiiPKvS5_(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %i.c)
  %i.e = call noundef ptr @_ZN4absl12lts_2025051218debugging_internal17GetProgramCounterEPv(ptr noundef %0)
  %i.f = load i32, ptr %i.c, align 4, !tbaa !3
  call void @_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef %i.f, i1 noundef zeroext %1, ptr noundef nonnull @_ZN4absl12lts_20250512L15WriterFnWrapperEPKcPv, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_20250512L15WriterFnWrapperEPKcPv(ptr noundef %0, ptr noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  tail call void %i.a(ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051218debugging_internal32DumpPCAndFrameSizesAndStackTraceEPvPKS2_PiiibPFvPKcS2_ES2_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN4absl12lts_2025051219internal_stacktrace25GetStackFramesWithContextEPPvPmPiiiPKvS5_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN4absl12lts_20250512L24AbslFailureSignalHandlerEiP9siginfo_tPvEN3$_08__invokeEPKc"(ptr noundef %0) #11 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  tail call void @_ZN4absl12lts_2025051216raw_log_internal25AsyncSignalSafeWriteErrorEPKcm(ptr noundef nonnull %0, i64 noundef %i.a)
  ret void
}

declare void @_ZN4absl12lts_2025051216raw_log_internal25AsyncSignalSafeWriteErrorEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

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
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN4absl12lts_2025051217FailureSignalDataE", !4, i64 0, !9, i64 8, !11, i64 16}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
end_hunk_0
