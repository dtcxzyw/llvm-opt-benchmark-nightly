Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncLogWriter?download=true
inline.NumInlined: 440
inline.NumDeleted: 225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly14AsyncLogWriter8ioThreadEv:bb.a
  %i.aq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #21 ; 0 uses
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit29

_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit29: ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.not11.not, label %bb.p, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.thread

bb.p:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit29
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #21
  %i.ar = load ptr, ptr %0, align 8, !tbaa !145
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.010), !call_target !1092
  %.not12 = icmp eq i64 %.010, 0
  br i1 %.not12, label %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load atomic ptr, ptr @_ZN5folly14AsyncLogWriter16discardCallback_E monotonic, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.au(i64 noundef %.010), !inline_history !3072
  br label %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit

_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !3070 ; 3 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !3048 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i30, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.av, %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !142
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.aw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.av, ptr %i.m, align 8, !tbaa !3048
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %_ZN5folly14AsyncLogWriter21invokeDiscardCallbackEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  store ptr %i.b, ptr %1, align 8, !tbaa !3053, !alias.scope !3136
  %i.bd = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21, !noalias !3136 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %._crit_edge

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.thread: ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit29
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14AsyncLogWriter4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !guid !3137 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !3067
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #20
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3070 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3048 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6threadD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %_ZNSt6threadD2Ev.exit ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !141 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !142
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !3070
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6threadD2Ev.exit
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %_ZNSt6threadD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3049
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !3070   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3048 ; 2 uses
  %.not4.i.i.i.1.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1.i, label %.lr.ph.i.i.i.1.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i
  %.05.i.i.i.1.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i.1.i, align 8, !tbaa !141 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1.i: ; preds = %.lr.ph.i.i.i.1.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !142
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i: ; preds = %.lr.ph.i.i.i.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1.i, i64 32 ; 2 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i.1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.1.i, label %.lr.ph.i.i.i.1.i, !llvm.loop !101

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.1.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.1.i
  %.pr.i.1.i = load ptr, ptr %0, align 8, !tbaa !3070
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.1.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.aa = phi ptr [ %.pr.i.1.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.1.i ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.1.i, label %_ZNSt5arrayISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELm2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3049
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #24
  br label %_ZNSt5arrayISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELm2EED2Ev.exit

_ZNSt5arrayISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELm2EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.1.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly14AsyncLogWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !3142 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly14AsyncLogWriterE, i64 16), ptr %0, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !3053, !alias.scope !3143
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #21, !noalias !3143 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #22
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !3054, !alias.scope !3143
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3059
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !137, !alias.scope !3144
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !143, !alias.scope !3144
  store i8 0, ptr %i.h, align 8, !tbaa !142, !alias.scope !3144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !3144
  store ptr %1, ptr %i.a, align 8, !tbaa !3071, !noalias !3144
  invoke void @_ZN5folly11toAppendFitIJA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(42) @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !3144
  %i.k = load ptr, ptr %1, align 8, !tbaa !141, !alias.scope !3144 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.h, align 8, !tbaa !142, !alias.scope !3144
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #24
  br label %.body.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !3144
  call void @_ZN5folly8LoggerDB19internalWarningImplENS_5RangeIPKcEEiONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 82), i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  %i.o = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.h, align 8, !tbaa !142
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit

.body.i:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.s = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.t = load i32, ptr %i.e, align 8, !tbaa !3059
  %i.u = or i32 %i.t, 6
  store i32 %i.u, ptr %i.e, align 8, !tbaa !3059
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #21
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i32, ptr %i.e, align 8, !tbaa !3059 ; 2 uses
  %i.y = and i32 %i.x, 8
  %.not4.i.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i"

.lr.ph.i.i:                                       ; preds = %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit, %.noexc3
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3:                                          ; preds = %.lr.ph.i.i
  %.val.val.i.i = load ptr, ptr %2, align 8, !tbaa !3053 ; 4 uses
  %.not.i.i.i.i.i1 = icmp eq ptr %.val.val.i.i, null
  %i.z = select i1 %.not.i.i.i.i.i1, i64 48, i64 -48
  %i.aa = getelementptr inbounds i8, ptr %.val.val.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !3059
  %i.ac = and i32 %i.ab, 8
  %.not.i.i2 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i2, label %.lr.ph.i.i, label %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i.loopexit", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i.loopexit": ; preds = %.noexc3
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.val.val.i.i, i64 -48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !3059
  br label %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i"

"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i": ; preds = %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i.loopexit", %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit
  %i.ad = phi i32 [ %i.x, %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit ], [ %.pre, %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i.loopexit" ]
  %i.ae = phi ptr [ %i.b, %_ZN5folly8LoggerDB15internalWarningIJRA42_KcEEEvNS_5RangeIPS2_EEiDpOT_.exit ], [ %.val.val.i.i, %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i.loopexit" ] ; 2 uses
  %i.af = and i32 %i.ad, 16
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit

bb.g:                                             ; preds = %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i"
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %bb.g
  %i.ai = load ptr, ptr %2, align 8, !tbaa !3053  ; 3 uses
  %.not.i.i11.i = icmp eq ptr %i.ai, null
  %i.aj = select i1 %.not.i.i11.i, i64 48, i64 -48
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3059
  %i.am = or i32 %i.al, 16
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !3059
  br label %_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit

_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit: ; preds = %.noexc4, %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i"
  %.ph = phi ptr [ %i.ae, %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit.i" ], [ %i.ai, %.noexc4 ]
  %i.an = load i8, ptr %i.d, align 8, !tbaa !3054
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.h:                                             ; preds = %bb.c, %_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit
  %3 = phi ptr [ %.ph, %_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit ], [ %i.b, %bb.c ]
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %3) #21 ; 0 uses
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  invoke void @_ZN5folly6AtFork17unregisterHandlerEPKv(ptr noundef nonnull %0)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !3054, !range !3056, !noundef !652
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit7

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3053 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i6, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #21 ; 0 uses
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit7

_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit7: ; preds = %bb.i, %bb.j, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ax) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ay) #21
  call void @_ZN5folly14AsyncLogWriter4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(136) %i.aw) #21
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.g, %bb.b, %_ZN5folly9LockedPtrINS_12SynchronizedINS_14AsyncLogWriter4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.loopexit.split-lp14, 0
  call void @__clang_call_terminate(ptr %i.az) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncLogWriter12stopIoThreadERNS_9LockedPtrINS_12SynchronizedINS0_4DataESt5mutexEENS_6detail22SynchronizedLockPolicyILNS6_22SynchronizedMutexLevelE1ELNS6_23SynchronizedMutexMethodE0EEEEEj(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !3145 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3053   ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  %i.b = select i1 %.not.i.i, i64 48, i64 -48
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3059
  %i.e = or i32 %2, %i.d
  %i.f = or i32 %i.e, 4
  store i32 %i.f, ptr %i.c, align 8, !tbaa !3059
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.val2.i = load ptr, ptr %1, align 8, !tbaa !3053 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %.val.val2.i, null
  %i.i = select i1 %.not.i.i.i3.i, i64 48, i64 -48
  %i.j = getelementptr inbounds i8, ptr %.val.val2.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3059
  %i.l = and i32 %i.k, 8
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit"

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(9) %1)
  %.val.val.i = load ptr, ptr %1, align 8, !tbaa !3053 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.val.i, null
  %i.m = select i1 %.not.i.i.i.i, i64 48, i64 -48
  %i.n = getelementptr inbounds i8, ptr %.val.val.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 8, !tbaa !3059
  %i.p = and i32 %i.o, 8
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %.lr.ph.i, label %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit", !llvm.loop !100

"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit": ; preds = %.lr.ph.i, %bb.a
  %i.q = phi ptr [ %.val.val2.i, %bb.a ], [ %.val.val.i, %.lr.ph.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !3059
  %i.t = and i32 %i.s, 16
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit"
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -8
  tail call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.w = load ptr, ptr %1, align 8, !tbaa !3053   ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.w, null
  %i.x = select i1 %.not.i.i11, i64 48, i64 -48
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3059
  %i.aa = or i32 %i.z, 16
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !3059
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZNSt18condition_variable4waitIZN5folly14AsyncLogWriter12stopIoThreadERNS1_9LockedPtrINS1_12SynchronizedINS2_4DataESt5mutexEENS1_6detail22SynchronizedLockPolicyILNS8_22SynchronizedMutexLevelE1ELNS8_23SynchronizedMutexMethodE0EEEEEjE3$_0EEvRSt11unique_lockIS6_ET_.exit"
  ret void
}

declare void @_ZN5folly6AtFork17unregisterHandlerEPKv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly8LoggerDB19internalWarningImplENS_5RangeIPKcEEiONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !guid !3146 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3071   ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !142  ; 2 uses
  %.not.i.i = icmp ult i64 %i.e, 42
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, label %_ZN5folly6detail15reserveInTargetIA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.f = phi i64 [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ 15, %bb.a ]
  %i.g = shl nuw nsw i64 %i.f, 1
  %.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 42) ; 2 uses
  %i.h = or disjoint i64 %.0.i.i, 1
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23 ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !141  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !143  ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  ]

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.n = load i8, ptr %i.j, align 1, !tbaa !142
  store i8 %i.n, ptr %i.i, align 1, !tbaa !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.o = icmp eq ptr %i.j, %i.c
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.p = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !142
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i.i
  store ptr %i.i, ptr %i.a, align 8, !tbaa !141
  store i64 %.0.i.i, ptr %i.c, align 8, !tbaa !142
  %.pre = load ptr, ptr %1, align 8, !tbaa !3071
  br label %_ZN5folly6detail15reserveInTargetIA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_.exit

_ZN5folly6detail15reserveInTargetIA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i.i
  %i.s = phi ptr [ %i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i.i ] ; 5 uses
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !143  ; 5 uses
  %i.w = sub i64 9223372036854775807, %i.v
  %i.x = icmp ult i64 %i.w, %i.t
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %_ZN5folly6detail15reserveInTargetIA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN5folly6detail15reserveInTargetIA42_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_.exit
  %i.y = add i64 %i.v, %i.t                       ; 3 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !141  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ac = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !142
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ae
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit, label %bb.f
end_hunk_0
