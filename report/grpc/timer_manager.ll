Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/timer_manager?download=true
inline.NumInlined: 184
inline.NumDeleted: 80
begin_hunk_0_@_ZL12stop_threadsv:bb.a

.loopexit:                                        ; preds = %.critedge28, %.critedge25, %.critedge22
  store i64 0, ptr @_ZL9g_wakeups, align 8, !tbaa !40
  call void @gpr_mu_unlock(ptr noundef nonnull @_ZL4g_mu)
  ret void

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.y, %bb.j ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %.pn
}

declare void @gpr_mu_destroy(ptr noundef) local_unnamed_addr #2

declare void @gpr_cv_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z32grpc_timer_manager_set_threadingb(i1 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  br i1 %0, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @gpr_mu_lock(ptr noundef nonnull @_ZL4g_mu)
  %.b.i = load i1, ptr @_ZL10g_threaded, align 1
  br i1 %.b.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @_ZL10g_threaded, align 1
  tail call fastcc void @_ZL29start_timer_thread_and_unlockv()
  br label %_ZL13start_threadsv.exit

bb.d:                                             ; preds = %bb.b
  tail call void @gpr_mu_unlock(ptr noundef nonnull @_ZL4g_mu)
  br label %_ZL13start_threadsv.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZL12stop_threadsv()
  br label %_ZL13start_threadsv.exit

_ZL13start_threadsv.exit:                         ; preds = %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z37grpc_timer_manager_set_start_threadedb(i1 noundef zeroext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr @_ZL16g_start_threaded, align 1, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16grpc_kick_pollerv() local_unnamed_addr #4 {
bb.a:
  tail call void @gpr_mu_lock(ptr noundef nonnull @_ZL4g_mu)
  store i1 true, ptr @_ZL8g_kicked, align 1
  store i1 false, ptr @_ZL18g_has_timed_waiter, align 1
  store i64 9223372036854775807, ptr @_ZL23g_timed_waiter_deadline.0, align 8, !tbaa !40
  %i.a = load i64, ptr @_ZL25g_timed_waiter_generation, align 8, !tbaa !40
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @_ZL25g_timed_waiter_generation, align 8, !tbaa !40
  tail call void @gpr_cv_signal(ptr noundef nonnull @_ZL9g_cv_wait)
  tail call void @gpr_mu_unlock(ptr noundef nonnull @_ZL4g_mu)
  ret void
}

declare void @gpr_mu_lock(ptr noundef) local_unnamed_addr #2

declare void @gpr_cv_signal(ptr noundef) local_unnamed_addr #2

declare void @gpr_mu_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z39grpc_timer_manager_get_wakeups_testonlyv() local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr @_ZL9g_wakeups, align 8, !tbaa !40
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !10
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !31 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !31

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = load i64, ptr %i.a, align 8, !tbaa !10
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !30

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !31

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !25, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !25
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #17, !inline_history !31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !36
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18, !inline_history !31
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29start_timer_thread_and_unlockv() unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %3 = alloca %"class.grpc_core::Thread", align 8 ; 9 uses
  %4 = alloca %"class.grpc_core::Thread::Options", align 8 ; 6 uses
  %.b = load i1, ptr @_ZL10g_threaded, align 1
  br i1 %.b, label %.critedge, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #18
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.b = load i32, ptr @_ZL14g_waiter_count, align 4, !tbaa !37
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @_ZL14g_waiter_count, align 4, !tbaa !37
  %i.d = load i32, ptr @_ZL14g_thread_count, align 4, !tbaa !37
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @_ZL14g_thread_count, align 4, !tbaa !37
  tail call void @gpr_mu_unlock(ptr noundef nonnull @_ZL4g_mu)
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core17timer_check_traceE, i64 8) monotonic, align 8, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %.critedge19, !prof !30

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 87) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 18, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.critedge18 unwind label %bb.h

.critedge18:                                      ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge, %.critedge18
  %i.h = call ptr @gpr_malloc(i64 noundef 40)     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i8 1, ptr %4, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.i, align 1, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !48
  call void @_ZN9grpc_core6ThreadC1EPKcPFvPvES3_PbRKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @_ZL12timer_threadPv, ptr noundef %i.h, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.not.i = icmp eq ptr %i.h, %3
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %.not.i, label %_ZN9grpc_core6ThreadaSEOS0_.exit, label %_ZN9grpc_core6ThreadaSEOS0_.exit.thread

_ZN9grpc_core6ThreadaSEOS0_.exit.thread:          ; preds = %.critedge19
  %i.k = load i32, ptr %3, align 8, !tbaa !49
  store i32 %i.k, ptr %i.h, align 8, !tbaa !49
  %i.l = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !54
  store i32 5, ptr %3, align 8, !tbaa !49
  store ptr null, ptr %.phi.trans.insert22, align 8, !tbaa !53
  store i8 1, ptr %i.n, align 8, !tbaa !41
  br label %_ZN9grpc_core6ThreadD2Ev.exit

_ZN9grpc_core6ThreadaSEOS0_.exit:                 ; preds = %.critedge19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !45, !range !28
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8
  %i.p = trunc nuw i8 %.pre to i1
  %i.q = icmp ne ptr %.pre23, null
  %i.r = select i1 %i.p, i1 %i.q, i1 false, !prof !55
  br i1 %i.r, label %bb.e, label %_ZN9grpc_core6ThreadD2Ev.exit, !prof !56

bb.e:                                             ; preds = %_ZN9grpc_core6ThreadaSEOS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.7, i32 noundef 145, ptr noundef nonnull @.str.15) #19
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN9grpc_core6ThreadD2Ev.exit:                    ; preds = %_ZN9grpc_core6ThreadaSEOS0_.exit.thread, %_ZN9grpc_core6ThreadaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN9grpc_core6Thread5StartEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  ret void

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi19EEERS2_RAT__Kc.exit, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.u
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #11

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

declare ptr @gpr_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define internal void @_ZL12timer_threadPv(ptr noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.grpc_core::Timestamp", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %8 = alloca %"class.grpc_core::Timestamp", align 8 ; 8 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %10 = alloca %"class.grpc_core::ExecCtx", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %10, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store i64 4, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 4 uses
  store i8 0, ptr %i.g, align 8, !tbaa !25
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 4 uses
  br i1 %.not.i.i.i, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !10
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !27
  %i.k = and i64 %.pre.i, 4
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !28, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.i, !prof !30

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load i8, ptr %i.g, align 8, !tbaa !25, !range !28, !noundef !29
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #17
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.s = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !36
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !27
  br label %_ZN9grpc_core7ExecCtxC2Em.exit

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Em.exit unwind label %bb.f

_ZN9grpc_core7ExecCtxC2Em.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.i
  %i.w = phi ptr [ %i.t, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i ], [ %i.h, %bb.i ] ; 4 uses
  %i.x = phi ptr [ %i.v, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i ], [ %i.j, %bb.i ]
  store ptr %10, ptr %i.w, align 8, !tbaa !26
  %.not.i.i.i13.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null ; 2 uses
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E) ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.noexc15, %_ZN9grpc_core7ExecCtxC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i64 9223372036854775807, ptr %8, align 8
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtx3GetEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtx3GetEv.exit.i unwind label %.loopexit, !inline_history !57

_ZN9grpc_core7ExecCtx3GetEv.exit.i:               ; preds = %bb.k, %bb.j
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !25, !range !28, !noundef !29
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.l, label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i

bb.l:                                             ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i8 0, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i unwind label %.loopexit, !inline_history !57

_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i:    ; preds = %bb.l, %_ZN9grpc_core7ExecCtx3GetEv.exit.i
  %i.aj = invoke noundef i32 @_Z16grpc_timer_checkPN9grpc_core9TimestampE(ptr noundef nonnull %8)
          to label %.noexc4 unwind label %.loopexit, !inline_history !57

.noexc4:                                          ; preds = %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i
  switch i32 %i.aj, label %.noexc15 [
    i32 2, label %bb.m
    i32 0, label %bb.v
    i32 1, label %thread-pre-split.i
  ]

bb.m:                                             ; preds = %.noexc4
  invoke void @gpr_mu_lock(ptr noundef nonnull @_ZL4g_mu)
          to label %.noexc5 unwind label %.loopexit, !inline_history !57

.noexc5:                                          ; preds = %bb.m
  %i.ak = load i32, ptr @_ZL14g_waiter_count, align 4, !tbaa !37
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
end_hunk_0
