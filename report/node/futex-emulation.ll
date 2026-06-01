inline.NumInlined: 1031
inline.NumDeleted: 551
begin_hunk_0_@_ZN2v88internal17FutexWaitListNode10AsyncStateD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.b) #17
  store ptr null, ptr %i.a, align 8
  br label %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit

_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.e) #17
  store ptr null, ptr %i.d, align 8
  br label %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit

_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit: ; preds = %_ZN2v814PersistentBaseINS_7ContextEE5ResetEv.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4              ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.i, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.n, label %bb.g, label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !inline_history !50
  br label %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2v814PersistentBaseINS_7PromiseEE5ResetEv.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !37
  %i.ab = load ptr, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !37
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  br label %_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v810TaskRunnerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10__weak_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #2

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #2

declare void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i.i = load ptr, ptr %i.a, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e                  ; 2 uses
  %.in.v.i.i = select i1 %i.f, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.a
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i.i, %i.h
  br i1 %i.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre18.i = load ptr, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.k = phi ptr [ %.pre18.i, %bb.c ], [ %i.c, %._crit_edge.i.i ]
  %i.l = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.c ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.m = icmp ult ptr %i.l, %i.k
  br i1 %i.m, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE16_M_insert_uniqueIRKS8_EES4_ISt17_Rb_tree_iteratorIS8_EbEOT_.exit

select.unfold.i:                                  ; preds = %bb.d, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph.i, %i.b
  br i1 %i.n, label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %i.o, %i.q
  br label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i

_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i: ; preds = %bb.e, %select.unfold.i
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold.i ]
  %i.t = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE16_M_insert_uniqueIRKS8_EES4_ISt17_Rb_tree_iteratorIS8_EbEOT_.exit

_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE16_M_insert_uniqueIRKS8_EES4_ISt17_Rb_tree_iteratorIS8_EbEOT_.exit: ; preds = %bb.d, %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i
  %.sroa.010.0.i = phi ptr [ %i.t, %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i ], [ %.sroa.05.0.i.i, %bb.d ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSM_OT_RT0_.exit.i ], [ 0, %bb.d ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.3.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base8SmallMapISt3mapIPNS_8internal7IsolateENS3_13FutexWaitList11HeadAndTailESt4lessIS5_ESaISt4pairIKS5_S7_EEELm4ENS0_8internal16select_equal_keyISE_Lb0EE9equal_keyENSF_19SmallMapDefaultInitISE_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #10 comdat align 2 {
_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit:
  %.sroa.7 = alloca %"struct.v8::internal::FutexWaitList::HeadAndTail", align 8 ; 4 uses
  %.sroa.11 = alloca %"struct.v8::internal::FutexWaitList::HeadAndTail", align 8 ; 4 uses
  %.sroa.15 = alloca %"struct.v8::internal::FutexWaitList::HeadAndTail", align 8 ; 4 uses
  %.sroa.19 = alloca %"struct.v8::internal::FutexWaitList::HeadAndTail", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.715.0.copyload = load ptr, ptr %.sroa.715.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.1117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.1117.0.copyload = load ptr, ptr %.sroa.1117.0..sroa_idx, align 8 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, i64 16, i1 false)
  %.sroa.1519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.1519.0.copyload = load ptr, ptr %.sroa.1519.0..sroa_idx, align 8 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.0..sroa_idx, i64 16, i1 false)
  store i64 -1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.0.0.copyload, ptr %i.h, align 8
  %.sroa.7.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.i = load i64, ptr %i.e, align 8
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.e, align 8
  %.02022.i.i.i.1.pre = load ptr, ptr %i.f, align 8 ; 3 uses
  %.not23.i.i.i.1 = icmp eq ptr %.02022.i.i.i.1.pre, null
  br i1 %.not23.i.i.i.1, label %._crit_edge.thread.i.i.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit, %.lr.ph.i.i.i.1
  %.02024.i.i.i.1 = phi ptr [ %.020.i.i.i.1, %.lr.ph.i.i.i.1 ], [ %.02022.i.i.i.1.pre, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.1, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ult ptr %.sroa.715.0.copyload, %i.l ; 2 uses
  %.in.v.i.i.i.1 = select i1 %i.m, i64 16, i64 24
  %.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.1, i64 %.in.v.i.i.i.1
  %.020.i.i.i.1 = load ptr, ptr %.in.i.i.i.1, align 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %.020.i.i.i.1, null
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !19

._crit_edge.i.i.i.1:                              ; preds = %.lr.ph.i.i.i.1
  br i1 %i.m, label %._crit_edge.thread.i.i.i.1, label %bb.b

._crit_edge.thread.i.i.i.1:                       ; preds = %._crit_edge.i.i.i.1, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit
  %.019.lcssa29.i.i.i.1 = phi ptr [ %.02024.i.i.i.1, %._crit_edge.i.i.i.1 ], [ %i.b, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit ] ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = icmp eq ptr %.019.lcssa29.i.i.i.1, %i.n
  br i1 %i.o, label %select.unfold.i.i.1, label %bb.a

bb.a:                                             ; preds = %._crit_edge.thread.i.i.i.1
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.1) #19
  %.phi.trans.insert.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre.i.i.1 = load ptr, ptr %.phi.trans.insert.i.i.1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge.i.i.i.1
  %i.q = phi ptr [ %.pre.i.i.1, %bb.a ], [ %i.l, %._crit_edge.i.i.i.1 ]
  %.019.lcssa28.i.i.i.1 = phi ptr [ %.019.lcssa29.i.i.i.1, %bb.a ], [ %.02024.i.i.i.1, %._crit_edge.i.i.i.1 ]
  %i.r = icmp ult ptr %i.q, %.sroa.715.0.copyload
  br i1 %i.r, label %select.unfold.i.i.1, label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1

select.unfold.i.i.1:                              ; preds = %bb.b, %._crit_edge.thread.i.i.i.1
  %.sroa.4.0.i.ph.i.i.1 = phi ptr [ %.019.lcssa29.i.i.i.1, %._crit_edge.thread.i.i.i.1 ], [ %.019.lcssa28.i.i.i.1, %bb.b ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.4.0.i.ph.i.i.1, %i.b
  br i1 %i.s, label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.1, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.1, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp ult ptr %.sroa.715.0.copyload, %i.u
  br label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.1

_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.1: ; preds = %bb.c, %select.unfold.i.i.1
  %i.w = phi i1 [ %i.v, %bb.c ], [ true, %select.unfold.i.i.1 ]
  %i.x = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %.sroa.715.0.copyload, ptr %i.y, align 8
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.e, align 8
  %.02022.i.i.i.2.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1

_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1: ; preds = %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.1, %bb.b
  %.02022.i.i.i.2 = phi ptr [ %.02022.i.i.i.2.pre, %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.1 ], [ %.02022.i.i.i.1.pre, %bb.b ] ; 3 uses
  %.not23.i.i.i.2 = icmp eq ptr %.02022.i.i.i.2, null
  br i1 %.not23.i.i.i.2, label %._crit_edge.thread.i.i.i.2, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1, %.lr.ph.i.i.i.2
  %.02024.i.i.i.2 = phi ptr [ %.020.i.i.i.2, %.lr.ph.i.i.i.2 ], [ %.02022.i.i.i.2, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp ult ptr %.sroa.1117.0.copyload, %i.ac ; 2 uses
  %.in.v.i.i.i.2 = select i1 %i.ad, i64 16, i64 24
  %.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.2, i64 %.in.v.i.i.i.2
  %.020.i.i.i.2 = load ptr, ptr %.in.i.i.i.2, align 8 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %.020.i.i.i.2, null
  br i1 %.not.i.i.i.2, label %._crit_edge.i.i.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !19

._crit_edge.i.i.i.2:                              ; preds = %.lr.ph.i.i.i.2
  br i1 %i.ad, label %._crit_edge.thread.i.i.i.2, label %bb.e

._crit_edge.thread.i.i.i.2:                       ; preds = %._crit_edge.i.i.i.2, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1
  %.019.lcssa29.i.i.i.2 = phi ptr [ %.02024.i.i.i.2, %._crit_edge.i.i.i.2 ], [ %i.b, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.1 ] ; 4 uses
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = icmp eq ptr %.019.lcssa29.i.i.i.2, %i.ae
  br i1 %i.af, label %select.unfold.i.i.2, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i.2
  %i.ag = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.2) #19
  %.phi.trans.insert.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.pre.i.i.2 = load ptr, ptr %.phi.trans.insert.i.i.2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.2
  %i.ah = phi ptr [ %.pre.i.i.2, %bb.d ], [ %i.ac, %._crit_edge.i.i.i.2 ]
  %.019.lcssa28.i.i.i.2 = phi ptr [ %.019.lcssa29.i.i.i.2, %bb.d ], [ %.02024.i.i.i.2, %._crit_edge.i.i.i.2 ]
  %i.ai = icmp ult ptr %i.ah, %.sroa.1117.0.copyload
  br i1 %i.ai, label %select.unfold.i.i.2, label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2

select.unfold.i.i.2:                              ; preds = %bb.e, %._crit_edge.thread.i.i.i.2
  %.sroa.4.0.i.ph.i.i.2 = phi ptr [ %.019.lcssa29.i.i.i.2, %._crit_edge.thread.i.i.i.2 ], [ %.019.lcssa28.i.i.i.2, %bb.e ] ; 3 uses
  %i.aj = icmp eq ptr %.sroa.4.0.i.ph.i.i.2, %i.b
  br i1 %i.aj, label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.2, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp ult ptr %.sroa.1117.0.copyload, %i.al
  br label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.2

_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.2: ; preds = %bb.f, %select.unfold.i.i.2
  %i.an = phi i1 [ %i.am, %bb.f ], [ true, %select.unfold.i.i.2 ]
  %i.ao = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %.sroa.1117.0.copyload, ptr %i.ap, align 8
  %.sroa.15.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.2, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.aq = load i64, ptr %i.e, align 8
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.e, align 8
  %.02022.i.i.i.3.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2

_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2: ; preds = %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.2, %bb.e
  %.02022.i.i.i.3 = phi ptr [ %.02022.i.i.i.3.pre, %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.2 ], [ %.02022.i.i.i.2, %bb.e ] ; 2 uses
  %.not23.i.i.i.3 = icmp eq ptr %.02022.i.i.i.3, null
  br i1 %.not23.i.i.i.3, label %._crit_edge.thread.i.i.i.3, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2, %.lr.ph.i.i.i.3
  %.02024.i.i.i.3 = phi ptr [ %.020.i.i.i.3, %.lr.ph.i.i.i.3 ], [ %.02022.i.i.i.3, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.3, i64 32
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp ult ptr %.sroa.1519.0.copyload, %i.at ; 2 uses
  %.in.v.i.i.i.3 = select i1 %i.au, i64 16, i64 24
  %.in.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.3, i64 %.in.v.i.i.i.3
  %.020.i.i.i.3 = load ptr, ptr %.in.i.i.i.3, align 8 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %.020.i.i.i.3, null
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i.3, label %.lr.ph.i.i.i.3, !llvm.loop !19

._crit_edge.i.i.i.3:                              ; preds = %.lr.ph.i.i.i.3
  br i1 %i.au, label %._crit_edge.thread.i.i.i.3, label %bb.h

._crit_edge.thread.i.i.i.3:                       ; preds = %._crit_edge.i.i.i.3, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2
  %.019.lcssa29.i.i.i.3 = phi ptr [ %.02024.i.i.i.3, %._crit_edge.i.i.i.3 ], [ %i.b, %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.2 ] ; 4 uses
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = icmp eq ptr %.019.lcssa29.i.i.i.3, %i.av
  br i1 %i.aw, label %select.unfold.i.i.3, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i.3
  %i.ax = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.3) #19
  %.phi.trans.insert.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.pre.i.i.3 = load ptr, ptr %.phi.trans.insert.i.i.3, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.3
  %i.ay = phi ptr [ %.pre.i.i.3, %bb.g ], [ %i.at, %._crit_edge.i.i.i.3 ]
  %.019.lcssa28.i.i.i.3 = phi ptr [ %.019.lcssa29.i.i.i.3, %bb.g ], [ %.02024.i.i.i.3, %._crit_edge.i.i.i.3 ]
  %i.az = icmp ult ptr %i.ay, %.sroa.1519.0.copyload
  br i1 %i.az, label %select.unfold.i.i.3, label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.3

select.unfold.i.i.3:                              ; preds = %bb.h, %._crit_edge.thread.i.i.i.3
  %.sroa.4.0.i.ph.i.i.3 = phi ptr [ %.019.lcssa29.i.i.i.3, %._crit_edge.thread.i.i.i.3 ], [ %.019.lcssa28.i.i.i.3, %bb.h ] ; 3 uses
  %i.ba = icmp eq ptr %.sroa.4.0.i.ph.i.i.3, %i.b
  br i1 %i.ba, label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.3, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i.3
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.3, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ult ptr %.sroa.1519.0.copyload, %i.bc
  br label %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.3

_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.3: ; preds = %bb.i, %select.unfold.i.i.3
  %i.be = phi i1 [ %i.bd, %bb.i ], [ true, %select.unfold.i.i.3 ]
  %i.bf = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %.sroa.1519.0.copyload, ptr %i.bg, align 8
  %.sroa.19.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.3, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.bh = load i64, ptr %i.e, align 8
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.e, align 8
  br label %_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.3

_ZNSt3mapIPN2v88internal7IsolateENS1_13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S5_EEE6insertEOSA_.exit.3: ; preds = %_ZNSt8_Rb_treeIPN2v88internal7IsolateESt4pairIKS3_NS1_13FutexWaitList11HeadAndTailEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_M_insert_IS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_EPSt18_Rb_tree_node_baseSK_OT_RT0_.exit.i.i.3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30ResolveAsyncWaiterPromisesTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14CancelableTask3RunEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal30ResolveAsyncWaiterPromisesTask11RunInternalEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14FutexEmulation26ResolveAsyncWaiterPromisesEPNS0_7IsolateE(ptr noundef %i.b)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal30ResolveAsyncWaiterPromisesTaskD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %i.a) #17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal30ResolveAsyncWaiterPromisesTaskD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  tail call void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(48) %i.a) #17
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 48) #20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N2v88internal14CancelableTask3RunEv(ptr noundef %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = cmpxchg ptr %i.a, i32 0, i32 2 acq_rel acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN2v88internal14CancelableTask3RunEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #17, !inline_history !51
  br label %_ZN2v88internal14CancelableTask3RunEv.exit

_ZN2v88internal14CancelableTask3RunEv.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal10CancelableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapIPvN2v88internal13FutexWaitList11HeadAndTailESt4lessIS0_ESaISt4pairIKS0_S4_EEE6insertERKS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i.i = load ptr, ptr %i.a, align 8       ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e                  ; 2 uses
  %.in.v.i.i = select i1 %i.f, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !24

._crit_edge.i.i:                                  ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.a
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %.019.lcssa29.i.i, %i.h
  br i1 %i.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.pre18.i = load ptr, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.k = phi ptr [ %.pre18.i, %bb.c ], [ %i.c, %._crit_edge.i.i ]
  %i.l = phi ptr [ %.pre.i, %bb.c ], [ %i.e, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.c ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.j, %bb.c ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.m = icmp ult ptr %i.l, %i.k
  br i1 %i.m, label %select.unfold.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE16_M_insert_uniqueIRKS7_EES1_ISt17_Rb_tree_iteratorIS7_EbEOT_.exit

select.unfold.i:                                  ; preds = %bb.d, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.d ] ; 3 uses
  %i.n = icmp eq ptr %.sroa.4.0.i.ph.i, %i.b
  br i1 %i.n, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %i.o, %i.q
  br label %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i

_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i: ; preds = %bb.e, %select.unfold.i
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold.i ]
  %i.t = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  br label %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE16_M_insert_uniqueIRKS7_EES1_ISt17_Rb_tree_iteratorIS7_EbEOT_.exit

_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE16_M_insert_uniqueIRKS7_EES1_ISt17_Rb_tree_iteratorIS7_EbEOT_.exit: ; preds = %bb.d, %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i
  %.sroa.010.0.i = phi ptr [ %i.t, %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i ], [ %.sroa.05.0.i.i, %bb.d ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_N2v88internal13FutexWaitList11HeadAndTailEESt10_Select1stIS7_ESt4lessIS0_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i ], [ 0, %bb.d ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.3.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base8SmallMapISt3mapIPvNS_8internal13FutexWaitList11HeadAndTailESt4lessIS3_ESaISt4pairIKS3_S6_EEELm16ENS0_8internal16select_equal_keyISD_Lb0EE9equal_keyENSE_19SmallMapDefaultInitISD_EEE16ConvertToRealMapEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %1 = alloca %union.Storage.564, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef nonnull align 8 dereferenceable(384) %i.a, i64 384, i1 false)
  store i64 -1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3mapIPvN2v88internal13FutexWaitList11HeadAndTailESt4lessIS0_ESaISt4pairIKS0_S4_EEE6insertEOS9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt3mapIPvN2v88internal13FutexWaitList11HeadAndTailESt4lessIS0_ESaISt4pairIKS0_S4_EEE6insertEOS9_.exit
  %.0710 = phi i64 [ 0, %bb.a ], [ %i.ab, %_ZNSt3mapIPvN2v88internal13FutexWaitList11HeadAndTailESt4lessIS0_ESaISt4pairIKS0_S4_EEE6insertEOS9_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.0710 ; 4 uses
  %.02022.i.i.i = load ptr, ptr %i.f, align 8     ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i
end_hunk_0
