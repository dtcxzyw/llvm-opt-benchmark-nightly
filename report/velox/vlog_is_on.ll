inline.NumInlined: 156
inline.NumDeleted: 74
begin_hunk_0_@_ZN6google12SetVLOGLevelEPKci:bb.a
_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit: ; preds = %bb.a, %bb.b
  %.04658 = load ptr, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28 ; 2 uses
  %.not59 = icmp eq ptr %.04658, null
  br i1 %.not59, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i
  %i.f = trunc nuw i8 %.242 to i1
  br i1 %i.f, label %.loopexit, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit, %bb.i
  %.04662 = phi ptr [ %.046, %bb.i ], [ %.04658, %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit ] ; 7 uses
  %.061 = phi i32 [ %.2, %bb.i ], [ %i.a, %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit ] ; 3 uses
  %.04060 = phi i8 [ %.242, %bb.i ], [ 0, %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.04662, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 4 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %.04662, align 8, !tbaa !10
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %0, i64 %i.h)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = trunc nuw i8 %.04060 to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.04662, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.1 = phi i32 [ %.061, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.p, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.04662, i64 32
  store i32 %1, ptr %i.q, align 8, !tbaa !31
  br label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = trunc nuw i8 %.04060 to i1
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57
  %i.s = load ptr, ptr %.04662, align 8, !tbaa !10
  %i.t = tail call noundef zeroext i1 @_ZN6google24glog_internal_namespace_12SafeFNMatch_EPKcmS2_m(ptr noundef %i.s, i64 noundef %i.h, ptr noundef nonnull %0, i64 noundef %i.b)
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.04662, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57
  %.242 = phi i8 [ 1, %bb.f ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57 ], [ 1, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.f ], [ %.061, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread57 ], [ %i.v, %bb.h ], [ %.061, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04662, i64 40
  %.046 = load ptr, ptr %i.w, align 8, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %.046, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge.thread:                               ; preds = %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit, %._crit_edge
  %.0.lcssa74 = phi i32 [ %.2, %._crit_edge ], [ %i.a, %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit ] ; 2 uses
  %i.x = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %bb.j unwind label %bb.l       ; 7 uses

bb.j:                                             ; preds = %._crit_edge.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !30
  store i8 0, ptr %i.y, align 8, !tbaa !15
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %0, i64 noundef %i.aa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store i32 %1, ptr %i.ac, align 8, !tbaa !31
  %i.ad = load ptr, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !35
  store ptr %i.x, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28
  %.04365 = load ptr, ptr @_ZN6googleL16cached_site_listE, align 8, !tbaa !36 ; 2 uses
  %.not5266 = icmp eq ptr %.04365, null
  br i1 %.not5266, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.n
  %.04368 = phi ptr [ %.043, %bb.n ], [ %.04365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 5 uses
  %.04467 = phi ptr [ %.145, %bb.n ], [ @_ZN6googleL16cached_site_listE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04368, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.04368, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = tail call noundef zeroext i1 @_ZN6google24glog_internal_namespace_12SafeFNMatch_EPKcmS2_m(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef %i.ag, i64 noundef %i.ai)
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph69
  store ptr %i.ac, ptr %.04368, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %.04368, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  store ptr %i.al, ptr %.04467, align 8, !tbaa !36
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %._crit_edge.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN24glog_internal_namespace_9MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.am

bb.m:                                             ; preds = %.lr.ph69
  %i.an = getelementptr inbounds nuw i8, ptr %.04368, i64 24 ; 2 uses
  %.043.pre = load ptr, ptr %i.an, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.043 = phi ptr [ %i.al, %bb.k ], [ %.043.pre, %bb.m ] ; 2 uses
  %.145 = phi ptr [ %.04467, %bb.k ], [ %i.an, %bb.m ]
  %.not52 = icmp eq ptr %.043, null
  br i1 %.not52, label %.loopexit, label %.lr.ph69, !llvm.loop !44

.loopexit:                                        ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %._crit_edge
  %.0.lcssa75 = phi i32 [ %.2, %._crit_edge ], [ %.0.lcssa74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %.0.lcssa74, %bb.n ]
  %i.ao = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL12vmodule_lockE, i64 56), align 8, !tbaa !20, !range !23, !noundef !24
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit

bb.o:                                             ; preds = %.loopexit
  %i.aq = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(57) @_ZN6googleL12vmodule_lockE) #20
  %.not.i.i56 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i56, label %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @abort() #21
  unreachable

_ZN24glog_internal_namespace_9MutexLockD2Ev.exit: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ar = load ptr, ptr @_ZZN6google12SetVLOGLevelEPKciE8vlocal__, align 8, !tbaa !42 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit
  %i.at = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN6google12SetVLOGLevelEPKciE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.5, i32 noundef 1)
  br i1 %i.at, label %bb.s, label %bb.t

bb.r:                                             ; preds = %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  tail call void (i32, ptr, i32, ptr, ...) @_ZN6google8RawLog__EiPKciS1_z(i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 213, ptr noundef nonnull @.str.15, ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  ret i32 %.0.lcssa75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24glog_internal_namespace_9MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load volatile i8, ptr %i.b, align 8, !tbaa !20, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN24glog_internal_namespace_5Mutex6UnlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #20
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN24glog_internal_namespace_5Mutex6UnlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

_ZN24glog_internal_namespace_5Mutex6UnlockEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.glog_internal_namespace_::MutexLock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr @_ZN6googleL12vmodule_lockE, ptr %5, align 8, !tbaa !25
  %i.b = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL12vmodule_lockE, i64 56), align 8, !tbaa !20, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(57) @_ZN6googleL12vmodule_lockE) #20
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit: ; preds = %bb.a, %bb.b
  %.b = load i1, ptr @_ZN6googleL14inited_vmoduleE, align 1 ; 2 uses
  br i1 %.b, label %bb.s, label %bb.d

bb.d:                                             ; preds = %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit
  store i1 false, ptr @_ZN6googleL14inited_vmoduleE, align 1
  %i.e = load ptr, ptr @_ZN3fLS13FLAGS_vmoduleB5cxx11E, align 8, !tbaa !45, !nonnull !24, !align !47
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, %bb.d
  %.025.i = phi ptr [ null, %bb.d ], [ %.227.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ] ; 4 uses
  %.023.i = phi ptr [ null, %bb.d ], [ %.124.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ] ; 3 uses
  %.020.i = phi ptr [ %i.f, %bb.d ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ] ; 4 uses
  %i.i = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.020.i, i32 noundef 61) #22 ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.020.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 8 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !34
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %.noexc.i.i, label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !48

.noexc9.i.i:                                      ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %.noexc9.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23
          to label %.noexc49 unwind label %.loopexit51 ; 2 uses

.noexc49:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !10
  store i64 %i.l, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc49, %bb.f
  %i.r = phi ptr [ %i.q, %.noexc49 ], [ %i.g, %bb.f ] ; 3 uses
  switch i64 %i.l, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %.020.i, align 1, !tbaa !15
  store i8 %i.s, ptr %i.r, align 1, !tbaa !15
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.020.i, i64 %i.l, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  store i64 %i.l, ptr %i.h, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.t, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.u = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a) #20
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.w = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %bb.m unwind label %bb.o       ; 9 uses

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !30
  store i8 0, ptr %i.x, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.m
  %i.z = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !31
  %.not32.i = icmp eq ptr %.025.i, null
  br i1 %.not32.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.023.i, i64 40
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !35
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ad = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.p:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.k
  %.227.i = phi ptr [ %.025.i, %bb.k ], [ %.025.i, %bb.n ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %.124.i = phi ptr [ %.023.i, %bb.k ], [ %i.w, %bb.n ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %i.ah = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 44) #22 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ak = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.g
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i: ; preds = %bb.p
  %i.am = load i64, ptr %i.g, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.ai, label %bb.q, label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, %bb.e
  %.3.i = phi ptr [ %.227.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ], [ %.025.i, %bb.e ] ; 2 uses
  %.2.i = phi ptr [ %.124.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i ], [ %.023.i, %bb.e ]
  %.not33.i = icmp eq ptr %.3.i, null
  br i1 %.not33.i, label %_ZN6googleL16VLOG2InitializerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %.2.i, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !35
  store ptr %.3.i, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28
  br label %_ZN6googleL16VLOG2InitializerEv.exit

_ZN6googleL16VLOG2InitializerEv.exit:             ; preds = %bb.q, %bb.r
  store i1 true, ptr @_ZN6googleL14inited_vmoduleE, align 1
  br label %bb.s

.loopexit51:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc9.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZN6googleL16VLOG2InitializerEv.exit, %_ZN24glog_internal_namespace_9MutexLockC2EPNS_5MutexE.exit
  %i.aq = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #22 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = select i1 %.not, ptr %2, ptr %i.ar      ; 6 uses
  %i.at = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 46) #22 ; 2 uses
  %.not44 = icmp eq ptr %i.at, null
  br i1 %.not44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = phi i64 [ %i.aw, %bb.t ], [ %i.ax, %bb.u ] ; 5 uses
  %i.az = icmp ugt i64 %i.ay, 3
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = icmp ne i32 %i.bc, 1819175213
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = add i64 %i.ay, -4
  %spec.select = select i1 %i.bf, i64 %i.bg, i64 %i.ay
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.038 = phi i64 [ %i.ay, %bb.v ], [ %spec.select, %bb.w ] ; 2 uses
  %.053 = load ptr, ptr @_ZN6googleL12vmodule_listE, align 8, !tbaa !28 ; 2 uses
  %.not4554 = icmp eq ptr %.053, null
  br i1 %.not4554, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.055 = phi ptr [ %.0, %bb.z ], [ %.053, %bb.x ] ; 4 uses
  %i.bh = load ptr, ptr %.055, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !30
  %i.bk = call noundef zeroext i1 @_ZN6google24glog_internal_namespace_12SafeFNMatch_EPKcmS2_m(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull %i.as, i64 noundef %.038)
  br i1 %i.bk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.055, i64 32
  br label %.loopexit

bb.z:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 40
  %.0 = load ptr, ptr %i.bm, align 8, !tbaa !28   ; 2 uses
  %.not45 = icmp eq ptr %.0, null
  br i1 %.not45, label %.loopexit, label %.lr.ph, !llvm.loop !49

.loopexit:                                        ; preds = %bb.z, %bb.x, %bb.y
  %.040 = phi ptr [ %i.bl, %bb.y ], [ %1, %bb.x ], [ %1, %bb.z ] ; 3 uses
  br i1 %.b, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.loopexit
  store ptr %.040, ptr %0, align 8, !tbaa !42
  %i.bn = icmp eq ptr %.040, %1
  br i1 %i.bn, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %.not47 = icmp eq ptr %i.bp, null
  br i1 %.not47, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.as, ptr %i.bo, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.038, ptr %i.bq, align 8, !tbaa !41
  %i.br = load ptr, ptr @_ZN6googleL16cached_site_listE, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !43
  store ptr %0, ptr @_ZN6googleL16cached_site_listE, align 8, !tbaa !36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac, %.loopexit
  %i.bt = load i32, ptr %.040, align 4, !tbaa !3
  %i.bu = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL12vmodule_lockE, i64 56), align 8, !tbaa !20, !range !23, !noundef !24
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ae, label %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bw = call i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(57) @_ZN6googleL12vmodule_lockE) #20
  %.not.i.i50 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i50, label %_ZN24glog_internal_namespace_9MutexLockD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @abort() #21
  unreachable

_ZN24glog_internal_namespace_9MutexLockD2Ev.exit: ; preds = %bb.ad, %bb.ae
  %i.bx = icmp sge i32 %i.bt, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i1 %i.bx

.body:                                            ; preds = %.loopexit51, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit, %.loopexit51 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN24glog_internal_namespace_9MutexLockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8RawLog__EiPKciS1_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !50

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  store i8 %i.v, ptr %i.t, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !15
  store i8 %i.w, ptr %i.m, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.x = load ptr, ptr %0, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !15
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !48

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable
end_hunk_0
