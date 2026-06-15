inline.NumInlined: 1320
inline.NumDeleted: 643
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  resume { ptr, i32 } %.pn49.pn

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit62, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.l, align 1, !tbaa !206
  %i.fa = load i64, ptr %i.f, align 8, !tbaa !50  ; 2 uses
  %.not.i65 = icmp eq i64 %i.fa, 0
  br i1 %.not.i65, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !697 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63, label %bb.ab

bb.ab:                                            ; preds = %.noexc.i
  %i.fc = load i64, ptr %i.g, align 8, !tbaa !50
  %i.fd = sub i64 0, %i.fc
  %i.fe = and i64 %i.fd, -8
  %i.ff = mul i64 %i.fa, 24
  %i.fg = sub i64 %i.ff, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #34
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit63: ; preds = %.loopexit, %bb.ab, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !80
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !80
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !728, !nonnull !44
  %i.d = load i8, ptr %i.c, align 1, !tbaa !206, !range !43, !noundef !44
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !118

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !729, !nonnull !44, !align !730
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !731, !nonnull !44, !align !730
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !697
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !732, !nonnull !44, !align !730
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !733, !nonnull !44, !align !730
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !734, !nonnull !44, !align !730
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !731, !nonnull !44, !align !730
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !697
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !735, !nonnull !44, !align !730
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !49
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !49
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #34
  %.pre = load ptr, ptr %0, align 8, !tbaa !728
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !206, !range !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !729
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !50
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !736, !nonnull !44, !align !730
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !737, !nonnull !44, !align !730
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !738, !nonnull !44, !align !730
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !698
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_S9_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_S9_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = mul i64 %i.as, 24
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #34
  br label %_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_S9_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS6_S9_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS6_S9_Em(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !212
  %i.b = mul i64 %2, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17FunctionScheduler13setThreadNameENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr %1, ptr %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #36
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !20, !alias.scope !739
  %i.g = icmp eq ptr %1, null
  %i.h = icmp ne ptr %2, null
  %or.cond.i.i.i = and i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #36
          to label %.noexc unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = icmp ugt i64 %i.e, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.e, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #36
          to label %.noexc2 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc2:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %i.e, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !73

.noexc9.i.i.i:                                    ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc3 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

.noexc3:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
          to label %.noexc4 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6 ; 2 uses

.noexc4:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !45, !alias.scope !739
  store i64 %i.e, ptr %i.f, align 8, !tbaa !25, !alias.scope !739
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc4, %bb.c
  %i.n = phi ptr [ %i.m, %.noexc4 ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.o, ptr %i.n, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %1, i64 %i.e, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.e, ptr %i.p, align 8, !tbaa !23, !alias.scope !739
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.q, align 1, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = load ptr, ptr %3, align 8, !tbaa !45     ; 6 uses
  %i.w = icmp eq ptr %i.v, %i.f                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %.not21.i = icmp eq ptr %3, %i.r
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %4, !prof !73

4:                                                ; preds = %bb.i
  switch i64 %i.x, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %4
  %i.z = load i8, ptr %i.v, align 1, !tbaa !25
  store i8 %i.z, ptr %i.s, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %4
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.v, ptr %i.r, align 8, !tbaa !45
  %i.af = load <2 x i64>, ptr %i.p, align 8, !tbaa !25
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !25
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !25
  store ptr %i.v, ptr %i.r, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load <2 x i64>, ptr %i.p, align 8, !tbaa !25
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.s, ptr %3, align 8, !tbaa !45
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %3, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %5 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.s, %bb.l ], [ %i.f, %bb.m ], [ %i.v, %bb.i ]
  store i64 0, ptr %i.p, align 8, !tbaa !23
  store i8 0, ptr %5, align 1, !tbaa !25
  %i.aj = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.f, align 8, !tbaa !25
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #37
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.an = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit6:           ; preds = %.noexc.i.i, %.noexc.i.i.i, %.noexc9.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #24 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nounwind memory(none) }
attributes #29 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin nounwind }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { cold noreturn nounwind }
attributes #40 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !16, i64 8}
!12 = !{!"_ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEEE", !13, i64 0, !16, i64 8, !17, i64 16}
!13 = !{!"_ZTSN5folly3f146detail21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEE", !14, i64 0}
!14 = !{!"p1 _ZTSSt4pairIKN5folly5RangeIPKcEEPNS0_17FunctionScheduler10RepeatFuncEE", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIjEE", !15, i64 0}
!17 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEELb0EEE", !18, i64 0}
!18 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !15, i64 0}
!23 = !{!24, !19, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !19, i64 8, !9, i64 16}
!25 = !{!9, !9, i64 0}
!26 = !{!27, !32, i64 176}
!27 = !{!"_ZTSN5folly17FunctionSchedulerE", !28, i64 0, !30, i64 8, !32, i64 48, !33, i64 56, !35, i64 64, !38, i64 88, !39, i64 96, !24, i64 144, !32, i64 176, !32, i64 177}
!28 = !{!"_ZTSSt6thread", !29, i64 0}
!29 = !{!"_ZTSNSt6thread2idE", !19, i64 0}
!30 = !{!"_ZTSSt5mutex", !31, i64 0}
!31 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!32 = !{!"bool", !9, i64 0}
!33 = !{!"_ZTSN5folly13IntrusiveHeapINS_17FunctionScheduler10RepeatFuncENS1_12RunTimeOrderEvNS_17DerivedNodeTraitsIS2_vEEEE", !34, i64 0}
!34 = !{!"p1 _ZTSN5folly17IntrusiveHeapNodeIvEE", !15, i64 0}
!35 = !{!"_ZTSN5folly10F14FastMapINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S7_EEEE", !36, i64 0}
!36 = !{!"_ZTSN5folly3f146detail16F14VectorMapImplINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S9_EESt17integral_constantIbLb1EEEE", !37, i64 0}
!37 = !{!"_ZTSN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyINS_5RangeIPKcEEPNS_17FunctionScheduler10RepeatFuncENS_4HashEvvSt17integral_constantIbLb1EEEEEE", !12, i64 0}
!38 = !{!"p1 _ZTSN5folly17FunctionScheduler10RepeatFuncE", !15, i64 0}
!39 = !{!"_ZTSSt18condition_variable", !40, i64 0}
!40 = !{!"_ZTSSt9__condvar", !9, i64 0}
!41 = !{!27, !32, i64 177}
!42 = !{!27, !32, i64 48}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!24, !22, i64 0}
!46 = !{!47, !9, i64 15}
!47 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !48, i64 0, !9, i64 15}
!48 = !{!"_ZTSSt5arrayIhLm15EE", !9, i64 0}
!49 = !{!18, !19, i64 0}
!50 = !{!19, !19, i64 0}
!51 = !{!33, !34, i64 0}
!52 = !{!53, !34, i64 8}
!53 = !{!"_ZTSN5folly17IntrusiveHeapNodeIvEE", !34, i64 0, !34, i64 8, !34, i64 16}
!54 = !{!53, !34, i64 16}
!55 = !{!34, !34, i64 0}
!56 = !{!53, !34, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!60, !15, i64 56}
!60 = !{!"_ZTSN5folly8FunctionIFNSt6chrono10time_pointINS1_3_V212steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEES9_S9_EEE", !9, i64 0, !15, i64 48, !15, i64 56}
!61 = distinct !{null, null, null}
!62 = !{!63, !15, i64 56}
!63 = !{!"_ZTSN5folly8FunctionIFvvEEE", !9, i64 0, !15, i64 48, !15, i64 56}
!64 = distinct !{null, null, null}
!65 = !{!66, !15, i64 48}
!66 = !{!"_ZTSN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEEE", !9, i64 0, !15, i64 48, !15, i64 56}
!67 = !{!66, !15, i64 56}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!70 = distinct !{!70, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!71 = distinct !{!71, !72, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!72 = distinct !{!72, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_: argument 0"}
!76 = distinct !{!76, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlA3_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_"}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!79 = distinct !{null, null}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !10, i64 0}
!82 = !{!"branch_weights", i32 4001, i32 4000000}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !9, i64 0}
!85 = distinct !{!85, !58}
!86 = !{!87, !32, i64 0}
!87 = !{!"_ZTSN5folly17FunctionScheduler19LatencyDistributionE", !32, i64 0, !88, i64 8}
!88 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !19, i64 0}
!89 = !{!90, !19, i64 0}
!90 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !19, i64 0}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt20poisson_distributionIlE10param_typeE", !93, i64 0, !93, i64 8, !93, i64 16, !93, i64 24, !93, i64 32, !93, i64 40, !93, i64 48, !93, i64 56, !93, i64 64}
!93 = !{!"double", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!96, !93, i64 16}
!96 = !{!"_ZTSSt19normal_distributionIdE", !97, i64 0, !93, i64 16, !32, i64 24}
!97 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !93, i64 0, !93, i64 8}
!98 = !{!96, !32, i64 24}
!99 = !{!100, !102}
!100 = distinct !{!100, !101, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!101 = distinct !{!101, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!102 = distinct !{!102, !103, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!103 = distinct !{!103, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
end_hunk_0
