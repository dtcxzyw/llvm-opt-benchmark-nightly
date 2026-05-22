inline.NumInlined: 647
inline.NumDeleted: 375
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #24, !inline_history !163
  br label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !144
  %.not.i.i.i2.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i2.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8.i

bb.aj:                                            ; preds = %bb.ah
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i9.i = phi i32 [ %i.dj, %bb.ai ], [ %i.dt, %bb.aj ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i9.i, 1
  br i1 %i.du, label %bb.ak, label %bb.an, !prof !44

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #24
  br label %bb.an

bb.al:                                            ; preds = %_ZN5arrow9StopTokenC2ERKS0_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i

bb.am:                                            ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %6, align 8, !tbaa !157, !noalias !144 ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i10.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i11.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i11.i: ; preds = %bb.am
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #24, !inline_history !158
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i11.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !144
  call void @_ZN5arrow9StopTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  %i.eb = load ptr, ptr %3, align 8, !tbaa !149, !noalias !144 ; 3 uses
  %.not.i.i13.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i13.i, label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i14.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i14.i: ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eb) #24, !inline_history !160
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i:     ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i14.i, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i, %bb.al
  %.pn.i = phi { ptr, i32 } [ %i.dv, %bb.al ], [ %i.dw, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit12.i ], [ %i.dw, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i14.i ]
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #24
  br label %.body

bb.an:                                            ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8.i, %bb.ag, %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ef = load ptr, ptr %9, align 8, !tbaa !17
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN5arrow9StopTokenD2Ev.exit.i30, label %bb.ao, !prof !72

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ei = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.eh) #24 ; 2 uses
  %.not.i.i.i15 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i15, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i16, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ei) #25
          to label %.noexc20 unwind label %bb.ar

.noexc20:                                         ; preds = %bb.ap
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i16:      ; preds = %bb.ao
  store atomic i8 0, ptr %i.v release, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !17
  %i.el = icmp ne ptr %i.ek, null
  %i.em = load ptr, ptr %9, align 8               ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  %or.cond.i.i17 = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond.i.i17, label %bb.aq, label %_ZN5arrow6Status8MoveFromERS0_.exit.i.i18

_ZN5arrow6Status8MoveFromERS0_.exit.i.i18:        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i16
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !17
  store ptr null, ptr %9, align 8, !tbaa !17
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5arrow6Status8MoveFromERS0_.exit.i.i18, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i16
  %i.eo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.eh) #24 ; 0 uses
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup11OneTaskDoneEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.au unwind label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eq = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %.not.i22 = icmp eq ptr %i.eq, null
  br i1 %.not.i22, label %.body, label %bb.as, !prof !72

bb.as:                                            ; preds = %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !73, !range !70, !noundef !71
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %.body, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %.body

bb.au:                                            ; preds = %bb.aq
  %.pr39 = load ptr, ptr %9, align 8, !tbaa !17   ; 2 uses
  %.not.i24 = icmp eq ptr %.pr39, null
  br i1 %.not.i24, label %_ZN5arrow9StopTokenD2Ev.exit.i30, label %bb.av, !prof !137

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %.pr39, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !73, !range !70, !noundef !71
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZN5arrow9StopTokenD2Ev.exit.i30, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #24
  br label %_ZN5arrow9StopTokenD2Ev.exit.i30

_ZN5arrow9StopTokenD2Ev.exit.i30:                 ; preds = %bb.an, %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ex = load ptr, ptr %i.am, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i31, label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i30
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ex) #24, !inline_history !164
  br label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ax

.body:                                            ; preds = %bb.at, %bb.as, %bb.ar, %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit15.i ], [ %i.ep, %bb.at ], [ %i.ep, %bb.ar ], [ %i.ep, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call fastcc void @_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr null) #24
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN5arrow6StatusD2Ev.exit
  ret void

bb.ay:                                            ; preds = %.body, %_ZN5arrow6StatusD2Ev.exit10
  %.pn6 = phi { ptr, i32 } [ %i.q, %_ZN5arrow6StatusD2Ev.exit10 ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #16

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #16

declare void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.14") align 8) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup11OneTaskDoneEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = atomicrmw sub ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #25
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load i8, ptr %i.h, align 8, !tbaa !64, !range !70, !noundef !71
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load atomic i8, ptr %i.l seq_cst, align 1
  %.not = icmp eq i8 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %.not, label %bb.e, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.p = load atomic i8, ptr %i.o seq_cst, align 1, !range !70, !noundef !71
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16, label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.e
  store atomic i8 1, ptr %i.o seq_cst, align 1
  %i.r = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  store ptr null, ptr %1, align 8, !tbaa !17
  call void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %.not.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i11, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !73, !range !70, !noundef !71
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.i:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %.not.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i12, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !73, !range !70, !noundef !71
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit16:     ; preds = %bb.d, %bb.e
  %2 = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.k, %bb.j, %bb.i
  resume { ptr, i32 } %i.w

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ab = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16, %_ZN5arrow6StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_D2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !36
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !43
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !43
  br label %_ZN5arrow9StopTokenD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow9StopTokenD2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN5arrow9StopTokenD2Ev.exit

_ZN5arrow9StopTokenD2Ev.exit:                     ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !88   ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #24, !inline_history !165
  br label %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit

_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit: ; preds = %_ZN5arrow9StopTokenD2Ev.exit, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplEEclEPS6_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !13  ; 8 uses
  %.not.i.i1 = icmp eq ptr %.val, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !36
  %i.ac = load ptr, ptr %.val, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !166
  %i.af = load ptr, ptr %.val, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !166
  br label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24
  br label %_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !36
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !109
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !109
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_ED2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_0
