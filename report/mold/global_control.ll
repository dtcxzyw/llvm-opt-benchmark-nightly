Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/global_control?download=true
inline.NumInlined: 175
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3tbb6detail2r125remove_and_check_if_emptyERNS0_2d114global_controlE:bb.a
  %i.s = shl i32 %.sroa.0.0.i.i.i.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer, !llvm.loop !1

bb.f:                                             ; preds = %.critedge.i.i.i.i
  %i.t = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i: ; preds = %bb.d
  %i.u = invoke noundef zeroext i1 @_ZN3tbb6detail2r119global_control_impl16erase_if_presentEPNS1_15control_storageERNS0_2d114global_controlE(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %_ZN3tbb6detail2r119global_control_impl25remove_and_check_if_emptyERNS0_2d114global_controlE.exit unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit8.i ; 0 uses

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit8.i: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.h release, align 1
  resume { ptr, i32 } %i.v

_ZN3tbb6detail2r119global_control_impl25remove_and_check_if_emptyERNS0_2d114global_controlE.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = icmp eq i64 %i.x, 0
  store atomic i8 0, ptr %i.h release, align 8
  ret i1 %i.y
}

; Function Attrs: mustprogress sspstrong uwtable
define noundef i64 @_ZN3tbb6detail2r127global_control_active_valueEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 5
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r117assertion_failureEPKciS3_S3_(ptr noundef nonnull @__func__._ZN3tbb6detail2r127global_control_active_valueEi, i32 noundef 293, ptr noundef nonnull @.str, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN3tbb6detail2r1L8controlsE, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(65) %i.d)
  ret i64 %i.h
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r127allowed_parallelism_controlD0Ev(ptr noundef nonnull align 128 dereferenceable(65) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r115control_storageE, i64 16), ptr %0, align 128, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 32, !tbaa !46
  invoke void @_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3tbb6detail2r115control_storageD2Ev.exit unwind label %bb.b, !inline_history !47

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #16, !inline_history !47
  unreachable

_ZN3tbb6detail2r115control_storageD2Ev.exit:      ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef i64 @_ZNK3tbb6detail2r127allowed_parallelism_control13default_valueEv(ptr noundef nonnull align 128 dereferenceable(65) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef i32 @_ZN3tbb6detail2r122AvailableHwConcurrencyEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr @_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads, align 4, !tbaa !62
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #12
  br label %_ZN3tbb6detail2r18governor19default_num_threadsEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads) #12
  resume { ptr, i32 } %i.e

_ZN3tbb6detail2r18governor19default_num_threadsEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load i32, ptr @_ZZN3tbb6detail2r18governor19default_num_threadsEvE11num_threads, align 4, !tbaa !62
  %..i = tail call noundef i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %i.g = zext i32 %..i to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r127allowed_parallelism_control12apply_activeEm(ptr noundef nonnull align 128 dereferenceable(65) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = trunc i64 %1 to i32
  %i.c = add i32 %i.b, -1
  tail call void @_ZN3tbb6detail2r117threading_control22set_active_num_workersEj(i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3tbb6detail2r127allowed_parallelism_control22is_first_arg_preferredEmm(ptr noundef nonnull align 128 dereferenceable(65) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %1, %2
  ret i1 %i.a
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef i64 @_ZN3tbb6detail2r127allowed_parallelism_control12active_valueEv(ptr noundef nonnull align 128 dereferenceable(65) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.ph = phi i32 [ %i.l, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ], [ 1, %bb.a ] ; 7 uses
  %i.b = icmp slt i32 %.sroa.0.0.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer, %bb.d
  %i.c = load atomic i8, ptr %i.a monotonic, align 64, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %i.e = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.critedge.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.0.i.i.i.ph, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.0.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !63

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.0.i.i.i.ph, 8
  br i1 %i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.0.i.i.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer, !llvm.loop !1

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  %i.q = load ptr, ptr %0, align 128, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i64 %i.s(ptr noundef nonnull align 128 dereferenceable(65) %0)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit unwind label %1

1:                                                ; preds = %bb.e
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit10

bb.f:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  %i.u = invoke noundef i32 @_ZN3tbb6detail2r117threading_control15max_num_workersEv()
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !64
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 %i.y)
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit10

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.e
  %.06 = phi i64 [ %i.t, %bb.e ], [ %..i, %bb.h ], [ %i.aa, %bb.i ]
  store atomic i8 0, ptr %i.a release, align 64
  ret i64 %.06

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit10: ; preds = %bb.j, %1
  %.pn = phi { ptr, i32 } [ %2, %1 ], [ %i.ab, %bb.j ]
  store atomic i8 0, ptr %i.a release, align 64
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r115control_storageD0Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #16
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r115control_storage12apply_activeEm(ptr noundef nonnull align 8 dereferenceable(65) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3tbb6detail2r115control_storage22is_first_arg_preferredEmm(ptr noundef nonnull align 8 dereferenceable(65) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  ret i1 %i.a
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef i64 @_ZN3tbb6detail2r115control_storage12active_valueEv(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.ph = phi i32 [ %i.l, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ], [ 1, %bb.a ] ; 7 uses
  %i.b = icmp slt i32 %.sroa.0.0.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer, %bb.d
  %i.c = load atomic i8, ptr %i.a monotonic, align 8, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %i.e = atomicrmw xchg ptr %i.a, i8 1 seq_cst, align 1
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.critedge.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.0.i.i.i.ph, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.0.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.h = add nsw i32 %.01.i.i.i.i.i.prol, -1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !65

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %.sroa.0.0.i.i.i.ph, 8
  br i1 %i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.j = add nsw i32 %.01.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.k = icmp sgt i32 %.01.i.i.i.i.i, 8
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, !llvm.loop !0

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl i32 %.sroa.0.0.i.i.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.outer, !llvm.loop !1

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i, !llvm.loop !1

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit

bb.f:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit3

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit: ; preds = %bb.f, %bb.e
  %i.w = phi i64 [ %i.r, %bb.e ], [ %i.v, %bb.f ]
  store atomic i8 0, ptr %i.a release, align 8
  ret i64 %i.w

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit3: ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.a release, align 8
  resume { ptr, i32 } %i.x
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit

_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]    ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  tail call void @_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.0)
          to label %_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit unwind label %bb.c, !llvm.loop !66

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #16
  unreachable

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIPN3tbb6detail2d114global_controlES4_St9_IdentityIS4_ENS1_2r126control_storage_comparatorENS2_13tbb_allocatorIS4_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  ret void
}

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

declare noundef i32 @_ZN3tbb6detail2r122AvailableHwConcurrencyEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

declare void @_ZN3tbb6detail2r117threading_control22set_active_num_workersEj(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN3tbb6detail2r117threading_control15max_num_workersEv() local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r118stack_size_controlD0Ev(ptr noundef nonnull align 128 dereferenceable(65) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r115control_storageE, i64 16), ptr %0, align 128, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 32, !tbaa !46
end_hunk_0
