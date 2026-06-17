inline.NumInlined: 1276
inline.NumDeleted: 517
begin_hunk_0_@_ZNK5boost6thread8joinableEv:bb.a
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit unwind label %bb.e, !inline_history !41

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #36
  unreachable

_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i.i, %bb.d
  %i.s = icmp ne ptr %i.a, null
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost6thread6detachEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::lock_error", align 8 ; 5 uses
  %2 = alloca %"class.boost::shared_ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !89
  store ptr %i.a, ptr %2, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !38   ; 8 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !38
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost10lock_guardINS_5mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #33 ; 2 uses
  switch i32 %i.f, label %bb.d [
    i32 4, label %bb.c
    i32 0, label %_ZN5boost10lock_guardINS_5mutexEEC2ERS1_.exit
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  invoke void @_ZN5boost10lock_errorC2EiPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.f, ptr noundef nonnull @.str.32)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5boost15throw_exceptionINS_10lock_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %1) #34
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.body

_ZN5boost10lock_guardINS_5mutexEEC2ERS1_.exit:    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 177 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96, !range !64, !noundef !65
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.g, %_ZN5boost10lock_guardINS_5mutexEEC2ERS1_.exit
  br label %bb.i

bb.g:                                             ; preds = %_ZN5boost10lock_guardINS_5mutexEEC2ERS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !103
  %i.m = tail call i32 @pthread_detach(i64 noundef %i.l) #33 ; 0 uses
  store i8 1, ptr %i.h, align 1, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  store i8 1, ptr %i.n, align 2, !tbaa !97
  br label %.preheader

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.g, %bb.f ]
  call void @_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.preheader, %bb.i
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #33
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %bb.i, label %_ZN5boost10lock_guardINS_5mutexEED2Ev.exit, !llvm.loop !30

_ZN5boost10lock_guardINS_5mutexEED2Ev.exit:       ; preds = %bb.i, %bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost10lock_guardINS_5mutexEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.k, label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc.i.i unwind label %bb.m, !inline_history !41

.noexc.i.i:                                       ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.l, label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit

bb.l:                                             ; preds = %.noexc.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit unwind label %bb.m, !inline_history !41

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #36
  unreachable

_ZN5boost10shared_ptrINS_6detail16thread_data_baseEED2Ev.exit: ; preds = %_ZN5boost10lock_guardINS_5mutexEED2Ev.exit, %bb.j, %.noexc.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5boost11this_thread21no_interruption_point6hidden18sleep_for_internalERKNS_6detail17platform_durationE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !115
  %i.b = mul nsw i64 %i.a, 1000000000
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !117
  %i.e = add nsw i64 %i.b, %i.d
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @nanosleep(ptr noundef nonnull %0, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost11this_thread5yieldEv() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @sched_yield() #33         ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, -2147483648) i32 @_ZN5boost6thread20hardware_concurrencyEv() local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 84) #33
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  ret i32 %i.c
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5boost6thread20physical_concurrencyEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::basic_ifstream", align 8 ; 9 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"struct.std::pair.27", align 4     ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #33
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull @.str, i32 noundef 8)
          to label %._crit_edge.i.i unwind label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 11, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 7, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.f, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 0, ptr %4, align 4, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !19
  store i8 0, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer.backedge295, %._crit_edge.i.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !20
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !125 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !140
  %.not.i1.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
          to label %.noexc24 unwind label %.loopexit105

.noexc24:                                         ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit105, !inline_history !146

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc24, %bb.d
  %.0.i.i.i = phi i8 [ %i.af, %bb.d ], [ %i.aj, %.noexc24 ]
  %i.ak = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %.0.i.i.i)
          to label %bb.f unwind label %.loopexit105 ; 2 uses

bb.f:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !147
  %i.ar = and i32 %i.aq, 5
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.g, label %bb.as

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.n, align 8, !tbaa !19  ; 6 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.outer.backedge295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

.outer.backedge295:                               ; preds = %bb.g, %.outer.backedge
  br label %bb.b, !llvm.loop !148

bb.h:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

.loopexit105:                                     ; preds = %bb.e, %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %bb.g
  %i.av = load ptr, ptr %5, align 8, !tbaa !15    ; 5 uses
  %i.aw = call ptr @memchr(ptr noundef %i.av, i32 noundef 58, i64 noundef %i.as) #33 ; 2 uses
  %.not.i27 = icmp eq ptr %i.aw, null
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, -1
  %i.bb = or i1 %.not.i27, %i.ba
  br i1 %i.bb, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  %i.bc = call i64 @sysconf(i32 noundef 84) #33
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  br label %.loopexit116

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %i.o, ptr %6, align 8, !tbaa !10, !alias.scope !149
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %i.as) ; 8 uses
  %i.bf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bf, label %bb.j, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.bg, label %.noexc10.i.i, label %bb.k

.noexc10.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #34
          to label %.noexc28 unwind label %.loopexit.split-lp107

.noexc28:                                         ; preds = %.noexc10.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bh = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !14

.noexc11.i.i:                                     ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc29 unwind label %.loopexit.split-lp107

.noexc29:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.k
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #35
          to label %.noexc30 unwind label %.loopexit106 ; 2 uses

.noexc30:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.bj, ptr %6, align 8, !tbaa !15, !alias.scope !149
  store i64 %spec.select.i.i.i, ptr %i.o, align 8, !tbaa !18, !alias.scope !149
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc30, %bb.i
  %i.bk = phi ptr [ %i.bj, %.noexc30 ], [ %i.o, %bb.i ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bl = load i8, ptr %i.av, align 1, !tbaa !18
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.av, i64 %spec.select.i.i.i, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  store i64 %spec.select.i.i.i, ptr %i.p, align 8, !tbaa !19, !alias.scope !149
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %spec.select.i.i.i
  store i8 0, ptr %i.bm, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.bn = add nuw i64 %i.az, 1                    ; 3 uses
  %.not103 = icmp ult i64 %i.az, %i.as
  br i1 %.not103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.34, i64 noundef %i.bn, i64 noundef %i.as) #34
          to label %.noexc36 unwind label %.loopexit.split-lp112

.noexc36:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.n
  store ptr %i.q, ptr %7, align 8, !tbaa !10, !alias.scope !152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bn ; 2 uses
  %i.bp = sub nuw i64 %i.as, %i.bn                ; 8 uses
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %bb.p, label %._crit_edge.i.i.i32

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.br = icmp slt i64 %i.bp, 0
  br i1 %i.br, label %.noexc10.i.i35, label %bb.q

.noexc10.i.i35:                                   ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #34
          to label %.noexc37 unwind label %.loopexit.split-lp112

.noexc37:                                         ; preds = %.noexc10.i.i35
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bs = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %.noexc11.i.i34, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i33, !prof !14

.noexc11.i.i34:                                   ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc38 unwind label %.loopexit.split-lp112

.noexc38:                                         ; preds = %.noexc11.i.i34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i33: ; preds = %bb.q
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #35
          to label %.noexc39 unwind label %.loopexit111 ; 2 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i33
  store ptr %i.bu, ptr %7, align 8, !tbaa !15, !alias.scope !152
  store i64 %i.bp, ptr %i.q, align 8, !tbaa !18, !alias.scope !152
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bv = phi ptr [ %i.bu, %.noexc39 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.bp, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i32
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !18
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !18
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i32
  store i64 %i.bp, ptr %i.r, align 8, !tbaa !19, !alias.scope !152
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp
  store i8 0, ptr %i.bx, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.by = load ptr, ptr %6, align 8, !tbaa !15    ; 6 uses
  %i.bz = icmp eq ptr %i.by, %i.o
  %i.ca = load ptr, ptr %8, align 8, !tbaa !15    ; 5 uses
  %i.cb = icmp eq ptr %i.ca, %i.s                 ; 2 uses
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.u
  br i1 %i.cb, label %bb.v, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.u
  br i1 %i.cb, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cc = load i64, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 16
  call void @llvm.assume(i1 %i.cd)
  switch i64 %i.cc, label %bb.x [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !18
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.ca, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cf = load i64, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  store i64 %i.cf, ptr %i.p, align 8, !tbaa !19
  %i.cg = load ptr, ptr %6, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ca, ptr %6, align 8, !tbaa !15
  %i.ci = load <2 x i64>, ptr %i.t, align 8, !tbaa !18
  store <2 x i64> %i.ci, ptr %i.p, align 8, !tbaa !18
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cj = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.ca, ptr %6, align 8, !tbaa !15
  %i.ck = load <2 x i64>, ptr %i.t, align 8, !tbaa !18
  store <2 x i64> %i.ck, ptr %i.p, align 8, !tbaa !18
  %.not.i41 = icmp eq ptr %i.by, null
  br i1 %.not.i41, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.by, ptr %8, align 8, !tbaa !15
  store i64 %i.cj, ptr %i.s, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %8, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.cl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.by, %bb.y ], [ %i.s, %bb.z ]
  store i64 0, ptr %i.t, align 8, !tbaa !19
  store i8 0, ptr %i.cl, align 1, !tbaa !18
  %i.cm = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.s
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.co = load i64, ptr %i.s, align 8, !tbaa !18
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  invoke void @_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load ptr, ptr %7, align 8, !tbaa !15    ; 6 uses
  %i.cr = icmp eq ptr %i.cq, %i.q
  %i.cs = load ptr, ptr %9, align 8, !tbaa !15    ; 5 uses
  %i.ct = icmp eq ptr %i.cs, %i.u                 ; 2 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47: ; preds = %bb.aa
  br i1 %i.ct, label %bb.ab, label %.thread.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i42: ; preds = %bb.aa
  br i1 %i.ct, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i43

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47
  %i.cu = load i64, ptr %i.v, align 8, !tbaa !19  ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  switch i64 %i.cu, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !18
  store i8 %i.cw, ptr %i.cq, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cs, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.cx = load i64, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  store i64 %i.cx, ptr %i.r, align 8, !tbaa !19
  %i.cy = load ptr, ptr %7, align 8, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !18
  %.pre.i46 = load ptr, ptr %9, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

.thread.i48:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i47
  store ptr %i.cs, ptr %7, align 8, !tbaa !15
  %i.da = load <2 x i64>, ptr %i.v, align 8, !tbaa !18
  store <2 x i64> %i.da, ptr %i.r, align 8, !tbaa !18
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i42
  %i.db = load i64, ptr %i.q, align 8, !tbaa !18
  store ptr %i.cs, ptr %7, align 8, !tbaa !15
  %i.dc = load <2 x i64>, ptr %i.v, align 8, !tbaa !18
  store <2 x i64> %i.dc, ptr %i.r, align 8, !tbaa !18
  %.not.i44 = icmp eq ptr %i.cq, null
  br i1 %.not.i44, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i43
  store ptr %i.cq, ptr %9, align 8, !tbaa !15
  store i64 %i.db, ptr %i.u, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i43, %.thread.i48
  store ptr %i.u, ptr %9, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45, %bb.ae, %bb.af
  %i.dd = phi ptr [ %.pre.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i45 ], [ %i.cq, %bb.ae ], [ %i.u, %bb.af ]
  store i64 0, ptr %i.v, align 8, !tbaa !19
  store i8 0, ptr %i.dd, align 1, !tbaa !18
  %i.de = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.u
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49
  %i.dg = load i64, ptr %i.u, align 8, !tbaa !18
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.di = load i64, ptr %i.p, align 8, !tbaa !19  ; 6 uses
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !19
  %i.dk = icmp eq i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread97

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.dl = icmp eq i64 %i.di, 0
  br i1 %i.dl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ag
  %i.dm = load ptr, ptr %1, align 8, !tbaa !15
  %i.dn = load ptr, ptr %6, align 8, !tbaa !15
  %bcmp.i = call i32 @bcmp(ptr %i.dn, ptr %i.dm, i64 %i.di)
  %i.do = icmp eq i32 %bcmp.i, 0
  br i1 %i.do, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.dp = load i64, ptr %i.r, align 8, !tbaa !19
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.loopexit104, label %bb.ah

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dr = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !18  ; 2 uses
  %.not32.i = icmp eq i8 %i.ds, 0
  br i1 %.not32.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %bb.aj
  %i.dt = phi i8 [ %i.ee, %bb.aj ], [ %i.ds, %bb.ah ] ; 3 uses
  %.02133.i = phi ptr [ %i.ed, %bb.aj ], [ %i.dr, %bb.ah ]
  %i.du = phi i32 [ %i.ec, %bb.aj ], [ 0, %bb.ah ] ; 3 uses
  %i.dv = zext i8 %i.dt to i32
  %i.dw = add i8 %i.dt, -58
  %or.cond.i = icmp ult i8 %i.dw, -10
  %i.dx = icmp ugt i32 %i.du, 429496729
  %or.cond40.i = select i1 %or.cond.i, i1 true, i1 %i.dx
  br i1 %or.cond40.i, label %.loopexit104, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.dy = icmp ne i32 %i.du, 429496729
  %i.dz = icmp samesign ult i8 %i.dt, 54
  %or.cond4.not.i = or i1 %i.dz, %i.dy
  br i1 %or.cond4.not.i, label %bb.aj, label %.loopexit104

bb.aj:                                            ; preds = %bb.ai
  %i.ea = add nsw i32 %i.dv, -48
  %i.eb = mul nuw i32 %i.du, 10
  %i.ec = add i32 %i.ea, %i.eb                    ; 2 uses
  store i32 %i.ec, ptr %4, align 4, !tbaa !3
  %i.ed = getelementptr inbounds nuw i8, ptr %.02133.i, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18  ; 2 uses
  %.not.i53 = icmp eq i8 %i.ee, 0
  br i1 %.not.i53, label %.loopexit, label %.lr.ph.i, !llvm.loop !155

.loopexit:                                        ; preds = %bb.aj, %bb.ah
  br label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a, !llvm.loop !148

.loopexit106:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit.split-lp107:                            ; preds = %.noexc10.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit111:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i33
  %lpad.loopexit113 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

.loopexit.split-lp112:                            ; preds = %bb.o, %.noexc10.i.i35, %.noexc11.i.i34
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.ak:                                            ; preds = %bb.t
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ar

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ar

bb.am:                                            ; preds = %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ar

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !19
  %i.ej = icmp eq i64 %i.di, %i.ei
  br i1 %i.ej, label %bb.an, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread97
  %i.ek = icmp eq i64 %i.di, 0
  br i1 %i.ek, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55: ; preds = %bb.an
  %i.el = load ptr, ptr %2, align 8, !tbaa !15
  %i.em = load ptr, ptr %6, align 8, !tbaa !15
  %bcmp.i54 = call i32 @bcmp(ptr %i.em, ptr %i.el, i64 %i.di)
  %i.en = icmp eq i32 %bcmp.i54, 0
  br i1 %i.en, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55.thread, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55.thread: ; preds = %bb.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55
  store i32 0, ptr %i.l, align 4, !tbaa !3
  %i.eo = load i64, ptr %i.r, align 8, !tbaa !19
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.loopexit104, label %bb.ao

bb.ao:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55.thread
  %i.eq = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18  ; 2 uses
  %.not32.i56 = icmp eq i8 %i.er, 0
  br i1 %.not32.i56, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.ao, %bb.aq
  %i.es = phi i8 [ %i.fd, %bb.aq ], [ %i.er, %bb.ao ] ; 3 uses
  %.02133.i58 = phi ptr [ %i.fc, %bb.aq ], [ %i.eq, %bb.ao ]
  %i.et = phi i32 [ %i.fb, %bb.aq ], [ 0, %bb.ao ] ; 3 uses
  %i.eu = zext i8 %i.es to i32
  %i.ev = add i8 %i.es, -58
  %or.cond.i59 = icmp ult i8 %i.ev, -10
  %i.ew = icmp ugt i32 %i.et, 429496729
  %or.cond40.i60 = select i1 %or.cond.i59, i1 true, i1 %i.ew
  br i1 %or.cond40.i60, label %.loopexit104, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i57
  %i.ex = icmp ne i32 %i.et, 429496729
  %i.ey = icmp samesign ult i8 %i.es, 54
  %or.cond4.not.i61 = or i1 %i.ey, %i.ex
  br i1 %or.cond4.not.i61, label %bb.aq, label %.loopexit104

bb.aq:                                            ; preds = %bb.ap
  %i.ez = add nsw i32 %i.eu, -48
  %i.fa = mul nuw i32 %i.et, 10
  %i.fb = add i32 %i.ez, %i.fa                    ; 2 uses
  store i32 %i.fb, ptr %i.l, align 4, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %.02133.i58, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !18  ; 2 uses
  %.not.i63 = icmp eq i8 %i.fd, 0
  br i1 %.not.i63, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64, label %.lr.ph.i57, !llvm.loop !155

_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64: ; preds = %bb.aq, %bb.ao
  %10 = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a unwind label %bb.am ; 0 uses

.loopexit104:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.ap, %.lr.ph.i57, %bb.ai, %.lr.ph.i
  %i.fe = call i64 @sysconf(i32 noundef 84) #33
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %11 = load ptr, ptr %7, align 8, !tbaa !15      ; 2 uses
  %12 = icmp eq ptr %11, %i.q
  br i1 %12, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.jt1, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread97, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit55, %.loopexit, %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64
  %13 = load ptr, ptr %7, align 8, !tbaa !15      ; 2 uses
  %14 = icmp eq ptr %13, %i.q
  br i1 %14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %.loopexit104
  %15 = load i64, ptr %i.q, align 8, !tbaa !18
  %16 = add i64 %15, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %16) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a
  %i.fh = load i64, ptr %i.q, align 8, !tbaa !18
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %13, i64 noundef %i.fi) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.jt1: ; preds = %.loopexit104, %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %17 = load ptr, ptr %6, align 8, !tbaa !15      ; 2 uses
  %18 = icmp eq ptr %17, %i.o
  br i1 %18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.jt1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit64.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fj = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.o
  br i1 %i.fk, label %.outer.backedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.jt1
  %19 = load i64, ptr %i.o, align 8, !tbaa !18
  %20 = add i64 %19, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %20) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.fl = load i64, ptr %i.o, align 8, !tbaa !18
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #37
  br label %.outer.backedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit116

.outer.backedge:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.outer.backedge295

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.am ], [ %i.eg, %bb.al ], [ %i.ef, %bb.ak ] ; 2 uses
  %i.fn = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.q
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ar
  %i.fp = load i64, ptr %i.q, align 8, !tbaa !18
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ar, %.loopexit111, %.loopexit.split-lp112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %lpad.loopexit.split-lp114, %.loopexit.split-lp112 ], [ %lpad.loopexit113, %.loopexit111 ], [ %.pn, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.fr = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.o
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ft = load i64, ptr %i.o, align 8, !tbaa !18
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.loopexit106, %.loopexit.split-lp107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ], [ %lpad.loopexit108, %.loopexit106 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.aw

bb.as:                                            ; preds = %bb.f
  %i.fv = load i64, ptr %i.k, align 8, !tbaa !121 ; 2 uses
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fw = trunc i64 %i.fv to i32
  br label %.loopexit116

bb.au:                                            ; preds = %bb.as
  %i.fx = call i64 @sysconf(i32 noundef 84) #33
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.fy, i32 0)
  br label %.loopexit116

.loopexit116:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70, %.thread, %bb.at, %bb.au
  %.3 = phi i32 [ %i.be, %.thread ], [ %i.fw, %bb.at ], [ %i.fz, %bb.au ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70 ]
  %i.ga = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.m
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %.loopexit116
  %i.gc = load i64, ptr %i.m, align 8, !tbaa !18
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %.loopexit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ge)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #36
  unreachable

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gh = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.d
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !18
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.gl = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.a
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !18
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  br label %bb.ay

bb.aw:                                            ; preds = %.loopexit105, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit, %.loopexit105 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gp = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.m
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aw
  %i.gr = load i64, ptr %i.m, align 8, !tbaa !18
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gt = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.d
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.gv = load i64, ptr %i.d, align 8, !tbaa !18
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.gx = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.a
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #33
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.au, %bb.h ]
  %.6 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.hb = call ptr @__cxa_begin_catch(ptr %.6) #33 ; 0 uses
  %i.hc = call i64 @sysconf(i32 noundef 84) #33
  %i.hd = trunc i64 %i.hc to i32
  %i.he = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hd, i32 0)
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.4 = phi i32 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.he, %bb.ax ]
  ret i32 %.4

bb.az:                                            ; preds = %bb.ax
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #9 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.b
  %.0710.i.i = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.i.i ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0710.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18    ; 2 uses
  %i.f = zext nneg i8 %i.e to i64
  %memchr.bounds = icmp ugt i8 %i.e, 63
  %i.g = shl nuw i64 1, %i.f
  %i.h = and i64 %i.g, 4294977024
  %memchr.bits = icmp eq i64 %i.h, 0
  %memchr.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.i = add nuw i64 %.0710.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0710.i.i ; 2 uses
  %i.k = icmp eq i64 %.0710.i.i, -1
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !19
  store i8 0, ptr %i.l, align 8, !tbaa !18
  br label %bb.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7:    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit, %bb.c
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.c ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit ] ; 2 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  %memchr.bounds21 = icmp ugt i8 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.q, 4294977024
  %memchr.bits22 = icmp eq i64 %i.r, 0
  %memchr.not23 = select i1 %memchr.bounds21, i1 true, i1 %memchr.bits22
  br i1 %memchr.not23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7
  %.not15.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, !llvm.loop !157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7, %bb.c
  %.010.i.i = phi i64 [ %.1.i.i.in, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7 ], [ 0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.s = icmp ugt i64 %.0710.i.i, %i.b
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.34, i64 noundef %.0710.i.i, i64 noundef %i.b) #34, !noalias !158
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit
  %i.t = sub i64 %.010.i.i, %.0710.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !10, !alias.scope !158
  %i.v = sub nuw i64 %i.b, %.0710.i.i
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.v) ; 8 uses
  %i.w = icmp ugt i64 %spec.select.i.i.i, 15
end_hunk_0
