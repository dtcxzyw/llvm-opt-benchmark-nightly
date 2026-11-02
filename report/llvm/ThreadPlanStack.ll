Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadPlanStack?download=true
inline.NumInlined: 1005
inline.NumDeleted: 458
begin_hunk_0_@_ZN12lldb_private15ThreadPlanStack7PopPlanEv:bb.a
_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i: ; preds = %bb.o, %bb.n, %bb.l
  %i.at = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.n ], [ %.pre.i, %bb.o ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.ai, align 8, !tbaa !51
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i, %bb.p
  %i.aw = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(224) %i.aw) #15
  %i.ba = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15ThreadPlanStack11DiscardPlanEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15
  %i.c = icmp eq i32 %i.b, 35
  br i1 %i.c, label %bb.b, label %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #17
  unreachable

_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.a
  tail call void @_ZN12lldb_private15ThreadPlanStack17DiscardPlanNoLockEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.d = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15ThreadPlanStack17DiscardPlanNoLockEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread, label %bb.b

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.h, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread10

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread10: ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !48
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !48
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.m, ptr %i.a, align 8, !tbaa !51
  br label %bb.c

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit: ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.pre, i64 -16
  store ptr %i.o, ptr %i.a, align 8, !tbaa !51
  %.not.i.i.i2 = icmp eq ptr %.pre5, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread10, %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit
  %i.p = phi ptr [ %i.f, %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread10 ], [ %.pre5, %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.q, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !36
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15, !inline_history !5
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15, !inline_history !5
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i3 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit, !prof !54

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #15
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.thread, %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %i.ak = load <2 x ptr>, ptr %0, align 8, !tbaa !53
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !53
  %.not.i.i.i.i4 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.al, align 4, !tbaa !48
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !48
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.aq = phi ptr [ %i.ag, %bb.i ], [ %i.ag, %bb.k ], [ %.pre.i, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ar, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE8pop_backEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private10ThreadPlanEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit.i, %bb.m
  %i.at = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(224) %i.at) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15ThreadPlanStack20DiscardPlansUpToPlanEPNS_10ThreadPlanE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15
  %i.c = icmp eq i32 %i.b, 35
  br i1 %i.c, label %bb.b, label %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #17
  unreachable

_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %.preheader, label %bb.j

.preheader:                                       ; preds = %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %i.m = icmp sgt i32 %i.k, 1
  br i1 %i.m, label %.lr.ph40, label %.critedge

.lr.ph40:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph40, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.018.in39 = phi i32 [ %i.k, %.lr.ph40 ], [ %.018, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.018 = add nsw i32 %.018.in39, -1
  call void @_ZN12lldb_private15ThreadPlanStack17DiscardPlanNoLockEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.p, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !36
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #15, !inline_history !1
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #15, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.ae = icmp samesign ugt i32 %.018.in39, 2
  br i1 %i.ae, label %bb.c, label %.critedge, !llvm.loop !128

bb.j:                                             ; preds = %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %i.af = add i32 %i.k, -1                        ; 2 uses
  %i.ag = icmp sgt i32 %i.k, 1
  br i1 %i.ag, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.j
  %4 = zext nneg i32 %i.af to i64
  br label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ah = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !129

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.lr.ph38, label %bb.k

.lr.ph38:                                         ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph38, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30
  %.037 = phi i32 [ %i.af, %.lr.ph38 ], [ %i.cb, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30 ] ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !55, !noalias !133 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33, !noalias !133
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42, !noalias !133 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 7 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47, !noalias !133
  %.not.i.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !48, !noalias !133
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !48, !noalias !133
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4, !noalias !133 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aw = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ar, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !36
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #15, !inline_history !1
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #15, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

bb.r:                                             ; preds = %bb.p
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i22 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i22, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.ar, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.t:                                             ; preds = %bb.r
  %i.bi = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i24 = phi i32 [ %i.ay, %bb.s ], [ %i.bi, %bb.t ]
  %i.bj = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.bj, label %bb.u, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, !prof !54

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25

_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25: ; preds = %bb.l, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.u
  %i.bk = icmp eq ptr %i.ao, %1
  call void @_ZN12lldb_private15ThreadPlanStack17DiscardPlanNoLockEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !42 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bm, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !36
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #15, !inline_history !1
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #15, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.x:                                             ; preds = %bb.v
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i27 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i27, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.z:                                             ; preds = %bb.x
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i29 = phi i32 [ %i.bp, %bb.y ], [ %i.bz, %bb.z ]
  %i.ca = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.ca, label %bb.aa, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !54

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #15
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.aa
  %i.cb = add nsw i32 %.037, -1
  %i.cc = icmp slt i32 %.037, 2
  %.not20 = select i1 %i.cc, i1 true, i1 %i.bk
  br i1 %.not20, label %.critedge, label %bb.l, !llvm.loop !132

.critedge:                                        ; preds = %bb.k, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %.preheader
  %i.cd = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZNK12lldb_private15ThreadPlanStack20GetCurrentPlanNoLockEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !48
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !48
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15ThreadPlanStack15DiscardAllPlansEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15
  %i.c = icmp eq i32 %i.b, 35
  br i1 %i.c, label %bb.b, label %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #17
  unreachable

_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = load ptr, ptr %0, align 8, !tbaa !88
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10lock_guardIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c
end_hunk_0
