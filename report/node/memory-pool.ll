inline.NumInlined: 2403
inline.NumDeleted: 1226
begin_hunk_0_@_ZN2v88internal10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateE:bb.a

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.an = icmp slt i8 %i.am, -1
  br i1 %i.an, label %.lr.ph.i.i17.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i17.i:                                   ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i, %.lr.ph.i.i17.i
  %i.ao = phi ptr [ %i.ar, %.lr.ph.i.i17.i ], [ %i.al, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i ]
  %i.ap = phi ptr [ %i.aq, %.lr.ph.i.i17.i ], [ %i.ak, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.as = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.at = icmp slt i8 %i.as, -1
  br i1 %i.at, label %.lr.ph.i.i17.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !27

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i17.i, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i
  %.sroa.01.1.i = phi ptr [ %i.ak, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i ], [ %i.aq, %.lr.ph.i.i17.i ]
  %.sroa.9.1.i = phi ptr [ %i.al, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i ], [ %i.ar, %.lr.ph.i.i17.i ]
  %i.au = phi i8 [ %i.am, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator14assert_is_fullEPKc.exit.i.i ], [ %i.as, %.lr.ph.i.i17.i ]
  %i.av = icmp eq i8 %i.au, -1
  br i1 %i.av, label %bb.m, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.i.backedge, !prof !26

bb.m:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.i.backedge

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.i.backedge: ; preds = %bb.m, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i
  %.sroa.01.0.i.be = phi ptr [ null, %bb.m ], [ %.sroa.01.1.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iterator21skip_empty_or_deletedEv.exit.i.i ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE5beginEv.exit.i

.loopexit.i:                                      ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit.i, %bb.d
  %.3.i = phi ptr [ %i.n, %bb.d ], [ %i.aj, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratordeEv.exit.i ] ; 5 uses
  %.not16.not.i = icmp eq ptr %.3.i, null
  br i1 %.not16.not.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.3.i, i64 63840
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3.i, i64 63848
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !28 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, null     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !noalias !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.ba, align 4, !noalias !28
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !noalias !28
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4, !noalias !28 ; 0 uses
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i

_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i: ; preds = %bb.q, %bb.p, %bb.n
  %i.bf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !31 ; 6 uses
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull %.3.i) #20, !noalias !31
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal10MemoryPool23ReleasePooledChunksTaskE, i64 16), ptr %i.bf, align 8, !noalias !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal10MemoryPool23ReleasePooledChunksTaskE, i64 64), ptr %i.bg, align 8, !noalias !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr %.3.i, ptr %i.bh, align 8, !noalias !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %0, ptr %i.bi, align 8, !noalias !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i64 %i.f, ptr %i.bj, align 8, !noalias !31
  %i.bk = tail call noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) @"_ZZZN2v88internal10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEENK3$_0clES3_E26kReleaseTaskDelayInSeconds") #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.constant.20, ptr %2, align 8
  %i.bl = ptrtoint ptr %i.bg to i64
  store i64 %i.bl, ptr %3, align 8
  %i.bm = load ptr, ptr %i.ax, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %3, double noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %2) #20, !inline_history !34
  %i.bp = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal10MemoryPool23ReleasePooledChunksTaskESt14default_deleteIS3_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #20, !inline_history !35
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool23ReleasePooledChunksTaskESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v88internal10MemoryPool23ReleasePooledChunksTaskESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i, %_ZNK2v88internal7Isolate11task_runnerEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not.i.i.i.i.i.i, label %"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread", label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal10MemoryPool23ReleasePooledChunksTaskESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.az, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #20, !inline_history !36
  %i.cb = load ptr, ptr %i.az, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #20, !inline_history !36
  br label %"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread"

bb.t:                                             ; preds = %bb.r
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.u ], [ %i.cg, %bb.v ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.w, label %"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread", !prof !26

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #20
  br label %"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread"

"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread": ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %_ZNSt10unique_ptrIN2v88internal10MemoryPool23ReleasePooledChunksTaskESt14default_deleteIS3_EED2Ev.exit.i.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #20
  br label %bb.x

.loopexit:                                        ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashSetPolicyIPN2v88internal7IsolateEEENS0_6HashEqIS6_vE4HashENS9_2EqESaIS6_EE8iteratorESG_.exit.i, %.loopexit.i
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #20
  tail call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  tail call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h)
  br label %bb.x

bb.x:                                             ; preds = %"_ZN2v88internal12IsolateGroup24FindAnotherIsolateLockedIZNS0_10MemoryPool17ReleaseOnTearDownEPNS0_7IsolateEE3$_0EEbS5_T_.exit.thread", %.loopexit, %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN2v88internal10MemoryPool17LargePagePoolImpl10ReleaseAllEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ci)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool18ReleaseImmediatelyEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE12ReleaseLocalEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN2v88internal10MemoryPool17LargePagePoolImpl10ReleaseAllEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE17MoveLocalToSharedEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.590", align 8    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.i = icmp eq ptr %i.h, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i, 48
  %i.n = ptrtoint ptr %1 to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.m, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.c        ; 4 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 1     ; 4 uses
  %i.av = icmp eq ptr %i.at, null                 ; 2 uses
  %i.aw = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  br i1 %i.aw, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.av, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ba = load i8, ptr %i.at, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  store i64 %2, ptr %3, align 8, !alias.scope !38
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !noalias !38 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !alias.scope !38
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !38 ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !alias.scope !38
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !38 ; 2 uses
  store ptr %i.bk, ptr %i.bi, align 8, !alias.scope !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false), !noalias !38
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not.i.i1 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i1, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.thread

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.thread: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  store i64 %2, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.be, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bh, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bk, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.bl, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.bt, ptr %i.bl, align 8
  br label %_ZNSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEED2Ev.exit

_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  call void @_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre = load ptr, ptr %i.bd, align 8            ; 3 uses
  %.pre13 = load ptr, ptr %i.bf, align 8          ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre13
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i ], [ %.pre, %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit ] ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bv, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  store ptr null, ptr %i.bu, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i, i32 noundef 3) #20, !inline_history !42 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, %.pre13
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bd, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit
  %i.ce = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i ], [ %.pre, %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE9push_backEOSC_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i
  %i.cf = load ptr, ptr %i.bi, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #22
  br label %_ZNSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEED2Ev.exit

_ZNSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5eraseENSQ_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.at, ptr %i.au)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEED2Ev.exit, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp ne ptr %i.ck, %i.cm
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  ret i1 %i.cn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE17MoveLocalToSharedEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.610", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.b        ; 4 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !44

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 1     ; 4 uses
  %i.au = icmp eq ptr %i.as, null                 ; 2 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.az = load i8, ptr %i.as, align 1
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  store i64 %2, ptr %3, align 8, !alias.scope !45
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !45 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !45
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !45 ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !alias.scope !45
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !45 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !alias.scope !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false), !noalias !45
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not.i.i1 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i1, label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.thread

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.thread: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit
  store i64 %2, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bd, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bg, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bj, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.bk, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store ptr %i.bs, ptr %i.bk, align 8
  br label %_ZNSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEED2Ev.exit

_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit
  call void @_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.pre13 = load ptr, ptr %i.be, align 8          ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre13
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.pre, %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit ] ; 2 uses
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bt, %.pre13
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bc, align 8
  br label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit
  %i.bu = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i ], [ %.pre, %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE9push_backEOS6_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i
  %i.bv = load ptr, ptr %i.bh, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEED2Ev.exit

_ZNSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.thread, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.as, ptr nonnull %i.at)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEED2Ev.exit, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ne ptr %i.ca, %i.cc
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret i1 %i.cd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::vector.40", align 8    ; 4 uses
  %2 = alloca %"class.std::vector.40", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8
  store <2 x ptr> %i.f, ptr %2, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.h, ptr %i.d, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.i = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i.i.i, i32 noundef 3) #20, !inline_history !49 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.y = phi ptr [ %.pr.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #22
  br label %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvT_SF_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvT_SF_.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.e, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvT_SF_.exit.i.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  call void @_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EEaSEOS8_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvT_S9_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EEaSEOS8_.exit, %_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i ], [ %i.c, %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EEaSEOS8_.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i ] ; 2 uses
  tail call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i.i.i) #20
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #22
  br label %_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i: ; preds = %bb.a, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvT_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZSt8_DestroyIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvT_S9_.exit.i: ; preds = %_ZSt8_DestroyISt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvPT_.exit.i.i.i, %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EEaSEOS8_.exit
  %.not.i.i1.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvT_S9_.exit.i
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.c to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.v) #22
  br label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS4_EEEEvT_S9_.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.i = icmp eq ptr %i.h, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.j, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %sext.i = shl i64 %i.l, 48
  %i.m = ashr exact i64 %sext.i, 48
  %i.n = ptrtoint ptr %1 to i64
  %i.o = xor i64 %i.n, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  %i.u = xor i64 %i.m, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.x, align 8 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.c        ; 4 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %1
  br i1 %i.al, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 1     ; 4 uses
  %i.av = icmp eq ptr %i.at, null                 ; 2 uses
  %i.aw = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  br i1 %i.aw, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.av, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.thread, label %bb.k

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.thread: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.az = load i8, ptr %i.at, align 1
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5eraseENSQ_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.at, ptr %i.au)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %.not4.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i ], [ %i.bc, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bi, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not.i.i.i.i.i.i.i.i1 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i1, label %bb.n, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  store ptr null, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, i32 noundef 3) #20, !inline_history !52 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.bq, %i.be
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i
  %i.br = ptrtoint ptr %i.bg to i64
  %i.bs = ptrtoint ptr %i.bc to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bt) #22
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE12ReleaseLocalEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.b        ; 4 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !44

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 5 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 1     ; 4 uses
  %i.au = icmp eq ptr %i.as, null                 ; 2 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.thread, label %bb.k

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.thread: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  br label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %i.ay = load i8, ptr %i.as, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5eraseENSK_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.as, ptr %i.at)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %.not4.i.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.bb, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 2 uses
  tail call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.bg, %i.bd
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #22
  br label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.thread, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool23ReleaseLargeImmediatelyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN2v88internal10MemoryPool17LargePagePoolImpl10ReleaseAllEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool21ReleaseAllImmediatelyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  tail call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE12ReleaseLocalEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  tail call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE13ReleaseSharedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN2v88internal10MemoryPool17LargePagePoolImpl10ReleaseAllEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE12ReleaseLocalEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::vector.666", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.i = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ]
  %i.l = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.c, %bb.d
  %.sroa.6.0.i = phi ptr [ undef, %bb.a ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %i.m, %.lr.ph.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit.backedge, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  %.sroa.06.0 = phi ptr [ %.sroa.0.0.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit ], [ %.sroa.06.0.be, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit.backedge ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %.sroa.6.0.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit ], [ %.sroa.9.1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit.backedge ] ; 4 uses
  %i.s = icmp eq ptr %.sroa.06.0, null            ; 2 uses
  %i.t = icmp eq ptr %.sroa.06.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit
  %i.u = load i8, ptr %.sroa.06.0, align 1
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorppEv.exit
  br i1 %i.t, label %bb.g, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.g:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.s, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN2v88internal10MemoryPool11ReleaseUpToEPNS0_7IsolateEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %4, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS7_EEESaISC_EEES3_ISF_SaISF_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS6_10MemoryPool8PoolImplISC_E11ReleaseUpToEmEUlRT_E_EEEESQ_SQ_SQ_T0_(ptr %i.f, ptr %i.e, ptr nonnull align 8 %3) ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE11ReleaseUpToEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p
  %i.r = call ptr @_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSC_SE_EESI_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.n, ptr %i.q) ; 0 uses
  br label %_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE11ReleaseUpToEm.exit

_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE11ReleaseUpToEm.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.s = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZNSt6vectorIS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = call noundef i64 @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE11ReleaseUpToEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %2)
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1061), align 1, !range !8, !noundef !9
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE11ReleaseUpToEm.exit
  call void (ptr, ptr, ...) @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320) %1, ptr noundef nonnull @.str.2, i64 noundef %i.s, i64 noundef %i.u) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE11ReleaseUpToEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE11ReleaseUpToEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.683, align 8            ; 6 uses
  %3 = alloca %"class.std::vector.673", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %3, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %1, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = call ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt6vectorIN2v88internal13VirtualMemoryESaIS6_EEES3_IS9_SaIS9_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool8PoolImplIS6_E11ReleaseUpToEmEUlRT_E_EEEESK_SK_SK_T0_(ptr %i.f, ptr %i.e, ptr nonnull align 8 %2) ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p
  %i.r = call ptr @_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS6_S8_EESC_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.n, ptr %i.q) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.s = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.t = load ptr, ptr %3, align 8                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i ], [ %i.t, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 5 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i.i) #20
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8
  br label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exitthread-pre-split.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exitthread-pre-split.i ], [ %i.t, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2v88internal13VirtualMemoryESaIS2_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #22
  br label %_ZNSt6vectorIS_IN2v88internal13VirtualMemoryESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2v88internal13VirtualMemoryESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2v88internal13VirtualMemoryESaIS3_EEEvT_S7_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 %i.s
}

declare void @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal10MemoryPool8GetCountEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE9LocalSizeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE9LocalSizeEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.b    ; 4 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !21

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.017.047.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.al, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ai, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %i.au = icmp eq ptr %i.as, null                 ; 2 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_14const_iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  br i1 %i.au, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit
  %i.ay = load i8, ptr %i.as, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorptEv.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 40
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorptEv.exit
  %i.bi = phi i64 [ %i.bh, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorptEv.exit ], [ 0, %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret i64 %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal10MemoryPool14GetSharedCountEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE10SharedSizeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.010.i = phi i64 [ %i.o, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.05.09.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 40
  %i.o = add i64 %i.n, %.010.i                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE10SharedSizeEv.exit, label %.lr.ph.i

_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE10SharedSizeEv.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.o, %.lr.ph.i ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal10MemoryPool13GetTotalCountEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8 ; 2 uses
  %i.i = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.j = icmp slt i8 %i.i, -1
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ]
  %i.l = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader, !llvm.loop !53

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.c, %bb.d
  %.sroa.013.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ null, %bb.a ], [ %i.m, %.lr.ph.i.i.i ]
  %.sroa.9.0.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ undef, %bb.a ], [ %i.n, %.lr.ph.i.i.i ]
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit: ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.backedge, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader
  %.sroa.013.0 = phi ptr [ %.sroa.013.0.ph, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader ], [ %.sroa.013.0.be, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.backedge ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader ], [ %.sroa.9.1, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.backedge ] ; 3 uses
  %.0 = phi i64 [ 0, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.preheader ], [ %i.aj, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit.backedge ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.013.0, null           ; 2 uses
  %i.r = icmp eq ptr %.sroa.013.0, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  %i.s = load i8, ptr %.sroa.013.0, align 1
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i: ; preds = %bb.e, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  br i1 %i.r, label %bb.g, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit, !prof !26

bb.g:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i.i
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE14const_iteratorEST_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE8PutLocalEPNS0_7IsolateES9_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.j, align 8, !noalias !67
  %i.k = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #20, !noalias !67
  %i.l = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !67
  %.pre = load ptr, ptr %i.a, align 8, !noalias !70
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !71 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !71
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %i.q = ptrtoint ptr %1 to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %i.x = xor i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !71 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !71
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !71 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !71
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit, label %.critedge.i, !prof !21

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, !prof !26

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #20, !noalias !71
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !71
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i
  %i.bb = phi ptr [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ]
  %.sroa.3.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ] ; 3 uses
  store ptr %i.bb, ptr %.sroa.3.0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.3.1 = phi ptr [ %.sroa.3.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i

_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i: ; preds = %bb.h, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  store ptr null, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.bs, ptr %i.bd, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 8
  call void @_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool6RemoveEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.547", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.547") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 3) #20, !inline_history !74 ; 0 uses
  br label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %.05
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.547") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.0106 = alloca %"struct.std::_Tuple_impl.539", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = icmp ult i64 %i.e, 2                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.k = icmp eq ptr %i.j, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.k, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = ptrtoint ptr %2 to i64
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64
  %i.w = xor i64 %i.o, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.w, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.e                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not44.i.i = icmp eq i16 %i.as, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ao, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  %i.av = icmp ult i64 %i.n, 131072
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i
  %.not.i.i17 = phi i1 [ %i.av, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ true, %bb.b ], [ false, %bb.c ]
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = icmp eq ptr %i.aw, null                 ; 2 uses
  %i.az = icmp eq ptr %i.aw, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  %i.ba = load i8, ptr %i.aw, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  br i1 %i.az, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ay, label %bb.k, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0106)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0106, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit: ; preds = %bb.m, %bb.n
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  store ptr null, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -40 ; 4 uses
  store ptr %i.bu, ptr %i.bj, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i14, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bw, ptr %i.c, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i: ; preds = %bb.o
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  store ptr null, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i32 noundef 3) #20, !inline_history !76 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit: ; preds = %bb.q, %bb.r
  %i.ce = load ptr, ptr %i.bh, align 8
  %i.cf = load ptr, ptr %i.bj, align 8
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit
  %i.ch = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  store ptr %i.ci, ptr %i.be, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.s ] ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.co, ptr %i.b, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  store ptr null, ptr %i.cn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, i32 noundef 3) #20, !inline_history !78 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.cw, %i.cm
  br i1 %.not.i.i.i.i.i.i15, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.cj, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, %bb.s
  %i.cx = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal10MemoryPool18AddZoneReservationEPNS0_7IsolateENS0_13VirtualMemoryE:bb.a
  %i.c = load ptr, ptr %2, align 8
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  tail call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE8PutLocalEPNS0_7IsolateES3_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %1, ptr noundef nonnull %3)
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE8PutLocalEPNS0_7IsolateES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = load i64, ptr %0, align 8, !noalias !90  ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !97
  %.not.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !97 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 8, !noalias !97
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !97
  store ptr %0, ptr %3, align 8, !noalias !97
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.j, align 8, !noalias !97
  %i.k = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #20, !noalias !97
  %i.l = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !97
  %.pre = load ptr, ptr %i.a, align 8, !noalias !100
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !101 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !101
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !101
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %i.q = ptrtoint ptr %1 to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %i.x = xor i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !101 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !101
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !101 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !101
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit, label %.critedge.i, !prof !21

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i, !prof !26

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #20, !noalias !101
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !101
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i
  %i.bb = phi ptr [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i ]
  %.sroa.3.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.thread.i.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE22find_or_prepare_insertIS6_EESG_INSK_8iteratorEbERKT_.exit.i._crit_edge.i.i ] ; 3 uses
  store ptr %i.bb, ptr %.sroa.3.0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.3.1 = phi ptr [ %.sroa.3.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bi = load ptr, ptr %2, align 8
  store ptr %i.bi, ptr %i.be, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %i.bk = load ptr, ptr %i.bd, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bl, ptr %i.bd, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEEixIS6_SB_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 8
  call void @_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.g, %bb.h
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool21RemoveZoneReservationEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.573") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE3GetEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"class.std::optional.573") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplINS0_13VirtualMemoryEE3GetEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.573") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.h = icmp eq ptr %i.g, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = ptrtoint ptr %2 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.b        ; 4 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %2
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !44

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  %i.as = icmp ult i64 %i.k, 131072
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i
  %.not.i.i14 = phi i1 [ %i.as, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i ], [ true, %bb.b ], [ false, %bb.c ]
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE10find_largeIS6_EENSK_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 1
  %i.av = icmp eq ptr %i.at, null                 ; 2 uses
  %i.aw = icmp eq ptr %i.at, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE4findIS6_EENSK_8iteratorERKT_.exit
  br i1 %i.aw, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.av, label %bb.k, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -24 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -16 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  store ptr %i.bl, ptr %3, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  tail call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #20
  %i.bn = load ptr, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24 ; 2 uses
  store ptr %i.bo, ptr %i.bg, align 8
  tail call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #20
  %i.bp = load ptr, ptr %i.be, align 8
  %i.bq = load ptr, ptr %i.bg, align 8
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE8pop_backEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -32
  store ptr %i.bt, ptr %i.bb, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 -16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %bb.n ] ; 2 uses
  tail call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #20
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bu, align 8
  br label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i

_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i, %bb.n
  %i.bz = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exitthread-pre-split.i.i.i.i ], [ %i.bv, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE8pop_backEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #22
  br label %_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE8pop_backEv.exit

_ZNSt6vectorISt4pairImS_IN2v88internal13VirtualMemoryESaIS3_EEESaIS6_EE8pop_backEv.exit: ; preds = %bb.o, %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i.i.i.i, %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cg, align 8
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge:                                        ; preds = %bb.l, %bb.k
  br i1 %.not.i.i14, label %.critedge13, label %bb.p, !prof !26

bb.p:                                             ; preds = %.critedge
  br i1 %i.c, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i16 = load ptr, ptr %i.ch, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit

bb.r:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ci, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cj, align 8 ; 2 uses
  %i.ck = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.cl = icmp slt i8 %i.ck, -1
  br i1 %i.cl, label %.lr.ph.i.i15, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit

.lr.ph.i.i15:                                     ; preds = %bb.r, %.lr.ph.i.i15
  %i.cm = phi ptr [ %i.cp, %.lr.ph.i.i15 ], [ %.sroa.0.0.copyload.i.i.i, %bb.r ]
  %i.cn = phi ptr [ %i.co, %.lr.ph.i.i15 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.r ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = icmp slt i8 %i.cq, -1
  br i1 %i.cr, label %.lr.ph.i.i15, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit, !llvm.loop !54

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit: ; preds = %.lr.ph.i.i15, %bb.r, %bb.q, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %.sroa.020.0 = phi ptr [ %i.at, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.r ], [ @_ZN4absl18container_internal11kSooControlE, %bb.q ], [ %i.co, %.lr.ph.i.i15 ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %i.au, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit ], [ %.sroa.0.0.copyload.i.i.i, %bb.r ], [ %.sroa.0.0.copyload.i.i.i.i.i.i16, %bb.q ], [ %i.cp, %.lr.ph.i.i15 ] ; 3 uses
  %i.cs = icmp eq ptr %.sroa.020.0, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.cs, label %.critedge70, label %bb.s

bb.s:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit
  %i.ct = load i8, ptr %.sroa.020.0, align 1
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

.critedge70:                                      ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE5beginEv.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit: ; preds = %bb.s
  %i.cv = load i8, ptr %.sroa.020.0, align 1
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit, label %bb.u, !prof !21

bb.u:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorINS4_13VirtualMemoryESaIS8_EEEENS0_6HashEqIS6_vE4HashENSD_2EqESaISt4pairIKS6_SA_EEE8iteratorESN_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
end_hunk_3
