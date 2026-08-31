Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/task_dispatcher?download=true
inline.NumInlined: 754
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3tbb6detail2r110arena_slot17prepare_task_poolEm:bb.a
bb.h:                                             ; preds = %._crit_edge
  %i.ba = shl i64 %i.at, 1
  %spec.select47 = tail call i64 @llvm.umax.i64(i64 %.135.lcssa, i64 %i.ba)
  %i.bb = shl i64 %spec.select47, 3
  %i.bc = add i64 %i.bb, 120
  %i.bd = and i64 %i.bc, -128                     ; 2 uses
  %i.be = lshr exact i64 %i.bd, 3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !227
  %i.bf = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.bd) ; 2 uses
  store ptr %i.bf, ptr %i.ac, align 32, !tbaa !162
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bg = phi ptr [ %i.bf, %bb.h ], [ %i.ad, %._crit_edge ] ; 3 uses
  br i1 %i.ae, label %.lr.ph53.preheader, label %._crit_edge54

.lr.ph53.preheader:                               ; preds = %bb.i
  %i.bh = sub nuw i64 %i.b, %i.ab                 ; 3 uses
  %.neg = add i64 %i.ab, 1
  %xtraiter67 = and i64 %i.bh, 1
  %i.bi = icmp eq i64 %i.b, %.neg
  br i1 %i.bi, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter = and i64 %i.bh, -2
  br label %.lr.ph53

._crit_edge54.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %._crit_edge54, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %._crit_edge54.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.051.epil.init = phi i64 [ %i.ab, %.lr.ph53.preheader ], [ %i.bw, %._crit_edge54.loopexit.unr-lcssa ]
  %.03250.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %.1.1, %._crit_edge54.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod70 = trunc i64 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.051.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !165 ; 2 uses
  %.not44.epil = icmp eq ptr %i.bk, null
  br i1 %.not44.epil, label %._crit_edge54, label %bb.j

bb.j:                                             ; preds = %.lr.ph53.epil.preheader
  %i.bl = add i64 %.03250.epil.init, 1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.03250.epil.init
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !165
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit.unr-lcssa, %bb.j, %.lr.ph53.epil.preheader, %bb.i
  %.032.lcssa = phi i64 [ 0, %bb.i ], [ %.1.1, %._crit_edge54.loopexit.unr-lcssa ], [ %i.bl, %bb.j ], [ %.03250.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  br i1 %i.av, label %bb.n, label %bb.o

.lr.ph53:                                         ; preds = %bb.m, %.lr.ph53.preheader.new
  %.051 = phi i64 [ %i.ab, %.lr.ph53.preheader.new ], [ %i.bw, %bb.m ] ; 3 uses
  %.03250 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %.1.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.051
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !165 ; 2 uses
  %.not44 = icmp eq ptr %i.bo, null
  br i1 %.not44, label %.lr.ph53.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph53
  %i.bp = add i64 %.03250, 1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.03250
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !165
  br label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53, %bb.k
  %.1 = phi i64 [ %i.bp, %bb.k ], [ %.03250, %.lr.ph53 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.051
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !165 ; 2 uses
  %.not44.1 = icmp eq ptr %i.bt, null
  br i1 %.not44.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph53.1
  %i.bu = add i64 %.1, 1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.1
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !165
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph53.1
  %.1.1 = phi i64 [ %i.bu, %bb.l ], [ %.1, %.lr.ph53.1 ] ; 3 uses
  %i.bw = add nuw i64 %.051, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge54.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !234

bb.n:                                             ; preds = %._crit_edge54
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.ad)
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge54
  %i.bx = load atomic i64, ptr %i.a seq_cst, align 16 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store atomic i64 0, ptr %i.aa monotonic, align 16
  store atomic i64 %.032.lcssa, ptr %i.a release, align 16
  %i.by = load atomic ptr, ptr %i.l monotonic, align 8
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZN3tbb6detail2r110arena_slot22commit_relocated_tasksEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.ac, align 32, !tbaa !162
  store atomic ptr %i.bz, ptr %i.l release, align 8
  br label %_ZN3tbb6detail2r110arena_slot22commit_relocated_tasksEm.exit

_ZN3tbb6detail2r110arena_slot22commit_relocated_tasksEm.exit: ; preds = %bb.q, %bb.p, %bb.c, %bb.a
  %.137 = phi i64 [ %i.b, %bb.a ], [ 0, %bb.c ], [ %.032.lcssa, %bb.p ], [ %.032.lcssa, %bb.q ]
  ret i64 %.137
}

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r117tbb_exception_ptr19rethrow_and_destroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3tbb6detail2r117tbb_exception_ptr7destroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110co_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(988) dereferenceable(988) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load i32, ptr %i.a, align 8, !tbaa !122
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3tbb6detail2r117destroy_coroutineERNS1_14coroutine_typeE.exit, !prof !235

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN3tbb6detail2r117destroy_coroutineERNS1_14coroutine_typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noundef i64 @_ZN3tbb6detail2r121DefaultSystemPageSizeEv()
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %bb.d
  store i64 %i.g, ptr @_ZZN3tbb6detail2r18governor17default_page_sizeEvE9page_size, align 8, !tbaa !30
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  br label %_ZN3tbb6detail2r117destroy_coroutineERNS1_14coroutine_typeE.exit

.body:                                            ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #17
  unreachable

_ZN3tbb6detail2r117destroy_coroutineERNS1_14coroutine_typeE.exit: ; preds = %bb.b, %bb.c, %bb.e
  %i.j = load i64, ptr @_ZZN3tbb6detail2r18governor17default_page_sizeEvE9page_size, align 8, !tbaa !30 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.j
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.q = load i64, ptr %i.p, align 8, !tbaa !237
  %i.r = shl i64 %i.j, 1
  %i.s = add i64 %i.q, %i.r
  %i.t = tail call i32 @munmap(ptr noundef %i.o, i64 noundef %i.s) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r117destroy_coroutineERNS1_14coroutine_typeE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r116create_coroutineERNS1_14coroutine_typeEmPv(ptr noundef nonnull align 8 dereferenceable(984) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN3tbb6detail2r18governor17default_page_sizeEv.exit, !prof !235

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r18governor17default_page_sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef i64 @_ZN3tbb6detail2r121DefaultSystemPageSizeEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr @_ZZN3tbb6detail2r18governor17default_page_sizeEvE9page_size, align 8, !tbaa !30
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  br label %_ZN3tbb6detail2r18governor17default_page_sizeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tbb6detail2r18governor17default_page_sizeEvE9page_size) #10
  resume { ptr, i32 } %i.e

_ZN3tbb6detail2r18governor17default_page_sizeEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load i64, ptr @_ZZN3tbb6detail2r18governor17default_page_sizeEvE9page_size, align 8, !tbaa !30 ; 4 uses
  %i.g = add i64 %1, -1
  %i.h = add i64 %i.g, %i.f
  %i.i = sub i64 0, %i.f
  %i.j = and i64 %i.h, %i.i                       ; 3 uses
  %i.k = shl i64 %i.f, 1
  %i.l = add i64 %i.j, %i.k
  %i.m = call ptr @mmap(ptr noundef null, i64 noundef %i.l, i32 noundef 0, i32 noundef 131106, i32 noundef -1, i64 noundef 0) #10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.f, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = call i32 @mprotect(ptr noundef %i.p, i64 noundef %i.j, i32 noundef 3) #10 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !236
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  store i64 %i.j, ptr %i.s, align 8, !tbaa !237
  %i.t = call i32 @getcontext(ptr noundef nonnull %0) #19 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !238
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !239
  %i.x = load i64, ptr %i.s, align 8, !tbaa !237
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !240
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !241
  %3 = ptrtoint ptr %2 to i64                     ; 2 uses
  %i.aa = trunc i64 %3 to i32
  %i.ab = lshr i64 %3, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  call void (ptr, ptr, i32, ...) @makecontext(ptr noundef nonnull %0, ptr noundef nonnull @_ZN3tbb6detail2r121co_local_wait_for_allEjj, i32 noundef 2, i32 noundef %i.ac, i32 noundef %i.aa) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r117current_coroutineERNS1_14coroutine_typeE(ptr noundef nonnull align 8 dereferenceable(984) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = call i32 @getcontext(ptr noundef nonnull %0) #19 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind returns_twice
declare i32 @getcontext(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @makecontext(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

declare noundef i64 @_ZN3tbb6detail2r121DefaultSystemPageSizeEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12prepare_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !225, !range !95, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.f = load i8, ptr %i.e, align 2, !tbaa !94, !range !95, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink10 = phi i64 [ 16, %bb.a ], [ 32, %bb.b ]
  %i.h = load ptr, ptr %1, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink10
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store atomic i8 1, ptr %i.k monotonic, align 8
  %i.l = atomicrmw xchg ptr %0, i32 1 seq_cst, align 4
  %.not2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit, label %.lr.ph4.i.i

.lr.ph4.i.i:                                      ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, %.lr.ph4.i.i
  %i.n = load atomic i32, ptr %0 monotonic, align 8
  %.09.in14.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.09.in14.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %bb.d, %.lr.ph.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i.prol, !llvm.loop !242

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i:    ; preds = %.lr.ph.i.i.i.i.prol
  %i.o = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.09.in.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol.1

.lr.ph.i.i.i.i.prol.1:                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, %.lr.ph.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, label %.lr.ph.i.i.i.i.prol.1, !llvm.loop !242

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1:  ; preds = %.lr.ph.i.i.i.i.prol.1
  %i.p = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.1 = icmp eq i32 %i.p, 0
  br i1 %.09.in.i.i.i.1, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.prol.2

.lr.ph.i.i.i.i.prol.2:                            ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, %.lr.ph.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1 ]
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, label %.lr.ph.i.i.i.i.prol.2, !llvm.loop !242

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2:  ; preds = %.lr.ph.i.i.i.i.prol.2
  %i.q = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.2 = icmp eq i32 %i.q, 0
  br i1 %.09.in.i.i.i.2, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, %.lr.ph.i.i.i.i.3
  %.01.i.i.i.i.3 = phi i32 [ %i.r, %.lr.ph.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2 ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.r = add nsw i32 %.01.i.i.i.i.3, -8
  tail call void @llvm.x86.sse2.pause()
  %.not = icmp eq i32 %.01.i.i.i.i.3, 8
  br i1 %.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, label %.lr.ph.i.i.i.i.3, !llvm.loop !99

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3:  ; preds = %.lr.ph.i.i.i.i.3
  %i.s = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.3 = icmp eq i32 %i.s, 0
  br i1 %.09.in.i.i.i.3, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, %.lr.ph.i.i.i.i.4
  %.01.i.i.i.i.4 = phi i32 [ %i.t, %.lr.ph.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3 ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.t = add nsw i32 %.01.i.i.i.i.4, -8
  tail call void @llvm.x86.sse2.pause()
  %.not11 = icmp eq i32 %.01.i.i.i.i.4, 8
  br i1 %.not11, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, label %.lr.ph.i.i.i.i.4, !llvm.loop !99

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4:  ; preds = %.lr.ph.i.i.i.i.4
  %i.u = load atomic i32, ptr %0 monotonic, align 8
  %.09.in.i.i.i.4 = icmp eq i32 %i.u, 0
  br i1 %.09.in.i.i.i.4, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, %.lr.ph.i.i.i
  %.016.i.i.i = phi i32 [ %i.y, %.lr.ph.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4 ] ; 2 uses
  %i.v = tail call noundef i32 @sched_yield() #10 ; 0 uses
  %i.w = load atomic i32, ptr %0 monotonic, align 8
  %i.x = icmp eq i32 %i.w, 0                      ; 2 uses
  %i.y = add nuw nsw i32 %.016.i.i.i, 1
  %i.z = icmp samesign ugt i32 %.016.i.i.i, 62
  %.not11.i.i.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %.not11.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !243

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %i.x, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i
  %i.aa = atomicrmw add ptr %i.m, i32 1 seq_cst, align 4 ; 0 uses
  %i.ab = load atomic i32, ptr %0 monotonic, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ad = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 128, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  %i.ae = load atomic i32, ptr %0 monotonic, align 8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !244

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %i.ag = atomicrmw sub ptr %i.m, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.3, %._crit_edge.i.i, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.4, %bb.d
  %i.ah = atomicrmw xchg ptr %0, i32 1 seq_cst, align 4
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit, label %bb.d, !llvm.loop !245

_ZNSt10lock_guardIN3tbb6detail2r124concurrent_monitor_mutexEEC2ERS3_.exit: ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2r124concurrent_monitor_mutex4lockEvEUlvE_EEbT_.exit.thread.i.i, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.an = load atomic i64, ptr %i.al monotonic, align 8
  %i.ao = add i64 %i.an, 1
  store atomic i64 %i.ao, ptr %i.al monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !246 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2r115task_dispatcher16get_mailbox_taskERNS1_10mail_inboxERNS1_18execution_data_extEl:bb.a
  %i.t = add nsw i32 %.01.i.i.i.i.prol, -1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !338

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.01.i.i.i.i.unr = phi i32 [ %.sroa.0.040.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i32 %.sroa.0.040.i.i, 8
  br i1 %i.u, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.01.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ %.01.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.v = add nsw i32 %.01.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.w = icmp sgt i32 %.01.i.i.i.i, 8
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i, !llvm.loop !99

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i:    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.x = shl i32 %.sroa.0.040.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

bb.f:                                             ; preds = %.lr.ph41.i.i
  %i.y = tail call noundef i32 @sched_yield() #10 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i: ; preds = %bb.f, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.x, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i ], [ %.sroa.0.040.i.i, %bb.f ]
  %i.z = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.z, null
  br i1 %.not30.i.i, label %.lr.ph41.i.i, label %_ZNSt6atomicIPS_IPN3tbb6detail2r110task_proxyEEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.sink.split.i.i, !llvm.loop !339

_ZNSt6atomicIPS_IPN3tbb6detail2r110task_proxyEEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.sink.split.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i, %_ZNSt6atomicIPS_IPN3tbb6detail2r110task_proxyEEE23compare_exchange_strongERS6_S6_St12memory_order.exit.preheader.i.i, %.loopexit.i.i
  %.sink.i.i = phi ptr [ %i.m, %.loopexit.i.i ], [ %i.q, %_ZNSt6atomicIPS_IPN3tbb6detail2r110task_proxyEEE23compare_exchange_strongERS6_S6_St12memory_order.exit.preheader.i.i ], [ %i.z, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i ]
  store atomic ptr %.sink.i.i, ptr %.1.i.i monotonic, align 8
  br label %_ZN3tbb6detail2r110mail_inbox3popEl.exit

_ZN3tbb6detail2r110mail_inbox3popEl.exit:         ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2r110task_proxyEEE23compare_exchange_strongERS6_S6_St12memory_order.exit.thread.sink.split.i.i, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 64 ; 2 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 3 uses
  %.not.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i, label %_ZN3tbb6detail2r110task_proxy12extract_taskILl2EEEPNS0_2d14taskEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2r110mail_inbox3popEl.exit
  %i.ac = cmpxchg ptr %i.aa, i64 %i.ab, i64 1 seq_cst seq_cst, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = and i64 %i.ab, -4                       ; 2 uses
  %.not18 = icmp ne i64 %i.ae, 0
  %or.cond.not = and i1 %.not18, %i.ad
  br i1 %or.cond.not, label %.thread30, label %_ZN3tbb6detail2r110task_proxy12extract_taskILl2EEEPNS0_2d14taskEv.exit.thread

.thread30:                                        ; preds = %bb.g
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 -2, ptr %i.ag, align 8, !tbaa !276
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = load ptr, ptr %i.ai, align 128, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %i.al, ptr %i.am, align 2, !tbaa !277
  br label %.loopexit

_ZN3tbb6detail2r110task_proxy12extract_taskILl2EEEPNS0_2d14taskEv.exit.thread: ; preds = %bb.g, %_ZN3tbb6detail2r110mail_inbox3popEl.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 96
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !173
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %.121.i.i, align 64, !tbaa !31
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 64 dead_on_return(104) dereferenceable(104) %.121.i.i) #10, !inline_history !340
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull %.121.i.i, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.as = load ptr, ptr %1, align 8, !tbaa !216   ; 2 uses
  %i.at = load atomic ptr, ptr %i.as acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN3tbb6detail2r110task_proxy12extract_taskILl2EEEPNS0_2d14taskEv.exit.thread, %.lr.ph.i.i, %bb.a, %.thread30
  %.3 = phi ptr [ %i.af, %.thread30 ], [ null, %bb.a ], [ null, %.lr.ph.i.i ], [ null, %_ZN3tbb6detail2r110task_proxy12extract_taskILl2EEEPNS0_2d14taskEv.exit.thread ]
  ret ptr %.3
}

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef ptr @_ZN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE0EE7try_popEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = and i64 %i.a, %i.c
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %i.b ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 4 uses
  %i.i = load atomic i8, ptr %i.h monotonic, align 1, !range !95, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i

_ZN3tbb6detail2d15mutex8try_lockEv.exit.i:        ; preds = %bb.b
  %i.k = atomicrmw xchg ptr %i.h, i8 1 seq_cst, align 1
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !251  ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !251  ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !341
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i.i = icmp eq ptr %i.p, %i.u
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !342
  invoke void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.x)
          to label %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #17
  unreachable

_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !258
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !250
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !257 ; 3 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !252
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !253
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !251
  br label %_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit

_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit: ; preds = %bb.e, %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i
  %i.af = phi ptr [ %i.o, %bb.e ], [ %.pre, %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i ]
  %storemerge.i.i = phi ptr [ %i.v, %bb.e ], [ %i.ad, %_ZNSt5dequeIPN3tbb6detail2d14taskENS2_23cache_aligned_allocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.n, align 8, !tbaa !343
  %i.ag = icmp eq ptr %i.af, %storemerge.i.i
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit
  %i.ah = xor i64 %i.c, -1
  %i.ai = atomicrmw and ptr %0, i64 %i.ah seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit
  %.011.ph = phi ptr [ %i.r, %_ZN3tbb6detail2r120task_stream_accessorILNS1_25task_stream_accessor_typeE0EE8get_itemERSt5dequeIPNS0_2d14taskENS6_23cache_aligned_allocatorIS8_EEE.exit ], [ %i.r, %bb.h ], [ null, %bb.c ]
  %i.aj = atomicrmw xchg ptr %i.h, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #17
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit: ; preds = %bb.i, %bb.b, %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.011.ph, %bb.i ], [ null, %bb.b ], [ null, %_ZN3tbb6detail2d15mutex8try_lockEv.exit.i ]
  ret ptr %.0
}

declare noundef ptr @_ZN3tbb6detail2r110arena_slot10steal_taskERNS1_5arenaElm(ptr noundef nonnull align 128 dereferenceable(176), ptr noundef nonnull align 128 dereferenceable(768), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r112sleep_waiter5sleepIZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::r1::sleep_node", align 8 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.b = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN3tbb6detail2r15arena27get_waiting_threads_monitorEv(ptr noundef nonnull align 128 dereferenceable(768) %i.a) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = load ptr, ptr %0, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %i.f, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %3, align 8, !tbaa !31
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12prepare_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %3)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  %.not.i.i.i.i.i8.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i8.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i: ; preds = %.noexc5, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !278, !nonnull !24, !align !282
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i
  %i.q = load i32, ptr %i.k, align 4, !tbaa !90
  %i.r = load atomic i32, ptr %i.l monotonic, align 8
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, label %bb.c

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i: ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(52) %3)
          to label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit unwind label %.loopexit.split-lp, !inline_history !344

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11cancel_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %3)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12prepare_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %3)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.noexc4
  %i.w = load ptr, ptr %2, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = load atomic i64, ptr %i.x acquire, align 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i, !llvm.loop !345

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i: ; preds = %.noexc5, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i, %.noexc
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11cancel_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %3)
          to label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit unwind label %.loopexit.split-lp

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit: ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %3, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !225, !range !95, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.ad = load i8, ptr %i.ac, align 2, !range !95
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.ag = cmpxchg ptr %i.af, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = extractvalue { i32, i1 } %i.ag, 0
  %.not.i.i = icmp eq i32 %i.ai, 2
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = atomicrmw xchg ptr %i.af, i32 2 seq_cst, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %bb.e
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.al = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.af, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #10, !inline_history !346 ; 0 uses
  %i.am = atomicrmw xchg ptr %i.af, i32 2 seq_cst, align 4
  %.not1.i.i = icmp eq i32 %i.am, 0
  br i1 %.not1.i.i, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !347

_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit, %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !213
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !212
  ret void

.loopexit:                                        ; preds = %bb.c, %.noexc4
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.a, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_15external_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN3tbb6detail2r15arena11out_of_workEv(ptr noundef nonnull align 128 dereferenceable(768)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8 @llvm.x86.tpause(i32, i32, i32) #10

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.b = load i8, ptr %i.a, align 1, !tbaa !225, !range !95, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.e = load i8, ptr %i.d, align 2, !range !95
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %.not.i = icmp eq i32 %i.j, 2
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  %i.n = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %.not1.i = icmp eq i32 %i.n, 0
  br i1 %.not1.i, label %_ZN3tbb6detail2r116binary_semaphore1PEv.exit, label %.lr.ph.i, !llvm.loop !347

_ZN3tbb6detail2r116binary_semaphore1PEv.exit:     ; preds = %.lr.ph.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED0Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.b = load i8, ptr %i.a, align 1, !tbaa !225, !range !95, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.e = load i8, ptr %i.d, align 2, !range !95
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %.not.i.i = icmp eq i32 %i.j, 2
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = atomicrmw xchg ptr %i.g, i32 2 seq_cst, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %bb.c
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.m = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #10, !inline_history !346 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2r115task_dispatcher21receive_or_steal_taskILb1ENS1_16coroutine_waiterEEEPNS0_2d14taskERNS1_11thread_dataERNS1_18execution_data_extERT0_RNS1_20context_guard_helperIXT_EEElbb:bb.a

bb.aj:                                            ; preds = %_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit
  store atomic i8 0, ptr %i.gd monotonic, align 1
  br label %_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit84

_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit84: ; preds = %_ZN3tbb6detail2r113observer_list22notify_entry_observersERPNS1_14observer_proxyEb.exit, %bb.aj, %_ZNK3tbb6detail2r110mail_inbox13is_idle_stateEb.exit
  ret ptr %.2124
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZZN3tbb6detail2r115task_dispatcher18local_wait_for_allILb1ENS1_16coroutine_waiterEEEPNS0_2d14taskES7_RT0_EN19dispatch_loop_guardD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !362, !nonnull !24, !align !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %0, align 8, !tbaa !362, !nonnull !24, !align !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 8 dereferenceable(3) %i.d, i64 3, i1 false), !tbaa.struct !260
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !353
  %i.i = load ptr, ptr %0, align 8, !tbaa !362, !nonnull !24, !align !25 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store ptr %i.h, ptr %i.j, align 128, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8, !tbaa !355, !range !95, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.i, align 128, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 392
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 8, !tbaa !362, !nonnull !24, !align !25
  %i.w = load ptr, ptr %i.v, align 128, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 19
  store i8 0, ptr %i.x, align 1, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #17
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r116coroutine_waiter5pauseERNS1_10arena_slotE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 128 dereferenceable(176) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3tbb6detail2r18governor12cpu_featuresE, i64 1), align 1, !tbaa !331, !range !95, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = tail call { i32, i32 } asm sideeffect "rdtsc", "={dx},={ax},~{dirflag},~{fpsr},~{flags}"() #10 ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.e, 1        ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1000               ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %.tr.i.i.i = trunc nuw nsw i64 %i.j to i32
  %.narrow.i.i.i = add i32 %i.f, %.tr.i.i.i
  %i.k = trunc i64 %i.i to i32
  %i.l = tail call noundef i8 @llvm.x86.tpause(i32 0, i32 %.narrow.i.i.i, i32 %i.k) ; 0 uses
  br label %_ZN3tbb6detail2r115prolonged_pauseEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.f to i64
  %i.n = shl nuw i64 %i.m, 32
  %i.o = zext i32 %i.g to i64
  %i.p = or disjoint i64 %i.n, %i.o               ; 2 uses
  %i.q = add i64 %i.p, 1000
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.c ], [ %.sroa.0.1.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i ] ; 8 uses
  %.07.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %..07.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i ] ; 2 uses
  %i.r = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.thread.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %xtraiter = and i32 %.sroa.0.0.i.i.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.prol = phi i32 [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.s = add nsw i32 %.01.i.i.i.i.i.i.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !377

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.t = icmp ult i32 %.sroa.0.0.i.i.i.i, 8
  br i1 %i.t, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.01.i.i.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.u = add nsw i32 %.01.i.i.i.i.i.i, -8
  tail call void @llvm.x86.sse2.pause()
  %i.v = icmp sgt i32 %.01.i.i.i.i.i.i, 8
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, !llvm.loop !99

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.w = icmp samesign ult i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %i.w, label %_ZN3tbb6detail2d013machine_pauseEi.exit.thread.i.i.i.i.i, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d013machine_pauseEi.exit.thread.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i, %bb.d
  %i.x = shl i32 %.sroa.0.0.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.thread.i.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.x, %_ZN3tbb6detail2d013machine_pauseEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i ]
  %i.y = tail call { i32, i32 } asm sideeffect "rdtsc", "={dx},={ax},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !334 ; 2 uses
  %i.z = extractvalue { i32, i32 } %i.y, 0
  %i.aa = extractvalue { i32, i32 } %i.y, 1
  %i.ab = zext i32 %i.z to i64
  %i.ac = shl nuw i64 %i.ab, 32
  %i.ad = zext i32 %i.aa to i64
  %i.ae = or disjoint i64 %i.ac, %i.ad            ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ae, %.07.i.i.i.i
  %..07.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %.07.i.i.i.i) ; 2 uses
  %i.af = icmp ult i64 %..07.i.i.i.i, %i.q
  %or.cond.i.i.i.i = and i1 %.not.i.i.i.i, %i.af
  br i1 %or.cond.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2r115prolonged_pauseEv.exit.i.i, !llvm.loop !335

_ZN3tbb6detail2r115prolonged_pauseEv.exit.i.i:    ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit.i.i.i.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !212 ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !212
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %.not.i.i = icmp slt i32 %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZN3tbb6detail2r111waiter_base5pauseEv.exit.thread, label %_ZN3tbb6detail2r121stealing_loop_backoff5pauseEv.exit.i

_ZN3tbb6detail2r121stealing_loop_backoff5pauseEv.exit.i: ; preds = %_ZN3tbb6detail2r115prolonged_pauseEv.exit.i.i
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !212
  %i.ak = tail call noundef i32 @sched_yield() #10 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !213 ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !211 ; 2 uses
  %.not4.i.not.i = icmp slt i32 %i.am, %i.ap      ; 2 uses
  %spec.store.select.i.i = select i1 %.not4.i.not.i, i32 %i.an, i32 %i.ap
  store i32 %spec.store.select.i.i, ptr %i.al, align 4
  br i1 %.not4.i.not.i, label %_ZN3tbb6detail2r111waiter_base5pauseEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2r121stealing_loop_backoff5pauseEv.exit.i
  %i.aq = load ptr, ptr %0, align 8, !tbaa !336, !nonnull !24, !align !25
  tail call void @_ZN3tbb6detail2r15arena11out_of_workEv(ptr noundef nonnull align 128 dereferenceable(768) %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !290
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 64, !tbaa !102 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !378
  %i.av = ptrtoint ptr %i.au to i64
  call void @_ZN3tbb6detail2r112sleep_waiter5sleepIZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.av, ptr nonnull %0, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN3tbb6detail2r111waiter_base5pauseEv.exit.thread

_ZN3tbb6detail2r111waiter_base5pauseEv.exit.thread: ; preds = %_ZN3tbb6detail2r115prolonged_pauseEv.exit.i.i, %_ZN3tbb6detail2r121stealing_loop_backoff5pauseEv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r112sleep_waiter5sleepIZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEvmT_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::r1::sleep_node", align 8 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.b = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN3tbb6detail2r15arena27get_waiting_threads_monitorEv(ptr noundef nonnull align 128 dereferenceable(768) %i.a) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.c = load ptr, ptr %0, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr inttoptr (i64 3452816845 to ptr), ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %i.f, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.g, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %4, align 8, !tbaa !31
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12prepare_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load atomic i64, ptr %i.i acquire, align 8
  %.not.i.i.i.i.i8.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i8.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i: ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i: ; preds = %.noexc5, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.lr.ph.i
  %i.m = load ptr, ptr %3, align 8, !tbaa !378
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load atomic i8, ptr %i.n monotonic, align 1, !range !95, !noundef !24
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i
  %i.q = load i32, ptr %i.k, align 4, !tbaa !90
  %i.r = load atomic i32, ptr %i.l monotonic, align 8
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, label %bb.c

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i: ; preds = %bb.b
  %i.t = load ptr, ptr %4, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit unwind label %.loopexit.split-lp, !inline_history !379

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11cancel_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.c
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12prepare_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %.noexc4
  %i.w = load ptr, ptr %2, align 8, !tbaa !336, !nonnull !24, !align !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = load atomic i64, ptr %i.x acquire, align 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i, label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i, !llvm.loop !380

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i: ; preds = %.noexc5, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.i, %.noexc
  invoke void @_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11cancel_waitERNS1_9wait_nodeIS3_EE(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %4)
          to label %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit unwind label %.loopexit.split-lp

_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit: ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3tbb6detail2r110sleep_nodeINS1_14market_contextEEE, i64 16), ptr %4, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !225, !range !95, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 42
  %i.ad = load i8, ptr %i.ac, align 2, !range !95
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit

bb.d:                                             ; preds = %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.ag = cmpxchg ptr %i.af, i32 0, i32 1 seq_cst seq_cst, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = extractvalue { i32, i1 } %i.ag, 0
  %.not.i.i = icmp eq i32 %i.ai, 2
  br i1 %.not.i.i, label %.lr.ph.i.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = atomicrmw xchg ptr %i.af, i32 2 seq_cst, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %bb.e
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.al = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.af, i32 noundef 128, i32 noundef 2, ptr noundef null, ptr noundef null, i32 noundef 0) #10, !inline_history !346 ; 0 uses
  %i.am = atomicrmw xchg ptr %i.af, i32 2 seq_cst, align 4
  %.not1.i.i = icmp eq i32 %i.am, 0
  br i1 %.not1.i.i, label %_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !347

_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE4waitINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_OT_.exit, %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !213
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !212
  ret void

.loopexit:                                        ; preds = %bb.c, %.noexc4
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.a, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE11commit_waitERNS1_9wait_nodeIS3_EE.exit.thread.i, %_ZN3tbb6detail2r123concurrent_monitor_baseINS1_14market_contextEE12guarded_callINS1_10sleep_nodeIS3_EERZNS1_16coroutine_waiter5pauseERNS1_10arena_slotEEUlvE_EEbOT0_RT_.exit.thread.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3tbb6detail2r110sleep_nodeINS1_14market_contextEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZZN3tbb6detail2r115task_dispatcher18local_wait_for_allILb1ENS1_16coroutine_waiterEEEPNS0_2d14taskES7_RT0_ENUlvE_8__invokeEv() #0 comdat align 2 {
bb.a:
  tail call void @__cxa_rethrow() #20
  unreachable
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef ptr @_ZN3tbb6detail2r115task_dispatcher21receive_or_steal_taskILb0ENS1_16coroutine_waiterEEEPNS0_2d14taskERNS1_11thread_dataERNS1_18execution_data_extERT0_RNS1_20context_guard_helperIXT_EEElbb(ptr noundef nonnull align 128 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.tbb::detail::r1::stack_anchor_type", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 8, !tbaa !168
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !213
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !212
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !216  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store atomic i8 1, ptr %i.p monotonic, align 1
  br label %_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit

_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.q = ptrtoint ptr %8 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !219
  %i.t = icmp ult i64 %i.s, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.v = icmp eq i64 %5, 0                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %or.cond = and i1 %6, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.ah, %_ZN3tbb6detail2r110mail_inbox11set_is_idleEb.exit
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !290
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 64, !tbaa !102 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load atomic i8, ptr %i.aj acquire, align 1, !range !95, !noundef !24
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK3tbb6detail2r116coroutine_waiter18continue_executionERNS1_10arena_slotERPNS0_2d14taskE.exit.thread122.loopexit.split.loop.exit138, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.an = load atomic ptr, ptr %i.am monotonic, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN3tbb6detail2r115task_dispatcher26get_inbox_or_critical_taskERNS1_18execution_data_extERNS1_10mail_inboxElb.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = call noundef ptr @_ZN3tbb6detail2r115task_dispatcher17get_critical_taskEPNS0_2d14taskERNS1_18execution_data_extElb(ptr noundef nonnull align 128 dereferenceable(136) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef %5, i1 noundef zeroext %7) ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %bb.g, label %_ZNK3tbb6detail2r116coroutine_waiter18continue_executionERNS1_10arena_slotERPNS0_2d14taskE.exit.thread122

end_hunk_2
