Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/future?download=true
inline.NumInlined: 1185
inline.NumDeleted: 671
begin_hunk_0_@_ZN5arrow10FutureImplD2Ev:bb.a
_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  invoke void %i.s(ptr noundef nonnull %i.q)
          to label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #27
  unreachable

_ZNSt10unique_ptrIvPFvPvEED2Ev.exit:              ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 4 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1, label %_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !22   ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEED2Ev.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !165
  br label %_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEED2Ev.exit

_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow10FutureImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow10FutureImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImplD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow18ConcreteFutureImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #24
  tail call void @_ZN5arrow10FutureImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImplD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow18ConcreteFutureImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #24, !inline_history !166
  tail call void @_ZN5arrow10FutureImplD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #24, !inline_history !166
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #24, !inline_history !167
  br label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #8

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImpl22DoMarkFinishedOrFailedENS_11FutureStateE(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.d, ptr %2, align 8, !tbaa !93
  store ptr %i.f, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  store ptr %i.k, ptr %i.i, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42, !noalias !172 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = icmp eq ptr %.pre, null
  br i1 %i.m, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.o = load atomic i32, ptr %i.n monotonic, align 8, !noalias !172
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %.06.i.i.i.i.i, 1
  %i.q = cmpxchg weak ptr %i.n, i32 %.06.i.i.i.i.i, i32 %i.p acq_rel monotonic, align 8, !noalias !172 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = extractvalue { i32, i1 } %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.d, !llvm.loop !1

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #24, !noalias !172 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.t, align 8, !tbaa !24, !noalias !172
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #25
          to label %.noexc11 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.noexc11:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !46, !noalias !172
  store ptr %i.u, ptr %3, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 8 uses
  store ptr %.pre, ptr %i.v, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.x, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !51
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !170
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24, !inline_history !170
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

bb.i:                                             ; preds = %bb.g
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i.i12 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, !prof !53

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  br label %bb.v

_ZNSt11unique_lockISt5mutexED2Ev.exit16:          ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i8 %1, ptr %i.ao seq_cst, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ap) #24
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !171   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !171 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16, %bb.m
  %.sroa.023.032 = phi ptr [ %i.av, %bb.m ], [ %i.ar, %_ZNSt11unique_lockISt5mutexED2Ev.exit16 ] ; 2 uses
  invoke void @_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.032, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %.loopexit, label %.preheader

bb.n:                                             ; preds = %.preheader, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit:                                        ; preds = %bb.m, %_ZNSt11unique_lockISt5mutexED2Ev.exit16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.az, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ba, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !51
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !2
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.q:                                             ; preds = %bb.o
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i18 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.s:                                             ; preds = %bb.q
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i20 = phi i32 [ %i.bd, %bb.r ], [ %i.bn, %bb.s ]
  %i.bo = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.bo, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, !prof !53

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #24
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21: ; preds = %.loopexit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bp = load ptr, ptr %2, align 8, !tbaa !93    ; 5 uses
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i ], [ %i.bp, %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21 ] ; 2 uses
  %i.br = load ptr, ptr %.05.i.i.i, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #24, !inline_history !11
  br label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bv, %i.bq
  br i1 %.not.i.i.i22, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21
  %.not.i.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bp to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.ca) #26
  br label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.v:                                             ; preds = %bb.n, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.am, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.ax, %bb.n ]
  call void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !51
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.44, align 16            ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !184
  switch i32 %i.b, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11 [
    i32 3, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
    i32 2, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread
    i32 1, label %.split
  ]

.split:                                           ; preds = %bb.a
  br i1 %2, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !173
  br i1 %i.h, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread: ; preds = %bb.a, %.split, %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.l, ptr %3, align 16, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !22
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !22
  br label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit: ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread, %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !35
  store i64 %i.s, ptr %i.r, align 16, !tbaa !35
  store ptr null, ptr %1, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !185
  invoke void @_ZN5arrow8internal8Executor5SpawnIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS5_14CallbackRecordEbEUlvE_EENS_6StatusEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !73, !range !31, !noundef !32
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.e, %bb.f, %bb.g
  %i.z = load ptr, ptr %i.r, align 16, !tbaa !35  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i8, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #24, !inline_history !13
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !44  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !51
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !14
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !14
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i9 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, !prof !53

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_0
