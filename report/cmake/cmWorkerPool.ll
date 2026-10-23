Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmWorkerPool?download=true
inline.NumInlined: 1259
inline.NumDeleted: 719
begin_hunk_0_@_ZN20cmWorkerPoolInternal9UVSlotEndEP10uv_async_s:bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !155
  br label %_ZNSt6vectorISt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS1_EESaIS4_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS1_EESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @_ZN2cm19uv_handle_ptr_base_I10uv_async_sE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  ret void
}

declare i32 @uv_run(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20cmWorkerPoolInternal5AbortEv(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #26
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !169, !range !88, !noundef !89
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i8 1, ptr %i.c, align 1, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !161, !noalias !310
  store <2 x ptr> %i.h, ptr %1, align 16, !tbaa !161, !alias.scope !310
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !29, !noalias !310
  store <2 x ptr> %i.k, ptr %i.i, align 16, !tbaa !29, !alias.scope !310
  invoke void @_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE15_M_erase_at_endESt15_Deque_iteratorIS5_RS5_PS5_E(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dead_on_return %1)
          to label %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.n) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18cmWorkerPoolWorkerEclEPS0_.exit

_ZNKSt14default_deleteI18cmWorkerPoolWorkerEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN18cmWorkerPoolWorkerD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18cmWorkerPoolWorkerEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20cmWorkerPoolInternal4WorkEj(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_lock", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %.noexc

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !316
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !316
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !169, !range !88, !noundef !89
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.loopexit39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !157
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !157  ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.t, align 8, !tbaa !179
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.t, align 8, !tbaa !179
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.t, align 8, !tbaa !179
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !179
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %bb.w, %bb.v, %bb.e, %bb.g
  %i.ab = load i8, ptr %i.g, align 1, !tbaa !169, !range !88, !noundef !89
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.loopexit39, label %bb.c, !llvm.loop !311

bb.f:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.l, align 2, !tbaa !317, !range !88, !noundef !89
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EEaSEOS4_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit

_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.f
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !163 ; 11 uses
  store ptr null, ptr %i.v, align 8, !tbaa !163
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !318
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.not.i = icmp eq ptr %i.v, %i.ah
  br i1 %.not.i, label %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE16_M_pop_front_auxEv.exit.i, label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EEaSEOS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit

_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE16_M_pop_front_auxEv.exit.i: ; preds = %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EEaSEOS4_.exit
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !319
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef 512) #27
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !165
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !159
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !161 ; 3 uses
  store ptr %i.al, ptr %i.n, align 8, !tbaa !160
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.am, ptr %i.m, align 8, !tbaa !158
  br label %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit

_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit: ; preds = %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE16_M_pop_front_auxEv.exit.i
  %storemerge.i = phi ptr [ %i.ai, %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit.i ], [ %i.al, %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE16_M_pop_front_auxEv.exit.i ]
  store ptr %storemerge.i, ptr %i.k, align 8, !tbaa !180
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !320, !range !88, !noundef !89
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  br i1 %i.ap, label %bb.h, label %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit._crit_edge

_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit._crit_edge: ; preds = %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit
  %.pre63.a = load i32, ptr %i.p, align 4, !tbaa !321
  %i.aq = add i32 %.pre63.a, 1
  br label %bb.n

bb.h:                                             ; preds = %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit
  store i8 1, ptr %i.l, align 2, !tbaa !317
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ar = load i32, ptr %i.p, align 4, !tbaa !321
  %.not = icmp eq i32 %i.ar, 0
  %.pre62 = load i8, ptr %i.g, align 1, !tbaa !169, !range !88
  %.pre64 = trunc nuw i8 %.pre62 to i1            ; 2 uses
  br i1 %.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.pre64, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %bb.i unwind label %.loopexit, !llvm.loop !312

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, %bb.d, %bb.g
  %.sroa.0.1.ph.ph = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.af, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit ]
  %lpad.loopexit41 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.o, %bb.y
  %.sroa.0.1.ph.ph40 = phi ptr [ %.sroa.0.3, %bb.y ], [ %i.af, %bb.o ], [ null, %.invoke ]
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.sroa.0.1 = phi ptr [ %i.af, %.loopexit ], [ %.sroa.0.1.ph.ph, %.loopexit.split-lp.loopexit ], [ %.sroa.0.1.ph.ph40, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit41, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp ]
  %i.as = load i8, ptr %i.b, align 8, !tbaa !121, !range !88, !noundef !89
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.l:                                             ; preds = %.loopexit.split-lp
  %i.au = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.critedge:                                        ; preds = %bb.i
  br i1 %.pre64, label %.thread, label %bb.n

.thread:                                          ; preds = %.critedge, %bb.j
  store i8 0, ptr %i.l, align 2, !tbaa !317
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s) #25
  br label %.loopexit39

bb.n:                                             ; preds = %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit._crit_edge, %.critedge
  %i.aw = phi i32 [ %i.aq, %_ZNSt5dequeISt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS2_EESaIS5_EE9pop_frontEv.exit._crit_edge ], [ 1, %.critedge ]
  store i32 %i.aw, ptr %i.p, align 4, !tbaa !321
  %i.ax = load i8, ptr %i.b, align 8, !tbaa !121, !range !88, !noundef !89
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_system_errori(i32 noundef 1) #26
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i12, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #25 ; 0 uses
  store i8 0, ptr %i.b, align 8, !tbaa !121
  br label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit

_ZNSt11unique_lockISt5mutexE6unlockEv.exit:       ; preds = %bb.q, %bb.p
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !152
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !182
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %1, ptr %i.bd, align 8, !tbaa !183
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(21) %i.af)
          to label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %.loopexit.split-lp.loopexit, !inline_history !313

_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNSt11unique_lockISt5mutexE6unlockEv.exit
  %i.bh = load ptr, ptr %i.af, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(21) %i.af) #25, !inline_history !314
  %i.bk = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i17 = icmp eq ptr %i.bk, null
  br i1 %.not.i17, label %.invoke, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.bl = load i8, ptr %i.b, align 8, !tbaa !121, !range !88, !noundef !89
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bk) #25 ; 2 uses
  %.not.i.i18 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i18, label %bb.t, label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.r, %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.bo = phi i32 [ 35, %bb.r ], [ 1, %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %i.bn, %bb.s ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bo) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.b, align 8, !tbaa !121
  %i.bp = load i32, ptr %i.p, align 4, !tbaa !321
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr %i.p, align 4, !tbaa !321
  br i1 %i.ap, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.l, align 2, !tbaa !317
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.s) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.br = load i8, ptr %i.l, align 2, !tbaa !317, !range !88, !noundef !89
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  %i.bt = load i32, ptr %i.p, align 4, !tbaa !321
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.x, label %.backedge

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q) #25
  br label %.backedge

.loopexit39:                                      ; preds = %.backedge, %bb.b, %.thread
  %.sroa.0.3 = phi ptr [ %i.af, %.thread ], [ null, %bb.b ], [ null, %.backedge ] ; 4 uses
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !316
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !316
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN2cm12uv_async_ptr4sendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y, %.loopexit39
  %i.bz = load i8, ptr %i.b, align 8, !tbaa !121, !range !88, !noundef !89
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.aa, label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

bb.aa:                                            ; preds = %bb.z
  %i.cb = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i22, label %_ZNSt11unique_lockISt5mutexED2Ev.exit23, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #25 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

_ZNSt11unique_lockISt5mutexED2Ev.exit23:          ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i24 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit23
  %i.cd = load ptr, ptr %.sroa.0.3, align 8, !tbaa !116
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.0.3) #25, !inline_history !315
  br label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit23, %_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.m, %bb.l, %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.i25 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i25, label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit27, label %_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i26

_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i26: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.cg = load ptr, ptr %.sroa.0.1, align 8, !tbaa !116
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(21) %.sroa.0.1) #25, !inline_history !315
  br label %_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit27

_ZNSt10unique_ptrIN12cmWorkerPool4JobTESt14default_deleteIS1_EED2Ev.exit27: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %_ZNKSt14default_deleteIN12cmWorkerPool4JobTEEclEPS1_.exit.i26
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN2cm19uv_handle_ptr_base_I10uv_async_sE5resetEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN12cmWorkerPool4JobTD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(21) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12cmWorkerPool4JobTD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12cmWorkerPool4JobT10RunProcessERNS_14ProcessResultTESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.8", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !183
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.o, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS1_EESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.h, i64 noundef %i.o) #26
  unreachable

_ZNSt6vectorISt10unique_ptrI18cmWorkerPoolWorkerSt14default_deleteIS1_EESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
end_hunk_0
