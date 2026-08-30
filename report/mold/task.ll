Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/task?download=true
begin_hunk_0_@_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EE4pushINS1_20random_lane_selectorEEEvPNS0_2d14taskERKT_:bb.a
  %i.o = zext nneg i32 %i.m to i64                ; 3 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.r = load atomic i8, ptr %i.q monotonic, align 1, !range !58, !noundef !38
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i, label %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i.i

_ZN3tbb6detail2d15mutex8try_lockEv.exit.i.i:      ; preds = %bb.b
  %i.t = atomicrmw xchg ptr %i.q, i8 1 seq_cst, align 1
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !140
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !153
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %i.o ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.not.i.i = icmp eq ptr %i.y, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !139
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !139
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !144
  br label %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE9push_backERKS4_.exit.i

bb.e:                                             ; preds = %bb.c
  invoke void @_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE9push_backERKS4_.exit.i unwind label %bb.f

_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %bb.e, %bb.d
  %i.ae = shl nuw i64 1, %i.o
  %i.af = atomicrmw or ptr %0, i64 %i.ae seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  resume { ptr, i32 } %i.ag

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i: ; preds = %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE9push_backERKS4_.exit.i, %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i.i, %bb.b
  %i.ah = phi i1 [ true, %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE9push_backERKS4_.exit.i ], [ false, %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i.i ], [ false, %bb.b ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !140   ; 3 uses
  %.not.i6.i = icmp eq ptr %i.ai, null
  br i1 %.not.i6.i, label %_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EE8try_pushEPNS0_2d14taskEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i
  %i.aj = atomicrmw xchg ptr %i.ai, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
          to label %_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EE8try_pushEPNS0_2d14taskEj.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #15
  unreachable

_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EE8try_pushEPNS0_2d14taskEj.exit: ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE11try_acquireERS3_.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ah, label %bb.i, label %bb.b, !llvm.loop !154

bb.i:                                             ; preds = %_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EE8try_pushEPNS0_2d14taskEj.exit
  ret void
}

declare void @_ZN3tbb6detail2r15arena17on_thread_leavingEj(ptr noundef nonnull align 128 dereferenceable(768), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress sspstrong uwtable
define noundef ptr @_ZN3tbb6detail2r121current_suspend_pointEv() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @_ZN3tbb6detail2r18governor6theTLSE, align 4, !tbaa !130
  %i.b = tail call noundef ptr @pthread_getspecific(i32 noundef %i.a) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN3tbb6detail2r18governor15get_thread_dataEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r18governor20init_external_threadEv()
  %i.c = load i32, ptr @_ZN3tbb6detail2r18governor6theTLSE, align 4, !tbaa !130
  %i.d = tail call noundef ptr @pthread_getspecific(i32 noundef %i.c) #6
  br label %_ZN3tbb6detail2r18governor15get_thread_dataEv.exit

_ZN3tbb6detail2r18governor15get_thread_dataEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = tail call noundef ptr @_ZN3tbb6detail2r115task_dispatcher17get_suspend_pointEv(ptr noundef nonnull align 128 dereferenceable(136) %i.f)
  ret ptr %i.g
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef nonnull align 128 dereferenceable(136) ptr @_ZN3tbb6detail2r116create_coroutineERNS1_11thread_dataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 4 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.i.ph = phi i32 [ %i.n, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i ], [ 1, %bb.a ] ; 7 uses
  %i.d = icmp slt i32 %.sroa.0.0.i.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer, %bb.d
  %i.e = load atomic i8, ptr %i.c monotonic, align 1, !range !58, !noundef !38
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.critedge.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %i.g = atomicrmw xchg ptr %i.c, i8 1 seq_cst, align 1
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %.critedge.i.i.i.i, label %bb.e

.critedge.i.i.i.i:                                ; preds = %bb.b, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge.i.i.i.i
  %i.i = icmp sgt i32 %.sroa.0.0.i.i.i.i.ph, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i32 %.sroa.0.0.i.i.i.i.ph, 7    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.j = add nsw i32 %.01.i.i.i.i.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !156

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.k = icmp ult i32 %.sroa.0.0.i.i.i.i.ph, 8
  br i1 %i.k, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.l = add nsw i32 %.01.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.m = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !158

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.n = shl i32 %.sroa.0.0.i.i.i.i.ph, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer, !llvm.loop !159

bb.d:                                             ; preds = %.critedge.i.i.i.i
  %i.o = tail call noundef i32 @sched_yield() #6  ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i, !llvm.loop !159

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !161  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.s, -1
  %i.x = select i1 %i.t, i32 %i.v, i32 %i.w       ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %_ZN3tbb6detail2r114arena_co_cache3popEv.exit

_ZN3tbb6detail2r114arena_co_cache3popEv.exit:     ; preds = %bb.e
  store i32 %i.x, ptr %i.r, align 8, !tbaa !161
  store ptr null, ptr %i.z, align 8, !tbaa !162
  store atomic i8 0, ptr %i.c release, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store atomic i8 0, ptr %i.c release, align 8
  %i.ac = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 256) ; 16 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !155
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(136) %i.ac, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.ag, align 1, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 49
  store i8 1, ptr %i.ah, align 1, !tbaa !164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 50
  store i8 1, ptr %i.ai, align 1, !tbaa !165
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i64 1, ptr %i.am, align 8, !tbaa !167
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ao, align 8, !tbaa !168
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.aq, align 32, !tbaa !169
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !170
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !171
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 280
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !172
  %i.av = tail call noundef i64 @_ZN3tbb6detail2r117threading_control17worker_stack_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
  tail call void @_ZN3tbb6detail2r115task_dispatcher18init_suspend_pointEPNS1_5arenaEm(ptr noundef nonnull align 128 dereferenceable(136) %i.ac, ptr noundef %i.as, i64 noundef %i.av)
  br label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2r114arena_co_cache3popEv.exit, %bb.f
  %.0 = phi ptr [ %i.aa, %_ZN3tbb6detail2r114arena_co_cache3popEv.exit ], [ %i.ac, %bb.f ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !155
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 132
  %i.ay = atomicrmw add ptr %i.ax, i32 1 seq_cst, align 4 ; 0 uses
  ret ptr %.0
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN3tbb6detail2r115task_dispatcher18init_suspend_pointEPNS1_5arenaEm(ptr noundef nonnull align 128 dereferenceable(136), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN3tbb6detail2r117threading_control17worker_stack_sizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115task_dispatcher16internal_suspendEv(ptr noundef nonnull align 128 dereferenceable(136) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 128, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %i.f = tail call noundef ptr @_ZN3tbb6detail2r115task_dispatcher17get_suspend_pointEv(ptr noundef nonnull align 128 dereferenceable(136) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load atomic i8, ptr %i.g acquire, align 1, !range !58, !noundef !38
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 128, !tbaa !99
  %i.k = tail call noundef nonnull align 128 dereferenceable(136) ptr @_ZN3tbb6detail2r116create_coroutineERNS1_11thread_dataE(ptr noundef nonnull align 8 dereferenceable(240) %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %0, align 128, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  store ptr null, ptr %i.o, align 128, !tbaa !99
  store ptr %i.m, ptr %i.l, align 128, !tbaa !99
  store ptr %i.l, ptr %i.n, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 64, !tbaa !119 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.s = load ptr, ptr %i.r, align 64, !tbaa !119 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1016
  store ptr %i.q, ptr %i.t, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1008
  store i32 1, ptr %i.w, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1008
  store i32 2, ptr %i.x, align 8, !tbaa !121
  tail call void @_ZN3tbb6detail2r114swap_coroutineERNS1_14coroutine_typeES3_(ptr noundef nonnull align 8 dereferenceable(988) %i.u, ptr noundef nonnull align 8 dereferenceable(988) %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 1024
  store atomic i32 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 1016 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1024
  %i.ac = atomicrmw xchg ptr %i.ab, i32 1 seq_cst, align 4
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.e, label %_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !120
  tail call void @_ZN3tbb6detail2r16resumeEPNS1_18suspend_point_typeE(ptr noundef %i.ae)
  br label %_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i

_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store ptr null, ptr %i.z, align 8, !tbaa !120
  %i.af = load ptr, ptr %0, align 128, !tbaa !99  ; 2 uses
  %.not.i.not = icmp eq ptr %i.af, null
  br i1 %.not.i.not, label %_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i
  tail call void @_ZN3tbb6detail2r115task_dispatcher21do_post_resume_actionEv(ptr noundef nonnull readonly align 128 dereferenceable(136) %0)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !122
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !123
  %i.ak = icmp eq ptr %0, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.p, align 64, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic i8 0, ptr %i.am monotonic, align 1
  br label %_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit

_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit: ; preds = %_ZN3tbb6detail2r118suspend_point_type6resumeEPS2_.exit.i, %bb.f, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !173, !range !58, !noundef !38
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.h, label %_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit
  %i.aq = load ptr, ptr %0, align 128, !tbaa !99  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !123
  %.not.i5 = icmp eq ptr %0, %i.au
  br i1 %.not.i5, label %_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call noundef ptr @_ZN3tbb6detail2r115task_dispatcher17get_suspend_pointEv(ptr noundef nonnull align 128 dereferenceable(136) %0), !inline_history !174
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i32 3, ptr %i.aw, align 8, !tbaa !175
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !176
  tail call void @_ZN3tbb6detail2r115task_dispatcher16internal_suspendEv(ptr noundef nonnull align 128 dereferenceable(136) %0), !inline_history !174
  %i.ay = load ptr, ptr %0, align 128, !tbaa !99
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !177 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ba, null
  br i1 %.not.i7, label %_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit, label %_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit

_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !58, !noundef !38
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.j, label %_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit

bb.j:                                             ; preds = %_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit
  store atomic i8 0, ptr %i.bb monotonic, align 1
  br label %_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit

_ZN3tbb6detail2r115task_dispatcher12recall_pointEv.exit: ; preds = %bb.i, %_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit, %bb.h, %bb.j, %_ZN3tbb6detail2r115task_dispatcher6resumeERS2_.exit
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r115task_dispatcher21do_post_resume_actionEv(ptr nofree noundef nonnull readonly align 128 captures(none) dereferenceable(136) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.tbb::detail::r1::circular_doubly_linked_list_with_sentinel", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = load ptr, ptr %0, align 128, !tbaa !99   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175
  switch i32 %i.d, label %_ZN3tbb6detail2r114arena_co_cache4pushEPNS1_15task_dispatcherE.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(76) %i.f)
  br label %_ZN3tbb6detail2r114arena_co_cache4pushEPNS1_15task_dispatcherE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155
  tail call void @_ZN3tbb6detail2r15arena17on_thread_leavingEj(ptr noundef nonnull align 128 dereferenceable(768) %i.m, i32 noundef 1)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !155  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 360 ; 3 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.ph = phi i32 [ %i.z, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i ], [ 1, %bb.c ] ; 7 uses
  %i.p = icmp slt i32 %.sroa.0.0.i.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.outer, %bb.f
  %i.q = load atomic i8, ptr %i.o monotonic, align 1, !range !58, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.critedge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i
  %i.s = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %.critedge.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i

end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_Map_baseIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS5_PNS2_2r123thread_reference_vertexEENS3_13tbb_allocatorISB_EENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS7_
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS5_PNS2_2r123thread_reference_vertexEENS3_13tbb_allocatorISB_EENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"struct.std::_Hashtable<tbb::detail::d1::wait_tree_vertex_interface *, std::pair<tbb::detail::d1::wait_tree_vertex_interface *const, tbb::detail::r1::thread_reference_vertex *>, tbb::detail::d1::tbb_allocator<std::pair<tbb::detail::d1::wait_tree_vertex_interface *const, tbb::detail::r1::thread_reference_vertex *>>, std::__detail::_Select1st, std::equal_to<tbb::detail::d1::wait_tree_vertex_interface *>, std::hash<tbb::detail::d1::wait_tree_vertex_interface *>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !199    ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !199
  %i.m = icmp eq ptr %i.b, %i.l
  br i1 %i.m, label %.loopexit31, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.n = icmp eq ptr %i.b, %i.q
  br i1 %i.n, label %.loopexit31, label %.lr.ph.i.i, !llvm.loop !205

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  %i.o = load ptr, ptr %.020.i.i, align 8, !tbaa !202 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.o, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !199  ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = urem i64 %i.r, %i.e
  %.not19.i.i = icmp eq i64 %i.s, %i.f
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !205

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !205

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store ptr %0, ptr %2, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 24) ; 11 uses
  store ptr null, ptr %i.u, align 8, !tbaa !202
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %1, align 8, !tbaa !199
  store ptr %i.w, ptr %i.v, align 8, !tbaa !238
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !206
  store ptr %i.u, ptr %i.t, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !240
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !191
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !201
  %i.ae = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.ab, i64 noundef %i.ad, i64 noundef 1)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.loopexit
  %i.af = extractvalue { i8, i64 } %i.ae, 0
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.ah = extractvalue { i8, i64 } %i.ae, 1
  invoke void @_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc23 unwind label %bb.k

.noexc23:                                         ; preds = %bb.e
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !167
  %i.aj = urem i64 %i.c, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %.noexc23, %.noexc
  %.0.i21 = phi i64 [ %i.aj, %.noexc23 ], [ %i.f, %.noexc ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0.i21 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.am, null
  br i1 %.not.i.i22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !202
  store ptr %i.an, ptr %i.u, align 8, !tbaa !202
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !204
  store ptr %i.u, ptr %i.ao, align 8, !tbaa !202
  br label %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !209
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !202
  store ptr %i.u, ptr %i.ap, align 8, !tbaa !209
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !202 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ar, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.d, align 8, !tbaa !167
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !199
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = urem i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aw
  store ptr %i.u, ptr %i.ax, align 8, !tbaa !204
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !204
  br label %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.g, %bb.j
  %i.ay = load i64, ptr %i.ac, align 8, !tbaa !201
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ac, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %.loopexit31

bb.k:                                             ; preds = %bb.e, %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  resume { ptr, i32 } %i.ba

.loopexit31:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.u, %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt8__detail16_Hashtable_allocIN3tbb6detail2d113tbb_allocatorINS_10_Hash_nodeISt4pairIKPNS3_26wait_tree_vertex_interfaceEPNS2_2r123thread_reference_vertexEELb0EEEEEE18_M_deallocate_nodeEPSE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.b)
          to label %_ZNSt8__detail16_Hashtable_allocIN3tbb6detail2d113tbb_allocatorINS_10_Hash_nodeISt4pairIKPNS3_26wait_tree_vertex_interfaceEPNS2_2r123thread_reference_vertexEELb0EEEEEE18_M_deallocate_nodeEPSE_.exit unwind label %bb.c

_ZNSt8__detail16_Hashtable_allocIN3tbb6detail2d113tbb_allocatorINS_10_Hash_nodeISt4pairIKPNS3_26wait_tree_vertex_interfaceEPNS2_2r123thread_reference_vertexEELb0EEEEEE18_M_deallocate_nodeEPSE_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #15
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #1

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !242
  br label %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = shl i64 %1, 3                            ; 2 uses
  %i.d = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.c)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.c, i1 false)
  br label %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc, %bb.b
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.d, %.noexc ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209  ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !209
  %.not29.i = icmp eq ptr %i.f, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.g
  %.031.i = phi ptr [ %i.g, %bb.g ], [ %i.f, %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %.02530.i = phi i64 [ %.1.i, %bb.g ], [ 0, %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %i.g = load ptr, ptr %.031.i, align 8, !tbaa !202 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = urem i64 %i.j, %1                        ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.k ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !204  ; 2 uses
  %.not27.i = icmp eq ptr %i.m, null
  br i1 %.not27.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !209
  store ptr %i.n, ptr %.031.i, align 8, !tbaa !202
  store ptr %.031.i, ptr %i.e, align 8, !tbaa !209
  store ptr %i.e, ptr %i.l, align 8, !tbaa !204
  %i.o = load ptr, ptr %.031.i, align 8, !tbaa !202
  %.not28.i = icmp eq ptr %i.o, null
  br i1 %.not28.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.02530.i
  store ptr %.031.i, ptr %i.p, align 8, !tbaa !204
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !202
  store ptr %i.q, ptr %.031.i, align 8, !tbaa !202
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !204
  store ptr %.031.i, ptr %i.r, align 8, !tbaa !202
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.i = phi i64 [ %.02530.i, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !243

._crit_edge.i:                                    ; preds = %bb.g, %_ZNSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.s)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #6 ; 0 uses
  %i.y = load i64, ptr %2, align 8, !tbaa !191
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !240
  invoke void @__cxa_rethrow() #18
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ab, align 8, !tbaa !167
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !166
  ret void

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.aa

bb.m:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #15
  unreachable

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind returns_twice }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !37, i64 1152}
!12 = !{!"_ZTSN3tbb6detail2r118suspend_point_typeE", !13, i64 0, !15, i64 8, !16, i64 16, !18, i64 17, !19, i64 24, !31, i64 1016, !32, i64 1024, !34, i64 1088}
!13 = !{!"p1 _ZTSN3tbb6detail2r15arenaE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"_ZTSN3tbb6detail2r110FastRandomE", !8, i64 0, !8, i64 4}
!16 = !{!"_ZTSSt6atomicIbE", !17, i64 0}
!17 = !{!"_ZTSSt13__atomic_baseIbE", !18, i64 0}
!18 = !{!"bool", !9, i64 0}
!19 = !{!"_ZTSN3tbb6detail2r110co_contextE", !20, i64 0, !30, i64 984}
!20 = !{!"_ZTSN3tbb6detail2r114coroutine_typeE", !21, i64 0, !14, i64 968, !22, i64 976}
!21 = !{!"_ZTS10ucontext_t", !22, i64 0, !23, i64 8, !24, i64 16, !25, i64 40, !27, i64 296, !28, i64 424, !9, i64 936}
!22 = !{!"long", !9, i64 0}
!23 = !{!"p1 _ZTS10ucontext_t", !14, i64 0}
!24 = !{!"_ZTS7stack_t", !14, i64 0, !8, i64 8, !22, i64 16}
!25 = !{!"_ZTS10mcontext_t", !9, i64 0, !26, i64 184, !9, i64 192}
!26 = !{!"p1 _ZTS13_libc_fpstate", !14, i64 0}
!27 = !{!"_ZTS10__sigset_t", !9, i64 0}
!28 = !{!"_ZTS13_libc_fpstate", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !22, i64 8, !22, i64 16, !8, i64 24, !8, i64 28, !9, i64 32, !9, i64 160, !9, i64 416}
!29 = !{!"short", !9, i64 0}
!30 = !{!"_ZTSN3tbb6detail2r110co_context8co_stateE", !9, i64 0}
!31 = !{!"p1 _ZTSN3tbb6detail2r118suspend_point_typeE", !14, i64 0}
!32 = !{!"_ZTSSt6atomicIN3tbb6detail2r118suspend_point_type11stack_stateEE", !33, i64 0}
!33 = !{!"_ZTSN3tbb6detail2r118suspend_point_type11stack_stateE", !9, i64 0}
!34 = !{!"_ZTSN3tbb6detail2r118suspend_point_type11resume_taskE", !35, i64 0, !37, i64 64}
!35 = !{!"_ZTSN3tbb6detail2d14taskE", !36, i64 8, !9, i64 16}
!36 = !{!"_ZTSN3tbb6detail2d111task_traitsE", !22, i64 0}
!37 = !{!"p1 _ZTSN3tbb6detail2r115task_dispatcherE", !14, i64 0}
!38 = !{}
!39 = !{i64 128}
!40 = !{!12, !13, i64 0}
!41 = !{!42, !18, i64 50}
!42 = !{!"_ZTSN3tbb6detail2r115task_dispatcherE", !43, i64 0, !44, i64 8, !48, i64 48, !22, i64 56, !31, i64 64, !49, i64 72, !57, i64 128}
!43 = !{!"p1 _ZTSN3tbb6detail2r111thread_dataE", !14, i64 0}
!44 = !{!"_ZTSN3tbb6detail2r118execution_data_extE", !45, i64 0, !37, i64 16, !22, i64 24, !47, i64 32}
!45 = !{!"_ZTSN3tbb6detail2d114execution_dataE", !46, i64 0, !29, i64 8, !29, i64 10}
!46 = !{!"p1 _ZTSN3tbb6detail2d118task_group_contextE", !14, i64 0}
!47 = !{!"p1 _ZTSN3tbb6detail2d112wait_contextE", !14, i64 0}
!48 = !{!"_ZTSN3tbb6detail2r115task_dispatcher10propertiesE", !18, i64 0, !18, i64 1, !18, i64 2}
!49 = !{!"_ZTSSt13unordered_mapIPN3tbb6detail2d126wait_tree_vertex_interfaceEPNS1_2r123thread_reference_vertexESt4hashIS4_ESt8equal_toIS4_ENS2_13tbb_allocatorISt4pairIKS4_S7_EEEE", !50, i64 0}
!50 = !{!"_ZTSSt10_HashtableIPN3tbb6detail2d126wait_tree_vertex_interfaceESt4pairIKS4_PNS1_2r123thread_reference_vertexEENS2_13tbb_allocatorISA_EENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE", !51, i64 0, !22, i64 8, !53, i64 16, !22, i64 24, !55, i64 32, !54, i64 48}
!51 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!54 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!55 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !56, i64 0, !22, i64 8}
!56 = !{!"float", !9, i64 0}
!57 = !{!"p1 _ZTSN3tbb6detail2d14taskE", !14, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN3tbb6detail2r110FastRandomE", !14, i64 0}
!61 = !{!9, !9, i64 0}
!62 = !{i64 1474437}
!63 = !{!64, !8, i64 388}
!64 = !{!"_ZTSN3tbb6detail2r110arena_baseE", !65, i64 0, !69, i64 128, !69, i64 132, !69, i64 136, !71, i64 144, !71, i64 168, !75, i64 192, !8, i64 216, !8, i64 220, !16, i64 224, !76, i64 232, !77, i64 240, !82, i64 272, !83, i64 280, !46, i64 288, !84, i64 296, !92, i64 336, !93, i64 344, !76, i64 368, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !96, i64 392}
!65 = !{!"_ZTSN3tbb6detail2d06paddedINS0_2d119intrusive_list_nodeELm128EEE", !66, i64 0}
!66 = !{!"_ZTSN3tbb6detail2d011padded_baseINS0_2d119intrusive_list_nodeELm128ELm16EEE", !67, i64 0, !9, i64 16}
!67 = !{!"_ZTSN3tbb6detail2d119intrusive_list_nodeE", !68, i64 0, !68, i64 8}
!68 = !{!"p1 _ZTSN3tbb6detail2d119intrusive_list_nodeE", !14, i64 0}
!69 = !{!"_ZTSSt6atomicIjE", !70, i64 0}
!70 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!71 = !{!"_ZTSN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE0EEE", !72, i64 0, !74, i64 8, !8, i64 16}
!72 = !{!"_ZTSSt6atomicImE", !73, i64 0}
!73 = !{!"_ZTSSt13__atomic_baseImE", !22, i64 0}
!74 = !{!"p1 _ZTSN3tbb6detail2r115queue_and_mutexIPNS0_2d14taskENS3_5mutexEEE", !14, i64 0}
!75 = !{!"_ZTSN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EEE", !72, i64 0, !74, i64 8, !8, i64 16}
!76 = !{!"_ZTSN3tbb6detail2r111atomic_flagE", !72, i64 0}
!77 = !{!"_ZTSN3tbb6detail2r113observer_listE", !78, i64 0, !78, i64 8, !81, i64 16, !13, i64 24}
!78 = !{!"_ZTSSt6atomicIPN3tbb6detail2r114observer_proxyEE", !79, i64 0}
!79 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r114observer_proxyEE", !80, i64 0}
!80 = !{!"p1 _ZTSN3tbb6detail2r114observer_proxyE", !14, i64 0}
!81 = !{!"_ZTSN3tbb6detail2d013aligned_spaceINS0_2d113spin_rw_mutexELm1EEE", !9, i64 0}
!82 = !{!"p1 _ZTSN3tbb6detail2r121numa_binding_observerE", !14, i64 0}
!83 = !{!"p1 _ZTSN3tbb6detail2r117threading_controlE", !14, i64 0}
!84 = !{!"_ZTSN3tbb6detail2r118concurrent_monitorE", !85, i64 0}
!85 = !{!"_ZTSN3tbb6detail2r123concurrent_monitor_baseImEE", !86, i64 0, !89, i64 8, !69, i64 32}
!86 = !{!"_ZTSN3tbb6detail2r124concurrent_monitor_mutexE", !87, i64 0, !87, i64 4}
!87 = !{!"_ZTSSt6atomicIiE", !88, i64 0}
!88 = !{!"_ZTSSt13__atomic_baseIiE", !8, i64 0}
!89 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinelE", !72, i64 0, !90, i64 8}
!90 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !91, i64 0, !91, i64 8}
!91 = !{!"p1 _ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !14, i64 0}
!92 = !{!"_ZTSN3tbb6detail2r120thread_leave_managerE", !72, i64 0}
!93 = !{!"_ZTSN3tbb6detail2r114arena_co_cacheE", !94, i64 0, !8, i64 8, !8, i64 12, !95, i64 16}
!94 = !{!"p2 _ZTSN3tbb6detail2r115task_dispatcherE", !52, i64 0}
!95 = !{!"_ZTSN3tbb6detail2d110spin_mutexE", !16, i64 0}
!96 = !{!"_ZTSN3tbb6detail2r124threading_control_clientE", !97, i64 0, !98, i64 8}
!97 = !{!"p1 _ZTSN3tbb6detail2r19pm_clientE", !14, i64 0}
!98 = !{!"p1 _ZTSN3tbb6detail2r124thread_dispatcher_clientE", !14, i64 0}
!99 = !{!42, !43, i64 0}
!100 = !{!101, !37, i64 24}
!101 = !{!"_ZTSN3tbb6detail2r111thread_dataE", !67, i64 0, !29, i64 16, !18, i64 18, !18, i64 19, !37, i64 24, !13, i64 32, !98, i64 40, !102, i64 48, !103, i64 56, !15, i64 64, !80, i64 72, !105, i64 80, !106, i64 88, !107, i64 96, !14, i64 104, !108, i64 112}
!102 = !{!"p1 _ZTSN3tbb6detail2r110arena_slotE", !14, i64 0}
!103 = !{!"_ZTSN3tbb6detail2r110mail_inboxE", !104, i64 0}
!104 = !{!"p1 _ZTSN3tbb6detail2r111mail_outboxE", !14, i64 0}
!105 = !{!"p1 _ZTSN3tbb6detail2r122small_object_pool_implE", !14, i64 0}
!106 = !{!"p1 _ZTSN3tbb6detail2r112context_listE", !14, i64 0}
!107 = !{!"_ZTSN3tbb6detail2r115task_dispatcher18post_resume_actionE", !9, i64 0}
!108 = !{!"_ZTSN3tbb6detail2d118task_group_contextE", !22, i64 0, !69, i64 8, !109, i64 12, !110, i64 13, !111, i64 14, !113, i64 15, !9, i64 16, !106, i64 24, !67, i64 32, !115, i64 48, !14, i64 56, !118, i64 64, !9, i64 72}
!109 = !{!"_ZTSN3tbb6detail2d118task_group_context26task_group_context_versionE", !9, i64 0}
!110 = !{!"_ZTSN3tbb6detail2d118task_group_context14context_traitsE", !18, i64 0, !18, i64 0, !18, i64 0, !18, i64 0, !18, i64 0, !18, i64 0, !18, i64 0, !18, i64 0}
!111 = !{!"_ZTSSt6atomicIhE", !112, i64 0}
!112 = !{!"_ZTSSt13__atomic_baseIhE", !9, i64 0}
!113 = !{!"_ZTSSt6atomicIN3tbb6detail2d118task_group_context5stateEE", !114, i64 0}
!114 = !{!"_ZTSN3tbb6detail2d118task_group_context5stateE", !9, i64 0}
!115 = !{!"_ZTSSt6atomicIPN3tbb6detail2r117tbb_exception_ptrEE", !116, i64 0}
!116 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r117tbb_exception_ptrEE", !117, i64 0}
!117 = !{!"p1 _ZTSN3tbb6detail2r117tbb_exception_ptrE", !14, i64 0}
!118 = !{!"_ZTSN3tbb6detail2d021string_resource_indexE", !9, i64 0}
!119 = !{!42, !31, i64 64}
!120 = !{!12, !31, i64 1016}
!121 = !{!19, !30, i64 984}
!122 = !{!101, !102, i64 48}
end_hunk_1
