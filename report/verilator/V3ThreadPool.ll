Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ThreadPool?download=true
inline.NumInlined: 796
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt3_V222condition_variable_any4waitI10V3MutexImpISt5mutexEEEvRT_:bb.a

_ZNSt11unique_lockISt5mutexED2Ev.exit15:          ; preds = %bb.q, %_ZNSt11unique_lockISt5mutexED2Ev.exit13
  %.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.am, %_ZNSt11unique_lockISt5mutexED2Ev.exit13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit15, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit15 ], [ %i.ak, %bb.p ]
  call void @_ZNSt12__shared_ptrISt5mutexLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn

bb.v:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit13
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #28
  unreachable
}

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3_V222condition_variable_any7_UnlockI10V3MutexImpISt5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #31
  %i.b = load ptr, ptr %0, align 8, !tbaa !287, !nonnull !53, !align !62 ; 6 uses
  %i.c = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i:      ; preds = %bb.b
  %i.e = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %.preheader.i, !prof !54

.preheader.i:                                     ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.c
  %.037.i = phi i32 [ %i.i, %bb.c ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i ]
  %i.f = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i:     ; preds = %.preheader.i
  %i.h = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i4.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i4.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %bb.c, !prof !55

bb.c:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.i = add nuw nsw i32 %.037.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.i, 50000
  br i1 %exitcond.not.i, label %bb.d, label %.preheader.i, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN10V3MutexImpISt5mutexE4lockEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTIN10__cxxabiv115__forced_unwindE
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = extractvalue { ptr, i32 } %i.j, 1
  %i.m = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN10__cxxabiv115__forced_unwindE) #26
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.k) #26 ; 0 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #30
          to label %bb.n unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @__cxa_end_catch()
  br label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.p

bb.j:                                             ; preds = %bb.a
  br i1 %i.d, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i5, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i5:     ; preds = %bb.j
  %i.q = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i.i6 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i6, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %.preheader.i7, !prof !54

.preheader.i7:                                    ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i5, %bb.k
  %.037.i8 = phi i32 [ %i.u, %bb.k ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i5 ]
  %i.r = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i9, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i9:    ; preds = %.preheader.i7
  %i.t = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i4.i10 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i4.i10, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit, label %bb.k, !prof !55

bb.k:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i9
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.u = add nuw nsw i32 %.037.i8, 1              ; 2 uses
  %exitcond.not.i11 = icmp eq i32 %i.u, 50000
  br i1 %exitcond.not.i11, label %bb.l, label %.preheader.i7, !llvm.loop !2

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %_ZN10V3MutexImpISt5mutexE4lockEv.exit

_ZN10V3MutexImpISt5mutexE4lockEv.exit:            ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i9, %.preheader.i7, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i, %.preheader.i, %bb.l, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i5, %bb.j, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i, %bb.b, %bb.d, %bb.g
  ret void

bb.m:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

bb.n:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZSt18uncaught_exceptionv() local_unnamed_addr #19

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #20

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !46
  tail call fastcc void @"_ZZN12V3ThreadPool8selfTestEvENK3$_0clEi"(ptr noundef nonnull readonly align 8 dereferenceable(20) %.val, i32 noundef %.val.i.i.i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEE", ptr %0, align 8, !tbaa !180
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %.val, ptr %0, align 8, !tbaa !85
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !85 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #29
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_0iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN12V3ThreadPool8selfTestEvENK3$_0clEi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = udiv i32 %1, 1000
  %.zext16 = zext nneg i32 %i.c to i64            ; 2 uses
  %.neg.i.i = mul nsw i64 %.zext16, -1000
  %i.d = add nsw i64 %.neg.i.i, %i.b
  %i.e = mul nuw nsw i64 %i.d, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 %.zext16, ptr %3, align 8, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !183
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = call i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %.critedge.i, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %bb.a, %.critedge.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !289, !nonnull !53, !align !62 ; 5 uses
  %i.m = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.o = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #26
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !54

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.e
  %.037.i.i = phi i32 [ %i.s, %bb.e ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.p = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.r = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #26
  %.not.i.i4.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.e, !prof !55

bb.e:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.s = add nuw nsw i32 %.037.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.s, 50000
  br i1 %exitcond.not.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.l)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290, !nonnull !53, !align !184
  store i32 10, ptr %i.u, align 4, !tbaa !46
  %i.v = icmp slt i32 %1, -9
  br i1 %i.v, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6.thread, label %bb.g

bb.g:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.w = add nsw i32 %1, 10                       ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = udiv i32 %i.w, 1000
  %.zext = zext nneg i32 %i.y to i64              ; 2 uses
  %.neg.i.i4 = mul nsw i64 %.zext, -1000
  %i.z = add nsw i64 %.neg.i.i4, %i.x
  %i.aa = mul nuw nsw i64 %i.z, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %.zext, ptr %2, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !183
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ac = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.i, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6

bb.i:                                             ; preds = %.noexc
  %i.ae = tail call ptr @__errno_location() #32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %bb.h, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6, !llvm.loop !7

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6: ; preds = %.noexc, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !290
  %.pre17 = load i32, ptr %.pre, align 4, !tbaa !46
  %i.ah = icmp eq i32 %.pre17, 10
  br i1 %i.ah, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6.thread, label %bb.j, !prof !291

bb.j:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6
  %i.ai = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 102)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.11, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.l
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !290, !nonnull !53, !align !184
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef %i.am)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #30
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.l, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.k, %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6.thread: ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6
  %i.aq = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

bb.q:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6.thread
  %i.as = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit: ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit6.thread, %bb.q
  ret void

bb.r:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ao, %bb.o ]
  %i.at = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit8

bb.s:                                             ; preds = %bb.r
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit8

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit8: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !89    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !46 ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !293, !nonnull !53, !align !62 ; 3 uses
  %i.c = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, !prof !54

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %.037.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i ]
  %i.f = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.h = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i4.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i4.i.i.i.i.i.i.i.i, label %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i, label %bb.b, !prof !55

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.i = add nuw nsw i32 %.037.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 50000
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %bb.c, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %bb.c, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.j = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  %.pre5.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !293 ; 2 uses
  br i1 %i.k, label %_ZN10V3MutexImpISt5mutexE6unlockEv.exit.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE6unlockEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.pre5.i.i.i.i.i.i.i) #26 ; 0 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !293 ; 8 uses
  %.pre6.i.i.i.i.i.i.i = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52
  %i.m = trunc nuw i8 %.pre6.i.i.i.i.i.i.i to i1
  br i1 %i.m, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE6unlockEv.exit.i.i.i.i.i.i.i
  %i.n = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i.i.i.i.i) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, !prof !54

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %.037.i.i.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.o = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.q = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i.i.i.i.i) #26
  %.not.i.i4.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i4.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i, label %bb.d, !prof !55

bb.d:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.r = add nuw nsw i32 %.037.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 50000
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i.i.i.i.i)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %bb.e, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE6unlockEv.exit.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i
  %i.s = phi ptr [ %.pre5.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE4lockEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.e ], [ %.pre.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE6unlockEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = icmp slt i32 %.val.i.i.i.i, 1
  br i1 %i.t, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i
  %i.u = zext nneg i32 %.val.i.i.i.i to i64
  %i.v = udiv i32 %.val.i.i.i.i, 1000
  %.zext.i.i.i.i.i.i.i = zext nneg i32 %i.v to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i.i.i.i, -1000
  %i.w = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i, %i.u
  %i.x = mul nuw nsw i64 %i.w, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i64 %.zext.i.i.i.i.i.i.i, ptr %1, align 8, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !183
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.z = invoke i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.h, label %.critedge.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.ab = tail call ptr @__errno_location() #32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !46
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %bb.g, label %.critedge.i.i.i.i.i.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.h, %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !294, !nonnull !53, !align !184
  store i32 1000, ptr %i.af, align 4, !tbaa !46
  %i.ag = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

bb.i:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #26 ; 0 uses
  br label %"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit2.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.am = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.s) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit2.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit2.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.aj

"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEE", ptr %0, align 8, !tbaa !180
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !89
  store ptr %.val, ptr %0, align 8, !tbaa !89
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !89
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !89 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #29
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_1iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !91    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !46 ; 4 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !296, !nonnull !53, !align !62 ; 5 uses
  %i.c = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i, !prof !54

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %.037.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.f = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.h = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26
  %.not.i.i4.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i4.i.i.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i, label %bb.b, !prof !55

bb.b:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.i = add nuw nsw i32 %.037.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 50000
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %bb.c, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i.i.i.i.i.i.i.i, %bb.a
  %i.j = icmp slt i32 %.val.i.i.i.i, 1
  br i1 %i.j, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i
  %i.k = zext nneg i32 %.val.i.i.i.i to i64
  %i.l = udiv i32 %.val.i.i.i.i, 1000
  %.zext.i.i.i.i.i.i.i = zext nneg i32 %i.l to i64 ; 2 uses
  %.neg.i.i.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i.i.i.i, -1000
  %i.m = add nsw i64 %.neg.i.i.i.i.i.i.i.i.i, %i.k
  %i.n = mul nuw nsw i64 %i.m, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i64 %.zext.i.i.i.i.i.i.i, ptr %1, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !183
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.p = invoke i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.e
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %.critedge.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.r = tail call ptr @__errno_location() #32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.e, label %.critedge.i.i.i.i.i.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit.i.i.i.i.i.i.i
  %i.u = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !297, !nonnull !53, !align !62
  call fastcc void @"_ZZN12V3ThreadPool8selfTestEvENK3$_0clEi"(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %.val.i.i.i.i)
  %i.z = load ptr, ptr %.val, align 8, !tbaa !296, !nonnull !53, !align !62 ; 4 uses
  %i.aa = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i2.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i2.i.i.i.i.i.i.i: ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit.i.i.i.i.i.i.i
  %i.ac = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26
  %.not.i.i.i.i3.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i, label %.preheader.i.i4.i.i.i.i.i.i.i, !prof !54

.preheader.i.i4.i.i.i.i.i.i.i:                    ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i2.i.i.i.i.i.i.i, %bb.h
  %.037.i.i5.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.h ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i2.i.i.i.i.i.i.i ]
  %i.ad = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i6.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i6.i.i.i.i.i.i.i: ; preds = %.preheader.i.i4.i.i.i.i.i.i.i
  %i.af = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26
  %.not.i.i4.i.i7.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i4.i.i7.i.i.i.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i, label %bb.h, !prof !55

bb.h:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i6.i.i.i.i.i.i.i
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !56
  %i.ag = add nuw nsw i32 %.037.i.i5.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i8.i.i.i.i.i.i.i = icmp eq i32 %i.ag, 50000
  br i1 %exitcond.not.i.i8.i.i.i.i.i.i.i, label %bb.i, label %.preheader.i.i4.i.i.i.i.i.i.i, !llvm.loop !2

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i: ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i6.i.i.i.i.i.i.i, %.preheader.i.i4.i.i.i.i.i.i.i, %bb.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i2.i.i.i.i.i.i.i, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !298, !nonnull !53, !align !184
  store i32 100, ptr %i.ai, align 4, !tbaa !46
  %i.aj = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

bb.j:                                             ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26 ; 0 uses
  br label %"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

bb.k:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit11.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #26 ; 0 uses
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit11.i.i.i.i.i.i.i

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.am

"_ZSt10__invoke_rIvRSt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit9.i.i.i.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvESt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEE", ptr %0, align 8, !tbaa !180
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !91
  store ptr %.val, ptr %0, align 8, !tbaa !91
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val6, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !91
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !91 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerISt5_BindIFZN12V3ThreadPool8selfTestEvE3$_2iEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN12V3ThreadPool8selfTestEvE3$_3E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #22 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !300
  store i32 1234, ptr %.val, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN12V3ThreadPool8selfTestEvE3$_3", ptr %0, align 8, !tbaa !180
  br label %"_ZNSt14_Function_base13_Base_managerIZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !83
  store i64 %.val.i, ptr %0, align 8, !tbaa !83
  br label %"_ZNSt14_Function_base13_Base_managerIZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12V3ThreadPool8selfTestEvE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
end_hunk_0
