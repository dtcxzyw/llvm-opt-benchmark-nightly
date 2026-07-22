inline.NumInlined: 1333
inline.NumDeleted: 686
begin_hunk_0_@_ZN5arrow8internal14SerialExecutor10IsFinishedEv:bb.a
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14SerialExecutor7UnpauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.m = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.m) #33
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10shared_ptrIN5arrow8internal14SerialExecutor5StateEEC2ERKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store i8 0, ptr %i.n, align 8, !tbaa !18
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #32 ; 0 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34   ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !14
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #32, !inline_history !43
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #32, !inline_history !43
  br label %_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i3 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #32
  br label %_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.l:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8internal14SerialExecutor5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow8internal14SerialExecutor14OwnsThisThreadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #33
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.e = tail call i64 @pthread_self() #35
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8, !tbaa !105
  %i.h = icmp eq i64 %i.e, %.sroa.0.0.copyload
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #32 ; 0 uses
  ret i1 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14SerialExecutor7RunLoopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 10 uses
  %2 = alloca %"struct.arrow::internal::(anonymous namespace)::Task", align 8 ; 11 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #32 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #33
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !109
  %i.f = tail call i64 @pthread_self() #35
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 %i.f, ptr %i.h, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.j = load i8, ptr %i.i, align 8, !tbaa !18, !range !48, !noundef !49
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge.thread, label %.lr.ph58

.critedge.thread:                                 ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 0, ptr %i.l, align 8, !tbaa !105
  br label %bb.ae

.lr.ph58:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph58, %"_ZNSt18condition_variable4waitIZN5arrow8internal14SerialExecutor7RunLoopEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit"
  %i.p = phi ptr [ %i.g, %.lr.ph58 ], [ %i.dh, %"_ZNSt18condition_variable4waitIZN5arrow8internal14SerialExecutor7RunLoopEvE3$_0EEvRSt11unique_lockISt5mutexET_.exit" ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 137
  %i.r = load i8, ptr %i.q, align 1, !tbaa !33, !range !48, !noundef !49
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %.val16 = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %.val17 = load ptr, ptr %i.t, align 8, !tbaa !42
  %.not = icmp eq ptr %.val16, %.val17
  br i1 %.not, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit
  %i.u = phi ptr [ %i.cu, %_ZN5arrow8internal12_GLOBAL__N_14TaskD2Ev.exit ], [ %i.p, %.lr.ph.preheader ] ; 5 uses
  %.val = load ptr, ptr %i.u, align 8, !tbaa !42  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val15 = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.w = icmp eq ptr %.val, %.val15
  br i1 %i.w, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.x = load i64, ptr %.val, align 8, !tbaa !50
  store i64 %i.x, ptr %2, align 8, !tbaa !50
  store ptr null, ptr %.val, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !tbaa !52
  store ptr null, ptr %i.z, align 8, !tbaa !34
  store <2 x ptr> %i.aa, ptr %i.m, align 8, !tbaa !52
  store ptr null, ptr %i.y, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !56
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !56
  store ptr null, ptr %i.ab, align 8, !tbaa !56
  call fastcc void @_ZNSt14priority_queueIN5arrow8internal12_GLOBAL__N_110QueuedTaskESt6vectorIS3_SaIS3_EESt4lessIS3_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %i.u)
  %i.ad = load i8, ptr %i.d, align 8, !tbaa !109, !range !48, !noundef !49
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.v, %bb.u, %bb.t
  %i.af = phi i32 [ %i.bv, %bb.v ], [ 35, %bb.u ], [ 1, %bb.t ], [ 1, %bb.e ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.af) #33
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #32 ; 0 uses
  store i8 0, ptr %i.d, align 8, !tbaa !109
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.g, %bb.f
  %i.ai = invoke noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  br i1 %i.ai, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %2, align 8, !tbaa !50
  %i.ak = inttoptr i64 %i.aj to ptr               ; 6 uses
  store ptr null, ptr %2, align 8, !tbaa !50
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvvEE4ImplESt14default_deleteIS5_EED2Ev.exit4.i: ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #32, !inline_history !110
  br label %.body

_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit:        ; preds = %bb.i
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #32, !inline_history !110
  br label %bb.t

bb.j:                                             ; preds = %bb.ad
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !56
  %.not.i.i.not = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNK5arrow9StopToken4PollEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.o, align 8, !tbaa !56
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  store ptr null, ptr %i.o, align 8, !tbaa !56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.n unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i: ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #32, !inline_history !111
  %i.bg = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i22 = icmp eq ptr %i.bg, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.r, !prof !112

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #32, !inline_history !111
  %i.bk = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %.not.i21 = icmp eq ptr %i.bk, null
  br i1 %.not.i21, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o, !prof !112

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !113, !range !48, !noundef !49
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.t

bb.q:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit23

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !113, !range !48, !noundef !49
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.s, %bb.r, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %i.bc, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i ], [ %i.bc, %bb.r ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body

bb.t:                                             ; preds = %_ZNO5arrow8internal6FnOnceIFvvEEclEv.exit, %bb.k, %_ZN5arrow6StatusD2Ev.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %.not.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i24, label %.invoke, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = load i8, ptr %i.d, align 8, !tbaa !109, !range !48, !noundef !49
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bs) #32 ; 2 uses
  %.not.i.i25 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i25, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.d, align 8, !tbaa !109
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !56  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i29, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %bb.w
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #32, !inline_history !102
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i, %bb.w
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !34  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9StopTokenD2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cb, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !14
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #32, !inline_history !103
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #32, !inline_history !103
end_hunk_0
