Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/EpollBackend?download=true
inline.NumInlined: 882
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly12EpollBackend16removeTimerEventERNS_14EventBaseEventE:bb.a
  %i.j = icmp eq ptr %i.i, %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %spec.select.i = select i1 %i.j, ptr %i.h, ptr %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %spec.select.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 3 uses
  %i.p = icmp eq ptr %i.m, null                   ; 2 uses
  %i.q = icmp eq ptr %i.o, null
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.g, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !51
  br label %.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.r = select i1 %i.p, ptr %i.o, ptr %i.m       ; 3 uses
  store ptr %i.r, ptr %.0.i, align 8, !tbaa !92
  %.not38.i.i = icmp eq ptr %i.r, null
  br i1 %.not38.i.i, label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr %i.r, align 8, !tbaa !89
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi i64 [ %i.y, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.031.i.i = phi ptr [ %.031..030.i.i, %.preheader.i ], [ %i.m, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i = phi ptr [ %i.v, %.preheader.i ], [ %i.o, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i = phi ptr [ %.030..031.i.i, %.preheader.i ], [ %i.d, %.preheader.preheader.i ]
  %.0.i.i = phi ptr [ %i.w, %.preheader.i ], [ %.0.i, %.preheader.preheader.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 24
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !51 ; 2 uses
  %i.t = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %.031..030.i.i = select i1 %i.t, ptr %.031.i.i, ptr %.030.i.i, !unpredictable !46 ; 3 uses
  %.030..031.i.i = select i1 %i.t, ptr %.030.i.i, ptr %.031.i.i, !unpredictable !46 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  store ptr %.030..031.i.i, ptr %.0.i.i, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %.030..031.i.i, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !90
  store ptr %i.x, ptr %i.u, align 8, !tbaa !91
  store ptr %.029.i.i, ptr %.030..031.i.i, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.v, null
  %i.y = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i2.i.i.i.i.i.i)
  br i1 %.not.i.i, label %bb.i, label %.preheader.i, !llvm.loop !0

bb.i:                                             ; preds = %.preheader.i
  store ptr %.031..030.i.i, ptr %i.w, align 8, !tbaa !92
  store ptr %.030..031.i.i, ptr %.031..030.i.i, align 8, !tbaa !89
  br label %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit

_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit: ; preds = %bb.g, %bb.h, %bb.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !89
  tail call void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %_ZN5folly13IntrusiveHeapINS_12EpollBackend9TimerInfoESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5eraseEPS2_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_ZN5folly12EpollBackend17removeSignalEventERNS_14EventBaseEventE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = icmp slt i32 %i.h, %i.f                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %bb.b, !llvm.loop !1

_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %bb.b
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.j, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i

_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = icmp slt i32 %i.f, %i.l
  br i1 %i.m, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit: ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.o = call noundef i64 @_ZNSt8_Rb_treeIP5eventS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread, label %bb.c

_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread: ; preds = %_ZNSt3mapIiSt3setIP5eventSt4lessIS2_ESaIS2_EES3_IiESaISt4pairIKiS6_EEE4findERS9_.exit.i, %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiSt3setIP5eventSt4lessIS4_ESaIS4_EEESt10_Select1stIS9_ES5_IiESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit
  %i.q = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.q, align 4, !tbaa !54
  br label %bb.h

bb.c:                                             ; preds = %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit
  %i.r = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, !prof !116

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24
          to label %bb.f unwind label %bb.g       ; 8 uses

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !102
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.x, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.v, ptr %i.y, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 0, ptr %i.z, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 -1, ptr %i.aa, align 8, !tbaa !120
  store ptr %i.u, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !122
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  br label %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance) #20
  resume { ptr, i32 } %i.ab

_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit: ; preds = %bb.c, %bb.d, %bb.f
  %i.ac = load ptr, ptr @_ZZN5folly12_GLOBAL__N_117getSignalRegistryEvE9sInstance, align 8, !tbaa !122, !nonnull !46, !align !123
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !80
  call fastcc void @_ZN5folly12_GLOBAL__N_114SignalRegistry11setNotifyFdEii(ptr noundef nonnull align 8 dereferenceable(60) %i.ac, i32 noundef %i.af, i32 noundef -1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread
  %.0 = phi i32 [ -1, %_ZN5folly7get_ptrISt3mapIiSt3setIP5eventSt4lessIS4_ESaIS4_EES5_IiESaISt4pairIKiS8_EEEiEEDaRT_RKT0_.exit.thread ], [ 0, %_ZN5folly12_GLOBAL__N_117getSignalRegistryEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly12EpollBackend9TimerInfo12freeFunctionEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12EpollBackend13updateTimerFdEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.itimerspec, align 8         ; 5 uses
  %2 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %3 = alloca %struct.itimerspec, align 8         ; 7 uses
  %4 = alloca %"class.google::ErrnoLogMessage", align 8 ; 7 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit

_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit: ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %6 = load i64, ptr %5, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit, %bb.a
  %.sroa.041.0 = phi i64 [ undef, %bb.a ], [ %6, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %.sroa.7.0 = phi i8 [ 0, %bb.a ], [ 1, %_ZNSt8optionalINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEEaSIRS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS9_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESD_ISt6__and_IJSt9is_scalarIS8_ESE_IS8_NSt5decayISH_E4typeEEEEESt16is_constructibleIS8_JSH_EESt13is_assignableISB_SH_EEERS9_E4typeEOSH_.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %7 = trunc nuw i8 %.sroa.7.0 to i1              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !100, !range !45, !noundef !46
  %8 = icmp eq i8 %.sroa.7.0, %i.g                ; 2 uses
  %brmerge.not.i = and i1 %8, %7
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.e, align 8
  %i.h = icmp eq i64 %.sroa.041.0, %.sroa.0.0.copyload.i2.i.i
  %i.i = select i1 %brmerge.not.i, i1 %i.h, i1 %8
  br i1 %i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %7, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !99
  %i.l = call i32 @timerfd_settime(i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #20
  %.not22.not = icmp eq i32 %i.l, 0
  br i1 %.not22.not, label %.critedge25, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.a, align 8, !tbaa !61
  %.fca.1.gep10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep10, align 8, !tbaa !61
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 507, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.21, i64 noundef 65)
          to label %.critedge unwind label %bb.g  ; 0 uses

.critedge:                                        ; preds = %bb.f
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.critedge25

.critedge25:                                      ; preds = %bb.d, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.p = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #20
  %i.q = sub nsw i64 %.sroa.041.0, %i.p
  %i.r = sdiv i64 %i.q, 1000
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.r, i64 1000) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.s = udiv i64 %spec.select, 1000000
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i64 %i.s, ptr %i.t, align 8, !tbaa !152
  %i.u = mul nuw nsw i64 %spec.select, 1000
  %i.v = urem i64 %i.u, 1000000000
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !99
  %i.z = call i32 @timerfd_settime(i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #20
  %.not23.not = icmp eq i32 %i.z, 0
  br i1 %.not23.not, label %.critedge28, label %bb.i, !prof !81

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 ptrtoint (ptr @_ZN6google10LogMessage9SendToLogEv to i64), ptr %i.b, align 8, !tbaa !61
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !61
  call void @_ZN6google15ErrnoLogMessageC1EPKciilMNS_10LogMessageEFvvE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 3, i64 noundef 0, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.21, i64 noundef 65)
          to label %.critedge27 unwind label %bb.k ; 0 uses

.critedge27:                                      ; preds = %bb.j
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge28

.critedge28:                                      ; preds = %bb.h, %.critedge27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google15ErrnoLogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.n

bb.l:                                             ; preds = %.critedge28, %.critedge25
  store i64 %.sroa.041.0, ptr %i.e, align 8
  store i8 %.sroa.7.0, ptr %i.f, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  ret void

bb.n:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.o, %bb.g ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare i32 @timerfd_settime(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly9readNoIntEiPvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly12_GLOBAL__N_114SignalRegistry11setNotifyFdEii(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 6 uses
  %4 = alloca %struct.sigaction, align 8          ; 7 uses
  %5 = alloca %"struct.folly::(anonymous namespace)::SignalRegistry::SigInfo", align 8 ; 4 uses
  %i.a = atomicrmw xchg ptr %0, i8 1 acquire, align 1
  %.not1.i.i = icmp eq i8 %i.a, 0
  br i1 %.not1.i.i, label %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.lr.ph.i.i
  %.sroa.4.1.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.sroa.4.2.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %i.c = icmp ult i32 %.sroa.4.1.i.i, 4096
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.i
  %i.d = add nuw nsw i32 %.sroa.4.1.i.i, 1
  call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !161
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.c:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8, !tbaa !162
  store i64 500000, ptr %i.b, align 8, !tbaa !163
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = invoke i32 @nanosleep(ptr noundef nonnull %3, ptr noundef nonnull %3)
          to label %.noexc.i.i.i unwind label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.e, label %.critedge.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.g = tail call ptr @__errno_location() #22
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i, !llvm.loop !154

.critedge.i.i.i.i:                                ; preds = %bb.e, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5folly6detail7Sleeper4waitEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #23
  unreachable

_ZN5folly6detail7Sleeper4waitEv.exit.i.i:         ; preds = %.critedge.i.i.i.i, %bb.b
  %.sroa.4.2.i.i = phi i32 [ %i.d, %bb.b ], [ %.sroa.4.1.i.i, %.critedge.i.i.i.i ]
  %i.l = load atomic i8, ptr %0 monotonic, align 8
  %i.m = icmp eq i8 %i.l, 1
  br i1 %i.m, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i, %bb.g
  br label %.preheader.i.i, !llvm.loop !155

bb.g:                                             ; preds = %_ZN5folly6detail7Sleeper4waitEv.exit.i.i
  %i.n = atomicrmw xchg ptr %0, i8 1 acquire, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit, label %.preheader.i.i.backedge

_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit: ; preds = %bb.g, %bb.a
  %i.o = icmp sgt i32 %2, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i32 %2, ptr %i.p seq_cst, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !102 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null  ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.an

bb.h:                                             ; preds = %_ZNSt10lock_guardIN5folly13MicroSpinLockEEC2ERS1_.exit
  br i1 %.not2.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.h ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !54
  %i.u = icmp slt i32 %i.t, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.u, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !156

_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = icmp eq ptr %.19.i.i.i.i, %i.r
  br i1 %i.v, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  %i.y = icmp slt i32 %1, %i.x
  br i1 %i.y, label %.critedge.i, label %bb.af

.critedge.i:                                      ; preds = %bb.i, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i, %bb.h
  %i.z = phi i1 [ false, %bb.i ], [ true, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ true, %bb.h ]
  %.08.lcssa.i.i.i18.i = phi ptr [ %.19.i.i.i.i, %bb.i ], [ %.19.i.i.i.i, %_ZNSt3mapIiN5folly12_GLOBAL__N_114SignalRegistry7SigInfoESt4lessIiESaISt4pairIKiS3_EEE11lower_boundERS7_.exit.i ], [ %i.r, %bb.h ] ; 10 uses
  %i.aa = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #24
          to label %.noexc unwind label %bb.am    ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %1, ptr %i.ab, align 8, !tbaa !168
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ac, i8 0, i64 160, i1 false)
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val12.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i64 %.val12.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54
  %i.ai = icmp slt i32 %i.ah, %1
  br i1 %i.ai, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.01113.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !112 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %.01113.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i10.i
  %.01115.i.i.i.i = phi ptr [ %.011.i.i.i.i, %.lr.ph.i.i.i10.i ], [ %.01113.i.i.i.i, %bb.l ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !54 ; 2 uses
  %i.al = icmp slt i32 %1, %i.ak                  ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.al, i64 16, i64 24
  %.in.i.i.i.i = getelementptr i8, ptr %.01115.i.i.i.i, i64 %.in.v.i.i.i.i
  %.011.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %.011.i.i.i.i, null
  br i1 %.not.i.i.i11.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i10.i, !llvm.loop !157

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i10.i
  br i1 %i.al, label %._crit_edge.thread.i.i.i.i, label %bb.n

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.l
  %.010.lcssa20.i.i.i.i = phi ptr [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.r, %bb.l ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.an = icmp eq ptr %.010.lcssa20.i.i.i.i, %.val9.i.i.i.i
  br i1 %i.an, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.ao = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i.i.i.i) #26 ; 2 uses
  %.phi.trans.insert31.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.pre32.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i, align 4, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %i.ap = phi i32 [ %.pre32.i.i.i, %bb.m ], [ %i.ak, %._crit_edge.i.i.i.i ]
  %.010.lcssa19.i.i.i.i = phi ptr [ %.010.lcssa20.i.i.i.i, %bb.m ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ao, %bb.m ], [ %.01115.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.aq = icmp slt i32 %i.ap, %1
  br i1 %i.aq, label %.thread.i.i, label %.thread13.i.i

bb.o:                                             ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i18.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54 ; 2 uses
  %i.at = icmp slt i32 %1, %i.as
  br i1 %i.at, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !112 ; 4 uses
  %i.aw = icmp eq ptr %i.av, %.08.lcssa.i.i.i18.i
  br i1 %i.aw, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i18.i) #26 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !54
  %i.ba = icmp slt i32 %i.az, %1
end_hunk_0
