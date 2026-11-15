Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ThreadPool?download=true
inline.NumInlined: 796
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12V3ThreadPoolD2Ev:bb.a
  br i1 %i.w, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.x = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.y = load atomic i64, ptr %i.t acquire, align 8
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %_ZNSt3_V222condition_variable_any10notify_allEv.exit
  %i.z = load atomic i8, ptr %i.i seq_cst, align 8, !range !52, !noundef !53
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.h, label %_ZN12V3ThreadPool4waitEv.exit

bb.h:                                             ; preds = %.critedge.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %.not710.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not710.i, label %_ZN12V3ThreadPool4waitEv.exit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.h, %.noexc1
  %.sroa.04.011.i = phi ptr [ %i.ae, %.noexc1 ], [ %i.ab, %bb.h ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1:                                          ; preds = %.lr.ph12.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i, i64 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not7.i, label %_ZN12V3ThreadPool4waitEv.exit, label %.lr.ph12.i

_ZN12V3ThreadPool4waitEv.exit:                    ; preds = %.noexc1, %bb.h, %.critedge.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i2, label %_ZNSt3_V222condition_variable_anyD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12V3ThreadPool4waitEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ah, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !19
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26, !inline_history !193
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26, !inline_history !193
  br label %_ZNSt3_V222condition_variable_anyD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i3 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ak, %bb.l ], [ %i.au, %bb.m ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.av, label %bb.n, label %_ZNSt3_V222condition_variable_anyD2Ev.exit, !prof !47

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #26
  br label %_ZNSt3_V222condition_variable_anyD2Ev.exit

_ZNSt3_V222condition_variable_anyD2Ev.exit:       ; preds = %_ZN12V3ThreadPool4waitEv.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(64) %i.m) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.aw, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null)
  tail call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ax) #26
  %i.ay = load ptr, ptr %0, align 8, !tbaa !48    ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.o:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %_ZNSt3_V222condition_variable_anyD2Ev.exit, %bb.o
  %.05.i.i.i = phi ptr [ %i.bb, %bb.o ], [ %i.ay, %_ZNSt3_V222condition_variable_anyD2Ev.exit ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  tail call void @_ZSt9terminatev() #28
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.o, %_ZNSt3_V222condition_variable_anyD2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.ay to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.q
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph12.i, %bb.c
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %lpad.loopexit.split-lp14, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !61
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i:      ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %.preheader.i, !prof !54

.preheader.i:                                     ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.b
  %.037.i = phi i32 [ %i.g, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i ]
  %i.d = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i:     ; preds = %.preheader.i
  %i.f = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %1) #26
  %.not.i.i4.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i4.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.g = add nuw nsw i32 %.037.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.g, 50000
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE4lockEv.exit:            ; preds = %.preheader.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, %bb.a, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN10V3MutexImpISt5mutexE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !195, !nonnull !53, !align !62
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  br label %_ZN10V3MutexImpISt5mutexE6unlockEv.exit

_ZN10V3MutexImpISt5mutexE6unlockEv.exit:          ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3ThreadPool4waitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %.not8 = icmp eq i64 %i.b, 0
  br i1 %.not8, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.c = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.f = load atomic i64, ptr %i.a acquire, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !3

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.g = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not710 = icmp eq ptr %i.i, %i.k
  br i1 %.not710, label %.loopexit, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %.lr.ph12
  %.sroa.04.011 = phi ptr [ %i.l, %.lr.ph12 ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.011, i64 8 ; 2 uses
  %.not7 = icmp eq ptr %i.l, %i.k
  br i1 %.not7, label %.loopexit, label %.lr.ph12

.loopexit:                                        ; preds = %.lr.ph12, %bb.d, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFvvEEclEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !4
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.j = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %bb.d
  %i.l = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !54

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.e
  %.037.i.i = phi i32 [ %i.p, %bb.e ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.m = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.o = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26
  %.not.i.i4.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.e, !prof !55

bb.e:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.p = add nuw nsw i32 %.037.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.p, 50000
  br i1 %exitcond.not.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %bb.d, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.q, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !196
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -32
  %.not.i.i.i = icmp eq ptr %i.t, %i.w
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  store ptr %i.z, ptr %i.x, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !73
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !64
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i:           ; preds = %bb.h, %bb.g
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.af, ptr %i.s, align 8, !tbaa !72
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.i:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  invoke void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit unwind label %bb.m

_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i, %bb.i
  %i.ag = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.ai = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = atomicrmw add ptr %i.aj, i64 1 release, align 8 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.an = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #26 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i4, label %_ZNSt3_V222condition_variable_any10notify_oneEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.an) #30
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #28
  unreachable

_ZNSt3_V222condition_variable_any10notify_oneEv.exit: ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(64) %i.aq) #26
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #26 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.n, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit5

bb.n:                                             ; preds = %bb.m
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit5

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit5: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %i.as

bb.o:                                             ; preds = %_ZNSt3_V222condition_variable_any10notify_oneEv.exit, %_ZNKSt8functionIFvvEEclEv.exit
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3ThreadPool13workerJobLoopEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 16    ; 9 uses
  %2 = alloca %"class.std::function", align 16    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.i = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %bb.b
  %i.k = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !54

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.c
  %.037.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.l = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.n = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26
  %.not.i.i4.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.c, !prof !55

bb.c:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.o = add nuw nsw i32 %.037.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.o, 50000
  br i1 %exitcond.not.i.i, label %bb.d, label %.preheader.i.i, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit unwind label %.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.b, %bb.d
  %i.p = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %"_ZZN12V3ThreadPool13workerJobLoopEvENK3$_0clEv.exit.i", label %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit"

"_ZZN12V3ThreadPool13workerJobLoopEvENK3$_0clEv.exit.i": ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, %.noexc11
  %i.v = load atomic i8, ptr %i.c seq_cst, align 8, !range !52, !noundef !53
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit", label %bb.e

bb.e:                                             ; preds = %"_ZZN12V3ThreadPool13workerJobLoopEvENK3$_0clEv.exit.i"
  invoke void @_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEEEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.e
  %i.x = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %"_ZZN12V3ThreadPool13workerJobLoopEvENK3$_0clEv.exit.i", label %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit", !llvm.loop !197

"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit": ; preds = %.noexc11, %"_ZZN12V3ThreadPool13workerJobLoopEvENK3$_0clEv.exit.i", %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.ad = load atomic i8, ptr %i.c seq_cst, align 8, !range !52, !noundef !53
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.w, label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.g:                                             ; preds = %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit"
  %i.ai = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !74
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.l, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 79)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ap = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.3, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ap) #30
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.ar = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !74
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.w, label %bb.m, !llvm.loop !198

bb.m:                                             ; preds = %bb.l
  %i.ax = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74, !noalias !201 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %i.bb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !28
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !64
  %.not.i.i.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 16, i1 false), !tbaa.struct !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.n, %bb.m
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 16, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !73
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %2, align 16, !tbaa !45
  %i.bd = load <2 x ptr>, ptr %i.f, align 16, !tbaa !28
  %i.be = load ptr, ptr %i.f, align 16, !tbaa !28 ; 2 uses
  store <2 x ptr> %i.bd, ptr %i.e, align 16, !tbaa !28
  store <2 x ptr> %i.bb, ptr %i.f, align 16, !tbaa !28
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSEOS1_.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #28
  unreachable

_ZNSt8functionIFvvEEaSEOS1_.exit:                 ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.bi = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str, ptr nonnull @.str.1, i32 37, ptr null) ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !202
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  %.not.i.i13 = icmp eq ptr %i.bk, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bp, null       ; 2 uses
  br i1 %.not.i.i13, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit
  br i1 %.not.i.i.i.i14, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef 3)
          to label %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i unwind label %bb.s ; 0 uses

._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i:    ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %i.bj, align 8, !tbaa !75
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i, %bb.q
  %i.bt = phi ptr [ %.pre.i.i, %._ZNSt14_Function_baseD2Ev.exit_crit_edge.i.i ], [ %i.bk, %bb.q ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.t:                                             ; preds = %_ZNSt8functionIFvvEEaSEOS1_.exit
  br i1 %.not.i.i.i.i14, label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i32 noundef 3)
          to label %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #28
  unreachable

_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.u, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !203
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef 512) #29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !77
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78 ; 3 uses
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !79
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 512
  store ptr %i.ce, ptr %i.bl, align 8, !tbaa !80
  br label %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.bu, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.cd, %_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.bj, align 8, !tbaa !75
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit", %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %cond = phi i1 [ true, %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit ], [ false, %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit" ], [ false, %bb.l ]
  %.0 = phi i32 [ 0, %_ZNSt5queueISt8functionIFvvEESt5dequeIS2_SaIS2_EEE3popEv.exit ], [ 1, %"_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEZN12V3ThreadPool13workerJobLoopEvE3$_0EEvRT_T0_.exit" ], [ 2, %bb.l ]
  %i.cf = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.x, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15

bb.x:                                             ; preds = %bb.w
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15: ; preds = %bb.w, %bb.x
  br i1 %cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15
  %i.ci = load ptr, ptr %i.f, align 16, !tbaa !64
  %.not.i.i16 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i16, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt25__throw_bad_function_callv() #30
          to label %.noexc17 unwind label %.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !66
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.aa
  %i.ck = atomicrmw add ptr %i.h, i64 -1 release, align 8 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15, %_ZNKSt8functionIFvvEEclEv.exit
  %.1 = phi i32 [ 0, %_ZNKSt8functionIFvvEEclEv.exit ], [ %.0, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit15 ]
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !64 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cp = icmp eq i32 %.1, 1
  br i1 %i.cp, label %bb.ag, label %bb.b

.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.aa, %bb.z
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn9 = phi { ptr, i32 } [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp50, %bb.f ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp24.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cq = load ptr, ptr %i.f, align 16, !tbaa !64 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cq, null
  br i1 %.not.i19, label %_ZNSt14_Function_baseD2Ev.exit20, label %bb.ae

bb.ae:                                            ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit20 unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit20:                 ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn9

bb.ag:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  ret void
}

; Function Attrs: noreturn
declare void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112)) #7

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8, ptr noundef, i32 noundef) #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #26
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str, ptr nonnull @.str.7, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12V3ThreadPool18selfTestMtDisabledEv() #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12V3ThreadPool8selfTestEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.V3MutexImp, align 8          ; 10 uses
  %i.a = alloca i32, align 4                      ; 16 uses
  %1 = alloca %class.anon.8, align 16             ; 12 uses
  %2 = alloca %class.V3ThreadScope, align 8       ; 7 uses
  %3 = alloca %"class.std::function", align 8     ; 14 uses
  %4 = alloca %"class.std::function", align 8     ; 14 uses
  %5 = alloca %"class.std::function", align 8     ; 14 uses
  %6 = alloca %"class.std::function", align 8     ; 14 uses
  %7 = alloca %"class.std::function", align 8     ; 14 uses
  %8 = alloca %"class.std::function", align 8     ; 14 uses
  %9 = alloca %"class.std::function", align 8     ; 14 uses
  %10 = alloca %"class.std::function", align 8    ; 14 uses
  %11 = alloca %"class.std::function", align 8    ; 14 uses
  %12 = alloca %class.V3ThreadScope, align 8      ; 6 uses
  %13 = alloca %"class.std::function", align 8    ; 14 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %14 = alloca %class.V3ThreadScope, align 8      ; 7 uses
  %15 = alloca %"class.std::function", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 16, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN13V3ThreadScopeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.d      ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 100, ptr %i.l, align 8, !tbaa !46
  store ptr %i.e, ptr %3, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data", ptr %i.k, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.d, align 8, !tbaa !64
  %i.m = load ptr, ptr %2, align 8, !tbaa !87     ; 11 uses
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit unwind label %bb.bf

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.l unwind label %bb.i       ; 4 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.u, null
  br i1 %.not.i.i53, label %.body55, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body55 unwind label %bb.k    ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.s, align 8, !tbaa !61
  %.sroa.0212.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.a, ptr %.sroa.0212.sroa.5.0..sroa_idx, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 100, ptr %i.z, align 8, !tbaa !46
  store ptr %i.s, ptr %4, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE9_M_invokeERKSt9_Any_data", ptr %i.y, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.r, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit57 unwind label %bb.bi

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit57: ; preds = %bb.l
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %.not.i58 = icmp eq ptr %i.aa, null
  br i1 %.not.i58, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit57
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable

bb.o:                                             ; preds = %bb.m, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0209.sroa.0.0.copyload = load <2 x ptr>, ptr %1, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.s unwind label %bb.p       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i60, label %.body62, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body62 unwind label %bb.r    ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable

bb.s:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x ptr> %.sroa.0209.sroa.0.0.copyload, ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 100, ptr %i.am, align 8, !tbaa !46
  store ptr %i.af, ptr %5, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data", ptr %i.al, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.ae, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit65 unwind label %bb.bl

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit65: ; preds = %bb.s
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %.not.i66 = icmp eq ptr %i.an, null
  br i1 %.not.i66, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit65
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

bb.v:                                             ; preds = %bb.t, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.z unwind label %bb.w       ; 4 uses

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.au, null
  br i1 %.not.i.i68, label %.body70, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body70 unwind label %bb.y    ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #28
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.as, align 8, !tbaa !61
  %.sroa.0206.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.a, ptr %.sroa.0206.sroa.5.0..sroa_idx, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 100, ptr %i.az, align 8, !tbaa !46
  store ptr %i.as, ptr %6, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE9_M_invokeERKSt9_Any_data", ptr %i.ay, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.ar, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit73 unwind label %bb.bo

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit73: ; preds = %bb.z
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ba, null
  br i1 %.not.i74, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit73
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.ac unwind label %bb.ab     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #28
  unreachable

bb.ac:                                            ; preds = %bb.aa, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.bf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ag unwind label %bb.ad     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !64 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i76, label %.body78, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body78 unwind label %bb.af   ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #28
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.bf, align 8, !tbaa !61
  %.sroa.0203.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.a, ptr %.sroa.0203.sroa.5.0..sroa_idx, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 200, ptr %i.bm, align 8, !tbaa !46
  store ptr %i.bf, ptr %7, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE9_M_invokeERKSt9_Any_data", ptr %i.bl, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.be, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit81 unwind label %bb.br

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit81: ; preds = %bb.ag
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !64 ; 2 uses
  %.not.i82 = icmp eq ptr %i.bn, null
  br i1 %.not.i82, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit81
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.aj unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #28
  unreachable

bb.aj:                                            ; preds = %bb.ah, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %.sroa.0200.sroa.0.0.copyload = load <2 x ptr>, ptr %1, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.bs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.an unwind label %bb.ak     ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !64 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i84, label %.body86, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = invoke noundef zeroext i1 %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %.body86 unwind label %bb.am   ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #28
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 24
  store <2 x ptr> %.sroa.0200.sroa.0.0.copyload, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 200, ptr %i.bz, align 8, !tbaa !46
  store ptr %i.bs, ptr %8, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data", ptr %i.by, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.br, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit89 unwind label %bb.bu

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit89: ; preds = %bb.an
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !64 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ca, null
  br i1 %.not.i90, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit89
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.aq unwind label %bb.ap     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %.sroa.0197.sroa.0.0.copyload = load <2 x ptr>, ptr %1, align 16
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.cf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.au unwind label %bb.ar     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i92, label %.body94, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body94 unwind label %bb.at   ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #28
  unreachable

bb.au:                                            ; preds = %bb.aq
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store <2 x ptr> %.sroa.0197.sroa.0.0.copyload, ptr %i.cf, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 300, ptr %i.cm, align 8, !tbaa !46
  store ptr %i.cf, ptr %9, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data", ptr %i.cl, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.ce, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit97 unwind label %bb.bx

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit97: ; preds = %bb.au
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %.not.i98 = icmp eq ptr %i.cn, null
  br i1 %.not.i98, label %_ZNSt14_Function_baseD2Ev.exit99, label %bb.av

bb.av:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit97
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit99 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit99:                 ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit97, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %16 = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8
  %.not8.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not8.i.i, label %.critedge.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit99, %bb.ay
  %i.ct = load atomic i8, ptr %16 seq_cst, align 8, !range !52, !noundef !53
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.critedge.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cv = call noundef i32 @sched_yield() #26     ; 0 uses
  %i.cw = load atomic i64, ptr %i.cr acquire, align 8
  %.not.i.i100 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i100, label %.critedge.i.i, label %bb.ax, !llvm.loop !3

.critedge.i.i:                                    ; preds = %bb.ay, %bb.ax, %_ZNSt14_Function_baseD2Ev.exit99
  %i.cx = load atomic i8, ptr %16 seq_cst, align 8, !range !52, !noundef !53
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.az, label %_ZN13V3ThreadScope4waitEv.exit

bb.az:                                            ; preds = %.critedge.i.i
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !59  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !59 ; 2 uses
  %.not710.i.i = icmp eq ptr %i.cz, %i.db
  br i1 %.not710.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.az, %.noexc
  %.sroa.04.011.i.i = phi ptr [ %i.dc, %.noexc ], [ %i.cz, %bb.az ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i)
          to label %.noexc unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph12.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i, i64 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.dc, %i.db
  br i1 %.not7.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

_ZN13V3ThreadScope4waitEv.exit:                   ; preds = %.noexc, %bb.az, %.critedge.i.i
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !46
  switch i32 %i.dd, label %bb.ba [
    i32 1000, label %bb.ca
    i32 10, label %bb.ca
  ], !prof !204

bb.ba:                                            ; preds = %_ZN13V3ThreadScope4waitEv.exit
  %i.de = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 133)
          to label %bb.bb unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.df = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.bc unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef nonnull @.str.4, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bc
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !46
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.df, i32 noundef %i.dh)
          to label %bb.bd unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.di) #30
          to label %bb.be unwind label %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.e
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %.not.i102 = icmp eq ptr %i.dk, null
  br i1 %.not.i102, label %.body, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.bh     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #28
  unreachable

.body:                                            ; preds = %bb.bg, %bb.bf, %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.dj, %bb.bg ], [ %i.f, %bb.c ], [ %i.dj, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp230

bb.bi:                                            ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %.not.i104 = icmp eq ptr %i.dp, null
  br i1 %.not.i104, label %.body55, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body55 unwind label %bb.bk   ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #28
  unreachable

.body55:                                          ; preds = %bb.bj, %bb.bi, %bb.j, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.do, %bb.bj ], [ %i.t, %bb.j ], [ %i.do, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit.split-lp230

bb.bl:                                            ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %.not.i106 = icmp eq ptr %i.du, null
  br i1 %.not.i106, label %.body62, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dv = invoke noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body62 unwind label %bb.bn   ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #28
  unreachable

.body62:                                          ; preds = %bb.bm, %bb.bl, %bb.q, %bb.p
  %.pn18 = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.dt, %bb.bm ], [ %i.ag, %bb.q ], [ %i.dt, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp230

bb.bo:                                            ; preds = %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %.not.i108 = icmp eq ptr %i.dz, null
  br i1 %.not.i108, label %.body70, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body70 unwind label %bb.bq   ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #28
  unreachable

.body70:                                          ; preds = %bb.bp, %bb.bo, %bb.x, %bb.w
  %.pn20 = phi { ptr, i32 } [ %i.at, %bb.w ], [ %i.dy, %bb.bp ], [ %i.at, %bb.x ], [ %i.dy, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.loopexit.split-lp230

bb.br:                                            ; preds = %bb.ag
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %i.be, align 8, !tbaa !64 ; 2 uses
  %.not.i110 = icmp eq ptr %i.ee, null
  br i1 %.not.i110, label %.body78, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body78 unwind label %bb.bt   ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #28
  unreachable

.body78:                                          ; preds = %bb.bs, %bb.br, %bb.ae, %bb.ad
  %.pn22 = phi { ptr, i32 } [ %i.bg, %bb.ad ], [ %i.ed, %bb.bs ], [ %i.bg, %bb.ae ], [ %i.ed, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit.split-lp230

bb.bu:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %i.br, align 8, !tbaa !64 ; 2 uses
  %.not.i112 = icmp eq ptr %i.ej, null
  br i1 %.not.i112, label %.body86, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %.body86 unwind label %bb.bw   ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #28
  unreachable

.body86:                                          ; preds = %bb.bv, %bb.bu, %bb.al, %bb.ak
  %.pn24 = phi { ptr, i32 } [ %i.bt, %bb.ak ], [ %i.ei, %bb.bv ], [ %i.bt, %bb.al ], [ %i.ei, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.loopexit.split-lp230

bb.bx:                                            ; preds = %bb.au
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %.not.i114 = icmp eq ptr %i.eo, null
  br i1 %.not.i114, label %.body94, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ep = invoke noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body94 unwind label %bb.bz   ; 0 uses

bb.bz:                                            ; preds = %bb.by
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #28
  unreachable

.body94:                                          ; preds = %bb.by, %bb.bx, %bb.as, %bb.ar
  %.pn26 = phi { ptr, i32 } [ %i.cg, %bb.ar ], [ %i.en, %bb.by ], [ %i.cg, %bb.as ], [ %i.en, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit.split-lp230

.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph12.i.i, %bb.bc, %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bb, %bb.ba
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp230

bb.ca:                                            ; preds = %_ZN13V3ThreadScope4waitEv.exit, %_ZN13V3ThreadScope4waitEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.et = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.ce unwind label %bb.cb     ; 5 uses

bb.cb:                                            ; preds = %bb.ca
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !64 ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i116, label %.body118, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body118 unwind label %bb.cd  ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #28
  unreachable

bb.ce:                                            ; preds = %bb.ca
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %i.et, align 8, !tbaa !61
  %.sroa.0193.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %1, ptr %.sroa.0193.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %.sroa.0193.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.a, ptr %.sroa.0193.sroa.6.0..sroa_idx, align 8, !tbaa !83
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i32 100, ptr %i.fa, align 8, !tbaa !46
  store ptr %i.et, ptr %10, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE9_M_invokeERKSt9_Any_data", ptr %i.ez, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.es, align 8, !tbaa !64
  %i.fb = load ptr, ptr %2, align 8, !tbaa !87    ; 6 uses
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit121 unwind label %bb.ct

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit121: ; preds = %bb.ce
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !64 ; 2 uses
  %.not.i122 = icmp eq ptr %i.fc, null
  br i1 %.not.i122, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit121
  %i.fd = invoke noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %bb.ch unwind label %bb.cg     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #28
  unreachable

bb.ch:                                            ; preds = %bb.cf, %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.fh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.cl unwind label %bb.ci     ; 5 uses

bb.ci:                                            ; preds = %bb.ch
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !64 ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i124, label %.body126, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fk = invoke noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body126 unwind label %bb.ck  ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #28
  unreachable

bb.cl:                                            ; preds = %bb.ch
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %0, ptr %i.fh, align 8, !tbaa !61
  %.sroa.0190.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %1, ptr %.sroa.0190.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %.sroa.0190.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store ptr %i.a, ptr %.sroa.0190.sroa.6.0..sroa_idx, align 8, !tbaa !83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i32 100, ptr %i.fo, align 8, !tbaa !46
  store ptr %i.fh, ptr %11, align 8, !tbaa !91
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE9_M_invokeERKSt9_Any_data", ptr %i.fn, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.fg, align 8, !tbaa !64
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit130 unwind label %bb.cw

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit130: ; preds = %bb.cl
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !64 ; 2 uses
  %.not.i131 = icmp eq ptr %i.fp, null
  br i1 %.not.i131, label %_ZNSt14_Function_baseD2Ev.exit132, label %bb.cm

bb.cm:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit130
  %i.fq = invoke noundef zeroext i1 %i.fp(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit132 unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit132:                ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit130, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %17 = getelementptr inbounds nuw i8, ptr %i.fb, i64 168 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 176 ; 2 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8
  %.not8.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not8.i.i.i, label %.critedge.i.i.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit132, %bb.cp
  %i.fv = load atomic i8, ptr %17 seq_cst, align 8, !range !52, !noundef !53
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.critedge.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fx = call noundef i32 @sched_yield() #26     ; 0 uses
  %i.fy = load atomic i64, ptr %i.ft acquire, align 8
  %.not.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.co, !llvm.loop !3

.critedge.i.i.i:                                  ; preds = %bb.cp, %bb.co, %_ZNSt14_Function_baseD2Ev.exit132
  %i.fz = load atomic i8, ptr %17 seq_cst, align 8, !range !52, !noundef !53
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.cq, label %_ZN13V3ThreadScopeD2Ev.exit

bb.cq:                                            ; preds = %.critedge.i.i.i
  %i.gb = load ptr, ptr %i.fb, align 8, !tbaa !59 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !59 ; 2 uses
  %.not710.i.i.i = icmp eq ptr %i.gb, %i.gd
  br i1 %.not710.i.i.i, label %_ZN13V3ThreadScopeD2Ev.exit, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.cq, %.noexc.i
  %.sroa.04.011.i.i.i = phi ptr [ %i.ge, %.noexc.i ], [ %i.gb, %bb.cq ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i.i)
          to label %.noexc.i unwind label %bb.cr

.noexc.i:                                         ; preds = %.lr.ph12.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i.i, i64 8 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ge, %i.gd
  br i1 %.not7.i.i.i, label %_ZN13V3ThreadScopeD2Ev.exit, label %.lr.ph12.i.i.i

bb.cr:                                            ; preds = %.lr.ph12.i.i.i
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #28
  unreachable

_ZN13V3ThreadScopeD2Ev.exit:                      ; preds = %.noexc.i, %.critedge.i.i.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.gh = load i32, ptr %i.a, align 4, !tbaa !46
  %.not = icmp eq i32 %i.gh, 100
  br i1 %.not, label %bb.cz, label %bb.cs, !prof !54

bb.cs:                                            ; preds = %_ZN13V3ThreadScopeD2Ev.exit
  %i.gi = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 139) ; 0 uses
  %i.gj = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull @.str.4)
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !46
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i32 noundef %i.gl)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.gm) #30
  unreachable

bb.ct:                                            ; preds = %bb.ce
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %i.es, align 8, !tbaa !64 ; 2 uses
  %.not.i133 = icmp eq ptr %i.go, null
  br i1 %.not.i133, label %.body118, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gp = invoke noundef zeroext i1 %i.go(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %.body118 unwind label %bb.cv  ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #28
  unreachable

.body118:                                         ; preds = %bb.cu, %bb.ct, %bb.cc, %bb.cb
  %.pn30 = phi { ptr, i32 } [ %i.eu, %bb.cb ], [ %i.gn, %bb.cu ], [ %i.eu, %bb.cc ], [ %i.gn, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.loopexit.split-lp230

bb.cw:                                            ; preds = %bb.cl
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gt = load ptr, ptr %i.fg, align 8, !tbaa !64 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gt, null
  br i1 %.not.i135, label %.body126, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gu = invoke noundef zeroext i1 %i.gt(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body126 unwind label %bb.cy  ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #28
  unreachable

.body126:                                         ; preds = %bb.cx, %bb.cw, %bb.cj, %bb.ci
  %.pn32 = phi { ptr, i32 } [ %i.fi, %bb.ci ], [ %i.gs, %bb.cx ], [ %i.fi, %bb.cj ], [ %i.gs, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit.split-lp230

.loopexit.split-lp230:                            ; preds = %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body126, %.body118, %.body94, %.body86, %.body78, %.body70, %.body62, %.body55, %.body
  %.pn40 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn32, %.body126 ], [ %.pn30, %.body118 ], [ %.pn26, %.body94 ], [ %.pn24, %.body86 ], [ %.pn22, %.body78 ], [ %.pn20, %.body70 ], [ %.pn18, %.body62 ], [ %.pn16, %.body55 ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp230.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13V3ThreadScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.eh

bb.cz:                                            ; preds = %_ZN13V3ThreadScopeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @_ZN13V3ThreadScopeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %.sroa.0188.sroa.0.0.copyload = load <2 x ptr>, ptr %1, align 16
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.gy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.dd unwind label %bb.da     ; 3 uses

bb.da:                                            ; preds = %bb.cz
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %i.gx, align 8, !tbaa !64 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i137, label %.body139, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hb = invoke noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body139 unwind label %bb.dc  ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #28
  unreachable

bb.dd:                                            ; preds = %bb.cz
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 24
  store <2 x ptr> %.sroa.0188.sroa.0.0.copyload, ptr %i.gy, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i32 100, ptr %i.hf, align 8, !tbaa !46
  store ptr %i.gy, ptr %13, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data", ptr %i.he, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.gx, align 8, !tbaa !64
  %i.hg = load ptr, ptr %12, align 8, !tbaa !87   ; 5 uses
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit143 unwind label %bb.dl

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit143: ; preds = %bb.dd
  %i.hh = load ptr, ptr %i.gx, align 8, !tbaa !64 ; 2 uses
  %.not.i144 = icmp eq ptr %i.hh, null
  br i1 %.not.i144, label %_ZNSt14_Function_baseD2Ev.exit145, label %bb.de

bb.de:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit143
  %i.hi = invoke noundef zeroext i1 %i.hh(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit145 unwind label %bb.df ; 0 uses

bb.df:                                            ; preds = %bb.de
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit145:                ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit143, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %18 = getelementptr inbounds nuw i8, ptr %i.hg, i64 168 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 176 ; 2 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8
  %.not8.i.i.i146 = icmp eq i64 %i.hm, 0
  br i1 %.not8.i.i.i146, label %.critedge.i.i.i149, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit145, %bb.dh
  %i.hn = load atomic i8, ptr %18 seq_cst, align 8, !range !52, !noundef !53
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %.critedge.i.i.i149, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.hp = call noundef i32 @sched_yield() #26     ; 0 uses
  %i.hq = load atomic i64, ptr %i.hl acquire, align 8
  %.not.i.i.i148 = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i148, label %.critedge.i.i.i149, label %bb.dg, !llvm.loop !3

.critedge.i.i.i149:                               ; preds = %bb.dh, %bb.dg, %_ZNSt14_Function_baseD2Ev.exit145
  %i.hr = load atomic i8, ptr %18 seq_cst, align 8, !range !52, !noundef !53
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.di, label %_ZN13V3ThreadScopeD2Ev.exit155

bb.di:                                            ; preds = %.critedge.i.i.i149
  %i.ht = load ptr, ptr %i.hg, align 8, !tbaa !59 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !59 ; 2 uses
  %.not710.i.i.i150 = icmp eq ptr %i.ht, %i.hv
  br i1 %.not710.i.i.i150, label %_ZN13V3ThreadScopeD2Ev.exit155, label %.lr.ph12.i.i.i151

.lr.ph12.i.i.i151:                                ; preds = %bb.di, %.noexc.i153
  %.sroa.04.011.i.i.i152 = phi ptr [ %i.hw, %.noexc.i153 ], [ %i.ht, %bb.di ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i.i152)
          to label %.noexc.i153 unwind label %bb.dj

.noexc.i153:                                      ; preds = %.lr.ph12.i.i.i151
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i.i152, i64 8 ; 2 uses
  %.not7.i.i.i154 = icmp eq ptr %i.hw, %i.hv
  br i1 %.not7.i.i.i154, label %_ZN13V3ThreadScopeD2Ev.exit155, label %.lr.ph12.i.i.i151

bb.dj:                                            ; preds = %.lr.ph12.i.i.i151
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #28
  unreachable

_ZN13V3ThreadScopeD2Ev.exit155:                   ; preds = %.noexc.i153, %.critedge.i.i.i149, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hz = load i32, ptr %i.a, align 4, !tbaa !46
  %.not36 = icmp eq i32 %i.hz, 10
  br i1 %.not36, label %bb.do, label %bb.dk, !prof !54

bb.dk:                                            ; preds = %_ZN13V3ThreadScopeD2Ev.exit155
  %i.ia = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 146) ; 0 uses
  %i.ib = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ic = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull @.str.4)
  %i.id = load i32, ptr %i.a, align 4, !tbaa !46
  %i.ie = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, i32 noundef %i.id)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ie) #30
  unreachable

bb.dl:                                            ; preds = %bb.dd
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %i.gx, align 8, !tbaa !64 ; 2 uses
  %.not.i156 = icmp eq ptr %i.ig, null
  br i1 %.not.i156, label %.body139, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ih = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %.body139 unwind label %bb.dn  ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #28
  unreachable

.body139:                                         ; preds = %bb.dm, %bb.dl, %bb.db, %bb.da
  %.pn34 = phi { ptr, i32 } [ %i.gz, %bb.da ], [ %i.if, %bb.dm ], [ %i.gz, %bb.db ], [ %i.if, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN13V3ThreadScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.eh

bb.do:                                            ; preds = %_ZN13V3ThreadScopeD2Ev.exit155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @_ZN13V3ThreadScopeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.ik = ptrtoint ptr %i.b to i64
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.in, align 8
  store i64 %i.ik, ptr %15, align 8, !tbaa !83
  store ptr @"_ZNSt17_Function_handlerIFvvEZN12V3ThreadPool8selfTestEvE3$_3E9_M_invokeERKSt9_Any_data", ptr %i.im, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvvEZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.il, align 8, !tbaa !64
  %i.io = load ptr, ptr %14, align 8, !tbaa !87   ; 5 uses
  invoke void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit159 unwind label %bb.dz

_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit159: ; preds = %bb.do
  %i.ip = load ptr, ptr %i.il, align 8, !tbaa !64 ; 2 uses
  %.not.i160 = icmp eq ptr %i.ip, null
  br i1 %.not.i160, label %_ZNSt14_Function_baseD2Ev.exit161, label %bb.dp

bb.dp:                                            ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit159
  %i.iq = invoke noundef zeroext i1 %i.ip(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit161 unwind label %bb.dq ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit161:                ; preds = %_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE.exit159, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %19 = getelementptr inbounds nuw i8, ptr %i.io, i64 168 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 176 ; 2 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8
  %.not8.i.i162 = icmp eq i64 %i.iu, 0
  br i1 %.not8.i.i162, label %.critedge.i.i165, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit161, %bb.ds
  %i.iv = load atomic i8, ptr %19 seq_cst, align 8, !range !52, !noundef !53
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %.critedge.i.i165, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ix = call noundef i32 @sched_yield() #26     ; 0 uses
  %i.iy = load atomic i64, ptr %i.it acquire, align 8
  %.not.i.i164 = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i164, label %.critedge.i.i165, label %bb.dr, !llvm.loop !3

.critedge.i.i165:                                 ; preds = %bb.ds, %bb.dr, %_ZNSt14_Function_baseD2Ev.exit161
  %i.iz = load atomic i8, ptr %19 seq_cst, align 8, !range !52, !noundef !53
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.dt, label %_ZN13V3ThreadScope4waitEv.exit171

bb.dt:                                            ; preds = %.critedge.i.i165
  %i.jb = load ptr, ptr %i.io, align 8, !tbaa !59 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !59 ; 2 uses
  %.not710.i.i166 = icmp eq ptr %i.jb, %i.jd
  br i1 %.not710.i.i166, label %_ZN13V3ThreadScope4waitEv.exit171, label %.lr.ph12.i.i167

.lr.ph12.i.i167:                                  ; preds = %bb.dt, %.noexc170
  %.sroa.04.011.i.i168 = phi ptr [ %i.je, %.noexc170 ], [ %i.jb, %bb.dt ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i168)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %.lr.ph12.i.i167
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i168, i64 8 ; 2 uses
  %.not7.i.i169 = icmp eq ptr %i.je, %i.jd
  br i1 %.not7.i.i169, label %_ZN13V3ThreadScope4waitEv.exit171, label %.lr.ph12.i.i167

_ZN13V3ThreadScope4waitEv.exit171:                ; preds = %.noexc170, %bb.dt, %.critedge.i.i165
  %i.jf = load i32, ptr %i.b, align 4, !tbaa !46
  %.not37 = icmp eq i32 %i.jf, 1234
  br i1 %.not37, label %bb.ec, label %bb.du, !prof !54

bb.du:                                            ; preds = %_ZN13V3ThreadScope4waitEv.exit171
  %i.jg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 155)
          to label %bb.dv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.jh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.dw:                                            ; preds = %bb.dv
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.5, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %bb.dw
  %i.jj = load i32, ptr %i.b, align 4, !tbaa !46
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, i32 noundef %i.jj)
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.jk) #30
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %bb.dx
  unreachable

bb.dz:                                            ; preds = %bb.do
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = load ptr, ptr %i.il, align 8, !tbaa !64 ; 2 uses
  %.not.i174 = icmp eq ptr %i.jm, null
  br i1 %.not.i174, label %_ZNSt14_Function_baseD2Ev.exit175, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.jn = invoke noundef zeroext i1 %i.jm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit175 unwind label %bb.eb ; 0 uses

bb.eb:                                            ; preds = %bb.ea
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit175:                ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph12.i.i167, %bb.dw, %bb.dx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173, %bb.dv, %bb.du
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ec:                                            ; preds = %_ZN13V3ThreadScope4waitEv.exit171
  %i.jq = load ptr, ptr %14, align 8, !tbaa !87   ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.jq, i64 168 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 176 ; 2 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8
  %.not8.i.i.i176 = icmp eq i64 %i.js, 0
  br i1 %.not8.i.i.i176, label %.critedge.i.i.i179, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ee
  %i.jt = load atomic i8, ptr %20 seq_cst, align 8, !range !52, !noundef !53
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %.critedge.i.i.i179, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.jv = call noundef i32 @sched_yield() #26     ; 0 uses
  %i.jw = load atomic i64, ptr %i.jr acquire, align 8
  %.not.i.i.i178 = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i.i178, label %.critedge.i.i.i179, label %bb.ed, !llvm.loop !3

.critedge.i.i.i179:                               ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.jx = load atomic i8, ptr %20 seq_cst, align 8, !range !52, !noundef !53
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ef, label %_ZN13V3ThreadScopeD2Ev.exit185

bb.ef:                                            ; preds = %.critedge.i.i.i179
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !59 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !59 ; 2 uses
  %.not710.i.i.i180 = icmp eq ptr %i.jz, %i.kb
  br i1 %.not710.i.i.i180, label %_ZN13V3ThreadScopeD2Ev.exit185, label %.lr.ph12.i.i.i181

.lr.ph12.i.i.i181:                                ; preds = %bb.ef, %.noexc.i183
  %.sroa.04.011.i.i.i182 = phi ptr [ %i.kc, %.noexc.i183 ], [ %i.jz, %bb.ef ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i.i182)
          to label %.noexc.i183 unwind label %bb.eg

.noexc.i183:                                      ; preds = %.lr.ph12.i.i.i181
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i.i182, i64 8 ; 2 uses
  %.not7.i.i.i184 = icmp eq ptr %i.kc, %i.kb
  br i1 %.not7.i.i.i184, label %_ZN13V3ThreadScopeD2Ev.exit185, label %.lr.ph12.i.i.i181

bb.eg:                                            ; preds = %.lr.ph12.i.i.i181
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #28
  unreachable

_ZN13V3ThreadScopeD2Ev.exit185:                   ; preds = %.noexc.i183, %.critedge.i.i.i179, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit175
  %.pn38 = phi { ptr, i32 } [ %i.jl, %_ZNSt14_Function_baseD2Ev.exit175 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN13V3ThreadScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.split-lp, %.body139, %.loopexit.split-lp230
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.loopexit.split-lp230 ], [ %.pn38, %.loopexit.split-lp ], [ %.pn34, %.body139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %.pn40.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13V3ThreadScope7enqueueEOSt8functionIFvvEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87
  tail call void @_ZN12V3ThreadPool7enqueueEOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13V3ThreadScope4waitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %.not8.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.g = load atomic i64, ptr %i.b acquire, align 8
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !llvm.loop !3

.critedge.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.h = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN12V3ThreadPool4waitEv.exit

bb.d:                                             ; preds = %.critedge.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %.not710.i = icmp eq ptr %i.j, %i.l
  br i1 %.not710.i, label %_ZN12V3ThreadPool4waitEv.exit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %.lr.ph12.i
  %.sroa.04.011.i = phi ptr [ %i.m, %.lr.ph12.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i, i64 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i, label %_ZN12V3ThreadPool4waitEv.exit, label %.lr.ph12.i

_ZN12V3ThreadPool4waitEv.exit:                    ; preds = %.lr.ph12.i, %.critedge.i, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13V3ThreadScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.g = load atomic i64, ptr %i.b acquire, align 8
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b, !llvm.loop !3

.critedge.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.h = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN13V3ThreadScope4waitEv.exit

bb.d:                                             ; preds = %.critedge.i.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %.not710.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not710.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %.noexc
  %.sroa.04.011.i.i = phi ptr [ %i.m, %.noexc ], [ %i.j, %bb.d ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph12.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i, i64 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not7.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

_ZN13V3ThreadScope4waitEv.exit:                   ; preds = %.noexc, %bb.d, %.critedge.i.i
  ret void

bb.e:                                             ; preds = %.lr.ph12.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13V3ThreadScopeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !87
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 16), align 8, !tbaa !155 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 161) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.d) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !87
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8
  %.not8.i.i = icmp eq i64 %i.f, 0
  br i1 %.not8.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %i.g = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i32 @sched_yield() #26 ; 0 uses
  %i.j = load atomic i64, ptr %i.e acquire, align 8
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d, !llvm.loop !3

.critedge.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load atomic i8, ptr %1 seq_cst, align 8, !range !52, !noundef !53
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %_ZN13V3ThreadScope4waitEv.exit

bb.f:                                             ; preds = %.critedge.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %.not710.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not710.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.f, %.lr.ph12.i.i
  %.sroa.04.011.i.i = phi ptr [ %i.p, %.lr.ph12.i.i ], [ %i.m, %bb.f ] ; 2 uses
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.04.011.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i.i, i64 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not7.i.i, label %_ZN13V3ThreadScope4waitEv.exit, label %.lr.ph12.i.i

_ZN13V3ThreadScope4waitEv.exit:                   ; preds = %.lr.ph12.i.i, %.critedge.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Global11threadPoolpEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155
  ret ptr %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5mutexSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !45
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !207
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !207
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !46   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
end_hunk_0
