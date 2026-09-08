Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SerialQueueRunner?download=true
inline.NumInlined: 1069
inline.NumDeleted: 546
begin_hunk_0_@_ZSt20__throw_system_errori
; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !49
  store i64 0, ptr %2, align 8, !tbaa !49
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.q, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !169, !noalias !168
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !169, !noalias !168
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.012.i.i.i, align 8, !alias.scope !168, !noalias !169
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !164

_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5folly4coro4TaskIvEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i20 = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !171, !noalias !170
  store i64 0, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !171, !noalias !170
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i20, ptr %.012.i.i.i18, align 8, !alias.scope !170, !noalias !171
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i17, !llvm.loop !164

_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.t, %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #25
  br label %_ZNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !51
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner4doneEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #23
  unreachable

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !44, !range !45, !noundef !46
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #22
  br label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit6

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit6

bb.g:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  store i8 1, ptr %i.b, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5folly4coro5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22
  br label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit: ; preds = %bb.g, %bb.h
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 0 uses
  ret void

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit6: ; preds = %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 0 uses
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner3runEv(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.168:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 408) ; 9 uses
  store ptr @_ZN5folly4coro17SerialQueueRunner3runEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner3runEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 1, ptr %i.d, align 8, !tbaa !58
  store ptr %i.a, ptr %0, align 8, !tbaa !49, !alias.scope !174
  %index.addr248 = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store i3 0, ptr %index.addr248, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSF_(ptr dead_on_unwind noalias writable sret(%"class.folly::coro::Task<std::pair<bool, std::vector<folly::coro::Task<>>>>::Awaiter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !61
  %i.c = icmp eq i8 %i.b, 2
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !197
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66, !noalias !198 ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i

_ZN5folly17CancellationTokenC2ERKS0_.exit.i:      ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !68, !noalias !199 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !84, !range !45, !noalias !199, !noundef !46
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit, label %bb.b

_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 8 monotonic, align 8, !noalias !200 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !68, !noalias !201 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !84, !range !45, !noalias !201, !noundef !46
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i
  %i.s = phi ptr [ %i.p, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i ], [ %i.j, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i ]
  %i.t = phi ptr [ %i.o, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i ], [ %i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66, !noalias !199 ; 5 uses
  store ptr %i.h, ptr %i.u, align 8, !tbaa !66, !noalias !199
  %.not.i.i.i.i.i.i.i2.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i2.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8, !noalias !199 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.d, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #22, !noalias !199
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !86, !noalias !199
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !199
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.v) #22, !noalias !199, !call_target !91, !inline_history !184
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  store i8 1, ptr %i.s, align 8, !tbaa !84, !noalias !199
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit

bb.g:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i
  %i.ad = atomicrmw sub ptr %i.m, i64 8 acq_rel, align 8, !noalias !199 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  br i1 %i.ae, label %bb.h, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit

bb.h:                                             ; preds = %bb.g
  %i.af = and i64 %i.ad, 4
  %.not.i.i.i.i.i3.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.h) #22, !noalias !199
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !199
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !199
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22, !noalias !199, !call_target !91, !inline_history !185
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit

_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit: ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.i, %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i, %bb.g, %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !49, !noalias !199 ; 2 uses
  store i64 0, ptr %2, align 8, !tbaa !49, !noalias !199
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 56 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64, !noalias !202 ; 2 uses
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit
  store i64 0, ptr %i.aj, align 8, !tbaa !94, !noalias !202
  %i.an = and i64 %i.ak, 3
  %.not3.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i.i, label %bb.l, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !86, !noalias !202
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !202
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22, !noalias !202, !call_target !99, !inline_history !190
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit
  %i.ar = or i64 %i.f, 2
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !64, !noalias !202
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8, !alias.scope !203
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner4pullEv(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task.8") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.72:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 176) ; 9 uses
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr121 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr121, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !102
  store ptr %i.a, ptr %0, align 8, !tbaa !49, !alias.scope !206
  %index.addr122 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i2 0, ptr %index.addr122, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !105
  store ptr %i.g, ptr %i.d, align 8, !tbaa !106
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !105
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind noalias writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %0, ptr noundef nonnull align 8 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !61
  %i.c = icmp eq i8 %i.b, 2
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !249
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !49, !noalias !250 ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !49, !noalias !250
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66, !noalias !251 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i

_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !84, !range !45, !noalias !252, !noundef !46
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit, label %bb.b

_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 8 monotonic, align 8, !noalias !253 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !84, !range !45, !noalias !254, !noundef !46
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %i.q = phi ptr [ %i.n, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i ], [ %i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66, !noalias !252 ; 5 uses
  store ptr %i.h, ptr %i.r, align 8, !tbaa !66, !noalias !252
  %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 8 acq_rel, align 8, !noalias !252 ; 2 uses
  %i.v = icmp ult i64 %i.u, 16
  br i1 %i.v, label %bb.d, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = and i64 %i.u, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.s) #22, !noalias !252
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !86, !noalias !252
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !252
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.s) #22, !noalias !252, !call_target !91, !inline_history !222
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  store i8 1, ptr %i.q, align 8, !tbaa !84, !noalias !252
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit

bb.g:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i
  %i.aa = atomicrmw sub ptr %i.l, i64 8 acq_rel, align 8, !noalias !252 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  br i1 %i.ab, label %bb.h, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = and i64 %i.aa, 4
  %.not.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i3.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.h) #22, !noalias !252
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !86, !noalias !252
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !252
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22, !noalias !252, !call_target !91, !inline_history !223
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit

_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit: ; preds = %bb.j, %bb.i, %bb.g, %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !64, !noalias !255 ; 2 uses
  %i.ai = and i64 %i.ah, -4                       ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit
  store i64 0, ptr %i.ag, align 8, !tbaa !94, !noalias !255
  %i.ak = and i64 %i.ah, 3
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !86, !noalias !255
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !noalias !255
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #22, !noalias !255, !call_target !99, !inline_history !234
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSA_fp0_EERKNS_17CancellationTokenEOSA_.exit
  %i.ao = or i64 %i.f, 2
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !64, !noalias !255
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !256
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr nonnull %i.e)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i unwind label %bb.c, !inline_history !2

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #12 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN5folly17current_exceptionEv

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #15

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !109
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %1) #23
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly17exception_wrapper18onNoExceptionErrorEPKc(ptr noundef nonnull @__func__._ZNK5folly17exception_wrapper15throw_exceptionEv) #23
  unreachable

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %1, align 8, !tbaa !109
  %.not.i3 = icmp eq ptr %i.c, null
  br i1 %.not.i3, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.b
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN5folly17exception_wrapper18onNoExceptionErrorEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_21UsingUninitializedTryEJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::UsingUninitializedTry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.13)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly21UsingUninitializedTryE, i64 16), ptr %0, align 8, !tbaa !86
  invoke void @_ZN5folly15throw_exceptionINS_21UsingUninitializedTryEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #4
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_21UsingUninitializedTryEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 2 uses
  tail call void @_ZN5folly21UsingUninitializedTryC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly21UsingUninitializedTryE, ptr nonnull @_ZNSt11logic_errorD2Ev) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly21UsingUninitializedTryC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly21UsingUninitializedTryE, i64 16), ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly21UsingUninitializedTryD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly21UsingUninitializedTry4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr @.str.12
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !105
  store ptr %i.g, ptr %i.d, align 8, !tbaa !106
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !105
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

declare void @folly_coro_async_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner6cancelEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #23
  unreachable

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !44, !range !45, !noundef !46
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  invoke void @_ZN5folly4coro17SerialQueueRunner4doneEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit3 unwind label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit: ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 0 uses
  resume { ptr, i32 } %i.e

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit3: ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, %bb.c
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner5awaitEv(ptr dead_on_unwind nofree writable writeonly sret(%"class.folly::coro::Task") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.48:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 272) ; 9 uses
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr66 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr66, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 1, ptr %i.d, align 8, !tbaa !58
  store ptr %i.a, ptr %0, align 8, !tbaa !49, !alias.scope !289
  %index.addr67 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i2 0, ptr %index.addr67, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.c, align 8, !tbaa !49
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !103
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.d, ptr %i.h, align 8, !tbaa !106
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.i, ptr %i.j, align 8, !tbaa !104
  store atomic ptr null, ptr %i.f monotonic, align 8
  store ptr null, ptr %i.e, align 8, !tbaa !105
  %i.k = load ptr, ptr %0, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !49
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !292, !nonnull !46, !align !116
  %i.p = tail call noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #22 ; 2 uses
  br i1 %i.p, label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !105
  store atomic ptr %i.d, ptr %i.f release, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #22
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_4coro17ViaIfAsyncAwaiterILb1ERNS2_5BatonEE13await_suspendINS2_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EEEUlvE_Lb1EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !127 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call noundef i64 %i.d(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef null) #22, !inline_history !293 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_ISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS5_EELb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !130
  %.unpack.i.i.i.i = load i64, ptr %0, align 16, !tbaa !131 ; 3 uses
  %.elt2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack3.i.i.i.i = load i64, ptr %.elt2.i.i.i.i, align 8, !tbaa !131
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack3.i.i.i.i ; 2 uses
  %i.d = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack.i.i.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !46
  br label %_ZNSt5_BindIFMN5folly4coro17SerialQueueRunnerEFvvEPS2_EEclIJEvEET0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZNSt5_BindIFMN5folly4coro17SerialQueueRunnerEFvvEPS2_EEclIJEvEET0_DpOT_.exit

_ZNSt5_BindIFMN5folly4coro17SerialQueueRunnerEFvvEPS2_EEclIJEvEET0_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(88) %i.c), !inline_history !294
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS6_EEEEmNS1_2OpEPNS1_4DataESE_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !136
  store <2 x i64> %i.a, ptr %2, align 8, !tbaa !136
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !130
  store i64 %i.d, ptr %i.b, align 8, !tbaa !130
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Function", align 16  ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !310
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load <2 x ptr>, ptr %3, align 16, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !142
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !call_target !147, !inline_history !7
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !call_target !148, !inline_history !7
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !131
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !149
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, !prof !150
end_hunk_1
begin_hunk_2_@_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_:bb.a
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge, %bb.h, %_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !106 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit, label %.split10.i

.split10.i:                                       ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !105
  br label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit

_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit: ; preds = %bb.i, %.split10.i
  store atomic ptr %i.ac, ptr %i.ae release, align 8
  store ptr null, ptr %i.ad, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !102
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !114, !noalias !497 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !497
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !56, !noalias !497
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc23 unwind label %bb.o, !inline_history !5

.noexc23:                                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !111, !range !45, !noalias !497, !noundef !46
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !497
  br label %bb.m

bb.l:                                             ; preds = %.noexc23
  %.sroa.0.0.copyload25 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !497
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.m:                                             ; preds = %.thread.i, %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !49, !noalias !497
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.n:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %.sroa.0.0.copyload.i24 = load ptr, ptr %1, align 8, !tbaa !49
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit ], [ %.sroa.0.0.copyload.i24, %bb.n ], [ %.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.0.0.copyload25, %bb.l ]
  ret ptr %.sroa.016.0

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(104) initializes((16, 24)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !142
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !147, !inline_history !9
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !148, !inline_history !9
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !131
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !149
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !150

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !94
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #22, !call_target !99, !inline_history !10
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume(ptr noundef nonnull align 16 dereferenceable(272) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.reload.addr63 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr66 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend41, !prof !512

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 16, !tbaa !514
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr62, i8 0, i64 24, i1 false)
  %i.e = ptrtoint ptr %.reload to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 ptrtoint (ptr @_ZN5folly4coro17SerialQueueRunner6cancelEv to i64), ptr %i.d, align 16, !tbaa !136
  %.repack5.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %.repack5.i.i.i, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.e, ptr %i.h, align 16, !tbaa !130
  store ptr @_ZN5folly6detail8function5call_ISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS5_EELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.f, align 16, !tbaa !152
  store ptr @_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS6_EEEEmNS1_2OpEPNS1_4DataESE_, ptr %i.g, align 8, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.i, align 16, !tbaa !515
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.j, align 8, !tbaa !516
  %i.k = load ptr, ptr %i.b, align 16, !tbaa !66  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.l = tail call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr62, i1 noundef zeroext true) #22
  br i1 %i.l, label %bb.b, label %.from..i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !66
  store ptr %i.m, ptr %i.c, align 16, !tbaa !127
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload61 = load ptr, ptr %.reload.addr, align 16, !tbaa !514
  %i.n = getelementptr inbounds nuw i8, ptr %.reload61, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !61, !noalias !517
  %i.r = icmp eq i8 %i.q, 2
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.p, align 1, !tbaa !61, !noalias !517
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !64, !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.v = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.51 unwind label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !519 ; 8 uses

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr62) #22
  %.1 = extractvalue { ptr, i32 } %i.w, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr66) #22
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

.from.51:                                         ; preds = %.from..i.i.i.i
  %i.y = or i64 %i.u, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.v, align 8, !noalias !521
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !521
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false), !noalias !521
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ab, align 8, !tbaa !56, !noalias !521
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !86, !noalias !521
  store ptr %i.v, ptr %.reload.addr63, align 16, !tbaa !49, !alias.scope !522
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !521
  store i64 %i.y, ptr %i.z, align 8, !tbaa !64, !noalias !521
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !523, !alias.scope !524
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ad, align 16, !tbaa !525, !alias.scope !524
  %i.ae = load atomic ptr, ptr %i.o acquire, align 8
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %AfterCoroSuspend41, label %AfterCoroSave39

AfterCoroSave39:                                  ; preds = %.from.51
  store i2 1, ptr %index.addr, align 8
  %i.ag = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr63, ptr nonnull %0) #22
  br i1 %i.ag, label %CoroEnd, label %AfterCoroSuspend41

AfterCoroSuspend41:                               ; preds = %resume.entry, %AfterCoroSave39, %.from.51
  %i.ah = load ptr, ptr %.reload.addr63, align 16, !tbaa !121 ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i15, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19, label %bb.c

bb.c:                                             ; preds = %AfterCoroSuspend41
  store i64 0, ptr %.reload.addr63, align 16, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr nonnull %i.ah)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.d, !inline_history !11

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %.reload.addr63, align 16, !tbaa !121 ; 3 uses
  %.not.i.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i.i16, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19 unwind label %bb.f, !inline_history !11

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19: ; preds = %bb.e, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %AfterCoroSuspend41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !127 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr62) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i20, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = tail call noundef i64 %i.at(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef null) #22, !inline_history !12 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.h, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 16, !tbaa !58, !range !45, !noundef !46
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.aw, align 16, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %_ZN5folly20CancellationCallbackD2Ev.exit, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  %i.bb = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr62, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr66) #22 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  musttail call void %i.bc(ptr nonnull %i.bb)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave39
  ret void

bb.m:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy(ptr noundef nonnull align 16 dereferenceable(272) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, label %AfterCoroSuspend, !prof !526

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr63 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pr = load ptr, ptr %.reload.addr63, align 16, !tbaa !121 ; 3 uses
  %.not.i.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i.i16, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19 unwind label %bb.b, !inline_history !11

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !127 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr62) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i20, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef null) #22, !inline_history !12 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !58, !range !45, !noundef !46
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %.not.i.i.i.i21 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i21, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.g, %bb.f, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !66  ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 8 acq_rel, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = and i64 %i.t, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.r) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.r) #22, !call_target !91, !inline_history !13
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j, %bb.h, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !94
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.m, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #22, !call_target !99, !inline_history !14
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.l, %bb.m
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 272)
          to label %CoroEnd unwind label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.resume(ptr noundef nonnull align 8 dereferenceable(176) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %.reload.addr118 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.reload.addr121 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend65, !prof !530

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr106 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload107 = load ptr, ptr %.reload.addr106, align 8, !tbaa !532
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload107) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %.from.88

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %AfterCoroSuspend
  %.reload115 = load ptr, ptr %.reload.addr106, align 8, !tbaa !532 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.reload115, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !44, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.reload115, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %.reload115, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.from.48.i, label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit

.from.48.i:                                       ; preds = %bb.b
  store ptr null, ptr %.reload.addr116, align 8, !tbaa !534
  %i.k = getelementptr inbounds nuw i8, ptr %.reload115, i64 40
  store ptr %.reload.addr116, ptr %i.k, align 8, !tbaa !50
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload115) #22 ; 0 uses
  %i.m = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 272)
          to label %.from.74 unwind label %_ZN5folly4coro4TaskIvED2Ev.exit25.from.83, !inline_history !535 ; 9 uses

.from.74:                                         ; preds = %.from.48.i
  %.reload105 = load ptr, ptr %.reload.addr106, align 8, !tbaa !532
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume, ptr %i.m, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr66.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store ptr %.reload105, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr66.i, i8 0, i64 58, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr null, ptr %i.n, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.o, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i8 1, ptr %i.p, align 8, !tbaa !58
  store ptr %i.m, ptr %.reload.addr118, align 8, !tbaa !49, !alias.scope !536
  %index.addr67.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store i2 0, ptr %index.addr67.i, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<>::Awaiter") align 8 %.reload.addr117, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr121, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr118)
          to label %bb.c unwind label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.81

bb.c:                                             ; preds = %.from.74
  store i2 1, ptr %index.addr, align 8
  %i.q = tail call noundef ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseISt4pairIbSt6vectorIS2_SaIS2_EEEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr117, ptr nonnull %0) #22 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  musttail call void %i.r(ptr nonnull %i.q)
  ret void

.from.88:                                         ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.: ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvED2Ev.exit25.from.83:        ; preds = %.from.48.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.81:  ; preds = %.from.74
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.h
  %i.w = load ptr, ptr %.reload.addr117, align 8, !tbaa !108 ; 3 uses
  %.not.i16 = icmp eq ptr %i.w, null
  br i1 %.not.i16, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.w)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

AfterCoroSuspend65:                               ; preds = %resume.entry
  %i.ab = load ptr, ptr %.reload.addr117, align 8, !tbaa !108 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !58, !range !45, !noundef !46
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK5folly3TryIvE5valueEv.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend65
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #23
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNK5folly3TryIvE5valueEv.exit.i:                 ; preds = %AfterCoroSuspend65
  store i64 0, ptr %.reload.addr117, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr nonnull %i.ab)
          to label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit unwind label %bb.g, !inline_history !2

bb.g:                                             ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load ptr, ptr %.reload.addr117, align 8, !tbaa !49 ; 2 uses
  store i64 0, ptr %.reload.addr117, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr %.sroa.0.0.copyload.i.i.i.i.i2.i)
          to label %.body unwind label %bb.i, !inline_history !2

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ap = load ptr, ptr %.reload.addr117, align 8, !tbaa !108 ; 3 uses
  %.not.i17 = icmp eq ptr %i.ap, null
  br i1 %.not.i17, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr nonnull %i.ap)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18 unwind label %bb.k, !inline_history !2

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18:        ; preds = %bb.j, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.au = load ptr, ptr %.reload.addr118, align 8, !tbaa !108 ; 3 uses
  %.not.i19 = icmp eq ptr %i.au, null
  br i1 %.not.i19, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr nonnull %i.au)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.m, !inline_history !2

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, %bb.l
  %.reload.addr98 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload99 = load ptr, ptr %.reload.addr98, align 8, !tbaa !532
  %i.az = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload99) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %.from..thread43, label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #23
          to label %.noexc23 unwind label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.

.noexc23:                                         ; preds = %bb.n
  unreachable

.from..thread43:                                  ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload = load ptr, ptr %.reload.addr98, align 8, !tbaa !532 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.reload, i64 72
  store ptr null, ptr %i.ba, align 8, !tbaa !50
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr116) #22
  %.pre = load i8, ptr %i.bb, align 8, !tbaa !157, !range !45
  %.reload109.pre = load ptr, ptr %.reload.addr98, align 8, !tbaa !532
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit:          ; preds = %bb.d, %.body, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.81
  %.pn = phi { ptr, i32 } [ %i.v, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.81 ], [ %i.ak, %.body ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr118, align 8, !tbaa !108 ; 3 uses
  %.not.i24 = icmp eq ptr %i.bc, null
  br i1 %.not.i24, label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit unwind label %bb.p, !inline_history !2

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from., %_ZN5folly4coro4TaskIvED2Ev.exit25.from.83, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, %bb.o
  %.pn10 = phi { ptr, i32 } [ %i.t, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from. ], [ %i.u, %_ZN5folly4coro4TaskIvED2Ev.exit25.from.83 ], [ %.pn, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit ], [ %.pn, %bb.o ]
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr116) #22
  br label %bb.x

.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %bb.b, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, %.from..thread43
  %.reload109 = phi ptr [ %.reload109.pre, %.from..thread43 ], [ %.reload115, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ %.reload115, %bb.b ] ; 2 uses
  %i.bh = phi i8 [ %.pre, %.from..thread43 ], [ 1, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ 0, %bb.b ]
  %.reload.addr108 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.reload109, i64 48 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !156
  %i.bl = getelementptr inbounds nuw i8, ptr %.reload109, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !154
  store i32 2, ptr %i.bi, align 8, !tbaa !154
  switch i32 %i.bn, label %bb.w [
    i32 0, label %bb.q
    i32 1, label %bb.u
  ], !prof !155

bb.q:                                             ; preds = %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr nonnull %i.bs)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.s, !inline_history !2

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !529

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.q, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i
  %i.by = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !48
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #25
  br label %bb.w

bb.u:                                             ; preds = %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !109
  %.not.i.i.i.i31 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i31, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %.reload103 = load ptr, ptr %.reload.addr108, align 8, !tbaa !532
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bh, ptr %i.cg, align 8, !tbaa !159
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.bk, ptr %i.ch, align 8, !tbaa !156
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bm, ptr %i.ci, align 8, !tbaa !48
  store i32 0, ptr %i.bi, align 8, !tbaa !102
  %i.cj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload103) #22 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, %.from.88
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit ], [ %i.s, %.from.88 ]
  %.3 = extractvalue { ptr, i32 } %.pn10.pn, 0
  %i.ck = tail call ptr @__cxa_begin_catch(ptr %.3) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr121) #22
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.x
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.cl = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr116, ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr121) #22 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  musttail call void %i.cm(ptr nonnull %i.cl)
  ret void

bb.z:                                             ; preds = %bb.x
  %i.cn = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.cn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.destroy(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr118 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.reload.addr121 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %AfterCoroSuspend, !prof !160

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr117, align 8, !tbaa !108 ; 3 uses
  %.not.i17 = icmp eq ptr %i.b, null
  br i1 %.not.i17, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18 unwind label %bb.b, !inline_history !2

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18:        ; preds = %bb.a, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.g = load ptr, ptr %.reload.addr118, align 8, !tbaa !108 ; 3 uses
  %.not.i19 = icmp eq ptr %i.g, null
  br i1 %.not.i19, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, %bb.c
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr116) #22
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.reload.addr121) #22
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 176)
          to label %CoroEnd unwind label %bb.e

bb.e:                                             ; preds = %AfterCoroSuspend
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

CoroEnd:                                          ; preds = %AfterCoroSuspend
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr118 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %CoroEnd, !prof !160

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr117, align 8, !tbaa !108 ; 3 uses
  %.not.i17 = icmp eq ptr %i.b, null
  br i1 %.not.i17, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18 unwind label %bb.b, !inline_history !2

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18:        ; preds = %bb.a, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.g = load ptr, ptr %.reload.addr118, align 8, !tbaa !108 ; 3 uses
  %.not.i19 = icmp eq ptr %i.g, null
  br i1 %.not.i19, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.d, !inline_history !2

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit18, %bb.c
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr116) #22
  br label %CoroEnd

CoroEnd:                                          ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload.addr121 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.reload.addr121) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.resume(ptr noundef nonnull align 8 dereferenceable(408) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.anon.15, align 8             ; 4 uses
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 7 uses
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 12 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 9 uses
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 14 uses
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 7 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %CoroEnd
    i3 2, label %AfterCoroSuspend152
    i3 3, label %AfterCoroSuspend156
    i3 -4, label %CoroEnd
  ], !prof !564

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr225 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload226 = load ptr, ptr %.reload.addr225, align 8, !tbaa !566
  %i.b = getelementptr inbounds nuw i8, ptr %.reload226, i64 73
  %i.c = atomicrmw xchg ptr %i.b, i8 1 monotonic, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.a, label %.preheader

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !567
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !118, !noalias !567
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !568
  store ptr %i.a, ptr %1, align 8, !noalias !569
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr231, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeISt13runtime_errorJPKcEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_E3arg, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !567
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.f = load i64, ptr %.reload.addr231, align 8, !noalias !570 ; 3 uses
  store i64 %i.f, ptr %.reload.addr233, align 8, !alias.scope !570
  store i64 0, ptr %.reload.addr231, align 8, !noalias !570
  %i.g = load i8, ptr %i.e, align 8, !tbaa !58, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.c, label %.from.176

.from.176:                                        ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22
  %.pre92 = load i64, ptr %.reload.addr233, align 8, !noalias !571
  br label %bb.c

bb.c:                                             ; preds = %.from.176, %bb.a, %bb.b
  %i.k = phi i64 [ %.pre92, %.from.176 ], [ %i.f, %bb.a ], [ %i.f, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  store i64 %i.k, ptr %i.l, align 8, !alias.scope !571
  store i64 0, ptr %.reload.addr233, align 8, !noalias !571
  store i8 0, ptr %i.e, align 8, !tbaa !58
  store i3 1, ptr %index.addr, align 8
  %i.m = call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr232, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247) #22 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  musttail call void %i.n(ptr nonnull %i.m)
  ret void

.preheader:                                       ; preds = %AfterCoroSuspend, %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr221 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload222 = load ptr, ptr %.reload.addr221, align 8, !tbaa !566
  %index.addr122.i212 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.spill.addr.i211 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload.addr121.i210 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %destroy.addr.i209 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.resume, ptr %.reload.addr230, align 8
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup, ptr %destroy.addr.i209, align 8
  store ptr %.reload222, ptr %.spill.addr.i211, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr121.i210, i8 0, i64 58, i1 false)
  store ptr null, ptr %i.q, align 8, !tbaa !54
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_, ptr %i.p, align 8, !tbaa !56
  store i32 2, ptr %i.o, align 8, !tbaa !102
  store ptr %.reload.addr230, ptr %.reload.addr236, align 8, !tbaa !49, !alias.scope !572
  store i2 0, ptr %index.addr122.i212, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSF_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<std::pair<bool, std::vector<folly::coro::Task<>>>>::Awaiter") align 8 %.reload.addr232, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr236)
          to label %bb.d unwind label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.180

bb.d:                                             ; preds = %.preheader
  store i3 2, ptr %index.addr, align 8
  %i.r = tail call noundef ptr @_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr232, ptr nonnull %0) #22 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  musttail call void %i.s(ptr nonnull %i.r)
  ret void

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.180: ; preds = %.preheader
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.k
  %i.u = load ptr, ptr %.reload.addr232, align 8, !tbaa !68 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr nonnull %i.u)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit unwind label %bb.f, !inline_history !15

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

AfterCoroSuspend152:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.z = load ptr, ptr %.reload.addr232, align 8, !tbaa !68, !noalias !573 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !102, !noalias !573
  switch i32 %i.ab, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %AfterCoroSuspend152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #23
          to label %.noexc.i unwind label %bb.k, !noalias !573

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %AfterCoroSuspend152
  invoke void @_ZN5folly6detail16throw_exception_INS_21UsingUninitializedTryEJEEEvDpT0_() #4
          to label %.noexc2.i unwind label %bb.k, !noalias !573

.noexc2.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %AfterCoroSuspend152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !159, !range !45, !noalias !573, !noundef !46
  store i8 %i.ah, ptr %.reload.addr231, align 8, !tbaa !159, !alias.scope !573
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !156, !noalias !573
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !156, !alias.scope !573
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48, !noalias !573
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !48, !alias.scope !573
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !573
  store i64 0, ptr %.reload.addr232, align 8, !tbaa !49, !noalias !573
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %i.z)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0 unwind label %bb.j, !noalias !573, !inline_history !15

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26, !noalias !573
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %.reload.addr232, align 8, !tbaa !49, !noalias !573 ; 2 uses
  store i64 0, ptr %.reload.addr232, align 8, !tbaa !49, !noalias !573
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr %.sroa.0.0.copyload.i.i.i.i.i3.i)
          to label %.body unwind label %bb.l, !noalias !573, !inline_history !15

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #26, !noalias !573
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0: ; preds = %bb.i
  %i.av = load ptr, ptr %.reload.addr232, align 8, !tbaa !68 ; 3 uses
  %.not.i31.jt0 = icmp eq ptr %i.av, null
  br i1 %.not.i31.jt0, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0, label %bb.m

bb.m:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr nonnull %i.av)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0 unwind label %bb.n, !inline_history !15

bb.n:                                             ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %lpad.loopexit, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0: ; preds = %bb.m, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt0
  %i.az = load ptr, ptr %.reload.addr236, align 8, !tbaa !68 ; 3 uses
  %.not.i33.jt0 = icmp eq ptr %i.az, null
  br i1 %.not.i33.jt0, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr nonnull %i.az)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0 unwind label %bb.p, !inline_history !15

bb.p:                                             ; preds = %bb.o
  %lpad.loopexit124 = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %lpad.loopexit124, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0: ; preds = %bb.o, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt0
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !156 ; 3 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 2 uses
  %.spill.addr227 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.be, ptr %.spill.addr227, align 8
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %..si.unfold.false.thread, label %.lr.ph

..si.unfold.false.thread:                         ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0
  %i.bg = load i8, ptr %.reload.addr231, align 8, !tbaa !157, !range !45, !noundef !46
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit: ; preds = %bb.e, %.body, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.180
  %.pn = phi { ptr, i32 } [ %i.t, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.180 ], [ %i.aq, %.body ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bh = load ptr, ptr %.reload.addr236, align 8, !tbaa !68 ; 3 uses
  %.not.i34 = icmp eq ptr %i.bh, null
  br i1 %.not.i34, label %.from.203, label %bb.q

bb.q:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr nonnull %i.bh)
          to label %.from.203 unwind label %bb.r, !inline_history !15

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

.lr.ph:                                           ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0
  %.sroa.065.085 = phi ptr [ %i.bd, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit.jt0 ], [ %i.di, %_ZN5folly3TryIvED2Ev.exit50.thread ] ; 3 uses
  %.sroa.065.085.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %.sroa.065.085, ptr %.sroa.065.085.spill.addr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %.sroa.0.0.copyload.i.i.i.i.i.i36 = load ptr, ptr %.sroa.065.085, align 8, !tbaa !49, !noalias !574
  store i64 0, ptr %.sroa.065.085, align 8, !tbaa !49, !noalias !574
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i36, ptr %.reload.addr240, align 8, !alias.scope !574
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr239, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr240)
          to label %bb.s unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph
  store ptr %.reload.addr239, ptr %.reload.addr236, align 8
  store i3 3, ptr %index.addr, align 8
  %i.bm = tail call noundef ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr nonnull %0) #22 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  musttail call void %i.bn(ptr nonnull %i.bm)
  ret void

AfterCoroSuspend156:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.bo = load ptr, ptr %.reload.addr236, align 8, !tbaa !578, !noalias !575, !nonnull !46, !align !116 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108, !noalias !580 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !58, !range !45, !noalias !580, !noundef !46 ; 2 uses
  store i8 %i.br, ptr %.reload.addr232, align 8, !tbaa !58, !alias.scope !580
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %AfterCoroSuspend156
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109, !noalias !580 ; 2 uses
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !109, !alias.scope !580
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.

_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.:          ; preds = %bb.t
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #22
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bo, align 8, !tbaa !49, !noalias !579
  br label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i

_ZN5folly3TryIvEC2ERKS1_.exit.i.i:                ; preds = %bb.t, %AfterCoroSuspend156, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from. ], [ %i.bp, %AfterCoroSuspend156 ], [ %i.bp, %bb.t ] ; 2 uses
  store i64 0, ptr %i.bo, align 8, !tbaa !49, !noalias !579
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit unwind label %bb.u, !inline_history !2

bb.u:                                             ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.ca = load ptr, ptr %.reload.addr239, align 8, !tbaa !108 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.v

bb.v:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr nonnull %i.ca)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.w, !inline_history !2

bb.w:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  tail call void @__clang_call_terminate(ptr %i.ce) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.v, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.cf = load ptr, ptr %.reload.addr240, align 8, !tbaa !108 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i40, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr nonnull %i.cf)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit unwind label %bb.y, !inline_history !2

bb.y:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit: ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.x
  %i.ck = load i8, ptr %.reload.addr232, align 8, !tbaa !58, !range !45, !noundef !46
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !566
  %i.cm = getelementptr inbounds nuw i8, ptr %.reload, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !noalias !581 ; 3 uses
  store i64 0, ptr %i.cn, align 8, !noalias !581
  store i64 %i.co, ptr %.reload.addr239, align 8
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !109
  %.not.i41 = icmp eq ptr %i.cp, null
  %i.cq = inttoptr i64 %i.co to ptr
  br i1 %.not.i41, label %bb.aa, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

.thread:                                          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  store i64 0, ptr %.reload.addr239, align 8
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

bb.aa:                                            ; preds = %bb.z
  %.not77 = icmp eq i64 %i.co, 0
  br i1 %.not77, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239) #22 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i42, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr noundef null) #22 ; 0 uses
  %i.ct = icmp eq ptr %i.cr, @_ZTIN5folly18OperationCancelledE
  br i1 %i.ct, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit: ; preds = %bb.ac, %bb.ab
  %i.cu = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #22
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.ad, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

bb.ad:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit
  %.reload214 = load ptr, ptr %.reload.addr, align 8, !tbaa !566
  %i.cv = getelementptr inbounds nuw i8, ptr %.reload214, i64 80 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  store i64 %i.cw, ptr %.reload.addr236, align 8
  %i.cx = load i64, ptr %.reload.addr239, align 8
  store i64 %i.cx, ptr %i.cv, align 8
  store i64 0, ptr %.reload.addr239, align 8
  %.not.i.i43 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i43, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr236) #22
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit: ; preds = %.lr.ph
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = load ptr, ptr %.reload.addr240, align 8, !tbaa !108 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i44, label %.from.194, label %bb.af

bb.af:                                            ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr nonnull %i.cz)
          to label %.from.194 unwind label %bb.ag, !inline_history !2

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #26
  unreachable

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split: ; preds = %bb.ac, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, %bb.ae, %bb.ad
  %.pr.pr = load ptr, ptr %.reload.addr239, align 8, !tbaa !109
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread: ; preds = %bb.z, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split
  %.pr = phi ptr [ %.pr.pr, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split ], [ %i.cq, %bb.z ]
  %.not.i.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i.i47, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

_ZN5folly17exception_wrapperD2Ev.exit48:          ; preds = %.thread, %bb.ah, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread, %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.df = load i8, ptr %.reload.addr232, align 8, !tbaa !58, !range !45, !noundef !46
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load ptr, ptr %i.de, align 8
  %.not.i.i.i49 = icmp eq ptr %i.dh, null
  %or.cond = select i1 %i.dg, i1 true, i1 %.not.i.i.i49
  br i1 %or.cond, label %_ZN5folly3TryIvED2Ev.exit50.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN5folly17exception_wrapperD2Ev.exit48
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #22
  br label %_ZN5folly3TryIvED2Ev.exit50.thread

_ZN5folly3TryIvED2Ev.exit50.thread:               ; preds = %bb.ai, %_ZN5folly17exception_wrapperD2Ev.exit48
  %.sroa.065.085.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sroa.065.085.reload = load ptr, ptr %.sroa.065.085.reload.addr, align 8, !tbaa !566
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.reload229 = load ptr, ptr %.reload.addr228, align 8, !tbaa !566
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.065.085.reload, i64 8 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %.reload229
  br i1 %i.dj, label %..si.unfold.false, label %.lr.ph

.from.194:                                        ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit, %bb.af
  tail call void @_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr231) #22
  br label %.from.203

..si.unfold.false:                                ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51 ; 3 uses
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pre6 = load ptr, ptr %.phi.trans.insert5, align 8, !tbaa !47 ; 2 uses
  %i.dk = load i8, ptr %.reload.addr231, align 8, !tbaa !157, !range !45, !noundef !46 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.not4.i.i.i.i = icmp eq ptr %.pre4, %.pre6
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %..si.unfold.false, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.pre4, %..si.unfold.false ] ; 2 uses
  %i.dm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr nonnull %i.dm)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i unwind label %bb.ak, !inline_history !2

bb.ak:                                            ; preds = %bb.aj
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.dr, %.pre6
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !559

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.dl, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %..si.unfold.false.thread, %..si.unfold.false, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i
  %.in = phi i8 [ %i.dk, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dk, %..si.unfold.false ], [ %i.bg, %..si.unfold.false.thread ]
  %i.ds = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre4, %..si.unfold.false ], [ %i.bd, %..si.unfold.false.thread ] ; 3 uses
  %i.dt = trunc nuw i8 %.in to i1
  %.not.i.i1.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !48
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.ds to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dy) #25
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit: ; preds = %bb.al, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  br i1 %i.dt, label %bb.am, label %.preheader

bb.am:                                            ; preds = %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr217 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload218 = load ptr, ptr %.reload.addr217, align 8, !tbaa !566
  %i.dz = getelementptr inbounds nuw i8, ptr %.reload218, i64 80 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.ea, null
  %i.eb = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %.not78, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  store i64 %i.eb, ptr %.reload.addr242, align 8, !alias.scope !582
  store i64 0, ptr %i.dz, align 8, !noalias !582
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !58, !range !45, !noundef !46
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !109
  %.not.i.i.i.i52 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i52, label %bb.ap, label %.from.201

.from.201:                                        ; preds = %bb.ao
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef) #22
  %.pre = load i64, ptr %.reload.addr242, align 8, !noalias !583
  br label %bb.ap

bb.ap:                                            ; preds = %.from.201, %bb.an, %bb.ao
  %i.eh = phi i64 [ %.pre, %.from.201 ], [ %i.eb, %bb.an ], [ %i.eb, %bb.ao ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  store i64 %i.eh, ptr %i.ei, align 8, !alias.scope !583
  store i64 0, ptr %.reload.addr242, align 8, !noalias !583
  store i8 0, ptr %i.ec, align 8, !tbaa !58
  store i3 -4, ptr %index.addr, align 8
  %i.ej = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr236, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247) #22 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  musttail call void %i.ek(ptr nonnull %i.ej)
  ret void

.from.203:                                        ; preds = %bb.q, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, %.from.194
  %.pn21.pn = phi { ptr, i32 } [ %i.cy, %.from.194 ], [ %.pn, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit ], [ %.pn, %bb.q ]
  %.6 = extractvalue { ptr, i32 } %.pn21.pn, 0
  %i.el = tail call ptr @__cxa_begin_catch(ptr %.6) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247) #22
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %.from.203, %bb.ar, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  %i.em = tail call noundef ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr239, ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247) #22 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8
  musttail call void %i.en(ptr nonnull %i.em)
  ret void

bb.ar:                                            ; preds = %bb.am
  %i.eo = load i8, ptr %i.ec, align 8, !tbaa !58, !range !45, !noundef !46
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !109
  %.not.i.i.i.i59 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i59, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.at, %bb.as
  store i8 1, ptr %i.ec, align 8, !tbaa !58
  br label %bb.aq

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

bb.au:                                            ; preds = %.from.203
  %i.es = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.es

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.destroy(ptr noundef nonnull align 8 dereferenceable(408) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.loopexit80
    i3 1, label %AfterCoroSuspend148
    i3 2, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
    i3 3, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
    i3 -4, label %AfterCoroSuspend160
    i3 -3, label %.loopexit80
  ], !prof !585

AfterCoroSuspend148:                              ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr233, align 8, !tbaa !109
  %.not.i.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i27, label %_ZN5folly4coro8co_errorD2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend148
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr233) #22
  br label %_ZN5folly4coro8co_errorD2Ev.exit28

_ZN5folly4coro8co_errorD2Ev.exit28:               ; preds = %bb.a, %AfterCoroSuspend148
  %i.b = load ptr, ptr %.reload.addr231, align 8, !tbaa !109
  %.not.i.i29 = icmp eq ptr %i.b, null
  br i1 %.not.i.i29, label %.loopexit80, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro8co_errorD2Ev.exit28
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr231) #22
  br label %.loopexit80

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2: ; preds = %resume.entry
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %.reload.addr232, align 8, !tbaa !68 ; 3 uses
  %.not.i31.jt2 = icmp eq ptr %i.c, null
  br i1 %.not.i31.jt2, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr nonnull %i.c)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2 unwind label %bb.d, !inline_history !15

bb.d:                                             ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2: ; preds = %bb.c, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit.jt2
  %i.g = load ptr, ptr %.reload.addr236, align 8, !tbaa !68 ; 3 uses
  %.not.i33.jt2 = icmp eq ptr %i.g, null
  br i1 %.not.i33.jt2, label %.loopexit80, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %.loopexit80 unwind label %bb.f, !inline_history !15

bb.f:                                             ; preds = %bb.e
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %lpad.loopexit.split-lp125, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load ptr, ptr %.reload.addr239, align 8, !tbaa !108 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.k, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr nonnull %i.k)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.h, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.g, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.p = load ptr, ptr %.reload.addr240, align 8, !tbaa !108 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.p, null
  br i1 %.not.i.i40, label %..si.unfold.false, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr nonnull %i.p)
          to label %..si.unfold.false unwind label %bb.j, !inline_history !2

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #26
  unreachable

..si.unfold.false:                                ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %..si.unfold.false, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %i.w, %..si.unfold.false ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr nonnull %i.y)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i unwind label %bb.l, !inline_history !2

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !584

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %..si.unfold.false, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i
  %i.ae = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.w, %..si.unfold.false ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i, label %.loopexit80, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #25
  br label %.loopexit80

AfterCoroSuspend160:                              ; preds = %resume.entry
  %i.ak = load ptr, ptr %.reload.addr242, align 8, !tbaa !109
  %.not.i.i.i57 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i57, label %.loopexit80, label %bb.n

bb.n:                                             ; preds = %AfterCoroSuspend160
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr242) #22
  br label %.loopexit80

.loopexit80:                                      ; preds = %resume.entry, %AfterCoroSuspend160, %bb.n, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32.jt2, %bb.e, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.m, %_ZN5folly4coro8co_errorD2Ev.exit28, %bb.b, %resume.entry
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load i8, ptr %i.al, align 8, !tbaa !58, !range !45, !noundef !46
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %.loopexit80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !109
  %.not.i.i.i.i61 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i61, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.p, %bb.o, %.loopexit80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw sub ptr %i.as, i64 8 acq_rel, align 8 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  br i1 %i.au, label %bb.r, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.av = and i64 %i.at, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ar) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #22, !call_target !91, !inline_history !13
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.t, %bb.s, %bb.q, %_ZN5folly3TryIvED2Ev.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64 ; 2 uses
end_hunk_2
