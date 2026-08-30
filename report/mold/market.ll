Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/market?download=true
inline.NumInlined: 229
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3tbb6detail2r16marketC2Ej:bb.a
  store i32 %1, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %i.d, i8 0, i64 92, i1 false)
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r16market13create_clientERNS1_5arenaE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 128 dereferenceable(768) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 24) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2r125tbb_permit_manager_clientE, i64 16), ptr %i.a, align 8, !tbaa !15
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market15register_clientEPNS1_9pm_clientERNS0_2d111constraintsE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::delegated_function", align 8 ; 5 uses
  %5 = alloca %"class.tbb::detail::d1::rw_scoped_lock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !29
  store ptr %i.a, ptr %5, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, %bb.a
  %i.d = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.e = and i64 %i.d, -3
  %.not.i.i.i6 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i6, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i:   ; preds = %bb.b
  %i.f = cmpxchg ptr %i.a, i64 %i.d, i64 1 seq_cst seq_cst, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, %bb.b
  %i.h = load atomic i64, ptr %i.a monotonic, align 8
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  %i.j = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.a, ptr %3, align 8
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in16.i.i.i.i = and i64 %i.k, -3
  %.09.in17.i.i.i.i = icmp eq i64 %.09.in.in16.i.i.i.i, 0
  br i1 %.09.in17.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !34

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.l = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i = and i64 %i.l, -3
  %.09.in.i.i.i.i = icmp eq i64 %.09.in.in.i.i.i.i, 0
  br i1 %.09.in.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.prol.1:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.prol.1, !llvm.loop !34

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.prol.1
  %i.m = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.1 = and i64 %i.m, -3
  %.09.in.i.i.i.i.1 = icmp eq i64 %.09.in.in.i.i.i.i.1, 0
  br i1 %.09.in.i.i.i.i.1, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.2

.lr.ph.i.i.i.i.i.prol.2:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.prol.2, !llvm.loop !34

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.prol.2
  %i.n = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.2 = and i64 %i.n, -3
  %.09.in.i.i.i.i.2 = icmp eq i64 %.09.in.in.i.i.i.i.2, 0
  br i1 %.09.in.i.i.i.i.2, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3
  %.01.i.i.i.i.i.3 = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.o = add nsw i32 %.01.i.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not = icmp eq i32 %.01.i.i.i.i.i.3, 8
  br i1 %.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3
  %i.p = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.3 = and i64 %i.p, -3
  %.09.in.i.i.i.i.3 = icmp eq i64 %.09.in.in.i.i.i.i.3, 0
  br i1 %.09.in.i.i.i.i.3, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4
  %.01.i.i.i.i.i.4 = phi i32 [ %i.q, %.lr.ph.i.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.q = add nsw i32 %.01.i.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not16 = icmp eq i32 %.01.i.i.i.i.i.4, 8
  br i1 %.not16, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.4
  %i.r = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.4 = and i64 %i.r, -3
  %.09.in.i.i.i.i.4 = icmp eq i64 %.09.in.in.i.i.i.i.4, 0
  br i1 %.09.in.i.i.i.i.4, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4 ] ; 2 uses
  %i.s = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.t = load atomic i64, ptr %i.a monotonic, align 8
  %i.u = and i64 %i.t, -3
  %.not.i13.i.i.i.i = icmp eq i64 %i.u, 0         ; 2 uses
  %i.v = add nuw nsw i32 %.019.i.i.i.i, 1
  %i.w = icmp samesign ugt i32 %.019.i.i.i.i, 62
  %.not11.i.i.i.i = select i1 %.not.i13.i.i.i.i, i1 true, i1 %i.w
  br i1 %.not11.i.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i13.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE, i64 16), ptr %4, align 8, !tbaa !15
  store ptr %3, ptr %i.c, align 8, !tbaa !39
  call void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i

_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.b, !llvm.loop !40

bb.f:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %1, ptr %i.af, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !84
  br label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE9push_backERKS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 7 uses
  %i.ak = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.i, label %_ZNKSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #16
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.at)
          to label %.noexc2 unwind label %bb.o    ; 8 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store ptr %1, ptr %i.av, align 8, !tbaa !88
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.af
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc2
  %i.aw = ptrtoaddr ptr %i.au to i64
  %i.ax = add i64 %i.ak, -8
  %i.ay = sub i64 %i.ax, %i.al                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 72
  %i.bb = sub i64 %i.al, %i.aw
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.aj, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bf ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.aj, i64 %i.bf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bg = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep12, align 8, !tbaa !88, !alias.scope !93, !noalias !90
  %wide.load13 = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !88, !alias.scope !93, !noalias !90
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !88, !alias.scope !90, !noalias !93
  store <2 x ptr> %wide.load13, ptr %i.bh, align 8, !tbaa !88, !alias.scope !90, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.i.preheader15:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader15 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bj = load ptr, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !88, !alias.scope !93, !noalias !90
  store ptr %i.bj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !88, !alias.scope !90, !noalias !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !98

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.au, %.noexc2 ], [ %i.bd, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S8_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.aj)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S8_EEDpOT_.exit.i unwind label %bb.o

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S8_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE11_S_relocateEPS4_S9_S9_RS7_.exit22.i.i
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !89
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.bn, ptr %i.ag, align 8, !tbaa !87
  br label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE9push_backERKS4_.exit

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S8_EEDpOT_.exit.i, %bb.g
  %i.bo = load ptr, ptr %5, align 8, !tbaa !33    ; 5 uses
  %.not.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i4, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE9push_backERKS4_.exit
  store ptr null, ptr %5, align 8, !tbaa !33
  %i.bp = load i8, ptr %i.b, align 8, !tbaa !29, !range !99, !noundef !42
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = atomicrmw and ptr %i.bo, i64 -2 seq_cst, align 8
  %i.bs = and i64 %i.br, 2
  %.not.i.i.i5 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i5, label %.invoke.i, label %.invoke4.i

bb.m:                                             ; preds = %bb.k
  %i.bt = atomicrmw sub ptr %i.bo, i64 4 seq_cst, align 8
  %i.bu = and i64 %i.bt, 2
  %.not.i3.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i3.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.m, %bb.l
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.n

.invoke.i:                                        ; preds = %bb.m, %bb.l
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %.invoke.i, %.invoke4.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #17
  unreachable

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit: ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE9push_backERKS4_.exit, %.invoke4.i, %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void

bb.o:                                             ; preds = %bb.j, %_ZNKSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %i.bx
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !29, !range !99, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw and ptr %i.a, i64 -2 seq_cst, align 8
  %i.f = and i64 %i.e, 2
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %.invoke, label %.invoke4

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw sub ptr %i.a, i64 4 seq_cst, align 8
  %i.h = and i64 %i.g, 2
  %.not.i3.i = icmp eq i64 %i.h, 0
  br i1 %.not.i3.i, label %.invoke, label %.invoke4

.invoke4:                                         ; preds = %bb.d, %bb.c
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7releaseEv.exit unwind label %bb.e

.invoke:                                          ; preds = %bb.d, %bb.c
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7releaseEv.exit unwind label %bb.e

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7releaseEv.exit: ; preds = %.invoke4, %.invoke, %bb.a
  ret void

bb.e:                                             ; preds = %.invoke4, %.invoke
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market29unregister_and_destroy_clientERNS1_9pm_clientE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.tbb::detail::d1::delegated_function", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, %bb.a
  %i.c = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.d = and i64 %i.c, -3
  %.not.i.i.i16 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i16, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i:   ; preds = %bb.b
  %i.e = cmpxchg ptr %i.a, i64 %i.c, i64 1 seq_cst seq_cst, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.f, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, %bb.b
  %i.g = load atomic i64, ptr %i.a monotonic, align 8
  %i.h = and i64 %i.g, 2
  %.not.i.i17 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  %i.i = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %i.j = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in16.i.i.i.i = and i64 %i.j, -3
  %.09.in17.i.i.i.i = icmp eq i64 %.09.in.in16.i.i.i.i, 0
  br i1 %.09.in17.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !100

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i = and i64 %i.k, -3
  %.09.in.i.i.i.i = icmp eq i64 %.09.in.in.i.i.i.i, 0
  br i1 %.09.in.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.prol.1:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.prol.1, !llvm.loop !100

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.prol.1
  %i.l = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.1 = and i64 %i.l, -3
  %.09.in.i.i.i.i.1 = icmp eq i64 %.09.in.in.i.i.i.i.1, 0
  br i1 %.09.in.i.i.i.i.1, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.2

.lr.ph.i.i.i.i.i.prol.2:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.prol.2, !llvm.loop !100

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.prol.2
  %i.m = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.2 = and i64 %i.m, -3
  %.09.in.i.i.i.i.2 = icmp eq i64 %.09.in.in.i.i.i.i.2, 0
  br i1 %.09.in.i.i.i.i.2, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3
  %.01.i.i.i.i.i.3 = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.n = add nsw i32 %.01.i.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not = icmp eq i32 %.01.i.i.i.i.i.3, 8
  br i1 %.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3
  %i.o = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.3 = and i64 %i.o, -3
  %.09.in.i.i.i.i.3 = icmp eq i64 %.09.in.in.i.i.i.i.3, 0
  br i1 %.09.in.i.i.i.i.3, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4
  %.01.i.i.i.i.i.4 = phi i32 [ %i.p, %.lr.ph.i.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.p = add nsw i32 %.01.i.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not53 = icmp eq i32 %.01.i.i.i.i.i.4, 8
  br i1 %.not53, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.4
  %i.q = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.4 = and i64 %i.q, -3
  %.09.in.i.i.i.i.4 = icmp eq i64 %.09.in.in.i.i.i.i.4, 0
  br i1 %.09.in.i.i.i.i.4, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4 ] ; 2 uses
  %i.r = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.s = load atomic i64, ptr %i.a monotonic, align 8
  %i.t = and i64 %i.s, -3
  %.not.i13.i.i.i.i = icmp eq i64 %i.t, 0         ; 2 uses
  %i.u = add nuw nsw i32 %.019.i.i.i.i, 1
  %i.v = icmp samesign ugt i32 %.019.i.i.i.i, 62
  %.not11.i.i.i.i = select i1 %.not.i13.i.i.i.i, i1 true, i1 %i.v
  br i1 %.not11.i.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i13.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE, i64 16), ptr %3, align 8, !tbaa !15
  store ptr %2, ptr %i.b, align 8, !tbaa !39
  call void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i

_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b, !llvm.loop !40

bb.f:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 220
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 7 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr i64 %i.ai, 5                       ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.al = and i64 %i.ai, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ad, i64 %i.al ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %i.ay, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.ax, %bb.k ] ; 9 uses
  %i.am = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !88
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88
  %i.at = icmp eq ptr %i.as, %1
  br i1 %i.at, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.ay = add nsw i64 %.052.i.i.i, -1
  %i.az = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.az, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !102

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ag, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ai, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ad, %bb.f ] ; 5 uses
  %i.ba = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.ba, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !88
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.m
  %.sroa.032.1.i.i.i = phi ptr [ %i.bd, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.be = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !88
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.sroa.032.2.i.i.i = phi ptr [ %i.bg, %bb.n ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !88
  %i.bi = icmp eq ptr %i.bh, %1
  %spec.select.i.i.i = select i1 %i.bi, ptr %.sroa.032.2.i.i.i, ptr %i.af
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39: ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit: ; preds = %bb.g, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.af, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39 ], [ %i.bj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit ], [ %i.bk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37 ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %i.bm = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.bn = sub i64 %i.bm, %i.ah
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.ag, %i.bq                    ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 8
  br i1 %i.bs, label %bb.p, label %bb.q, !prof !103

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !84
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, 8
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !88
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !88
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit
  %i.bv = phi ptr [ %i.af, %bb.r ], [ %i.af, %bb.q ], [ %.pre.i.i, %bb.p ], [ %i.af, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  store ptr %i.bw, ptr %i.ae, align 8, !tbaa !84
  %i.bx = atomicrmw and ptr %i.a, i64 -2 seq_cst, align 8
  %i.by = and i64 %i.bx, 2
  %.not.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.s
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.t

.invoke.i:                                        ; preds = %bb.s
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.invoke.i, %.invoke4.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #17
  unreachable

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit: ; preds = %.invoke4.i, %.invoke.i
  %i.cb = load ptr, ptr %1, align 8, !tbaa !15
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #9
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %1)
  ret void
}

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market16update_allotmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = select i1 %or.cond, i32 1, i32 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !105
  %..i39 = tail call noundef i32 @llvm.smin.i32(i32 %i.l, i32 %..i) ; 2 uses
  %i.m = sub nsw i32 %..i, %..i39                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !101, !noalias !109
  %.not44 = icmp eq ptr %i.o, %i.p
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %.135.lcssa = phi i32 [ 0, %bb.a ], [ %.236, %bb.s ] ; 2 uses
  %.131.lcssa = phi i32 [ 0, %bb.a ], [ %.333, %bb.s ] ; 2 uses
  %.1.lcssa = phi i32 [ 3, %bb.a ], [ %.3, %bb.s ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !105
  %..i39.1 = tail call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %i.m) ; 2 uses
  %i.s = sub nsw i32 %i.m, %..i39.1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !101, !noalias !109
  %.not44.1 = icmp eq ptr %i.v, %i.w
  br i1 %.not44.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %bb.g
  %.148.1 = phi i32 [ %.3.1, %bb.g ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.13147.1 = phi i32 [ %.333.1, %bb.g ], [ %.131.lcssa, %._crit_edge ] ; 3 uses
  %.13546.1 = phi i32 [ %.236.1, %bb.g ], [ %.135.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.040.045.1 = phi ptr [ %i.x, %bb.g ], [ %i.v, %._crit_edge ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.040.045.1, i64 -8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.1
  %i.ac = icmp eq i32 %.148.1, 3
  %spec.select.1 = select i1 %i.ac, i32 1, i32 %.148.1 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = mul nsw i32 %i.aa, %..i39.1
  %i.ag = add nsw i32 %i.af, %.13147.1            ; 2 uses
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !105 ; 2 uses
  %i.ai = sdiv i32 %i.ag, %i.ah
  %i.aj = srem i32 %i.ag, %i.ah
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = icmp slt i32 %.13546.1, %..i
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  %i.ap = zext i1 %i.ao to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.232.1 = phi i32 [ %.13147.1, %bb.d ], [ %i.aj, %bb.c ]
  %.0.1 = phi i32 [ %i.ap, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.ar, i32 noundef %.0.1)
  %i.as = icmp eq i32 %spec.select.1, 1
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768) %i.at, i1 noundef zeroext %i.as)
  %i.au = add nsw i32 %.0.1, %.13546.1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.aw, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.236.1 = phi i32 [ %.13546.1, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %.333.1 = phi i32 [ %.13147.1, %bb.f ], [ %.232.1, %bb.e ] ; 2 uses
  %.3.1 = phi i32 [ %.148.1, %bb.f ], [ %spec.select.1, %bb.e ] ; 2 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !101, !noalias !109
  %.not.1 = icmp eq ptr %i.x, %i.ax
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !112

._crit_edge.1:                                    ; preds = %bb.g, %._crit_edge
  %.135.lcssa.1 = phi i32 [ %.135.lcssa, %._crit_edge ], [ %.236.1, %bb.g ]
  %.131.lcssa.1 = phi i32 [ %.131.lcssa, %._crit_edge ], [ %.333.1, %bb.g ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.3.1, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !105
  %..i39.2 = tail call noundef i32 @llvm.smin.i32(i32 %i.az, i32 %i.s)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !101, !noalias !109
  %.not44.2 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not44.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %bb.m
  %.148.2 = phi i32 [ %.3.2, %bb.m ], [ %.1.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.13147.2 = phi i32 [ %.333.2, %bb.m ], [ %.131.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.13546.2 = phi i32 [ %.236.2, %bb.m ], [ %.135.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.sroa.040.045.2 = phi ptr [ %i.be, %bb.m ], [ %i.bc, %._crit_edge.1 ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.040.045.2, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.2
  %i.bj = icmp eq i32 %.148.2, 3
  %spec.select.2 = select i1 %i.bj, i32 2, i32 %.148.2 ; 2 uses
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !20
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = mul nsw i32 %i.bh, %..i39.2
  %i.bn = add nsw i32 %i.bm, %.13147.2            ; 2 uses
  %i.bo = load i32, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %i.bp = sdiv i32 %i.bn, %i.bo
  %i.bq = srem i32 %i.bn, %i.bo
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !26
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = icmp slt i32 %.13546.2, %..i
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bw = zext i1 %i.bv to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.232.2 = phi i32 [ %.13147.2, %bb.j ], [ %i.bq, %bb.i ]
  %.0.2 = phi i32 [ %i.bw, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.by, i32 noundef %.0.2)
  %i.bz = icmp eq i32 %spec.select.2, 2
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768) %i.ca, i1 noundef zeroext %i.bz)
  %i.cb = add nsw i32 %.0.2, %.13546.2
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.cd, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.236.2 = phi i32 [ %.13546.2, %bb.l ], [ %i.cb, %bb.k ]
  %.333.2 = phi i32 [ %.13147.2, %bb.l ], [ %.232.2, %bb.k ]
  %.3.2 = phi i32 [ %.148.2, %bb.l ], [ %spec.select.2, %bb.k ]
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !101, !noalias !109
  %.not.2 = icmp eq ptr %i.be, %i.ce
  br i1 %.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !112

._crit_edge.2:                                    ; preds = %bb.m, %._crit_edge.1
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.148 = phi i32 [ %.3, %bb.s ], [ 3, %bb.a ]    ; 3 uses
  %.13147 = phi i32 [ %.333, %bb.s ], [ 0, %bb.a ] ; 3 uses
  %.13546 = phi i32 [ %.236, %bb.s ], [ 0, %bb.a ] ; 3 uses
  %.sroa.040.045 = phi ptr [ %i.cf, %bb.s ], [ %i.o, %bb.a ]
  %i.cf = getelementptr inbounds i8, ptr %.sroa.040.045, i64 -8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2r16market22set_active_num_workersEi
define hidden void @_ZN3tbb6detail2r16market22set_active_num_workersEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.tbb::detail::d1::delegated_function", align 8 ; 5 uses
  %4 = alloca %"class.tbb::detail::d1::rw_scoped_lock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !29
  store ptr %i.a, ptr %4, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, %bb.a
  %i.d = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.e = and i64 %i.d, -3
  %.not.i.i.i4 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i4, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i:   ; preds = %bb.b
  %i.f = cmpxchg ptr %i.a, i64 %i.d, i64 1 seq_cst seq_cst, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, %bb.b
  %i.h = load atomic i64, ptr %i.a monotonic, align 8
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  %i.j = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in16.i.i.i.i = and i64 %i.k, -3
  %.09.in17.i.i.i.i = icmp eq i64 %.09.in.in16.i.i.i.i, 0
  br i1 %.09.in17.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.l = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i = and i64 %i.l, -3
  %.09.in.i.i.i.i = icmp eq i64 %.09.in.in.i.i.i.i, 0
  br i1 %.09.in.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.prol.1:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.prol.1, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.prol.1
  %i.m = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.1 = and i64 %i.m, -3
  %.09.in.i.i.i.i.1 = icmp eq i64 %.09.in.in.i.i.i.i.1, 0
  br i1 %.09.in.i.i.i.i.1, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.2

.lr.ph.i.i.i.i.i.prol.2:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.prol.2, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.prol.2
  %i.n = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.2 = and i64 %i.n, -3
  %.09.in.i.i.i.i.2 = icmp eq i64 %.09.in.in.i.i.i.i.2, 0
  br i1 %.09.in.i.i.i.i.2, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3
  %.01.i.i.i.i.i.3 = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.o = add nsw i32 %.01.i.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not6 = icmp eq i32 %.01.i.i.i.i.i.3, 8
  br i1 %.not6, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3
  %i.p = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.3 = and i64 %i.p, -3
  %.09.in.i.i.i.i.3 = icmp eq i64 %.09.in.in.i.i.i.i.3, 0
  br i1 %.09.in.i.i.i.i.3, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4
  %.01.i.i.i.i.i.4 = phi i32 [ %i.q, %.lr.ph.i.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.q = add nsw i32 %.01.i.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not7 = icmp eq i32 %.01.i.i.i.i.i.4, 8
  br i1 %.not7, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.4
  %i.r = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.4 = and i64 %i.r, -3
  %.09.in.i.i.i.i.4 = icmp eq i64 %.09.in.in.i.i.i.i.4, 0
  br i1 %.09.in.i.i.i.i.4, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4 ] ; 2 uses
  %i.s = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.t = load atomic i64, ptr %i.a monotonic, align 8
  %i.u = and i64 %i.t, -3
  %.not.i13.i.i.i.i = icmp eq i64 %i.u, 0         ; 2 uses
  %i.v = add nuw nsw i32 %.019.i.i.i.i, 1
  %i.w = icmp samesign ugt i32 %.019.i.i.i.i, 62
  %.not11.i.i.i.i = select i1 %.not.i13.i.i.i.i, i1 true, i1 %i.w
  br i1 %.not11.i.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i13.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE, i64 16), ptr %3, align 8, !tbaa !15
  store ptr %2, ptr %i.c, align 8, !tbaa !39
  call void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i

_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b, !llvm.loop !40

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %.not = icmp eq i32 %i.y, %1
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit
  store i32 %1, ptr %i.x, align 8, !tbaa !20
  invoke void @_ZN3tbb6detail2r16market16update_allotmentEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.f, %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !33    ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !33
  %i.ab = load i8, ptr %i.b, align 8, !tbaa !29, !range !99, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = atomicrmw and ptr %i.aa, i64 -2 seq_cst, align 8
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %.invoke.i, label %.invoke4.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw sub ptr %i.aa, i64 4 seq_cst, align 8
  %i.ag = and i64 %i.af, 2
  %.not.i3.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i3.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.k, %bb.j
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.l

.invoke.i:                                        ; preds = %bb.k, %bb.j
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.invoke.i, %.invoke4.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #17
  unreachable

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit: ; preds = %bb.h, %.invoke4.i, %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market13adjust_demandERNS1_9pm_clientEii(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon, align 8                ; 4 uses
  %5 = alloca %"class.tbb::detail::d1::delegated_function", align 8 ; 5 uses
  %6 = alloca %"class.tbb::detail::d1::rw_scoped_lock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !29
  store ptr %i.a, ptr %6, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, %bb.a
  %i.d = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.e = and i64 %i.d, -3
  %.not.i.i.i11 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i11, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i:   ; preds = %bb.b
  %i.f = cmpxchg ptr %i.a, i64 %i.d, i64 1 seq_cst seq_cst, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, %bb.b
  %i.h = load atomic i64, ptr %i.a monotonic, align 8
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  %i.j = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in16.i.i.i.i = and i64 %i.k, -3
  %.09.in17.i.i.i.i = icmp eq i64 %.09.in.in16.i.i.i.i, 0
  br i1 %.09.in17.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !114

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.l = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i = and i64 %i.l, -3
  %.09.in.i.i.i.i = icmp eq i64 %.09.in.in.i.i.i.i, 0
  br i1 %.09.in.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.prol.1:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.prol.1, !llvm.loop !114

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.prol.1
  %i.m = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.1 = and i64 %i.m, -3
  %.09.in.i.i.i.i.1 = icmp eq i64 %.09.in.in.i.i.i.i.1, 0
  br i1 %.09.in.i.i.i.i.1, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.2

.lr.ph.i.i.i.i.i.prol.2:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.prol.2, !llvm.loop !114

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.prol.2
  %i.n = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.2 = and i64 %i.n, -3
  %.09.in.i.i.i.i.2 = icmp eq i64 %.09.in.in.i.i.i.i.2, 0
  br i1 %.09.in.i.i.i.i.2, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3
  %.01.i.i.i.i.i.3 = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.o = add nsw i32 %.01.i.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not = icmp eq i32 %.01.i.i.i.i.i.3, 8
  br i1 %.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3
  %i.p = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.3 = and i64 %i.p, -3
  %.09.in.i.i.i.i.3 = icmp eq i64 %.09.in.in.i.i.i.i.3, 0
  br i1 %.09.in.i.i.i.i.3, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4
  %.01.i.i.i.i.i.4 = phi i32 [ %i.q, %.lr.ph.i.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.q = add nsw i32 %.01.i.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not12 = icmp eq i32 %.01.i.i.i.i.i.4, 8
  br i1 %.not12, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.4
  %i.r = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.4 = and i64 %i.r, -3
  %.09.in.i.i.i.i.4 = icmp eq i64 %.09.in.in.i.i.i.i.4, 0
  br i1 %.09.in.i.i.i.i.4, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4 ] ; 2 uses
  %i.s = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.t = load atomic i64, ptr %i.a monotonic, align 8
  %i.u = and i64 %i.t, -3
  %.not.i13.i.i.i.i = icmp eq i64 %i.u, 0         ; 2 uses
  %i.v = add nuw nsw i32 %.019.i.i.i.i, 1
  %i.w = icmp samesign ugt i32 %.019.i.i.i.i, 62
  %.not11.i.i.i.i = select i1 %.not.i13.i.i.i.i, i1 true, i1 %i.w
  br i1 %.not11.i.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i13.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE, i64 16), ptr %5, align 8, !tbaa !15
  store ptr %4, ptr %i.c, align 8, !tbaa !39
  call void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i

_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b, !llvm.loop !40

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.z = invoke i64 @_ZN3tbb6detail2r15arena14update_requestEii(ptr noundef nonnull align 128 dereferenceable(768) %i.y, i32 noundef %2, i32 noundef %3)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit
  %.sroa.4.0.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %i.ac = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.z, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !115
  %i.ag = add nsw i32 %i.af, %i.ac
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !115
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 220
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !105
  %i.ao = add nsw i32 %i.an, %i.ac
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104
  %i.ar = add nsw i32 %i.aq, %2
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !104
  invoke void @_ZN3tbb6detail2r16market16update_allotmentEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %6, align 8, !tbaa !33    ; 5 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %6, align 8, !tbaa !33
  %i.at = load i8, ptr %i.b, align 8, !tbaa !29, !range !99, !noundef !42
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = atomicrmw and ptr %i.as, i64 -2 seq_cst, align 8
  %i.aw = and i64 %i.av, 2
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %.invoke.i, label %.invoke4.i

bb.j:                                             ; preds = %bb.h
  %i.ax = atomicrmw sub ptr %i.as, i64 4 seq_cst, align 8
  %i.ay = and i64 %i.ax, 2
  %.not.i3.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i3.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.j, %bb.i
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.k

.invoke.i:                                        ; preds = %bb.j, %bb.i
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.invoke.i, %.invoke4.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #17
  unreachable

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit: ; preds = %bb.g, %.invoke4.i, %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not.i10 = icmp eq i32 %i.ab, %.sroa.4.0.extract.trunc.i
  br i1 %.not.i10, label %_ZN3tbb6detail2r114permit_manager21notify_thread_requestEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i32 noundef %i.ac), !inline_history !116
  br label %_ZN3tbb6detail2r114permit_manager21notify_thread_requestEi.exit

_ZN3tbb6detail2r114permit_manager21notify_thread_requestEi.exit: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit, %bb.l
  ret void

bb.m:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit, %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  resume { ptr, i32 } %i.bg
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r16marketD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3tbb6detail2r16marketE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #17
  unreachable

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %.ptr1.1, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.1, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.d)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1 unwind label %bb.c

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1: ; preds = %bb.d, %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %.ptr1.2, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.2, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.2, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.e)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.2 unwind label %bb.c

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.2: ; preds = %bb.e, %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r16marketD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3tbb6detail2r16marketE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.a = load ptr, ptr %.ptr1.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.i unwind label %bb.c, !inline_history !117

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #17, !inline_history !117
  unreachable

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %.ptr1.1.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %.ptr1.1.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.1.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.1.i, label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.i
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.d)
          to label %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1.i unwind label %bb.c, !inline_history !117

_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1.i: ; preds = %bb.d, %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.i
  %.ptr1.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %.ptr1.2.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.2.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.2.i, label %_ZN3tbb6detail2r16marketD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1.i
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.e)
          to label %_ZN3tbb6detail2r16marketD2Ev.exit unwind label %bb.c, !inline_history !117

_ZN3tbb6detail2r16marketD2Ev.exit:                ; preds = %_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEED2Ev.exit.1.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r19pm_clientD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r125tbb_permit_manager_clientD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r125tbb_permit_manager_client15register_threadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r125tbb_permit_manager_client17unregister_threadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768), i32 noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768), i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN3tbb6detail2r15arena14update_requestEii(ptr noundef nonnull align 128 dereferenceable(768), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #9

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EclEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118, !nonnull !42, !align !121
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = and i64 %i.d, -3
  %.not.i = icmp eq i64 %i.e, 0
  ret i1 %.not.i
}

; Function Attrs: inlinehint mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

declare void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2d113delegate_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

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
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSN3tbb6detail2r114permit_managerE", !13, i64 8}
!13 = !{!"p1 _ZTSN3tbb6detail2r123thread_request_observerE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !10, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseIlE", !19, i64 0}
!19 = !{!"long", !9, i64 0}
!20 = !{!21, !8, i64 24}
!21 = !{!"_ZTSN3tbb6detail2r16marketE", !12, i64 0, !22, i64 16, !8, i64 24, !8, i64 28, !9, i64 32, !8, i64 44, !9, i64 48}
!22 = !{!"_ZTSN3tbb6detail2d18rw_mutexE", !23, i64 0}
!23 = !{!"_ZTSSt6atomicIlE", !18, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN3tbb6detail2r15arenaE", !14, i64 0}
!26 = !{!27, !8, i64 16}
!27 = !{!"_ZTSN3tbb6detail2r19pm_clientE", !25, i64 8, !8, i64 16, !8, i64 20}
!28 = !{!27, !8, i64 20}
!29 = !{!30, !32, i64 8}
!30 = !{!"_ZTSN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEEE", !31, i64 0, !32, i64 8}
!31 = !{!"p1 _ZTSN3tbb6detail2d18rw_mutexE", !14, i64 0}
!32 = !{!"bool", !9, i64 0}
!33 = !{!30, !31, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = !{!14, !14, i64 0}
!40 = distinct !{!40, !37}
!41 = !{!27, !25, i64 8}
!42 = !{}
!43 = !{i64 128}
!44 = !{!45, !8, i64 220}
!45 = !{!"_ZTSN3tbb6detail2r110arena_baseE", !46, i64 0, !50, i64 128, !50, i64 132, !50, i64 136, !52, i64 144, !52, i64 168, !56, i64 192, !8, i64 216, !8, i64 220, !57, i64 224, !59, i64 232, !60, i64 240, !65, i64 272, !66, i64 280, !67, i64 288, !68, i64 296, !76, i64 336, !77, i64 344, !59, i64 368, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !81, i64 392}
!46 = !{!"_ZTSN3tbb6detail2d06paddedINS0_2d119intrusive_list_nodeELm128EEE", !47, i64 0}
!47 = !{!"_ZTSN3tbb6detail2d011padded_baseINS0_2d119intrusive_list_nodeELm128ELm16EEE", !48, i64 0, !9, i64 16}
!48 = !{!"_ZTSN3tbb6detail2d119intrusive_list_nodeE", !49, i64 0, !49, i64 8}
!49 = !{!"p1 _ZTSN3tbb6detail2d119intrusive_list_nodeE", !14, i64 0}
!50 = !{!"_ZTSSt6atomicIjE", !51, i64 0}
!51 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!52 = !{!"_ZTSN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE0EEE", !53, i64 0, !55, i64 8, !8, i64 16}
!53 = !{!"_ZTSSt6atomicImE", !54, i64 0}
!54 = !{!"_ZTSSt13__atomic_baseImE", !19, i64 0}
!55 = !{!"p1 _ZTSN3tbb6detail2r115queue_and_mutexIPNS0_2d14taskENS3_5mutexEEE", !14, i64 0}
!56 = !{!"_ZTSN3tbb6detail2r111task_streamILNS1_25task_stream_accessor_typeE1EEE", !53, i64 0, !55, i64 8, !8, i64 16}
!57 = !{!"_ZTSSt6atomicIbE", !58, i64 0}
!58 = !{!"_ZTSSt13__atomic_baseIbE", !32, i64 0}
!59 = !{!"_ZTSN3tbb6detail2r111atomic_flagE", !53, i64 0}
!60 = !{!"_ZTSN3tbb6detail2r113observer_listE", !61, i64 0, !61, i64 8, !64, i64 16, !25, i64 24}
!61 = !{!"_ZTSSt6atomicIPN3tbb6detail2r114observer_proxyEE", !62, i64 0}
!62 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r114observer_proxyEE", !63, i64 0}
!63 = !{!"p1 _ZTSN3tbb6detail2r114observer_proxyE", !14, i64 0}
!64 = !{!"_ZTSN3tbb6detail2d013aligned_spaceINS0_2d113spin_rw_mutexELm1EEE", !9, i64 0}
!65 = !{!"p1 _ZTSN3tbb6detail2r121numa_binding_observerE", !14, i64 0}
!66 = !{!"p1 _ZTSN3tbb6detail2r117threading_controlE", !14, i64 0}
!67 = !{!"p1 _ZTSN3tbb6detail2d118task_group_contextE", !14, i64 0}
!68 = !{!"_ZTSN3tbb6detail2r118concurrent_monitorE", !69, i64 0}
!69 = !{!"_ZTSN3tbb6detail2r123concurrent_monitor_baseImEE", !70, i64 0, !73, i64 8, !50, i64 32}
!70 = !{!"_ZTSN3tbb6detail2r124concurrent_monitor_mutexE", !71, i64 0, !71, i64 4}
!71 = !{!"_ZTSSt6atomicIiE", !72, i64 0}
!72 = !{!"_ZTSSt13__atomic_baseIiE", !8, i64 0}
!73 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinelE", !53, i64 0, !74, i64 8}
!74 = !{!"_ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !75, i64 0, !75, i64 8}
!75 = !{!"p1 _ZTSN3tbb6detail2r141circular_doubly_linked_list_with_sentinel9base_nodeE", !14, i64 0}
!76 = !{!"_ZTSN3tbb6detail2r120thread_leave_managerE", !53, i64 0}
!77 = !{!"_ZTSN3tbb6detail2r114arena_co_cacheE", !78, i64 0, !8, i64 8, !8, i64 12, !80, i64 16}
!78 = !{!"p2 _ZTSN3tbb6detail2r115task_dispatcherE", !79, i64 0}
!79 = !{!"any p2 pointer", !14, i64 0}
!80 = !{!"_ZTSN3tbb6detail2d110spin_mutexE", !57, i64 0}
!81 = !{!"_ZTSN3tbb6detail2r124threading_control_clientE", !82, i64 0, !83, i64 8}
!82 = !{!"p1 _ZTSN3tbb6detail2r19pm_clientE", !14, i64 0}
!83 = !{!"p1 _ZTSN3tbb6detail2r124thread_dispatcher_clientE", !14, i64 0}
!84 = !{!85, !86, i64 8}
!85 = !{!"_ZTSNSt12_Vector_baseIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p2 _ZTSN3tbb6detail2r19pm_clientE", !79, i64 0}
!87 = !{!85, !86, i64 16}
!88 = !{!82, !82, i64 0}
!89 = !{!85, !86, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aIPN3tbb6detail2r19pm_clientES4_NS1_2d113tbb_allocatorIS4_EEEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aIPN3tbb6detail2r19pm_clientES4_NS1_2d113tbb_allocatorIS4_EEEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aIPN3tbb6detail2r19pm_clientES4_NS1_2d113tbb_allocatorIS4_EEEvPT_PT0_RT1_: argument 1"}
!95 = distinct !{!95, !37, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !37, !96}
!99 = !{i8 0, i8 2}
!100 = distinct !{!100, !35}
!101 = !{!86, !86, i64 0}
!102 = distinct !{!102, !37}
!103 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!104 = !{!21, !8, i64 44}
!105 = !{!8, !8, i64 0}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE6rbeginEv: argument 0"}
!108 = distinct !{!108, !"_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE6rbeginEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE4rendEv: argument 0"}
!111 = distinct !{!111, !"_ZNSt6vectorIPN3tbb6detail2r19pm_clientENS1_2d113tbb_allocatorIS4_EEE4rendEv"}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !35}
!114 = distinct !{!114, !35}
!115 = !{!21, !8, i64 28}
!116 = distinct !{null}
!117 = !{ptr @_ZN3tbb6detail2r16marketD2Ev}
!118 = !{!119, !14, i64 8}
!119 = !{!"_ZTSN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE", !120, i64 0, !14, i64 8}
!120 = !{!"_ZTSN3tbb6detail2d113delegate_baseE"}
!121 = !{i64 8}
!122 = !{!123, !31, i64 0}
!123 = !{!"_ZTSZN3tbb6detail2d18rw_mutex4lockEvEUlvE_", !31, i64 0}
end_hunk_1
