Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArray?download=true
inline.NumInlined: 509
inline.NumDeleted: 246
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7openvdb5v13_06points14AttributeArray18ScopedRegistryLockC2Ev:bb.a
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
  store ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, ptr %0, align 8, !tbaa !80
  %i.e = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit ] ; 8 uses
  %i.g = icmp slt i32 %.sroa.0.02.i.i.i, 17
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.h = icmp sgt i32 %.sroa.0.02.i.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.02.i.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.i, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.i = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !77

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.i.i.prol ]
  %i.j = icmp ult i32 %.sroa.0.02.i.i.i, 8
  br i1 %i.j, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.k = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.l = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d
  %i.m = shl i32 %.sroa.0.02.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = tail call noundef i32 @sched_yield() #16 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %bb.e, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.m, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ %.sroa.0.02.i.i.i, %bb.e ]
  %i.o = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points14AttributeArrayC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 4 uses
  %i.b = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %bb.a ] ; 8 uses
  %i.d = icmp slt i32 %.sroa.0.02.i.i.i, 17
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.e = icmp sgt i32 %.sroa.0.02.i.i.i, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter = and i32 %.sroa.0.02.i.i.i, 7        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.f = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !81

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.f, %.lr.ph.i.i.i.i.i.prol ]
  %i.g = icmp ult i32 %.sroa.0.02.i.i.i, 8
  br i1 %i.g, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.h = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.i = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.i, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.b
  %i.j = shl i32 %.sroa.0.02.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = tail call noundef i32 @sched_yield() #16 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %bb.c, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.j, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i ], [ %.sroa.0.02.i.i.i, %bb.c ]
  %i.l = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, %bb.a
  invoke void @_ZN7openvdb5v13_06points14AttributeArrayC2ERKS2_RKN3tbb6detail2d118unique_scoped_lockINS7_10spin_mutexEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull align 8 poison)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  store atomic i8 0, ptr %i.a release, align 1
  ret void

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit5: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.a release, align 1
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points14AttributeArrayC2ERKS2_RKN3tbb6detail2d118unique_scoped_lockINS7_10spin_mutexEEE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTVN7openvdb5v13_06points14AttributeArrayE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !36, !range !37, !noundef !38
  store i8 %i.c, ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.d, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.g = load i8, ptr %i.f, align 2, !tbaa !39
  store i8 %i.g, ptr %i.e, align 2, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  store i8 %i.j, ptr %i.h, align 1, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load atomic i32, ptr %i.l seq_cst, align 4
  store i32 %i.m, ptr %i.k, align 4, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr null, ptr %i.n, align 8, !tbaa !86
  %i.o = load i8, ptr %i.e, align 2, !tbaa !39
  %i.p = and i8 %i.o, 32
  %.not = icmp eq i8 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42
  store i64 %i.r, ptr %i.n, align 8, !tbaa !42
  br label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !43   ; 4 uses
  %.not10 = icmp eq ptr %i.s, null
  br i1 %.not10, label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc unwind label %bb.m, !noalias !87 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50, !noalias !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51, !noalias !87
  invoke void @_ZN7openvdb5v13_011compression10PageHandleC1ERKSt10shared_ptrINS1_4PageEEii(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.v, i32 noundef %i.x)
          to label %_ZN7openvdb5v13_011compression10PageHandle4copyEv.exit unwind label %bb.e, !noalias !87

bb.e:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #23, !noalias !87
  br label %.body

_ZN7openvdb5v13_011compression10PageHandle4copyEv.exit: ; preds = %.noexc
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !43   ; 3 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !43
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_011compression10PageHandle4copyEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !55
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !2
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16, !inline_history !2
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.l, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i, !prof !57

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #16
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.h, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 24) #23
  br label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.y, %bb.e ]
  tail call void @_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #16
  resume { ptr, i32 } %eh.lpad-body

_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN7openvdb5v13_011compression10PageHandle4copyEv.exit, %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit.i.i.i.i, %bb.c, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !55
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !88
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16, !inline_history !88
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit, !prof !57

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #16
  br label %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit

_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_011compression10PageHandleEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN7openvdb5v13_06points14AttributeArrayaSERKS2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((8, 9), (11, 12)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !39
  %i.c = and i8 %i.b, 32
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36, !range !37, !noundef !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = load i8, ptr %i.h, align 2, !tbaa !39
  store i8 %i.i, ptr %i.a, align 2, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.k, ptr %i.l, align 1, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  store atomic i32 %i.o, ptr %i.m seq_cst, align 4
  %i.p = load i8, ptr %i.a, align 2, !tbaa !39
  %i.q = and i8 %i.p, 32
  %.not8 = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !42
  br label %_ZNSt10unique_ptrIN7openvdb5v13_011compression10PageHandleESt14default_deleteIS3_EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_06points14AttributeArray12registerTypeERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EPFSt10shared_ptrIS2_EjjbPKNS0_8MetadataEEPKNS2_18ScopedRegistryLockE:bb.a
  %.115 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.bf = call ptr @__cxa_begin_catch(ptr %.115) #16 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_08KeyErrorE, i64 16), ptr %i.bg, align 8, !tbaa !30
  invoke void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN7openvdb5v13_08KeyErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #24
          to label %bb.af unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %7, align 8, !tbaa !64    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.y
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.n
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.z

_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread36: ; preds = %bb.d, %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !55
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16, !inline_history !96
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16, !inline_history !96
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cc, label %bb.t, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #16
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EbRKSt4pairIT_T0_ESB_.exit.thread36, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cd = load atomic i8, ptr @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry acquire, align 8
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, !prof !12

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, align 8, !tbaa !15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), align 8, !tbaa !22
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 32), align 8, !tbaa !24
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 40), align 8, !tbaa !25
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 48), align 8, !tbaa !26
  %i.cg = call i32 @__cxa_atexit(ptr nonnull @_ZN7openvdb5v13_06points12_GLOBAL__N_123LockedAttributeRegistryD2Ev, ptr nonnull @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, ptr nonnull @__dso_handle) #16 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry) #16
  br label %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit

_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.u, %bb.v
  %.not.not.not = icmp eq ptr %2, null            ; 3 uses
  br i1 %.not.not.not, label %bb.w, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

bb.w:                                             ; preds = %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %i.ch = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.w, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ], [ 1, %bb.w ] ; 8 uses
  %i.cj = icmp slt i32 %.sroa.0.02.i.i, 17
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ck = icmp sgt i32 %.sroa.0.02.i.i, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.x
  %xtraiter = and i32 %.sroa.0.02.i.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.01.i.i.i.i.prol = phi i32 [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = add nsw i32 %.01.i.i.i.i.prol, -1       ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !97

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.01.i.i.i.i.unr = phi i32 [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cm = icmp ult i32 %.sroa.0.02.i.i, 8
  br i1 %i.cm, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.01.i.i.i.i = phi i32 [ %i.cn, %.lr.ph.i.i.i.i ], [ %.01.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.cn = add nsw i32 %.01.i.i.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.co = icmp sgt i32 %.01.i.i.i.i, 8
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i:   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.x
  %i.cp = shl i32 %.sroa.0.02.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.cq = call noundef i32 @sched_yield() #16     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %bb.y, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.cp, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i ], [ %.sroa.0.02.i.i, %bb.y ]
  %i.cr = atomicrmw xchg ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i8 1 seq_cst, align 1
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, !llvm.loop !1

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.bb, %bb.g ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i30, %bb.ac, %bb.ab
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.not.not, label %bb.aa, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store atomic i8 0, ptr %.sroa.0.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, %bb.w, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit
  %.sroa.0.0 = phi ptr [ null, %_ZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEv.exit ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %bb.w ], [ @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ] ; 2 uses
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 24), align 8, !tbaa !23 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.thread.i, label %.lr.ph.i.i.i.i30

_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.thread.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br label %.critedge.i

.lr.ph.i.i.i.i30:                                 ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit, %.noexc
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc ], [ %i.ct, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc ], [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.cv = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr noundef nonnull align 8 dereferenceable(64) %i.cu, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i30
  %.19.i.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.i, label %.lr.ph.i.i.i.i30, !llvm.loop !3

_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.i: ; preds = %.noexc
  %i.cw = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %i.cw, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = invoke noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.cx)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.cy, label %bb.ac, label %bb.ad

.critedge.i:                                      ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.i, %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.thread.i
  %.08.lcssa.i.i.i11.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 16), %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.thread.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EPFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSA_8MetadataEESt4lessIS7_ESaIS0_IKS7_SI_EEE11lower_boundERSL_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i, %.noexc31
  %.08.lcssa.i.i.i10.i = phi ptr [ %.08.lcssa.i.i.i11.i, %.critedge.i ], [ %.19.i.i.i.i, %.noexc31 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %0, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cz = invoke ptr @_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_PFSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEjjbPKNSB_8MetadataEEESt10_Select1stISK_ESt4lessIS7_ESaISK_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS8_EESV_IJEEEEESt17_Rb_tree_iteratorISK_ESt23_Rb_tree_const_iteratorISK_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_06points12_GLOBAL__N_120getAttributeRegistryEvE8registry, i64 8), ptr %.08.lcssa.i.i.i10.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc32, %.noexc31
  %.sroa.05.0.i = phi ptr [ %i.cz, %.noexc32 ], [ %.19.i.i.i.i, %.noexc31 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 96
  store ptr %1, ptr %i.da, align 8, !tbaa !101
  br i1 %.not.not.not, label %bb.ae, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit34

bb.ae:                                            ; preds = %bb.ad
  store atomic i8 0, ptr %.sroa.0.0 release, align 8
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit34

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit34: ; preds = %bb.ad, %bb.ae
  ret void

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %bb.aa, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.z ], [ %lpad.loopexit.split-lp46, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp46, %bb.aa ]
  resume { ptr, i32 } %.pn16.pn

bb.af:                                            ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_09ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !102
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !102
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points14AttributeArray14unregisterTypeERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EPKNS2_18ScopedRegistryLockE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readnone captures(address_is_null) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !103

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

bb.g:                                             ; preds = %.noexc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEE7acquireERS3_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
end_hunk_1
