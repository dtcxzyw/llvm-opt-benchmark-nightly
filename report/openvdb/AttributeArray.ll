Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArray?download=true
inline.NumInlined: 509
inline.NumDeleted: 246
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7openvdb5v13_06points14AttributeArrayaSERKS2_:bb.a
  store i32 0, ptr %i.af, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !55
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16, !inline_history !2
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16, !inline_history !2
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.as, %bb.m ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.n, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #16
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.j, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 24) #23
  br label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ay, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !55
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #16, !inline_history !91
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #16, !inline_history !91
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.t ], [ %i.bl, %bb.u ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.v, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i, !prof !57

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #16
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.r, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 24) #23
  br label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i, %bb.o, %_ZN7openvdb5v13_011compression10PageHandle4copyEv.exit, %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points14AttributeArray6createERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EjjbPKNS0_8MetadataEPKNS2_18ScopedRegistryLockE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr nofree noundef readnone captures(address_is_null) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), align 8, !tbaa !22
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 32), align 8, !tbaa !24
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 40), align 8, !tbaa !25
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 48), align 8, !tbaa !26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_06points12_GLOBAL__N_123LockedAttributeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  br label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit

_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.not.not.not = icmp eq ptr %6, null            ; 3 uses
  br i1 %.not.not.not, label %bb.d, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %i.e = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ], [ 1, %bb.d ] ; 8 uses
  %i.g = icmp slt i32 %.sroa.0.02.i.i, 17
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp sgt i32 %.sroa.0.02.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.02.i.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.01.i.i.i.i.prol = phi i32 [ %i.i, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.i = add nsw i32 %.01.i.i.i.i.prol, -1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !93

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.01.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.i.prol ]
  %i.j = icmp ult i32 %.sroa.0.02.i.i, 8
  br i1 %i.j, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.01.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i.i ], [ %.01.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.k = add nsw i32 %.01.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.l = icmp sgt i32 %.01.i.i.i.i, 8
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.m = shl i32 %.sroa.0.02.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.n = tail call noundef i32 @sched_yield() #16 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %bb.f, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.m, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ %.sroa.0.02.i.i, %bb.f ]
  %i.o = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, %bb.d, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %.sroa.033.0 = phi ptr [ null, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %bb.d ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ] ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i, label %.noexc18.a, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, %.noexc
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.noexc ], [ %i.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.noexc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i: ; preds = %.noexc
  %i.t = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16)
  br i1 %i.t, label %.noexc18.a, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.g
  %spec.select = select i1 %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr %.19.i.i.i
  br label %.noexc18.a

.noexc18.a:                                       ; preds = %.noexc18, %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit
  %.sroa.0.0.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i ], [ %spec.select, %.noexc18 ] ; 2 uses
  %10 = icmp eq ptr %.sroa.0.0.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16)
  br i1 %10, label %select.unfold, label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit

select.unfold:                                    ; preds = %.noexc18.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !63
  store i8 0, ptr %i.w, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %select.unfold
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.z = load ptr, ptr %1, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !63
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !63
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %bb.k ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9) #16 ; 0 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !42
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.g, %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %select.unfold
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.h
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.ap, %bb.j ]
  %.114 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.as = call ptr @__cxa_begin_catch(ptr %.114) #16 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_011LookupErrorE, i64 16), ptr %i.at, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN7openvdb5v13_011LookupErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.t unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.w
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.p
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !42
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.loopexit.split-lp

_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit: ; preds = %.noexc18.a
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67
  invoke void %i.ba(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.4") align 8 %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit
  br i1 %.not.not.not, label %bb.r, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  store atomic i8 0, ptr %.sroa.033.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %bb.q, %bb.r
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn15.pn = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  br i1 %.not.not.not, label %bb.s, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit30

bb.s:                                             ; preds = %.loopexit.split-lp
  store atomic i8 0, ptr %.sroa.033.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit30

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit30: ; preds = %.loopexit.split-lp, %bb.s
  resume { ptr, i32 } %.pn15.pn

bb.t:                                             ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7openvdb5v13_06points14AttributeArray12isRegisteredERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EPKNS2_18ScopedRegistryLockE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readnone captures(address_is_null) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), align 8, !tbaa !22
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 32), align 8, !tbaa !24
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 40), align 8, !tbaa !25
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 48), align 8, !tbaa !26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_06points12_GLOBAL__N_123LockedAttributeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  br label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit

_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.not.not.not = icmp eq ptr %1, null            ; 3 uses
  br i1 %.not.not.not, label %bb.d, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

bb.d:                                             ; preds = %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %i.e = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ], [ 1, %bb.d ] ; 8 uses
  %i.g = icmp slt i32 %.sroa.0.02.i.i, 17
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp sgt i32 %.sroa.0.02.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.02.i.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.01.i.i.i.i.prol = phi i32 [ %i.i, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.i = add nsw i32 %.01.i.i.i.i.prol, -1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !94

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.01.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.i.prol ]
  %i.j = icmp ult i32 %.sroa.0.02.i.i, 8
  br i1 %i.j, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.01.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i.i ], [ %.01.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.k = add nsw i32 %.01.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.l = icmp sgt i32 %.01.i.i.i.i, 8
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.m = shl i32 %.sroa.0.02.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.n = tail call noundef i32 @sched_yield() #16 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %bb.f, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.m, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ %.sroa.0.02.i.i, %bb.f ]
  %i.o = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, %bb.d, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %.sroa.013.0 = phi ptr [ null, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %bb.d ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ] ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, %.noexc
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.noexc ], [ %i.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.noexc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i: ; preds = %.noexc
  %i.t = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16)
  br i1 %i.t, label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.g
  %not. = xor i1 %i.v, true
  br label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit

_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit: ; preds = %.noexc8, %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit
  %.sroa.0.0.i.i = phi i1 [ false, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ], [ false, %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE14_M_lower_boundEPSt13_Rb_tree_nodeISK_EPSt18_Rb_tree_node_baseRS8_.exit.i.i ], [ %not., %.noexc8 ]
  br i1 %.not.not.not, label %bb.h, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit
  store atomic i8 0, ptr %.sroa.013.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE4findERSL_.exit, %bb.h
  ret i1 %.sroa.0.0.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.g
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.not.not, label %bb.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit11

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store atomic i8 0, ptr %.sroa.013.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit11

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit11: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  resume { ptr, i32 } %lpad.loopexit.split-lp16
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7openvdb5v13_06points14AttributeArray13clearRegistryEPKNS2_18ScopedRegistryLockE(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry acquire, align 8
end_hunk_0
