Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rtimer?download=true
inline.NumInlined: 174
inline.NumDeleted: 118
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::thread" = type { i64 }
%struct.timespec = type { i64, i64 }
%"class.std::__1::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::unique_ptr.3" = type { %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { ptr }

$_ZNSt3__16threadC2IMN7nanogui16RestartableTimerEFvvEJPS3_EvEEOT_DpOT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEMN7nanogui16RestartableTimerEFvvEPS8_EEEEEPvSD_ = comdat any

$_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN7nanogui16RestartableTimerEFvvEPS7_EEENS3_ISB_EEED2B8ne180100Ev = comdat any

$_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev = comdat any

$_ZNSt3__125__throw_bad_function_callB8ne180100Ev = comdat any

$_ZNSt3__117bad_function_callD0Ev = comdat any

$_ZTINSt3__117bad_function_callE = comdat any

$_ZTSNSt3__117bad_function_callE = comdat any

$_ZTVNSt3__117bad_function_callE = comdat any

@_ZTVN7nanogui16RestartableTimerE = hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7nanogui16RestartableTimerE, ptr @_ZN7nanogui16RestartableTimerD2Ev, ptr @_ZN7nanogui16RestartableTimerD0Ev] }, align 8
@_ZTIN7nanogui16RestartableTimerE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui16RestartableTimerE, ptr @_ZTIN7nanogui6ObjectE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7nanogui16RestartableTimerE = hidden constant [29 x i8] c"N7nanogui16RestartableTimerE\00", align 1
@_ZTIN7nanogui6ObjectE = external constant ptr
@.str = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"condition_variable::timed wait: mutex not locked\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"condition_variable timed_wait failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unique_lock::unlock: not locked\00", align 1
@_ZTINSt3__117bad_function_callE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__117bad_function_callE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSNSt3__117bad_function_callE = linkonce_odr dso_local constant [28 x i8] c"NSt3__117bad_function_callE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVNSt3__117bad_function_callE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt3__117bad_function_callE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt3__117bad_function_callD0Ev, ptr @_ZNKSt9exception4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"unique_lock::lock: references null mutex\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unique_lock::lock: already locked\00", align 1

@_ZN7nanogui16RestartableTimerC1ENSt3__18functionIFvvEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEE = hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN7nanogui16RestartableTimerC2ENSt3__18functionIFvvEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEE
@_ZN7nanogui16RestartableTimerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7nanogui16RestartableTimerD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui16RestartableTimerC2ENSt3__18functionIFvvEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEE(ptr noundef nonnull align 16 dereferenceable(178) initializes((0, 112)) %0, ptr nofree noundef align 16 captures(address) dereferenceable(48) %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::thread", align 8  ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7nanogui16RestartableTimerE, i64 16), ptr %0, align 16, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !17  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.j, align 16, !tbaa !17
  br label %_ZNSt3__18functionIFvvEEC2EOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %i.h, %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.l, align 16, !tbaa !17
  %i.m = load ptr, ptr %i.g, align 16, !tbaa !17  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 16 dereferenceable(48) %i.f)
          to label %_ZNSt3__18functionIFvvEEC2EOS2_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.l, align 16, !tbaa !17
  store ptr null, ptr %i.g, align 16, !tbaa !17
  br label %_ZNSt3__18functionIFvvEEC2EOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #14
  unreachable

_ZNSt3__18functionIFvvEEC2EOS2_.exit:             ; preds = %bb.b, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %2, ptr %i.s, align 16, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.u, align 16, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 0, ptr %i.v, align 1, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 ptrtoint (ptr @_ZN7nanogui16RestartableTimer3runEv to i64), ptr %i.a, align 8, !tbaa !37
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr %0, ptr %i.b, align 8, !tbaa !39
  invoke void @_ZNSt3__16threadC2IMN7nanogui16RestartableTimerEFvvEJPS3_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt3__18functionIFvvEEC2EOS2_.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !48
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNSt3__16threadaSB8ne180100EOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #14
  unreachable

_ZNSt3__16threadaSB8ne180100EOS0_.exit:           ; preds = %bb.g
  %i.y = load i64, ptr %3, align 8, !tbaa !49
  store i64 %i.y, ptr %i.e, align 8, !tbaa !49
  store i64 0, ptr %3, align 8, !tbaa !49
  call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.i:                                             ; preds = %_ZNSt3__18functionIFvvEEC2EOS2_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !17 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %i.f
  br i1 %i.ac, label %.sink.split.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink2.i.i = phi i64 [ 32, %bb.i ], [ 40, %bb.j ]
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink2.i.i
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #15, !inline_history !0
  br label %_ZNSt3__18functionIFvvEED2Ev.exit

_ZNSt3__18functionIFvvEED2Ev.exit:                ; preds = %bb.j, %.sink.split.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #15
  call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ag) #15
  call void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %i.z
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui16RestartableTimer3runEv(ptr noundef nonnull align 16 dereferenceable(178) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"class.std::__1::unique_lock", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i8 1, ptr %i.b, align 8, !tbaa !56
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.d = load i8, ptr %i.c, align 16, !tbaa !35, !range !40, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.k = load i8, ptr %i.f, align 1, !tbaa !36, !range !40, !noundef !41
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.preheader.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %2) #15
  %.pre = load i8, ptr %i.c, align 16, !tbaa !35, !range !40
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b, %bb.c
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !36, !range !40, !noundef !41
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.p = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #15
  %.sroa.0.0.copyload.i2.i.i.i = load i64, ptr %i.h, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp slt i64 %i.p, %.sroa.0.0.copyload.i2.i.i.i
  br i1 %.not.i, label %bb.e, label %_ZNSt3__118condition_variable10wait_untilINS_6chrono12steady_clockENS2_8durationIxNS_5ratioILl1ELl1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.b, align 8, !tbaa !56, !range !40, !noundef !41
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %.invoke.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.s = sdiv i64 %.sroa.0.0.copyload.i2.i.i.i, 1000000000 ; 2 uses
  store i64 %i.s, ptr %1, align 8, !tbaa !58
  %.neg.i.i.i = mul nsw i64 %i.s, -1000000000
  %i.t = add i64 %.neg.i.i.i, %.sroa.0.0.copyload.i2.i.i.i
  store i64 %i.t, ptr %i.i, align 8, !tbaa !59
  %i.u = load ptr, ptr %2, align 8, !tbaa !55
  %i.v = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull %1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %bb.f
  switch i32 %i.v, label %.invoke.i.i [
    i32 110, label %_ZNSt3__118condition_variable15__do_timed_waitB8ne180100ERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE.exit.i
    i32 0, label %_ZNSt3__118condition_variable15__do_timed_waitB8ne180100ERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE.exit.i
  ]

.invoke.i.i:                                      ; preds = %bb.g, %bb.e
  %i.w = phi i32 [ 1, %bb.e ], [ %i.v, %bb.g ]
  %i.x = phi ptr [ @.str.1, %bb.e ], [ @.str.2, %bb.g ]
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %i.w, ptr noundef nonnull %i.x) #16
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  call void @__clang_call_terminate(ptr %i.y) #14
  unreachable

_ZNSt3__118condition_variable15__do_timed_waitB8ne180100ERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE.exit.i: ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.z = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #15 ; 0 uses
  br label %_ZNSt3__118condition_variable10wait_untilINS_6chrono12steady_clockENS2_8durationIxNS_5ratioILl1ELl1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE.exit

_ZNSt3__118condition_variable10wait_untilINS_6chrono12steady_clockENS2_8durationIxNS_5ratioILl1ELl1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE.exit: ; preds = %_ZNSt3__118condition_variable15__do_timed_waitB8ne180100ERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE.exit.i, %bb.d
  %i.aa = load i8, ptr %i.c, align 16, !tbaa !35, !range !40, !noundef !41
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__118condition_variable10wait_untilINS_6chrono12steady_clockENS2_8durationIxNS_5ratioILl1ELl1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE.exit
  %i.ac = load i8, ptr %i.f, align 1, !tbaa !36, !range !40, !noundef !41
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %.loopexit

.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i, %.invoke, %bb.l
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !56, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.o, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit10

bb.i:                                             ; preds = %bb.h
  %i.ag = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #15
  %.sroa.0.0.copyload.i2.i.i4 = load i64, ptr %i.h, align 8, !tbaa !19
  %.not = icmp slt i64 %i.ag, %.sroa.0.0.copyload.i2.i.i4
  br i1 %.not, label %.preheader, label %bb.j, !llvm.loop !50

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.f, align 1, !tbaa !36
  %i.ah = load i8, ptr %i.b, align 8, !tbaa !56, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %2, align 8, !tbaa !55
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #15
  store i8 0, ptr %i.b, align 8, !tbaa !56
  %i.ak = load ptr, ptr %i.j, align 16, !tbaa !17 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt3__125__throw_bad_function_callB8ne180100Ev() #16
          to label %.noexc5 unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.l
  unreachable

_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i: ; preds = %bb.k
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZNKSt3__18functionIFvvEEclEv.exit unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !51

_ZNKSt3__18functionIFvvEEclEv.exit:               ; preds = %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i
  %i.ap = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.invoke, label %bb.m

bb.m:                                             ; preds = %_ZNKSt3__18functionIFvvEEclEv.exit
  %i.ar = load i8, ptr %i.b, align 8, !tbaa !56, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.invoke, label %bb.n

.invoke:                                          ; preds = %bb.m, %_ZNKSt3__18functionIFvvEEclEv.exit, %bb.j
  %i.at = phi i32 [ 1, %_ZNKSt3__18functionIFvvEEclEv.exit ], [ 1, %bb.j ], [ 35, %bb.m ]
  %i.au = phi ptr [ @.str.4, %_ZNKSt3__18functionIFvvEEclEv.exit ], [ @.str.3, %bb.j ], [ @.str.5, %bb.m ]
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %i.at, ptr noundef nonnull %i.au) #16
          to label %.cont unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %_ZNSt3__111unique_lockINS_5mutexEE4lockEv.exit unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt3__111unique_lockINS_5mutexEE4lockEv.exit:   ; preds = %bb.n
  store i8 1, ptr %i.b, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt3__118condition_variable10wait_untilINS_6chrono12steady_clockENS2_8durationIxNS_5ratioILl1ELl1000000000EEEEEEENS_9cv_statusERNS_11unique_lockINS_5mutexEEERKNS2_10time_pointIT_T0_EE.exit, %bb.h, %.preheader, %_ZNSt3__111unique_lockINS_5mutexEE4lockEv.exit
  %i.av = load i8, ptr %i.c, align 16, !tbaa !35, !range !40, !noundef !41
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %._crit_edge, label %bb.b, !llvm.loop !52

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.pre21 = load i8, ptr %i.b, align 8, !tbaa !56, !range !40
  %i.ax = trunc nuw i8 %.pre21 to i1
  br i1 %i.ax, label %._crit_edge.thread, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ay = load ptr, ptr %2, align 8, !tbaa !55
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #15
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.o:                                             ; preds = %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.az = load ptr, ptr %2, align 8, !tbaa !55
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #15
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit10

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit10: ; preds = %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %lpad.loopexit.split-lp28
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16threadC2IMN7nanogui16RestartableTimerEFvvEJPS3_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::unique_ptr", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::unique_ptr.3", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 4 uses
  invoke void @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %bb.c unwind label %bb.e       ; 5 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !43
  store ptr %i.a, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load <2 x i64>, ptr %1, align 8, !tbaa !37
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %2, align 8, !tbaa !39
  store ptr %i.f, ptr %i.e, align 8, !tbaa !66
  store ptr %i.b, ptr %4, align 8, !tbaa !46
  %i.g = tail call noundef i32 @pthread_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEMN7nanogui16RestartableTimerEFvvEPS8_EEEEEPvSD_, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev.exit, label %bb.g

_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #18
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEMN7nanogui16RestartableTimerEFvvEPS7_EEENS3_ISB_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #15
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %i.g, ptr noundef nonnull @.str) #16
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7nanogui16RestartableTimerD2Ev(ptr noundef nonnull align 16 dead_on_return(178) dereferenceable(178) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7nanogui16RestartableTimerE, i64 16), ptr %0, align 16, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit unwind label %bb.d

_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.b, align 16, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 0, ptr %i.c, align 1, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #15
  tail call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  invoke void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !17  ; 4 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %.sink2.i.i = phi i64 [ 32, %bb.b ], [ 40, %bb.c ]
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink2.i.i
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #15, !inline_history !0
  br label %_ZNSt3__18functionIFvvEED2Ev.exit

_ZNSt3__18functionIFvvEED2Ev.exit:                ; preds = %bb.c, %.sink.split.i.i
  tail call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #15
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.d) #15
  tail call void @_ZN7nanogui6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  ret void

bb.d:                                             ; preds = %bb.a, %_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7nanogui16RestartableTimerD0Ev(ptr noundef nonnull align 16 dereferenceable(178) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7nanogui16RestartableTimerD2Ev(ptr noundef nonnull align 16 dead_on_return(178) dereferenceable(178) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui16RestartableTimer7restartEv(ptr noundef nonnull align 16 dereferenceable(178) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = tail call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i64, ptr %i.c, align 16, !tbaa !67
  %i.e = mul nsw i64 %i.d, 1000000
  %i.f = add nsw i64 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19
end_hunk_0
