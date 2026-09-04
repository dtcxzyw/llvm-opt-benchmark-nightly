Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/thread_manager?download=true
inline.NumInlined: 230
inline.NumDeleted: 148
begin_hunk_0_@_ZN4grpc13ThreadManager12WorkerThreadD2Ev:bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

_ZN9grpc_core6ThreadD2Ev.exit:                    ; preds = %.noexc, %bb.c, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #27
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4grpc13ThreadManagerC2EPKcP19grpc_resource_quotaii(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 17), (24, 60), (64, 72)) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4grpc13ThreadManagerE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.k, align 4, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = icmp eq i32 %4, -1
  %i.n = select i1 %i.m, i32 2147483647, i32 %4
  store i32 %i.n, ptr %i.l, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.o, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.p, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  store ptr %i.r, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.t, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4grpc13ThreadManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4grpc13ThreadManagerE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.i

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !56

bb.b:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.e = sext i32 %i.c to i64
  %i.f = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.e, i64 noundef 0, ptr noundef nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit unwind label %bb.i

bb.c:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.c
  invoke void @_ZN4grpc13ThreadManager23CleanupCompletedThreadsEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.f unwind label %bb.i

_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull %i.f) #25
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  unreachable

bb.f:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.k = load ptr, ptr %.09.i.i, align 8, !tbaa !58 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #29
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN9grpc_core13RefCountedPtrINS_11ThreadQuotaEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_ZN9grpc_core13RefCountedPtrINS_11ThreadQuotaEED2Ev.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #24, !inline_history !70
  br label %_ZN9grpc_core13RefCountedPtrINS_11ThreadQuotaEED2Ev.exit

_ZN9grpc_core13RefCountedPtrINS_11ThreadQuotaEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b, %bb.a, %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc13ThreadManager23CleanupCompletedThreadsEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !57
  store ptr %1, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.c

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %i.g = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.g, ptr %i.e, align 8, !tbaa !55
  store i64 %i.f, ptr %i.b, align 8, !tbaa !55
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader unwind label %bb.b

_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader: ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %.sroa.010.014 = load ptr, ptr %1, align 8, !tbaa !58 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.010.014, %1
  br i1 %.not15, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, label %.lr.ph

bb.b:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !58    ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %1
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %.pre, %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #29
  %.not.i.i = icmp eq ptr %i.j, %1
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader, %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %1, align 8, !tbaa !58     ; 2 uses
  %.not8.i.i5 = icmp eq ptr %i.l, %1
  br i1 %.not8.i.i5, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit9, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.c, %.lr.ph.i.i6
  %.09.i.i7 = phi ptr [ %i.m, %.lr.ph.i.i6 ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.09.i.i7, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i7, i64 noundef 24) #29
  %.not.i.i8 = icmp eq ptr %i.m, %1
  br i1 %.not.i.i8, label %_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit9, label %.lr.ph.i.i6, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN4grpc13ThreadManager12WorkerThreadESaIS4_EED2Ev.exit9: ; preds = %.lr.ph.i.i6, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.k

.lr.ph:                                           ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.sroa.010.016 = phi ptr [ %.sroa.010.0, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ], [ %.sroa.010.014, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @_ZN4grpc13ThreadManager12WorkerThreadD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %i.o) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #29
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.d, %.lr.ph
  %.sroa.010.0 = load ptr, ptr %.sroa.010.016, align 8, !tbaa !58 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %1
  br i1 %.not, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge, label %.lr.ph
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN4grpc13ThreadManagerD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc13ThreadManager4WaitEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4absl12lts_202505127CondVar4WaitEPNS0_5MutexE.exit

_ZN4absl12lts_202505127CondVar4WaitEPNS0_5MutexE.exit: ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr %i.b, align 4, !tbaa !50
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202505127CondVar4WaitEPNS0_5MutexE.exit
  %i.e = invoke noundef zeroext i1 @_ZN4absl12lts_202505127CondVar10WaitCommonEPNS0_5MutexENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.a, i64 -1)
          to label %_ZN4absl12lts_202505127CondVar4WaitEPNS0_5MutexE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %_ZN4absl12lts_202505127CondVar4WaitEPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit2 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit2:       ; preds = %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc13ThreadManager8ShutdownEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4grpc13ThreadManager10IsShutdownEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !24, !noundef !25
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.a
  %i.f = trunc nuw i8 %i.c to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4grpc13ThreadManager24GetMaxActiveThreadsSoFarEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.a
  ret i32 %i.c
}

declare void @_ZN4absl12lts_202505127CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN9grpc_core11ThreadQuota7ReleaseEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc13ThreadManager10InitializeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noundef zeroext i1 @_ZN9grpc_core11ThreadQuota7ReserveEm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.e)
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !75
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.c, align 4, !noalias !75
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.g = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.g, ptr %1, align 8, !tbaa !76, !noalias !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !78, !noalias !75
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.4, i64 122, ptr nonnull %1, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !75
  %i.i = load ptr, ptr %2, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  invoke void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64 %i.k, ptr %i.i, ptr nonnull @.str.1, i32 129) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !76
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %i.s = load i32, ptr %i.c, align 4, !tbaa !48   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.s, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.s, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.s, ptr %i.v, align 8, !tbaa !51
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader unwind label %bb.f

_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader: ; preds = %bb.e
  %i.w = load i32, ptr %i.c, align 4, !tbaa !48
  %i.x = icmp sgt i32 %i.w, 0
end_hunk_0
